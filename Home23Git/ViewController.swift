// MARK: - Фоляк Александр
import UIKit

final class ViewController: UIViewController {
    
    // MARK: Private properties
    private let showAlertWithButton = UIButton()
    
    // MARK: - Lyfe cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButton()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        styleButton()
    }
    
    // MARK: - API
    private func configureButton() {
        view.addSubview(showAlertWithButton)
        
        showAlertWithButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showAlertWithButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            showAlertWithButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showAlertWithButton.widthAnchor.constraint(equalToConstant: 250)
        ])
        showAlertWithButton.addTarget(self, action: #selector(clickToButton), for: .touchUpInside)
    }
    @objc private func clickToButton() {
        let alertController = UIAlertController(title: "Приветствую!", message: "Вам необходимо заполнить данные ниже 👇", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
    private func styleButton() {
        showAlertWithButton.setTitle("Что здесь происходит?", for: .normal)
        showAlertWithButton.setTitleColor(.white, for: .normal)
        showAlertWithButton.backgroundColor = .darkGray
        showAlertWithButton.layer.cornerRadius = showAlertWithButton.frame.height / 2
    }
}
