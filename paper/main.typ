#import "template.typ": template

#show: template

= Introduction

Cơ chế đồng thuận trong việc thẩm định tính nguyên bản của một tác phẩm.

Originality of the content

Dịch thuật cũng được bảo vệ dù là tác phẩm phái sinh

== Motivation

Sự phát triển của internet đã giúp cho nhiều người tiếp cận thông tin tốt hơn nhưng đồng thời cũng nảy sinh vấn đề về quản lý nội dung được đăng tải, đặc biệt là vấn đề bản quyền.  Một số đạo luật đã được sinh ra nhằm xử lý vấn đề này như DMCA, tuy nhiên luật bản quyền ở mỗi quốc gia sẽ khác nhau và DMCA chỉ xử lý khi có người tố cáo và yêu cầu gỡ bỏ. Thời gian và chi phí pháp lý đi kèm trong mỗi vụ kiện cũng rất tốn kém.

Hơn nữa không phải tác phẩm nào cũng nổi tiếng và được mọi người biết đến rộng rãi, việc bảo vệ thành quả của bản thân trong thời đại khoa học công nghệ và AI tạo sinh phát triển không nên bị xem nhẹ. Trong số các tác phẩm tràn lan trên internet việc khẳng định tác giả của một tác phẩm không chỉ đóng vai trò như tấm bảo hiểm mà còn giúp tác giả được ghi nhận công sức. Tất nhiên nó cũng đặt ra câu hỏi về việc nếu có ai đó ăn cắp chất xám rồi đăng tải trước thì sao? Hay là nội dung trong tác phẩm có dấu hiệu thiếu minh bạch thì ta gỡ bỏ nó thế nào?

Chính vì vậy nghiên cứu này tập trung vào việc xây dựng một cơ chế đồng thuận, trong đó bất cứ tác giả nào cũng có thể công khai tác phẩm của chính mình. Đồng thời cũng có một cơ chế thẩm định dựa trên đám đông để đánh giá tính nguyên bản của một tác phẩm đã được đăng tải.

== Scope and Divergence

Nghiên cứu này không nhằm thay thế luật bản quyền, mục tiêu chính đó là xây dựng cơ chế đồng thuận nhằm xác định tính nguyên bản của một tác phẩm đã được đăng tải. Trong đó ta không quan tâm người đăng là ai, chỉ quan tâm nội dung bên trong nó.

*Ta phân biệt các thuật ngữ:*

+ Ownership: Quyền sở hữu.

+ Authorship: Quyền tác giả.

+ Copyright: Bản quyền.

+ Originality: Tính nguyên bản.

Lý do nghiên cứu này tập trung vào tính nguyên bản đó là vì trong một số trường hợp, một tác phẩm phái sinh không chỉ có sự đóng góp của một cá nhân đơn lẻ mà còn có thể là rất nhiều người. Không những vậy nó còn phải được sự đồng ý của tác giả gốc.

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

- Ta nên quản lý tính chính danh như một vòng đời #cite(<li2026records>).

- Trong đó veracity #cite(<barbosa2025newincentivemodelcontenttrust>) là nghiên cứu có sự trùng lặp lớn nhất với mô hình hiện tại và đi gần đúng với triết lý đó.
  - Nó có hai role đối kháng
  - Claim được quản lý như một vòng đời
  - Đối tượng nghiên cứu giống nhau nhưng khác cách gọi, claim và content trustworthy
  - Khác biệt lớn nhất là về cơ chế kích hoạt dispute và phương thức bỏ phiếu
  - Bản thân veracity cũng chỉ ra là cả 4 vai trò có thể xuất thân từ cùng 1 đối tượng

Uy tín được hình thành thông qua quá trình cày điểm danh tiếng và kết quả từ hành vi của họ, không phụ thuộc hoàn toàn vào tiền.

== Behavioral Prediction and Anomaly Detection

Ma trận markov được ứng dụng trong blockchain để dự đoán hành vi bất thường. Điểm khác với veracity là ta dựa vào hành vi, không phải dựa theo vai trò.

Tức nó sẽ có lịch sử tiến hóa.

= Mechanism Design

== Existed Mechanisms

Quản lý vòng đời của nội dung, có người claim và bị challenge. Có người phân xử và có người vote.

Mục tiêu giống nhau đó là quản lý tính chính danh của nội dung được đăng tải.

Tài sản và trạng thái được quản lý theo một vòng đời.

- Hoạt động theo cơ chế đăng tải trước, xác minh sau. Đúng với tinh thần của optimistic.

- Có thể mở tranh chấp nhiều lần.

- Tuy nhiên động lực chưa được thiết kế cụ thể với từng vai trò với các sự kiện (đang nói Veracity). Nhất là khi cơ chế phân xử đang dựa trên phiếu đa số thay vì tạo động lực lẫn rủi ro cho từng vai trò.

=== Scope of Adoption and Divergence

Điểm khác biệt lớn nhất nằm ở việc thiết kế reputation gắn liền với hành vi.

- Có cơ chế tích lũy điểm danh tiếng thông qua hành vi.

- Người đủ điều kiện làm trọng tài phải đồng ý tham gia.

- Trọng tài chỉ có duy nhất.

== System Model

=== Overview

Mô tả hành động của một người.

Một người có thể được chia ra làm 4 tác nhân.

=== Publish Claim

Điểm chung đều là giá trị để khẳng định, tức là thứ để công khai. Nhưng mục tiêu khác với veracity khá nhiều.

Trong đó người đăng tải có quyền tự lựa chọn mức bond và sẽ nhận về điểm danh tiếng tương ứng với giá trị của mức bond đó.

Cơ chế đặt cọc thì cũng giống nhau nhưng sẽ có hạn mức, cả hai bên buộc phải đặt cùng 1 khoản với giá trị ngang nhau.

Tức V_min <= Bond = Stake <= V_max

Trong đó:

- V_min: Mức sàn khi đặt Bond

- V_max: Mức trần khi đặt Bond

Trong đó P là điểm quy đổi tương ứng với Bond, điểm danh tiếng sẽ được biểu diễn thông qua sigmoid của điểm danh tiếng.

=== Dispute Triggering

Để mở tranh chấp thì người thách thức cần phải đặt cọc một khoản ngang với Bond mà tài sản đang nắm.

Cơ chế chọn trọng tài được diễn ra như sau:

Lấy 20% những người có điểm danh tiếng cao nhất, sau đó thì chia làm 3 pha:

- Pha đầu tiên: Chọn 10 người ngẫu nhiên trong số 20% đó, nếu có người đồng ý thì sẽ lọc ra 3, 5, 7 người có điểm danh tiếng cao nhất để làm trọng tài.

- Pha thứ hai: Nếu trong pha đầu tiên không có ai tham gia thì sẽ tuyển thêm 10 người khác nữa rồi áp dụng tương tự như pha 1.

- Pha thứ ba: Nếu sau hai pha mà không ai phản hồi thì dispute bị hủy, toàn bộ số tiền được trả về cho challenger.

Nếu challenger thắng thì họ nhận được điểm danh tiếng kèm 70% giá trị Bond. Còn nếu không thì họ mất toàn bộ stake lẫn điểm danh tiếng, 70% số tiền còn lại sẽ được chuyển qua cho chủ sở hữu tài sản đã bị thách thức.

*Lưu ý:* Claimant không nhận điểm danh tiếng khi challenger bị xử thua.

=== Adjudicating

Tất cả các trọng tài sẽ ra phán quyết cuối cùng về việc ai sẽ là bên thắng. 30% giá trị của tài sản bên thua sẽ được chia đều cho các trọng tài, 70% còn lại được nhường cho bên thắng.

Nếu trọng tài vote theo số đông thì họ sẽ nhận được tiền thưởng chia đều, còn nếu không thì sẽ không được nhận thưởng.

Sau khi đưa ra phán quyết thì buổi tranh chấp chuyển sang trạng thái đánh giá.

Trọng tài không được biết số điểm cho đến khi có kết quả cuối.

=== Voting

Trong quá trình vote không ai biết điểm của nhau, số lượng người vote được ẩn và chỉ công bố trung vị là kết quả cuối cùng.

Khi vote thì mọi người sẽ nhận được điểm danh tiếng dựa theo phân phối hình quả chuông. Điểm danh tiếng tác động lên trọng tài sẽ bằng điểm đã chọn nhân cho điểm danh tiếng khi được quy đổi ra sigmoid.

Thời gian vote trước khi đóng hoàn toàn là 1 tuần.

= Incentive Analysis

== Reputation Interaction

Gọi R là điểm danh tiếng. Ta sử dụng hàm sigmoid để phân loại ra.

- Khi publish thì họ sẽ nhận được lượng điểm danh tiếng tương ứng với số Bond đã đặt cọc. Nếu có người mở tranh chấp và xử thắng thì lượng điểm danh tiếng của người đăng sẽ bị trừ và mất toàn bộ Bond. Ngược lại nếu người thách thức bị xử thua thì điểm danh tiếng sẽ không được cộng nhưng họ sẽ nhận được 70% số tiền từ cuộc tranh chấp.

- Tài sản sẽ phụ thuộc vào bên thua và bên thắng. Lúc này cả claimant lẫn challenger đều đặt cược Bond của riêng mình.

- Voter và adjudicator thì hơi khác một chút. Voter đánh giá adjudicator nhưng voter cũng chịu rủi ro nếu vượt quá trung vị.

- Điểm của adjudicator thì được đánh giá bằng trung x sigmoid của điểm danh tiếng.

== Economic Interaction

Chỉ có hai hành vi có ảnh hưởng trực tiếp đến yếu tố tài chính đó là claimant và challenger.

= Anomaly prediction

== Scenarios

1. Ăn cắp chất xám nhưng có nguy cơ bị lộ tẩy nên nhờ người khác mở tranh chấp để giành lại tiền thưởng (tuy lỗ nhưng vẫn vớt vát được).

2. Publish liên tục với lương Bond lớn để cày điểm danh tiếng, tăng khả năng được chọn làm trọng tài phân xử.

3. Challenge liên tục. Sẽ có hai trường hợp:
  - Phá hoại
  - Có dấu hiệu thông đồng

4. 70% người dùng sẽ chỉ muốn hoạt động bình thường (vãng lai) nhưng sẽ quan tâm tới tác phẩm của mình.

== Behaviour's sequence

- Publish(P):

- Challenge(C):

- Adjudicate(A):

- Vote(V):

#table(
  columns: 5,
  [], [P], [C], [A], [V],
  [P], [], [], [], [],
  [C], [], [], [], [],
  [A], [], [], [], [],
  [V], [], [], [], [],
)

= Evaluation

== Experimental Setup

== Reputation and Eligibility Analysis

== Behavioral Transition Analysis

== Threat Detection Performance

== Case Studies

= Discussion

== Security and Economic Considerations

= Limitations

= Future Work

= Conclusion

#bibliography(
  title: [Tài liệu tham khảo],
  "references.bib",
  style: "ieee",
)
