
import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
//MARK: Outlets
    @IBOutlet weak var myCollectionView: UICollectionView!
    
//MARK: Arrays
    let snacksNames: [String] = ["bhel", "kachori", "pakoda", "panipuri", "samosa", "vadapav"]
    let imagesArray: [String] = ["bhel", "kachori", "pakoda", "panipuri", "samosa", "vadapav"]
    
//MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return snacksNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SnacksCollectionViewCell
        cell.myImage.image = UIImage(named: imagesArray[indexPath.row])
        cell.myLabel.text = snacksNames[indexPath.row]
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
//MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = UIScreen.main.bounds
        let widthForItem = size.width - 32
        let heightForItem = widthForItem
        
        return CGSize(width: widthForItem, height: heightForItem)
        
    }
        
        
    

}

