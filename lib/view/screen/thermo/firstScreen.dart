import 'package:flutter/material.dart';
import 'package:yummly/const/screenConst.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentPage = 0;

  void _onPageViewChange(int page) {
    setState(() {
      this._currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _controller = PageController(initialPage: 0);
    ScreenConst(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              (this._currentPage != 5) ? Icons.help : Icons.info_outline,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // pageFirstView(),
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: this._onPageViewChange,
              scrollDirection: Axis.horizontal,
              children: [
                pageCommonView(
                  title: "overview",
                  subTitle: "what's in the box?",
                  image: "",
                ),
                pageCommonView(
                    title: "Dock features",
                    subTitle: "get to konow your dock",
                    image: ""),
                pageCommonView(
                    title: "how it works",
                    subTitle: "Leave-in thermometer continuously monitors meat",
                    extraTitle:
                        "Dock sends real-time temperature updates and alerts from thermometer to your phone.",
                    image: ""),
                pageCommonView(
                    title: "staying connected",
                    subTitle:
                        "Keep dock within 5 feet of thermometer when cooking",
                    extraTitle:
                        "Get cooking updates on your phome while within 15- ft of the dock.",
                    image: ""),
                pageCommonView(
                    title: "before you connect",
                    subTitle:
                        "Charge thermometer in dock for at least 30 minutes",
                    extraTitle:
                        "Insert batteries and charge thermometer in the dock before first-time set up.",
                    image: ""),
                pageCommonView(
                  title: "connect thermometer",
                  subTitle: "To power on, remove thermometer from dock",
                  extraTitle:
                      "Thermometer and dock will enter Bluetooth pairing mode once powered on.",
                  image: "",
                  last: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              _controller.nextPage(
                  duration: Duration(milliseconds: 100), curve: Curves.linear);
            },
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(
                  Size((this._currentPage == 4) ? 200 : 125, 45)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff358783)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            child: Text(
              (this._currentPage == 4)
                  ? "Charging complete"
                  : ((this._currentPage == 5) ? "Connect" : "Next"),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          if (this._currentPage != 5)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pageCommonIndicator(0),
                pageCommonIndicator(1),
                pageCommonIndicator(2),
                pageCommonIndicator(3),
                pageCommonIndicator(4),
              ],
            ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }

  Widget pageCommonIndicator(int index) {
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (index == this._currentPage)
                ? Colors.green[900]
                : Colors.green[300],
          ),
        ),
        if (index != 5)
          SizedBox(
            width: 8,
          )
      ],
    );
  }
}

class pageCommonView extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? extraTitle;
  final String image;
  final bool last;
  const pageCommonView({
    Key? key,
    this.last = false,
    required this.title,
    required this.subTitle,
    this.extraTitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: ScreenConst.widthRatio(90),
          child: Text(
            this.title.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: ScreenConst.widthRatio(90),
          child: Text(
            this.subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        if (this.extraTitle != null)
          Container(
            width: ScreenConst.widthRatio(90),
            child: Text(
              this.extraTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.4,
                color: Colors.grey[700],
              ),
            ),
          )
        else
          SizedBox(
            height: 30,
          ),
        SizedBox(height: 20),
        Expanded(child: Placeholder()),
        if (this.last)
          Container(
              padding: EdgeInsets.only(top: 5),
              width: ScreenConst.widthRatio(90),
              child: Text(
                "You agree to our Terms of Service and Privacy Policy",
                textAlign: TextAlign.center,
              ))
      ],
    );
  }
}
