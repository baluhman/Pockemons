//
//  PockemonsListPresenter.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

import Foundation

protocol PockemonsListPresentationLogic {
    func presentItems(response: PockemonList.ShowItems.Response)
}

class PockemonsListPresenter: PockemonsListPresentationLogic{
    
    weak var viewController: PockemonsListDisplayLogic?
    
    func presentItems(response: PockemonList.ShowItems.Response) {
        var viewModel: PockemonList.ShowItems.ViewModel
        switch response.result {
        case .failure:
            viewModel = PockemonList.ShowItems.ViewModel(state: .error(message: "Error"))
        case let .success(result):
            if result.isEmpty {
                viewModel = PockemonList.ShowItems.ViewModel(state: .emptyResult(title: "Empty result", subtitle: "Try later"))
            } else {
                let cellsViewModels = result.map { PockemonListViewModel(uid: $0.uid, title: $0.name) }
                viewModel = PockemonList.ShowItems.ViewModel(state: .result(cellsViewModels))
            }
        }
        viewController?.displayItems(viewModel: viewModel)
    }
}
