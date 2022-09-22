//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by 백소망 on 2022/09/21.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}
