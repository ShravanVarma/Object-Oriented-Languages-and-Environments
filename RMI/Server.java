package RMI;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

public class Server implements Hello {
	
	public Server(){}

	@Override
	public String sayHello() {
		// TODO Auto-generated method stub
		return "Hello, I am from freaking Server";
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try{
			Server obj = new Server();
			Hello stub = (Hello) UnicastRemoteObject.exportObject(obj,0);
			Registry registry = LocateRegistry.getRegistry();
			registry.bind("Hello", stub);
			System.err.println("Hey this is Server and I am freaking Ready!!!!");
		} catch (Exception e){
			System.err.println("OOps Server Exception: "+ e.toString());
			e.printStackTrace();
		}

	}

}
