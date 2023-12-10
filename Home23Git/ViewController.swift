// MARK: - Фоляк Александр
import UIKit

final class ViewController: UIViewController {
    
    // MARK: Private properties
    private let showAlertWithButton     = UIButton()
    private let mainView                = UIView()
    private let stackView               = UIStackView()
    private let nameTextField           = UITextField()
    private let surnameTextField        = UITextField()
    private let ageTextField            = UITextField()
    private let sendButton              = UIButton()
    
    // MARK: - Lyfe cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButton()
        configurateMainView()
        configureStackView()
        configureTextFields()
        configureSendButton()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        styleButton()
        styleSendButton()
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
    
    private func configurateMainView()  {
        view.addSubview(mainView)
        mainView.backgroundColor = .clear
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
        ])
    }
    
    private func configureStackView() {
        mainView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            stackView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.5),
            stackView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
        ])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(surnameTextField)
        stackView.addArrangedSubview(ageTextField)
    }
    
    private func configureTextFields() {
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        surnameTextField.translatesAutoresizingMaskIntoConstraints = false
        ageTextField.translatesAutoresizingMaskIntoConstraints = false
        
        nameTextField.borderStyle = .roundedRect
        surnameTextField.borderStyle = .roundedRect
        ageTextField.borderStyle = .roundedRect
        
        nameTextField.placeholder = "Your name"
        surnameTextField.placeholder = "Your surname"
        ageTextField.placeholder = "Your age"
    }
    
    private func configureSendButton() {
        mainView.addSubview(sendButton)
        
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sendButton.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20),
            sendButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            sendButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func styleSendButton() {
        sendButton.setTitle("Отправить данные", for: .normal)
        sendButton.setTitleColor(.white, for: .normal)
        sendButton.backgroundColor = .systemBlue
        sendButton.layer.cornerRadius = showAlertWithButton.frame.height / 2
    }
}
