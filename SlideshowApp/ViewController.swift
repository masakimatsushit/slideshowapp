//
//  ViewController.swift
//  SlideshowApp
//
//  Created by matsushitamasaki on 2021/09/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    @IBAction func Tap(_ sender: Any) {
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
            let zoom:zoomViewController = segue.destination as! zoomViewController
        zoom.img = imageArray[nowIndex]!
      }
    
    
    var nowIndex:Int = 0
    
    var timer:Timer!
    
    let imageArray = [
        UIImage(named: "A4D8FCA6-4D27-4862-AE84-5855CD306280_4_5005_c"),
        UIImage(named:"03EB322C-ECDF-4B90-9F3C-4CE45E0752BC_4_5005_c"),
        UIImage(named:"D607841F-5DA3-4C42-A26E-9DD395672F18")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        img.image = imageArray[0]
    }
    
    @IBOutlet weak var Next: UIButton!
    
    @IBOutlet weak var Back: UIButton!
    
    @IBAction func next(_ sender: Any) {
        if nowIndex == 2 {
            nowIndex = 0
        }else{
            nowIndex += 1
        }
        img.image = imageArray[nowIndex]
    }
    
    @IBAction func back(_ sender: Any) {
        if nowIndex == 0 {
            nowIndex = 2
        }else{
            nowIndex -= 1
        }
        img.image = imageArray[nowIndex]
    
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            Next.isEnabled = false
            Back.isEnabled = false
            startButton.setTitle("停止", for: .normal)
        }else{
            timer.invalidate()
            
            timer = nil
            Next.isEnabled = true
            Back.isEnabled = true
            startButton.setTitle("再生", for: .normal)
        }
    }
    @objc func changeImage(){
        
        if nowIndex == imageArray.count - 1  {
            nowIndex = 0
        }else{
            nowIndex += 1
        }
        img.image = imageArray[nowIndex]
    }
   
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }
}

