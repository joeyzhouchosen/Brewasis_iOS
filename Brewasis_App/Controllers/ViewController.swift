//
//  ViewController.swift
//  Brewasis_App
//
//  Created by Yanbin Zhou on 6/25/19.
//  Copyright © 2019 Yanbin Zhou. All rights reserved.
//
import UIKit



class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var pages : [LoginGuidePage] = [
        LoginGuidePage(imageName: "welcome", title: "Welcome", message: "Things are going to get a little easier after this. We’re going to simplify your best sales drivers and provide you with insights about your brewery versus the industry.", color: #colorLiteral(red: 0.0180366952, green: 0.7475460172, blue: 0.683809638, alpha: 1)),
        LoginGuidePage(imageName: "beer", title: "Instructions", message: "We just need you to sign-up, fill out a survey and send us your sales data and marketing programs each month for us to measure and report back to you!", color: #colorLiteral(red: 0.8964976668, green: 0.8415411115, blue: 0.1225866899, alpha: 1)),
        LoginGuidePage(imageName: "social", title: "Social", message: "Then, sit back and wait for the insights to roll in each month! We’re here to help you at any point, feel free to send us any questions.", color: #colorLiteral(red: 0.4058458209, green: 0.7952770591, blue: 0.1991566122, alpha: 1))
    ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .red
        setupViews()
    }
    
    let cellId = "cellId"
    
    lazy var collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        cv.backgroundColor = .purple
        
        cv.delegate = self
        
        cv.dataSource = self
        cv.isPagingEnabled = true
        return cv
        
    }()
    
    
    
    func setupViews() {
        
        
        
        view.addSubview(collectionView)
        collectionView.register(LoginGuideCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LoginGuideCell
        let loginPage = pages[indexPath.row]
        cell.loginPage = loginPage
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}

