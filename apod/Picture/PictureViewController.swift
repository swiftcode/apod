//
//  PictureViewController.swift
//  apod
//
//  Created by mpc on 2/6/21.
//

import UIKit

class PictureViewController: UIViewController {

    var pictureView: PictureView = {
        let view = PictureView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupLayout()
        setupActions()
    }

    //MARK: - Setup and Layout
    private func setupView() {
        view.addSubview(pictureView)

        self.title = "Picture Of The Day"
        view.backgroundColor = .black

        pictureView.setImage(image: "IMG_3262.JPG")
        pictureView.contentMode = .scaleAspectFit

        addParallaxToView(view: pictureView, amount: 200)
    }

    private func setupLayout() {
        let guide = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            pictureView.topAnchor.constraint(equalTo: guide.topAnchor),
            pictureView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            pictureView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            pictureView.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
    }

    private func setupActions() {

    }
}
