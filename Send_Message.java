package com.niit.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

public class Send_Message {
	
	public static final String ACCOUNT_SID = "AC1bb5127e26d7ef66e6a3a618483ab5c4";
    public static final String AUTH_TOKEN = "d6617c6b667df977a7ab9933307f9a19";
    public static final String TWILIO_NUMBER = "+12013545697";
	public Send_Message() {
		// TODO Auto-generated constructor stub
	}

public void sendSMS() {
try {
    TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

    // Build a filter for the MessageList
    List<NameValuePair> params = new ArrayList<NameValuePair>();
    params.add(new BasicNameValuePair("Body", "Hello,Users Its me selva your order will sucessfully placed....."));
    params.add(new BasicNameValuePair("To", "+91 9942710628")); //Add real number here
    params.add(new BasicNameValuePair("From", TWILIO_NUMBER));

    MessageFactory messageFactory = client.getAccount().getMessageFactory();
    Message message = messageFactory.create(params);
    System.out.println(message.getSid());
} 
catch (TwilioRestException e) {
    System.out.println(e.getErrorMessage());
}
}
}