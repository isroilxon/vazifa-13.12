//
//  SecondViewController.swift
//  dars 13.12
//
//  Created by Mac on 13/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    let image = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Saqlanganlar"
        view.backgroundColor = .yellow
        
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.image = UIImage(named: "girlImage")
    }
    
    override func viewDidLayoutSubviews() {
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        image.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive = true
        image.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive = true
        image.heightAnchor.constraint(equalToConstant: 200).isActive = true
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
