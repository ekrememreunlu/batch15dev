public class OperationsHelper {
    
    public static Decimal sum(List<Decimal> values) {
        if (values == null || values.isEmpty()) {
            System.debug('Please provide values to do the operation');
            return null;
        }
        Decimal result = 0;
        for (Decimal value : values) {
            result += value;
        }
        return result;
    }
    
    public static Decimal average(List<Decimal> values) {
        if (values == null || values.isEmpty()) {
            System.debug('Please provide values to do the operation');
            return null;
        }
        Decimal sum = 0;
        for (Decimal value : values) {
            sum += value;
        }
        return sum / values.size();
    }
    
    public static Decimal highest(List<Decimal> values) {
        if (values == null || values.isEmpty()) {
            System.debug('Please provide values to do the operation');
            return null;
        }
        Decimal highestValue = values[0];
        for (Decimal value : values) {
            if (value > highestValue) {
                highestValue = value;
            }
        }
        return highestValue;
    }
    
    public static Decimal lowest(List<Decimal> values) {
        if (values == null || values.isEmpty()) {
            System.debug('Please provide values to do the operation');
            return null;
        }
        Decimal lowestValue = values[0];
        for (Decimal value : values) {
            if (value < lowestValue) {
                lowestValue = value;
            }
        }
        return lowestValue;
    }
}
