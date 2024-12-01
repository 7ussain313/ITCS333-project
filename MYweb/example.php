<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab5</title>
</head>
<body>
    
<?php
// Define the products array
$products = [
    ['name' => 'Product1', 'price' => 10, 'quantity' => 2],
    ['name' => 'Product2', 'price' => 12, 'quantity' => 1],
    ['name' => 'Product3', 'price' => 5, 'quantity' => 3],
];

// Function to calculate total value
function calculateTotal($products) {
    $total = 0;
    foreach ($products as $product) {
        $total += $product['price'] * $product['quantity'];
    }
    return $total;
}

// Display products in an HTML unordered list
echo "<ul>";
foreach ($products as $product) {
    // Using isset to check if product name and price are not null
    if (isset($product['name']) && isset($product['price'])) {
        echo "<li>{$product['name']} - {$product['price']} BD</li>";
    }
}
echo "</ul>";

// Calculate and display the total value of all products
$totalValue = calculateTotal($products);
echo "<p>Total value of all products: {$totalValue} BD</p>";
?>

       
    
</body>
</html>