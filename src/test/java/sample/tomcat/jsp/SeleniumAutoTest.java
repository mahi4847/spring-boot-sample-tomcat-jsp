package sample.tomcat.jsp;
 
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.Test;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.AfterClass;
 
public class SeleniumAutoTest {
 
 public WebDriver driver;
 
  @Test
  public void openMyBlog() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
  @Test
  public void testController1() {
   Assert.assertTrue(false);
// 	driver.get("http://35.166.134.157:8080/user");
  }
 
  @Test
  public void testController2() {
   Assert.assertTrue(false);
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test(enabled=false)
  public void testController3() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test
  public void testController4() {
   Assert.assertTrue(true);
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test
  public void testController5() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test
  public void testController6() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test
  public void testController7() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test
  public void testController8() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test
  public void testController9() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
 @Test
  public void testController10() {
// 	driver.get("http://35.166.134.157:8080/user");
  }
 
  @BeforeClass
  public void beforeClass() {
   
   //System.setProperty("webdriver.gecko.driver", "D:\\Selenium\\Drivers\\geckodriver.exe");
  // driver = new FirefoxDriver();
   
  }
 
  @AfterClass
  public void afterClass() {
  // driver.quit();
  }
 
}
