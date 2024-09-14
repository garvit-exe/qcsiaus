//
//  ViewController.swift
//  qrCodeScanner
//
//  Created by Garvit Budhiraja on 14/09/2024.
//

import UIKit
import VisionKit

class ViewController: UIViewController {
    
    var scannerAvailable: Bool {
        DataScannerViewController.isSupported && DataScannerViewController.isAvailable
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startScannerPressed(_ sender: Any) {
        guard scannerAvailable == true else {
            print("Error! Scanner is not available for usage. Please check your settings.")
            return
        }
        
        let dataScanner = DataScannerViewController(recognizedDataTypes: [.text(), .barcode()], isHighlightingEnabled: true)
        dataScanner.delegate = self
        present(dataScanner, animated: true) {
            try? dataScanner.startScanning()
        }
    }


}

extension ViewController: DataScannerViewControllerDelegate {
    func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
        switch item {
        case .text(let text):
            print("Text: \(text.transcript)")
            UIPasteboard.general.string = text.transcript
        case .barcode(let code):
            guard let urlString = code.payloadStringValue else {return}
            guard let url = URL(string: urlString) else {return}
            UIApplication.shared.open(url)
        default:
            print("Unexpected Item!!")
        }
    }
}
