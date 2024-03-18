//
//  Router.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import XCoordinator

extension UnownedRouter {
    static func previewMock<T: Route>() -> UnownedRouter<T> {
        return UnownedRouter(EmptyRouter<T>(), erase: { StrongRouter<T>($0) })
    }
}
