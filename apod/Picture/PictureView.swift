//
//  PictureView.swift
//  apod
//
//  Created by mpc on 2/6/21.
//

import UIKit

class PictureView: UIView {

    //MARK: - Views

    var podImageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK: - Setup and Layout
    private func setupView() {
        addSubview(podImageView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            podImageView.topAnchor.constraint(equalTo: topAnchor),
            podImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            podImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            podImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    //MARK: - Methods
    func setImage(image: String) {
        self.podImageView.image = UIImage(named: image)
    }
}
