//
//  ResponseModel.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

import Foundation

struct ResponseModel {
    let response: String
    let message: String
    let baseImageUrl: String
    let baseLinkUrl: String
    let data: [String: PockemonListModel]
}
