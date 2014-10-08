using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.Dao
{
	public class DivisionTypeDao
	{
		private List<DivisionType> _get()
		{
			return (from t in DataContextHelper.CurrentContext.DivisionTypes
					  orderby t.Name
					  select t).ToList<DivisionType>();
		}

		public List<DivisionType> Get(bool enabledOnly)
		{
			return (from t in this._get()
					  where (!enabledOnly || t.Enabled)
					  select t).ToList();
		}

		public DivisionType GetBy(Guid divisionTypeId, bool enabledOnly)
		{
			return this.Get(enabledOnly).FirstOrDefault<DivisionType>(a => (a.ID == divisionTypeId));
		}

		public DivisionType Update(DivisionType divisionType)
		{
			DivisionType value = DataContextHelper.CurrentContext.DivisionTypes.FirstOrDefault<DivisionType>(n => n.ID.Equals(divisionType.ID));
			if (value != null)
			{
				value.Name = divisionType.Name.Trim();
				value.Description = divisionType.Description.Trim();
				value.Enabled = divisionType.Enabled;
				value.Modified = DateTime.Now;
				DataContextHelper.CurrentContext.SubmitChanges();
			}
			return value;
		}

		public DivisionType Insert(DivisionType divisionType)
		{
			divisionType.Enabled = true;
			divisionType.ID = Guid.NewGuid();
			divisionType.Created = DateTime.Now;
			divisionType.Modified = DateTime.Now;
			DataContextHelper.CurrentContext.DivisionTypes.InsertOnSubmit(divisionType);
			DataContextHelper.CurrentContext.SubmitChanges();
			return divisionType;
		}

		public void Delete(DivisionType divisionType)
		{
			DataContextHelper.CurrentContext.DivisionTypes.DeleteOnSubmit(divisionType);
			DataContextHelper.CurrentContext.SubmitChanges();
		}
	}
}