//
//  SettingsVC.swift
//  DesignerCookie
//
//  Created by Kenton Bell on 1/5/24.
//

import UIKit

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func backTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainScreen = storyboard.instantiateViewController(withIdentifier: "titlescreen") as! ViewController
        mainScreen.loadViewIfNeeded()
        //fill in any prep here
        self.present(mainScreen, animated: true, completion: nil)
    }
    
    
    @IBAction func SoundOnTap(_ sender: Any) {
        
        func SoundOn () {
            var soundOn = true
        }
        func SoundOff () {
            var soundOn = false
        }
        
    }
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
