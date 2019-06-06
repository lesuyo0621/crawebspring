package kr.inhatc.craweb;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;



public class Youtube_famous implements ServletContextListener {
   // SeleniumInfo
   private static WebDriver driver;
   public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
   public static final String WEB_DRIVER_PATH = "chromedriver.exe";

   // URL, SEARCH
   private static String URL = "https://www.youtube.com/feed/trending";

   // Video URL
   static List<String> youtubefUrl = new ArrayList<String>();
   // Title
   static List<String> youtubefTitle = new ArrayList<String>();
   // Image
   static List<String> youtubefImg = new ArrayList<String>();

   @Override
   public void contextInitialized(ServletContextEvent sce) {
      System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);

      ChromeOptions options = new ChromeOptions();
      options.addArguments("headless");
      driver = new ChromeDriver(options);

      Youtube_famous youtube = new Youtube_famous();
      youtube.Craw();

//      for (int i = 0; i < youtube.youtubefTitle.size(); i++) {
//         System.out.println(youtube.youtubefTitle.get(i));
//         System.out.println(youtube.youtubefUrl.get(i));
//         System.out.println(youtube.youtubefImg.get(i));
//      }
   }

   @Override
   public void contextDestroyed(ServletContextEvent sce) {

   }

   // 검색 결과 URL
   public static void Craw() {
      try {
         String elementB, elementA;
         youtubefUrl.clear();
         youtubefTitle.clear();
         youtubefImg.clear();

         driver.get(URL);

         // Video, Title
         List<WebElement> Search_result = driver.findElements(By.tagName("a").id("video-title"));
         for (WebElement Y : Search_result) {
            youtubefUrl.add(Y.getAttribute("href"));
            youtubefTitle.add(Y.getText());
         }
         for (int i = 0; i < youtubefUrl.size(); i++) {
            elementB = youtubefUrl.get(i);
            if (elementB != null) {
               elementA = elementB.replace("watch?v=", "embed/");
               youtubefUrl.set(i, elementA);
               youtubefImg.add(elementA.substring(30));
            } else {
               youtubefUrl.remove(i);
               youtubefTitle.remove(i);
               i--;
            }
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         driver.close();
      }
   }

}