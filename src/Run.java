
import java.util.List;
import java.util.Set;

import javassist.bytecode.Descriptor.Iterator;

import org.hibernate.Session;

import com.google.gson.*; 
import com.hieulm.model.BO.*;
import com.hieulm.model.DAO.*;
import com.hieulm.model.util.*;
import com.hieulm.util.*;

import org.json.simple.*;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
public class Run {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("-------- Begin Test --------");
//		HangsxDAO dao = new HangsxDAO();
//		List<Hangsx> Hangsxs = dao.listAllHangsx();
//		for(Hangsx Hangsx : Hangsxs){
//			System.out.println(Hangsx.getTenhangsx());
//		}		
		
//		DienthoaiDAO dao = new DienthoaiDAO();
//		List<Dienthoai> dienthoais = dao.getDienthoaiByHangsx(1);
//		for(Dienthoai dienthoai : dienthoais){
//			System.out.println(dienthoai.getTendienthoai());
//		}
		
		EmailValidator ev = new EmailValidator();
		System.out.println(ev.validate("foo@bar.com"));
	}

}
