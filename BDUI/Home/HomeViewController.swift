import UIKit

final class HomeViewController: UIViewController {
    
    private let collectionView = HomeCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        view.addSubview(collectionView)
        collectionView.frame = self.view.frame
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
        ])
    }

}

