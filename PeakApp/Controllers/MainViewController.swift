import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Views
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.image = UIImage(named: "hero")

        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let tagContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        setupViews()
        setConstraints()
    }
    
    // MARK: - Private Methods
    private func setupViews() {
        view.addSubview(heroImageView)
        view.addSubview(tagContainer)
    }
}

// MARK: - SetConstraints
extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            heroImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            heroImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            heroImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            heroImageView.heightAnchor.constraint(equalToConstant: 450)
        ])
        
        NSLayoutConstraint.activate([
            tagContainer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            tagContainer.topAnchor.constraint(equalTo: heroImageView.bottomAnchor, constant: 20),
            tagContainer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            tagContainer.heightAnchor.constraint(equalToConstant: 60)
        ])
        
    }
}
