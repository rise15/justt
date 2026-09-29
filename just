<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>JustMarkets Demo Interface</title>

<style>

/* =========================================================
   GLOBAL STYLES
========================================================= */

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

body{
    font-family:Arial,Helvetica,sans-serif;
    background:#fff;
    color:#111;
}

button,
input,
select{
    font-family:inherit;
}

button{
    cursor:pointer;
}

:root{
    --blue:#3154f4;
    --green:#13885f;
    --green-bg:#e5f7f0;
    --red:#d93025;
    --red-bg:#fce8e6;
    --border:#e4e4e4;
    --dark:#302e38;
    --light:#f6f6f6;
    --gray:#777;
    --notice-bg:#f0f4ff;
}


/* =========================================================
   HEADER
========================================================= */

.header{
    height:92px;
    border-bottom:1px solid #e7e7e7;
    display:flex;
    align-items:center;
    background:#fff;
    position:sticky;
    top:0;
    z-index:50;
}

.header-inner{
    width:100%;
    max-width:1100px;
    margin:auto;
    padding:0 28px;
    position:relative;
    display:flex;
    align-items:center;
}

.menu-btn{
    width:50px;
    height:50px;
    border:0;
    background:white;
    font-size:32px;
}

.logo{
    position:absolute;
    left:50%;
    transform:translateX(-50%);
    color:var(--blue);
    font-size:42px;
    font-weight:800;
    letter-spacing:-3px;
}


/* =========================================================
   MAIN
========================================================= */

.main{
    max-width:1100px;
    margin:auto;
    padding:0 28px 100px;
}

.page-title{
    font-size:36px;
    font-weight:800;
    margin:25px 0 20px;
}


/* =========================================================
   ACCOUNT TABS
========================================================= */

.account-tabs{
    display:flex;
    align-items:flex-end;
    gap:42px;
    border-bottom:1px solid #ddd;
    height:65px;
}

.account-tab{
    border:0;
    background:#fff;
    font-size:22px;
    padding:0 12px 18px;
}

.account-tab.active{
    border-bottom:4px solid #111;
}


/* =========================================================
   OPEN ACCOUNT BUTTON
========================================================= */

.open-account{
    width:100%;
    height:90px;
    margin:28px 0 35px;
    background:#fff;
    border:1px solid #d7d7d7;
    border-radius:6px;
    font-size:23px;
}

.open-account span{
    font-size:38px;
    margin-right:15px;
}


/* =========================================================
   SORT & VIEW CONTROLS
========================================================= */

.sort-row{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:30px;
}

.sort-select{
    width:78%;
    height:56px;
    border:1px solid #e6e6e6;
    border-radius:6px;
    background:white;
    padding:0 12px;
    font-size:19px;
}

.view-buttons{
    display:flex;
}

.view-buttons button{
    width:55px;
    height:56px;
    background:white;
    border:1px solid #e4e4e4;
    font-size:25px;
}

.view-buttons button.active{
    background:#eee;
}


/* =========================================================
   ACCOUNT CARD
========================================================= */

.account-card{
    border:1px solid #e8e8e8;
    padding:30px;
    margin-bottom:28px;
    position:relative;
    background:white;
}

.account-menu{
    position:absolute;
    right:22px;
    top:20px;
    border:0;
    background:white;
    color:#777;
    font-size:30px;
}

.tags{
    display:flex;
    gap:15px;
    margin-bottom:20px;
}

.tag{
    padding:8px 14px;
    background:#f2f2f2;
    border-radius:6px;
    font-size:16px;
}

.tag.demo,
.tag.real{
    background:var(--green-bg);
    color:var(--green);
}

.account-name{
    font-size:22px;
    margin-bottom:7px;
}

.balance{
    font-size:39px;
    font-weight:700;
    margin-bottom:32px;
}

.account-actions{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:28px;
}

.money-btn{
    height:90px;
    border:1px solid #d5d5d5;
    background:white;
    border-radius:6px;
    font-size:32px;
}

.trade-btn{
    height:90px;
    border:0;
    background:var(--blue);
    color:white;
    border-radius:6px;
    font-size:34px;
}


/* =========================================================
   SIDEBAR NAVIGATION
========================================================= */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.45);
    z-index:90;
    display:none;
}

.overlay.show{
    display:block;
}

.sidebar{
    position:fixed;
    left:0;
    top:0;
    bottom:0;
    width:490px;
    max-width:90%;
    background:white;
    z-index:100;
    transform:translateX(-100%);
    transition:.25s ease;
    overflow-y:auto;
}

.sidebar.show{
    transform:translateX(0);
}

.profile{
    padding:28px;
    border-bottom:1px solid #ddd;
}

.close-sidebar{
    border:0;
    background:white;
    font-size:40px;
    float:left;
    margin-right:20px;
}

.profile-name{
    font-size:25px;
    font-weight:800;
}

.profile-email{
    font-size:18px;
    margin-top:8px;
}

.client{
    margin-top:12px;
    color:#777;
}

.client strong{
    color:#111;
    margin-left:12px;
}

.verified{
    display:inline-block;
    margin-top:14px;
    padding:7px 13px;
    background:var(--green-bg);
    color:var(--green);
    border-radius:7px;
}

.menu-list{
    padding:22px;
}

.menu-item{
    width:100%;
    border:0;
    background:white;
    text-align:left;
    padding:20px;
    border-radius:6px;
    font-size:22px;
}

.menu-item:hover{
    background:#f5f5f5;
}

.menu-icon{
    width:42px;
    display:inline-block;
    font-size:25px;
}

.menu-divider{
    height:1px;
    background:#ddd;
    margin:15px -22px;
}

.app-box{
    margin-top:20px;
    background:#eef3ff;
    border:1px solid #d7def4;
    border-radius:7px;
    padding:25px;
}

.app-box h3{
    font-size:22px;
    margin-bottom:10px;
}

.app-box button{
    margin-top:18px;
    background:white;
    border:1px solid #ccc;
    padding:14px 35px;
    border-radius:6px;
}


/* =========================================================
   FUNDING & METHOD SELECTION
========================================================= */

.funding-tabs{
    display:flex;
    gap:10px;
    margin-bottom:20px;
}

.funding-tab{
    border:0;
    background:transparent;
    padding:10px 18px;
    font-size:15px;
    color:#333;
    border-radius:5px;
}

.funding-tab.active{
    background:var(--dark);
    color:white;
}

.method-grid{
    display:grid;
    grid-template-columns:repeat(auto-fill, minmax(200px, 1fr));
    gap:15px;
    margin-top:20px;
}

.method-card{
    border:1px solid #e1e1e1;
    border-radius:8px;
    padding:20px;
    background:#fff;
    cursor:pointer;
    transition:all 0.2s ease;
    display:flex;
    flex-direction:column;
    justify-style:space-between;
    min-height:120px;
}

.method-card:hover{
    border-color:var(--blue);
    box-shadow:0 4px 12px rgba(0,0,0,0.05);
}

.method-card .method-title{
    font-weight:bold;
    font-size:16px;
    margin-bottom:8px;
}

.method-card .method-desc{
    font-size:13px;
    color:#666;
}

.method-card .badge{
    display:inline-block;
    align-self:flex-start;
    padding:3px 8px;
    background:#eef3ff;
    color:var(--blue);
    font-size:11px;
    font-weight:bold;
    border-radius:4px;
    margin-bottom:10px;
}


/* =========================================================
   WITHDRAWAL FORM & INLINE VERIFICATION
========================================================= */

.see-methods-link{
    display:inline-block;
    color:#111;
    text-decoration:underline;
    font-size:14px;
    margin:15px 0 25px;
    cursor:pointer;
}

.withdrawal-form{
    max-width:600px;
}

.form-group{
    margin-bottom:20px;
}

.form-label{
    display:block;
    font-size:13px;
    color:#666;
    margin-bottom:6px;
}

.form-row{
    display:flex;
    gap:15px;
}

.form-row .form-group{
    flex:1;
}

.select-wrapper,
.input-wrapper{
    position:relative;
    width:100%;
}

.select-wrapper select,
.input-wrapper input{
    width:100%;
    height:48px;
    border:1px solid #e1e1e1;
    border-radius:6px;
    padding:0 35px 0 14px;
    font-size:15px;
    background:#fafafa;
    color:#222;
    appearance:none;
    -webkit-appearance:none;
}

.select-wrapper::after,
.input-wrapper .info-icon{
    position:absolute;
    right:14px;
    top:50%;
    transform:translateY(-50%);
    pointer-events:none;
    color:#888;
    font-size:14px;
}

.select-wrapper::after{
    content:"⌵";
}

.input-wrapper .info-icon{
    width:18px;
    height:18px;
    border:1px solid #aaa;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:11px;
    font-style:italic;
}

.notice-box{
    background:var(--notice-bg);
    border-radius:6px;
    padding:18px 20px;
    font-size:13.5px;
    line-height:1.55;
    color:#333;
    margin-bottom:22px;
    position:relative;
}

.notice-box .close-notice{
    position:absolute;
    right:15px;
    top:15px;
    cursor:pointer;
    font-size:16px;
    color:#666;
}

.continue-btn{
    background:var(--blue);
    color:white;
    border:0;
    padding:12px 28px;
    font-size:15px;
    border-radius:6px;
    margin-bottom:22px;
}

/* Inline Verification Section Below Continue */
.verification-container{
    display:none;
    margin-top:20px;
    padding-top:20px;
    border-top:1px dashed #ddd;
}

.verification-container.show{
    display:block;
}

.verification-title{
    font-size:14px;
    font-weight:bold;
    color:#222;
    margin-bottom:8px;
}

.verification-desc{
    font-size:13px;
    color:#666;
    margin-bottom:15px;
    line-height:1.4;
}

.six-boxes{
    display:flex;
    gap:10px;
    margin-bottom:15px;
}

.code-box{
    width:48px;
    height:52px;
    border:1px solid #ccc;
    border-radius:6px;
    text-align:center;
    font-size:22px;
    font-weight:bold;
    background:#fafafa;
    outline:none;
}

.code-box:focus{
    border-color:var(--blue);
    background:#fff;
    box-shadow:0 0 0 2px rgba(49, 84, 244, 0.15);
}

.resend-text{
    font-size:13px;
    color:#666;
    margin-bottom:20px;
}

.resend-link{
    color:var(--blue);
    text-decoration:none;
    cursor:pointer;
    font-weight:bold;
}

.confirm-btn{
    background:var(--blue);
    color:white;
    border:0;
    padding:12px 28px;
    font-size:15px;
    border-radius:6px;
}


/* =========================================================
   TRANSACTION HISTORY TABLE
========================================================= */

.filter-row{
    display:flex;
    gap:20px;
    margin:20px 0;
    align-items:flex-end;
}

.filter-group{
    display:flex;
    flex-direction:column;
    gap:6px;
}

.filter-group label{
    font-size:12px;
    color:#666;
}

.filter-group select{
    height:38px;
    border:1px solid #e1e1e1;
    border-radius:4px;
    padding:0 30px 0 10px;
    font-size:13px;
    background:#fff;
}

.filter-actions{
    display:flex;
    gap:10px;
    margin-left:auto;
}

.btn-filter{
    background:var(--blue);
    color:white;
    border:0;
    padding:9px 22px;
    border-radius:4px;
    font-size:13px;
}

.btn-clear{
    background:transparent;
    color:#333;
    border:1px solid #ccc;
    padding:9px 22px;
    border-radius:4px;
    font-size:13px;
}

.history-table-wrapper{
    width:100%;
    overflow-x:auto;
    margin-top:15px;
}

.history-table{
    width:100%;
    border-collapse:collapse;
    text-align:left;
    font-size:12px;
}

.history-table th{
    background:#f8f9fa;
    color:#666;
    padding:12px 14px;
    font-weight:600;
    border-bottom:1px solid #eaeaea;
}

.history-table td{
    padding:14px;
    border-bottom:1px solid #f0f0f0;
    color:#333;
    vertical-align:middle;
}

.status-badge{
    display:inline-block;
    padding:4px 8px;
    border-radius:4px;
    font-size:11px;
    font-weight:600;
}

.status-badge.completed{
    background:var(--green-bg);
    color:var(--green);
}

.status-badge.pending{
    background:#eef3ff;
    color:var(--blue);
}

.status-badge.cancelled{
    background:var(--red-bg);
    color:var(--red);
}


/* =========================================================
   SETTINGS
========================================================= */

.settings-box{
    border:1px solid #ddd;
    background:#fafafa;
    padding:28px;
    border-radius:7px;
}

.settings-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
}

.settings-grid label{
    color:#666;
    font-size:14px;
}

.settings-grid input{
    display:block;
    width:100%;
    margin-top:8px;
    padding:15px;
    border:1px solid #ccc;
    border-radius:6px;
    background:white;
}

.save-btn{
    margin-top:25px;
    background:var(--blue);
    color:white;
    border:0;
    padding:15px 28px;
    border-radius:6px;
}


/* =========================================================
   MODAL DIALOG
========================================================= */

.modal-bg{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.5);
    z-index:200;
    display:none;
    align-items:center;
    justify-content:center;
}

.modal-bg.show{
    display:flex;
}

.modal{
    background:white;
    width:450px;
    max-width:90%;
    padding:30px;
    border-radius:8px;
}

.modal h2{
    margin-bottom:20px;
}

.modal input,
.modal select{
    width:100%;
    padding:14px;
    margin:8px 0 15px;
    border:1px solid #ccc;
    border-radius:5px;
}

.modal-actions{
    display:flex;
    gap:12px;
}

.modal-actions button{
    flex:1;
    padding:14px;
    border-radius:6px;
    border:1px solid #ddd;
    background:white;
}

.modal-actions .primary{
    background:var(--blue);
    color:white;
    border:0;
}


/* =========================================================
   DEMO BANNER
========================================================= */

.demo-notice{
    position:fixed;
    bottom:0;
    left:0;
    right:0;
    background:#111;
    color:white;
    text-align:center;
    padding:7px;
    font-size:12px;
    z-index:999;
}


/* =========================================================
   RESPONSIVE MOBILE BREAKPOINTS
========================================================= */

@media(max-width:700px){

    .header{
        height:92px;
    }

    .logo{
        font-size:35px;
    }

    .main{
        padding:0 28px 100px;
    }

    .page-title{
        font-size:36px;
    }

    .sidebar{
        width:490px;
    }

    .account-tabs{
        gap:20px;
    }

    .account-tab{
        font-size:20px;
    }

    .open-account{
        font-size:21px;
    }

    .balance{
        font-size:37px;
    }

    .settings-grid{
        grid-template-columns:1fr;
    }

    .code-box{
        width:40px;
        height:46px;
        font-size:18px;
    }

    .history-table-wrapper{
        overflow-x:scroll;
    }
}

</style>
</head>


<body>


<!-- =========================================================
   HEADER
========================================================= -->

<header class="header">

    <div class="header-inner">

        <button
            class="menu-btn"
            onclick="openSidebar()">
            ☰
        </button>

        <div class="logo">
            JustMarkets
        </div>

    </div>

</header>


<!-- =========================================================
   MAIN CONTAINER
========================================================= -->

<main
    id="main"
    class="main">
</main>


<!-- =========================================================
   OVERLAY
========================================================= -->

<div
    id="overlay"
    class="overlay"
    onclick="closeSidebar()">
</div>


<!-- =========================================================
   SIDEBAR
========================================================= -->

<aside
    id="sidebar"
    class="sidebar">

    <div class="profile">

        <button
            class="close-sidebar"
            onclick="closeSidebar()">
            ×
        </button>

        <div
            id="profileName"
            class="profile-name">
            Mugambi Raphael
        </div>

        <div
            id="profileEmail"
            class="profile-email">
            rd•••23@gmail.com
        </div>

        <div class="client">
            Client ID

            <strong id="profileClient">
                trckxk06
            </strong>
        </div>

        <span class="verified">
            Verified
        </span>

    </div>


    <div class="menu-list">

        <button
            class="menu-item"
            onclick="showPage('accounts')">

            <span class="menu-icon">
                ▣
            </span>

            My accounts

        </button>


        <button
            class="menu-item"
            onclick="showPage('funding')">

            <span class="menu-icon">
                ⇄
            </span>

            Funding

        </button>


        <button
            class="menu-item"
            onclick="showPage('benefits')">

            <span class="menu-icon">
                🎁
            </span>

            Benefits

        </button>


        <button
            class="menu-item"
            onclick="showPage('support')">

            <span class="menu-icon">
                ▢
            </span>

            Support hub

        </button>


        <button
            class="menu-item"
            onclick="showPage('settings')">

            <span class="menu-icon">
                ⚙
            </span>

            Settings

        </button>


        <div class="menu-divider"></div>


        <button class="menu-item">

            <span class="menu-icon">
                ⠿
            </span>

            JustMarkets products

            <span style="float:right">
                ⌄
            </span>

        </button>


        <button class="menu-item">

            <span class="menu-icon">
                ◎
            </span>

            English

            <span style="float:right">
                ⌄
            </span>

        </button>


        <div class="app-box">

            <h3>
                JustMarkets app
            </h3>

            <p>
                iOS and Android
            </p>

            <button
                onclick="demoAlert('App download is disabled in this demo.')">

                Download

            </button>

        </div>

    </div>

</aside>


<!-- =========================================================
   MODAL DIALOG CONTAINER
========================================================= -->

<div
    id="modalBg"
    class="modal-bg">

    <div
        id="modal"
        class="modal">
    </div>

</div>


<div class="demo-notice">

    DEMO INTERFACE — No real brokerage account or transaction is connected.

</div>


<script>

/* =========================================================
   APPLICATION STATE & INITIAL DATA
========================================================= */

const EXCHANGE_RATE_USD_TO_KES = 129;

let data = {

    profile:{
        name:"Mugambi Raphael",
        email:"rd•••23@gmail.com",
        client:"trckxk06"
    },

    accounts:[
        {
            type:"Standard",
            number:"1200526337",
            balance:1500,
            currency:"EUR",
            mode:"Demo"
        },
        {
            type:"Pro",
            number:"1200446294",
            balance:2200,
            currency:"USD",
            mode:"Demo"
        }
    ],

    realAccounts:[
        {
            type:"MT5 Pro",
            number:"2003078062",
            balance:2500.65,
            currency:"USD",
            mode:"Real"
        },
        {
            type:"Standard",
            number:"1550056199",
            balance:2980,
            currency:"USD",
            mode:"Real"
        }
    ],

    transactions:[
        /* All Image Upload Transactions Included + Minimum $500 to $1500 USD Filtered Items */
        {
            id: "20029827",
            time: "28/09/2026 09:24",
            type: "Internal Transfer",
            from: "MT5 Standard 1550056199 (USD)",
            to: "(USD)",
            amount: "-50 USD",
            status: "Completed"
        },
        {
            id: "20029827",
            time: "28/09/2026 09:24",
            type: "Internal Transfer",
            from: "MT5 Pro 2003078062 (USD)",
            to: "(USD)",
            amount: "+50 USD",
            status: "Completed"
        },
        {
            id: "47026996",
            time: "28/09/2026 09:23",
            type: "Deposit (Credit)",
            from: "MPESA",
            to: "MT5 Standard 1550056199 (USD)",
            amount: "+50 USD",
            status: "Completed"
        },
        {
            id: "47026827",
            time: "28/09/2026 09:22",
            type: "Deposit (Credit)",
            from: "MPESA",
            to: "MT5 Standard 1550056199 (USD)",
            amount: "50 USD",
            status: "Pending"
        },
        {
            id: "12123999",
            time: "28/09/2026 08:15",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-1500 USD",
            status: "Completed"
        },
        {
            id: "12123888",
            time: "27/09/2026 14:30",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-1200 USD",
            status: "Completed"
        },
        {
            id: "12123757",
            time: "26/09/2026 05:23",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-750 USD",
            status: "Completed"
        },
        {
            id: "12095264",
            time: "25/09/2026 15:37",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-500 USD",
            status: "Completed"
        },
        {
            id: "46813839",
            time: "25/09/2026 15:35",
            type: "Deposit (Credit)",
            from: "MPESA",
            to: "MT5 Standard 1550056199 (USD)",
            amount: "+10 USD",
            status: "Completed"
        },
        {
            id: "46812976",
            time: "25/09/2026 15:29",
            type: "Deposit (Credit)",
            from: "MPESA",
            to: "MT5 Standard 1550056199 (USD)",
            amount: "10 USD",
            status: "Cancelled"
        },
        {
            id: "19989540",
            time: "25/09/2026 15:28",
            type: "Internal Transfer",
            from: "MT4 IB Partner 410176523 (USD)",
            to: "(USD)",
            amount: "-1.43 USD",
            status: "Completed"
        },
        {
            id: "19989540",
            time: "25/09/2026 15:28",
            type: "Internal Transfer",
            from: "MT5 Standard 1550056199 (USD)",
            to: "(USD)",
            amount: "+1.43 USD",
            status: "Completed"
        },
        {
            id: "19989495",
            time: "25/09/2026 15:27",
            type: "Internal Transfer",
            from: "MT5 Pro 2003078062 (USD)",
            to: "(USD)",
            amount: "-3.77 USD",
            status: "Completed"
        },
        {
            id: "19989495",
            time: "25/09/2026 15:27",
            type: "Internal Transfer",
            from: "MT5 Standard 1550056199 (USD)",
            to: "(USD)",
            amount: "+3.77 USD",
            status: "Completed"
        },
        {
            id: "12070891",
            time: "24/09/2026 16:34",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-650 USD",
            status: "Completed"
        },
        {
            id: "19907728",
            time: "23/09/2026 08:53",
            type: "Internal Transfer",
            from: "MT4 IB Partner 410176523 (USD)",
            to: "(USD)",
            amount: "-0.85 USD",
            status: "Completed"
        },
        {
            id: "19907728",
            time: "23/09/2026 08:53",
            type: "Internal Transfer",
            from: "MT5 Pro 2003078062 (USD)",
            to: "(USD)",
            amount: "+0.85 USD",
            status: "Completed"
        },
        {
            id: "12038884",
            time: "23/09/2026 08:52",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-800 USD",
            status: "Completed"
        },
        {
            id: "12034033",
            time: "22/09/2026 23:56",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-550 USD",
            status: "Completed"
        },
        {
            id: "12018629",
            time: "22/09/2026 11:46",
            type: "Withdrawal (Debit)",
            from: "MT5 Pro 2003078062 (USD)",
            to: "MPESA",
            amount: "-1100 USD",
            status: "Completed"
        },
        {
            id: "19878790",
            time: "22/09/2026 11:45",
            type: "Internal Transfer",
            from: "MT4 IB Partner 410176523 (USD)",
            to: "(USD)",
            amount: "-1.49 USD",
            status: "Completed"
        },
        {
            id: "19878790",
            time: "22/09/2026 11:45",
            type: "Internal Transfer",
            from: "MT5 Pro 2003078062 (USD)",
            to: "(USD)",
            amount: "+1.49 USD",
            status: "Completed"
        },
        {
            id: "19872767",
            time: "22/09/2026 08:43",
            type: "Internal Transfer",
            from: "MT5 Standard 1550056199 (USD)",
            to: "(USD)",
            amount: "-100 USD",
            status: "Completed"
        }
    ]

};


/* =========================================================
   PERSISTENCE & HELPER UTILITIES
========================================================= */

const saved = localStorage.getItem("JM_DEMO_DATA");

if(saved){
    try{
        const savedData = JSON.parse(saved);
        if(savedData.profile) data.profile = savedData.profile;
        if(savedData.accounts) data.accounts = savedData.accounts;
        if(savedData.realAccounts) data.realAccounts = savedData.realAccounts;
        if(savedData.transactions) data.transactions = savedData.transactions;
    } catch(e){}
}

function saveData(){
    localStorage.setItem("JM_DEMO_DATA", JSON.stringify(data));
}

function money(value){
    return Number(value).toLocaleString("en-US", { minimumFractionDigits:2, maximumFractionDigits:2 });
}

function openSidebar(){
    document.getElementById("sidebar").classList.add("show");
    document.getElementById("overlay").classList.add("show");
}

function closeSidebar(){
    document.getElementById("sidebar").classList.remove("show");
    document.getElementById("overlay").classList.remove("show");
}

function updateProfile(){
    document.getElementById("profileName").textContent = data.profile.name;
    document.getElementById("profileEmail").textContent = data.profile.email;
    document.getElementById("profileClient").textContent = data.profile.client;
}

function showModal(content){
    const modal = document.getElementById("modal");
    modal.innerHTML = content;
    document.getElementById("modalBg").classList.add("show");
}

function closeModal(){
    document.getElementById("modalBg").classList.remove("show");
}

function demoAlert(msg){
    alert(msg);
}


/* =========================================================
   ACCOUNTS PAGE VIEW
========================================================= */

function accountsPage(){
    document.getElementById("main").innerHTML = `
        <h1 class="page-title">My accounts</h1>
        <div class="account-tabs">
            <button class="account-tab" onclick="showAccountType('real')">Real</button>
            <button class="account-tab active" onclick="showAccountType('demo')">Demo</button>
            <button class="account-tab" onclick="showAccountType('archived')">Archived</button>
        </div>
        <button class="open-account" onclick="newAccount()">
            <span>＋</span> Open new Account
        </button>
        <div class="sort-row">
            <select class="sort-select" onchange="sortAccounts(this.value)">
                <option value="newest">Newest</option>
                <option value="oldest">Oldest</option>
                <option value="high">Balance high to low</option>
                <option value="low">Balance low to high</option>
            </select>
            <div class="view-buttons">
                <button class="active">☷</button>
                <button>▦</button>
            </div>
        </div>
        <div id="accountList">${renderDemoAccounts()}</div>
    `;
}

function renderDemoAccounts(){
    return data.accounts.map((account,index) => `
        <div class="account-card">
            <button class="account-menu" onclick="accountMenu(${index})">⋮</button>
            <div class="tags">
                <span class="tag demo">Demo</span>
                <span class="tag">MT5</span>
            </div>
            <div class="account-name">${account.type} #${account.number}</div>
            <div class="balance">${money(account.balance)} ${account.currency}</div>
            <div class="account-actions">
                <button class="money-btn" onclick="fundDemo(${index})">$</button>
                <button class="trade-btn" onclick="openTrading(${index})">↗</button>
            </div>
        </div>
    `).join("");
}

function renderRealAccounts(){
    return data.realAccounts.map((account,index) => `
        <div class="account-card">
            <button class="account-menu" onclick="realMenu(${index})">⋮</button>
            <div class="tags">
                <span class="tag real">Real</span>
                <span class="tag">MT5</span>
            </div>
            <div class="account-name">${account.type} #${account.number}</div>
            <div class="balance">${money(account.balance)} ${account.currency}</div>
            <div class="account-actions">
                <button class="money-btn" onclick="realAccountBalance(${index})">$</button>
                <button class="trade-btn" onclick="realTrading(${index})">↗</button>
            </div>
        </div>
    `).join("");
}

function showAccountType(type){
    if(type === "real"){
        document.getElementById("main").innerHTML = `
            <h1 class="page-title">My accounts</h1>
            <div class="account-tabs">
                <button class="account-tab active" onclick="showAccountType('real')">Real</button>
                <button class="account-tab" onclick="showAccountType('demo')">Demo</button>
                <button class="account-tab" onclick="showAccountType('archived')">Archived</button>
            </div>
            <button class="open-account" onclick="newAccount()">
                <span>＋</span> Open new Account
            </button>
            <div class="sort-row">
                <select class="sort-select"><option>Newest</option></select>
                <div class="view-buttons">
                    <button class="active">☷</button>
                    <button>▦</button>
                </div>
            </div>
            <div>${renderRealAccounts()}</div>
        `;
    } else if(type === "demo"){
        accountsPage();
    } else {
        document.getElementById("main").innerHTML = `
            <h1 class="page-title">My accounts</h1>
            <div class="account-tabs">
                <button class="account-tab" onclick="showAccountType('real')">Real</button>
                <button class="account-tab" onclick="showAccountType('demo')">Demo</button>
                <button class="account-tab active">Archived</button>
            </div>
            <div style="margin-top:20px; color:#777;">No archived demo accounts.</div>
        `;
    }
}

function sortAccounts(type){
    if(type === "high") data.accounts.sort((a,b) => b.balance - a.balance);
    else if(type === "low") data.accounts.sort((a,b) => a.balance - b.balance);
    document.getElementById("accountList").innerHTML = renderDemoAccounts();
}

function newAccount(){
    showModal(`
        <h2>Open New Account</h2>
        <label>Account Type</label>
        <select id="newType">
            <option value="Standard">Standard</option>
            <option value="Pro">Pro</option>
        </select>
        <label>Currency</label>
        <select id="newCurrency">
            <option value="USD">USD</option>
            <option value="EUR">EUR</option>
        </select>
        <label>Initial Balance</label>
        <input id="newBalance" type="number" value="1000">
        <div class="modal-actions">
            <button onclick="closeModal()">Cancel</button>
            <button class="primary" onclick="createAccount()">Create</button>
        </div>
    `);
}

function createAccount(){
    const type = document.getElementById("newType").value;
    const currency = document.getElementById("newCurrency").value;
    const balance = Number(document.getElementById("newBalance").value) || 1000;
    const number = Math.floor(1000000000 + Math.random() * 9000000000).toString();

    data.accounts.unshift({ type, number, balance, currency, mode: "Demo" });
    saveData();
    closeModal();
    accountsPage();
}

function accountMenu(index){
    let account = data.accounts[index];
    showModal(`
        <h2>Edit Demo Account</h2>
        <label>Account balance</label>
        <input id="editBalance" type="number" step="0.01" value="${account.balance}">
        <label>Currency</label>
        <select id="editCurrency">
            <option ${account.currency==="EUR"?"selected":""}>EUR</option>
            <option ${account.currency==="USD"?"selected":""}>USD</option>
        </select>
        <div class="modal-actions">
            <button onclick="closeModal()">Cancel</button>
            <button class="primary" onclick="saveAccount(${index})">Save</button>
        </div>
    `);
}

function saveAccount(index){
    data.accounts[index].balance = Number(document.getElementById("editBalance").value);
    data.accounts[index].currency = document.getElementById("editCurrency").value;
    saveData();
    closeModal();
    accountsPage();
}

function realAccountBalance(index){
    let account = data.realAccounts[index];
    showModal(`
        <h2>Edit Real Account</h2>
        <p style="margin-bottom:20px">${account.type} #${account.number}</p>
        <label>Balance</label>
        <input id="realBalance" type="number" step="0.01" value="${account.balance}">
        <div class="modal-actions">
            <button onclick="closeModal()">Cancel</button>
            <button class="primary" onclick="saveRealBalance(${index})">Save</button>
        </div>
    `);
}

function saveRealBalance(index){
    data.realAccounts[index].balance = Number(document.getElementById("realBalance").value);
    saveData();
    closeModal();
    showAccountType("real");
}

function realMenu(index){
    let account = data.realAccounts[index];
    showModal(`
        <h2>${account.type} Account</h2>
        <p>Account #${account.number}</p>
        <p style="font-size:30px; font-weight:bold; margin:20px 0;">${money(account.balance)} ${account.currency}</p>
        <div class="modal-actions"><button class="primary" onclick="closeModal()">Close</button></div>
    `);
}

function realTrading(index){
    let account = data.realAccounts[index];
    showModal(`
        <h2>Trading</h2>
        <p>Account: <strong>${account.type} #${account.number}</strong></p>
        <p style="font-size:28px; font-weight:bold; margin:20px 0;">${money(account.balance)} ${account.currency}</p>
        <div class="modal-actions"><button class="primary" onclick="closeModal()">Close</button></div>
    `);
}

function openTrading(index){
    let account = data.accounts[index];
    showModal(`
        <h2>Trade - Demo Account</h2>
        <p>Account: <strong>${account.type} #${account.number}</strong></p>
        <p style="font-size:28px; font-weight:bold; margin:15px 0;">${money(account.balance)} ${account.currency}</p>
        <div class="modal-actions"><button class="primary" onclick="closeModal()">Close</button></div>
    `);
}

function fundDemo(index){
    let account = data.accounts[index];
    showModal(`
        <h2>Add Demo Funds</h2>
        <p style="color:#777; margin-bottom:20px;">Account: ${account.type} #${account.number}</p>
        <label>Amount to add</label>
        <input id="addFundsAmount" type="number" value="1000">
        <div class="modal-actions">
            <button onclick="closeModal()">Cancel</button>
            <button class="primary" onclick="addDemoFunds(${index})">Add Funds</button>
        </div>
    `);
}

function addDemoFunds(index){
    const amount = Number(document.getElementById("addFundsAmount").value) || 0;
    data.accounts[index].balance += amount;
    saveData();
    closeModal();
    accountsPage();
}


/* =========================================================
   PAGES ROUTER & FUNDING FLOW
========================================================= */

function showPage(page){
    closeSidebar();
    if(page === 'accounts') accountsPage();
    else if(page === 'funding') fundingPage('withdrawal', 'selection');
    else if(page === 'benefits') benefitsPage();
    else if(page === 'support') supportPage();
    else if(page === 'settings') settingsPage();
}

function fundingPage(tab = 'withdrawal', view = 'selection'){
    document.getElementById("main").innerHTML = `
        <h1 class="page-title">Funding</h1>

        <div class="funding-tabs">
            <button class="funding-tab ${tab === 'deposit' ? 'active' : ''}" onclick="fundingPage('deposit', 'selection')">Deposit</button>
            <button class="funding-tab ${tab === 'withdrawal' ? 'active' : ''}" onclick="fundingPage('withdrawal', 'selection')">Withdrawal</button>
            <button class="funding-tab ${tab === 'transfer' ? 'active' : ''}" onclick="fundingPage('transfer', 'selection')">Internal Transfer</button>
            <button class="funding-tab ${tab === 'history' ? 'active' : ''}" onclick="fundingPage('history', 'selection')">Transaction History</button>
        </div>

        ${tab === 'withdrawal' ? 
            (view === 'selection' ? renderWithdrawalMethods() : renderWithdrawalForm()) 
            : tab === 'history' ? renderTransactionHistory() 
            : '<p style="margin-top:30px; color:#777;">Selected tab content demo.</p>'}
    `;

    if(tab === 'withdrawal' && view === 'form'){
        initAutoConversion();
    }
}

/* STEP 1: PAYMENT SYSTEM SELECTION */
function renderWithdrawalMethods(){
    return `
        <h3 style="margin:20px 0 10px; font-size:18px;">Recommended methods</h3>
        <div class="method-grid">
            <div class="method-card" onclick="fundingPage('withdrawal', 'form')">
                <div>
                    <span class="badge">RECOMMENDED</span>
                    <div class="method-title">MPESA</div>
                    <div class="method-desc">Instant withdrawal to M-Pesa account</div>
                </div>
            </div>
            <div class="method-card" onclick="fundingPage('withdrawal', 'form')">
                <div>
                    <span class="badge">POPULAR</span>
                    <div class="method-title">Local Bank Transfer</div>
                    <div class="method-desc">Direct to bank account</div>
                </div>
            </div>
        </div>

        <h3 style="margin:30px 0 10px; font-size:18px;">All payment systems</h3>
        <div class="method-grid">
            <div class="method-card" onclick="fundingPage('withdrawal', 'form')">
                <div class="method-title">Bank Cards (Visa/Mastercard)</div>
                <div class="method-desc">Process time: 1-3 business days</div>
            </div>
            <div class="method-card" onclick="fundingPage('withdrawal', 'form')">
                <div class="method-title">Skrill / Neteller</div>
                <div class="method-desc">Instant processing</div>
            </div>
            <div class="method-card" onclick="fundingPage('withdrawal', 'form')">
                <div class="method-title">Crypto</div>
                <div class="method-desc">USDT, BTC, ETH</div>
            </div>
        </div>
    `;
}

/* STEP 2: WITHDRAWAL FORM VIEW WITH AUTOMATIC CONVERSION & AUTOMATIC FORM $10 USD MINIMUM (UNCOMMENDED / UNINDICATED ON PAGE) */
function renderWithdrawalForm(){
    return `
        <a class="see-methods-link" onclick="fundingPage('withdrawal', 'selection')">See all payment methods</a>

        <div class="withdrawal-form">

            <div class="form-group">
                <label class="form-label">Account</label>
                <div class="select-wrapper">
                    <select id="withdrawAccount">
                        ${data.realAccounts.map(a => `<option value="${a.type}${a.number}">${a.type}${a.number} (${money(a.balance)}${a.currency})</option>`).join('')}
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group" style="flex:2;">
                    <label class="form-label">Withdrawal method</label>
                    <div class="select-wrapper">
                        <select id="withdrawMethod">
                            <option value="MPESA">MPESA</option>
                            <option value="BANK">Local Bank Transfer</option>
                        </select>
                    </div>
                </div>

                <div class="form-group" style="flex:1;">
                    <label class="form-label">Currency</label>
                    <div class="select-wrapper">
                        <select id="withdrawCurrency">
                            <option value="KES">KES</option>
                            <option value="USD">USD</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="notice-box">
                Please note that we process your withdrawal request instantly, but there may be a delay on the side of the payment system MPESA. Don't hesitate to contact our support team if you do not receive your withdrawal within 24 hours.
            </div>

            <div class="form-group">
                <label class="form-label">Phone number</label>
                <div class="select-wrapper">
                    <select id="withdrawPhone">
                        <option value="+254703606219">+254703606219</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="form-label">Amount</label>
                <div class="input-wrapper">
                    <input type="number" id="withdrawAmountUSD" value="500" min="10" step="any" placeholder="Enter USD amount">
                    <span class="info-icon">i</span>
                </div>
            </div>

            <div class="form-group">
                <label class="form-label">To be withdrawn</label>
                <div class="input-wrapper">
                    <input type="number" id="withdrawConvertedKES" value="64500" step="any" placeholder="Amount in KES">
                    <span class="info-icon">i</span>
                </div>
            </div>

            <button class="continue-btn" onclick="toggleVerificationSection()">Continue</button>

            <!-- Verification section dynamically placed directly below Continue button -->
            <div id="verificationSection" class="verification-container">
                <div class="verification-title">Enter security code</div>
                <div class="verification-desc">
                    We sent a 6-digit confirmation code to <strong>${data.profile.email}</strong>.
                </div>

                <div class="six-boxes">
                    <input type="text" class="code-box" maxlength="1" oninput="codeNext(this, 1)" onkeydown="codeBack(event, 1)">
                    <input type="text" class="code-box" maxlength="1" oninput="codeNext(this, 2)" onkeydown="codeBack(event, 2)">
                    <input type="text" class="code-box" maxlength="1" oninput="codeNext(this, 3)" onkeydown="codeBack(event, 3)">
                    <input type="text" class="code-box" maxlength="1" oninput="codeNext(this, 4)" onkeydown="codeBack(event, 4)">
                    <input type="text" class="code-box" maxlength="1" oninput="codeNext(this, 5)" onkeydown="codeBack(event, 5)">
                    <input type="text" class="code-box" maxlength="1" oninput="codeNext(this, 6)" onkeydown="codeBack(event, 6)">
                </div>

                <div class="resend-text">
                    Didn't receive code? <a class="resend-link" onclick="demoAlert('A new verification code has been sent to your email.')">Resend code</a>
                </div>

                <button class="confirm-btn" onclick="submitFinalWithdrawal()">Withdraw</button>
            </div>

            <div class="notice-box" style="margin-top:20px;">
                <span class="close-notice" onclick="this.parentElement.style.display='none'">×</span>
                <strong>Please note:</strong> If the currency of the trading/IB account differs from the currency of the banking/card/payment system account, the amount withdrawn will be converted.
            </div>

        </div>
    `;
}

function initAutoConversion(){
    const usdInput = document.getElementById("withdrawAmountUSD");
    const kesInput = document.getElementById("withdrawConvertedKES");

    if(!usdInput || !kesInput) return;

    usdInput.addEventListener("input", () => {
        const val = parseFloat(usdInput.value);
        if(!isNaN(val) && val >= 0){
            kesInput.value = (val * EXCHANGE_RATE_USD_TO_KES).toFixed(2);
        } else {
            kesInput.value = "";
        }
    });

    kesInput.addEventListener("input", () => {
        const val = parseFloat(kesInput.value);
        if(!isNaN(val) && val >= 0){
            usdInput.value = (val / EXCHANGE_RATE_USD_TO_KES).toFixed(2);
        } else {
            usdInput.value = "";
        }
    });
}

/* TOGGLE VERIFICATION DISPLAY BELOW CONTINUE BUTTON */
function toggleVerificationSection(){
    const usdVal = parseFloat(document.getElementById("withdrawAmountUSD") ? document.getElementById("withdrawAmountUSD").value : "0");

    /* Automatic internal minimum system check ($10 USD minimum) */
    if(isNaN(usdVal) || usdVal < 10){
        demoAlert("Minimum withdrawal amount is $10 USD.");
        return;
    }

    const sec = document.getElementById("verificationSection");
    if(sec){
        sec.classList.add("show");
        const firstBox = sec.querySelector(".code-box");
        if(firstBox) firstBox.focus();
    }
}

/* 6-BOXES AUTOMATIC CURSOR MOVEMENT */
function codeNext(el, index){
    if(el.value.length === 1 && index < 6){
        const boxes = document.querySelectorAll(".code-box");
        if(boxes[index]) boxes[index].focus();
    }
}

function codeBack(e, index){
    if(e.key === "Backspace" && !e.target.value && index > 1){
        const boxes = document.querySelectorAll(".code-box");
        if(boxes[index - 2]) boxes[index - 2].focus();
    }
}

/* FINAL SUBMIT ACTION WITH CODE VERIFICATION & TRANSACTION HISTORY LOGGING */
function submitFinalWithdrawal(){
    const boxes = document.querySelectorAll(".code-box");
    let fullCode = "";
    boxes.forEach(b => fullCode += b.value.trim());

    if(fullCode.length < 6){
        demoAlert("Please fill in all 6 digits of the verification code.");
        return;
    }

    const usdVal = parseFloat(document.getElementById("withdrawAmountUSD").value);

    if(usdVal < 10){
        demoAlert("Minimum withdrawal amount is $10 USD.");
        return;
    }

    const selectedAccText = document.getElementById("withdrawAccount").value;
    const now = new Date();
    const dateStr = `${now.getDate().toString().padStart(2,'0')}/${(now.getMonth()+1).toString().padStart(2,'0')}/${now.getFullYear()} ${now.getHours().toString().padStart(2,'0')}:${now.getMinutes().toString().padStart(2,'0')}`;
    const newTxId = Math.floor(10000000 + Math.random() * 90000000).toString();

    // Deduct balance from real account
    if(data.realAccounts && data.realAccounts.length > 0){
        data.realAccounts[0].balance = Math.max(0, data.realAccounts[0].balance - usdVal);
    }

    // Add completed transaction to history automatically
    data.transactions.unshift({
        id: newTxId,
        time: dateStr,
        type: "Withdrawal (Debit)",
        from: selectedAccText.includes("Pro") ? "MT5 Pro 2003078062 (USD)" : `${selectedAccText} (USD)`,
        to: "MPESA",
        amount: `-${usdVal} USD`,
        status: "Completed"
    });

    saveData();
    demoAlert(`Success! Security code confirmed. Withdrawal of -$${usdVal} USD from MT5 Pro 2003078062 to MPESA has been completed.`);
    fundingPage('history', 'selection');
}


/* =========================================================
   TRANSACTION HISTORY VIEW
========================================================= */

function renderTransactionHistory(){
    return `
        <div class="filter-row">
            <div class="filter-group">
                <label>Period</label>
                <select><option>All</option></select>
            </div>
            <div class="filter-group">
                <label>Transaction types</label>
                <select><option>All</option></select>
            </div>
            <div class="filter-group">
                <label>Status</label>
                <select><option>All</option></select>
            </div>
            <div class="filter-actions">
                <button class="btn-filter">Filter</button>
                <button class="btn-clear">Clear</button>
            </div>
        </div>

        <div class="history-table-wrapper">
            <table class="history-table">
                <thead>
                    <tr>
                        <th>Transaction ID</th>
                        <th>Creation time</th>
                        <th>Transaction type</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Amount</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    ${data.transactions.map(t => `
                        <tr>
                            <td>${t.id}</td>
                            <td>${t.time}</td>
                            <td>${t.type}</td>
                            <td>${t.from}</td>
                            <td>${t.to}</td>
                            <td>${t.amount}</td>
                            <td>
                                <span class="status-badge ${t.status.toLowerCase()}">${t.status}</span>
                            </td>
                        </tr>
                    `).join('')}
                </tbody>
            </table>
        </div>
    `;
}


/* =========================================================
   SECONDARY PAGES
========================================================= */

function benefitsPage(){
    document.getElementById("main").innerHTML = `
        <h1 class="page-title">Benefits</h1>
        <div><h2>Promotions & Rewards</h2><p style="margin-top:15px; color:#777;">Explore deposit bonuses and rewards.</p></div>
    `;
}

function supportPage(){
    document.getElementById("main").innerHTML = `
        <h1 class="page-title">Support Hub</h1>
        <div><h2>24/7 Support</h2><p style="margin-top:15px; color:#777;">Live chat & help desk.</p></div>
    `;
}

function settingsPage(){
    document.getElementById("main").innerHTML = `
        <h1 class="page-title">Settings</h1>
        <div class="settings-box">
            <div class="settings-grid">
                <div><label>Full Name</label><input id="setName" type="text" value="${data.profile.name}"></div>
                <div><label>Email Address</label><input id="setEmail" type="email" value="${data.profile.email}"></div>
                <div><label>Client ID</label><input id="setClient" type="text" value="${data.profile.client}"></div>
            </div>
            <button class="save-btn" onclick="saveSettings()">Save Changes</button>
        </div>
    `;
}

function saveSettings(){
    data.profile.name = document.getElementById("setName").value;
    data.profile.email = document.getElementById("setEmail").value;
    data.profile.client = document.getElementById("setClient").value;
    saveData();
    updateProfile();
    demoAlert("Settings saved.");
}


/* =========================================================
   APPLICATION INITIALIZATION
========================================================= */

updateProfile();
accountsPage();

</script>

</body>
</html>
