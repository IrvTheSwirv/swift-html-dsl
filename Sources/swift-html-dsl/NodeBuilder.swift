//
//  File.swift
//  
//
//  Created by Shaun Austin on 03/08/2020.
//

import Foundation

public protocol ConvertableNode {
	func asNode() -> Node
}

extension Node: ConvertableNode {
	public func asNode() -> Node {
		self
	}
}

extension String: ConvertableNode {
	public func asNode() -> Node {
		.text(self)
	}
}

extension Array: ConvertableNode where Element: ConvertableNode {
	public func asNode() -> Node {
		.fragment(map { $0.asNode() })
	}
}

@_functionBuilder
public struct NodeBuilder {
	static func buildBlock(_ segments: Node...) -> Node {
		.fragment(segments)
	}
	
	public static func buildIf(_ component: Node?) -> Node {
		  component ?? []
	  }

	  public static func buildEither(first: Node) -> Node {
		  first
	  }

	  public static func buildEither(second: Node) -> Node {
		  second
	  }
}

extension NodeBuilder {
	public static func buildBlock(_ components: ConvertableNode...) -> Node {
		.fragment(components.map { $0.asNode() })
	}
}


