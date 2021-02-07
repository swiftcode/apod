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
            podImageView.topAnchor.constraint(equalTo: topAnchor, constant: 30.0),
            podImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30.0),
            podImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30.0),
            podImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30.0)
        ])
    }

    //MARK: - Methods
    func setImage(image: String) {
        self.podImageView.image = UIImage(named: image)
    }
}
