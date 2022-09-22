//
//  TodayBenefitCell.swift
//  TossBenefitTab
//
//  Created by 백소망 on 2022/09/21.
//

import UIKit

class TodayBenefitCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    // cta button : 액션을 부르는 버튼
    @IBOutlet weak var ctaButton: UIButton!
    
    // 스토리보드가 깨어났을 때 실행
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.systemGray.withAlphaComponent(0.3)   //  투명도 설정
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        
        self.ctaButton.layer.masksToBounds = true
        self.ctaButton.layer.cornerRadius = 5
    }
    
    func configure(item: Benefit) {
        titleLabel.text = item.title
        ctaButton.setTitle(item.ctaTitle, for: .normal)
    }
}
