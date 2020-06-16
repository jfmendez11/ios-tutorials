//
//  CassinniViewController.swift
//  Cassini
//
//  Created by Juan Felipe Méndez on 16/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import UIKit

class CassinniViewController: UIViewController {



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let identifier = segue.identifier {
            print(identifier, DemoURLs.NASA[identifier]!)
            if let url = DemoURLs.NASA[identifier] {
                if let imageVC = segue.destination as? ImageViewController {
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }


}
