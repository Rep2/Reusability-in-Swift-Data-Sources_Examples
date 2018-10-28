import SnapKit
import UIKit
import TableViewCellSimpleDequeue

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

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewController()
    }

    func setupViewController() {
        tableView.register(cell: MovieTableViewCell.self, reusableCellSource: .class)

        view.addSubview(tableView)

        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension BaseDataSourceViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as MovieTableViewCell

        cell.setupCell()

        let movie = stevenSeagalMovies[indexPath.row]

        cell.nameLabel.text = movie.name
        cell.releaseYearLabel.text = String(movie.releaseYear)

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stevenSeagalMovies.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
