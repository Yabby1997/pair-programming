//
//  ViewController.swift
//  pair-programming
//
//  Created by Seunghun Yang on 2021/10/11.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    // MARK: - Subviews
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .orange
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .red
        return contentView
    }()
    
    private lazy var someView: UIView = {
        let someView = UIView()
        someView.backgroundColor = .brown
        return someView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        configureUI()
    }
    
    private func configureUI() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.topMargin.equalTo(view.snp.topMargin)
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
            make.bottomMargin.equalTo(view.snp.bottomMargin)
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
        
        someView.addSubview(contentView)
        someView.snp.makeConstraints { make in
            make.width.equalTo(contentView.snp.width)
            make.height.equalTo(1500)
            make.bottom.equalTo(contentView.snp.bottom)
        }
    }
}
