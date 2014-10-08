using System;
using System.ComponentModel;

namespace MyLeagues.BO
{
	[Serializable()]
	public enum RoleType { None, Admin, User }

	[Serializable()]
	public enum CrudType { None, Create, Read, Update, Delete }

	[Serializable()]
	[DefaultValue(MessageType.None)]
	public enum MessageType { None, Information, Warning, Error }

	[Serializable()]
	public enum ButtonActionType { None, Cancel, Create, Save, Delete }
}