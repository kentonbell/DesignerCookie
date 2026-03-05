//
//  ViewController.swift
//  DesignerCookie
//
//  Created by Kenton Bell on 12/30/23.
//

import UIKit

class RawCookieChooserVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY+60)
        
        
        progressBar.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY+60)
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 6)
        
        
       
        
    }
    
    
    
    var waitTime = 1
    
    @IBAction func homeTap(_ sender: Any) {
        
        
        self.dismiss(animated: true)
//        self.presentingViewController?.dismiss(animated: false)
        
        // ///////////////// old way the just makes views stack on top of each other and make a memory problem
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let mainScreen = storyboard.instantiateViewController(withIdentifier: "titlescreen") as! ViewController
//        mainScreen.loadViewIfNeeded()
//        //fill in any prep here
//        self.present(mainScreen, animated: true, completion: nil)
        // //////////////////////////////
    }
    
    @IBOutlet weak var bake: UIButton!
    var isBakeShowing:Bool = false
    
    
        //you can't use the view.bounds stuff for the direction its going
    
//    The from and to value is from the current location of the object in points.
    
    func translateBakeUp(){
        print("bakeup")
        
        bake.layer.position = CGPoint(x: view.bounds.midX,y: view.bounds.maxY-60)
        
        let animation = CABasicAnimation()
        animation.keyPath = "transform.translation.y"
        animation.fromValue = 60
        animation.toValue = 0
        animation.duration = 0.5
        
        bake.layer.add(animation, forKey: "basic")
        
        
        
    }
                                      
    func translateBakeDown(){
        print("bakedown")
   
        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY+60)
        
        let animation = CABasicAnimation()
        animation.keyPath = "transform.translation.y"
        animation.fromValue = -120
        animation.toValue = 0
        animation.duration = 1
        
        bake.layer.add(animation, forKey: "basic")
        
        
    }
    
    
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    var isProgressBarShowing = false
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var circleRaw: UIButton!
    var isCircleRawPressed:Bool = false
    func pressCircleRaw() {
        circleRaw.setImage(UIImage(named: "circleRaw"), for: .normal)
        heartRaw.setImage(UIImage(named: "pressedheartRaw"), for: .normal)
        stockingRaw.setImage(UIImage(named: "pressedstockingRaw"), for: .normal)
        starRaw.setImage(UIImage(named: "pressedstarRaw"), for: .normal)
        snowflakeRaw.setImage(UIImage(named: "pressedsnowflakeRaw"), for: .normal)
        treeRaw.setImage(UIImage(named: "pressedtreeRaw"), for: .normal)
        
        
        //appear bake button
//        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY-60)
        translateBakeUp()
        
        isHeartRawPressed = false
        isStockingRawPressed = false
        isStarRawPressed = false
        isSnowflakeRawPressed = false
        isTreeRawPressed = false
    }
    @IBOutlet weak var heartRaw: UIButton!
    var isHeartRawPressed:Bool = false
    func pressHeartRaw() {
        circleRaw.setImage(UIImage(named: "pressedcircleRaw"), for: .normal)
        heartRaw.setImage(UIImage(named: "heartRaw"), for: .normal)
        stockingRaw.setImage(UIImage(named: "pressedstockingRaw"), for: .normal)
        starRaw.setImage(UIImage(named: "pressedstarRaw"), for: .normal)
        snowflakeRaw.setImage(UIImage(named: "pressedsnowflakeRaw"), for: .normal)
        treeRaw.setImage(UIImage(named: "pressedtreeRaw"), for: .normal)
        
        //appear bake button
//        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY-60)
        translateBakeUp()
        
        isCircleRawPressed = false
        isStockingRawPressed = false
        isStarRawPressed = false
        isSnowflakeRawPressed = false
        isTreeRawPressed = false
    }
    
    @IBOutlet weak var stockingRaw: UIButton!
    var isStockingRawPressed:Bool = false
    func pressStockingRaw() {
        circleRaw.setImage(UIImage(named: "pressedcircleRaw"), for: .normal)
        heartRaw.setImage(UIImage(named: "pressedheartRaw"), for: .normal)
        stockingRaw.setImage(UIImage(named: "stockingRaw"), for: .normal)
        starRaw.setImage(UIImage(named: "pressedstarRaw"), for: .normal)
        snowflakeRaw.setImage(UIImage(named: "pressedsnowflakeRaw"), for: .normal)
        treeRaw.setImage(UIImage(named: "pressedtreeRaw"), for: .normal)
        
        //appear bake button
//        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY-60)
        translateBakeUp()
        
        isCircleRawPressed = false
        isHeartRawPressed = false
        isStarRawPressed = false
        isSnowflakeRawPressed = false
        isTreeRawPressed = false
    }
    @IBOutlet weak var starRaw: UIButton!
    var isStarRawPressed:Bool = false
    func pressStarRaw() {
        circleRaw.setImage(UIImage(named: "pressedcircleRaw"), for: .normal)
        heartRaw.setImage(UIImage(named: "pressedheartRaw"), for: .normal)
        stockingRaw.setImage(UIImage(named: "pressedstockingRaw"), for: .normal)
        starRaw.setImage(UIImage(named: "starRaw"), for: .normal)
        snowflakeRaw.setImage(UIImage(named: "pressedsnowflakeRaw"), for: .normal)
        treeRaw.setImage(UIImage(named: "pressedtreeRaw"), for: .normal)
        
        //appear bake button
//        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY-60)
        translateBakeUp()
        
        isCircleRawPressed = false
        isHeartRawPressed = false
        isStockingRawPressed = false
        isSnowflakeRawPressed = false
        isTreeRawPressed = false
    }
    @IBOutlet weak var snowflakeRaw: UIButton!
    var isSnowflakeRawPressed:Bool = false
    func pressSnowflakeRaw() {
        circleRaw.setImage(UIImage(named: "pressedcircleRaw"), for: .normal)
        heartRaw.setImage(UIImage(named: "pressedheartRaw"), for: .normal)
        stockingRaw.setImage(UIImage(named: "pressedstockingRaw"), for: .normal)
        starRaw.setImage(UIImage(named: "pressedstarRaw"), for: .normal)
        snowflakeRaw.setImage(UIImage(named: "snowflakeRaw"), for: .normal)
        treeRaw.setImage(UIImage(named: "pressedtreeRaw"), for: .normal)
        
        //appear bake button
//        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY-60)
        translateBakeUp()
        
        isCircleRawPressed = false
        isHeartRawPressed = false
        isStockingRawPressed = false
        isStarRawPressed = false
        isTreeRawPressed = false
    }
    @IBOutlet weak var treeRaw: UIButton!
    var isTreeRawPressed:Bool = false
    func pressTreeRaw() {
        circleRaw.setImage(UIImage(named: "pressedcircleRaw"), for: .normal)
        heartRaw.setImage(UIImage(named: "pressedheartRaw"), for: .normal)
        stockingRaw.setImage(UIImage(named: "pressedstockingRaw"), for: .normal)
        starRaw.setImage(UIImage(named: "pressedstarRaw"), for: .normal)
        snowflakeRaw.setImage(UIImage(named: "pressedsnowflakeRaw"), for: .normal)
        treeRaw.setImage(UIImage(named: "treeRaw"), for: .normal)
        
        //appear bake button
//        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY-60)
        translateBakeUp()
        
        isCircleRawPressed = false
        isHeartRawPressed = false
        isStockingRawPressed = false
        isStarRawPressed = false
        isSnowflakeRawPressed = false
    }
    
    func releaseCookieRaw(){
        
        
        circleRaw.setImage(UIImage(named: "circleRaw"), for: .normal)
        heartRaw.setImage(UIImage(named: "heartRaw"), for: .normal)
        stockingRaw.setImage(UIImage(named: "stockingRaw"), for: .normal)
        starRaw.setImage(UIImage(named: "starRaw"), for: .normal)
        snowflakeRaw.setImage(UIImage(named: "snowflakeRaw"), for: .normal)
        treeRaw.setImage(UIImage(named: "treeRaw"), for: .normal)
        
        //disappear bake button
//        bake.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.maxY+60)
        translateBakeDown()

        
            
    }
    
    
    @IBAction func rawCircleTap(_ sender: UIButton) {
        
        if isCircleRawPressed{
            isCircleRawPressed = false
            releaseCookieRaw()
        }
        else {
            isCircleRawPressed = true
            pressCircleRaw()
        }
        
//        sleep(3) ////freezes the whole UI
      /* DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            
            circleRawVC.loadViewIfNeeded()
            self.present(circleRawVC, animated: true, completion: nil)
        })*/
    }
    
    
    
    @IBAction func rawHeartTap(_ sender: UIButton) {
        
        if isHeartRawPressed{
            isHeartRawPressed = false
            releaseCookieRaw() //leave unchanged
        }
        else {
            isHeartRawPressed = true
            pressHeartRaw()
        }
    }
        
    @IBAction func rawStockingTap(_ sender: Any) {
    if isStockingRawPressed{
            isStockingRawPressed = false
            releaseCookieRaw() //leave unchanged
        }
        else {
            isStockingRawPressed = true
            pressStockingRaw()
        }
    }
    
    @IBAction func rawSnowflakeTap(_ sender: Any) {
        
        if isSnowflakeRawPressed{
            isSnowflakeRawPressed = false
            releaseCookieRaw() //leave unchanged
        }
        else {
            isSnowflakeRawPressed = true
            pressSnowflakeRaw()
        }
    }
    
    @IBAction func rawStarTap(_ sender: Any) {
        if isStarRawPressed{
            isStarRawPressed = false
            releaseCookieRaw() //leave unchanged
        }
        else {
            isStarRawPressed = true
            pressStarRaw()
        }
    }
    
    @IBAction func rawTreeTap(_ sender: Any) {
        
        if isTreeRawPressed{
            isTreeRawPressed = false
            releaseCookieRaw() //leave unchanged
        }
        else {
            isTreeRawPressed = true
            pressTreeRaw()
        }
    }
    
    @IBAction func bakeTap(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let circleRawVC = storyboard.instantiateViewController(withIdentifier: "RawCircleVCID") as! RawCircleVC
        let heartRawVC = storyboard.instantiateViewController(withIdentifier: "RawHeartVCID") as! RawHeartVC
        let stockingRawVC = storyboard.instantiateViewController(withIdentifier: "RawStockingVCID") as! RawStockingVC
        let starRawVC = storyboard.instantiateViewController(withIdentifier: "RawStarVCID") as! RawStarVC
        let snowflakeRawVC = storyboard.instantiateViewController(withIdentifier: "RawSnowflakeVCID") as! RawSnowflakeVC
        let treeRawVC = storyboard.instantiateViewController(withIdentifier: "RawTreeVCID") as! RawTreeVC
        
        
        progressBar.layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.midY+10)
        
        progressBar.progress = 0
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*1/7), execute: { [self] in
            progressBar.progress = 0.1

        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*2/7), execute: { [self] in
            progressBar.progress = 0.2

        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*3/7), execute: { [self] in
            progressBar.progress = 0.27

        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*35/70), execute: { [self] in
            progressBar.progress = 0.37

        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*4/7), execute: { [self] in
            progressBar.progress = 0.5

        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*5/7), execute: { [self] in
            progressBar.progress = 0.7

        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*57/70), execute: { [self] in
            progressBar.progress = 0.83

        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(waitTime*1000*63/70), execute: { [self] in
            progressBar.progress = 1.0

        })
        
       
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(waitTime), execute: {
              
            
            if self.isCircleRawPressed == true {
                circleRawVC.loadViewIfNeeded()
                //fill in any prep here
                self.present(circleRawVC, animated: true, completion: nil)
            }
            else if self.isHeartRawPressed{
                heartRawVC.loadViewIfNeeded()
                //fill in any prep here
                self.present(heartRawVC, animated: true, completion: nil)
            }
            else if self.isStockingRawPressed{
                stockingRawVC.loadViewIfNeeded()
                //fill in any prep here
                self.present(stockingRawVC, animated: true, completion: nil)
            }
            else if self.isStarRawPressed{
                starRawVC.loadViewIfNeeded()
                //fill in any prep here
                self.present(starRawVC, animated: true, completion: nil)
            }
            else if self.isSnowflakeRawPressed{
                snowflakeRawVC.loadViewIfNeeded()
                //fill in any prep here
                self.present(snowflakeRawVC, animated: true, completion: nil)

            }
            else if self.isTreeRawPressed{
                treeRawVC.loadViewIfNeeded()
                //fill in any prep here
                self.present(treeRawVC, animated: true, completion: nil)
            }
            
            
    
            })
            
            
            
          
     
//        if isCircleRawPressed == true {
//            circleRawVC.loadViewIfNeeded()
//            //fill in any prep here
//            self.present(circleRawVC, animated: true, completion: nil)
//        }
//        else if isHeartRawPressed{
//            heartRawVC.loadViewIfNeeded()
//            //fill in any prep here
//            self.present(heartRawVC, animated: true, completion: nil)
//        }
//        else if isStockingRawPressed{
//            stockingRawVC.loadViewIfNeeded()
//            //fill in any prep here
//            self.present(stockingRawVC, animated: true, completion: nil)
//        }
//        else if isStarRawPressed{
//            starRawVC.loadViewIfNeeded()
//            //fill in any prep here
//            self.present(starRawVC, animated: true, completion: nil)
//        }
//        else if isSnowflakeRawPressed{
//            snowflakeRawVC.loadViewIfNeeded()
//            //fill in any prep here
//            self.present(snowflakeRawVC, animated: true, completion: nil)
//
//        }
//        else if isTreeRawPressed{
//            treeRawVC.loadViewIfNeeded()
//            //fill in any prep here
//            self.present(treeRawVC, animated: true, completion: nil)
//        }
        
        
    }
    
}

