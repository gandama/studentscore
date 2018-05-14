package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.DB;

import com.orm.TTongji;
import com.service.liuService;

public class tongji_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		if(type.endsWith("tongjiMana"))
		{
			tongjiMana(req, res);
		}
	
	}
	
	
	

	public void tongjiMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		
	    String stuinfo="";
	 
	     stuinfo=req.getParameter("stuinfo");
		    
	 
	   String wheresql="";
	   if(stuinfo!=null)wheresql=" where code like '%"+stuinfo+"%'" +
		" or name1 like '%"+stuinfo+"%'";
	          
	          DecimalFormat    df   = new DecimalFormat("######0.00");   

	          List tongjiList =new ArrayList();
	  		String sql="SELECT name1,code,sum(grades) as total,count(*) as numb,avg(grades) as avg,stu_id,xuenian "+   
" FROM `t_grades` "+
" left join t_stu on t_stu.id=t_grades.stu_id" + wheresql +
" group by xuenian,stu_id";
	  		Object[] params={};
	  		DB mydb=new DB();
	  		try
	  		{
	  			mydb.doPstm(sql, params);
	  			ResultSet rs=mydb.getRs();
	  			while(rs.next())
	  			{
	  				
	  				
	  				
	  			
						  //int stu_id=stu_id_list.get(i);
						  
						  
						  
						  double jgnumb=Double.valueOf(liuService.getJgnumb(rs.getString("stu_id"),rs.getString("xuenian"))).doubleValue();
						  double bjgnumb=Double.valueOf(liuService.getBjgnumb(rs.getString("stu_id"),rs.getString("xuenian"))).doubleValue();
						   
						  double total= rs.getDouble("total") ;
						  double numb= rs.getDouble("numb") ;
						  double avg= rs.getDouble("avg") ;
							   
						  //pscj_value=Double.valueOf(df.format(pscj_value)).doubleValue();
						  
						 
						  total=Double.valueOf(df.format(total)).doubleValue();
						  
						  
						  TTongji tongji=new TTongji();
						  
						  tongji.setCode(rs.getString("code"));
						  tongji.setName1(rs.getString("name1"));
						 tongji.setXuenian(rs.getString("xuenian"));
						  tongji.setTotal(total);
						  tongji.setNumb(numb);
						  tongji.setAvg(avg);
						  tongji.setJgnumb(jgnumb);
						  tongji.setBjgnumb(bjgnumb);
						   
						  tongjiList.add(tongji);
	  			 }
				rs.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			mydb.closed();
			
			 
		
		req.setAttribute("tongjiList", tongjiList);
		req.setAttribute("stuinfo", stuinfo);
	 
		req.getRequestDispatcher("admin/tongji/tongjiMana.jsp").forward(req, res);
	}
	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}
	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
	}
	
	public void destroy() 
	{
		
	}
}
