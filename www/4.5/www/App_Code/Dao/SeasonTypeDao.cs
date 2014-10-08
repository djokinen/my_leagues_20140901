using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.Dao
{
	public class SeasonTypeDao
	{
		private List<SeasonType> _get()
		{
			return (from t in DataContextHelper.CurrentContext.SeasonTypes.AsParallel()
					  orderby t.Name
					  select t).ToList<SeasonType>();
		}

		public List<SeasonType> Get(bool enabledOnly)
		{
			return (from t in this._get()
					  where (!enabledOnly || t.Enabled)
					  select t).ToList();
		}

		public SeasonType GetBy(Guid seasonTypeId, bool enabledOnly)
		{
			return this.Get(enabledOnly).FirstOrDefault<SeasonType>(a => (a.ID == seasonTypeId));
		}

		public SeasonType Update(SeasonType seasonType)
		{
			SeasonType value = DataContextHelper.CurrentContext.SeasonTypes.FirstOrDefault<SeasonType>(n => n.ID.Equals(seasonType.ID));
			if (value != null)
			{
				value.Name = seasonType.Name.Trim();
				value.Description = seasonType.Description.Trim();
				value.Enabled = seasonType.Enabled;
				value.Modified = DateTime.Now;
				DataContextHelper.CurrentContext.SubmitChanges();
			}
			return value;
		}

		public SeasonType Insert(SeasonType seasonType)
		{
			seasonType.Enabled = true;
			seasonType.ID = Guid.NewGuid();
			seasonType.Created = DateTime.Now;
			seasonType.Modified = DateTime.Now;
			DataContextHelper.CurrentContext.SeasonTypes.InsertOnSubmit(seasonType);
			DataContextHelper.CurrentContext.SubmitChanges();
			return seasonType;
		}

		public void Delete(SeasonType seasonType)
		{
			DataContextHelper.CurrentContext.SeasonTypes.DeleteOnSubmit(seasonType);
			DataContextHelper.CurrentContext.SubmitChanges();
		}
	}
}