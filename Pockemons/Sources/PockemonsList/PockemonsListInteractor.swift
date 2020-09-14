//
//  PockemonsListInteractor.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

import Foundation

protocol PockemonsListBusinessLogic {
    func fetchItems(request: PockemonList.ShowItems.Request)
}

class PockemonsListInteractor: PockemonsListBusinessLogic {
    
    let presenter: PockemonsListPresentationLogic
    let provider: PockemonsListProviderProtocol
 
    init(presenter: PockemonsListPresentationLogic, provider: PockemonsListProviderProtocol = PockemonListProvider()) {
        self.presenter = presenter
        self.provider = provider
    }
    
    func fetchItems(request: PockemonList.ShowItems.Request) {
        provider.getItems { items in
            let result: Result<[PockemonListModel], Error>
            if let items = items {
                result = .success(items)
            } else {
                result = .failure(Err())
            }
            
            //TODO: вызвать метод презентера
            
        }
     }
}

struct Err: Error {
    
}
