//
//  RegisterViewController.swift
//  TestProject
//
//  Created by Sagar on 12/09/21.
//

import Foundation
import UIKit
//import Solana
import TorusSwiftDirectSDK


class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var usersList: UITableView!
//    let network = NetworkingRouter(endpoint: .devnetSolana);
//
//
//    var test:NetworkingRouter;
//    var solana=Solana(router: NetworkingRouter(endpoint: .devnetSolana), accountStorage: <#SolanaAccountStorage#>);
    var cars = [String]();
    
    var newCar: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        cars = ["BMW","Audi","Volkswagen"];
//       // test=NetworkingRouter(endpoint: .devnetSolana);//
        
        
        //logicease-spltest-cards   //verifername and aggrgateverifier name
        //client id is same as Auth0
        //spl-cards
//
        let sub = SubVerifierDetails(loginType: .web, // default .web
                                    loginProvider: .jwt,
                                    clientId: "0Tv56Oe9fUQ86i2SUj7jND30tTGq0MLb",
                                    verifierName: "logicease-demo",
                                    redirectURL: ""
                                    
                                    )
        let tdsdk = TorusSwiftDirectSDK(aggregateVerifierType: .singleLogin, aggregateVerifierName: "logicease-demo", subVerifierDetails: [sub],network: .ROPSTEN)
        
        
        
        tdsdk.getTorusKey(verifier: "logicease-demo", verifierId: "priyanka9243@gmail.com", idToken: "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImwxSzFqM21meVVTZjRTOVI5U0JvNCJ9.eyJuaWNrbmFtZSI6InByaXlhbmthOTI0MyIsIm5hbWUiOiJwcml5YW5rYTkyNDNAZ21haWwuY29tIiwicGljdHVyZSI6Imh0dHBzOi8vcy5ncmF2YXRhci5jb20vYXZhdGFyLzAwOTNhNmFhOTVhOWI2NzQwYWFhZjNlN2YwYjJhNzVkP3M9NDgwJnI9cGcmZD1odHRwcyUzQSUyRiUyRmNkbi5hdXRoMC5jb20lMkZhdmF0YXJzJTJGcHIucG5nIiwidXBkYXRlZF9hdCI6IjIwMjEtMTAtMDRUMTE6MjU6MzguODk4WiIsImVtYWlsIjoicHJpeWFua2E5MjQzQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJpc3MiOiJodHRwczovL2Rldi1ubHF6NnNiZC51cy5hdXRoMC5jb20vIiwic3ViIjoiZW1haWx8NjE0ZGI1NjM3OGQ1N2E3ZGIyYjEzZWFiIiwiYXVkIjoiMFR2NTZPZTlmVVE4NmkyU1VqN2pORDMwdFRHcTBNTGIiLCJpYXQiOjE2MzMzNDY3MzgsImV4cCI6MTYzMzM4MjczOH0.pBGlYkW7rGtfnKLUVZe5PL-SO9GSuTdk7e7UxMTQ-DYwq6GGrZLf9Y-54N8GLpqlDU3JfRiGMsa1XcWZXKDIN_zcJrodruo5NcORpWGJuOemD1DMCVXcUWjdnteX2jDNrmdV7BMBHxHWk-8UMmq5VQlWS0CM7pQ7_Vt_9nSP4efopMN5GPyX-Ouya4Tf4WsxiZr6EWrQrRSNfbfi4l6Qh5toFR8fVdKWVFdOqZVLYw46JbBoaeb4wzifW1NN1MfKQHbkFX3ZIKp5NsJVv7Yfa8_8KRde5CC8HMDOsRZ3pliEbLTCq_5Q_YRJY-dNoq7dkSwD-8W7XT7DfK65Ts5QCA").done{ data in
                        print("data from Torus ", data)
                    }.catch{ err in
                        print("error from here", err);
                    }
        
        
        
    }
    
    
}
