//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLBH_2051010137_VoDinhKhang.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class LoaiThanhVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiThanhVien()
        {
            this.ThanhViens = new HashSet<ThanhVien>();
            this.PhanQuyen_LoaiThanhVien = new HashSet<PhanQuyen_LoaiThanhVien>();
        }
    
        public int MaLoaiTV { get; set; }
        public string Ten { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThanhVien> ThanhViens { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanQuyen_LoaiThanhVien> PhanQuyen_LoaiThanhVien { get; set; }
    }
}
