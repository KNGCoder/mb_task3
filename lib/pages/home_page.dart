import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Практическа 3',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.green,),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  )
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Выбери лучшее',
                       style: TextStyle(color: Colors.black87,fontSize: 25) ,  
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Для себя',
                       style: TextStyle(color: Colors.green, fontSize: 40, fontWeight: FontWeight.bold ),   
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const TextField(
                        decoration:  InputDecoration(
                          border:  InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.green,),
                          hintText: 'Стоит только  начать...',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
              const SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Скидки дня: ',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promo('assets/image/001.jpg'),
                          promo('assets/image/002.jpg'),
                          promo('assets/image/003.jpg'),
                          promo('assets/image/004.jpg'),
                          promo('assets/image/005.jpg'),
                          promo('assets/image/006.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image:  const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image/010.jpg')
                        )
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: const [0.3, 0.9],
                            colors: [
                              Colors.green.withOpacity(.8),
                              Colors.green.withOpacity(.2),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Цена снижена',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ),
                        ),


                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promo(image) {
    return AspectRatio(
      aspectRatio: 2.62/3,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image), ),),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [0.1,0.9],
                colors:[
                  Colors.green.withOpacity(.8),
                  Colors.green.withOpacity(.2),
                ]
            ),
          ),
        ),
      ),
    );}
}
  