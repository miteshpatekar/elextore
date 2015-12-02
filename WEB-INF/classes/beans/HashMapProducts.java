package beans;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapProducts {
     HashMap<Integer,Product> hmap = new HashMap<Integer, Product>();

    /*Adding elements to HashMap*/
   
    
    //images/img_XBoxOriginal.jpg
    public void setHashMapProduct() {
    Product p1=new Product("XBox One","Microsoft",500,"Games","images/XBoxOne.jpg","This is best game", "",true,true);
       Product p2=new Product("XBox 360","Microsoft",700,"Games","images/XBoxOne.jpg","This is best game", "",true,true);
        
        
        
        // TODO Auto-generated method stub
         hmap.put(1, p1);
         hmap.put(2,p2);
         // hmap.put(p3.Id, p3);
         // hmap.put(p4.Id, p4);    
         // hmap.put(p5.Id, p5);
         // hmap.put(p6.Id,p6);
         // hmap.put(p7.Id, p7);
         // hmap.put(p8.Id, p8);      

    }
    
    public HashMap<Integer,Product> getHashMapProduct() {
        
            return hmap;
    }

    
    // public void iterateHashMap() {
    //     Iterator<Integer> productIterator=hmap.keySet().iterator();//put debug point at this line
         
    //     while(productIterator.hasNext())
    //     {
    //         Integer id=productIterator.next();
    //         Product p=hmap.get(id);
    //         System.out.println(p.Name+"----");
    //         System.out.println(p.imagePath+"----");
    //     }

    // }


}