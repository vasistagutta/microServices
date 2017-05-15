package com.atm;

import java.io.File;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

@Controller
public class AtmServiceController {

	private String qrCode = "1234568998";
	@RequestMapping("/atmService")
		public String firstPage(Map<String, Object> model) throws IOException{
		
			//model.put("message","waiting for QR code from ranjani :p");
			return "ATMApp_FirstPage";
	}
	
	@RequestMapping("/qrGenerate")
	public String qrGenerate(Map<String, Object> model) throws IOException{
		try
		{
		String filePath = "C:\\Users\\Vasista\\spring\\ATMService\\src\\main\\resources\\static\\images\\qrCode.png";
		int size = 125;
		Hashtable hintMap = new Hashtable();
		hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
		File qrFile = new File(filePath);
		createQRImage(filePath, qrCode, size, hintMap);
		//System.out.println("Data read from QR Code: "+ readQRCode(filePath, hintMap));
		System.out.println("DONE");
	}
	catch(Exception e){
		System.out.println("Inside Catch");
	}
		return "ATMApp_FirstPage";
}

	private static void createQRImage(String qrFile, String qrCodeText, int size,
			Hashtable hintMap) throws WriterException, IOException {
		// Create the ByteMatrix for the QR-Code that encodes the given String
		QRCodeWriter qrCodeWriter = new QRCodeWriter();
		BitMatrix byteMatrix = qrCodeWriter.encode(qrCodeText,
				BarcodeFormat.QR_CODE, size, size, hintMap);
		MatrixToImageWriter.writeToFile(byteMatrix, qrFile.substring(qrFile
				.lastIndexOf('.') + 1), new File(qrFile));
		// Make the BufferedImage that are to hold the QRCode
	}
	
	@RequestMapping("/authenticateQR")
		public String authenticateQR(Map<String, Object> model,  @RequestParam  String value) throws IOException{
			System.out.println("qrcode value :"+ value);
			return "welcome";
	}
	
}