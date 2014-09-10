using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.Dao
{
	public class AssociationDao
	{
		private List<Association> _get()
		{
			return (from t in DataContextHelper.CurrentContext.Associations.AsParallel()
					  orderby t.Name
					  select t).ToList<Association>();
		}

		public List<Association> Get(bool enabledOnly)
		{
			return (from t in this._get()
					  where (!enabledOnly || t.Enabled)
					  select t).ToList();
		}

		public Association GetBy(Guid associationId, bool enabledOnly)
		{
			return this.Get(enabledOnly).FirstOrDefault<Association>(a => (a.ID == associationId));
		}

		public Association Update(Association association)
		{
			Association value = DataContextHelper.CurrentContext.Associations.FirstOrDefault<Association>(n => n.ID.Equals(association.ID));
			if (value != null)
			{
				value.Name = association.Name.Trim();
				value.Website = association.Website.Trim();
				value.Description = association.Description.Trim();
				value.Enabled = association.Enabled;
				value.Modified = DateTime.Now;
				DataContextHelper.CurrentContext.SubmitChanges();
			}
			return value;
		}

		public Association Insert(Association association)
		{
			association.Enabled = true;
			association.ID = Guid.NewGuid();
			association.Created = DateTime.Now;
			association.Modified = DateTime.Now;
			DataContextHelper.CurrentContext.Associations.InsertOnSubmit(association);
			DataContextHelper.CurrentContext.SubmitChanges();
			return association;
		}

		public void Delete(Association association)
		{
			DataContextHelper.CurrentContext.Associations.DeleteOnSubmit(association);
			DataContextHelper.CurrentContext.SubmitChanges();
		}
	}
}