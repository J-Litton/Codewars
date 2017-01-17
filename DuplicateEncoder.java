import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


/////////////////////////////
////////Instructions/////////
/////////////////////////////
// Description:

// The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

// Examples:

// "din" => "((("

// "recede" => "()()()"

// "Success" => ")())())"

// "(( @" => "))(("

/////////////////////////////


public class DuplicateEncoder {
	static String encode(String word){
    
		    int count = 0;
		    StringBuilder sb = new StringBuilder();
		    
		    String[] c = word.toLowerCase().split("");
		    
		    final List<String> list =  new ArrayList<String>();
		    	Collections.addAll(list, word.toLowerCase().split("")); 
		   
		    for(int i=0;i<c.length; i++){	
		    	count = Collections.frequency(list, c[i]);;
		      if(count > 1){
			    sb.append(')');
			    count = 0;
			  }else{
			    sb.append('(');
			    count = 0;
			  }
		    }
    word = sb.toString();
    return word;
  }
}