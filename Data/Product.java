import java.net.URL;

public class Product {
    private int id;
    private String productName;
    private String retailerName;
    private long productPrice;
    private int categoryId;
    private URL productImage;
    private String productDescription;
    private String productRebate;
    private boolean isActive;
    private boolean isOnSale;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getRetailerName() {
        return retailerName;
    }

    public void setRetailerName(String retailerName) {
        this.retailerName = retailerName;
    }

    public long getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(long productPrice) {
        this.productPrice = productPrice;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public URL getProductImage() {
        return productImage;
    }

    public void setProductImage(URL productImage) {
        this.productImage = productImage;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductRebate() {
        return productRebate;
    }

    public void setProductRebate(String productRebate) {
        this.productRebate = productRebate;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public boolean isOnSale() {
        return isOnSale;
    }

    public void setIsOnSale(boolean isOnSale) {
        this.isOnSale = isOnSale;
    }

    public Product(int id, String productName, String retailerName, long productPrice, int categoryId, URL productImage, String productDescription, String productRebate, boolean isActive, boolean isOnSale) {
        this.id = id;
        this.productName = productName;
        this.retailerName = retailerName;
        this.productPrice = productPrice;
        this.categoryId = categoryId;
        this.productImage = productImage;
        this.productDescription = productDescription;
        this.productRebate = productRebate;
        this.isActive = isActive;
        this.isOnSale = isOnSale;
    }
}