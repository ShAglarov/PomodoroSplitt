//
//  EmptyRouter.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import UIKit
import XCoordinator

final class EmptyRouter<T: Route>: Router {
    var viewController: UIViewController!
    func contextTrigger(_ route: T, with options: TransitionOptions, completion: ContextPresentationHandler?) {}
}
