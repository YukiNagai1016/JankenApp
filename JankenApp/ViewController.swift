//
//  ViewController.swift
//  JankenApp
//
//  Created by 優樹永井 on 2019/01/09.
//  Copyright © 2019 com.nagai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IB変数宣言
    @IBOutlet var jankenImageView: UIImageView!
    @IBOutlet var jankenLabel: UILabel!
    
    //変数宣言
    var answerNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func shuffleAction() {
        
        //新しいじゃんけんの結果を一時的に格納する変数を設ける
        var newAnswerNumber = 0
        
        repeat {
            newAnswerNumber = Int(arc4random_uniform(3))
            
            //前回と同じ結果の時は再度ランダムに数値を出す
            //異なる結果の時はrepeatを抜ける
        } while answerNumber == newAnswerNumber
        
        //新しいじゃんけんの結果を格納
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            //グー
            jankenLabel.text = "グー"
            jankenImageView.image = UIImage(named: "gu.jpg")
        } else if answerNumber == 1 {
            //チョキ
            jankenLabel.text = "チョキ"
            jankenImageView.image = UIImage(named: "tyoki.jpg")
        } else if answerNumber == 2 {
            //パー
            jankenLabel.text = "パー"
            jankenImageView.image = UIImage(named: "pa.png")
        }
        
    }


}

