Return-Path: <clang-built-linux+bncBDF7X5HH4UNBBYMLYCBAMGQETNY53DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9871D33CA95
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 02:12:02 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id q17sf16318766pfh.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 18:12:02 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1615857121; cv=pass;
        d=google.com; s=arc-20160816;
        b=pszC7R0JOFdM/CSZSt8RadjxjBydaxC5qvDNYnABLIflhxSdQS0Eyr69wc+OSBDDXa
         //j8EVGBzL29X2YhRpamoGSmj0gD3w1AbbP8KQbqql7Xq2aBn9l1o5qY/v6Q8p7p5smz
         okYqe2Syjz+tsAScOIUQ7xCs2I8i//n6yk8i4FuDVu6pmeL6YJ7R43Rpujl+9lzbQkDa
         NJ2+aPTpw8pldgW178/UUOBmICUYYEvl3mpaSyCo44aGpEYAB/8s1EGWEzlY0L4a7J7b
         ZuxlclPaPwQYdKB0OT3O+8rI4vnrAc6J1YxId5KbJjXPMAa2CKheUyVrYMNP6H4A+ESq
         DIww==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:ironport-sdr:sender
         :dkim-signature;
        bh=18Pq0lVKV1+YlLWtKzV4SeJxoHG1lqFWdsTuWRWW/uQ=;
        b=BJVuKosGB+J2J59LAOyn1i283ZVhawLTp1KqxtUjNvFB59Bc2+dZa2TqRvoiKH0/XW
         1vcJNOMHAeSkf4MnBHOOjeWcJPB8z9CLB+p86vGbEQaV1/5sklhGZiesOhUiA06jTIis
         lCQM/myDoQutLF5ba1IT7wxwxdhU2KtielvVi5xVXPDTAogtxpVMOqj/AdgHgTQo2iNm
         QPU4GngFdQDo1Ozc7lFmRibYNJJIPA94edjkWOtX9QPiKsCJAb/52NO5XIwSQEpEHIMj
         g+bt2Ot6m1/RvzVL/9AmpMP1px08XvQVfMp6N53NdEa8tSmcXFMzYFDF7ARt3izVVHHJ
         P+TQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=TyLtkgfh;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=gw9IYMmO;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=702e14f29=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=702e14f29=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=18Pq0lVKV1+YlLWtKzV4SeJxoHG1lqFWdsTuWRWW/uQ=;
        b=F7Lybn8bpGxcgUorLMkmnhpMgtxIGQtWOOBH99oQRscWvX1UqnPahDbxmVlbmDBFjm
         zL9l8HaugTfpcAFQc5yMGkaXZ2APZjIN3LEZkDIPrsfUm6rFrsbrY4Cx2M7vG9767Mi1
         wDSgrI9m7M7FgrMt5l1QZvZ39b5QUJnRGWlqvJe1TI5rsppBbcc30Inou75NjMSzqwo2
         KfwWrJyGpsQIKpilPb0Vf6ldpsQGzb7Rv1rBBBuVYSq4ySBgpOz/gQnX6ZX7eBJQxtpN
         NOlH73G8FwRa9fQIiYOPKYBPPTdcTQhMW8iJR9M4B74MmG4oiwwDvwJqOOwSV+hYJK7V
         Zz7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=18Pq0lVKV1+YlLWtKzV4SeJxoHG1lqFWdsTuWRWW/uQ=;
        b=fZf7QMgWBjB6xHlEIOntY3lOGqufaNf2UO9DV6mPJuoVYjpcIqi3/DEcCsiAfzUkCz
         L/HuaOhyDqYNqhg//Rg5ZvxI4o3VTXfHUjp+0X8mxc2rZbvKOQ/VDXip8+KvNz0LKm/l
         x8qdhqlVawose7mmdTuibp5XCpqva93uslq2Y/40d5PvqCAxCBO4qSrEH1EAcHeMZjzD
         K4UuMuhixJ3OslsQeQTR+A/fcHDseZiP872yY5P/4j92bIqqORjK+2vFdZ+6GgGeYMHC
         f58iE/TOX151Wja1pJ6zOwTp9lfreRsy9C3IQbtVKXFr4SjOlKCT16QJ6jJxwbXidN8X
         mlrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53112vE2IGCk8nIdQ3hX7jttpa9W6VmQeWeWDi5i/NTd8kjfrKv5
	Ly1fwUWfA1YoenyJh48oZqA=
X-Google-Smtp-Source: ABdhPJwhRyowHC0gowv18UvwVf1+xFAyByBbuBe5UJAdpNdOCMS0EdCx4zvaa8iADKSCZ73iwYzWdQ==
X-Received: by 2002:a17:902:c942:b029:e6:6a3c:7243 with SMTP id i2-20020a170902c942b02900e66a3c7243mr14437021pla.1.1615857121091;
        Mon, 15 Mar 2021 18:12:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2286:: with SMTP id b6ls9600457plh.11.gmail; Mon, 15
 Mar 2021 18:12:00 -0700 (PDT)
X-Received: by 2002:a17:90b:515:: with SMTP id r21mr1997998pjz.42.1615857120589;
        Mon, 15 Mar 2021 18:12:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615857120; cv=pass;
        d=google.com; s=arc-20160816;
        b=fOyDB8qUf27tRxvWdGz++rwXpsKKpOX8dYLwmEfIPt2+SynMFJFEcqBu2P4Hhejrk6
         BODHQ00UwNlK53pP7bUhjZuMVqK3tmBq/RDHH2R42wIFF+8tfxQ/Eh5xZ01MQJMdmjlo
         mu2/2bx2BYGXaprRTJyd0dYDGyzkgqbcL7MGfSsjJyhVJW7KSzSFC5ZMpmhuAa+tvWSD
         LNzkRFo8PSi/2WTmzBmvp0UZ03C9x5jS3nPKoghd0beXr7uv3yEU3wnX7MokWT4c/aMM
         2DHrHE4TpTbA5sxK1zqCSTE71appfMeaulhJxUSBWVaACfcCeAD6ichFogkLhnZlAGDA
         Hegw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=n2dJcWOFxEkVcNN+tCJX8UKM8k5IIv1t5QVWLJYJxwU=;
        b=bOH/6g305wXPRLE1mdtxiEsi77t9kSHpliT2hj9CwbmQWozGzF2uyE/9LkjpEHaN+1
         LcjMTB3AQ0DpQ8MkFgkE5YGaSAiwTDZj0OKLymDyJjZ7BhbGPIvtNb0OhfFfOJJY4V4H
         zJ8g0CweD2HmDn/yHZf/U9kgz09BUUBlqQqrBupLEH9KBsiWnO5fHoytzvzIitNUx3CS
         Eg/u8NS1faxQBp/4jkNPQ6v3F4Vy5lKWJ0RZvMdM7OWsnUAel7bamN9vY294eXEvy2Z9
         mlmaEBRVGamEn93O9WioFr5pLHx/R71/kL73Pmj2BoIcPUpkWLlceTqEw/OVr8/IYnkn
         9NHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=TyLtkgfh;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=gw9IYMmO;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=702e14f29=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=702e14f29=Damien.LeMoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com. [68.232.141.245])
        by gmr-mx.google.com with ESMTPS id 131si784941pfa.2.2021.03.15.18.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 18:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=702e14f29=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) client-ip=68.232.141.245;
IronPort-SDR: KhG1zk7cy2NsaKhNcEBSSnl3vhd5pVWwyJTtEiJ/AD8/iule01nblMkXwUHX5sv360Be0kWzM/
 5Xp7QsQOwm7CwzLLI+hozDSuFgR0admKAUrY9b3MHJUJdC5qVFPfowrezxec9AR1ZginnXm+6I
 gHzMWz7pEJvmD39w7toFFHhVBBxwOvHrm5uX9RrlKXt2MSdcIViDifRrt/CzchpDmjMZIP0vdx
 UTy4LkwZjhlHTotp15aa26crm5SnxiUTMp3NEz14GwBiGIIZjQuDyvoJYNboDYmKiO2b72Eqgd
 Er0=
X-IronPort-AV: E=Sophos;i="5.81,251,1610380800"; 
   d="scan'208";a="272929656"
Received: from mail-dm6nam12lp2173.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.173])
  by ob1.hgst.iphmx.com with ESMTP; 16 Mar 2021 09:11:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e/PQf+0qMnrsUNT7qTlXadKLPNbo3ksVEvljWVNZOorbC8pc4CzgW/bWgNXHSo2xzt0WIbOaEuvejQtOynnkYmgEzFEIleFNkQILroXyrIKtCwv0mSGBpXedRTHbHqqc8wbmc1DVK1znGXdy9AViSwS6dScGCd/5QOXn1egZ1r16Acm//BPcXVmht35FtNUd15K7hwGXS4RxlCNbcU2cGCTNaKAwIJIO1iB+dRjcTnlsgJGVfq+cauKREjGI2JVLNf2JcN3LzXZzH3Z5j9IC1E4dKsqhZoqAUawr00hUXl6+Lde2meEFoCqfH/0xbqZY2PNE0xFK1rTzBPY+ERP/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2dJcWOFxEkVcNN+tCJX8UKM8k5IIv1t5QVWLJYJxwU=;
 b=cpUrsaiNvY2qKtnaY4G5qoOnRfCRMt+svFi9TBH4lGgYW/rK9mbRWUTALNu/mTri8c1y2qMG2Guyabg79oKafrcnOwfWmbplsRDsbUb2Z0bvp4PptH366CaEhCK2O2z2cB7zp9l3O3y9r5jxJ1UunOrpaOtvj63wbYENzOf5XIaDLLtsWs6399VZaPy6PQX+qyBng+4UxFno5DkyI3Xf0Wc/JuFossx3PmD+pXzBKq19oMNHc2j7WxjG+jo2T6liauuzSjvH+T94w6AinsnMDY9b1FVCBT/23vocjsVAfiy10IJCZcEKRewgzx2EOFMsFk6pRTtsEHZl6kAlQWM9Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB7070.namprd04.prod.outlook.com (2603:10b6:208:1e1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Tue, 16 Mar
 2021 01:11:57 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::e9c5:588:89e:6887]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::e9c5:588:89e:6887%3]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 01:11:57 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Nathan Chancellor <nathan@kernel.org>
CC: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>, kernel test robot
	<lkp@intel.com>, "linux-fsdevel@vger.kernel.org"
	<linux-fsdevel@vger.kernel.org>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 2/2] zonefs: Fix O_APPEND async write handling
Thread-Topic: [PATCH 2/2] zonefs: Fix O_APPEND async write handling
Thread-Index: AQHXGU5UzgIQSOxcCkmbmdVM+KAasA==
Date: Tue, 16 Mar 2021 01:11:57 +0000
Message-ID: <BL0PR04MB65145A954830D891B46CC2B4E76B9@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210315034919.87980-3-damien.lemoal@wdc.com>
 <202103151548.W9MG3wiF-lkp@intel.com>
 <PH0PR04MB741614B0DED04C088E0B075E9B6C9@PH0PR04MB7416.namprd04.prod.outlook.com>
 <BL0PR04MB6514205221C23615549ED67DE76C9@BL0PR04MB6514.namprd04.prod.outlook.com>
 <20210315170855.tguqrsl7wsbjojib@archlinux-ax161>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2400:2411:43c0:6000:85a2:35e9:2c43:32e2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 343d541c-2ecd-46d4-36a2-08d8e8187e7e
x-ms-traffictypediagnostic: MN2PR04MB7070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB70702DBAE886D31DAB1876C0E76B9@MN2PR04MB7070.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PcKpDHGmEoVNX+WF55/lnwPJdKoS7BRdVCKa0tU71AkJsbWrh4T85mefpAP1c1b3CNeBNS5pib+WwB2c4wiAVTo85Xi+eh8hMhmAm1p4RHzzECY3r9OJcVebw1d3i+LZR25HAn8cmbfZxK1UN2a43jYHtK2UFz4zyUH7Qm4I7QkX+bJpqlawvU02F5r7iC0qhfRnOxGDShZ7YhkFN9hhz56/QdnHJhCaEfwZma3QXZ3RdxJ9IJNZlj8Tbb/Sj6bbrPKsXxmnMre4dUKxom4gauqN82byn9Cib0CEjVaP6fARqV9936ZoSDqqRXbPwa6tyH/ro1+UJydTmDwh7L0dBA/F+xKg/VAHkbS5dVA+YasccOLnPICYeYgHj96CZK481N/es6zwKo1CUzLEIae5qg2rycOSc62bFdP85lhtZGhm5r92O0VZ6A/DeITi3Ive7/htpiJ09P1Woy4TIjiIOYAHqbnotl21B34dzu4b5YrGFCDfcMnijf2oGSa9OxMXhQzQiQXD5kgGAz9qMsT+tbgHbb0TORuAmlQ5dU+bR9MddvJ1q4yNosqa+faTw2fR
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(39860400002)(396003)(366004)(136003)(33656002)(55016002)(9686003)(186003)(71200400001)(2906002)(83380400001)(86362001)(54906003)(76116006)(6916009)(66446008)(66476007)(66556008)(6506007)(53546011)(4326008)(8676002)(5660300002)(478600001)(91956017)(316002)(7696005)(66946007)(64756008)(52536014)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?VsBU7z/oGwViOSQWIM2HFkosjx+R2Ylcy/P6tMpRWDfpJyMPhx1YnrmgtJQg?=
 =?us-ascii?Q?yzBefRMqMKTYifw/OvaDNSFN1tW+m+9Se6iAa7JudXLBLf3jRIfaAxZ4RFvP?=
 =?us-ascii?Q?eJ1J4IY4X21qkYcIhGpr44hRJNVW5bUixLtcJFX+UsZlXfhIOD2WARWexFtc?=
 =?us-ascii?Q?nkQLzswchawiCNW5b2JR3VEK7agkvhL4bKp7cDC8Sgv3O8Rw5lewDpBjWLjc?=
 =?us-ascii?Q?zvBdJc5RsTeTBcdzxjrIJ8DIO5iyc1PtsPtESam0kCW96G9SDvp6LQlZqdd0?=
 =?us-ascii?Q?VY2irL3mIMVrJgjidMZxpHkQmz6cHje0Kuqb1aYVuzi/mUqX+6itzZi/W5UT?=
 =?us-ascii?Q?H5BDblRqXrrocSAs7YTbnPBprfpEX5p6Iw2+yr06FFG/8iqgIfjYsq2UManD?=
 =?us-ascii?Q?JDQMzPIlR8OVaqUyM2WSfGDBOCI45CvDSBAUGDaupxOqefHJWQlBjCqxzEax?=
 =?us-ascii?Q?OjChJdwYjzMiyPJl3p3K8gu314+Y2GrT0XtLWztLk5rJldYZ8lYwIQ1J1u8/?=
 =?us-ascii?Q?ABjIV/sy5neBWC+YMzYV/8Puy/8gsIlhdceXpxqF9VPb6fOM+lyvSYow0yBG?=
 =?us-ascii?Q?PohyqVo3NQWYSd9h4qt79z979dkWTcTWAI+71IdAeSoS1DDYOnkiW9+Uw9zl?=
 =?us-ascii?Q?RxvKQfZbA9qAMxyERGx7sDvTDC9HF31FPXwRf11RZ0IE+tDyP7t3Z/QlQzJM?=
 =?us-ascii?Q?v7uuylzX+L9iKoHx8W3+BZ0lM6OTatCb16ClEBSKRAwjxUZYqrQ2iHp4qBGJ?=
 =?us-ascii?Q?4Cf7FGHtBJa0tqaBFRLWeKOLSRxPwdNFJI7/iLrhIsr+n9imGDJ7mv7xBlMb?=
 =?us-ascii?Q?NsarckydxZGpNX2/jgYVy3mYomoDzV2FOnaCKakb3n+51AaHNpxU983gDqis?=
 =?us-ascii?Q?OZWS+uVjDnmwHv22oQASHg9wLfXW6QXD44wdAJqvzkPRCVc9ADgS8g/m1MWK?=
 =?us-ascii?Q?9yk5t1ZoenyJBb5wh8f7UJRqzn++R7RANPtt7SMkH77jlq+pC3N+i7enyi0o?=
 =?us-ascii?Q?5r2aeVNG5Zlb796oTN0Pvw64WCtZCn9y+4NKa9Hgil/cfLs0pRrtFpGBNWP1?=
 =?us-ascii?Q?4A9k00IbppZUYStusz1GHyw9eM98rKy1OD1q5Oy2E0RAC+GS3jGzSVgE/Z1Y?=
 =?us-ascii?Q?e1bgTbXI5tjKc60uUMpw2NKZ80vrJXCv/JDCIFtcE3HKfPpjpuJcUqDXdoNN?=
 =?us-ascii?Q?+PgGp3QXLjYHB5xRuW0d9RxL6/a9B4ghPu51CQgbtyO51OnCVPOKQ3bjEI9V?=
 =?us-ascii?Q?kDTeC9ibVFLKTQDyv7VzrMKILgA2w/BMBMtzdOm+cxdq47fJfyotyVMIp187?=
 =?us-ascii?Q?cvgDO8+Yf1wMG7QqPIuChYzq83qpPWA+g3NmxJRdytYuJArh1RirTMUQUQ4I?=
 =?us-ascii?Q?6pY2UiUVtNLjq4sO88YyXCUb6sg9RUdtdn6HgVlVjZdDtrtwug=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 343d541c-2ecd-46d4-36a2-08d8e8187e7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 01:11:57.1049
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oXK52z8uh7Wct/D+1mj6nx3sTlmgATLQIdo1Z4fl0ensqFqoCsqpYY2otGd8MzD0jZg8qw9hk40HEyJLbZZrlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7070
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=TyLtkgfh;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=gw9IYMmO;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=702e14f29=damien.lemoal@wdc.com designates 68.232.141.245 as
 permitted sender) smtp.mailfrom="prvs=702e14f29=Damien.LeMoal@wdc.com";
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

On 2021/03/16 2:09, Nathan Chancellor wrote:
> On Mon, Mar 15, 2021 at 07:22:56AM +0000, Damien Le Moal wrote:
>> On 2021/03/15 16:21, Johannes Thumshirn wrote:
>>> On 15/03/2021 08:16, kernel test robot wrote:
>>>> 818	static ssize_t zonefs_file_dio_write(struct kiocb *iocb, struct iov_iter *from)
>>>>    819	{
>>>>    820		struct inode *inode = file_inode(iocb->ki_filp);
>>>>    821		struct zonefs_inode_info *zi = ZONEFS_I(inode);
>>>>    822		struct super_block *sb = inode->i_sb;
>>>>    823		bool sync = is_sync_kiocb(iocb);
>>>>    824		bool append = false;
>>>>    825		ssize_t ret, count;
>>>
>>>>    843		count = zonefs_write_checks(iocb, from);
>>>>  > 844		if (count <= 0)
>>>>    845			goto inode_unlock;
>>>
>>> Args that needs to be:
>>> 			if (count <= 0) {
>>> 				ret = count;
>>> 				goto inode_unlock;
>>> 			}
>>>
>>> Sorry for not spotting it.
>>
>> Yep. Sending v2. Weird that gcc does not complain on my local compile...
> 
> Unfortunately, GCC's version of this warning was disabled for default
> compiles by Linus in commit 78a5255ffb6a ("Stop the ad-hoc games with
> -Wno-maybe-initialized"). W=2 is required, which can be quite noisy from
> my understanding. KCFLAGS=-Wmaybe-uninitialized is a good option.

I was not aware of that change. Thanks for the information !


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BL0PR04MB65145A954830D891B46CC2B4E76B9%40BL0PR04MB6514.namprd04.prod.outlook.com.
