#import "template.typ": template

#show: template

= Introduction

Tên gọi: Behaviour-based incentive model for legitimacy claim

== Motivation

- Động lực chính đến từ miền dịch thuật và câu hỏi đó là làm thế nào trong môi trường internet ta có thể chứng minh rằng tác phẩm đó có tính chính danh hay không. => Để chứng minh thì họ cần có cam kết thông qua yếu tố tài chính, song thế là chưa đủ. Ta cần có xây dựng cơ chế để có thể cho người khác có cơ hội chứng minh điều ngược lại và thay vì gỡ bỏ ta chỉ việc thay đổi trạng thái.

- Luật bản quyền khẳng định quyền hợp pháp của tác giả, luật sở hữu nhấn mạnh quyền lợi của người sở hữu. Song một tác phẩm khi được đăng tải trên internet không chịu nhiều ảnh hưởng của những thứ đó, điều này cũng được chỉ rõ trong đạo luật DMCA.

- Vậy nếu internet là một cộng đồng phi tập trung vậy thì nên thiết lập một cơ chế sao cho thay vì khẳng định quyền sở hữu hay quyền tác giả đối với một tác phẩm, thì ta nên đánh giá liệu tác phẩm đó có được cộng đồng công nhận và tiếp tục tồn tại hay không.

- Khẳng định đối tượng mà trò chơi xoay quanh chính là tính chính danh của tác phẩm, không phải bàn quyền (legitimacy vs ownership). Một tác phẩm có thể bị rút lại theo pháp lý tuy nhiên trong mạng lưới thì nó vẫn được xem là hợp lệ cho đến khi có người mở tranh chấp và nhận được phán quyết từ trọng tài được chọn ra từ cộng đồng. Một tác phẩm nên phân biệt giữa authorship, ownership và legitimacy. Trong đó có nghiên cứu về content trustworthy của veracity rất gần với nghiên cứu.

Vì sao incentive model này phù hợp? Vì đã có nghiên cứu cực kỳ gần với nghiên cứu hiện tại và nó đã chứng minh tính khả thi

Vấn đề tập trung vào legitimacy của tác phẩm. Ở đây legitimacy đại diện cho việc tài sản số này có được cộng đồng đó thừa nhận hay không.

Động lực nằm ở vấn đề dịch thuật, một bản dịch có thể có nhiều người tham gia nhưng nếu thiếu việc ghi nhận công trạng hoặc bản dịch phi pháp thì việc loại bỏ nó sẽ do cộng đồng quyết định thông qua cơ chế xử lý tranh chấp. Sự thừa nhận của cộng đồng về việc nó có nên tiếp tục tồn tại hay không chính là yếu tố khiến nó khác với luật bản quyền.

=> Cộng đồng sẽ quyết định việc lời khẳng định có được tồn tại hay không.

== Problem Statement

- Làm sao để thiết lập một cơ chế mà bất ký ai cũng có thể đưa ra lời khẳng định để cộng đồng tin tưởng về một tác phẩm.

- Làm sao để phát hiện dấu hiệu bất thường trong một tranh chấp và xử lý nó.

== Research Gap

Đã có nhiều nghiên cứu về việc đặt khoản thế chấp, cơ chế phân xử dựa theo vai trò và sử dụng danh tiếng để tạo ảnh hưởng bên cạnh giá trị tài chính.

Các nghiên cứu liên quan về các thành phần:

- Đặt khoản thế chấp: Staking

- Cơ chế phân xử dựa theo vai trò: Veracity

- Cơ chế phân xử dựa theo hành vi

- Điểm danh tiếng: RepStake

== Contributions

Đóng góp chính của nghiên cứu này sẽ bao gồm:

- Xây dựng incentive model cho việc khẳng định tính chính danh.

- Xây dựng mô hình cho phép nhận diện hành vi bất thường.

= Related Work

== Blockchain and Smart Contracts

Bitcoin tạo cuộc cách mạng về tiền điện tử và thuật ngữ blockchain trở nên phổ biến. #cite(<nakamoto2008bitcoin>)

Thuật ngữ về máy bán hàng tự động và vai trò của nó trong việc kiểm soát vòng đời #cite(<szabo1994smartcontracts>)

Là nền tảng để chứng minh tính khả thi

== Reputation Systems

Cơ chế danh tiếng trong nghiên cứu này đóng vai trò quan trọng và ảnh hưởng rất lớn đến trò chơi, trong đó có cả cơ chế phạt lũy tiến. #cite(<Mantzonis2026RepStake>)

== Incentive Mechanisms

So sánh các nghiên cứu:

+ Ownership: Quyền sở hữu

+ Content trustworthy: Thông tin này có đáng tin cậy hay không (Veracity)

+ Legitimacy: *Có được cộng đồng thừa nhận hay không* (nghiên cứu hiện tại)

- Ta nên quản lý tính chính danh như một vòng đời #cite(<li2026records>).

- Trong đó veracity #cite(<barbosa2025newincentivemodelcontenttrust>) là nghiên cứu có sự trùng lặp lớn nhất với mô hình hiện tại và đi gần đúng với triết lý đó.
  - Nó có hai role đối kháng
  - Claim được quản lý như một vòng đời
  - Đối tượng nghiên cứu giống nhau nhưng khác cách gọi, claim và content trustworthy
  - Khác biệt lớn nhất là về cơ chế kích hoạt dispute và phương thức bỏ phiếu
  - Bản thân veracity cũng chỉ ra là cả 4 vai trò có thể xuất thân từ cùng 1 đối tượng

Uy tín được hình thành thông qua quá trình cày điểm danh tiếng và kết quả từ hành vi của họ, không phụ thuộc hoàn toàn vào tiền.

== Claim Verification and Dispute Resolution

- Hoạt động theo cơ chế đăng tải trước, xác minh sau. Đúng với tinh thần của optimistic.

- Có thể mở tranh chấp nhiều lần.

- Tuy nhiên động lực chưa được thiết kế cụ thể với từng vai trò với các sự kiện (đang nói Veracity). Nhất là khi cơ chế phân xử đang dựa trên phiếu đa số thay vì tạo động lực lẫn rủi ro cho từng vai trò.

== Behavioral Prediction and Anomaly Detection

Ma trận markov được ứng dụng trong blockchain để dự đoán hành vi bất thường. Điểm khác với veracity là ta dựa vào hành vi, không phải dựa theo vai trò.

Tức nó sẽ có lịch sử tiến hóa.

= Mechanism Design

== Overview

Mục tiêu cuối cùng không phải là để xử lý tranh chấp, mà là đạt tới trạng thái mong muốn. Trong đó người đăng tải sẽ khẳng định đúng, người thách thức sẽ chỉ mở tranh chấp khi đã có đủ bằng chứng, trọng tài sẽ phán xử công tâm và người bỏ phiếu sẽ đánh giá điểm cuối cùng cho trọng tài dựa trên nội dung của buổi tranh chấp.

=== Existed Mechanisms

Quản lý vòng đời của nội dung, có người claim và bị challenge. Có người phân xử và có người vote.

Mục tiêu giống nhau đó là quản lý tính chính danh của nội dung được đăng tải.

Tài sản và trạng thái được quản lý theo một vòng đời.

=== Scope of Adoption and Divergence

Điểm khác biệt lớn nhất nằm ở việc thiết kế reputation gắn liền với hành vi.

- Có cơ chế tích lũy điểm danh tiếng thông qua hành vi.

- Người đủ điều kiện làm trọng tài phải đồng ý tham gia.

- Trọng tài chỉ có duy nhất.

== System Model

=== Publish Claim

Điểm chung đều là giá trị để khẳng định, tức là thứ để công khai. Nhưng mục tiêu khác với veracity khá nhiều.

Trong đó người đăng tải có quyền tự lựa chọn mức bond và sẽ nhận về điểm hành vi tương ứng với giá trị của mức bond đó.

Cơ chế đặt cọc thì cũng giống nhau nhưng sẽ có hạn mức, cả hai bên buộc phải đặt cùng 1 khoản với giá trị ngang nhau.

Tức V_min <= Bond = Stake <= V_max

Trong đó:

- V_min: Mức sàn khi đặt Bond

- V_max: Mức trần khi đặt Bond

Trong đó P là điểm quy đổi tương ứng với Bond, điểm danh tiếng sẽ được biểu diễn thông qua sigmoid của điểm hành vi.

=== Dispute Triggering

Để mở tranh chấp

Cơ chế chọn trọng tài được diễn ra như sau:

Lấy 20% những người có điểm danh tiếng cao nhất, sau đó thì chia làm 3 pha:

- Pha đầu tiên: Chọn 10 người ngẫu nhiên trong số 20% đó, nếu có người đồng ý thì sẽ lọc ra 3, 5, 7 người có điểm danh tiếng cao nhất để làm trọng tài.

- Pha thứ hai: Nếu trong pha đầu tiên không có ai tham gia thì sẽ tuyển thêm 10 người khác nữa rồi áp dụng tương tự như pha 1.

- Pha thứ ba: Nếu sau hai pha mà không ai phản hồi thì dispute bị hủy, toàn bộ số tiền được trả về cho challenger.

=== Participant Incentive

Tất cả những người tham gia trò chơi sẽ luôn có cùng một điểm hành vi được khởi tạo với giá trị ban đầu bằng không

==== Claimant

Người đăng tải nội dung, họ có nhu cầu khẳng định tính chính danh của tác phẩm.

Chịu thuế lũy tiến:

==== Challenger

Người thách thức tính chính danh của một tác phẩm được đăng tải. Phải đặt cọc khoản thế chấp lẫn rủi ro bi trừ điểm danh tiếng nếu thất bại.

Chịu thuế lũy tiến:

==== Adjudicator

Lý do vì sao trọng tài là người quyết định số phận của tài sản đó là vì để có thể được làm trọng tài đã trải qua quá trình tranh chấp và đăng tải tác phẩm, vote cũng là một con đường như điểm hành vi nhận lại là quá thấp.

==== Voter

Ta vote dựa trên đồ thị hình quả chuông. Trong đó sẽ có tham số ngưỡng để ta điều chỉnh phạm vi.

Điểm cho trọng tài sẽ tỷ lệ thuận với điểm danh tiếng sau khi có kết quả trung vị.

Chẳng hạn sau khi vote được một điểm bất kỳ và tính ra trung vị, thì điểm trọng tài nhận được sẽ tỷ lệ thuận với điểm danh tiếng của voter.

= Mathematical Analysis

== Reputation Model

Gọi P là điểm hành vi và R là điểm danh tiếng. Ta sử dụng hàm sigmoid để phân loại ra.

Cả 4 vai trò đều có cơ chế tích lũy điểm danh tiếng riêng dựa theo công thức tính tổng.

R_dispute = A x Sum(Publish) + B x Sum(Challenge) + C x Sum(Adjudicate) + D x Sum(Vote)

R_extra = C_0 + R_adjust

R_user = R_dipuste + R_extra

Trong đó bất đẳng thức: D < A < B < C.

Từ đó ta có thể điều chỉnh các hệ số.

== Economic Model

Chỉ có hai hành vi có ảnh hưởng trực tiếp đến yếu tố tài chính đó là claimant và challenger.

== Threat Model

Việc sử dụng markov không thay thế nhận định xong nó giúp ta phát hiện những pattern bất thường trong hành vi của đối tượng

=== Behavior interaction

- Publish:

- Challenge:

- Adjudicate:

- Vote:

=== Anomaly prediction matrix

Ma trận markov có thể được mở rộng sang chiều không gian khác tạo thành một đồ thị có hướng để theo dõi hành vi.

= Evaluation

== Experimental Setup

== Reputation and Eligibility Analysis

== Behavioral Transition Analysis

== Threat Detection Performance

== Case Studies

= Discussion

== Relationship to Veracity

== Security and Economic Considerations

== Limitations

= Future Work

= Conclusion

#bibliography(
  title: [Tài liệu tham khảo],
  "references.bib",
  style: "ieee",
)
