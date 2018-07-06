import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.*;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Test;


import javax.security.sasl.AuthenticationException;


/**
 * Created by aqiang on 2018/6/14.
 */
public class ShrioTest {
    @Test
    public void shiro() {
        //1、获取SecurityManager工厂，此处使用Ini配置文件初始化SecurityManager
        Factory<org.apache.shiro.mgt.SecurityManager> factory =
                new IniSecurityManagerFactory("classpath:shiro.ini");
        //2、得到SecurityManager实例 并绑定给SecurityUtils
        org.apache.shiro.mgt.SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        //3、得到Subject及创建用户名/密码身份验证Token（即用户身份/凭证）
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken("111", "123");

        try {
            //4、登录，即身份验证
            subject.login(token);
            System.out.print("===登陆验证成功");

        } catch (org.apache.shiro.authc.UnknownAccountException e) {
            System.err.print("===用户名错误");
            System.out.print("===用户名错误");
        }catch (IncorrectCredentialsException e){
            System.err.print("===密码错误");
        }catch (org.apache.shiro.authc.AuthenticationException e) {
            //5、身份验证失败
            System.err.print("===登陆验证失败");


            //Assert.assertEquals(true, subject.isAuthenticated()); //断言用户已经登录

            //6、退出
            subject.logout();
        }
    }
}
