//
//  ViewController.swift
//  HelloMVVM
//
//  Created by AKKHARAWAT CHAYAPIWAT on 1/29/17.
//  Copyright © 2017 AKKHARAWAT CHAYAPIWAT. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

	let viewModel : ViewModel = ViewModel()
	var disposeBag = DisposeBag()
	
	@IBOutlet weak var mainTextField: UITextField!
	@IBOutlet weak var mainLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let _ = mainTextField.rx.textInput.text.bindTo(viewModel.text)
		viewModel.text.asObservable().map { (str) -> String in
			if let str = str {
				return "Text: \(str)"
			}else{
				return "Text: "
			}
		}.bindTo(mainLabel.rx.text).addDisposableTo( disposeBag)
		
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

