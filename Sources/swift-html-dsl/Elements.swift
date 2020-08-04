//
//  File.swift
//  
//
//  Created by Shaun Austin on 03/08/2020.
//

import Foundation

public func html(
	
	attributes: [String: String] = [:],
	lang : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
	
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["lang"] = lang
	
	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("html", attributes, children().asNode())
}

public func head(
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("head", attributes, children().asNode())
}

public func body(
	
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
	
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`
	
	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("body", attributes, children().asNode())
}

public func div(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]

	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("div", attributes, children().asNode())
}

public func h1(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("h1", attributes, children().asNode())
}

public func h2(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("h2", attributes, children().asNode())
}

public func title(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("title", attributes, children().asNode())
}

public func canvas(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	width : String? = nil,
	height : String? = nil,
	style : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`
	attributes["width"] = width
	attributes["height"] = height
	attributes["style"] = style

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("canvas", attributes, children().asNode())
}

public func nav(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("nav", attributes, children().asNode())
}

public func a(
	attributes: [String: String] = [:],
	href : String? = nil,
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["href"] = href
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("a", attributes, children().asNode())
}

public func link(
	attributes: [String: String] = [:],
	style : String? = nil,
	rel : String? = nil,
	href : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["style"] = style
	attributes["rel"] = rel
	attributes["href"] = href

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("link", attributes, children().asNode())
}

public func ul(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("ul", attributes, children().asNode())
}

public func li(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("li", attributes, children().asNode())
}

public func header(
	attributes: [String: String] = [:],
	`class` : String? = nil,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attributes: [String: String] = [:]
	
	attributes["class"] = `class`

	for (key, value) in attributes {
		attributes[key] = value
	}
	
	return .element("header", attributes, children().asNode())
}
