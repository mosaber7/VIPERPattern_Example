//
//  HomeProtocol.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import Foundation


protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol?{get set}
}

protocol HomePresenterProtocol: AnyObject {
      var view: HomeViewProtocol? {get set}
}

protocol HomeRouterProtocol {
    
}

protocol HomeInteractorInputProtocol: AnyObject{
    var presenter: HomePresenterProtocol?{get set}
}
protocol HomeInteractorOutputProtocol: AnyObject{
    
}
