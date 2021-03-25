//
//  ViewController.swift
//  SlideShowApp2
//
//  Created by 広瀬綾香 on 2021/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UIImageView: UIImageView!

    var imageIndex = 0

    var timer: Timer!

    let images = [UIImage(named: "arikabe.jpeg"),UIImage(named: "wakaru.jpeg"), UIImage(named: "moomin.jpeg")]

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let imageView = images[0]
        print(images[0])

    UIImageView.image = imageView
    }
    
    // スライドショーさせる画像の配列を宣言
    var imageArray = [
        UIImage(named: "arikabe.jpeg"),
        UIImage(named: "wakaru.jpeg"),
        UIImage(named: "moomin.jpeg")
    ]

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }


    @IBAction func backImage(_ sender: Any) {
        if imageIndex == 0 {
        imageIndex = 2
        } else {
        imageIndex -= 1
        }
        UIImageView.image = images[imageIndex]
    }
  
    
    @IBAction func nextImage(_ sender: Any) {
        if imageIndex == 2 {
        imageIndex = 0
        } else {
        imageIndex += 1
        }
        UIImageView.image = images[imageIndex]
    }

    
    @IBAction func startStop(_ sender: Any) {
        print("startstop iscalled")
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
    }


    @objc func onTimer(_ timer: Timer) {
    if imageIndex == 2 {
    imageIndex = 0
    } else {
    imageIndex += 2
    }
    UIImageView.image = images[imageIndex]
    }

}

