package kr.inhatc.craweb;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;


import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.WebDriverWait;

import net.sourceforge.htmlunit.corejs.javascript.regexp.SubString;

public class Naver {
   //SeleniumInfo
   private static WebDriver driver;
   public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
   public static final String WEB_DRIVER_PATH = "src/main/resources/chromedriver.exe";
   
   //URL, SEARCH
   private static String URL = "https://tv.naver.com/search/clip?query=";
   private static String SEARCH = "와썹맨";
   
   //Search Array
   static List<String> searchUrl = new ArrayList<String>();
   //Title
   static List<String> searchTitle = new ArrayList<String>();
   //Image
   static List<String> searchImg = new ArrayList<String>();
   //Iframe
   static List<String> iframeUrl = new ArrayList<String>();
   
   
   public static void main(String[] args) {
      System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
      
      ChromeOptions options = new ChromeOptions();
       options.addArguments("headless");
      driver = new ChromeDriver(options);
      
      Naver sel = new Naver();
      sel.Craw();
      
      for (int i = 0; i < iframeUrl.size(); i++) {
         if (iframeUrl.get(i) == null) {
            searchTitle.remove(i);
            searchUrl.remove(i);
            searchImg.remove(i);
            iframeUrl.remove(i);
            i--;
         }
      }
      
      
      for (int i = 0; i < sel.searchUrl.size(); i++) {
         System.out.println(sel.searchTitle.get(i));
         System.out.println(sel.searchUrl.get(i));
         System.out.println(sel.iframeUrl.get(i));
         System.out.println(sel.searchImg.get(i));
      }
   }
   
   //검색 결과 URL
   public static void Craw() {
      try {
         driver.get(URL+SEARCH);
         
         int count = 1, index=0;
         List<WebElement> Div_count = driver.findElements(By.className("thl"));
         for(WebElement D : Div_count) {
            List<WebElement> Search_result = driver.findElements(By.xpath("//*[@id=\"clip_list\"]/div[" + count + "]/div/a"));
            for (WebElement N : Search_result) {
               searchUrl.add(N.getAttribute("href")); 
               searchTitle.add(N.getAttribute("title"));
               List<WebElement> Search_img = driver.findElements(By.xpath("//*[@id=\"clip_list\"]/div[" + count + "]/div/a/img"));
               for (WebElement I : Search_img) {
                  searchImg.add(I.getAttribute("src"));
               }
            }
            count++;
         }
         for (int i = 0; i < searchUrl.size(); i++) {
            Craw_iframe(searchUrl.get(i));
         }
         
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         driver.close();
      }      
   }
   
   public static void Craw_iframe(String url) {
      try {
         driver.get(url);
         
         driver.findElement(By.tagName("a").id("spiButton")).click();
         WebElement iframe_Url2 = driver.findElement(By.xpath("//*[@id=\"sharePlayer\"]/div/table/tbody/tr[2]"));
         WebElement iframe_Url = driver.findElement(By.tagName("input").id("sharePlayerTagInput"));
         if (iframe_Url.isDisplayed()) {
            iframeUrl.add(iframe_Url.getAttribute("value"));
         } 
         else {
            iframeUrl.add(null);
         }
      } catch (Exception e) {
         //e.printStackTrace();
         iframeUrl.add(null);
      } finally {
      }
   }
}