//
//  MainScreenVC.swift
//  DesignerCookie
//
//  Created by Kenton Bell on 1/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func settingsTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let settingsVC = storyboard.instantiateViewController(withIdentifier: "SettingsVCID") as! SettingsVC
        settingsVC.loadViewIfNeeded()
        //fill in any prep here
        self.present(settingsVC, animated: true, completion: nil)
    }
    
    @IBAction func makeCookieTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rawCookieChooserVC = storyboard.instantiateViewController(withIdentifier: "RawCookieChooserVCID") as! RawCookieChooserVC
        rawCookieChooserVC.loadViewIfNeeded()
        //fill in any prep here
        self.present(rawCookieChooserVC, animated: true, completion: nil)
    }
    
    @IBAction func finishedCookiesTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let finishedCookiesVC = storyboard.instantiateViewController(withIdentifier: "FinishedCookiesVCID") as! FinishedCookiesVC
        finishedCookiesVC.loadViewIfNeeded()
        //fill in any prep here
        self.present(finishedCookiesVC, animated: true, completion: nil)
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
