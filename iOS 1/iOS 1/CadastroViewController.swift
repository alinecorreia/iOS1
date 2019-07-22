//
//  CadastroViewController.swift
//  iOS 1
//
//  Created by Diogo Assis Ferreira on 22/07/19.
//  Copyright © 2019 Diogo Assis Ferreira. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {
    
    @IBOutlet weak var Nomefield: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var SenhaField: UITextField!
    @IBOutlet weak var AlertField: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Trata os dados informados antes de realizar o login
    @IBAction func CadasrarHandler(_ sender: Any) {
        // Garante que o nome foi informado e não é uma string vazia.
        let nomeInformado = verificaOutlet(outlet: Nomefield, nome: "Nome")
        
        // Garante que o email foi informado e não é uma string vazia.
        let emailInformado = verificaOutlet(outlet: EmailField, nome: "E-mail")
        
        // Garante que a senha foi informada e não é uma string vazia.
        let senhaInformada = verificaOutlet(outlet: SenhaField, nome: "Senha")
        
        if nomeInformado != nil, emailInformado != nil, senhaInformada != nil {
            if AlertField.isOn {
                print("Usuário deseja receber E-mails")
            } else {
                print("Usuário NÃO deseja receber E-mails")
            }
        }
    }
    
    // Verifica se o outlet informado possui valores válidos
    private func verificaOutlet (outlet: UITextField, nome: String) -> String? {
        // Verifica se o valor é nil
        if let outletInformado = outlet.text {
            // Verifica se é uma string vazia
            if outletInformado.isEmpty {
                print("Usuário não informou um valor válido de "+nome)
                return nil
            } else {
                // O valor válido é retornado
                print(nome+": "+outletInformado)
                return outletInformado
            }
        } else {
            print("Usuário não informou o "+nome)
            return nil
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
