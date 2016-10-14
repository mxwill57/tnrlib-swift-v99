//
//
//

/*	TnHttp.swift

	Provides
	
		Http-related services

	Interfaces


*/

import Foundation

//
//	class definition
//






public
extension
String
{
	
	
public
func
Xleft( iReturnSizeIn: Int) ->String {		//	return the requested leftmost characters
	
	var iReturnSize : Int = iReturnSizeIn	//	copy the requested size to our local variable
	
	if iReturnSize > self.characters.count {
		iReturnSize = self.characters.count	//	restrict right-size bounds, if necessary
	}
	
	if iReturnSize < 0 {					//	ensure size not less than zero
		iReturnSize = 0
	}
	
	//	return the requested leftmost characters
	return String( self.characters.prefix( iReturnSize )	)
}




public
func
Xright( iReturnSizeIn: Int) ->String {		//	return the requested leftmost characters
	
	var iReturnSize : Int = iReturnSizeIn	//	copy the requested size to our local variable
	
	if iReturnSize > self.characters.count {
		iReturnSize = self.characters.count	//	restrict right-size bounds, if necessary
	}
	
	if iReturnSize < 0 {					//	ensure size not less than zero
		iReturnSize = self.characters.count	}
	
	//	return the requested leftmost characters
	return String( self.characters.suffix( iReturnSize )	)
}



public
func
Xmid( iOffsetIn: Int, _ iReturnSizeIn : Int) ->String {
	
	//	return the requested characters, after the specified offset
	//	the _ signifies the iReturnSizeIn parameter is not externally named
	
	var iReturnSize : Int	= iReturnSizeIn			//	copy the requested size to our local variable
	var iOffset : Int		= iOffsetIn				//	copy the requested size to our local variable
	
	
	if iOffset < 0 {
		iOffset 	= 0								//	restrict right-side bounds, if necessary
		iReturnSize = 0								//	restrict right-side bounds, if necessary
	}
	
	
	if iOffset > self.characters.count - 1 {
		iOffset 	= 0								//	restrict right-side bounds, if necessary
		iReturnSize = 0								//	restrict right-side bounds, if necessary
	}
	
	
	
	if iReturnSize < 0 {							//	ensure size not less than zero
		iReturnSize = 0
	}
	
	
	if iOffsetIn + iReturnSize > self.characters.count {
		iReturnSize = self.characters.count - iOffsetIn		//	restrict right-size bounds, if necessary
	}
	
	
	
	//	stage the right size of the specified substring - we will next harvest left of harvested sub
	let sRight = self.right( self.characters.count - iOffsetIn )
	
	//	return the requested leftmost characters, after the offset has been applied
	return sRight.left( iReturnSize )
}
	
	
}	// end of extensions to String



































public
extension
String
{


public
func
left( iReturnSizeIn: Int) ->String {		//	return the requested leftmost characters
	
	var iReturnSize : Int = iReturnSizeIn	//	copy the requested size to our local variable
	
	if iReturnSize > self.characters.count {
		iReturnSize = self.characters.count	//	restrict right-size bounds, if necessary
	}
	
	if iReturnSize < 0 {					//	ensure size not less than zero
		iReturnSize = 0
	}
	
	//	return the requested leftmost characters
	return String( self.characters.prefix( iReturnSize )	)
}
	



public
func
right( iReturnSizeIn: Int) ->String {		//	return the requested leftmost characters
	
	var iReturnSize : Int = iReturnSizeIn	//	copy the requested size to our local variable
	
	if iReturnSize > self.characters.count {
		iReturnSize = self.characters.count	//	restrict right-size bounds, if necessary
	}
	
	if iReturnSize < 0 {					//	ensure size not less than zero
		iReturnSize = self.characters.count	}
	
	//	return the requested leftmost characters
	return String( self.characters.suffix( iReturnSize )	)
}
	

	
public
func
mid( iOffsetIn: Int, _ iReturnSizeIn : Int) ->String {

			//	return the requested characters, after the specified offset
			//	the _ signifies the iReturnSizeIn parameter is not externally named
	
	var iReturnSize : Int	= iReturnSizeIn			//	copy the requested size to our local variable
	var iOffset : Int		= iOffsetIn				//	copy the requested size to our local variable
	
	
	if iOffset < 0 {
		iOffset 	= 0								//	restrict right-side bounds, if necessary
		iReturnSize = 0								//	restrict right-side bounds, if necessary
	}

	
	if iOffset > self.characters.count - 1 {
		iOffset 	= 0								//	restrict right-side bounds, if necessary
		iReturnSize = 0								//	restrict right-side bounds, if necessary
	}


	
	if iReturnSize < 0 {							//	ensure size not less than zero
		iReturnSize = 0
	}
	
	
	if iOffsetIn + iReturnSize > self.characters.count {
		iReturnSize = self.characters.count - iOffsetIn		//	restrict right-size bounds, if necessary
	}
	
	
	
	//	stage the right size of the specified substring - we will next harvest left of harvested sub
	let sRight = self.right( self.characters.count - iOffsetIn )
	
	//	return the requested leftmost characters, after the offset has been applied
	return sRight.left( iReturnSize )
}


}	// end of extensions to String









public
class
TnHttpWorking : NSObject {
	
	
//
//	properties and instance? variables
//
	var	urlRequest : 	NSMutableURLRequest?
	
	var urlSession :	NSURLSession?
	
	var dReply :		NSMutableData?
	
	var sUrl : 			String	= "intial value"
	var sProtocol : 	String	= "intial value"
	
	var sBody : 		String	= "intial value"
	
	var sSoapAction : 	String	= "intial value"
	var sSoapHeader : 	String	= "intial value"
	var sSoapBody : 	String	= "intial value"
	var sSoapMsg : 		String	= "intial value"
	
	var sUtl : 			String	= "intial value"
	var iUtl : 			Int 	= 0
	
	var sSessionId :	String	= "intial value"
	
	var sResultCode :	String	= "intial value"

	var sErrorMsg :		String	= "intial value"

	var sUserId :		String	= "intial value"
	
	var sStreamerUrl :	String	= "intial value"
	
	var sToken :		String	= "UDID"

	var sTimestamp :	String	= "intial value"
	
	var sTicker :		String	= "intial value"
	var sTdTicker :		String	= "intial value"
	
//
//	intializers
//

//===================
public
override
init() {
	
	//	super.init()
	//	var i = 1
}

//
// method definitions
//



	
	
	
//======================================================================================================
public
func
getTest() {
	
	//	urlRequest = NSMutableURLRequest( URL: NSURL( string:sIn)! )
	
	print( "control now lies within the getTest() method of TnHttpWorking" )
	
	sUrl = "http://httpbin.org/get"
	
	urlRequest = NSMutableURLRequest( URL: NSURL( string:sUrl )! )
	
	urlRequest!.HTTPMethod = "GET"
	
	if ( sUrl.left( 8 ) == "https://" ) {
		sProtocol = "https"
	}
	else {
		sProtocol = "http"
	}
	
	sBody	=	"ew http get test"
	
	//	urlRequest!.HTTPBody =	sBody.dataUsingEncoding(NSUTF8StringEncoding)
	
	//	urlRequest!.setValue( "text/xml; charset=utf-8",	forHTTPHeaderField: "Content-Type" )
	//	urlRequest!.setValue( "Mozilla/5.0", 				forHTTPHeaderField: "User-Agent" )
	//	urlRequest!.setValue( "en-US,en;q=0.5",				forHTTPHeaderField: "Accept-Language" )
	
	// Build the completion block and send the request
	NSURLSession.sharedSession().dataTaskWithRequest (	urlRequest!,
														//	completion logic
		completionHandler: {
			
			(data, response, error) in
			
			print( "Finished" )
			if let data = data, responseDetails = NSString(data: data, encoding: NSUTF8StringEncoding) {
				// Success
				print( "Response: \(responseDetails)" )
			}
			else {
				// Failure
				print( "Error: \(error)" )
			}
			
		}
		).resume()
	
	statusReport()
}
	


//======================================================================================================
public
func
soapTest() {
		
	//	urlRequest = NSMutableURLRequest( URL: NSURL( string:sIn)! )

	print( "control now lies within the soapTest() method of TnHttpWorking" )
	
	sUrl = "https://www.zipcodeapi.com/addSoapServiceHere"
	
	urlRequest = NSMutableURLRequest( URL: NSURL( string:sUrl )! )

	urlRequest!.HTTPMethod = "POST"

	if ( sUrl.left( 8 ) == "https://" ) {
		sProtocol = "https"
	}
	else {
		sProtocol = "http"
	}
	
	
	
	//	!!!
	
	//	setup the body here
	
	//	!!!
	
	sSoapMsg =		"<soapenv:Envelope "	+ sSoapHeader	+ "<soapenv:Header/>" +
					"<soapenv:Body>" 		+ sSoapBody		+ "</soapenv:Body>" +
					"</soapenv:Envelope>"
	
	let sMsgLen = String ( sSoapMsg.characters.count )
	
	//	urlRequest!.HTTPBody =	sBody.dataUsingEncoding(NSUTF8StringEncoding)
	urlRequest!.HTTPBody =	sSoapMsg.dataUsingEncoding(NSUTF8StringEncoding)
	
	urlRequest!.setValue( "text/xml; charset=utf-8",	forHTTPHeaderField: "Content-Type" )
	urlRequest!.setValue( sMsgLen,						forHTTPHeaderField: "Content-Length" )
	urlRequest!.setValue( sSoapAction, 					forHTTPHeaderField: "SOAPAction" )
	
	// Build the completion block and send the request
	NSURLSession.sharedSession().dataTaskWithRequest (	urlRequest!,
		//	completion logic
			completionHandler: {
	
	 			(data, response, error) in
	 
				print( "Finished" )
				if let data = data, responseDetails = NSString(data: data, encoding: NSUTF8StringEncoding) {
					// Success
					print( "Response: \(responseDetails)" )
				}
				else {
					// Failure
					print( "Error: \(error)" )
				}
		
			}
		).resume()

	statusReport()
}



	

//======================================================================================================
public
func
tdLogin( sSrcIn: String, _ sAcctIn: String, _ sPwdIn: String ) {

	sUrl = "https://apis.tdameritrade.com/apps/100/LogIn"
	
	print( "control now lies within the tdLogin() method of TnHttpWorking" )


	var		sSrc	= sSrcIn
	
	var		sAcct	= sAcctIn
	
	var		sPwd	= sPwdIn
	

	urlRequest = NSMutableURLRequest( URL: NSURL( string:sUrl )! )
	
	urlRequest!.HTTPMethod = "POST"
	

	//	add parameter development/acquisition here

	sBody	=	"source=" + sSrc + "&version=1.0&userid=" + sAcct + "&password=" + sPwd
	
	urlRequest!.HTTPBody =	sBody.dataUsingEncoding(NSUTF8StringEncoding)
	
	urlRequest!.setValue( "text/xml; charset=utf-8",	forHTTPHeaderField: "Content-Type" )
	urlRequest!.setValue( "Mozilla/5.0", 				forHTTPHeaderField: "User-Agent" )
	urlRequest!.setValue( "en-US,en;q=0.5",				forHTTPHeaderField: "Accept-Language" )
	
	// Build the completion block and send the request
	NSURLSession.sharedSession().dataTaskWithRequest (	urlRequest!,
														//	completion logic
		completionHandler: {
			
			(data, response, error) in
			
			print( "Finished" )
			if let data = data, responseDetails = NSString(data: data, encoding: NSUTF8StringEncoding) {
				// Success
				print( "Response: \(responseDetails)" )
			}
			else {
				// Failure
				print( "Error: \(error)" )
			}
			
		}
		).resume()
	//	"/amtd/result"
	//	"/amtd/xml-log-in/session-id"
	//	"/amtd/xml-log-in/accounts/account/account-id"
	//	"//amtd/xml-log-in/accounts/account/company"
	//	"//amtd/xml-log-in/accounts/account/segment"
	
}



//======================================================================================================
public
func
getAWizzdle() {
	
	sUrl = "http://wsf.cdyne.com/WeatherWS/Weather.asmx?WSDL"
	
	urlRequest = NSMutableURLRequest( URL: NSURL( string:sUrl )! )
	
	urlRequest!.HTTPMethod = "GET"
	
	sBody	=	"ew http get wsdl test"

	// Build the completion block and send the request
	NSURLSession.sharedSession().dataTaskWithRequest (	urlRequest!,
	                                                  	//	completion logic
		completionHandler: {
			
			(data, response, error) in
			
			print( "Finished" )
			if let data = data, responseDetails = NSString(data: data, encoding: NSUTF8StringEncoding) {
				// Success
				print( "Response: \(responseDetails)" )
			}
			else {
				// Failure
				print( "Error: \(error)" )
			}
			
		}
		).resume()
	
	statusReport()
}
	




	
	
	
//====================================================================================================
public
func
getXml() {
	
	sUrl = "http://httpbin.org/xml"
	
	urlRequest = NSMutableURLRequest( URL: NSURL( string:sUrl )! )
	
	urlRequest!.HTTPMethod = "GET"
	
	sBody	=	"ew http get wsdl test"
	
	// Build the completion block and send the request
	NSURLSession.sharedSession().dataTaskWithRequest (	urlRequest!,
														//	completion logic
		completionHandler: {
			
			(data, response, error) in
			
			print( "Finished" )
			if let data = data, responseDetails = NSString(data: data, encoding: NSUTF8StringEncoding) {
				// Success
				print( "Response: \(responseDetails)" )
			}
			else {
				// Failure
				print( "Error: \(error)" )
			}
			
		}
		).resume()
	
	statusReport()
}

	




//===========================
public
func
statusReport() -> String {
	
	print ( "statusReport" )
	
	return "Hello!"
}



	
	

//	end of class
}
