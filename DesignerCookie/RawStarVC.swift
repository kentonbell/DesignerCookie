//
//  RawStarVC.swift
//  DesignerCookie
//
//  Created by Kenton Bell on 1/4/24.
//

import UIKit

class RawStarVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func homeTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainScreen = storyboard.instantiateViewController(withIdentifier: "titlescreen") as! ViewController
        mainScreen.loadViewIfNeeded()
        //fill in any prep here
        self.present(mainScreen, animated: true, completion: nil)
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
