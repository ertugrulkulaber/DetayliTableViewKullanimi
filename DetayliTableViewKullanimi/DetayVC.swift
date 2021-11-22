//
//  DetayVC.swift
//  DetayliTableViewKullanimi
//
//  Created by Ertuğrul Kulaber on 6.11.2021.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var urunResim: UIImageView!
    @IBOutlet weak var urunFiyat: UILabel!
    
    var urun:Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // gelen ürün adını titleye yazdırır
        if let u = urun {
            self.navigationItem.title = u.urun_ad
            urunResim.image = UIImage(named: u.urun_resim_ad!)
            urunFiyat.text = "\(u.urun_fiyat!)"
        }
    }
    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let u = urun {
            print(" Detay Sayfa : \(u.urun_ad!) sepete eklendi ")
        }
    }
}
