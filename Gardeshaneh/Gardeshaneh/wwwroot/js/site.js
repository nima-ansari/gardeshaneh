function ShowMessage(title, text, theme) {
    window.createNotification({
        closeOnClick: true,
        displayCloseButton: false,
        positionClass: 'nfc-bottom-right',
        showDuration: 7000,
        theme: theme !== '' ? theme : 'success'
    })({
        title: title !== '' ? title : 'پیام',
        message: decodeURI(text)
    });
}

function goBack() {
    window.history.go(-1);
}

function filterForm(pageId) {
    $("#PageId").val(pageId);
    $("#filter-form").submit();
}

function filterFormOfFirstPage() {
    $("#PageId").val(1);
    $("#filter-form").submit();
}

function copyPlaceLinkToClipboard() {
    let input = document.getElementById("place-url");
    let title = input.value;
    input.select();
    input.setSelectionRange(0, 99999);
    document.execCommand("copy");
    setTimeout(() => {
        input.value = "کپی شد";
        input.classList.add("rtl");
        input.classList.add("text-center");
        input.style.boxShadow = "0 0 0 0.25rem rgb(9 156 7 / 25%)";
    }, 100);
    setTimeout(() => {
        input.value = title;
        input.classList.remove("rtl");
        input.classList.remove("text-center");
        input.style.boxShadow = "0 0 0 0 rgb(9 156 7 / 25%)";
    }, 3000);
}