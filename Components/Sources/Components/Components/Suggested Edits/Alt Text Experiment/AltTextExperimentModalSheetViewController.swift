import UIKit

final public class AltTextExperimentModalSheetViewController: WKCanvasViewController {

    weak var viewModel: AltTextExperimentModalSheetViewModel?

    public init(viewModel: AltTextExperimentModalSheetViewModel?) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel else { return }
        let view = AltTextExperimentModalSheetView(frame: UIScreen.main.bounds, viewModel: viewModel)
        addComponent(view, pinToEdges: true)
    }

}

