Return-Path: <clang-built-linux+bncBDY4DWN3WYHRBOEE27XAKGQE7IKDGJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0211046B0
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Nov 2019 23:46:17 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id w85sf731980qka.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Nov 2019 14:46:17 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574289976; cv=pass;
        d=google.com; s=arc-20160816;
        b=qdA3dWNR0am20R9jgJPgyKWnkwG8EcixRLj0YSLujgyF7p34xAJczfrv64oqJT+nn+
         l5w9zrpPPXvjkC4P9vvn/mwbqDBXpe6eN45qte3+edDQTWUuF1TRfH1JzUwlOMgRXfX3
         3WIUIcHNzLaKon0t1y5q5lYMSZIpzu6UDNYm92dGmD23K5TbYe0v/Sp0SQhFaFtp85hw
         Mtm0VzDiMg97DAM3JBFiLEMBc2K84Y7IDad0MU+2oqF7oz+3aOEZJEAyxZQJ9knzv8xD
         EVCmFns9EsIoCRXHQOuWxqh5Plcq/3gydhOQvUma6HI6PT88OA4C/8oLCeYzS7j0JEpR
         8PeQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :wdcipoutbound:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:ironport-sdr:sender:dkim-signature;
        bh=4YaJVi1rlG0IPNG7nvDmBWDNHDVB/sPyW6e339a9LVA=;
        b=Z1Ml2Ydvwsd5idJypbRN34oSonbqWbYGZL7YdmlqB2zBLdlqUN+uOCAKHVOsgdu/1z
         K7lTiw898JS5Wf7iYBCoVCNegpVqxzvFHCbI/Wg4MHc/O128kZ7Idj17o4zP37eO53CJ
         5A8fLtzKk6vpTvoA+9e671au8iXGjBhXL/zJKO6KeOHYNXcxZPtE77b0xVWnLZKms11s
         5ai1rknvd/pndYnxaVSBpID8ge704NHF4C346FNBze/R3BjWON5Z7P7XtGkVUpoyBy5C
         pBFPgOg0O0RfJYpGbUE9ULXWgPUpPq9XY6VpbMbaWTReTwC8KU/ganFEBgX64HHMEGpx
         Jn+Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=JdBBOYIz;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=bdIWP7wT;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=220b3d859=atish.patra@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=220b3d859=Atish.Patra@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:wdcipoutbound:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4YaJVi1rlG0IPNG7nvDmBWDNHDVB/sPyW6e339a9LVA=;
        b=Eqx3/abjs7d4OLwy2q2E1Hxhy+z9c43l7vOkh1N5FcUyLQSaB5az9MaTiwQHYm1j6a
         Bt240ho5vGCDcLDJQW8mBwydnq4jNFF/lXlTiewSVTFYvXNwERZdryHNdWqh5ZHqZ48d
         Gs5zXQwLHUlmRS+i+VkXlK3YeISOU77njMuCusSjQkR/ntomDAII03RQvxMF3+Z/atVG
         bucz5AT7fSmrWbTfqG+U7h3AcnTrftHfBCCFizmGX0TJrtmXTPJRp+ehc8VBpp6Y3oVL
         rfIs7jJvo54BKbNM8DDwYwFcXcLNU8tMzozXpubt0DlXDGQ/GBoVVaJskzZ5b3iyVW6s
         txig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:wdcipoutbound:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4YaJVi1rlG0IPNG7nvDmBWDNHDVB/sPyW6e339a9LVA=;
        b=PlkcjYfvzyD3aJ9My+w1XHMWyOWD366Jr5vAZ8M3WDYNZ18aobLBTHqZS9aYnsDRs9
         GO6M0ICimbWMYL5b7EO8re2ud//+5WeCur3s21tVNsE2UL6XS1VfvBReNp274wahghkQ
         Zw036KBIWpkE/z2J+uELAe0e5u0fE8PE5byvFA16swYy5cx33gaFYYmg53CA7MjfZ8F9
         A0LcIJTPhVmOP+2x8bxBnFmUluLGwO3GdbGZMCphzymxgh5OYDPAEMeWx6WUnk/KVIhb
         Rga5tAzFMFmmWVI8IwxEFUUeH0gD9VWHDR8srb0FMR7BhiDP68A23sjBBuDefgXqatjm
         RDlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQ5WZRcE0rC5XJgeMbtlHgi9dx4QVKMfWbkPpevETPuGvaY8QA
	L/pqXMU/ThWNuDAprxBcA80=
X-Google-Smtp-Source: APXvYqyvL7/O+U2g6MhKCDKFnJX4dACpxDGth6D2EwjSzF1B34wots+sh2tj/6joLtso6iQ8Vb3SQA==
X-Received: by 2002:ac8:7957:: with SMTP id r23mr5124535qtt.211.1574289976352;
        Wed, 20 Nov 2019 14:46:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ad11:: with SMTP id f17ls1358519qkm.1.gmail; Wed, 20 Nov
 2019 14:46:16 -0800 (PST)
X-Received: by 2002:ae9:ea06:: with SMTP id f6mr5052117qkg.246.1574289975901;
        Wed, 20 Nov 2019 14:46:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574289975; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBLdjaQWheQlb5koAW6nrJ7/AiMkvrQ1Dcpy5H/JMPqDIRL6517mADCUBHFPubqm92
         IIbzk2Mkrgvlu9555z5QOUI3AbPQFEaUrhBkG/1On5CLKwwOp0zEzjcAh9P9mQlyZ214
         KZEmT4S+BZ8W64YjaQnPqRxc1CY1lljW7MtOcVq1lbHBJTnzcIsRyE8hTrV3HqOXeuSb
         34LyxsOSc49wycAjOH1LPONHX0RsRNH32yMOUALS26b1J4DCBIZiOwc860ObKURL2bCm
         uSWFqCOvBAYUMc3KYu2eVMOj87A3CPpj111i0bVkx24+eYTDv8CizltQCRN84mLynmwn
         c1cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=P4bAUvFmh2gWdbl5DictIEmhqdrTEP80EMw63b41QTw=;
        b=mtqkWM6fTbjcgWQSZZWyP9akDxbq9KaAOhhABx7GtI0eC5qSyfEz53SvqJcr7UCSY4
         peeKHbCn8pbQ5u58d8/L1lPT34AeoCkeIuwJQiHusztGop65c49xevxmIH11umB8dknG
         kDNH/ieZwYZLr52zUAVl7QqS1ewM3mICEkeovBitHzIX6fUro8vhTH9ekHEr3l+IL6Sb
         +1zi12GSLI4UNiEdAwkUEe3yKxWvFeihUFaFjas4YtcA2rAjtPWHrFg7FyPKBcPTWRIS
         0M3OsLqNdg/kTIzfIHRGjFhQzOw3j4g5Tdags7KQf5zvRFNEDXRvFcbrlHPtahuzOolv
         H3hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=JdBBOYIz;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=bdIWP7wT;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=220b3d859=atish.patra@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=220b3d859=Atish.Patra@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com. [68.232.141.245])
        by gmr-mx.google.com with ESMTPS id a189si35044qkb.4.2019.11.20.14.46.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Nov 2019 14:46:15 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=220b3d859=atish.patra@wdc.com designates 68.232.141.245 as permitted sender) client-ip=68.232.141.245;
IronPort-SDR: jqUyxMsG7k0stD6eEa/eCMGkm6cmYfz6dx+Am0yMSGa/vsRd/ug8RJGzh5+0eVbl8IbMpVO3JQ
 79CgMmjqdmQpRWletUC51uQtRbiX9M/9VznCC9HvZOqD0jEyMpygHv4hOy5wRrAx3sc2lc5WSO
 n3aBC5OT01QVLHo1aWNpsmaWu8OT8Ed44649wmH+QOS8b6OTtpHrYKLMCGNTW6Qgabbe7aF9po
 CoPevMwUgRs0TTFrFCdFpQZ1PI0+TDqIw8z/4uCqMFAVuMNwcVJlLy1sBP24C1rt6HNCCgEhZ3
 y9o=
X-IronPort-AV: E=Sophos;i="5.69,223,1571673600"; 
   d="scan'208";a="230962157"
Received: from mail-bn3nam04lp2056.outbound.protection.outlook.com (HELO NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.56])
  by ob1.hgst.iphmx.com with ESMTP; 21 Nov 2019 06:46:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wx/hr2yBgYeIZYk0MwBh+fmZBwtOy5j55tFzjlX4pVzPiy4srG+4Fa44HDM7jR+FgrK4d1wd0aQbHXUuHL/YgXhVTxtacDOvD1b0sIgp6rS6FxHlaEizrqo5G6uW4wZYIxVu2owmou3K0Jm3fX3hUCaZL6X47neYt9e2O8rhHxfG+nwdjvuQOtLPwO+DfYxOhLCcagk9azC07IFNMwBMa+EjfdP2H3I6ezrGuQ68Y+9mVAV4bVw1G1zqSM/EQAn2SneVhbieXSivp1DrpGHXQMFFmvvkd+FG6fso1CrZzDdW8HyZ0VRwISkC5ub0aOdsvJP0+Yp7rsWnh2R+AfKXlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P4bAUvFmh2gWdbl5DictIEmhqdrTEP80EMw63b41QTw=;
 b=n0495yNaa0H0LfXsGaSmXuQuOuHtNUw+4WtoZMX8okjEwxqHayuMM2paSFI8TAVy49yBKfy+6QvLGW1xM2lmP/h+WLWMoJU/PN5ZUjyDEtNydRnCU8eGSqgOIT7XrJFpwzyt2L3KgnoBWRua9K7BP3vX/nxT8/kN4HRIG/NNBEC8N+T2xms/+T6ggL5GGMUtCa6tJ2lIrCrpD43dH/uGt9JvkHqsyeaG9Fun8WduWEm/MffnHQKPGmpg39Y01BsrKp2u/ZkGRHNP0D1YmvPStX7YcRRWF4udeoH8TcrXBuBX1tH/VwUnWP+lofaxSQdM80iUY7LNwstayHwz81YG6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5032.namprd04.prod.outlook.com (52.135.235.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Wed, 20 Nov 2019 22:46:02 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2451.031; Wed, 20 Nov 2019
 22:46:02 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "ndesaulniers@google.com" <ndesaulniers@google.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"kbuild@lists.01.org" <kbuild@lists.01.org>, "lkp@intel.com" <lkp@intel.com>
Subject: Re: [atishp04:efi_stub 1/1]
 drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable
 'secure_boot' is uninitialized when used here
Thread-Topic: [atishp04:efi_stub 1/1]
 drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable
 'secure_boot' is uninitialized when used here
Thread-Index: AQHVnqQlGtYIvl6adEKJRMlC8/LPYaeUq0iA
Date: Wed, 20 Nov 2019 22:46:02 +0000
Message-ID: <dfbc952f478c57bcc2b8ec41ef0542119785444b.camel@wdc.com>
References: <201911191421.oOPAr13c%lkp@intel.com>
	 <CAKwvOd=2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj+AYQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj+AYQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 96933c51-4758-46ce-4c57-08d76e0b6ba2
x-ms-traffictypediagnostic: BYAPR04MB5032:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BYAPR04MB5032BE79134AD1A7066F701BFA4F0@BYAPR04MB5032.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:386;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(189003)(199004)(51914003)(14454004)(86362001)(2616005)(316002)(118296001)(76116006)(6512007)(6916009)(6306002)(8676002)(6116002)(71200400001)(486006)(71190400001)(54906003)(186003)(66446008)(66946007)(966005)(11346002)(64756008)(25786009)(99286004)(6246003)(66476007)(446003)(229853002)(66556008)(476003)(4326008)(36756003)(6486002)(102836004)(5024004)(26005)(4001150100001)(6436002)(5660300002)(2906002)(14444005)(2501003)(256004)(7736002)(30864003)(305945005)(6506007)(8936002)(3846002)(66066001)(2351001)(81166006)(5640700003)(53546011)(81156014)(1730700003)(478600001)(76176011)(579004)(559001)(569006);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR04MB5032;H:BYAPR04MB3990.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lfr5lBFds5zLGXJRjw8XvSusTpRN1lXLC6mpVfnWYtFbn+DBJ76qnWQdl8quD+MVdMkfYWNp19Xls0PMwjWWWLqjcEK/Ryj2K89m85C6f1dUGbkJMHmKT97J4/Feh0M8diemJYKCTb98olnwx5/pzs4D06JEVsV2tjHZu4daihEgIKUccoXYMLADnW47OGXCTcxrB2/MG91ofVSf3BEM4nDJcqhUznDEzNc/r2HJtk4GwZ9CMC5MnMoJTBSgTSXWPN9HbmjCz6xNQe16/GTGSfOVntbyTYgFg2wwlvvIKSTuDrpk+R3Ps+ncGDDROruSfBAgAQluvKfn05kHmVo1IHGErMQhTCdE06HimlzlGt5Q1/1fbJi/NP8M/+pUzdQ4jJJKBuJ5d/WJ6v8XhgYJdPOAoyAk94YG4wWTNuV9ZncwYSJBxzCwFY7eNw5p70xXLtYV0VcfGDTDCOYj0y7qkzBgZpvuqoT2an5rSpbkiQE=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5C9F478FA3FC4D4B87094B9CD1E0EE97@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96933c51-4758-46ce-4c57-08d76e0b6ba2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 22:46:02.4039
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f09hQq/VONc6cP5OTQUk78qSbSrWq0eFPenPP/gV7KR+sNbRwj0YVQPZX30qoQwhpxskyy+nyALW+HK1KgL2UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5032
X-Original-Sender: atish.patra@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=JdBBOYIz;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=bdIWP7wT;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=220b3d859=atish.patra@wdc.com designates 68.232.141.245 as
 permitted sender) smtp.mailfrom="prvs=220b3d859=Atish.Patra@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, 2019-11-18 at 22:39 -0800, Nick Desaulniers wrote:
> Atish, below is a report from 0day bot from a build with Clang. The
> warning looks legit, can you please take a look?
> 
Hi Nick,
Thanks for the email. This is a work in progress branch. Is there way
not to trigger kbuild tests on this branch ?

-- 
Regards,
Atish


> On Mon, Nov 18, 2019 at 10:17 PM kbuild test robot <lkp@intel.com>
> wrote:
> > CC: kbuild-all@lists.01.org
> > TO: Atish Patra <atish.patra@wdc.com>
> > 
> > tree:   https://github.com/atishp04/linux efi_stub
> > head:   7dbf2060ab3115d2edcfba8f0f677a321a1611f1
> > commit: 7dbf2060ab3115d2edcfba8f0f677a321a1611f1 [1/1] Add efi stub
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> > 0213adde218530bc31e5c4e50b49704c6bb2f2e9)
> > reproduce:
> >         wget 
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 7dbf2060ab3115d2edcfba8f0f677a321a1611f1
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> >    drivers/firmware/efi/libstub/arm-stub.c:132:22: warning: unused
> > variable 'si' [-Wunused-variable]
> >            struct screen_info *si;
> >                                ^
> > > > drivers/firmware/efi/libstub/arm-stub.c:203:7: warning:
> > > > variable 'secure_boot' is uninitialized when used here [-
> > > > Wuninitialized]
> >                 secure_boot != efi_secureboot_mode_disabled) {
> >                 ^~~~~~~~~~~
> >    drivers/firmware/efi/libstub/arm-stub.c:131:2: note: variable
> > 'secure_boot' is declared here
> >            enum efi_secureboot_mode secure_boot;
> >            ^
> >    2 warnings generated.
> > 
> > vim +/secure_boot +203 drivers/firmware/efi/libstub/arm-stub.c
> > 
> > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2018-09-21   92
> > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2018-09-21   93
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15   94  /*
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15   95   * This function handles the
> > architcture specific differences between arm and
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15   96   * arm64 regarding where the kernel
> > image must be loaded and any memory that
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15   97   * must be reserved. On failure it is
> > required to free all
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15   98   * all allocations it has made.
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15   99   */
> > bd669475d14e32 drivers/firmware/efi/arm-stub.c         Ard
> > Biesheuvel  2014-07-02  100  efi_status_t
> > handle_kernel_image(efi_system_table_t *sys_table,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  101                                   unsigned long
> > *image_addr,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  102                                   unsigned long
> > *image_size,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  103                                   unsigned long
> > *reserve_addr,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  104                                   unsigned long
> > *reserve_size,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  105                                   unsigned long dram_base,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  106                                   efi_loaded_image_t
> > *image);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  107  /*
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  108   * EFI entry point for the arm/arm64
> > EFI stubs.  This is the entrypoint
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  109   * that is described in the PE/COFF
> > header.  Most of the code is the same
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  110   * for both archictectures, with the
> > arch-specific code provided in the
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  111   * handle_kernel_image() function.
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  112   */
> > ddeeefe2dfbe1f drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2015-01-12  113  unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  114                                 unsigned 
> > long *image_addr)
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  115  {
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  116          efi_loaded_image_t *image;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  117          efi_status_t status;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  118          unsigned long image_size = 0;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  119          unsigned long dram_base;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  120          /* addr/point and size pairs
> > for memory management*/
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  121          unsigned long initrd_addr;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  122          u64 initrd_size = 0;
> > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > Biesheuvel  2014-04-03  123          unsigned long fdt_addr =
> > 0;  /* Original DTB */
> > a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2015-03-04  124          unsigned long fdt_size = 0;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  125          char *cmdline_ptr = NULL;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  126          int cmdline_size = 0;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  127          unsigned long new_fdt_addr;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  128          efi_guid_t loaded_image_proto =
> > LOADED_IMAGE_PROTOCOL_GUID;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  129          unsigned long reserve_addr = 0;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  130          unsigned long reserve_size = 0;
> > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > Howells   2017-02-06  131          enum efi_secureboot_mode
> > secure_boot;
> > f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-04-25 @132          struct screen_info *si;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  133
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  134          /* Check if we were booted by
> > the EFI firmware */
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  135          if (sys_table->hdr.signature !=
> > EFI_SYSTEM_TABLE_SIGNATURE)
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  136                  goto fail;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  137
> > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-02-17  138          status =
> > check_platform_features(sys_table);
> > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-02-17  139          if (status != EFI_SUCCESS)
> > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-02-17  140                  goto fail;
> > b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-02-17  141
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  142          /*
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  143           * Get a handle to the loaded
> > image protocol.  This is used to get
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  144           * information about the
> > running image, such as size and the command
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  145           * line.
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  146           */
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  147          status = sys_table->boottime-
> > >handle_protocol(handle,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  148                                          &loaded_image_prot
> > o, (void *)&image);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  149          if (status != EFI_SUCCESS) {
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  150                  pr_efi_err(sys_table,
> > "Failed to get loaded image protocol\n");
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  151                  goto fail;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  152          }
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  153
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  154          dram_base =
> > get_dram_base(sys_table);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  155          if (dram_base == EFI_ERROR) {
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  156                  pr_efi_err(sys_table,
> > "Failed to find DRAM base\n");
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  157                  goto fail;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  158          }
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  159
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  160          /*
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  161           * Get the command line from
> > EFI, using the LOADED_IMAGE
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  162           * protocol. We are going to
> > copy the command line into the
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  163           * device tree, so this can be
> > allocated anywhere.
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  164           */
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  165          cmdline_ptr =
> > efi_convert_cmdline(sys_table, image, &cmdline_size);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  166          if (!cmdline_ptr) {
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  167                  pr_efi_err(sys_table,
> > "getting command line via LOADED_IMAGE_PROTOCOL\n");
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  168                  goto fail;
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  169          }
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  170
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  171          if
> > (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  172              IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  173              cmdline_size == 0)
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  174                  efi_parse_options(CONFIG_CMDLINE);
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  175
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  176          if
> > (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  177                  efi_parse_options(cmdline_ptr);
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  178
> > eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  179          pr_efi(sys_table, "Booting
> > Linux Kernel...\n");
> > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > Patra     2019-11-18  180  #if 0
> > f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-04-25  181          si =
> > setup_graphics(sys_table);
> > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > Patra     2019-11-18  182  #endif
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  183          status =
> > handle_kernel_image(sys_table, image_addr, &image_size,
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-
> > 26  184                                       &reserve_addr,
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-
> > 26  185                                       &reserve_size,
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-
> > 26  186                                       dram_base, image);
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  187          if (status != EFI_SUCCESS) {
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  188                  pr_efi_err(sys_table,
> > "Failed to relocate kernel\n");
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  189                  goto
> > fail_free_cmdline;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  190          }
> > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > Patra     2019-11-18  191  #if 0
> > ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew
> > Garrett 2017-08-25  192          /* Ask the firmware to clear
> > memory on unclean shutdown */
> > ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew
> > Garrett 2017-08-
> > 25  193          efi_enable_reset_attack_mitigation(sys_table);
> > ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew
> > Garrett 2017-08-25  194
> > 73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn
> > Crosetto   2016-04-25  195          secure_boot =
> > efi_get_secureboot(sys_table);
> > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > Patra     2019-11-18  196  #endif
> > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > Biesheuvel  2014-04-03  197          /*
> > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > Howells   2017-02-06  198           * Unauthenticated device tree
> > data is a security hazard, so ignore
> > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > Howells   2017-02-06  199           * 'dtb=' unless UEFI Secure
> > Boot is disabled.  We assume that secure
> > de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David
> > Howells   2017-02-06  200           * boot is enabled if we can't
> > determine its state.
> > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > Biesheuvel  2014-04-03  201           */
> > 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2018-07-11  202          if
> > (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
> > 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2018-07-11 @203               secure_boot !=
> > efi_secureboot_mode_disabled) {
> > 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2018-07-11  204                  if
> > (strstr(cmdline_ptr, "dtb="))
> > 73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn
> > Crosetto   2016-04-
> > 25  205                          pr_efi(sys_table, "Ignoring DTB
> > from command line.\n");
> > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > Biesheuvel  2014-04-03  206          } else {
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  207                  status =
> > handle_cmdline_files(sys_table, image, cmdline_ptr,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  208                                                "dtb=",
> > a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2015-03-
> > 04  209                                                ~0UL,
> > &fdt_addr, &fdt_size);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  210
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  211                  if (status !=
> > EFI_SUCCESS) {
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  212                          pr_efi_err(sys_table, "Failed to
> > load device tree!\n");
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  213                          goto
> > fail_free_image;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  214                  }
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  215          }
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  216
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  217          if (fdt_addr) {
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  218                  pr_efi(sys_table,
> > "Using DTB from command line\n");
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  219          } else {
> > 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard
> > Biesheuvel  2014-04-03  220                  /* Look for a device
> > tree configuration table entry. */
> > a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2015-03-04  221                  fdt_addr =
> > (uintptr_t)get_fdt(sys_table, &fdt_size);
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  222                  if (fdt_addr)
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-
> > 23  223                          pr_efi(sys_table, "Using DTB from
> > configuration table\n");
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  224          }
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  225
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  226          if (!fdt_addr)
> > 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark
> > Rutland    2014-10-23  227                  pr_efi(sys_table,
> > "Generating empty DTB\n");
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  228
> > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  229          status =
> > handle_cmdline_files(sys_table, image, cmdline_ptr, "initrd=",
> > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  230                                        efi_get_max_initrd_a
> > ddr(dram_base,
> > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  231                                                            
> >     *image_addr),
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  232                                        (unsigned long
> > *)&initrd_addr,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  233                                        (unsigned long
> > *)&initrd_size);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  234          if (status != EFI_SUCCESS)
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  235                  pr_efi_err(sys_table,
> > "Failed initrd from command line!\n");
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  236
> > 568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-11-
> > 12  237          efi_random_get_seed(sys_table);
> > 568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-11-12  238
> > 38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-10-25  239          /* hibernation expects the
> > runtime regions to stay in the same place */
> > 38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-10-25  240          if
> > (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr()) {
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  241                  /*
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  242                   * Randomize the base
> > of the UEFI runtime services region.
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  243                   * Preserve the 2 MB
> > alignment of the region by taking a
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  244                   * shift of 21 bit
> > positions into account when scaling
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  245                   * the headroom value
> > using a 32-bit random value.
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  246                   */
> > 197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-17  247                  static const u64
> > headroom = EFI_RT_VIRTUAL_LIMIT -
> > 197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 17  248                                              EFI_RT_VIRTUAL
> > _BASE -
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  249                                              EFI_RT_VIRTUAL
> > _SIZE;
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  250                  u32 rnd;
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  251
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  252                  status =
> > efi_get_random_bytes(sys_table, sizeof(rnd),
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  253                                                (u8 *)&rnd);
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  254                  if (status ==
> > EFI_SUCCESS) {
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  255                          virtmap_base =
> > EFI_RT_VIRTUAL_BASE +
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  256                                         (((headroom >> 21)
> > * rnd) >> (32 - 21));
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  257                  }
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  258          }
> > e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-04  259
> > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2018-09-
> > 21  260          install_memreserve_table(sys_table);
> > b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2018-09-21  261
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  262          new_fdt_addr = fdt_addr;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  263          status =
> > allocate_new_fdt_and_exit_boot(sys_table, handle,
> > 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2017-04-
> > 04  264                                  &new_fdt_addr,
> > efi_get_max_fdt_addr(dram_base),
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  265                                  initrd_addr, initrd_size,
> > cmdline_ptr,
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-
> > 15  266                                  fdt_addr, fdt_size);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  267
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  268          /*
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  269           * If all went well, we need to
> > return the FDT address to the
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  270           * calling function so it can
> > be passed to kernel as part of
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  271           * the kernel boot protocol.
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  272           */
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  273          if (status == EFI_SUCCESS)
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  274                  return new_fdt_addr;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  275
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  276          pr_efi_err(sys_table, "Failed
> > to update FDT and exit boot services\n");
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  277
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  278          efi_free(sys_table,
> > initrd_size, initrd_addr);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  279          efi_free(sys_table, fdt_size,
> > fdt_addr);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  280
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  281  fail_free_image:
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  282          efi_free(sys_table, image_size,
> > *image_addr);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  283          efi_free(sys_table,
> > reserve_size, reserve_addr);
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  284  fail_free_cmdline:
> > 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish
> > Patra     2019-11-18  285          //free_screen_info(sys_table,
> > si);
> > 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2016-01-26  286          efi_free(sys_table,
> > cmdline_size, (unsigned long)cmdline_ptr);
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  287  fail:
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  288          return EFI_ERROR;
> > 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark
> > Salter     2014-04-15  289  }
> > f3cdfd239da56a drivers/firmware/efi/libstub/arm-stub.c Ard
> > Biesheuvel  2014-10-20  290
> > 
> > :::::: The code at line 203 was first introduced by commit
> > :::::: 3d7ee348aa4127a7893c11261da9b76371a970e6 efi/libstub/arm:
> > Add opt-in Kconfig option for the DTB loader
> > 
> > :::::: TO: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > :::::: CC: Ingo Molnar <mingo@kernel.org>
> > 
> > ---
> > 0-DAY kernel test infrastructure                 Open Source
> > Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel
> > Corporation
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dfbc952f478c57bcc2b8ec41ef0542119785444b.camel%40wdc.com.
