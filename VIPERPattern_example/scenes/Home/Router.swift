//
//  Router.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import UIKit

class Router: HomeRouterProtocol{
    
    weak var viewController: UIViewController?
    static func createModule()-> UIViewController{
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "\(ViewController.self)") as! ViewController
        let interactor = Interactor()
        let router = Router()
        let presenter = Presenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
}
