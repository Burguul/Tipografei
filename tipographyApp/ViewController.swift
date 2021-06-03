//
//  ViewController.swift
//  tipographyApp
//
//  Created by Marcus Vinicius Silva de Sousa on 02/06/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let subject = [
    
        "Tipografia: O que é?",
        "O Tipo",
        "Medidas Relativas",
        "Anatomia do Tipo",
        "Legibilidade dos Tipos",
        "Classificação",
        "Famílias Tipográficas",
        "Cor Tipográficas",
        "Cor Tipográfica",
        "Geração da Fonte",
        "Espacejamento",
        "Personalidade do Tipo"
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Foi")
    }
    
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subject.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = subject[indexPath.row]
        
        return cell
    
    }
    
}
