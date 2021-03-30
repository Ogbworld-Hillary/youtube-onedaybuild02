//
//  Constants.swift
//  youtube-onedaybuild02
//
//  Created by user on 30/03/2021.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyDakqgsscJIiUJv_S03otoGlD-5mPTcAp8"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
    
}
