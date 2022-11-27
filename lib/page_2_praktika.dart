import 'package:flutter/material.dart';

class Page_2 extends StatelessWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Icon(Icons.menu, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on, color:Colors.green),
                      Text('Magura, BD')
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3d66NDEsx2sW82wt-oTIOKOoeAyFFKCCD99VxCHCah224kmYXuVjttY6oEB2-AbxcMro&usqp=CAU'), fit: BoxFit.cover)
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text('Hi, Rinku', style: TextStyle(color:Colors.green, fontSize: 20, fontWeight: FontWeight.w700),),
              ),
              Text("Find your food", style: TextStyle(color:Colors.black, fontWeight: FontWeight.w900, fontSize: 24),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey.withOpacity(0.2),
                      hintText: "Search Food",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.withOpacity(0.5)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: BorderSide.none ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                  suffixIcon: Icon(Icons.menu_open, color: Colors.green,size: 30,)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Food',style: TextStyle(color: Colors.green, fontSize: 20),),
                    Text('Fruits',style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 20),),
                    Text('Vegetables',style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 20),),
                    Text('Grocery',style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 20),),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,  crossAxisSpacing: 20, mainAxisSpacing: 20, mainAxisExtent: 250,
                ), itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                        color:Colors.blueGrey.withOpacity(0.2)
                    ),
                  );
                })
              )
            ],
          ),
        ),
      ),
    );
  }
}
