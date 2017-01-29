//
//  ViewModel.swift
//  HelloMVVM
//
//  Created by AKKHARAWAT CHAYAPIWAT on 1/29/17.
//  Copyright © 2017 AKKHARAWAT CHAYAPIWAT. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class ViewModel: NSObject {
	
	let text: Variable<String?> = Variable("")
	
}
