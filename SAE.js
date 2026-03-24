document.addEventListener("DOMContentLoaded", function() {

    const searchInput = document.getElementById("search");
    const productList = document.getElementById("product-list");

    // Crée le message "Aucun produit trouvé"
    const msg = document.createElement("p");
    msg.id = "no-product-msg";
    msg.innerText = "Aucun produit trouvé";
    productList.parentNode.insertBefore(msg, productList.nextSibling);

    // Fonction de filtrage
    searchInput.addEventListener("keyup", function() {
        const filter = searchInput.value.toLowerCase();
        const products = document.querySelectorAll(".product");
        let found = false;

        products.forEach(product => {
            const name = product.querySelector("h3").innerText.toLowerCase();
            if (name.includes(filter)) {
                product.style.display = "";
                found = true;
            } else {
                product.style.display = "none";
            }
        });

        msg.style.display = found ? "none" : "block";
    });

});

