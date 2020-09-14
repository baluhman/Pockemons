//
//  PockemonsListViewController.swift
//  Pockemons
//
//  Created by Краснов Олег on 13.09.2020.
//  Copyright © 2020 ru.baluhman.simplec. All rights reserved.
//

import Foundation
import UIKit

protocol PockemonsListDisplayLogic: class {
    func displayItems(viewModel: PockemonList.ShowItems.ViewModel)
}

class PockemonsListViewController: UIViewController, PockemonsListDisplayLogic {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = PockemonsListView()
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func displayItems(viewModel: PockemonList.ShowItems.ViewModel) {
        
    }
    
}
