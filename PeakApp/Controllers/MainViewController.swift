import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Views
    private var testView: UIView {
        let view = UIView()
        view.backgroundColor = .blue
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        setupViews()
//        setConstraints()
    }
    
    // MARK: - Private Methods
    private func setupViews() {
        view.addSubview(testView)
    }
}

// MARK: - SetConstraints
extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            testView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            testView.topAnchor.constraint(equalTo: view.topAnchor),
            testView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            testView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
