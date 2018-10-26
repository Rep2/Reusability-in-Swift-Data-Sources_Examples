import UIKit
import SnapKit

class MovieTableViewCell: UITableViewCell {
    lazy var nameLabel = UILabel(frame: .zero)

    lazy var releaseYearLabel: UILabel = {
        let label = UILabel(frame: .zero)

        label.font = .systemFont(ofSize: 14)

        return label
    }()

    func setupView() {
        addSubview(nameLabel)
        addSubview(releaseYearLabel)

        nameLabel.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview().inset(UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16))
        }

        releaseYearLabel.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16))
            make.top.equalTo(nameLabel.snp.bottom).inset(4)
        }
    }
}
