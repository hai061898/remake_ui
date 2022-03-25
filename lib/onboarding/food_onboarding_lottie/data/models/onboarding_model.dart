class OnboardingModel {
  final String lottieFile;
  final String title;
  final String subtitle;

  OnboardingModel(this.lottieFile, this.title, this.subtitle);
}

List<OnboardingModel> tabs = [
  OnboardingModel(
    'assets/json/order.json',
    'Choose A Tasty',
    'When you order Eat Street , \nwe\'ll hook you up with exclusive \ncoupons.',
  ),
  OnboardingModel(
    'assets/json/interaction.json',
    'Discover Places',
    'We make it simple to find the \nfood you crave. Enter your \naddress and let',
  ),
  OnboardingModel(
    'assets/json/delivery.json',
    'Pick Up Or',
    'We make food ordering fast ,\n simple and free - no matter if you \norder',
  ),
];
