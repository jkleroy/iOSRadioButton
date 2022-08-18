#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList iOS
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyFileLibReveal
					AppliesTo = 1
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Frameworks
					FolderItem = Li4vLi4vLi4vLi4vTGlicmFyeS9BcHBsaWNhdGlvbiUyMFN1cHBvcnQvUmV2ZWFsL1JldmVhbFNlcnZlci9SZXZlYWxTZXJ2ZXIueGNmcmFtZXdvcmsvaW9zLWFybTY0X2kzODZfeDg2XzY0LXNpbXVsYXRvci9SZXZlYWxTZXJ2ZXIuZnJhbWV3b3JrLw==
				End
				Begin SignProjectStep Sign
				End
			End
#tag EndBuildAutomation
