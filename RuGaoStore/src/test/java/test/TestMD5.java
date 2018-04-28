package test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.commons.codec.digest.DigestUtils;
import org.junit.Test;

public class TestMD5 {

	@Test
	public void test() throws Exception{
		//MD5加密后的字符串
		String str1 = 
				DigestUtils.md5Hex("123456");
		String str2 = 
				DigestUtils.md5Hex("123456");
		System.out.println(str1);
		//System.out.println(str2);
		//同过消息摘要判断文件的内容是否相同
		String fileStr1 = 
				DigestUtils.md5Hex(
						new FileInputStream("pom.xml"));
		String fileStr2 = 
				DigestUtils.md5Hex(
						new FileInputStream("pom2.xml"));
		//System.out.println(fileStr1);
		//System.out.println(fileStr2);
		
		String pwd = "123456";
		
		String salt = "你喜欢编程吗！";
		//加盐之后得到消息摘要（数据指纹）更加安全
		String strpwd = 
				DigestUtils.md5Hex(pwd+salt);
		
		System.out.println(strpwd);
	}
}








