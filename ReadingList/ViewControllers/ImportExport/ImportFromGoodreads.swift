import Foundation
import SafariServices
import UIKit

class ImportFromGoodreads: UIViewController {

    let goodreadsHelpPage = URL(string: "https://help.goodreads.com/s/article/How-do-I-import-or-export-my-books-1553870934590")!

    @IBAction private func doneTapped(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }

    @IBAction private func moreInfoTapped(_ sender: Any) {
        let safariVC = SFSafariViewController(url: goodreadsHelpPage)
        // iOS 13 and up has its own theming, no need to set the preferred tint colour
        if #available(iOS 13.0, *) { } else {
            if GeneralSettings.theme.isDark {
                safariVC.preferredBarTintColor = .black
            }
        }
        present(safariVC, animated: true, completion: nil)
    }
}