#import "template.typ": template

#show: template

= Introduction

Cơ chế đồng thuận trong việc thẩm định tính nguyên bản của một tác phẩm.

Originality of the content

Dịch thuật cũng được bảo vệ dù là tác phẩm phái sinh

== Motivation

Sự phát triển của internet đã giúp cho nhiều người tiếp cận thông tin tốt hơn nhưng đồng thời cũng nảy sinh vấn đề về quản lý nội dung được đăng tải, đặc biệt là vấn đề bản quyền.  Một số đạo luật đã được sinh ra nhằm xử lý vấn đề này như DMCA, tuy nhiên luật bản quyền ở mỗi quốc gia sẽ khác nhau và DMCA chỉ xử lý khi có người tố cáo và yêu cầu gỡ bỏ. Thời gian và chi phí pháp lý đi kèm trong mỗi vụ kiện cũng rất tốn kém.

Hơn nữa không phải tác phẩm nào cũng nổi tiếng và được mọi người biết đến rộng rãi, việc bảo vệ thành quả của bản thân trong thời đại khoa học công nghệ và AI tạo sinh phát triển không nên bị xem nhẹ. Trong số các tác phẩm tràn lan trên internet việc khẳng định tác giả của một tác phẩm không chỉ đóng vai trò như tấm bảo hiểm mà còn giúp tác giả được ghi nhận công sức. Tất nhiên nó cũng đặt ra câu hỏi về việc nếu có ai đó ăn cắp chất xám rồi đăng tải trước thì sao? Hay là nội dung trong tác phẩm có dấu hiệu thiếu minh bạch thì ta gỡ bỏ nó thế nào? Và liệu nếu có ai đó tố cáo thì căn cứ vào đâu để xử lý?

== Problem statement

Blockchain đã chứng minh sự hiệu quả trong việc bảo vệ dữ liệu được đưa vào mạng lưới, tuy nhiên nó lại không thể xác định được liệu dữ liệu đó có chính xác hay không trước khi được đưa vào. Các nền tảng đăng ký bản quyền thường là do một đơn vị cụ thể cung cấp, song không phải ai cũng có nhu cầu đi đăng ký quyền tác giả. Đã có nền tảng đăng ký bản quyền dựa trên blockchain nhưng nó lại là nền tảng tập trung, nếu xảy ra tranh chấp thì chi phí kèm theo trong mỗi vụ kiện sẽ rất tốn kém. Hơn nữa một khi đã đăng tải tác phẩm lên internet thì ta không thể quản lý được hành vi của người dùng và cũng sẽ chẳng có công ty nào đủ sức để lùng sục cả internet cả. Điều này cũng được chỉ ra trong đạo luật DMCA, và luật bản quyền cũng sẽ khác nhau ở mỗi quốc gia.

Do đó vấn đề không nên là xác định tính nguyên bản của tác phẩm trước khi đăng tải lên chain mà là làm sao để xử lý sau khi nó được đăng tải.

Bên cạnh ghi nhận quyền lợi của tác giả thì ta cũng cần thiết kế một cơ chế đồng thuận phi tập trung để giải quyết tranh chấp cho tính nguyên bản của một tác phẩm. Lý do là vì cơ chế đồng thuận phi tập trung sẽ giúp ta công khai thông tin minh bạch hơn. Lấy cảm hứng từ cơ chế lạc quan, nghiên cứu này xác định tính nguyên bản của một tác phẩm đóng vai trò như một vòng đời. Từ lúc đăng tải cho đến lúc đạt được đồng thuận về việc gỡ bỏ hoặc duy trì.

== Scope and Divergence

Nghiên cứu này không nhằm cạnh tranh với luật bản quyền, mục tiêu chính đó là xây dựng cơ chế đồng thuận nhằm xác định tính nguyên bản của một tác phẩm đã được đăng tải. Trong đó ta không quan tâm người đăng là ai, chỉ quan tâm nội dung bên trong nó.

*Ta phân biệt các thuật ngữ:*

+ Ownership: Quyền sở hữu.

+ Authorship: Quyền tác giả.

+ Copyright: Bản quyền.

+ Originality: Tính nguyên bản.

Lý do nghiên cứu này sử dụng thuật ngữ *tính nguyên bản* đó là vì trong một số trường hợp, một tác phẩm phái sinh không chỉ có sự đóng góp của một cá nhân đơn lẻ mà còn có thể là rất nhiều người. #cite(<venuti1995translation>) Không những vậy nó còn phải được sự đồng ý của tác giả gốc. #cite(<chun2018translatorship>)

== Research Gap

Đã có nhiều nghiên cứu về việc đặt khoản thế chấp, cơ chế phân xử dựa theo vai trò và sử dụng danh tiếng để tạo ảnh hưởng bên cạnh giá trị tài chính.

Các nghiên cứu liên quan về các thành phần:

- Đặt khoản thế chấp: Staking #cite(<cong2025tokenomics>)

- Cơ chế phân xử dựa theo vai trò: Veracity

- Cơ chế phân xử dựa theo hành vi

- Điểm danh tiếng: RepStake #cite(<Mantzonis2026RepStake>)


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

M aa trận markov được ứng dụng trong blockchain để dự đoán hành vi bất thường. Điểm khác với veracity là ta dựa vào hành vi, không phải dựa theo vai trò.

Tức nó sẽ có lịch sử tiến hóa.

= System model

== Existed model

Quản lý vòng đời của nội dung, có người claim và bị challenge. Có người phân xử và có người vote. (Dispute game)

Mục tiêu giống nhau đó là quản lý tính nguyên bản của nội dung được đăng tải.

Tài sản và trạng thái được quản lý theo một vòng đời.

- Hoạt động theo cơ chế đăng tải trước, xác minh sau. Đúng với tinh thần của optimistic.

- Có thể mở tranh chấp nhiều lần.

- Tuy nhiên động lực chưa được thiết kế cụ thể với từng vai trò với các sự kiện (đang nói Veracity). Nhất là khi cơ chế phân xử đang dựa trên phiếu đa số thay vì tạo động lực lẫn rủi ro cho từng vai trò.

=== Scope of Adoption and Divergence

Điểm khác biệt lớn nhất nằm ở việc thiết kế reputation gắn liền với hành vi.

- Có cơ chế tích lũy điểm danh tiếng thông qua hành vi.

- Người đủ điều kiện làm trọng tài phải đồng ý tham gia.

- Trọng tài chỉ có duy nhất.

== Actor behaviour

Quá trình diễn ra một vòng đời của một tác phẩm sẽ bao gồm như bên dưới. Trong đó sẽ có 4 hành vi đi theo thứ tự là publish, dispute, adjudicate và vote.

=== Publish Claim

Điểm chung với veracity là phải có bond để khẳng định.

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

- Pha thứ hai: Nếu trong pha đầu tiên không có ai tham gia thì sẽ tuyển thêm sao cho đủ 10 người.

- Pha thứ ba: Nếu sau hai pha mà không ai phản hồi thì dispute bị hủy, toàn bộ số tiền được trả về cho challenger.

Nếu challenger thắng thì họ nhận được điểm danh tiếng kèm 60% giá trị Bond. Còn nếu không thì họ mất toàn bộ stake lẫn điểm danh tiếng, 70% số tiền còn lại sẽ được chuyển qua cho chủ sở hữu tài sản đã bị thách thức.

*Lưu ý:* Claimant không nhận điểm danh tiếng khi challenger bị xử thua.

=== Adjudicating

Tất cả các trọng tài sẽ đưa ra biểu quyết cuối cùng về việc ai sẽ là bên thắng. 40% giá trị của tài sản bên thua sẽ được chia đều cho các trọng tài, 60% còn lại được nhường cho bên thắng.

Nếu trọng tài vote theo số đông thì họ sẽ nhận được tiền thưởng chia đều, còn nếu không thì sẽ không được nhận thưởng.

Sau khi đưa ra phán quyết thì buổi tranh chấp chuyển sang trạng thái đánh giá, vì lúc này phán quyết là không thể đảo ngược.

=== Voting

Bất cứ ai cũng có thể vote, tuy nhiên bản thân người vote cũng có skin in the game.

Trong quá trình vote không ai biết điểm của nhau, số lượng người vote được ẩn, sau khi hết giờ mới công bố điểm trung vị và kết quả của từng người.

Nếu kết quả đi xa trung vị thì sẽ bị hạ điểm, còn nếu gần hơn thì nó sẽ được phân phối theo biểu đồ dưới đây:

#figure(
  image("assets/absolute.png", width: 80%),
  caption: [],
) <fig-absolute>

Trong đó trục x đại diện cho khoảng cách tính từ trung vị.

Ta xác định 60% diện tích sẽ nằm ở mặt dương và 40% diện tích sẽ nằm ở mặt âm.

== Lifecycle's Flow

Vị trí mà các tác nhân có thể tham gia.

#figure(
  image("../diagrams/sequence.drawio.png", width: 80%),
  caption: [],
) <fig-sequence.drawio>

Trạng thái của claim sẽ di chuyển theo quy trình dưới đây:

#figure(
  image("../diagrams/finite-state.drawio.png", width: 80%),
  caption: [],
) <fig-finite-state.drawio>

Việc vote chỉ diễn ra sau khi phán quyết của buổi tranh chấp được đưa ra và không thể đảo ngược.

= Resource Analysis

== Reputation Changes

Gọi R là điểm danh tiếng. Ta sử dụng hàm sigmoid để giới hạn trần âm và trần dương của giá trị.

#figure(
  image("assets/sigmoid.png", width: 80%),
  caption: [],
) <fig-sigmoid>

- Khi publish thì họ sẽ nhận được lượng điểm danh tiếng tương ứng với số Bond đã đặt cọc. Nếu có người mở tranh chấp và xử thắng thì lượng điểm danh tiếng của người đăng sẽ bị trừ và mất toàn bộ Bond. Ngược lại nếu người thách thức bị xử thua thì điểm danh tiếng sẽ không được cộng cho claiman nhưng họ sẽ nhận được 60% số tiền từ cuộc tranh chấp.

- Claimant có bond thì challenger có Counter-Bond, và điểm danh tiếng chịu rủi ro của hai bên là như nhau. Claimant chịu rủi ro có thể bị thách thức nhiều lần bất cứ lúc nào, còn challenger thì chịu rủi ro phải chứng minh.

- Voter đánh giá adjudicator nhưng voter sẽ nhận điểm danh tiếng tương ứng với điểm trung vị. (có thể âm)

- Điểm của adjudicator được đánh giá bằng kết quả trung vị nhân cho sigmoid của điểm danh tiếng của người vote.

- Nếu điểm danh tiếng của người vote bé hơn bằng bằng 0 thì họ vẫn được nhận điểm danh tiếng dựa theo trung vị (vẫn có thể âm), nhưng khi xét trung vị họ sẽ bị loại ra ngoài và xếp vào một hàng riêng, để chỗ xét trung vị cho những người có điểm danh tiếng dương.

== Economic Changes

Chỉ có hai hành vi có ảnh hưởng trực tiếp đến yếu tố tài chính đó là claimant và challenger.

Giả sử claimant bỏ tiền ra để đăng tải tác phẩm của mình thì challenger sẽ là bên cũng phải bỏ tiền cọc ra để gỡ bỏ claim đó. Có thể có 3 mục đích, phá claim, phát hiện sự thiếu minh bạch và muốn gỡ bỏ, chiếm đoạt bond. Hoặc có thể là nhiều yếu tố cộng lại.

Giả sử challenger được xử thắng thì họ sẽ nhận được 60% giá trị của bond. 40% còn lại sẽ được chia ra để thưởng cho các trọng tài.

Giả sử challenger bị xử thua thì claimant sẽ nhận được 60% counter-bond, 40% còn lại sẽ được chia ra để thưởng cho các trọng tài.

40% giá trị tài sản bên thua sẽ được chia đều cho các trọng tài bỏ phiếu đa số, trọng tài nào bỏ phiếu ngược với số đông thì sẽ không nhận được phần thưởng.

Việc có cơ chế vote sau khi ra phán quyến khiến trọng tài phải cân nhắc và đạt được đồng thuận.

Trong Kleros thì để tránh mất tiền, các trọng tài sẽ cùng đạt dồng thuận dựa trên ý kiến của các juror khác, do đó kết quả phụ thuộc vào việc số đông đang nghĩ gì chứ không hoàn toàn dựa vào sự thật khách quan. Trong khi đó việc đưa thêm cơ chế bỏ phiếu bổ sung khiến cho các trọng tài phải cân nhắc thêm khả năng làm trọng tài trong tương lai và lợi ích tài chính trước mắt.

= Anomaly prediction

== Scenarios

1. Ăn cắp chất xám nhưng có nguy cơ bị lộ tẩy nên nhờ người khác mở tranh chấp để giành lại tiền thưởng (tuy lỗ nhưng vẫn vớt vát được).

2. Publish liên tục với lương Bond lớn để cày điểm danh tiếng, tăng khả năng được chọn làm trọng tài phân xử.

3. Challenge liên tục. Sẽ có hai trường hợp:
  - Phá hoại
  - Có dấu hiệu thông đồng

4. 70% người dùng sẽ chỉ muốn hoạt động bình thường (vãng lai) nhưng sẽ quan tâm tới tác phẩm của mình.

5. Mô hình thông đồng thường sẽ có một nhóm người lãnh đạo, trong những vụ việc ảnh hưởng tới hội nhóm đó chẳng hạn như bị dispute thì sẽ có các kịch bản sau:

- Nếu có người thuộc tổ trọng tài thì họ sẽ cố thuyết phục và đưa ra phán quyết thuận lợi cho bên mình. Dù thắng hay thua thì họ sẽ đồng loạt vote điểm cao để kéo điểm danh tiếng của tất cả trọng tài lên, trong đó có thành viên của mình để tăng khả năng được tham gia phân xử trong tương lai.

- Nếu không có ai thuộc tổ trọng tài thì họ sẽ đồng loạt vote điểm thấp, kéo trung vị xuống để trả đũa, từ đó ảnh hưởng tới việc tham gia phân xử trong tương lai của các trọng tài khác.

== Behaviour's sequence

Trong trò chơi hiện tại thì ta có thể kiếm điểm danh tiếng thông qua 4 hành vi sau:

Trong chuỗi Markov một hành vi có thể được chuyển từ trạng thái này sang trạng thái khác với một tỷ lệ nhất định.

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
