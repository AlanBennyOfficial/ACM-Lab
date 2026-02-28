configuration HelloWorldConfig{
	Node "localhosts" {
		File myfile {
			DestinationPath = "C:\GitHub\ACM-Lab\Unit5\Hello.txt"
			Contents = "Hello from DSC!"
			Ensure = "Present"

		}
	}
}
