package kr.inhatc.craweb;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class Naver_famous implements ServletContextListener {
   // SeleniumInfo
   private static WebDriver driver, driver1, driver2, driver3;
   public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
   public static final String WEB_DRIVER_PATH = "chromedriver.exe";

   // URL, SEARCH
   private static String URL = "https://tv.naver.com/r/";

   // Search Array
   static List<String> naverfUrl = new ArrayList<String>();
   // Title
   static List<String> naverfTitle = new ArrayList<String>();
   // Image
   static List<String> naverfImg = new ArrayList<String>();
   // Iframe
   static List<String> nf_iframeUrl = new ArrayList<String>();

   @Override
   public void contextInitialized(ServletContextEvent sce) {
      System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);

      ChromeOptions options = new ChromeOptions();
      options.addArguments("headless");
      driver = new ChromeDriver(options);

      Naver_famous sel = new Naver_famous();
      sel.Craw();

//      for (int i = 0; i < sel.naverfUrl.size(); i++) {
//         System.out.println(sel.naverfTitle.get(i));
//         System.out.println(sel.naverfUrl.get(i));
//         System.out.println(sel.naverfImg.get(i));
//      }

      Thread1 t1 = new Thread1();
      Thread2 t2 = new Thread2();
      Thread3 t3 = new Thread3();

      t1.start();
      t2.start();
      t3.start();
   }

   @Override
   public void contextDestroyed(ServletContextEvent sce) {

   }

   // 검색 결과 URL
   public static void Craw() {
      try {
         driver.get(URL);

         int count = 1;
         List<WebElement> Div_count = driver.findElements(By.className("cds"));
         for (WebElement D : Div_count) {
            List<WebElement> Search_result = driver
                  .findElements(By.xpath("//*[@id=\"content\"]/div/div/div/div[" + count + "]/div/a"));
            for (WebElement N : Search_result) {
               nf_iframeUrl.add(null);
               naverfUrl.add(N.getAttribute("href"));
               List<WebElement> Search_img = driver
                     .findElements(By.xpath("//*[@id=\"content\"]/div/div/div/div[" + count + "]/div/a/img[1]"));
               for (WebElement I : Search_img) {
                  naverfImg.add(I.getAttribute("src"));
                  naverfTitle.add(I.getAttribute("alt"));
               }
            }
            count++;
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         driver.close();
      }
   }

   static class Thread1 extends Thread {
      public void run() {
         ChromeOptions options = new ChromeOptions();
         options.addArguments("headless");
         options.addArguments("--mute-audio");
         driver1 = new ChromeDriver(options);
         try {
            for (int i = 0; i < 5; i++) {
               driver1.get(naverfUrl.get(i));
               driver1.findElement(By.tagName("a").id("spiButton")).sendKeys(Keys.ENTER);
               Thread.sleep(200);
               WebElement iframe_Url = driver1.findElement(By.tagName("input").id("sharePlayerTagInput"));
               if (iframe_Url.isDisplayed()) {
                  nf_iframeUrl.set(i, iframe_Url.getAttribute("value"));
               } else {
                  nf_iframeUrl.set(i, naverfUrl.get(i));
               }
//               System.out.println(nf_iframeUrl);
               continue;
            }
            driver1.close();
         } catch (Exception e) {
         }
      }
   }

   static class Thread2 extends Thread {
      public void run() {
         try {
            ChromeOptions options = new ChromeOptions();
            options.addArguments("headless");
            options.addArguments("--mute-audio");
            driver2 = new ChromeDriver(options);
            for (int i = 5; i < 10; i++) {
               driver2.get(naverfUrl.get(i));
               driver2.findElement(By.tagName("a").id("spiButton")).sendKeys(Keys.ENTER);
               Thread.sleep(200);
               WebElement iframe_Url = driver2.findElement(By.tagName("input").id("sharePlayerTagInput"));
               if (iframe_Url.isDisplayed()) {
                  nf_iframeUrl.set(i, iframe_Url.getAttribute("value"));
               } else {
                  nf_iframeUrl.set(i, naverfUrl.get(i));
               }
//               System.out.println(nf_iframeUrl);
               continue;
            }
            driver2.close();
         } catch (Exception e) {
         }
      }
   }

   static class Thread3 extends Thread {
      public void run() {
         try {
            ChromeOptions options = new ChromeOptions();
            options.addArguments("headless");
            options.addArguments("--mute-audio");
            driver3 = new ChromeDriver(options);
            for (int i = 10; i < 15; i++) {
               driver3.get(naverfUrl.get(i));
               driver3.findElement(By.tagName("a").id("spiButton")).sendKeys(Keys.ENTER);
               Thread.sleep(200);
               WebElement iframe_Url = driver3.findElement(By.tagName("input").id("sharePlayerTagInput"));
               if (iframe_Url.isDisplayed()) {
                  nf_iframeUrl.set(i, iframe_Url.getAttribute("value"));
               } else {
                  nf_iframeUrl.set(i, naverfUrl.get(i));
               }
//               System.out.println(nf_iframeUrl);
               continue;
            }
            driver3.close();
         } catch (Exception e) {
         }
      }
   }

}