//
//  ViewController.swift
//  The Polyglot
//
//  Created by Marcelly Luise on 14/12/17.
//  Copyright © 2017 Marcelly Luise. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var jedaisTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadGif()
        localizeTexts()
        registerCell()
        setupUI()
    }
    
    private func setupUI() {
        jedaisTableView.tableFooterView = UIView()
    }
    
    private func loadGif() {
        let imageData = try! Data(contentsOf: Bundle.main.url(forResource: "cake", withExtension: "gif")!)
        imageView.image = UIImage.gif(data: imageData)
    }
    
    private func localizeTexts() {
        topLabel.text = PolyglotLocalizable.stayAndHaveACake
    }
    
    private func registerCell() {
        jedaisTableView.register(UINib(nibName: "CakeLoversTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "CakeLoversTableViewCell")
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CakeLoversTableViewCell", for: indexPath) as? CakeLoversTableViewCell else {
            return UITableViewCell()
        }
        
        cell.counterLabel.text = PolyglotLocalizable.jedaisThatDidStay(jedais: indexPath.row)
        
        return cell
    }
}

