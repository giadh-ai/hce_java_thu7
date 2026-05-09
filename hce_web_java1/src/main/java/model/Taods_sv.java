package model;
import java.util.ArrayList;
import java.util.List;
import model.Sinhvien;
public class Taods_sv {

    public static List<Sinhvien> getAllSinhvien() {
        List<Sinhvien> list = new ArrayList<>();
        list.add(new Sinhvien("SV001","Nguyễn Văn An",
        "https://i.pravatar.cc/80?img=1",
        "CNTT01","an@gmail.com","0901111111"));

        list.add(new Sinhvien("SV002","Trần Thị Bình",
                "https://i.pravatar.cc/80?img=2",
                "CNTT01","binh@gmail.com","0902222222"));

        list.add(new Sinhvien("SV003","Lê Minh Cường",
                "https://i.pravatar.cc/80?img=3",
                "CNTT02","cuong@gmail.com","0903333333"));

        list.add(new Sinhvien("SV004","Phạm Thị Dung",
                "https://i.pravatar.cc/80?img=4",
                "CNTT02","dung@gmail.com","0904444444"));

        list.add(new Sinhvien("SV005","Hoàng Gia Huy",
                "https://i.pravatar.cc/80?img=5",
                "CNTT03","huy@gmail.com","0905555555"));

        list.add(new Sinhvien("SV006","Đỗ Thanh Lan",
                "https://i.pravatar.cc/80?img=6",
                "CNTT03","lan@gmail.com","0906666666"));

        list.add(new Sinhvien("SV007","Võ Quốc Nam",
                "https://i.pravatar.cc/80?img=7",
                "CNTT04","nam@gmail.com","0907777777"));

        list.add(new Sinhvien("SV008","Bùi Khánh Ngọc",
                "https://i.pravatar.cc/80?img=8",
                "CNTT04","ngoc@gmail.com","0908888888"));

        list.add(new Sinhvien("SV009","Nguyễn Minh Phúc",
                "https://i.pravatar.cc/80?img=9",
                "CNTT05","phuc@gmail.com","0909999999"));

        list.add(new Sinhvien("SV010","Trương Mỹ Tiên",
                "https://i.pravatar.cc/80?img=10",
                "CNTT05","tien@gmail.com","0910000000"));
return list;
    }


    
}