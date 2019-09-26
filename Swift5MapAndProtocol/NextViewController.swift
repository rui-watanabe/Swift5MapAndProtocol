//
//  NextViewController.swift
//  Swift5MapAndProtocol
//
//  Created by watar on 2019/09/26.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import UIKit

protocol SearchLocationDelegate {
    func searchLocation(idoValue:String,keidoValue:String)
}

class NextViewController: UIViewController {

    @IBOutlet weak var idoTextField: UITextField!
    
    
    @IBOutlet weak var keidoTextField: UITextField!
    
    var delegate:SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func okAction(_ sender: Any) {
        //入力された値を取得
        let idoValue = idoTextField.text!
        let keidoValue = keidoTextField.text!
        
        
    //両方のテキストフィールドがからでなければ戻る
        if idoTextField.text != nil && keidoTextField.text != nil{
            
            //デリゲートメソッドの引数に入れる
                 delegate?.searchLocation(idoValue: idoValue, keidoValue: keidoValue)
                   
            
            dismiss(animated: true, completion: nil)
        }
        
        
        
    }
    

}
