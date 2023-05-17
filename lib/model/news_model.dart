class News {
  final int newsId;
  final String category;
  final String newsTitle;
  final String userIcon;
  final String userName;
  final String time;
  final String imageURL;
  final String decription;

  News(
      {required this.newsId,
        required this.category,
        required this.newsTitle,
        required this.userName,
        required this.userIcon,
        required this.imageURL,
        required this.time,
        required this.decription,});

  static List<News> newsList = [
    News(
      newsId: 0,
      category: 'Thời sự',
      newsTitle: 'Tỷ lệ lãnh đạo chủ chốt là nữ trong bộ máy Chính phủ hiện nay như thế nào?',
      imageURL: 'assets/images/poster-2.png',
      userIcon: 'assets/images/icon-2.png',
      decription: "Những con số này được đề cập trong báo cáo của Chính phủ gửi Quốc hội về kết quả thực hiện các mục tiêu bình đẳng giới năm 2022. Báo cáo do Bộ trưởng Bộ Lao động - Thương binh và Xã hội Đào Ngọc Dung thay mặt Chính phủ và thừa ủy quyền Thủ tướng, ký. Chính phủ dẫn Báo cáo khoảng cách giới toàn cầu năm 2022 do Diễn đàn kinh tế thế giới công bố vào tháng 7/2022, cho thấy chỉ số xếp hạng về bình đẳng giới của Việt Nam năm 2022 là 83/146 quốc gia, tăng 4 bậc so với năm 2021. Trong đó các chỉ số về trao quyền cho phụ nữ, lĩnh vực sức khỏe và giáo dục có những bước tiến bộ rõ rệt. Trong lĩnh vực chính trị, Chính phủ đặt chỉ tiêu đến năm 2025 đạt 60% lãnh đạo chủ chốt là nữ ở các cơ quan quản lý Nhà nước và chính quyền địa phương các cấp. Tỷ lệ này đến năm 2030 phải đạt 75%, theo chỉ tiêu đề ra.",
      userName: 'Cây bút: Chris Ngo (Dân Trí)',
      time: '58 phút trước',
    ),
    News(
      newsId: 1,
      category: 'Thế giới',
      newsTitle: 'Đồng nghiệp bênh vực ba nhà khoa học tên lửa siêu vượt âm Nga',
      imageURL: 'assets/images/poster-3.png',
      userIcon: 'assets/images/icon-0.png',
      decription: "Các nhà khoa học Nga viết thư bênh vực ba đồng nghiệp bị bắt, cho rằng họ không tiết lộ những thông tin nhạy cảm về hệ thống tên lửa siêu vượt âm. Giới chức Nga hồi năm ngoái bắt hai nhà khoa học Anatoly Maslov và Alexander Shiplyuk với cáo buộc phản quốc. Truyền thông Siberia đưa tin tòa án ở Novosibirsk đã ra lệnh bắt nhà khoa học Valery Zvegintsev hồi tháng 4. Năm 2012, Maslov và Shiplyuk trình bày kết quả thử nghiệm thiết kế tên lửa siêu vượt âm tại hội thảo ở Tours, Pháp. Vào năm 2016, ba người cùng viết một chương sách về công nghệ phương tiện siêu vượt âm. Ngày 15/5, các nhà khoa học thuộc Viện Cơ học Lý thuyết và Ứng dụng của Viện Hàn lâm Khoa học Nga (RAS) khu vực Siberia viết thư ngỏ để bảo vệ ba đồng nghiệp nói trên. Chúng tôi biết họ đều là những người yêu nước và tử tế, không có khả năng làm những điều mà cơ quan điều tra nghi ngờ",
      userName: 'Cây bút: Anna Nguyen (VnExpress)',
      time: '10 giờ trước',
    ),
    News(
      newsId: 2,
      category: 'Tài chính - Kinh doanh',
      newsTitle: 'Nhân dân tệ xuống thấp nhất 5 tháng so với USD',
      imageURL: 'assets/images/poster-4.png',
      userIcon: 'assets/images/icon-1.png',
      decription: "Chiều nay, giá nhân dân tệ trên thị trường quốc tế giảm 0,2% so với USD, thấp nhất 5 tháng qua, do số liệu kinh tế Trung Quốc tuần này kém lạc quan. Tổng cộng từ đầu năm, mức giảm của nhân dân tệ là 1,2%. Theo đó, mỗi USD hiện đổi được 7 nhân dân tệ. Tại thị trường Trung Quốc, giá đồng tiền này hôm nay cũng giảm 0,2%, về 6,995 nhân dân tệ một USD. Nội tệ Trung Quốc yếu đi do hàng loạt số liệu tháng 4 như sản lượng tại nhà máy, doanh số bán lẻ, đầu tư vào tài sản cố định tăng chậm hơn dự báo. Bên cạnh đó, nhân dân tệ cũng có xu hướng mất giá trong quý này khi dòng vốn rời đi và người dân tăng cường ra nước ngoài du lịch.",
      userName: 'Cây bút: Ben Tran (VnExpress)',
      time: '5 ngày trước',
    ),
    News(
      newsId: 3,
      category: 'Thể thao',
      newsTitle: 'Newcastle giành vị trí thứ ba từ Man Utd',
      imageURL: 'assets/images/poster-0.png',
      userIcon: 'assets/images/icon-0.png',
      decription: "Bất bại bốn trận gần nhất, trong đó có ba chiến thắng, nhưng Man Utd được dự đoán gặp nhiều khó khăn khi làm khách của Newcastle - đội thường xuyên có mặt trong nhóm đua tranh top 4 mùa này. Và 90 phút trên sân St James Park chứng tỏ điều đó. Đội chủ nhà áp đảo với 15 lần dứt điểm, trong đó có sáu pha trúng đích. Còn Man Utd chỉ dứt điểm bốn lần, với vỏn vẹn một cú sút trúng khung thành từ Antony. Newcastle chơi trên chân từ những phút đầu. Những pha lên bóng của họ đa dạng và tiềm ẩn nguy cơ từ hai cánh. Nếu dứt điểm tốt hơn, thầy trò Eddie Howe đã sớm có bàn khi hàng thủ Man Utd chơi như mơ ngủ. Điểm sáng duy nhất bên phía đội khách là thủ thành David De Gea, người vẫn trình diễn những pha cứu thua ngoạn mục. Đáng kể nhất là phút 15, khi De Gea liên tiếp cản hai pha dứt điểm cận thành của Alexander Isak rồi Joseph Willock. Cuối hiệp một, Newcastle tiếp tục bỏ lỡ một cơ hội mười mươi. Lần này, De Gea không kịp phản xạ, nhưng cú sút trái phá ở cự ly gần của Willock vọt xà gang tấc. Trái lại, những pha lên bóng của đội khách tương đối rời rạc. Erik ten Hag đẩy Scott McTominay lên cao để tận dụng phong độ của tiền vệ này, người vừa ghi bốn bàn trong hai trận khoác áo tuyển Scotland, đồng thời kéo Bruno Fernandes xuống thấp để làm bóng, chữa cháy cho sự vắng mặt của Casemiro. Tuy nhiên, ý đồ này không mấy hiệu quả bởi McTominay lẫn Wout Weghorst đều khá vụng về. Sự nhiệt tình của họ chỉ giúp Man Utd phòng ngự từ xa tốt hơn, như tình huống mở ra cơ hội để Weghorst sút chệch cột đầu trận.",
      userName: 'Cây bút: Anna Nguyen (VnExpress)',
      time: '8 giờ trước',
    ),
    News(
      newsId: 4,
      category: 'Khoa học',
      newsTitle: 'Thụy Điển phát triển turbine gỗ giúp giảm 90% khí thải',
      imageURL: 'assets/images/poster-1.png',
      userIcon: 'assets/images/icon-1.png',
      decription: "Công ty năng lượng tái tạo RWE Renewables và hãng phát triển turbine gió Modvion của Thụy Điển đang hợp tác để chế tạo những turbine gỗ công suất 6 MW đầu tiên cho các trang trại điện gió trên đất liền. Thỏa thuận này là một phần trong kế hoạch đầy tham vọng của RWE nhằm tăng năng lực sản xuất điện sạch đồng thời cắt giảm lượng khí thải carbon, theo một thông cáo báo chí của công ty vào tuần này. Chúng tôi thấy rằng các turbine dạng module bằng gỗ nhiều lớp có tiềm năng thị trường đáng kể và có thể góp phần giảm chi phí sản xuất điện tái tạo mới bằng cách thay thế thép và bê tông bằng gỗ thân thiện với môi trường và thích ứng với khí hậu, chuyên gia Lars Borisson tại RWE Renewables cho biết. Theo Maria-Lina Hedlund, Giám đốc tài chính và quyền Giám đốc điều hành tại Modvion, công nghệ turbine gỗ của họ có thể giúp ngành công nghiệp điện gió giảm đáng kể lượng khí thải, đồng thời tạo điều kiện cho các turbine cao hơn để đón gió mạnh hơn. Gỗ là vật liệu tái tạo cho phép giảm triệt để lượng khí thải. Theo phân tích vòng đời của Viện nghiên cứu Thụy Điển RISE, việc sử dụng turbine gỗ sẽ giúp giảm 90% lượng khí thải so với turbine thép thông thường có cùng chiều cao và tải trọng. Gỗ cũng lưu trữ carbon nên tác động khí hậu của turbine gỗ là thấp hơn, Hedlund giải thích. Bằng cách sử dụng vật liệu gỗ, turbine trở nên âm tính carbon vì nó lưu trữ nhiều carbon hơn lượng thải ra trong quá trình sản xuất.",
      userName: 'Cây bút: Ben Tran (VnExpress)',
      time: '2 ngày trước',
    ),
    News(
      newsId: 5,
      category: 'Showbiz',
      newsTitle: 'Matty Healy - ca sĩ vướng tin đồn hẹn hò Taylor Swift',
      imageURL: 'assets/images/poster-5.png',
      userIcon: 'assets/images/icon-3.png',
      decription: 'Matty Healy, thành viên nhóm The 1975, từng hợp tác làm nhạc với Taylor Swift nhiều năm trước khi vướng tin hẹn hò. Theo People, ngày 16/5, Swift cùng Healy được bắt gặp rời phòng thu âm Electric Lady Studios ở Greenwich Village, New York (Mỹ). Trước đó, nam nghệ sĩ từng tham dự ba đêm nhạc thuộc The Eras Tour ở Nashville, khởi nguồn cho tin đồn hẹn hò giọng ca Blank Space. Mối quan hệ giữa Healy và "Công chúa nhạc đồng quê" bắt đầu từ năm 2014. Theo Elle, cả hai gặp nhau lần đầu trong buổi biểu diễn của The 1975 tại Los Angeles, khi Swift đi cùng Ellie Goulding và Selena Gomez.',
      userName: 'Cây bút: Chris Ngo (Dân Trí)',
      time: '2 phút trước',
    ),
    News(
      newsId: 6,
      category: 'Giáo dục',
      newsTitle: 'Quỹ Hy Vọng tài trợ xây phòng học mầm non ở vĩ tuyến 13',
      imageURL: 'assets/images/poster-6.png',
      userIcon: 'assets/images/icon-0.png',
      decription: "PHÚ YÊN - Điểm trường lẻ của Trường mầm non Sơn Nguyên cách trung tâm huyện Sơn Hoà khoảng 10 km, nhiều hạng mục đã hư hỏng, xuống cấp nghiêm trọng. Điểm trường nằm ở khu vực thôn Nguyên Xuân, xã Sơn Nguyên (huyện Sơn Hoà), cách trung tâm huyện 10 km. Trường được xây dựng từ năm 2006 với quy mô ban đầu là một phòng học chung rộng khoảng 50 m2. Năm 2015, trường tổ chức bán trú nên xây dựng thêm nhà kho và phòng ăn cho học sinh và giáo viên. Đến nay, nhiều hạng mục tại trường đã xuống cấp như phần nền sụt lún; đòn tay ở phần mái mục nát được sửa chữa hàng năm để đảm bảo an toàn. Ngoài ra, tường xung quanh trát xi măng có hiện tượng nứt nẻ, không đảm bảo an toàn.",
      userName: 'Cây bút: Anna Nguyen (VnExpress)',
      time: '2 giờ trước',
    ),
    News(
      newsId: 7,
      category: 'Phát luật',
      newsTitle: 'Cựu chủ tịch Bình Thuận Nguyễn Ngọc Hai lĩnh 5 năm tù',
      imageURL: 'assets/images/poster-7.png',
      userIcon: 'assets/images/icon-1.png',
      decription: "Hà Nội - Ông Nguyễn Ngọc Hai, cựu chủ tịch Bình Thuận, có vai trò chính trong sai phạm giao đất công giá rẻ cho doanh nghiệp, gây thiệt hại 45 tỷ đồng, song không vụ lợi. Chiều 17/5, quan điểm trên được TAND Hà Nội đưa ra sau 8 ngày xét xử và nghị án; tuyên phạt ông Hai, 61 tuổi, mức án 5 năm tù về tội Vi phạm quy định về quản lý, sử dụng tài sản Nhà nước gây thất thoát, lãng phí. Cùng tội danh, 10 cựu lãnh đạo tỉnh và sở ngành Bình Thuận bị phạt 18 tháng tù treo đến 5 năm tù. Riêng ông Nguyễn Văn Phong, cựu phó chủ tịch Bình Thuận, bị phạt 2 năm tù về hành vi Thiếu trách nhiệm gây hậu quả nghiêm trọng.",
      userName: 'Cây bút: Ben Tran (VnExpress)',
      time: '2 ngày trước',
    ),
    News(
      newsId: 8,
      category: 'Sức khỏe - Đời sống',
      newsTitle: 'Nhiều địa phương thiếu vaccine tiêm chủng mở rộng',
      imageURL: 'assets/images/poster-8.png',
      userIcon: 'assets/images/icon-3.png',
      decription: "TP HCM cùng nhiều tỉnh thành hết vaccine miễn phí để tiêm cho trẻ, cầu cứu Bộ Y tế phân phối, song theo quy định mới, các tỉnh phải tự lo. Ngày 16/5, đại diện Sở Y tế TP HCM cho biết các cơ sở tiêm chủng trên địa bàn đã hết hoàn toàn vaccine DPT-VGB-HiB và DPT để tiêm miễn phí. Theo đó, vaccine DPT-VGB-HiB (5 trong 1 khả năng phòng bệnh bạch hầu, ho gà, uốn ván, viêm gan B, viêm phổi do Hib và viêm màng não mủ do Hib) được cấp lần gần nhất vào tháng 10/2022, đã hết từ đầu tháng 3.",
      userName: 'Cây bút: Chris Ngo (Dân Trí)',
      time: '58 phút trước',
    ),
    News(
      newsId: 9,
      category: 'Du lịch',
      newsTitle: 'Núi thiêng có loài cây đa ở cao nguyên Di Linh',
      imageURL: 'assets/images/poster-9.png',
      userIcon: 'assets/images/icon-0.png',
      decription: "Núi Brăh Yàng ở cao nguyên Di Linh được tôn vinh là nơi ở của các vị thần, có rừng nguyên sinh với loài đa do dễ ký sinh, hút chết cây chủ. Brăh Yàng thuộc thôn Ka La, xã Bảo Thuận, là ngọn núi cao nhất huyện Di Linh, Lâm Đồng, nằm trên mực nước biển 1.879 m. Bao quanh là rừng nguyên sinh, dãy núi đá trùng điệp và những khe nước trong vắt. Ngọn núi gắn liền với nếp sống của người dân tộc K’Ho Sre ở cao nguyên Di Linh. Anh Nhoi Mur, người K’Ho Sre sinh sống tại xã Liên Đầm, cho biết núi Brăh Yàng gắn liền với câu chuyện về chàng thanh niên tên Brah lấy tiên trên núi và trở thành Brăh Yàng (thần Brăh). Theo tiếng bản địa, Brăh Yàng có nghĩa là nơi ở của thần (Yàng), mang ý nghĩa linh thiêng. Người địa phương tin rằng Brăh Yàng là vị thần sức khỏe có tài quy phục dã thú và bảo vệ con người cùng vạn vật. Để đến được đỉnh núi thiêng này cần có niềm tin, sức bền lẫn thể lực.",
      userName: 'Cây bút: Anna Nguyen (VnExpress)',
      time: '8 giờ trước',
    ),
  ];
}
