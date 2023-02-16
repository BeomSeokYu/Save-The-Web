<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- bootstrap JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<!-- Modal -->
<div class="modal fade" id="msgModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="msgModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="msgModalLabel"></h1>
      </div>
      <div class="modal-body" id="msgModalBody">
		
      </div>
      <div class="modal-footer" id="modal-footer">
        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>

<!-- modal script -->
<script type="text/javascript">
	function popModal(head, body) {
		$('#msgModalLabel').text(head);
		$('#msgModalBody').html(body);
		$('#modal-footer').empty()
			.append('<button type="button" class="btn btn-warning" data-bs-dismiss="modal">확인</button>')
		$('#msgModal').modal('show');
	}
	
	function popModalRedirect(head, body, url) {
		$('#msgModalLabel').text(head);
		$('#msgModalBody').html(body);
		$('#modal-footer').empty()
			.append('<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>'
					+ '<a href="'+url+'" class="btn btn-warning">이동</a>')
		$('#msgModal').modal('show');
	}
</script>