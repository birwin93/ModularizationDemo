//
//  BaseViewController.swift
//  UI
//
//  Created by Billy Irwin on 9/7/20.
//  Copyright © 2020 ModuleDemo. All rights reserved.
//

import UIKit

public final class MenuItem {
    let title: String
    let tapHander: () -> Void

    public init(title: String,
                tapHandler: @escaping () -> Void) {
        self.title = title
        self.tapHander = tapHandler
    }
}

class Button: UIButton {

    var tapHandler: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func tap() {
        tapHandler?()
    }
}

open class MenuViewController: UIViewController {

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 20
        return stackView
    }()

    override open func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true

        for item in menuItems() {
            let button = Button()
            button.backgroundColor = .black
            button.setTitle(item.title, for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.tapHandler = item.tapHander
            stackView.addArrangedSubview(button)
        }
    }

    open func menuItems() -> [MenuItem] {
        return []
    }
}
