import Foundation

/// A container item with static children.
public class KKStaticContainerItem: KKBasicContentItem {

	var staticChildren: [KKBasicContentItem]

	/// Creates an instance.
	///
	/// - Parameter identifier: Identifier of the item.
	/// - Parameter title: Title of the item.
	/// - Parameter children: Children of the item.
	public init(identifier: String, title: String, children: [KKBasicContentItem]) {
		self.staticChildren = children
		super.init(identifier: identifier)
		isPlayable = false
		isContainer = true
		self.title = title
		self.children = children
	}

	/// :nodoc:
	public override func loadChildren(callback: @escaping (Error?) -> Void) throws {
		self.children = self.staticChildren
		callback(nil)
	}
}
