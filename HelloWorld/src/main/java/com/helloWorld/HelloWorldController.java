package com.helloWorld;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.helloWorld.dto.CardDetailsDTO;
import com.helloWorld.dto.HelloWorldResDTO;
@Controller
public class HelloWorldController {

	// inject via application.properties
	private String message = "First Spring Boot Application";
	
	
	
	public HelloWorldResDTO helloWorldResDTO = new HelloWorldResDTO();
	
	/*@RequestMapping(value = "/getToken", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public HelloWorldResDTO firstPage(@RequestBody HelloWorldReqDTO helloWorldReqDTO) {
		
		HelloWorldResDTO helloWorldResDTO= null;
		return helloWorldResDTO;
	}*/
	
	@RequestMapping("/loginPage")
		public String loginPage(Map<String, Object> model) throws IOException{
		//accessTokenGenerationUtils();
			//model.put("response", helloWorldResDTO.getToken());
			return "LoginPage";
	}
	
	@RequestMapping("/userAppFirstPage")
	public String userAppFirstPage(Map<String, Object> model) throws IOException{
	//accessTokenGenerationUtils();
		//model.put("response", helloWorldResDTO.getToken());
		return "UserApp_FirstPage";
}
	@RequestMapping("/cardLessTransactionPage")
	public String cardLessTransaction(Map<String, Object> model) throws IOException{
	//accessTokenGenerationUtils();
		//model.put("response", helloWorldResDTO.getToken());
		return "CardLessTransaction";
		
}
	@RequestMapping("/cardLessATMPage")
	public String cardLessATMPage(Map<String, Object> model) throws IOException{
	
	//accessTokenGenerationUtils();
		//model.put("response", helloWorldResDTO.getToken());
		return "CardLessATMTransactionFPage";
}
	private void accessTokenGenerationUtils()
			throws MalformedURLException, IOException, ProtocolException, JsonParseException, JsonMappingException {
		ObjectMapper mapper = new ObjectMapper();
		 URL url = new URL("https://corporateapiprojectwar.mybluemix.net/corporate_banking/mybank/authenticate_client?client_id=ganeshthangaraj@gmail.com&password=REMN321U");
		 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		 conn.setRequestMethod("GET");
		 conn.setRequestProperty("Accept", "application/json");
			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
				}
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			String response= br.readLine();
			response = response.replaceAll("\\[", "").replaceAll("\\]","");
			helloWorldResDTO = mapper.readValue(response, HelloWorldResDTO.class);
			System.out.println("value= "+ helloWorldResDTO.getToken());
	}
	@RequestMapping("/cardlessTranscation")
	public String nextPage(Map<String, Object> model) throws JsonParseException, JsonMappingException, MalformedURLException, ProtocolException, IOException {
		/*model.put("message", "ThunderCats");*/
		accessTokenGenerationUtils();
		ObjectMapper mapper = new ObjectMapper();
		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		CardDetailsDTO cardDetailsDTO = new CardDetailsDTO();
		String cardDetailsURL = "https://debitcardapi.mybluemix.net/debit/icicibank/getDebitDetails?client_id=ganeshthangaraj@gmail.com&token="+helloWorldResDTO.getToken()+"&custid=33337389";
		 URL url = new URL(cardDetailsURL);
		 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		 conn.setRequestMethod("GET");
		 conn.setRequestProperty("Accept", "application/json");
			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
				}
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			String response= br.readLine();
			response = response.replaceAll("\\[", "").replaceAll("\\]","");
			 String responseArray [] = response.split(",",2);
			cardDetailsDTO = mapper.readValue(responseArray[0], CardDetailsDTO.class);
			if(200 == cardDetailsDTO.getCode()){
				cardDetailsDTO = mapper.readValue(responseArray[1], CardDetailsDTO.class);
				model.put("CardDetailsDTO", cardDetailsDTO);
				System.out.println(" card no ="+ cardDetailsDTO.getAccountno());
			}else{
				model.put("message", cardDetailsDTO.getMessage());
			}
			
			
		return "nextPage";
	}
	/*@RequestMapping("/authenticate/{QRData}")
	public String authenticateQRData(@PathVariable("QRData")  String qrData){
		System.out.println("QRDATa"+ qrData);
		
		return "welcome";
	}*/
	@RequestMapping("/authenticate")
	public String authenticateQRData( @RequestParam  String QRData,  RedirectAttributes redirectAttributes){
		System.out.println("QRDATa"+ QRData);
		redirectAttributes.addFlashAttribute("qrvalue", QRData);
		return "redirect:http://localhost:9080/authenticateQR?value="+QRData;
	}
	
}
