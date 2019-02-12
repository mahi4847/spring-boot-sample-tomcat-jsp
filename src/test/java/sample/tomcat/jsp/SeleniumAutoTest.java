package sample.tomcat.jsp;
 
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.Test;
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
// 	driver.get("http://35.166.134.157:8080/user");
  }
 
  @Test
  public void testController2() {
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
