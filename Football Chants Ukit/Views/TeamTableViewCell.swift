//
//  TeamTableViewCell.swift
//  Football Chants Ukit
//
//  Created by baran.ates on 19.04.2025.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    static let cellId = "TeamTableViewCell"
    
    // MARK: - UI
    
    private lazy var containerVw: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackVw: UIStackView = {
        let stackVw = UIStackView()
        stackVw.translatesAutoresizingMaskIntoConstraints = false
        stackVw.spacing = 4
        stackVw.axis = .vertical
        return stackVw
    }()
    
    private lazy var badgeImgVw: UIImageView = {
       let imgVw = UIImageView()
        imgVw.translatesAutoresizingMaskIntoConstraints = false
        imgVw.contentMode = .scaleAspectFit
        return imgVw
    }()
    
    private lazy var playbackBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tintColor = .white
        return btn
    }()
    
    private lazy var teamNameLbl: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        // Set to 0 to use as many lines as it needs.
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var foundedLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var managerLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 10, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var infoLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    // MARK: - Lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        containerVw.layer.cornerRadius = 10
    }
    
    func configure() {
        
        containerVw.backgroundColor = TeamType.arsenal.background
        
        badgeImgVw.image = TeamType.arsenal.badge
        playbackBtn.setImage(UIImage(systemName: "play.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32)), for: .normal)
        
        teamNameLbl.text = "Arsenal"
        foundedLbl.text = "Founded: October 1886"
        managerLbl.text = "Current Manager: Mikel Arteta"
        infoLbl.text = "Arsenal Football Club, commonly referred to as Arsenal, is a professional football club based in London, England. The club competes in the Premier League as a member club of the English Football League."
        
        self.contentView.addSubview(containerVw)
        self.contentView.backgroundColor = .systemBlue
        
        containerVw.addSubview(contentStackVw)
        containerVw.addSubview(badgeImgVw)
        containerVw.addSubview(playbackBtn)
        // addArrangedSubview is special to UIStackView, it automatically
        // handles layout according to parent and also spacing, alignments.
        contentStackVw.addArrangedSubview(teamNameLbl)
        contentStackVw.addArrangedSubview(foundedLbl)
        contentStackVw.addArrangedSubview(managerLbl)
        contentStackVw.addArrangedSubview(infoLbl)
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            
            badgeImgVw.heightAnchor.constraint(equalToConstant: 50),
            badgeImgVw.widthAnchor.constraint(equalToConstant: 50),
            badgeImgVw.topAnchor.constraint(equalTo: contentStackVw.topAnchor),
            badgeImgVw.leadingAnchor.constraint(equalTo: containerVw.leadingAnchor, constant: 8),
            
            contentStackVw.topAnchor.constraint(equalTo: containerVw.topAnchor, constant: 16),
            contentStackVw.bottomAnchor.constraint(equalTo: containerVw.bottomAnchor, constant: -16),
            contentStackVw.leadingAnchor.constraint(equalTo: badgeImgVw.trailingAnchor, constant: 8),
            contentStackVw.trailingAnchor.constraint(equalTo: playbackBtn.leadingAnchor, constant: -8),
            
            playbackBtn.heightAnchor.constraint(equalToConstant: 44),
            playbackBtn.widthAnchor.constraint(equalToConstant: 44),
            playbackBtn.trailingAnchor.constraint(equalTo: containerVw.trailingAnchor, constant: -8),
            playbackBtn.centerYAnchor.constraint(equalTo: containerVw.centerYAnchor),
        ])
    }
    
}
