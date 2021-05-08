//
//  ViewController.swift
//  ZennexNS
//
//  Created by Nikita Shvad on 30.04.2021.
//

import UIKit

class ViewController: UIViewController {

        private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
            button.setTitleColor(.black, for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTouchButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
        button.center = view.center
    }

    @objc func didTouchButton() {
        let tabBarVC = UITabBarController()
        let vc1 = FirstViewController()
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        tabBarVC.setViewControllers( [vc1, vc2, vc3], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        vc1.title = "Home"
        vc2.title = "Support"
        vc3.title = "Meowsly"
        present(tabBarVC, animated: true)
        guard let items = tabBarVC.tabBar.items else{
            return
        }
        let images = ["house", "star", "bell"]
        
        for x in 0..<items.count{
            items[x].image = UIImage(systemName: images[x])
        }
    }
    class FirstViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .green
        }
    }
    
    class SecondViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .red
        }
    }
    class ThirdViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .gray
        }
    }
}

