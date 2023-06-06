@isTest
public class Primitivedata_AssgNewTest {
    @isTest
    static void primTest(){

        String expectedmsg = '0016g000024a5DiAAI--The following Id belongs to Accouts--false';
       
        Primitivedata_AssgNew p = new Primitivedata_AssgNew();
        p.prim_method();

        system.assertEquals('0016g000024a5DiAAI--The following Id belongs to Accouts--false', expectedmsg);

    }
}