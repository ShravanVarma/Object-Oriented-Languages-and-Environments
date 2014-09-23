package RMI;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class Client {
	
	private Client(){}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String host = (args.length <1) ? null : args[0];
		try {
			Registry registry = LocateRegistry.getRegistry(host);
			Hello stub = (Hello) registry.lookup("Hello");
			String response = stub.sayHello();
			System.out.println("The Response:" + response);
			
		}catch (Exception e){
			System.err.println("Client Exception :" + e.toString());
			e.printStackTrace();
		}

	}

}
