<?php if (isset($_SESSION['notifikasi'])) { ?>
    <div class="alert alert-<?php echo $_SESSION['notifikasi']['type'] ?> alert-dismissible fade show" role="alert">
        <?php echo $_SESSION['notifikasi']['message'] ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
<?php
    unset($_SESSION['notifikasi']);
} ?>