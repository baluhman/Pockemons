//
//  PockemonListService.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

// Получает данные для модуля PockemonList
protocol FetchPockemonsList {
    func fetchItems(completion: @escaping ([PockemonListModel]?) -> Void)
}

class PockemonsListService: FetchPockemonsList {
    
    // TODO: - implement API-client
    func fetchItems(completion: @escaping ([PockemonListModel]?) -> Void) {
        return
    }
    
    
    init() {
        
    }
}
