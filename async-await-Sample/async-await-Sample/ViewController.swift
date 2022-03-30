//
//  ViewController.swift
//  async-await-Sample
//
//  Created by 木元健太郎 on 2022/03/27.
//

import UIKit

final class ViewController: UIViewController {
    
  
    private let loader = PersonLoader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func tap(_ sender: Any) {
        Task.detached { [weak self]  in
            do {
                guard let response =  try await self?.loader.asyncLoad() else {
                    return
                }
                print(response.map{$0.gender})
                print(response.map{$0.name})
                print(response.map{$0.location})
            } catch {
                print(error)
            }
        }
    }
 
}
