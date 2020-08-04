//
//  File.swift
//  
//
//  Created by Shaun Austin on 03/08/2020.
//

import Foundation

public enum Node :Equatable {
	
	indirect case element(String, [String: String], Node?)
	
	case text(String)
	
	case comment(String)
	
	case documentType(String)
	
	case fragment([Node])
	
	case trim
}

extension Node: ExpressibleByArrayLiteral {
	public init(arrayLiteral elements: Node...) {
		let flattened = elements
			.flatMap { node -> [Node] in
				switch node {
				case .fragment(let children):
					return children
				default:
					return [node]
				}
		}

		self = .fragment(flattened)
	}
}

extension Node: ExpressibleByStringLiteral {
	public init(stringLiteral value: String){
		self = .text(value)
	}
}

private extension Node {
	var isFragment: Bool {
		switch self {
		case .fragment:
			return true
		default:
			return false
		}
	}
}

extension Node: TextOutputStreamable {
	public func write<Target>(to target: inout Target) where Target : TextOutputStream {
		var flag = false
		var depth = 0

		write(to: &target, depth: &depth, didVisitTrim: &flag)
	}

	private func write<Target>(to target: inout Target, depth: inout Int, didVisitTrim: inout Bool) where Target : TextOutputStream {
		defer {
			if !isFragment {
				didVisitTrim = self == .trim
			}
		}

		switch self {
		case let .element(name, attributes, child):
			if !didVisitTrim {
				target.write("\n")
				target.write(String(repeating: "\t", count: depth))
			}

			target.write("<")
			target.write(name)

			for (key, value) in attributes.sorted(by: { $0 < $1 }) {
				target.write(" ")
				target.write(key)

				guard value != "" else { continue }

				target.write("=\"")
				target.write(value)
				target.write("\"")
			}

			if let child = child {
				target.write(">")

				didVisitTrim = false

				depth += 1
				child.write(to: &target, depth: &depth, didVisitTrim: &didVisitTrim)
				depth -= 1

				if !didVisitTrim {
					target.write("\n")
					target.write(String(repeating: "\t", count: depth))
				}

				target.write("</")
				target.write(name)
				target.write(">")
			} else {
				target.write("/>")
			}
		case let .text(value):
			if !didVisitTrim {
				target.write("\n")
				target.write(String(repeating: "\t", count: depth))
			}

			target.write(value)
		case let .comment(value):
			target.write("<!-- ")
			target.write(value)
			target.write(" -->")
		case let .documentType(name):
			target.write("<!DOCTYPE ")
			target.write(name)
			target.write(">")
		case let .fragment(children):
			for child in children {
				child.write(to: &target, depth: &depth, didVisitTrim: &didVisitTrim)
			}
		case .trim:
			break
		}
	}
}
