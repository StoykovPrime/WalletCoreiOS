//
//  LWRxAuthManagerAssetPairRatesMock.swift
//  WalletCoreTests
//
//  Created by Georgi Stanev on 4.01.18.
//  Copyright © 2018 Lykke. All rights reserved.
//

import UIKit
import RxSwift
@testable import WalletCore

class LWRxAuthManagerAssetPairRatesMock: LWRxAuthManagerAssetPairRatesProtocol {
    
    var data: [LWAssetPairRateModel]
    
    init(data: [LWAssetPairRateModel]) {
        self.data = data
    }
    
    func request() -> Observable<ApiResultList<LWAssetPairRateModel>> {
        return Observable<ApiResultList<LWAssetPairRateModel>>
            .just(.success(withData: data))
            .startWith(.loading)
    }
    
    func request(withParams params: Bool) -> Observable<ApiResultList<LWAssetPairRateModel>> {
        return request()
    }
}
