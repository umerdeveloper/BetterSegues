import UIKit

protocol SegueHandler {
    associatedtype SegueIdentifier: RawRepresentable
    
}

extension SegueHandler where Self: UIViewController, SegueIdentifier.RawValue == String {
    func segueIdentifier(for segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier) else {
            fatalError("Unknown Segue \(segue)")
        }
        return segueIdentifier
    }
    
}
