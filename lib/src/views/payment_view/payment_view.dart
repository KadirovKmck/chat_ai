import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/background_images.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.3,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: screenHeight * 0.15,
                        right: screenWidth * 0.12,
                        child: Image.asset('assets/icons/Image.png'),
                      ),
                      Positioned(
                        top: screenHeight * 0.04,
                        right: screenWidth * 0.18,
                        child: Image.asset('assets/icons/Image1.png'),
                      ),
                      Positioned(
                        top: screenHeight * 0.01,
                        right: screenWidth * 0.45,
                        child: Image.asset('assets/icons/Image3.png'),
                      ),
                      Positioned(
                        top: screenHeight * 0.04,
                        left: screenWidth * 0.2,
                        child: Image.asset('assets/icons/Image5.png'),
                      ),
                      Positioned(
                        top: screenHeight * 0.15,
                        left: screenWidth * 0.12,
                        child: Image.asset('assets/icons/Image4.png'),
                      ),
                      Positioned(
                        top: screenHeight * 0.09,
                        left: screenWidth * 0.36,
                        child: Container(
                          width: screenWidth * 0.3,
                          height: screenWidth * 0.3,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF529281),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/chat_icon.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GET',
                      style: TextStyle(
                        color: Color(0xFFEBECEC),
                        fontSize: 49,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'PRO',
                      style: TextStyle(
                        color: Color(0xFF19B383),
                        fontSize: 52,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'ACCESS',
                      style: TextStyle(
                        color: Color(0xFFEDEFEE),
                        fontSize: 50,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.015,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FeatureItem(
                        iconPath: 'assets/icons/chat.png',
                        text: 'UNLIMITED CHATMESSAGES',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      FeatureItem(
                        iconPath: 'assets/icons/an.png',
                        text: 'ANSWERS FROM GPT-40',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      FeatureItem(
                        iconPath: 'assets/icons/imagesss.png',
                        text: 'INFINITE IMAGE GENERATIONS',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      FeatureItem(
                        iconPath: 'assets/icons/voice_chat.png',
                        text: 'VOICE CHAT',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SubscriptionOption(
                  title: 'YEARLY ACCESS',
                  subtitle: 'Just 1 582,5 ₸ per month',
                  price: '18 990,00 ₸ per year',
                  isSelected: selectedIndex == 0,
                  onTap: () => setState(() => selectedIndex = 0),
                  tag: 'BEST OFFER',
                ),
                const SizedBox(height: 10),
                SubscriptionOption(
                  title: 'MONTHLY ACCESS',
                  subtitle: '',
                  price: '11 990,00 ₸ per month',
                  isSelected: selectedIndex == 1,
                  onTap: () => setState(() => selectedIndex = 1),
                ),
                const SizedBox(height: 10),
                SubscriptionOption(
                  title: 'WEEKLY ACCESS',
                  subtitle: '',
                  price: '1 990,00 ₸ per week',
                  isSelected: selectedIndex == 2,
                  onTap: () => setState(() => selectedIndex = 2),
                ),
                const ContinueButton(),
                const SizedBox(height: 10),
                const BottomNavigationBarWidget(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final TextStyle textStyle;

  const FeatureItem({
    required this.iconPath,
    required this.text,
    required this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: 40,
          height: 40,
        ),
        const SizedBox(width: 16),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}

class SubscriptionOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final bool isSelected;
  final VoidCallback onTap;
  final String? tag;

  const SubscriptionOption({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isSelected,
    required this.onTap,
    this.tag,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: isSelected ? Colors.green[900] : Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? Colors.green : Colors.grey,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (subtitle.isNotEmpty)
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (tag != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        tag!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // Handle continue button tap
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.08,
          vertical: 16.0,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Center(
          child: Text(
            'Continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              // Handle Terms of Use tap
            },
            child: const Text(
              'Terms of Use',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle Privacy Policy tap
            },
            child: const Text(
              'Privacy Policy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle Restore tap
            },
            child: const Text(
              'Restore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
