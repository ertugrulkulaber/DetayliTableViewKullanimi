//
//  UrunTableViewCell.swift
//  DetayliTableViewKullanimi
//
//  Created by Ertuğrul Kulaber on 3.11.2021.
//

import UIKit

//1.adım protocol oluştur.
protocol HucreProtocol{
    func buttonTiklandi(indexPath:IndexPath)
}

class UrunTableViewCell: UITableViewCell {

    @IBOutlet weak var hucreArkaPlan: UIView!
    @IBOutlet weak var urunResimİmageView: UIImageView!
    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFiyatLabel: UILabel!
    
    // 2.adım tetikleme ve yetkialmak için değişken oluştur.protocol
    var hucreProtocol:HucreProtocol?
    //3.adım indexPath verisini view Controllerdan almak için değişken oluştur.
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

    @IBAction func sepeteEkleButton(_ sender: Any) {
        // 4. adım metodu tetikle Protocol
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
    }
}
