package com.compssa.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
  "file:src/main/webapp/WEB-INF/spring/root-context.xml",
  "file:src/main/webapp/WEB-INF/spring/security-context.xml"
  })
@Log4j
public class MemberTests {

  @Setter(onMethod_ = @Autowired)
  private PasswordEncoder pwencoder;
  
  @Setter(onMethod_ = @Autowired)
  private DataSource ds;
  
  @Test
  public void testInsertMember() {

    String sql = "insert into ShopUser (ID,UserName,PW,Name,AddrNum,Addr1,Addr2,Gender,Birth,Email,HouseNum,PhoneNum) values(seq_ShopUser.NEXTVAL , 'rycbar1111',? , '김김김' , '154-199' , '서울시 영등포구 신도림동' , '신동아 아파트 101동 999호' , 0  , TO_DATE('0409', 'MMDD'), 'rycbar1111@nate.com' , '02-2531-2799' , '010-5444,6222' )";
    

      
      Connection con = null;
      PreparedStatement pstmt = null;
      
      try {
        con = ds.getConnection();
        pstmt = con.prepareStatement(sql);
        
        pstmt.setString(1, pwencoder.encode("12341234"));
        
        
        pstmt.executeUpdate();
        
      }catch(Exception e) {
        e.printStackTrace();
      }finally {
        if(pstmt != null) { try { pstmt.close();  } catch(Exception e) {} }
        if(con != null) { try { con.close();  } catch(Exception e) {} }
        
      }
      
      System.out.println("회원 테스트 입력 완료");

  }
  
  @Test
  public void testInsertAuth() {
    
    
    String sql = "insert into shopauthorities (ID, Authority) values (1, 'ROLE_MANAGER')";
    

      Connection con = null;
      PreparedStatement pstmt = null;
      
      try {
        con = ds.getConnection();
        pstmt = con.prepareStatement(sql);
        pstmt.executeUpdate();
        
      }catch(Exception e) {
        e.printStackTrace();
      }finally {
        if(pstmt != null) { try { pstmt.close();  } catch(Exception e) {} }
        if(con != null) { try { con.close();  } catch(Exception e) {} }
        
      }
      
      System.out.println("권한 테스트 입력 완료");

  }

  
}


