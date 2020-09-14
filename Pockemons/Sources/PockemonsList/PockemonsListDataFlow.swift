//
//  PockemonsListDataFlow.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

enum PockemonList {
    struct ShowItems {
        struct Request {
            
        }
        
        struct Response {
            var result: Result<[PockemonListModel], Error>
        }
        
        struct ViewModel {
            var state: ViewControllerState
        }
    }
    
    enum ViewControllerState {
        case loading
        case result([PockemonListViewModel])
        case emptyResult(title: String, subtitle: String)
        case error(message: String)
    }
}
