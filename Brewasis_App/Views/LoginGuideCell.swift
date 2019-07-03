//
//  LoginGuideCell.swift
//  Brewasis_App
//
//  Created by Yanbin Zhou on 7/2/19.
//  Copyright © 2019 Yanbin Zhou. All rights reserved.
//

import UIKit

class LoginGuideCell: UICollectionViewCell{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    var loginPage: LoginGuidePage? {
        didSet {
            mainImageView.image = UIImage(named: loginPage!.imageName)
            backgroundColor = loginPage?.color
            
        }
    }
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
        
    let seperatorLine: UIView = {
        let sp = UIView()
        sp.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        sp.translatesAutoresizingMaskIntoConstraints = false
        return sp
    }()
    
    let titleBox: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return title
    }()
    
    
    let messageBox: UILabel = {
        let message = UILabel()
        message.translatesAutoresizingMaskIntoConstraints = false
        message.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return message
    }()
    
    func setupViews() {
        addSubview(mainImageView)
        mainImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        addSubview(seperatorLine)
        seperatorLine.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 30).isActive = true
        seperatorLine.centerXAnchor.constraint(lessThanOrEqualTo: centerXAnchor).isActive = true
        seperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        seperatorLine.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        seperatorLine.rightAnchor.constraint(equalTo: rightAnchor, constant: -50).isActive = true
        
//        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
