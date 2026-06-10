import UIKit

final class HomeViewController: UIViewController {
    
    private let collectionView = HomeCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupView()
        setupConstraints()
        
        let uiModel = HomeUIModel(sectionModels: [
            .init(section: .mainBanner(id: "123"), body: [
                .mainBanner(id: "234x", imageLink: "", title: "Some title", caption: "Some caption")
            ] )
        ])
 
        collectionView.setupUIModel(uiModel: uiModel)
    }
    
    private func setupView() {
        view.addSubview(collectionView)
    }

    private func setupConstraints() {
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                collectionView.topAnchor.constraint(equalTo: view.topAnchor),
                collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        }

}

