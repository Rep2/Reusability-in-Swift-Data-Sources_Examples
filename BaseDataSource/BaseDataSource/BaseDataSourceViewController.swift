import SnapKit
import UIKit

class BaseDataSourceViewController: UIViewController {
    let stevenSeagalMovies = [
        Movie(name: "Hard to Kill", releaseYear: 1990),
        Movie(name: "Under Siege", releaseYear: 1992),
        Movie(name: "Black Dawn", releaseYear: 2005),
        Movie(name: "Kill Switch", releaseYear: 2008),
        Movie(name: "Code of Honor", releaseYear: 2016)
    ]

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)

        tableView.dataSource = self

        return tableView
    }()

    func setupViewController() {
        view.addSubview(tableView)

        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension BaseDataSourceViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    }
}
