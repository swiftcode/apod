//
//  Picture.swift
//  apod
//
//  Created by mpc on 2/6/21.
//

import Foundation

struct Picture {
    typealias dict = [String : Any]

    let copyright: String
    let date: Date
    let explanation: String
    let hdurl: String
    let mediaType: String
    let version: String
    let title: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case copyright = "copyright"
        case date = "date"
        case explanation = "explanation"
        case hdurl = "hdurl"
        case mediaType = "media_type"
        case version = "version"
        case title = "title"
        case url = "url"
    }

    init() {
        self.copyright = ""
        self.date = Date()
        self.explanation = ""
        self.hdurl = ""
        self.mediaType = ""
        self.version = ""
        self.title = ""
        self.url = ""
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        copyright = try container.decode(String?.self, forKey: .copyright) ?? ""
        date = try container.decode(Date?.self, forKey: .date) ?? Date()
        explanation = try container.decode(String?.self, forKey: .explanation) ?? ""
        hdurl = try container.decode(String?.self, forKey: .hdurl) ?? ""
        mediaType = try container.decode(String?.self, forKey: .mediaType) ?? ""
        version = try container.decode(String?.self, forKey: .version) ?? ""
        title = try container.decode(String?.self, forKey: .title) ?? ""
        url = try container.decode(String?.self, forKey: .url) ?? ""
    }
}

extension Picture {
    init?(json: dict) {
        guard let copyright = json["copyright"] as? String,
              let date = json["date"] as? Date,
              let explanation = json["explanation"] as? String,
              let hdurl = json["hdurl"] as? String,
              let mediaType = json["mediaType"] as? String,
              let version = json["version"] as? String,
              let title = json["title"] as? String,
              let url = json["url"] as? String
        else {
            return nil
        }

        self.copyright = copyright
        self.date = date
        self.explanation = explanation
        self.hdurl = hdurl
        self.mediaType = mediaType
        self.version = version
        self.title = title
        self.url = url
    }
}
