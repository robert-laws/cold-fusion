component
{
	this.myName = 'item name...';
	
	public any function init( string itemName = "" )
	{
		variables.item = itemName;
		return this;
	}

	public static function sayName() {
		return 'This is the Item Component';
	}

	public any function getItem()
	{
		if( variables.item.len() )
		{
			return "#variables.item# has been created!";
		}
		else 
		{
			return "No item created!";
		}
	}
}