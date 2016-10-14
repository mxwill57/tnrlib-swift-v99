//
//  ViewController.swift
//  tnrlib-v999
//
//  Created by di07zd4 on 10/10/16.
//  Copyright © 2016 di07zd4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tfSrc: UITextField!

	@IBOutlet weak var tfAcct: UITextField!

	@IBOutlet weak var tfPwd: UITextField!




override
func
viewDidLoad() {

	super.viewDidLoad()
		
	let myObj = TnHttpQa()

	myObj.exampleOne()
}

















}  //	end of class

