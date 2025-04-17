class TPricingCalculator {
  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Convert location to lowercase for case-insensitive comparison
    String normalizedLocation = location.toLowerCase();

    // Lookup table for country tax rates (simplified example)
    switch (normalizedLocation) {
      case "united states":
      case "us":
      case "usa":
        return 0.08; // Average US sales tax (varies by state)

      case "canada":
      case "ca":
        return 0.05; // Canadian GST (varies by province)

      case "united kingdom":
      case "uk":
      case "gb":
        return 0.20; // UK VAT standard rate

      case "germany":
      case "de":
        return 0.19; // Germany VAT standard rate

      case "france":
      case "fr":
        return 0.20; // France VAT standard rate

      case "japan":
      case "jp":
        return 0.10; // Japan consumption tax

      case "australia":
      case "au":
        return 0.10; // Australia GST

      case "china":
      case "cn":
        return 0.13; // China VAT standard rate

      case "india":
      case "in":
        return 0.18; // India GST standard rate

      case "brazil":
      case "br":
        return 0.17; // Brazil average ICMS rate

      case "mexico":
      case "mx":
        return 0.16; // Mexico VAT rate

      // Add more countries as needed...

      default:
        return 0.10; // Default tax rate for unspecified locations
    }
  }

  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location using a shipping rate API.
    // Calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.00; // Example shipping cost of $5
  }

  // /// -- Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
