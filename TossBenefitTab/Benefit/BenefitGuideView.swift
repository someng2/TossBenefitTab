//
//  BenefitGuideView.swift
//  TossBenefitTab
//
//  Created by 백소망 on 2022/09/22.
//

import UIKit

final class BenefitGuideView: UIView {
    
    lazy var icon: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder): has not been implemented")
    }
    
    private func setup() {
        // 위에서 만든 view를 guideview에 추가
        addSubview(icon)
        addSubview(title)
        
        // autolayout 설정
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            icon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 30),
            icon.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 30),
            title.centerYAnchor.constraint(equalTo: icon.centerYAnchor)
        ])
    }
}
