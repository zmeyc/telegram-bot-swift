// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a sticker.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#sticker>

public struct Sticker: JsonConvertible, InternalJsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: Any {
        get {
            return internalJson.object
        }
        set {
            internalJson = JSON(newValue)
        }
    }
    internal var internalJson: JSON

    /// Unique identifier for this file
    public var fileId: String {
        get { return internalJson["file_id"].stringValue }
        set { internalJson["file_id"].stringValue = newValue }
    }

    /// Sticker width
    public var width: Int {
        get { return internalJson["width"].intValue }
        set { internalJson["width"].intValue = newValue }
    }

    /// Sticker height
    public var height: Int {
        get { return internalJson["height"].intValue }
        set { internalJson["height"].intValue = newValue }
    }

    /// Optional. Sticker thumbnail in the .webp or .jpg format
    public var thumb: PhotoSize? {
        get {
            let value = internalJson["thumb"]
            return value.isNullOrUnknown ? nil : PhotoSize(internalJson: value)
        }
        set {
            internalJson["thumb"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. Emoji associated with the sticker
    public var emoji: String? {
        get { return internalJson["emoji"].string }
        set { internalJson["emoji"].string = newValue }
    }

    /// Optional. Name of the sticker set to which the sticker belongs
    public var setName: String? {
        get { return internalJson["set_name"].string }
        set { internalJson["set_name"].string = newValue }
    }

    /// Optional. For mask stickers, the position where the mask should be placed
    public var maskPosition: MaskPosition? {
        get {
            let value = internalJson["mask_position"]
            return value.isNullOrUnknown ? nil : MaskPosition(internalJson: value)
        }
        set {
            internalJson["mask_position"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. File size
    public var fileSize: Int? {
        get { return internalJson["file_size"].int }
        set { internalJson["file_size"].int = newValue }
    }

    internal init(internalJson: JSON = [:]) {
        self.internalJson = internalJson
    }
    public init(json: Any) {
        self.internalJson = JSON(json)
    }
    public init(data: Data) {
        self.internalJson = JSON(data: data)
    }
}