//
//  MyPointViewModel.swift
//  TossBenefitTab
//
//  Created by 백소망 on 2022/09/22.
//

import Foundation

final class MyPointViewModel {
    @Published var point: MyPoint
    
    init(point: MyPoint) {
        self.point = point
    }
    
}
