//
//  AuthManger.swift
//  Spotify
//
//  Created by BlueBerry on 2021/09/21.
//

//Client ID     30c8733f35bb4271ab9ccec7a87db19b
//Client Secret 962eef986e1a4d09af0bd464d35d95af

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let Clientid = "30c8733f35bb4271ab9ccec7a87db19b"
        static let ClientSecret = "962eef986e1a4d09af0bd464d35d95af"
        static let tokenAPIURL = "https://accounts.spotify.com/api/token"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://baaaaaby.github.io/infodelivery/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.Clientid)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ) {
        //Get Token
        guard let url = URL(string: Constants.tokenAPIURL) else {
            return
        }
        
        var components = URLComponents()
        components.queryItems = [
            URLQueryItem(name: "grant_type",
                         value: "authorization_code"),
            URLQueryItem(name: "code",
                         value: code),
            URLQueryItem(name: "redirect_uri",
                         value: "https://baaaaaby.github.io/infodelivery/"),
        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        
        request.httpBody = components.query?.data(using: .utf8)
        
        let basicToken = Constants.Clientid+":"+Constants.ClientSecret
        let data = basicToken.data(using: .utf8)
        guard let base64String = data?.base64EncodedString() else {
            print("Failure to get base64")
            completion(false)
            return
        }
    
        
        
        request.setValue("Basic \(base64String)", forHTTPHeaderField: "Authorizaton")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(false)
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(
                    with: data,
                    options: .allowFragments
                )
                
                print("SUCCESS: \(json)")
                completion(true)
            }
            catch {
                print(error.localizedDescription)
                completion(false)
            }
        }
        
        task.resume()
    }
    
    public func refreshAccessToken() {
        
    }
    
    public func casheToken() {
        
    }
}
