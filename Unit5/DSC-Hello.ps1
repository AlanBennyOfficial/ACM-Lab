Configuration HelloWorldConfig{
	Node "localhost" {
		File myfile {
			DestinationPath = "C:\GitHub\ACM-Lab\Unit5\Hello.txt"
			contents = "Hello from DSC!"
			Ensure = "Present"

		}
	}
}
