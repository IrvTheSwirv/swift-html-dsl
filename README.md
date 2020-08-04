# An HTML DSL using SwiftUI style function builders

This is pretty much a WIP as part of something I'm working on. Wanting to build an extremely fast and lightweight HTML generator but using SwiftUI type code rather than using a template engine. 

I don't intend this to be a feature complete library covering the entire HTML spec initially but may get there eventually. But for now it siuts my needs to be able to use:

```swift

let doc = html {
	
	head {
		link(style: "text/css", rel: "stylesheet", href: "css/styles.css")
	}
	
	body {
		header {
			h1 {
				"Hello HTML DSL World" 
			}
		}
		
		div {
			p {
				"Here is some information about swift "
				a(href: "https://forums.swift.org/t/function-builders/25167"){
					"Function Builders"
				}
				"that make this code possible"
			}
			
			p {
				"This is some more text"
			}
		}

	}
}
```

[function builders]: https://github.com/apple/swift-evolution/blob/9992cf3c11c2d5e0ea20bee98657d93902d5b174/proposals/XXXX-function-builders.md
