import UIKit
import SnapKit

class MealTableViewCell: UITableViewCell {
    lazy var nameLabel = UILabel(frame: .zero)

    lazy var priceLabel: UILabel = {
        let label = UILabel(frame: .zero)

        label.font = .systemFont(ofSize: 14)

        return label
    }()

    func setupView() {
        addSubview(nameLabel)
        addSubview(priceLabel)


    }
}
