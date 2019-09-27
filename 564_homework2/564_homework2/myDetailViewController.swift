//
//  myDetailViewController.swift
//  564_homework2
//
//  Created by Chong Xu on 9/19/19.
//  Copyright © 2019 Chong Xu. All rights reserved.
//

import UIKit

class myDetailViewController: UIViewController {

    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var detailView: UILabel!
    var weatherName: String = ""
    var weatherIma: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailView?.text = weatherName
        imageViewTwo?.image = weatherIma
        // Do any additional setup after loading the view.
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
