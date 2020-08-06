import XCTest
@testable import swift_html_dsl




final class swift_html_dslTests: XCTestCase {
    func testExample() {
		
	let doc =
		doctype(name: "html") {
			
			html(lang: "en-GB") {
		
		head {
			title { "App HTML Template" }
			meta(name:"viewport", content:"width=device-width, initial-scale=1")
			link(style: "text/css", rel: "stylesheet", href: "css/styles.css")
		}
		
		body(class: "bodyStyle") {
			header(class: "relative fix") {
				div(class: "section-bg overlay-bg") {
					
					canvas(width: "1084", height: "688", style: "position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; z-index: -1;")
					
				}
				nav(class: "navBar") {
					div(class: "container") {
						div(class: "navBarHeader")
						{
							a(href: "#", class: "navBarBranding") {
								h2(class: "logoText") {
									"appcorp"
								}
							}
						}
						div(class: "navBarRight", id: "mainmenu") {
							ul {
								li {
									a (href: "#home") { "Home" }
								}
							}
						}
					}
				}
				br()
			}
			
			div()
		}
			}
			
		}
		
		
		print(String(describing: doc))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
