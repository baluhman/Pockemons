//
//  PockemonListViewModel.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

import Foundation

struct PockemonListViewModel {
    let uid: UUID
    let title: String
}

extension PockemonListViewModel: Equatable {
    static func == (lhs: PockemonListViewModel, rhs:PockemonListViewModel) -> Bool {
        return lhs.uid == rhs.uid
    }
}
