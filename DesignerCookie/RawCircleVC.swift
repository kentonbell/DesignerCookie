//
//  rawCookieViewController.swift
//  DesignerCookie
//
//  Created by Kenton Bell on 1/4/24.
//

import UIKit


class RawCircleVC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //(x: 469, y: 50, width: 260, height: 260)
        // Do any additional setup after loading the view.
        
        
        view.addSubview(testcookie)
        testcookie.contentMode = .scaleAspectFill
        testcookie.translatesAutoresizingMaskIntoConstraints = true
        testcookie.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        testcookie.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        testcookie.heightAnchor.constraint(equalToConstant: 450).isActive = true
        testcookie.widthAnchor.constraint(equalToConstant: 275).isActive = true
//        testcookie.clipsToBounds
        testcookie.layer.cornerRadius = 38
        
        
        
//        let card = UIView()
//        testcookie.addSubview(card)
//        card.translatesAutoresizingMaskIntoConstraints = false
//        card.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        card.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        card.heightAnchor.constraint(equalToConstant: 450).isActive = true
//        card.widthAnchor.constraint(equalToConstant: 275).isActive = true
//        card.backgroundColor = UIColor.blue.withAlphaComponent (0.67)
//        
//        
//        card.isUserInteractionEnabled = false
        testcookie.isUserInteractionEnabled = true
        
        
        testcookie.addGestureRecognizer (UIPanGestureRecognizer(target: self, action:
            #selector(self.testhandlePanGesture)))
        
        
  
        
    }
    
    
    @objc func testhandlePanGesture(gesture:UIPanGestureRecognizer) {
        if gesture.state == .began {
            print ("began" )
            
    } else if gesture.state == .changed {
        print ("changed" )
        let translation = gesture.translation(in: view)
        // you can have one of the x or y tranlsation zero and it will only move in that direction
        testcookie.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
        
        
    } else if gesture.state == .ended {
        print ("ended" )
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseIn, animations: { self.testcookie.transform = .identity})
        //, completion: can be put at the end
        }
    }
    
    
    
    
    @IBAction func homeTap(_ sender: Any) {
        
        self.dismiss(animated: false)
        self.presentingViewController?.dismiss(animated: true)
        
        // ///////////////// old way the just makes views stack on top of each other and make a memory problem
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let mainScreen = storyboard.instantiateViewController(withIdentifier: "titlescreen") as! ViewController
//        mainScreen.loadViewIfNeeded()
//        //fill in any prep here
//        self.present(mainScreen, animated: true, completion: nil)
        // //////////////////////////////
    }
    
    
    
    
   
    
    
    @IBOutlet weak var toppingScroll: UIScrollView!
    
    
    @IBOutlet weak var testcookie: UIImageView!
    
   
    
    
    
    
    
    @IBOutlet weak var cookie: UIButton!
//    
//    @IBOutlet weak var covered: UIButton!
//    
//    @IBOutlet weak var dotted: UIButton!
//    
//    @IBOutlet weak var swirled: UIButton!
//    
//    @IBOutlet weak var lined: UIButton!
//    
//    
//    @IBAction func frostingCoveredTap(_ sender: Any) {
//    switchToCovered()
//    }
//    @IBAction func frostingDottedTap(_ sender: Any) {
//    }
//    @IBAction func frostingSwirledTap(_ sender: Any) {
//    }
//    @IBAction func frostingLinedTap(_ sender: Any) {
//    }
//    
    
    
    
    
    func switchToCovered(){
    
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
