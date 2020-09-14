//
//  PockemonListProvider.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

protocol PockemonsListProviderProtocol {
    func getItems(completion: @escaping ([PockemonListModel]?) -> Void)
}

class PockemonListProvider: PockemonsListProviderProtocol {
    
    let service: FetchPockemonsList
    
    init(service: FetchPockemonsList = PockemonsListService()) {
        
    }
    
    func getItems(completion: @escaping ([PockemonListModel]?) -> Void) {
        service.fetchItems(completion: completion)
    }
}
