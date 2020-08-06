//
//  File.swift
//  
//
//  Created by Shaun Austin on 03/08/2020.
//

import Foundation

public func html(
	
	lang : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
	
) -> Node {
	var attr: [String: String] = [:]
	
	attr["lang"] = lang
	
	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("html", attr, children().asNode())
}

public func head(
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("head", attr, children().asNode())
}

public func body(
	
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
	
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`
	
	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("body", attr, children().asNode())
}

public func div(
	`class` : String? = nil,
	id : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]

	attr["class"] = `class`
	attr["id"] = id

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("div", attr, children().asNode())
}

public func h1(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("h1", attr, children().asNode())
}

public func h2(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("h2", attr, children().asNode())
}

public func title(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("title", attr, children().asNode())
}

public func canvas(
	`class` : String? = nil,
	width : String? = nil,
	height : String? = nil,
	style : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`
	attr["width"] = width
	attr["height"] = height
	attr["style"] = style

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("canvas", attr, children().asNode())
}

public func nav(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("nav", attr, children().asNode())
}

public func a(
	href : String? = nil,
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["href"] = href
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("a", attr, children().asNode())
}

public func link(
	style : String? = nil,
	rel : String? = nil,
	href : String? = nil,
	integrity : String? = nil,
	crossorigin : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["style"] = style
	attr["rel"] = rel
	attr["href"] = href
	attr["integrity"] = integrity
	attr["crossorigin"] = crossorigin

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("link", attr, children().asNode())
}

public func ul(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("ul", attr, children().asNode())
}

public func li(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("li", attr, children().asNode())
}

public func header(
	`class` : String? = nil,
	id: String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`
	attr["id"] = id

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("header", attr, children().asNode())
}

public func meta(
	
	name : String? = nil,
	content : String? = nil,
	charset : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
	
) -> Node {
	var attr: [String: String] = [:]
	
	attr["name"] = name
	attr["content"] = content
	attr["charset"] = charset

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("meta", attr, children().asNode())
}

public func script(
	src : String? = nil,
	integrity : String? = nil,
	crossorigin : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["src"] = src
	attr["integrity"] = integrity
	attr["crossorigin"] = crossorigin

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("script", attr, children().asNode())
}

public func button(
	type : String? = nil,
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["type"] = type
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("button", attr, children().asNode())
}

public func span(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("span", attr, children().asNode())
}

public func p(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("p", attr, children().asNode())
}

public func br(
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("br", attr, children().asNode())
}

public func img(
	`class` : String? = nil,
	src: String? = nil,
	alt: String? = nil,
	
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	
	var attr: [String: String] = [:]
	
	attr["class"] = `class`
	attr["src"] = src
	attr["alt"] = alt
	
	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("img", attr, children().asNode())
}

public func footer(
	`class` : String? = nil,
	attributes: [String: String] = [:],
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([]) }
) -> Node {
	var attr: [String: String] = [:]
	
	attr["class"] = `class`

	for (key, value) in attributes {
		attr[key] = value
	}
	
	return .element("footer", attr, children().asNode())
}


public func doctype(
	name : String,
	@NodeBuilder children: () -> ConvertableNode = { Node.fragment([] ) }
) -> Node {
	
	return .documentType(name, children().asNode())
}
