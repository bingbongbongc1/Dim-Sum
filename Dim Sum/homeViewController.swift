//
//  homeViewController.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 9/28/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit
import AVFoundation

var myAudioPlayer = AVAudioPlayer()

struct dimSumData {
    var dimSumImage: UIImage!
    var chineseName: String!
    var englishName: String!
    var description: String!
    var ingredients: [UIImage]!
    
    init (dimSumImage: UIImage, chineseName: String, englishName: String, description: String, ingredients: [UIImage]) {
        self.dimSumImage = dimSumImage
        self.chineseName = chineseName
        self.englishName = englishName
        self.description = description
        self.ingredients = ingredients
    }
    
}

var homepage = [
    dimSumData(dimSumImage: UIImage(named:"01_NarcissusHomepage.png")!, chineseName:"水仙", englishName: "Narcissus", description: "Narcissus tea is usually from the Wuyi Mountains in Fujian Province, China. It has a heavy honey fragrance.", ingredients:[UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData(dimSumImage: UIImage(named:"02_ChrysanthemumHomepage.png")!, chineseName: "菊花", englishName: "Chrysanthemum", description: "Chrysanthemum tea does not actually contain any tea leaves. Instead it is a flower-based herbal tea made from chrysanthemum flowers. Chrysanthemum flowers are often paired with Pu'er tea, and this is often referred to as 'guk pou' (菊普).", ingredients:[UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"03_PuerHomepage.png")!, chineseName: "普洱", englishName: "Pu'er", description: "Pu'er tea has undergone years of fermentation, giving them a unique earthy flavor. This variety of tea is usually compressed into different shapes like bricks, discs and bowls.", ingredients: [UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"04_OolongHomepage.png")!, chineseName: "烏龍", englishName: "Oolong", description: "Oolong tea leaves are partially oxidized, imparting to them the characteristics of both green and black teas. Its taste is more similar to green tea than black tea, but has a less 'grassy' flavor than green tea.", ingredients: [UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"05_BBQPorkBunHomepage.png")!, chineseName: "叉燒包", englishName: "BBQ pork bun", description: "Steamed fluffy white bun with Cantonese barbecued pork filling.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"06_ShumaiHomepage.png")!, chineseName: "燒賣", englishName: "Shao mai", description: "Small steamed dumplings with either pork, prawns or both inside a thin wheat flour wrapper. Usually topped off with fish roe and shiitake mushroom.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"07_HarGowHomepage.png")!, chineseName: "蝦餃", englishName: "Har gow", description: "Steamed dumpling with whole or chopped-up shrimp filling and thin wheat starch skin.", ingredients:[UIImage(named:"007_WheatFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"08_BeefBallHomepage.png")!, chineseName: "牛肉球", englishName: "Steamed beef ball", description: "Finely ground beef is shaped into balls and then steamed with preserved orange peel and served on top of a thin bean-curd skin.", ingredients: [UIImage(named:"002_BeefFilter.png")!,UIImage(named:"009_SoyBeanFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"09_BeanCurdRollSteamedHomepage.png")!, chineseName: "鮮竹捲", englishName: "Steamed bean curd roll", description: "Steamed bean curd roll with bamboo shoots and mushroom filling. The roll is very soft and tender. ", ingredients: [UIImage(named:"009_SoyBeanFilter.png")!,UIImage(named:"005_MushroomFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"10_ChickenFeetHomepage.png")!, chineseName: "鳳爪", englishName: "Phoenix claw", description: "Chicken feet deep fried, boiled, marinated in a black bean sauce and then steamed. It is light fluffy from the frying, moist and tender from the steaming, has a dark red color.", ingredients: [UIImage(named:"001_ChickenFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"11_CiuZaoFanGwoHomepage.png")!, chineseName: "潮州粉果", englishName: "Chaozhou dumpling", description: "A dumpling originated from Chaozhou. It contains peanuts, garlic, chives, pork, dried shrimp, and mushrooms in a thick dumpling wrapper made from glutinous rice flour and serves with chili oil.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"005_MushroomFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,]),
    dimSumData (dimSumImage: UIImage(named:"12_CongeeHomepage.png")!, chineseName: "皮蛋瘦肉粥", englishName: "Preserved egg and pork congee", description: "Thick, sticky rice porridge served with preserved egg and pork.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"006_EggFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"13_TurnipCakeHomepage.png")!, chineseName: "蘿蔔糕", englishName: "Turnip cake", description: "Mashed daikon and rice flour mixed with bits of dried shrimp and pork sausage that are steamed into a cake and then cut into slices and pan-fried.", ingredients: [UIImage(named:"011_DaikonFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"14_SpareRibsHomepage.png")!, chineseName: "排骨 ", englishName: "Steamed spare ribs", description: "Steamed spare ribs with fermented black beans and sometimes sliced chilli.", ingredients: [UIImage(named:"003_PorkFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"15_RiceRollBBQPorkHomepage.png")!, chineseName: "叉燒腸粉", englishName: "Rice noodle roll with BBQ pork", description: "Tightly wrapped steamed rice noodle roll with Cantonese barbecued pork filling.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"16_RiceRollBeefHomepage.png")!, chineseName: "牛肉腸粉", englishName: "Rice noodle roll with beef", description: "Tightly wrapped steamed rice noodle roll with ground beef filling.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"002_BeefFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"17_RiceRollPlainHomepage.png")!, chineseName: "豬腸粉", englishName: "Rice noodle roll with sesame sauce", description: "Plain steamed rice noodle roll with soy sauce, black sweet sauce, sesame sauce, sometimes chili oil, and topped with sesame seeds.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"017_SesameFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"18_RiceRollShrimpHomepage.png")!, chineseName: "鮮蝦腸粉", englishName: "Rice noodle roll with shrimp", description: "Tightly wrapped steamed rice noodle roll with lightly marinated whole shrimp filling.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"19_RiceRollDoughHomepage.png")!, chineseName: "炸兩", englishName: "Rice noodle roll with fried dough", description: "Tightly wrapped steamed rice noodle roll around fried dough. Often sprinkled with sesame and  soy sauce.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"007_WheatFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"20_BeanCurdRollFriedHomepage.png")!, chineseName: "腐皮捲", englishName: "Fried bean curd roll", description: "Fried bean curd roll with shrimp, leek, chicken, bamboo shoot, small carrots, tofu, scallions, sesame oil, and bean sprouts filling.", ingredients: [UIImage(named:"009_SoyBeanFilter.png")!,UIImage(named:"005_MushroomFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"001_ChickenFilter.png")!, UIImage(named:"010_VeggieFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"21_FriedTaroHomepage.png")!, chineseName: "芋角", englishName: "Fried taro dumpling", description: "Mashed taro, stuffed with diced shiitake mushrooms, shrimp and pork, deep-fried in crispy batter.", ingredients: [UIImage(named:"012_TaroFilter.png")!,UIImage(named:"005_MushroomFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"22_LaoMaiGaiHomepage.png")!, chineseName: "糯米雞", englishName: "Lo mai gai", description: "A type of rice dumplings where sticky rice is wrapped in a lotus leaf into a rectangular shape. It contains egg yolk, dried scallop, mushroom, crispy water chestnut, and meat (usually pork and chicken). The dumpling is steamed with the lotus leaf so its flavor can be infused. Remove the lotus leaf before eating.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"005_MushroomFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"001_ChickenFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"23_SaltWaterFriedDumplingHomepage.png")!, chineseName: "鹹水角", englishName: "Salty fried dumpling", description: "Deep fried oval-shaped dumpling made with rice-flour and filled with pork and chopped vegetables. The rice-flour surrounding is sweet and sticky, while the inside is slightly salty and savory.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"010_VeggieFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"24_SpringRollHomepage.png")!, chineseName: "春捲", englishName: "Spring roll", description: "A thin flour skin deep fried roll consists of various types of vegetables – such as sliced carrot, cabbage, mushroom and wood ear fungus – and sometimes meat.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"010_VeggieFilter.png")!,UIImage(named:"005_MushroomFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"35_StickyRiceHomepage.png")!, chineseName: "生炒糯米飯", englishName: "Fried sticky rice", description: "Fried sticky rice with peanuts, mushroom, Chinese sausage, dried shrimp, dried scallop, and scallion.", ingredients: [UIImage(named:"008_RiceFilter.png")!,UIImage(named:"005_MushroomFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"004_ShrimpFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"36_PotStickerHomepage.png")!, chineseName: "鍋貼", englishName: "Pot sticker", description: "Steamed and then pan-fried, this Northern Chinese style dumpling is usually made with meat and cabbage.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"003_PorkFilter.png")!,UIImage(named:"010_VeggieFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"25_CustardBunHomepage.png")!, chineseName: "奶皇包", englishName: "Egg custard bun", description: "Steamed bun with milk custard filling.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"006_EggFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"26_EggTartHomepage.png")!, chineseName: "蛋撻", englishName: "Egg custard tart", description: "Baked tart with either a flaky puff pastry dough or a cookie dough with an egg custard filling.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"006_EggFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"27_LayeredCakeHomepage.png")!, chineseName: "千層糕", englishName: "Thousand-layer cake", description: "Made up of many layers of steamed sweet egg dough.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"006_EggFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"28_LotusBunHomepage.png")!, chineseName: "蓮蓉包", englishName: "Lotus bun", description: "Bun prepared by steaming a yeast-leavened dough that contains lotus seed paste.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"015_LotusSeedFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"29_MaLaGaoHomepage.png")!, chineseName: "馬拉糕 ", englishName: "Malay steamed sponge cake", description: "A very soft steamed sponge cake flavored with molasses.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"30_MangoPuddingHomepage.png")!, chineseName: "芒果布甸", englishName: "Mango pudding", description: "A sweet, rich mango-flavoured pudding usually with large chunks of fresh mango; often served with a topping of evaporated milk.", ingredients: [UIImage(named:"014_MangoFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"31_SesameBallHomepage.png")!, chineseName: "煎堆", englishName: "Sesame ball", description: "A chewy dough filled with red bean or lotus seed paste, rolled in sesame seeds, and deep fried.", ingredients: [UIImage(named:"007_WheatFilter.png")!,UIImage(named:"016_RedBeanFilter.png")!,UIImage(named:"015_LotusSeedFilter.png")!,UIImage(named:"017_SesameFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"32_SesameRollHomepage.png")!, chineseName: "芝麻捲", englishName: "Sesame roll", description: "Cold dessert made of a thin layer of black sesame paste which the layer is individually rolled up into a roll.", ingredients: [UIImage(named:"017_SesameFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"33_TofuPuddingHomepage.png")!, chineseName: "豆腐花", englishName: "Tofu pudding", description: "A dessert consisting of silky tofu served with a sweet ginger or jasmine flavored syrup.", ingredients: [UIImage(named:"009_SoyBeanFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!]),
    dimSumData (dimSumImage: UIImage(named:"34_WaterchestnutCakeHomepage.png")!, chineseName: "馬蹄糕", englishName: "Water chestnut cake", description: "Cake made of crispy water chestnut. It is mostly see-through and clear. Some restaurants also serve a variation of water chestnut cake made with bamboo juice.", ingredients: [UIImage(named:"013_WaterChestnutFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!,UIImage(named:"018_EmptyFilter.png")!])
    
]


class homeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var dimSumCollectionView: UICollectionView!
    
    var selectedDimSum: dimSumData!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dimSumCollectionView.dataSource = self
        dimSumCollectionView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homepage.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = dimSumCollectionView.dequeueReusableCellWithReuseIdentifier("homepageCell", forIndexPath: indexPath) as! dimSumCollectionViewCell
        
        cell.dimSumImage.image = homepage[indexPath.row].dimSumImage
        
        cell.chineseLabel.text = homepage[indexPath.row].chineseName
        
        cell.englishLabel.text = homepage[indexPath.row].englishName
 
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // for that struct/or/data that was selected it has an indexpath.row that you used in the function above.
        
        print(homepage[indexPath.row])
        
        selectedDimSum = homepage[indexPath.row]
        
        performSegueWithIdentifier("detailSegue", sender: true)
        
    }
    
    @IBAction func didPressMenuBtn(sender: UIButton) {
        
        let myPath = NSBundle.mainBundle().pathForResource("tap-professional.aif", ofType: nil)
        
        if let myPath = myPath {
            
            let url = NSURL(fileURLWithPath: myPath)
            
            do {
            try myAudioPlayer = AVAudioPlayer(contentsOfURL: url)
                myAudioPlayer.play()
            }
            catch {
            print("Can't play sound!")
            }
    }
        else {
            print("AHH!")
            
        }
        performSegueWithIdentifier("listSegue", sender: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "listSegue"{
        }
        else {
            let moreDetailViewController = segue.destinationViewController as! detailViewController
            
            moreDetailViewController.importedDimSum = selectedDimSum
            
        }
        
        
//        moreDetailViewController.dimSumImageBig.image = selectedDimSum.dimSumImage
        
//        moreDetailViewController.chineseLabel.text = selectedDimSum.chineseName
//        
//        moreDetailViewController.englishLabel.text = selectedDimSum.englishName
//        
//        moreDetailViewController.details.text = selectedDimSum.description
        
//        moreDetailViewController.ingredient1.image = selectedDimSum.ingredients[0]
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
