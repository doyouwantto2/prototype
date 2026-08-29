#import "template.typ": template

#show: template

= Giới thiệu

*Tiếng Việt:* Cơ chế phân xử phi tập trung cho các tuyên bố về thời điểm tồn tại của tác phẩm số trên Internet.

*Tiếng Anh:* Decentralized Dispute Resolution for Timestamp Claims of Digital Works on the Internet

== Động lực nghiên cứu

Sự phát triển của internet đã giúp cho mọi người tiếp cận thông tin một cách nhanh chóng và tiện lợi hơn, nhưng cũng đi kèm thách thức về việc quản lý nội dung số được công bố. Một khi đã đưa lên internet thì ta không thể kiểm soát được hành vi của người dùng.

Đạo luật DMCA #cite(<dmca512>) đã được ra đời để giải quyết tranh chấp bản quyền, nhưng nó chỉ hiệu quả khi đã xác định được tác giả gốc và có căn cứ pháp lý rõ ràng để gỡ bỏ nội dung ra khỏi nền tảng, trong khi internet vẫn tồn tại rất nhiều vùng xám và tùy thuộc vào quốc gia và vùng lãnh thổ mà chính sách sẽ khác nhau.

Blockchain cho phép ghi nhận các trạng thái giao dịch và có tính bất biến cao sau khi đã được xác nhận bởi mạng lưới. Việc công bố tác phẩm thông qua blockchain giúp ta tạo được sự minh bạch về giao dịch, song có một điểm yếu cố hữu của blockchain đó là nó không thể xác thực các sự kiện bên ngoài. #cite(<gervais2018nakamoto>) Công đoạn xác thực nội dung trước khi đưa vào mạng lưới là một việc tốn kém và đòi hỏi nhiều thời gian công sức, chưa kể ta không thể đảm bảo sẽ không có sai sót. Do đó, thay vì đặt câu hỏi làm thế nào để xác minh nội dung số trước khi được công bố, nghiên cứu này tập trung vào việc xử lý và phân xử các tuyên bố sau khi tác phẩm đã được đăng tải, với thời điểm công bố và các bằng chứng liên quan được xem như một vòng đời. #cite(<li2026records>)

Trong nghiên cứu này, các bằng chứng về thời điểm tác phẩm đã xuất hiện trên internet được sử dụng làm căn cứ chính để đánh giá các tuyên bố liên quan đến thời gian tồn tại của tác phẩm.

== Phát biểu bài toán

Ta có một nền tảng công bố tác phẩm số trong đó bất cứ ai cũng có thể công bố tác phẩm của mình. Tuy nhiên, nền tảng cũng cho phép các tuyên bố về tác phẩm có thể bị thách thức và đề xuất cộng đồng đứng ra phân xử.

Một người có thể công bố tác phẩm đã được công bố ở nơi khác hoặc công bố lần đầu. Trong đó việc khẳng định thời điểm tồn tại sẽ rất quan trọng.

Khác với các dispute game #cite(<optimismDisputeGameInterface>) được thiết kế để giải quyết bằng việc tính toán giữa các máy tính, thì bài toán hiện tại chủ yếu xoay quanh đánh giá bằng chứng thực tế từ internet – một quá trình đòi hỏi sự phán xét của con người. Do đó ta cần đưa thêm các vai trò như Juror để đưa ra phán quyết, sau đó ta có thể bổ sung thêm một tầng đánh giá bổ sung để đánh giá chất lượng của buổi phân xử thông qua các Viewer. #cite(<barbosa2025newincentivemodelcontenttrust>)

== Phạm vi

Để cụ thể hóa bài toán thì nghiên cứu này xác định phạm vi như sau:

- Nghiên cứu không bao gồm các tác phẩm phái sinh vì các tác phẩm phái sinh thường dựa trên giao dịch giữa người sáng tạo với tác giả gốc, thường rất khó xác định.

- Các bằng chứng chủ yếu dựa trên các dữ liệu có thể kiểm chứng độc lập trên internet như URL, Archive hoặc các bản ghi được lưu trữ trên IPFS. Các bằng chứng không có dấu vết công khai trên internet, như dữ liệu trong máy tính cá nhân nằm ngoài phạm vi vì yêu cầu các thủ tục pháp lý đặc thù.

= Nghiên cứu liên quan

== Blockchain và smart contracts

Blockchain cung cấp sổ cái bất biến giúp ta ghi nhận thông tin bất biến từ đó giúp cho giao dịch trở nên minh bạch hơn. Thuật ngữ blockchain trở nên phổ biến sau sự xuất hiện của bitcoin, thứ đã tạo nên cuộc cách mạng về tiền điện tử. #cite(<nakamoto2008bitcoin>)

Smart contract là thuật ngữ được tạo ra bởi Szabo khi ông thiết kế thuật toán cho máy bán hàng tự động trong đó ta đưa ra một tập chỉ thị lệnh rồi để máy tính thực thi. #cite(<szabo1994smartcontracts>) Hiện nay smart contract được ứng dụng để lập trình các máy ảo trên mạng lưới blockchain để thực thi các hàm logic đã được lập trình sẵn.

Trong phạm vi nghiên cứu, blockchain và smart contract sẽ là nền tảng để hiện thức hóa ý tưởng.

== Mô hình phân xử

Kleros có thể xem là ví dụ tiêu biểu về mô hình trọng tài phi tập trung. #cite(<lesaege2020kleros>) Khi có tranh chấp thì họ sẽ gọi ngẫu nhiên các trọng tài và tùy thuộc vào lượng stake mà tỷ lệ được bầu chọn sẽ cao hơn, nếu trọng tài nào đưa ra phán quyết khác với kết quả cuối cùng thì sẽ bị slash vì vậy nó buộc các trọng tài khác phải tìm phương hướng đồng thuận.#cite(<ravikant2019schelling>) Nếu muốn tái xét xử thì người dùng có thể tiếp tục đặc cọc stake để mở thêm 1 phiên điều trần nữa với số lượng bồi thẩm đoàn lớn hơn.

Hiện tại Kleros chỉ có một tầng phán quyết duy nhất, vẫn thiếu một một tầng hậu kiểm độc lập để đánh giá việc phán xử của các trọng tài do đó nghiên cứu này sẽ ứng dụng cơ chế bồi thẩm đoàn của Kleros, song song với bổ sung thêm một cơ chế đánh giá các trọng tài.

== Skin in the game

Bond xuất hiện với hai vai trò chính, thứ nhất đó là ràng buộc cam kết của tác giả với yếu tố tài chính, thứ hai đó là xây dựng nguồn lực để xử lý hậu tranh chấp. Trong Veracity có hai loại Bond chính: #cite(<barbosa2025newincentivemodelcontenttrust>)

- Thứ nhất là Bond do Claimant đăng.

- Thứ hai là Counter Bond (hay còn gọi là C-Bond) do Challenger đặt cọc để thách thức Claim của Claimant.

Skin in the game ở đây đồng nghĩa là mỗi vai trò phải có thứ để mất, từ đó tránh việc một bên sở hữu lợi thế tuyệt đối. Trong nghiên cứu này đây sẽ là một trong những điều khiến người chơi có xu hướng lựa chọn đi theo cân bằng.

== Hệ thống danh tiếng

Khác với token truyền thống thì danh tiếng được sinh ra như một thước đo bên cạnh tài sản giao dịch, vì giá trị không chỉ nên được biểu diễn bởi tài sản mà một đối tượng tiêu hao hay sở hữu mà nên là lịch sử và đánh giá về đối tượng đó.

Cơ chế tính điểm danh tiếng sẽ khác nhau tùy thuộc vào miền bài toán. Nghiên cứu này tập trung xây dựng cơ chế tính điểm danh tiếng ở off-chain với lý do giúp tiết kiệm phí giao dịch, đồng thời giảm độ phức tạp khi triển khai. Hơn nữa điểm danh tiếng cũng rất quan trọng trong việc đánh giá tác nhân tham gia trò chơi cũng như quyết định đặt cọc tài sản của họ. #cite(<Mantzonis2026RepStake>)

== Lý thuyết trò chơi

=== Dispute game

Dispute game là một cơ chế trò chơi được sử dụng để giải quyết tranh chấp giữa các bên thông qua một tập luật xác định trước, trong đó hai bên cùng thế chấp tài sản. Trong các mô hình blockchain, Optimism là kiến trúc tiêu biểu nhất khi nó mặc định mọi giao dịch là hợp lệ cho đến khi được chứng minh là sai, trong quá trình đó các đối tượng sẽ có thê mở dispute game với các giao dịch mà họ cho là không hợp lệ. #cite(<optimismDisputeGameInterface>)

Trong nghiên cứu này lời tuyên bố về thời điểm công bố tác phẩm chính là đối tượng tranh chấp được xoay quanh. Tương tự như cách mà Veracity thiết lập cơ chế với hai vai trò đối kháng là Creator và Challenger. #cite(<barbosa2025newincentivemodelcontenttrust>)

=== Schelling point

Schelling point là một cơ chế đề cập đến việc ta đưa ra kết quả mà các bên có xu hướng lựa chọn mà không cần phải giao tiếp với nhau. #cite(<ravikant2019schelling>) Tính chất này được biểu diễn trong cơ chế bồi thẩm đoàn của Kleros, #cite(<lesaege2020kleros>) để có thể tối ưu chiến lược và tránh việc bị mất stake các trọng tài khác đôi khi phải dự đoán đối phương đang nghĩ gì.

Định lý bồi thẩm đoàn cho rằng nếu mỗi thành viên có xác suất đưa ra phán đoán đúng lớn hơn 1/2 và các phán đoán thỏa mãn giả định độc lập, xác suất để quyết định theo đa số là đúng sẽ tăng khi số lượng thành viên tăng và tiến tới 1 khi số lượng thành viên tiến tới vô hạn. #cite(<list2021jurytheorems>)

Giả sử trên internet xuất hiện bằng chứng mới gọi là $x$ thì xác suất cho phán quyết chính xác tại sự kiện $J_i$ sẽ là:

$ P(J_i) = sum_(x)P(J_i | x)P(x) $

Với điều kiện:

$ P(J_i | x) > 1 / 2 $

Nó cung cấp cơ sở lý thuyết để ta áp dụng việc đánh giá các đối tượng như lời tuyên bố hoặc nhận định về buổi phân xử trở nên rõ ràng hơn trong đó trí khôn của đám đông sẽ phát huy tác dụng. #cite(<budescu2015expertise>)

= Khoảng trống nghiên cứu

Veracity có thể được xem là nghiên cứu có nhiều điểm tương đồng nhất với nghiên cứu hiện tại, họ cũng có hai vai trò đối kháng, có Juror và Viewer. Tuy nhiên họ mô hình hóa dựa theo vai trò cố định chứ chưa xác định được người chơi, điều này cũng được họ thừa nhận. #cite(<barbosa2025newincentivemodelcontenttrust>) Chưa kể cơ chế tính điểm danh tiếng chủ yếu là dựa vào việc lựa chọn trọng tài, chưa giải quyết được câu hỏi là liệu trọng tài đó được lựa chọn từ đâu và áp dụng thế nào. Do đó nghiên cứu này quyết định không xây dựng mô hình dựa theo vai trò mà dựa theo hành vi, trong đó vai trò chỉ xuất hiện trong một số ngữ cảnh nhất định.

Thêm vào đó thì vấn đề mà Veracity lẫn nghiên cứu này nhắm tới là kiểm chứng thông tin nhưng phục vụ cho hai đối tượng khác nhau. Veracity muốn kiểm tra nội dung có đáng tin cậy, có đạo văn, AI-generate hay không, tức fact check còn nghiên cứu hiện tại muốn xác định liệu tác phẩm này có đúng là đã tồn tại ở thời điểm đó đúng như lời tuyên bố hay không dựa trên dữ kiện từ internet.

Việc ứng dụng Kleros và schelling point một cách mù quáng có thể khiến cho hệ thống trở nên khập khễnh. Do đó nghiên cứu này quyết định xây dựng thêm tầng thứ hai, tầng này không được xây dựng để thay đổi phán quyết mà là để đánh giá các trọng tài đã tham gia buổi phân xử, từ đó khiến các trọng tài phải cân nhắc ảnh hưởng của đám đông trước khi đưa ra quyết định.

Vì chuyển trọng tâm từ tài chính sang danh tiếng, cộng thêm việc chuyển từ vai trò sang hành vi nên ta không nên chỉ định lượng giá trị tài chính và danh tiếng để đánh giá một tác nhân, mà nên dựa trên cả lịch sử hoạt động của người đó. Đây là nơi mà ta áp dụng chuỗi markov để phân tích và đánh giá hành vi của đối tượng.

= Đóng góp chính

Xây dựng một mô hình lấy động lực làm trung tâm trong việc xác định thời điểm công bố của một tác phẩm.

Nghiên cứu không ngầm định mọi đối tượng tham gia đều chính trực và cũng không ngăn chặn hành vi bất chính, mà thay vào đó là khiến việc đi ngược với cân bằng sẽ đánh đổi rủi ro và hậu quả lớn hơn so với lợi ích đạt được.

= Thiết kế mô hình

== Thông số của 1 tác nhân

Một tác nhân sẽ sở hữu ba thuộc tính, thứ nhất là tài sản trong ví, thứ hai là điểm danh tiếng và thứ ba là lịch sử các hành vi.

Có 4 tác nhân chính tham gia trò chơi:

- *Claimant:* Người có nhu cầu công bố tác phẩm, họ phải đặt cọc Bond vào tác phẩm và sẽ được cộng điểm danh tiếng tương ứng với số Bond đã bỏ ra. Nếu Challenger thách thức và Claim bị phán quyết bất hợp pháp thì toàn bộ Bond sẽ mất cùng với điểm danh tiếng, còn nếu được xử thắng thì họ sẽ nhận được khoản $B_C$ (Counter-Bond hoặc C-Bond) của Challenger.

- *Challenger:* Người tố giác tác phẩm có dấu hiệu bất thường, để có thể mở tranh chấp họ phải đặt cọc $B_C$ tương ứng. Nếu thắng thì họ sẽ nhận được điểm danh tiếng cũng như 1 phần Bond của Claimant, nếu thua thì họ sẽ bị trừ điểm danh tiếng và mất toàn bộ $B_C$.

- *Juror:* Khi Challenger đặt $B_C$ và yêu cầu mở tranh chấp, hệ thống sẽ lọc ra trong số 20% người có điểm danh tiếng cao nhất đủ điều kiện làm trọng tài. Tương tự như Kleros, ta cũng áp dụng cơ chế schelling point trong đó nếu vote ngược với số đông thì sẽ không được chia 1 phần Bond từ bên thua. Khác với Kleros là Juror không bắt buộc phải stake để tham gia.

- *Viewer:* Sau khi các trọng tài đã đưa ra phán quyết (không thể đảo ngược) thì hệ thống sẽ chuyển sang giai đoạn đánh giá trọng tài. Mọi người sẽ cùng bỏ phiếu ẩn, điểm số và số lượng người vote chỉ được công bố khi hết thời gian giới hạn. #cite(<myerson1998population>) Bất cứ ai cũng có thể vote và mỗi lần vote nếu vượt quá trung vị thì điểm sẽ càng giảm và có nguy cơ âm.

== Hành vi của 1 tác nhân

Mỗi tác nhân có thể đóng 1 trong 4 vai trò tùy thuộc vào ngữ cảnh, trong đó mỗi hành vi sẽ có tác động lên điểm danh tiếng:

- *Claimant - Publish(P)*: Công bố tác phẩm.

- *Challenger - Challenge(C)*: Thách thức lời tuyên bố của 1 tác phẩm.

- *Juror - Adjudicate(A)*: Phân xử tranh chấp.

- *Viewer - Vote(V)*: Đánh giá các trọng tài sau khi đã đưa ra phán quyết.

Khi xuất hiện 4 hành động độc lập thì ta có thể biến nó thành một trạng thái hữu hạn như sau:

#figure(
  image("../diagrams/markovs-state.drawio.png", width: 50%),
  caption: [],
) <fig-markovs-state.drawio>

Ta sẽ ứng dụng chuỗi markov trong việc xác định hành vi bất thường, đồng thời nó cũng sẽ được ứng dụng trong việc bầu chọn trọng tài, vì ta không nên chỉ quan tâm tới hành động hay điểm danh tiếng mà còn là thứ tự các hành động đó xuất hiện.

=== Đăng tải tác phẩm (Publish)

Để có thể đăng tải tác phẩm thì phải bỏ ra một khoản Bond. Họ có quyền tự lựa chọn mức Bond và sẽ nhận về điểm danh tiếng tương ứng với giá trị của mức Bond đó.

$ B_min <= B <= B_max $

*Trong đó:*

- $B$: Giá trị của Bond

- $B_min$: Mức sàn

- $B_max$: Mức trần

Ngoải ra điểm danh tiếng được quy đổi từ Bond theo phương trình:

$ R = F(B) $

Vì giới hạn mức trần và mức sàn nên điểm danh tiếng cũng như giá trị của Bond sẽ được giới hạn lại nên ta cũng có thể phát biểu:

$ F(B_min) <= R = F(B) <= F(B_max) $

*Trong đó:*

- $R$: Điểm danh tiếng

- $F$: Hàm quy đổi tuyến tính

=== Kích hoạt Dispute Game (Challenge)

Để mở tranh chấp thì người thách thức cần phải đặt cọc một khoản ngang với Bond của tác phẩm đang muốn tranh chấp là $B_C$.

Biết rằng $B_C = B$ nên ta có thể quy đổi ra $B$ và áp dụng cách tính điểm danh tiếng tương tự.

Nếu Challenger thắng thì họ sẽ nhận được 60% giá trị của khoản Bond và điểm danh tiếng tương ứng được quy đổi qua $F(B_C)$. Nếu thua thì họ sẽ mất điểm danh tiếng cũng như $B_C$.

Claimant được xử thắng nhận được 60% giá trị $B_C$, không nhận điểm danh tiếng. Lý do là vì trong một số trường hợp Claimant có thể thông đồng với một số challenger khác dàn dựng dispute và xử Claimant thắng từ đó qua mặt được chuỗi Markov để tăng điểm danh tiếng, và việc Challenger sai cũng không đồng nghĩa với việc Claimant đúng do đó ta không nên tăng điểm bởi một Claim có thể bị thách thức nhiều lần.

#figure(
  image("../diagrams/oppose.drawio.png", width: 100%),
  caption: [],
) <fig-oppose.drawio>

=== Phân xử (Adjudicate)

Gọi $M$ là số lượng trọng tài được lựa chọn trong mỗi vụ tranh chấp, với $M$ là số lẻ.

Hệ thống sẽ chọn lọc 20% những người có điểm danh tiếng cao nhất trong hệ thống. Sau khi số người chấp nhận tham gia lớn hơn hoặc bằng $M$ thì hệ thống lại tiếp tục chọn ngẫu nhiên trong số những người tham gia sao cho số lượng bằng M.

Trong quá trình chọn ra M người thì hệ thống sẽ truy vết lịch sử của chuỗi Markov xem có hành vi đáng ngờ hay không. Tỷ lệ lựa chọn sẽ thay đổi dựa trên việc họ đã tham gia phân xử bao nhiêu lần và các hành vi của họ trong quá khứ.

Trạng thái khởi đầu của một hành vi sẽ bao gồm:

$
  mat(
    P;
    C;
    A;
    V;
  )
$

Tất cả $M$ trọng tài sẽ đưa ra biểu quyết cuối cùng về việc ai sẽ là bên thắng. 40% giá trị của tài sản bên thua sẽ được chia đều cho các trọng tài, 60% còn lại được nhường cho bên thắng.

Nếu trọng tài vote theo bên có đồng thuận đa số thì họ sẽ nhận được tiền thưởng chia đều, còn nếu không thì sẽ không được nhận thưởng. Tương tự như cách Kleros #cite(<lesaege2020kleros>) áp dụng schelling point. #cite(<ravikant2019schelling>)

Nếu áp dụng công thức thì để có thể áp đảo phán quyết sẽ cần tối thiểu số người đồng thuận là:

$ (M + 1) / 2 $

$B$ càng lớn thì $M$ phải càng lớn vì nếu quá thấp lợi nhuận sẽ cực kỳ cao gây thiếu công bằng, song $M$ cũng không được quá lớn bởi số tiền chia ra sẽ quá nhỏ khiến trọng tài không đủ động lực để tham gia.

Sau khi đưa ra phán quyết thì buổi tranh chấp chuyển sang trạng thái đánh giá, vì lúc này phán quyết là không thể đảo ngược.

=== Bỏ phiếu đánh giá (Vote)

==== Trò chơi thiếu thông tin

Hệ thống hiện tại cho phép bỏ phiếu tự do, tải sản duy nhất chịu rủi ro đó là điểm danh tiếng. Bất cứ ai vote gần với trung vị thì sẽ nhận được điểm cao hơn, càng xa trung vị thì điểm càng thấp.

Tuy nhiên để tránh tình trạng sybil farm điểm hoặc tối ưu hóa lợi ích thay vì đánh giá buổi phân xử, ta áp dụng quy tắc của trò chơi poisson. #cite(<myerson1998population>) Khi bắt đầu quá trình bỏ phiếu mỗi người sẽ đánh giá trọng tài trong phạm vi $-1 <= v_i <= 1$, không ai biết điểm số của nhau, số lượng người vote cũng sẽ được ẩn. Chỉ sau khi hết giờ thì mới công bố toàn bộ số điểm cũng như số lượng người tham gia bỏ phiếu đánh giá.

Điều này khiến cho người chơi phải ước lượng số người chơi thực sự tham gia. Giả sử ta gọi $K$ là ước lượng người chơi sẽ tham gia bỏ phiếu cho buổi phân xử đó, vì ta không biết số người thực sự tham gia là bao nhiêu nên ta có thể quy ước: #cite(<myerson1998population>)

$ E[K] approx N $

Với $N$ là số người tồn tại trong hệ thống.

Hệ thống sau đó sẽ lọc ra những người có điểm danh tiếng mang giá trị nguyên dương và nguyên âm. Những người có điểm nguyên âm sẽ được lọc ra, những người có điểm nguyên dương sẽ được đưa vào danh sách để xét điểm trung vị. Các hàm để biểu diễn các thuộc tính kể trên được giải thích theo như mô tả bên dưới:

Gọi khoảng cách từ trung vị đến giao điểm với trục hoành được xác định bởi:

$ r = frac(sqrt(rho), sqrt(rho) + sqrt(1 - rho)), quad 0 < rho < 1 $

Từ đó ta có hàm chữ V ngược:

$ phi(x) = 1 - (|x|)/r, quad -1 <= x <= 1 $

*Trong đó:*

- $rho$: Tỷ lệ mặt dương.
- $r$: Khoảng cách từ trung vị đến giao điểm của hàm với trục hoành.
- $phi(0) = 1$: Độ cao cực đại của hàm.

Nếu kết quả đi xa trung vị thì sẽ bị hạ điểm và có nguy cơ xuống mức âm, còn nếu gần hơn thì nó sẽ được phân phối như biểu đồ bên dưới, với $rho = 0.5$ thì tổng diện tích mặt trên sẽ là 50% và mặt âm là 50%.

Vì độ cao cố định bằng 1 nên dù điều chỉnh thế nào thì giá trị mà Viewer nhận được ở mặt dương chỉ có thể được nới rộng chứ không tăng lên, còn nếu $rho$ giảm thì độ phạt sẽ tăng lên, giá trị nhận được ở mặt dương sẽ không đổi nhưng bị thu hẹp lại.

Điều này có nghĩa là càng vote gần với trung vị thì sẽ nhận được điểm danh tiếng càng lớn nhưng không thể vượt quá 1, trong khi nếu vượt xa trung vị thì có thể bị phạt nặng hơn tùy vào việc ta điều chỉnh $rho$ nhỏ đến đâu.

#figure(
  image("assets/absolute.png", width: 60%),
  caption: [],
) <fig-desmos-graph>

Điểm danh tiếng mà một Viewer sẽ nhận được tương đương với:

$ Delta R_i = D dot phi(|v_i - "median"|) $

*Trong đó:*

- $D$: Là hạn mức điểm nhận được khi vote
- $"median"$: Trung vị của các giá trị $v_i in V$.

==== Cơ chế phạt bất đối xứng

Nếu tác nhân sở hữu quá nhiều điểm danh tiếng thì thiệt hại điểm danh tiếng đôi khi sẽ không đủ răn đe so với việc vi phạm. Ngược lại cũng sẽ có trường hợp cả hệ thống xuất hiện điểm âm, mà nếu quá nhiều điểm âm thì cơ chế chọn lọc khi bỏ phiếu sẽ trở nên thiếu hiệu quả do có cơ chế sàng lọc, việc trừ quá tay sẽ khiến hệ thống trở nên mất ổn định.

Một vấn đề nữa đó là nếu xây dựng cơ chế đánh giá với trọng số dựa theo điểm danh tiếng của Viewer thì cũng sẽ dễ xảy ra nguy cơ một vài cá nhân điểm danh tiếng lớn có thể quyết định cả kết quả cuộc bỏ phiếu. Trong khi nếu đặt mọi lá phiếu ngang nhau thì lại dễ gặp rủi ro bị tấn công sybil do đó nghiên cứu xây dựng một cơ chế tăng giảm bất đối xứng.

Ta sẽ không dựa trên $v_i$ của Viewer để ra kết quả cuối mà dựa theo trung vị. Điều này giúp ta hạn chế phần nào việc một vài lá phiếu quyết định toàn bộ kết quả. Ta có:

$
  overline(R) = dot frac(1, K) dot sum_(i=1)^K R_i
$

Điểm danh tiếng tác động lên Juror là:

$
  Delta R_j = "median" dot overline(R)
$

*Trong đó:*

- $Delta R_j$: Tổng điểm tác động lên điểm danh tiếng của Juror thứ $j$.
- $overline(R)$: Điểm trung bình chung danh tiếng của những người tham gia bỏ phiếu.
- $"median"$: Trung vị các đánh giá $v_i in V$.
- $R_i$: Điểm danh tiếng của Viewer thứ $i$.
- $K$: Ước lượng số Viewer tham gia bỏ phiếu.
- $j$: Chỉ số của Juror đang được đánh giá.

Điểm cá nhân của mỗi trọng tài sẽ nhận được theo cơ chế sau:

$
  R_j = cases(
    R_j + Delta R_j & "nếu" R_j > 0 "và" Delta R > 0,
    R_j + Delta R_j dot S & "nếu" R_j > 0 "và" Delta R < 0,
    R_j + Delta R_j & "nếu" R_j < 0 "và" Delta R < 0,
    R_j + Delta R_j dot S & "nếu" R_j < 0 "và" Delta R > 0,
  )
$

Với $S$ là độ nhạy.

Đây là cơ chế cân bằng cũng như dự phòng của hệ thống, nếu như điểm quá thấp hay quá cao thì sẽ có cơ chế tự cân bằng lại. Cơ chế này chỉ áp dụng với các trọng tài.

== Vòng đời của một tuyên bố

Một claim không nên được biểu diễn theo dạng tuyến tính mà nên được biểu diễn theo một vòng đời #cite(<li2026records>), vì truy vết nội dung trước khi đưa vào chain rất tốn kém. Việc thực hiện cơ chế lạc quan #cite(<umaOptimisticOracle>) cho phép ta mở rộng phạm vi, đồng thời nếu có tranh chấp trong tương lai ta vẫn có thể thay đổi trạng thái của chúng.

Đồng thời hệ thống cũng không có cơ chế tái xét xử, phán quyết một khi đã đưa ra là không thể đảo ngược. Đây là một trade-off của hệ thống trong đó phán quyết sai vẫn có thể xảy ra, chính vì vậy đôi khi phải tạo thêm Claim mới.

#figure(
  image("../diagrams/claim-lifecycle.drawio.png", width: 60%),
  caption: [],
) <fig-claim-lifecycle.drawio>

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

= Phân tích thông số

== Kỳ vọng điểm danh tiếng

- Khi publish thì họ sẽ nhận được lượng điểm danh tiếng tương ứng với số Bond đã đặt cọc. Nếu có người mở tranh chấp và xử thắng thì lượng điểm danh tiếng của người đăng sẽ bị trừ và mất toàn bộ Bond. Ngược lại nếu người thách thức bị xử thua thì điểm danh tiếng sẽ không được cộng cho claiman nhưng họ sẽ nhận được 60% số tiền từ cuộc tranh chấp.

- Claimant có bond thì challenger có Counter-Bond, và điểm danh tiếng chịu rủi ro của hai bên là như nhau. Claimant chịu rủi ro có thể bị thách thức nhiều lần bất cứ lúc nào, còn challenger thì chịu rủi ro phải chứng minh.

- Voter đánh giá adjudicator nhưng voter sẽ nhận điểm danh tiếng tương ứng với điểm trung vị. (có thể âm)

- Điểm của adjudicator được đánh giá bằng kết quả trung vị nhân cho sigmoid của điểm danh tiếng của người vote.

- Nếu điểm danh tiếng của người vote bé hơn bằng bằng 0 thì họ vẫn được nhận điểm danh tiếng dựa theo trung vị (vẫn có thể âm), nhưng khi xét trung vị họ sẽ bị loại ra ngoài và xếp vào một hàng riêng, để chỗ xét trung vị cho những người có điểm danh tiếng dương.

== Kỳ vọng tài chính

Chỉ có hai hành vi chịu tác động tài chính đó là Claimant và Challenger.

Giả sử claimant bỏ tiền ra để đăng tải tác phẩm của mình thì challenger sẽ là bên cũng phải bỏ tiền cọc ra để gỡ bỏ claim đó. Có thể có 3 mục đích, phá claim, phát hiện sự thiếu minh bạch và muốn gỡ bỏ, chiếm đoạt bond. Hoặc có thể là nhiều yếu tố cộng lại.

Giả sử challenger được xử thắng thì họ sẽ nhận được 60% giá trị của bond. 40% còn lại sẽ được chia ra để thưởng cho các trọng tài.

Giả sử challenger bị xử thua thì claimant sẽ nhận được 60% counter-bond, 40% còn lại sẽ được chia ra để thưởng cho các trọng tài.

40% giá trị tài sản bên thua sẽ được chia đều cho các trọng tài bỏ phiếu đa số, trọng tài nào bỏ phiếu ngược với số đông thì sẽ không nhận được phần thưởng.

Việc có cơ chế vote sau khi ra phán quyến khiến trọng tài phải cân nhắc và đạt được đồng thuận.

Trong Kleros thì để tránh mất tiền, các trọng tài sẽ cùng đạt dồng thuận dựa trên ý kiến của các juror khác, do đó kết quả phụ thuộc vào việc số đông đang nghĩ gì chứ không hoàn toàn dựa vào sự thật khách quan. Trong khi đó việc đưa thêm cơ chế bỏ phiếu bổ sung khiến cho các trọng tài phải cân nhắc thêm khả năng làm trọng tài trong tương lai và lợi ích tài chính trước mắt.

== Động lực của mỗi vai trò

#figure(
  table(
    columns: 2,
    [Vai trò], [Rủi ro],
    [Claimant], [],
    [Challenger], [],
    [Juror], [],
    [Viewer], [],
  ),
)

= Phân tích hành vi bất thường

== Viễn cảnh có thể xảy ra

1. Ăn cắp chất xám nhưng có nguy cơ bị lộ tẩy nên nhờ người khác mở tranh chấp hoặc tạo tài khoản để tự tranh chấp rồi giành lại Bond.

2. Publish liên tục với lương Bond lớn để cày điểm danh tiếng, tăng khả năng được chọn làm trọng tài phân xử.

3. Challenge liên tục. Sẽ có hai trường hợp:
  - Phá hoại
  - Có dấu hiệu thông đồng

4. Phần lớn người dùng sẽ chỉ muốn hoạt động bình thường (vãng lai) nhưng sẽ quan tâm tới tác phẩm của mình.

5. Mô hình thông đồng thường sẽ có một nhóm người lãnh đạo, trong những vụ việc ảnh hưởng tới hội nhóm đó chẳng hạn như đi mở tranh chấp, bị tranh chấp và có thành viên làm trọng tài thì sẽ có các kịch bản sau:

- *Nếu có người thuộc tổ trọng tài:* Họ sẽ cố thuyết phục và đưa ra phán quyết thuận lợi nhất nếu có thành viên thuộc phe claimant hoặc challenger. Dù thắng hay thua thì họ sẽ đồng loạt vote điểm cao để kéo điểm danh tiếng của tất cả trọng tài lên, trong đó có thành viên của nhóm để tăng khả năng được tham gia phân xử trong tương lai.

- *Nếu không có ai thuộc tổ trọng tài:* Họ sẽ đồng loạt vote điểm thấp, kéo trung vị xuống để từ đó ảnh hưởng tới việc tham gia phân xử trong tương lai của các trọng tài khác. Tuy nhiên nó cũng đi kèm rủi ro đó là nếu không chiếm được trung vị với lớn hơn 50% số phiếu thì khả năng cao sẽ bị hạ điểm danh tiếng và vẫn không đạt được mục đích.

== Chuỗi hành vi

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

Ta sử dụng ipfs để lưu thứ nhất là link dẫn đến đường dẫn của tác phẩm số, thứ hai là link dẫn đến các dispute sau khi đã kết thúc và được đóng gói. #cite(<turner2026erc8325>)

== Reputation and Eligibility Analysis

== Behavioral Transition Analysis

== Threat Detection Performance

== Case Studies

= Discussion

== Security and Economic Considerations

== Transaction fee and rolls-up

Nghiên cứu này vẫn chỉ là mô hình hóa ý tưởng, gas ở layer 1 biến động rất mạnh nên sẽ cần cơ chế rolls-up, và cả claimant lẫn challenger đều phải trả phí transaction để cập nhật lên chain. Trong đó nó có thể bao gồm cả khoản bond nhưng tốt nhất vẫn nên tách ra để phân biệt rõ ràng.

= Limitations

Không ngăn chặn tấn công sybil.

Vì chỉ căn cứ vào dữ kiện đã xuất hiện trên internet nên trong một số tình huống thì sẽ khó xác định khi phụ thuộc vào tình huống bên ngoài.

Sử dụng tính điểm danh tiếng off-chain có thể gây ra rủi ro tập trung.

= Future Work

= Conclusion

#bibliography(
  title: [Tài liệu tham khảo],
  "references.bib",
  style: "ieee",
)
