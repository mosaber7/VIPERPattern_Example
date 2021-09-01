//
//  Presenter.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import Foundation


class Presenter: HomePresenterProtocol, HomeInteractorOutputProtocol{
    weak var view: HomeViewProtocol?
    private let interactor: HomeInteractorInputProtocol
    private let router: HomeRouterProtocol
    
    init(view: HomeViewProtocol,interactor: HomeInteractorInputProtocol, router: HomeRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}

