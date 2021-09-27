//
//  zoomViewController.swift
//  SlideshowApp
//
//  Created by matsushitamasaki on 2021/09/20.
//

import UIKit

class zoomViewController: UIViewController {
    @IBOutlet weak var zoomImg: UIImageView!
    var img: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        zoomImg.image = self.img
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
