Return-Path: <clang-built-linux+bncBAABBFMAVX7AKGQERQZKXZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 320532CFA7A
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Dec 2020 09:08:55 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id c1sf4686840pjo.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Dec 2020 00:08:55 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607155733; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gh84ACN4XH9j5RAxdwet/E6UXSdbfs35NLQOzxdD2pv/7ictSEo1oJjzadJL3rVT9M
         IwiHLshD/bJOHCs5LDZwDd2u42RBBVi0FDrs5S/1ANAAY/HsS4XSTMSueiPthh9So0ui
         BDpatsE6U5BtV0kbvrsG7gBH9oWpAsZe1snBtfAu5MbxSJ4DCw6ltYhCrhdxK7EDZ2Fu
         FvdQu6r4ki6ix1ckqiTNgHsSxc2W/0CGmkAl5hRtRWloZpXswdiOVGW2tax17/7A6j77
         c6igpB+XRHz5IGWx0WsGaVm9atxs5CS+bhKNVyP4amvNVxz275MPBq+BrZ2WD+dpn536
         F+Yw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :sender:dkim-signature;
        bh=+7HDKiAumOhSm515glusWDVndygUxRNOhFt1wKx5aGw=;
        b=0liVgZbn67p5g2xsqjMCiQh9kak+yZuWJQl+Dqs37lTEtJZvgxSGO7OCMJh3meExyO
         ZPe68f8oeblZ0d9XAK3Et5uTMbF8z604qTiUPM6JEhP2ggGo6d5SdqgTEXKuXkcaYHsK
         EVP97Ajy4JhwLKfFFR6ntfIc/UsfSl2h0WR90b3rRhPuZunLIBKcAm7wnBLL8IlTQemF
         QaKHxnd7DuQf8bqWQ0qHri767RxUGfdDo7Siw/qp9wXxcZHZqV5SWU9/APafEQiUzobi
         WOytw0HMRZwxd7YfQNQitCKbhW+pq9dtnXVDS3tw1fKl5pgfxDZeiJi8ZLdNWIcd5Kbi
         337w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=AnqMG1FA;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=KjxjUMTC;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=60188c4e5=Avri.Altman@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+7HDKiAumOhSm515glusWDVndygUxRNOhFt1wKx5aGw=;
        b=lZeWZXodRMXBFYo4qLH+6cxD0LhZW4GX613k+vEPE0IVwUpOxyHBw1COos+wJOqD0O
         W5rWDIKBGAgPIw71mBX5IIaPCCc2Es6+xQoIdcoRGD9P0/K2+PP+v+Tily8aOPZmdD/b
         Pi9maRfinoZvHNGt82p9adQkYm06EteJbGaCsdqX+EFvBNXTurp4CFb/zaLjTOkrRWJH
         kCQbaR3SWHcY8Xrp9zrm+UMv3HGDqT+jgaxxfAZA5FTaGDg9D9abTuj5AUSi9icUCM7z
         iiAN8fhq1+vYJ+VHqe68C4WDKDpF5yLauYoNJc1SWJ9khoNPbaJKxUno3cWcuNSCD6i1
         emjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+7HDKiAumOhSm515glusWDVndygUxRNOhFt1wKx5aGw=;
        b=KBtmQeF/keY/EkTmg8kohWkb9IdaLI0Q+m/3AbfZc6Xlocp9M1yn8HWgzB9P/YeRY4
         QbQXGCO7jsQ+znEkS/kV7VmgaK8OVKmWpQdjReuY+YupqBQ3qTch/WNflVm51p76Mrgr
         BaTxWKkvTZ8QOOsxlYMVxQJL04mtoBqbk/mo1OeFDSv5cFQNYnwtAc46QnFL9gK+85gO
         CfjlJXS/KOWKgmvn+A+bGrFduEm02k7p7Jj/3w8QHVSGXPz6Ra+NlGbZLVX6gVFFZp1K
         5oMopj1u0bOsl8ptqpFuYrfqAYxh2rse8/vSn/SU4+XkfoSRCvWpIpc2j6yF6REC2/Km
         6w1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533X8PUQuisSd69KSjsnaoRTSIGYDKzyc8vR/w7YJnSZMqAP81E5
	heihvfxS8Le6BzP3uq5pL6Q=
X-Google-Smtp-Source: ABdhPJzKJwxaxLzJ8Oy92JqaOGsRbcgZIv7yciOjweeTYm6TY8R0DpITdcppBNRjWogXIS7iHUdb1A==
X-Received: by 2002:a65:679a:: with SMTP id e26mr10634826pgr.394.1607155733423;
        Sat, 05 Dec 2020 00:08:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:230a:: with SMTP id j10ls4045957pgj.9.gmail; Sat, 05 Dec
 2020 00:08:52 -0800 (PST)
X-Received: by 2002:a63:c407:: with SMTP id h7mr1047958pgd.150.1607155732849;
        Sat, 05 Dec 2020 00:08:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607155732; cv=pass;
        d=google.com; s=arc-20160816;
        b=wsCIOt5fKS64NK/N4UfjpXJXmWOFW1icR+OS4edshmTPGs8J8lFv1e3SqFmMKGzriq
         PHoAM6CSeT198pOjIVCyiw/yl1n4sdoIKalMdrdMdMN5pObR6Te7FZG105HwoLJ8dwGG
         BNy7iAsPY43ZNZxuBNMbYuRx95l8bb8F0yIyfWk6TLFr/rs1re4TDtzooyis4nNfvrpQ
         jHE99f7C1/WKW0QMY6/0eHYl5KB1g59VIlyKHty6K9in4jBXQ5akXlL93Cw4guH4VfiM
         QS73pyW0S+gAJ2KMe1jiCXl9gxbR2zY1PgwTuxHbN0GsXEi4J31U4L8JYnG3zls+dCvX
         Syrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=QaD8ZXAnKZIbm34csWyxO0eghQirkjHU3q8r7YKqEDY=;
        b=XC3BoVs+kDUA74aE0H6vxp1G7Q8hyb8AQfI5WkVmCIJa5dc662UIAik7HwtHUea8VL
         0VkxCatvJNUATKI03mrkNsjMeS7FboV76f0EcDx2VrUwHvVoIGIl1OGxRcUtRd7P8sXz
         lGbAl7Jc2/m84Aj0qX9E+7ewsZdMPrAjFLs9q9lwO5b8yH6hp8EBq2fCF4jQ9j58NF34
         6oa/z2gPT/BAM7AtrHg/APj1LzTRNkNryuynOqJvfDAs+dxtjWuegRG0ZjvVzFJXaqdt
         e9v2R79qoN1+bRSSX1SlbCSvHoYCdi2dmeh/1uAMehldkXIljHa+2IdtaTSyuxDpK5kH
         gORg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=AnqMG1FA;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=KjxjUMTC;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=60188c4e5=Avri.Altman@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com. [216.71.153.144])
        by gmr-mx.google.com with ESMTPS id mp23si281781pjb.1.2020.12.05.00.08.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Dec 2020 00:08:52 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.144 as permitted sender) client-ip=216.71.153.144;
IronPort-SDR: NUBWgbapeL//OCn8j8dprVOGULLz+HidbmynKnCfizs2YIAUtEzbggw+B2o84JGqWTNGJTX0L6
 q/kx3mbh2GAcNfcsW+gnXfrGJxtJEIr3T8kRZqRk0E1kUISCCdrROBUw1DuPSSly1XnSd0rNUj
 vcFYrCxSAncmPdbmB2eX4yJAwrGEcU85bquKZWp0GBVR3Rl4c1o8wPbq1LsbTsCaO5AypoIobO
 t46npxkPNdy8xVMXCrzvCX+Tf/zWw3OmMTpMW83EqRRZ9hfakBDzF1XLgSD4BZAfG7ffOAQkm6
 /b0=
X-IronPort-AV: E=Sophos;i="5.78,395,1599494400"; 
   d="scan'208";a="154549203"
Received: from mail-dm6nam10lp2108.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.108])
  by ob1.hgst.iphmx.com with ESMTP; 05 Dec 2020 16:08:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mskxbhQzUlMJRBd5k87AE5hnhiP+EM+8clQic35GguBM+7iMQmrl/be+9Hzd0At/i+2BG+kycXO7QPyzXQVm7C1byFF0T67bH1k4YTZaoK3SswqoZ3nyiVZXAOmcCSRPB9+1wtBDdA2B+sUyK3cFGzUNpEo6nI7J7GyCIE5sCnQBZdCoxt2SNyWg9KpiGIp0kaS0Hgmtzeq0YMOpNL9NS3uPGkFOaUoQHG00LyU5IDB3saHP6ztU3wbgCjCY1LRlXvuNNjxuwijOF/b6Mn4LLSS6ZLgmWHjijCpPvU6VPnpzxKXwGTKyub3otsrgLqtb6iV1INOCua0irwK0A2+FXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QaD8ZXAnKZIbm34csWyxO0eghQirkjHU3q8r7YKqEDY=;
 b=oXisNjPQevRe2tJ5NkF/w/KzFMZbUxqQZMpjnl8NZGLoo6aebt8dEks22V3H0SPTJUfxwqfS+uuX1SIYGrR+2CUVWEQsOAADMXW9BjMsw3GXafHy+zic+/rhed851emUQKKEAHKl1kI2CtNRX9uHZixkCWsoVBpr+0au/cWZ4tD/sJOuRMa/BO8h4zYLkAyUrEWOgcXLnqJH2G9Jfn8jPTpwNV0c4HmBPe4jJ+l6YqS7W3b6F2yneaeQxuKwxLh1GDNV3Eq9t/zi9h3yA0i7G/lGRxg8Xiqzme5dPYEma/VY8Va1IjVlkJkp4xhvlL14ZBb5uBe6G1DYlDPU+yVoIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from DM6PR04MB6575.namprd04.prod.outlook.com (2603:10b6:5:1b7::7) by
 DM6PR04MB6667.namprd04.prod.outlook.com (2603:10b6:5:247::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.18; Sat, 5 Dec 2020 08:08:49 +0000
Received: from DM6PR04MB6575.namprd04.prod.outlook.com
 ([fe80::a564:c676:b866:34f6]) by DM6PR04MB6575.namprd04.prod.outlook.com
 ([fe80::a564:c676:b866:34f6%8]) with mapi id 15.20.3632.021; Sat, 5 Dec 2020
 08:08:49 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Arnd Bergmann <arnd@kernel.org>, "James E.J. Bottomley"
	<jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>,
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Jaegeuk Kim <jaegeuk@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>, Alim Akhtar <alim.akhtar@samsung.com>,
	Stanley Chu <stanley.chu@mediatek.com>, Can Guo <cang@codeaurora.org>,
	Asutosh Das <asutoshd@codeaurora.org>, Bean Huo <beanhuo@micron.com>, Bart
 Van Assche <bvanassche@acm.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] ufshcd: fix Wsometimes-uninitialized warning
Thread-Topic: [PATCH] ufshcd: fix Wsometimes-uninitialized warning
Thread-Index: AQHWycQXp6g3K07ih063gLNOLCVad6noJ+8Q
Date: Sat, 5 Dec 2020 08:08:49 +0000
Message-ID: <DM6PR04MB657589FD4F6C04B56F4240D5FCF00@DM6PR04MB6575.namprd04.prod.outlook.com>
References: <20201203223137.1205933-1-arnd@kernel.org>
In-Reply-To: <20201203223137.1205933-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e959d3fd-9539-42a1-dbd9-08d898f4ff1e
x-ms-traffictypediagnostic: DM6PR04MB6667:
x-microsoft-antispam-prvs: <DM6PR04MB6667ED7C1D385C7079A51C06FCF00@DM6PR04MB6667.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b3II3lU9ufbOkfaKzdDUVYaNWFQDsHPpHIJqrdoBLJnXaffc5qNyhDsP4BZ9Rf6JSGH0lUjZj7W6S12xBk0d0AxGVSiP2n9pUqz6NLfwRzE7XzA/C8YnvIRKsuT8DYHpfCq+xb92rnw6XcolB98ALxpbGVS4IZ+wu3EPosIRb3zCeSa4ULQsHtSOPBJ8y+8IOxAck59o+wYgFSKtoWQ4cDpai1EDbnffhepkaAiqNYvRvSBpyOMudvMF6f3v7cukvGjwum1PsyTv+Od0ZJpCijsK3AbnDMAiBXEASz5yEDG+byisiKt3iLhOTxRiMHd4RE3DvFA10Ogrb0Xln/DOeg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB6575.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(39860400002)(346002)(376002)(396003)(186003)(54906003)(4326008)(26005)(52536014)(9686003)(8676002)(33656002)(83380400001)(7416002)(110136005)(64756008)(66946007)(55016002)(66556008)(5660300002)(478600001)(66476007)(316002)(66446008)(8936002)(7696005)(2906002)(86362001)(6506007)(76116006)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Bv2rbE/mLZaZWJdJQjSVGwyD0/buw7MB8nlUFWRsF9ivMen4jUR3UrXhA4xX?=
 =?us-ascii?Q?PP0l2IfuZZnLNIh+WvTg+Rf5PiyaqPVPGMSg01oRAWLFNLmJtn40zR1rmj9u?=
 =?us-ascii?Q?zdPTskh8ZS/KYcQX+UbmXzyMk2IWX6lNV54TgqIJTfymeg6FsD5xwqhn+Iwu?=
 =?us-ascii?Q?9LY6Cc3XwjiEDpKClCPsjF2olTRGbIBcpacBMkVhw9OEmmTnID97HJvMuNNW?=
 =?us-ascii?Q?rQeMTBT3dlkfsSVGx/5C4s53+AFE7+hG4QY7p5utBhHcjAXJdUrrZVBC7cOA?=
 =?us-ascii?Q?QlIDfB+lMTW+pJo/3noGNzsUixoUc/0waK5gmdQDO+AGxVbwXl2LpeomCS3f?=
 =?us-ascii?Q?zZ83lqC6gniJWSb8jhBLVSCdBBaJ8pFQPD1hIsgSQF5lz16eFDwQ4+eKvy7s?=
 =?us-ascii?Q?68cXClFAbYWHviIjpwQ0PzzGwqeRt5xpgpzrNUmTKeniln1Gfh43X81WC7cK?=
 =?us-ascii?Q?NKqGwvZpTW/aebkdmTX6FaHxCKVYNSanu3B8Qm83Mipe5W/yJztBG3kU51wl?=
 =?us-ascii?Q?Gr4rK17bcIccMnQsaaTWJ89Ariuz13YntMCTRrJDNJoLYoOzeDqdivqptf93?=
 =?us-ascii?Q?q6WBtCpbi1hEAyC+bUo+v4Qk+wN6j+L/T807hQSZMdQHphMU86eRubXoV5pK?=
 =?us-ascii?Q?S/bwTSqgufMQwZGRY5aXeBLjLYf3gkpNb+V2wm1K+w6ZmTviosN9TYIce9tN?=
 =?us-ascii?Q?eipjUU16x2d7VKuDpKWDm43AOk7t3hb0j3osdT8U4xvbOp702bVsMYVk7P0g?=
 =?us-ascii?Q?ukIac8m/0S16SyUuXJq+DvEqmYOHKBzfQFCB6qEompRfWZ28MwWosbfLDceX?=
 =?us-ascii?Q?Zp6mELGUFln9sHvpq3XNnORPvdO6fC4cnMrnJceFnW8K7S3Hv/r19y/4Bovv?=
 =?us-ascii?Q?8flVRPpEHL+e7tgxaEepwA0H84ZqB4sqMWBnpX1KOidywTlweY2r2nVNiBeo?=
 =?us-ascii?Q?aKYKJsVZ8moyWadFBKW/K2CJhvcQzFBIZcNghjD+G3A=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB6575.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e959d3fd-9539-42a1-dbd9-08d898f4ff1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2020 08:08:49.1723
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JYTn67zuHL/OlHEOgMMm/YOt8cVv3b/zQuqZlKDpGNhBtiPCYumZImoWPqyGr6btpUTPakjDcGspDYThHDo79A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6667
X-Original-Sender: avri.altman@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=AnqMG1FA;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=KjxjUMTC;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=60188c4e5=avri.altman@wdc.com designates 216.71.153.144 as
 permitted sender) smtp.mailfrom="prvs=60188c4e5=Avri.Altman@wdc.com";
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

> 
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang complains about a possible code path in which a variable is
> used without an initialization:
> 
> drivers/scsi/ufs/ufshcd.c:7690:3: error: variable 'sdp' is used uninitialized
> whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>                 BUG_ON(1);
>                 ^~~~~~~~~
> include/asm-generic/bug.h:63:36: note: expanded from macro 'BUG_ON'
>  #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (0)
>                                    ^~~~~~~~~~~~~~~~~~~
> 
> Turn the BUG_ON(1) into an unconditional BUG() that makes it clear
> to clang that this code path is never hit.
> 
> Fixes: 4f3e900b6282 ("scsi: ufs: Clear UAC for FFU and RPMB LUNs")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

> ---
>  drivers/scsi/ufs/ufshcd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index f165baee937f..b4f7c4263334 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -7687,7 +7687,7 @@ static int ufshcd_clear_ua_wlun(struct ufs_hba
> *hba, u8 wlun)
>         else if (wlun == UFS_UPIU_RPMB_WLUN)
>                 sdp = hba->sdev_rpmb;
>         else
> -               BUG_ON(1);
> +               BUG();
>         if (sdp) {
>                 ret = scsi_device_get(sdp);
>                 if (!ret && !scsi_device_online(sdp)) {
> --
> 2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DM6PR04MB657589FD4F6C04B56F4240D5FCF00%40DM6PR04MB6575.namprd04.prod.outlook.com.
