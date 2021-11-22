//
//  Urunler.swift
//  DetayliTableViewKullanimi
//
//  Created by Ertuğrul Kulaber on 3.11.2021.
//

import Foundation

class Urunler {
    var urun_id:Int?
    var urun_ad:String?
    var urun_resim_ad:String?
    var urun_fiyat:Double?
    init () {
        
    }
    init(urun_id:Int,urun_ad:String,urun_resim_ad:String,urun_fiyat:Double){
        self.urun_ad = urun_ad
        self.urun_id = urun_id
        self.urun_fiyat = urun_fiyat
        self.urun_resim_ad = urun_resim_ad
    }
}
