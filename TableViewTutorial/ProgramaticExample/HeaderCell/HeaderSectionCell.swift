//
//  HeaderSectionCell.swift
//  TableViewTutorial
//
//  Created by Victor Roldan on 28/08/21.
//

import UIKit

class HeaderSectionCell: UITableViewHeaderFooterView {
    private var titleLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var shareIcon : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "square.and.arrow.up")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var view : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private func configureView(){
        addSubview(view)
        view.addSubview(titleLabel)
        view.addSubview(shareIcon)
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.topAnchor.constraint(equalTo: topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            shareIcon.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 10),
            shareIcon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            shareIcon.heightAnchor.constraint(equalToConstant: 25),
            shareIcon.widthAnchor.constraint(equalToConstant: 25),
            shareIcon.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func setData(title : String){
        titleLabel.text = title
    }
}
