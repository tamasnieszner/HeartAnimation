//
//  ViewController.swift
//  HeartAnimation
//
//  Created by Tamás Nieszner on 2021. 12. 17..
//

import UIKit

class ViewController: UIViewController {
    var spriteImages: [UIImage] = []
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "tile00")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.animate)))
        imageView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        for i in 0..<29 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
    }
    
    @objc func animate() {
        imageView.animationImages = spriteImages
        imageView.animationDuration = 0.6
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
}
