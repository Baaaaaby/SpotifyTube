//
//  HomeViewController.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTabSettings)
        )
        
        fetchData()
    }
    
    private func fetchData() {
        APICaller.shared.getRecommendedGenres { _ in
            
        }
    }

    @objc func didTabSettings() {                                   //右上 設定
        let vc = SettingsViewController()
        vc.title = "Settings"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }

}
