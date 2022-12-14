//
//  FirstViewController.swift
//  dars 13.12
//
//  Created by Mac on 13/12/22.
//

import UIKit

class FirstViewController: UIViewController {
    let label = UILabel()
    let image = UIImageView()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        
        title = "programmatic"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "sizning shaxsiy profilingiz"
        label.font = .systemFont(ofSize: 30)
        view.addSubview(label)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "man")
        view.addSubview(image)
        image.contentMode = .scaleAspectFit
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.backgroundColor = .black
        button.titleLabel?.textColor = .white
        button.setTitle("saqlanganlar", for: .normal)
        
        
    }
    
    override func viewDidLayoutSubviews() {
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        image.widthAnchor.constraint(equalToConstant: 200).isActive = true
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 70).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        
    }
    
    @objc func buttonTap() {
       /* UIView.animate(withDuration: 1) {
            self.image.widthAnchor.constraint(equalToConstant: 100).isActive = true
            self.image.heightAnchor.constraint(equalToConstant: 75).isActive = true
            
        }
        */
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
