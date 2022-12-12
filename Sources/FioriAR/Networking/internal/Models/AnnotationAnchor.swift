//
// Generated by SwagGen with template `SwiftSAPURLSession`
// https://github.com/MarcoEidinger/SwagGen/tree/sap/Swift-SAPURLSession
//

import Foundation

internal class AnnotationAnchor: APIModel {

    internal var card: Card

    internal var id: String

    internal var marker: Marker

    internal var sceneId: Int

    internal var relPositionx: Double?

    internal var relPositiony: Double?

    internal var relPositionz: Double?

    internal init(card: Card, id: String, marker: Marker, sceneId: Int, relPositionx: Double? = nil, relPositiony: Double? = nil, relPositionz: Double? = nil) {
        self.card = card
        self.id = id
        self.marker = marker
        self.sceneId = sceneId
        self.relPositionx = relPositionx
        self.relPositiony = relPositiony
        self.relPositionz = relPositionz
    }

    internal required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        card = try container.decode("card")
        id = try container.decode("id")
        marker = try container.decode("marker")
        sceneId = try container.decode("sceneId")
        relPositionx = try container.decodeIfPresent("relPosition-x")
        relPositiony = try container.decodeIfPresent("relPosition-y")
        relPositionz = try container.decodeIfPresent("relPosition-z")
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(card, forKey: "card")
        try container.encode(id, forKey: "id")
        try container.encode(marker, forKey: "marker")
        try container.encode(sceneId, forKey: "sceneId")
        try container.encodeIfPresent(relPositionx, forKey: "relPosition-x")
        try container.encodeIfPresent(relPositiony, forKey: "relPosition-y")
        try container.encodeIfPresent(relPositionz, forKey: "relPosition-z")
    }

    internal func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AnnotationAnchor else { return false }
      guard self.card == object.card else { return false }
      guard self.id == object.id else { return false }
      guard self.marker == object.marker else { return false }
      guard self.sceneId == object.sceneId else { return false }
      guard self.relPositionx == object.relPositionx else { return false }
      guard self.relPositiony == object.relPositiony else { return false }
      guard self.relPositionz == object.relPositionz else { return false }
      return true
    }

    internal static func == (lhs: AnnotationAnchor, rhs: AnnotationAnchor) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
