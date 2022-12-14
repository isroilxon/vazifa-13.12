//
//  SecondViewController.swift
//  dars 13.12
//
//  Created by Mac on 13/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    let image = UIImageView()
    let label = UILabel()
    let label2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Saqlanganlar"
        view.backgroundColor = .white
        
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        image.image = UIImage(named: "girlImage")
        
        label.text = "Saqlanganlar mavjud emas"
        label.font = .systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label2.text = "Istalgan taomingizni saqlab qo'yish va istalgan vaqtda shu yerdan topshingiz mumkin"
        label2.font = .systemFont(ofSize: 15)
        label2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label2)
    }
    
    override func viewDidLayoutSubviews() {
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        image.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive = true
        image.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive = true
        image.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 40).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        label2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        label2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        label2.numberOfLines = 0
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
