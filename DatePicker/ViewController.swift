//
//  ViewController.swift
//  DatePicker
//
//  Created by EnGiS_Spencer on 2022/09/13.
//

import UIKit

class ViewController: UIViewController {
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0

    @IBOutlet var lbCurrentTime: UILabel!
    @IBOutlet var lbPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // targer = 동작될 뷰, selector = 타이머가 구동될때 실행할 함수
    }

    @IBAction func ChangeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lbPickerTime.text = "선택 시간 : " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
//        lbCurrentTime.text = String(count)
//        count += 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lbCurrentTime.text = "현재 시간 : " + formatter.string(from: date as Date)
    }
    
}

