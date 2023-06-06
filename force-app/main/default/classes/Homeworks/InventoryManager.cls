public class InventoryManager {
    string productName;
    string productCode;
    integer costPrice;
    integer sellingPrice;
    static integer productCount = 0;

    public InventoryManager(){
        productCount++;
    }

    public InventoryManager(String productName, string productCode){
        this.productName = productName;
        this.productCode = productCode;
        productCount++;
    }

    public integer getCostPrice(){
        return costPrice;
    }
    public void setCostPrice(Integer costPrice){
        this.costPrice = costPrice;
    }

    public integer getSellingPrice(){
        return sellingPrice;
    }
    public void setSellingPrice(Integer sellingPrice){
        this.sellingPrice = sellingPrice;
    }
    public void productDisplay(){
        System.debug('Product Name: ' +productName);
        System.debug('Product Code: ' +productCode);
        System.debug('Cost Price: ' +costPrice);
        System.debug('Selling Price: ' +sellingPrice);
        integer profitPercent = (sellingPrice - costPrice) * 100 / costPrice;
        System.debug('Profit percent: ' +profitPercent + '%');
        if (profitPercent >=20) {
            System.debug('Star Product');
        } else {
            System.debug('Average Product');
        }
    }
    public static integer getProductCount(){
        return productCount;
    }
    
}