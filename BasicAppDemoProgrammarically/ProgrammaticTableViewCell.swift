//
//  ProgrammaticTableViewCell.swift
//  BasicAppDemoProgrammarically
//
//  Created by Consultant on 11/8/22.
//

import UIKit

class ProgrammaticTableViewCell: UITableViewCell {

    lazy var proImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .systemRed
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "Hat")
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        return imageView
    }()
    
    lazy var proTopLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        label.numberOfLines = 0
        label.text = "Top"
        return label
    }()
    
    lazy var proMidLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemPurple
        label.numberOfLines = 0
        label.text = "Middle"
        return label
    }()
    lazy var proBottomLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        label.numberOfLines = 0
        label.text = "Bottom"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle,reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI() {
        self.contentView.backgroundColor = .systemGray5
        
        self.contentView.addSubview(self.proImageView)
        self.contentView.addSubview(self.proMidLabel)
        
        self.proImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8 ).isActive = true
        self.proImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8 ).isActive = true
        self.proImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8 ).isActive = true
        
        
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
//        stackView.distribution = .equalSpacing
        let bufferTop = UIView.createBufferView()
        let bufferBottom = UIView.createBufferView()
        
        stackView.addArrangedSubview(bufferTop)
        stackView.addArrangedSubview(self.proTopLabel)
        stackView.addArrangedSubview(self.proMidLabel)
        stackView.addArrangedSubview(self.proBottomLabel)
        stackView.addArrangedSubview(bufferBottom)
         
        bufferTop.heightAnchor.constraint(equalTo: bufferBottom.heightAnchor).isActive = true
        
        self.contentView.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.proImageView.trailingAnchor, constant: 8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
//        self.proMidLabel.leadingAnchor.constraint(equalTo: self.proImageView.trailingAnchor, constant: 8).isActive = true
//        self.proMidLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
//        self.proMidLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
//
        
    }
    

}
