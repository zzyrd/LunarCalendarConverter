//
//  LunarYearTransferViewController.swift
//  lunisolarCalendarChinese
//
//  Created by zhang  zhihao on 3/4/17.
//  Copyright © 2017 zhang, zhihao. All rights reserved.
//

import UIKit

class LunarYearTransferViewController: UIViewController {

    @IBOutlet weak var lunarYearCN: UILabel!
    @IBOutlet weak var inputYear: UITextField!
    //for A.D
    let 天干表: [Int: String] = [0:"庚", 1:"辛", 2:"壬", 3:"癸", 4:"甲", 5:"乙", 6:"丙", 7:"丁", 8:"戊", 9:"己"]
    let 地支表: [Int: String] = [1:"酉", 2:"戌", 3:"亥", 4:"子", 5:"丑", 6:"寅", 7:"卯", 8:"辰", 9:"巳", 10:"午", 11:"未", 12:"申"]
    
    //use 1 to 60 index to represent 60 year representations
   // let 干支表: [Int: String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lunarYearCN.text = ""
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertTo(_ sender: Any) {
        
        //var haha = ""
        if let yearInString = inputYear.text, let yearInInteger = Int(yearInString) {
            let 天干: Int
            var 地支: Int
            天干 = yearInInteger % 10
            地支 = yearInInteger % 12
            if(地支 == 0){
                地支 = 12
            }
            
            print("天干：\(天干)\n地支：\(地支)")
            
            if let tianGan = 天干表[天干], let dizhi = 地支表[地支] {
                lunarYearCN.text = tianGan + dizhi + "年"
            }
            else{
                print("cannot find the member in either 天干表 or 地支表")
            }

        }
        else{
            print("You have to enter a year!(a whole number)")
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
