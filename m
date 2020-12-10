Return-Path: <clang-built-linux+bncBAABBNXEZH7AKGQENUHKGNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 494712D65F0
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 20:08:39 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id k187sf2787148vka.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 11:08:39 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607627318; cv=pass;
        d=google.com; s=arc-20160816;
        b=dwUKRn/r6wsijdHoYKlgrn8OOeM988C2h4lip0/v0x0fcnEcw/Cn1tGgNUqG/7TGpl
         FjrTu9s3IIUsSbe8MzQmfdcSlo9kwhagVCk1G6cJQ/0PXK8ta2deN4NaiSFZHvNM281X
         crRjhpJIlH0ijrNgxTG1z702dBVb8cMclUJPETSScwz8/vrIKfL06jyMzlThQx6eU9SN
         eQHVd2QZ5acYPw6ssqMbrIMEUb+M+0xMZhx6SsIgRmFfdymmoB9qs+brrQXeOmY1LkL6
         9bG3hjWniEnh6Y68BJSyIEGNQKp4x8lVdxr/gufMjJORsckHyw9xEWt2O8Pq+nFsEG1l
         xLjQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=Xrs+4dVuCeBbb5JEgspS2DMqSeRQGseVUeN5D9R0TJY=;
        b=TbdDeBNNCHJlvsigp0SNnbIADeJCHOc7tG8amU9Y7ycgYlEdlZj4ZD1IKwK9E6hLdk
         lYOpSmcehLLTgPCd6KPQ5ZWjVXJehC5b4QR24TcXZiCPpf03G7BCNKuRvXeAFB47wBvu
         nWosOLGNt/1zsyWYzqhUj33bV+3Cfsk3+qhdjvxw08500+QoObz6ts9mA1WBOKYXrczB
         Wg6A7OO5C0zDagmp0qmIT4wqsa7ccl95nhPzI7VGPzsbquBOFJzU7iOfdFr5Y3VqEnGg
         UqURzA9w3GbfqeRmy1lDFiZZrYUAn7iAMPFIijAfFqLr06wz+G8QVjq1zHsTUXPj3Km5
         6WCQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=ERuyXKmb;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of steven.french@microsoft.com designates 40.107.100.139 as permitted sender) smtp.mailfrom=Steven.French@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xrs+4dVuCeBbb5JEgspS2DMqSeRQGseVUeN5D9R0TJY=;
        b=QyipgQigPb5jbsmnH3Ubp7Smgoxx1j0HffnMPv+NrnPNlqAN6zdrK1ZybyTpKmcpnZ
         CZG+3SX9jv97HDycNxJ7JwfQn6VuzaADpQDoVP/FkazhNGqNdp5HlTdkkqnmY8s+TNu6
         VQU9hfvY1EJSb8pooYAGMWoaLVWQt7j6Gi/O/0YbvJnmir86BS2kmL3B7jHCI2IiUm3v
         6GL+V+xmOhLFnfmIdtrmuhu/2aoEEd5OK1r84sQTCXr5P7Ob4j4N8Se3NrZsqMwbM6Cg
         sbvhkKFoKwKqayLzRmM4nrvhtCUR+rAznFY40vyWq1lr7zYk9Giyjp3EOinUVbhIzCfJ
         zwzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xrs+4dVuCeBbb5JEgspS2DMqSeRQGseVUeN5D9R0TJY=;
        b=Xc9ADzl5lm+xytGLoXIu9W2w36Sis12CHwTLZyeYCaW6oQXEFjHte8uA/30GtrywC3
         aBlqrH4I6BZYEr1NlfUhWLf/luvrA6Wp25ilFjYBtiyh355INEObUQCQgx368/mA1D3C
         DyyU3+IFAuumc2el1fjj/Mhd2ZT9vnNjl/8ndPGZHCWTaMHCgDlSeMZRA3IYFFFl4wcz
         dplsJHCJ354xl89lyd8TXuXxjPPX4dx+C9vxYdN8Fj98znSz1hTdROIzTPI+/99tR53Q
         M3IlnoxNsOuwpJsRDDhRkSM4uEZYzdH012Z7TT+zp0ykMfuVAfWuHPxP7jKHSP/CwLkQ
         UjRA==
X-Gm-Message-State: AOAM531yRJ8jdFF5Lq4I0NULxTGXY7aoSzPAzzjVdxPtXmS2YBBmx8gG
	qUOPzx6HgNLXC7OLzS2y3yc=
X-Google-Smtp-Source: ABdhPJw+56U0D4ADRn9pqEM8G/iaU5yWxukaghFPvW0hZS6LO9XmH578lRd8ECWVKwKLCdcNhI09Lg==
X-Received: by 2002:ab0:1c07:: with SMTP id a7mr9772820uaj.17.1607627318302;
        Thu, 10 Dec 2020 11:08:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7485:: with SMTP id n5ls466741uap.6.gmail; Thu, 10 Dec
 2020 11:08:37 -0800 (PST)
X-Received: by 2002:ab0:23d5:: with SMTP id c21mr9843095uan.129.1607627317677;
        Thu, 10 Dec 2020 11:08:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607627317; cv=pass;
        d=google.com; s=arc-20160816;
        b=hA2bPYdMsSJsffwFW576EMJCpRgNL1HO5RgI9o4FwyeZ8ChYOWl5bFnWYYE9CyJuFN
         Ug2To2wXi3RvmIkiYrPOTLkiAjmipvOwktZS2nOFds/bivE35WBN/kBqAjgNRyUXgHbS
         gK38hzo79PDXAK/cz43CXAS4XTUO7J3h/4r8CGpHZePmVsOcKtVPJENNzYZgvPu3Z1zx
         6SJuz5u0OT7ykGwK0h/boPCtG3pyWHwd/OFwuG6z6AkWij8OmL4pcmHp6K55EvagtDFb
         37Cj0bWGiHRwYQ8WckgTzpXAv7rtCZKhsNyIJ7QGP1wilUbUuVBH+gMq8WWZu1rLlRhV
         Gdkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:msip_labels:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=v1K5Hg5zQzQeUwluLuuRFoRXisorY4UBl++ACj5qOB0=;
        b=Zwfzj1pSpaJEUXUH9q8oBI7X3LbNNfpopN89sozv5ftevBc3KoERUNFO2hNO1dC0WT
         C1dz3U9AYXoycIIRwClI8QmGXFt+UCjjLh7btd8tyLR8wd5BX94cUE41ssjZmbrZl3Zk
         KdpLiBIdbm9aaF8quw/B/dFbMDJan+Q1m0ao1Dt2hvAEpook9Yst6t8ChX/y/h2RO3jV
         kOThwf81D/tOmAZFKhV28wo3/wiudIwtWtuOTul1bIX/dBXoBo2cGtkeECd/FenF6oXR
         d2/Ca1PmOaeVLB0FQBzZAR9vxjMJS9z5oNjPnViOG0yrxYNc4f5q/f6Y6YB/wGLhvZqj
         kryQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=ERuyXKmb;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of steven.french@microsoft.com designates 40.107.100.139 as permitted sender) smtp.mailfrom=Steven.French@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam08on2139.outbound.protection.outlook.com. [40.107.100.139])
        by gmr-mx.google.com with ESMTPS id r207si370282vkf.2.2020.12.10.11.08.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 11:08:37 -0800 (PST)
Received-SPF: pass (google.com: domain of steven.french@microsoft.com designates 40.107.100.139 as permitted sender) client-ip=40.107.100.139;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kapmt7DzjDfA60hE3LAQTvZXjFqL4e9X+ez7gsIVSSpC5oG1kmDvL+R1eLuYM2RXuJWgdbaQAuFtRt/uBnI8cBH1Pa7FKifRkjWF/EZ8lUmQbPsRm59fzTzQUgZsoWn5PpJHF4RDvs1MRCdu8z0pD6D3xouLmsOj9acjgOjZHcLjuGOxPP2MmmPHOyc6gq83+f5FBso1diUJvM7HqIvs4b2anwzlLodr5NyJsxLicxpdAV7J4TGQK5MvdMfhU+2LjrchHvSJiYYlZ2uhnLLofFaiilfaJ4orsGPwvCxwxtIeWpUkYytyDhpnOm09XUNHiweq9khbob/j2uzgj6NqvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v1K5Hg5zQzQeUwluLuuRFoRXisorY4UBl++ACj5qOB0=;
 b=aavTS5DTDHk3Y6S+XdsQadzKn4oTTQXdmJg7s/yNiW8iWUFbrupoJBkqoC40sPjn2GFIOttL9eIXGV/YSFbay6Qs9VUXwTXlGKw2VSD5fDaSwgzY7x6Iwwh+Fi+evcvZeqlgeCqpL5bAJDzEzEYga/EwVixsFFZRIf80tv0qJr1+KwoBdLlF2zDfZQIABOf7MJfjXdIDhEp2uqqoOag+hjJy31/WMJncoh6JyYp4WwOU4lIIwIZJELcdoeeDpeWqS4nRpVOOht4YxpaTeQDq+xniaCyN/naYbi/mQ7erVFGaZCR0s/ECl3R6oGpnyb5uicTbF+LXJE4W6dEZQTPiYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
Received: from (2603:10b6:805:6::18) by
 SN4PR2101MB1600.namprd21.prod.outlook.com (2603:10b6:803:4f::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.5; Thu, 10 Dec
 2020 19:08:35 +0000
Received: from SN6PR2101MB1069.namprd21.prod.outlook.com
 ([fe80::30c3:c59a:8832:83a5]) by SN6PR2101MB1069.namprd21.prod.outlook.com
 ([fe80::30c3:c59a:8832:83a5%8]) with mapi id 15.20.3654.017; Thu, 10 Dec 2020
 19:08:35 +0000
From: "'Steven French' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kernel test robot <lkp@intel.com>, Shyam Prasad
	<Shyam.Prasad@microsoft.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-cifs@vger.kernel.org" <linux-cifs@vger.kernel.org>,
	"samba-technical@lists.samba.org" <samba-technical@lists.samba.org>
Subject: Re: [EXTERNAL] [cifs:for-next 4/15] fs/cifs/cifsacl.c:914:42:
 warning: variable 'nmode' is uninitialized when used here
Thread-Topic: [EXTERNAL] [cifs:for-next 4/15] fs/cifs/cifsacl.c:914:42:
 warning: variable 'nmode' is uninitialized when used here
Thread-Index: AQHWzsrdA1iqTMbaekyGxJpaIIvR3qnwshvV
Date: Thu, 10 Dec 2020 19:08:35 +0000
Message-ID: <SN6PR2101MB1069149ACA3B1F94531284F1E4CB1@SN6PR2101MB1069.namprd21.prod.outlook.com>
References: <202012101540.dKvgaIVR-lkp@intel.com>
In-Reply-To: <202012101540.dKvgaIVR-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-12-10T19:08:35.001Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
x-originating-ip: [2603:8080:1f40:a24:4aa3:1def:9e76:2ba4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d886e20b-43a2-42d6-2236-08d89d3efea8
x-ms-traffictypediagnostic: SN4PR2101MB1600:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN4PR2101MB1600835252E1D69017D9251EE4CB1@SN4PR2101MB1600.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:30;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7OpFOm+9fo+70Ca3SX58OJEONE/o5OOxxFNHgZOFztZuP9Av5pu+aCRgMZwvB+Z7AZHrv6ljpUIeXC+Eg0mF7qLaqGpMk6+grSCZLvO81z3dHI0kBgfkNY907Wc1vLUYJKSIKGsw2FjhBILnn1qstt9bUQpGNZHPfDR98JRzomfjVkamGvG5Wsy3bsQjdiBNaofu+4uK91wKw81u/t2ZojzuuSSySw8zqJy0yDpvZY0fYyue+/RAQFU6GMiQjlL/U/zkpGpvWM2wot4q78j2etThEAT4NmkYAeMVfnni45agkgDmaP7VrGFD2jKM7AVjRHSWJdMAsiaj9zsEq/mVdtTAA9i67WNyHwoQIDRMt+A1J2rBgyoznGYKrYockjtQR80xam7KLo6IspnuwwaSQzMh/hl6sYHvjUmbtlvKSXO0IHNLhpZPdY1aujIbfr+TT0Ysm3A0JvjspZEhl/k4XlkMoM5DmNKP2j1iaiekmlMw0TMmuuXTqI7W6PiGXVLNeSleW2I4MFXFSrKJ7hUn4g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR2101MB1069.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(376002)(366004)(52536014)(10290500003)(2906002)(6636002)(186003)(508600001)(66946007)(71200400001)(110136005)(86362001)(18265965003)(9686003)(5660300002)(8936002)(166002)(8990500004)(55016002)(966005)(33656002)(66556008)(7696005)(19627405001)(66446008)(8676002)(54906003)(82950400001)(82960400001)(64756008)(6506007)(4326008)(83380400001)(30864003)(53546011)(76116006)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?TOhzsM1Mi0JSM0MXiotbS3edrBq6u2vDN42bFYDD3fH0kMRMDrxitHUgUPHa?=
 =?us-ascii?Q?KTUbWEo/f62XwpWvIYolhk3sstRTUFqCucpd3Tvh5fvoHKZOeXq31jGVf0r6?=
 =?us-ascii?Q?mQdJrrQBbGGV7whK3nqChzjixADsdzweXdlyKdEkukOEqodYAg1080C7zJJG?=
 =?us-ascii?Q?x9vkjs2dGw4lNXKSb5PDOAbVyaap40RZyqhrD98loBuf1Dz1e6k14MHMIuop?=
 =?us-ascii?Q?wifhz+/RhIZXM22AEP5MwkcCkBs9y8uTCZdhTWudFL6HAm7mkJgPhIX3k9R0?=
 =?us-ascii?Q?r9Msim9YxV8VELVvDyBrJHTYm9tRXeDOIiS4BZKtPjlfpD/RQX9daIMPCtKA?=
 =?us-ascii?Q?3jsASpKvIy6SZhWs/FeI/ypaqRzYvmeslpCkP6E5Snm1S8gx//e1LYL5UPel?=
 =?us-ascii?Q?4/Tfd9LiJr6UqhLTfmhqrtKxAIur0DOB1njjyLViHRuUnZ4SJGxqzuta3jgY?=
 =?us-ascii?Q?mqaNFgDolNJ42yoa2kFOMpdDzjUCpOpZpl8YWY4HHKPrcKVapZwJbWyW/GhU?=
 =?us-ascii?Q?NrExXHFn2GbrlgAA626VJWk4cx1EAGd+la+SC5sqQ85SZldFh66U1Iu3csEd?=
 =?us-ascii?Q?D4aLzdyCd2aShD3Z6Qqyd0KP6HIhW+BWXDbfguwNiCS37VkFVj/DxlBCvSml?=
 =?us-ascii?Q?GKHPH6APQQX9rxJXhMBZnndzCMAXS26pWGtSI8mwi7IMDNUPdW3FEgC7ygFj?=
 =?us-ascii?Q?xS4R5JFeYDI5CsM3APVKjxYSB/h2qBuCH/i61SEEbHSS/iI1tGu9hYT27z6l?=
 =?us-ascii?Q?eVhLk+Av5Ln8XoFnoK6dMkr5Hbu2cO37YnwpTxgBHgXCV9JexaEoL0Q2vkff?=
 =?us-ascii?Q?9lCOxIUpH3tVnuaf/00DkhxMq7b60C0IoUF/wjSFcFhgZfWJfztaKG/uPFkU?=
 =?us-ascii?Q?Kg4lgp664RcZlAGgWzufEYcbCF8QneXr/biL87XhjowyANqSGWp5IGFk2WeV?=
 =?us-ascii?Q?cqK65pMc2jY74XRMUWDYD4oBVMqOVHStwAYmdiQSwWpbwXUjtR8SuySRsZ4a?=
 =?us-ascii?Q?K8V0MMhlJ4gFLjD9BK6iP+aUYwKtmC88qz7sl6lbOBgBdvM=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SN6PR2101MB1069149ACA3B1F94531284F1E4CB1SN6PR2101MB1069_"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR2101MB1069.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d886e20b-43a2-42d6-2236-08d89d3efea8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2020 19:08:35.8300
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oT5my48Er3z3a5DQ8U+9lxCotcHRRJHNPJ+0W5LifoHYH9BAfKJPAto+AungnMy0sd1NIhoW9paSwlSusjUvrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR2101MB1600
X-Original-Sender: steven.french@microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microsoft.com header.s=selector2 header.b=ERuyXKmb;       arc=pass
 (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com
 dmarc=pass fromdomain=microsoft.com);       spf=pass (google.com: domain of
 steven.french@microsoft.com designates 40.107.100.139 as permitted sender)
 smtp.mailfrom=Steven.French@microsoft.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=microsoft.com
X-Original-From: Steven French <Steven.French@microsoft.com>
Reply-To: Steven French <Steven.French@microsoft.com>
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

--_000_SN6PR2101MB1069149ACA3B1F94531284F1E4CB1SN6PR2101MB1069_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

fixed and repushed to cifs-2.6.git for-next
________________________________
From: kernel test robot <lkp@intel.com>
Sent: Thursday, December 10, 2020 1:57 AM
To: Shyam Prasad <Shyam.Prasad@microsoft.com>
Cc: kbuild-all@lists.01.org <kbuild-all@lists.01.org>; clang-built-linux@go=
oglegroups.com <clang-built-linux@googlegroups.com>; linux-cifs@vger.kernel=
.org <linux-cifs@vger.kernel.org>; samba-technical@lists.samba.org <samba-t=
echnical@lists.samba.org>; Steven French <Steven.French@microsoft.com>
Subject: [EXTERNAL] [cifs:for-next 4/15] fs/cifs/cifsacl.c:914:42: warning:=
 variable 'nmode' is uninitialized when used here

tree:   git://git.samba.org/sfrench/cifs-2.6.git for-next
head:   8f79025175de6bc8cac5c7aa4ea3763e92270058
commit: 253374f7557e41729abf380c127f57627e0d4f9c [4/15] cifs: Fix unix perm=
 bits to cifsacl conversion for "other" bits.
config: x86_64-randconfig-r032-20201209 (attached as .config)
compiler: clang version 12.0.0 (https://nam06.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;data=3D04%7C0=
1%7CSteven.French%40microsoft.com%7C6c0a045183264f54babc08d89ce166e5%7C72f9=
88bf86f141af91ab2d7cd011db47%7C1%7C0%7C637431841742581679%7CUnknown%7CTWFpb=
GZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7=
C1000&amp;sdata=3DOBzz%2FjZDEWhIdejd757CErZKTwbG5stWxGyBrDQlVXI%3D&amp;rese=
rved=3D0 1968804ac726e7674d5de22bc2204b45857da344)
reproduce (this is a W=3D1 build):
        wget https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.=
cross&amp;data=3D04%7C01%7CSteven.French%40microsoft.com%7C6c0a045183264f54=
babc08d89ce166e5%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C6374318417425=
81679%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6I=
k1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DyOzFZ91LyS%2FIuUKtPjq7jcpVJXqqw0JC=
jEn2XgL2AKA%3D&amp;reserved=3D0 -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add cifs git://git.samba.org/sfrench/cifs-2.6.git
        git fetch --no-tags cifs for-next
        git checkout 253374f7557e41729abf380c127f57627e0d4f9c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/cifs/cifsacl.c:914:42: warning: variable 'nmode' is uninitialized whe=
n used here [-Wuninitialized]
                   size +=3D setup_special_mode_ACE(pntace, nmode);
                                                          ^~~~~
   fs/cifs/cifsacl.c:901:13: note: initialize the variable 'nmode' to silen=
ce this warning
           __u64 nmode;
                      ^
                       =3D 0
   1 warning generated.

vim +/nmode +914 fs/cifs/cifsacl.c

975221eca5fbfd Steve French       2020-06-12  894
97837582bc1e19 Steve French       2007-12-31  895  static int set_chmod_dac=
l(struct cifs_acl *pndacl, struct cifs_sid *pownersid,
253374f7557e41 Shyam Prasad N     2020-08-17  896                        st=
ruct cifs_sid *pgrpsid, __u64 *pnmode, bool modefromsid)
97837582bc1e19 Steve French       2007-12-31  897  {
2b210adcb08c79 Al Viro            2008-03-29  898        u16 size =3D 0;
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  899        u32 num_aces =3D 0=
;
97837582bc1e19 Steve French       2007-12-31  900        struct cifs_acl *p=
nndacl;
253374f7557e41 Shyam Prasad N     2020-08-17  901        __u64 nmode;
253374f7557e41 Shyam Prasad N     2020-08-17  902        __u64 user_mode;
253374f7557e41 Shyam Prasad N     2020-08-17  903        __u64 group_mode;
253374f7557e41 Shyam Prasad N     2020-08-17  904        __u64 other_mode;
253374f7557e41 Shyam Prasad N     2020-08-17  905        __u64 deny_user_mo=
de =3D 0;
253374f7557e41 Shyam Prasad N     2020-08-17  906        __u64 deny_group_m=
ode =3D 0;
97837582bc1e19 Steve French       2007-12-31  907
97837582bc1e19 Steve French       2007-12-31  908        pnndacl =3D (struc=
t cifs_acl *)((char *)pndacl + sizeof(struct cifs_acl));
97837582bc1e19 Steve French       2007-12-31  909
22442179a5bb8c Steve French       2019-07-19  910        if (modefromsid) {
22442179a5bb8c Steve French       2019-07-19  911                struct cif=
s_ace *pntace =3D
22442179a5bb8c Steve French       2019-07-19  912                        (s=
truct cifs_ace *)((char *)pnndacl + size);
22442179a5bb8c Steve French       2019-07-19  913
fdef665ba44ad5 Steve French       2019-12-06 @914                size +=3D =
setup_special_mode_ACE(pntace, nmode);
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  915                num_aces++=
;
253374f7557e41 Shyam Prasad N     2020-08-17  916                goto set_s=
ize;
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  917        }
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  918
253374f7557e41 Shyam Prasad N     2020-08-17  919        /*
253374f7557e41 Shyam Prasad N     2020-08-17  920         * We'll try to ke=
ep the mode as requested by the user.
253374f7557e41 Shyam Prasad N     2020-08-17  921         * But in cases wh=
ere we cannot meaningfully convert that
253374f7557e41 Shyam Prasad N     2020-08-17  922         * into ACL, retur=
n back the updated mode, so that it is
253374f7557e41 Shyam Prasad N     2020-08-17  923         * updated in the =
inode.
253374f7557e41 Shyam Prasad N     2020-08-17  924         */
253374f7557e41 Shyam Prasad N     2020-08-17  925        nmode =3D *pnmode;
253374f7557e41 Shyam Prasad N     2020-08-17  926
253374f7557e41 Shyam Prasad N     2020-08-17  927        if (!memcmp(powner=
sid, pgrpsid, sizeof(struct cifs_sid))) {
253374f7557e41 Shyam Prasad N     2020-08-17  928                /*
253374f7557e41 Shyam Prasad N     2020-08-17  929                 * Case wh=
en owner and group SIDs are the same.
253374f7557e41 Shyam Prasad N     2020-08-17  930                 * Set the=
 more restrictive of the two modes.
253374f7557e41 Shyam Prasad N     2020-08-17  931                 */
253374f7557e41 Shyam Prasad N     2020-08-17  932                user_mode =
=3D nmode & (nmode << 3) & 0700;
253374f7557e41 Shyam Prasad N     2020-08-17  933                group_mode=
 =3D nmode & (nmode >> 3) & 0070;
253374f7557e41 Shyam Prasad N     2020-08-17  934        } else {
253374f7557e41 Shyam Prasad N     2020-08-17  935                user_mode =
=3D nmode & 0700;
253374f7557e41 Shyam Prasad N     2020-08-17  936                group_mode=
 =3D nmode & 0070;
253374f7557e41 Shyam Prasad N     2020-08-17  937        }
253374f7557e41 Shyam Prasad N     2020-08-17  938
253374f7557e41 Shyam Prasad N     2020-08-17  939        other_mode =3D nmo=
de & 0007;
253374f7557e41 Shyam Prasad N     2020-08-17  940
253374f7557e41 Shyam Prasad N     2020-08-17  941        /* We need DENY AC=
E when the perm is more restrictive than the next sets. */
253374f7557e41 Shyam Prasad N     2020-08-17  942        deny_user_mode =3D=
 ~(user_mode) & ((group_mode << 3) | (other_mode << 6)) & 0700;
253374f7557e41 Shyam Prasad N     2020-08-17  943        deny_group_mode =
=3D ~(group_mode) & (other_mode << 3) & 0070;
253374f7557e41 Shyam Prasad N     2020-08-17  944
253374f7557e41 Shyam Prasad N     2020-08-17  945        *pnmode =3D user_m=
ode | group_mode | other_mode | (nmode & ~0777);
253374f7557e41 Shyam Prasad N     2020-08-17  946
253374f7557e41 Shyam Prasad N     2020-08-17  947        if (deny_user_mode=
) {
22442179a5bb8c Steve French       2019-07-19  948                size +=3D =
fill_ace_for_sid((struct cifs_ace *)((char *)pnndacl + size),
253374f7557e41 Shyam Prasad N     2020-08-17  949                          =
      pownersid, deny_user_mode, 0700, ACCESS_DENIED);
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  950                num_aces++=
;
253374f7557e41 Shyam Prasad N     2020-08-17  951        }
253374f7557e41 Shyam Prasad N     2020-08-17  952        /* Group DENY ACE =
does not conflict with owner ALLOW ACE. Keep in preferred order*/
253374f7557e41 Shyam Prasad N     2020-08-17  953        if (deny_group_mod=
e && !(deny_group_mode & (user_mode >> 3))) {
253374f7557e41 Shyam Prasad N     2020-08-17  954                size +=3D =
fill_ace_for_sid((struct cifs_ace *)((char *)pnndacl + size),
253374f7557e41 Shyam Prasad N     2020-08-17  955                          =
      pgrpsid, deny_group_mode, 0070, ACCESS_DENIED);
253374f7557e41 Shyam Prasad N     2020-08-17  956                num_aces++=
;
253374f7557e41 Shyam Prasad N     2020-08-17  957        }
253374f7557e41 Shyam Prasad N     2020-08-17  958        size +=3D fill_ace=
_for_sid((struct cifs_ace *) ((char *)pnndacl + size),
253374f7557e41 Shyam Prasad N     2020-08-17  959                        po=
wnersid, user_mode, 0700, ACCESS_ALLOWED);
253374f7557e41 Shyam Prasad N     2020-08-17  960        num_aces++;
253374f7557e41 Shyam Prasad N     2020-08-17  961        /* Group DENY ACE =
conflicts with owner ALLOW ACE. So keep it after. */
253374f7557e41 Shyam Prasad N     2020-08-17  962        if (deny_group_mod=
e && (deny_group_mode & (user_mode >> 3))) {
253374f7557e41 Shyam Prasad N     2020-08-17  963                size +=3D =
fill_ace_for_sid((struct cifs_ace *)((char *)pnndacl + size),
253374f7557e41 Shyam Prasad N     2020-08-17  964                          =
      pgrpsid, deny_group_mode, 0070, ACCESS_DENIED);
253374f7557e41 Shyam Prasad N     2020-08-17  965                num_aces++=
;
253374f7557e41 Shyam Prasad N     2020-08-17  966        }
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  967        size +=3D fill_ace=
_for_sid((struct cifs_ace *)((char *)pnndacl + size),
253374f7557e41 Shyam Prasad N     2020-08-17  968                        pg=
rpsid, group_mode, 0070, ACCESS_ALLOWED);
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  969        num_aces++;
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  970        size +=3D fill_ace=
_for_sid((struct cifs_ace *)((char *)pnndacl + size),
253374f7557e41 Shyam Prasad N     2020-08-17  971                        &s=
id_everyone, other_mode, 0007, ACCESS_ALLOWED);
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  972        num_aces++;
97837582bc1e19 Steve French       2007-12-31  973
253374f7557e41 Shyam Prasad N     2020-08-17  974  set_size:
e37a02c7ebb9fa Aurelien Aptel     2019-09-17  975        pndacl->num_aces =
=3D cpu_to_le32(num_aces);
22442179a5bb8c Steve French       2019-07-19  976        pndacl->size =3D c=
pu_to_le16(size + sizeof(struct cifs_acl));
22442179a5bb8c Steve French       2019-07-19  977
ef571cadd516e7 Shirish Pargaonkar 2008-07-24  978        return 0;
97837582bc1e19 Steve French       2007-12-31  979  }
97837582bc1e19 Steve French       2007-12-31  980

:::::: The code at line 914 was first introduced by commit
:::::: fdef665ba44ad5ed154af2acfb19ae2ee3bf5dcc smb3: fix mode passed in on=
 create for modetosid mount option

:::::: TO: Steve French <stfrench@microsoft.com>
:::::: CC: Steve French <stfrench@microsoft.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.0=
1.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=3D04%7C01%7C=
Steven.French%40microsoft.com%7C6c0a045183264f54babc08d89ce166e5%7C72f988bf=
86f141af91ab2d7cd011db47%7C1%7C0%7C637431841742581679%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C100=
0&amp;sdata=3Dq710sHM5tnPpoI2WLKJfJns9zE1VzGQ5%2FX4G2bwJnW0%3D&amp;reserved=
=3D0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/SN6PR2101MB1069149ACA3B1F94531284F1E4CB1%40SN6PR2101MB106=
9.namprd21.prod.outlook.com.

--_000_SN6PR2101MB1069149ACA3B1F94531284F1E4CB1SN6PR2101MB1069_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
fixed and repushed to cifs-2.6.git for-next<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> kernel test robot &lt=
;lkp@intel.com&gt;<br>
<b>Sent:</b> Thursday, December 10, 2020 1:57 AM<br>
<b>To:</b> Shyam Prasad &lt;Shyam.Prasad@microsoft.com&gt;<br>
<b>Cc:</b> kbuild-all@lists.01.org &lt;kbuild-all@lists.01.org&gt;; clang-b=
uilt-linux@googlegroups.com &lt;clang-built-linux@googlegroups.com&gt;; lin=
ux-cifs@vger.kernel.org &lt;linux-cifs@vger.kernel.org&gt;; samba-technical=
@lists.samba.org &lt;samba-technical@lists.samba.org&gt;;
 Steven French &lt;Steven.French@microsoft.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [cifs:for-next 4/15] fs/cifs/cifsacl.c:914:42: w=
arning: variable 'nmode' is uninitialized when used here</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">tree:&nbsp;&nbsp; git://git.samba.org/sfrench/cifs=
-2.6.git for-next<br>
head:&nbsp;&nbsp; 8f79025175de6bc8cac5c7aa4ea3763e92270058<br>
commit: 253374f7557e41729abf380c127f57627e0d4f9c [4/15] cifs: Fix unix perm=
 bits to cifsacl conversion for &quot;other&quot; bits.<br>
config: x86_64-randconfig-r032-20201209 (attached as .config)<br>
compiler: clang version 12.0.0 (<a href=3D""></a>https://nam06.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&=
amp;amp;data=3D04%7C01%7CSteven.French%40microsoft.com%7C6c0a045183264f54ba=
bc08d89ce166e5%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637431841742581=
679%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1=
haWwiLCJXVCI6Mn0%3D%7C1000&amp;amp;sdata=3DOBzz%2FjZDEWhIdejd757CErZKTwbG5s=
tWxGyBrDQlVXI%3D&amp;amp;reserved=3D0
 1968804ac726e7674d5de22bc2204b45857da344)<br>
reproduce (this is a W=3D1 build):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wget <a href=3D"https://nam06.sa=
felinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fraw.githubusercontent.c=
om%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.cross&amp;amp;data=3D04%7C01%=
7CSteven.French%40microsoft.com%7C6c0a045183264f54babc08d89ce166e5%7C72f988=
bf86f141af91ab2d7cd011db47%7C1%7C0%7C637431841742581679%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1=
000&amp;amp;sdata=3DyOzFZ91LyS%2FIuUKtPjq7jcpVJXqqw0JCjEn2XgL2AKA%3D&amp;am=
p;reserved=3D0">
https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fraw.git=
hubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.cross&amp;amp=
;data=3D04%7C01%7CSteven.French%40microsoft.com%7C6c0a045183264f54babc08d89=
ce166e5%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637431841742581679%7CU=
nknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLC=
JXVCI6Mn0%3D%7C1000&amp;amp;sdata=3DyOzFZ91LyS%2FIuUKtPjq7jcpVJXqqw0JCjEn2X=
gL2AKA%3D&amp;amp;reserved=3D0</a>
 -O ~/bin/make.cross<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chmod +x ~/bin/make.cross<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # install x86_64 cross compiling=
 tool for clang build<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # apt-get install binutils-x86-6=
4-linux-gnu<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git remote add cifs git://git.sa=
mba.org/sfrench/cifs-2.6.git<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git fetch --no-tags cifs for-nex=
t<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git checkout 253374f7557e41729ab=
f380c127f57627e0d4f9c<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # save the attached .config to l=
inux build tree<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COMPILER_INSTALL_PATH=3D$HOME/0d=
ay COMPILER=3Dclang make.cross ARCH=3Dx86_64 <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kernel test robot &lt;lkp@intel.com&gt;<br>
<br>
All warnings (new ones prefixed by &gt;&gt;):<br>
<br>
&gt;&gt; fs/cifs/cifsacl.c:914:42: warning: variable 'nmode' is uninitializ=
ed when used here [-Wuninitialized]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size +=3D setup_special_mode_ACE(pntace, =
nmode);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~<br>
&nbsp;&nbsp; fs/cifs/cifsacl.c:901:13: note: initialize the variable 'nmode=
' to silence this warning<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 nmode;<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<br>
&nbsp;&nbsp; 1 warning generated.<br>
<br>
vim +/nmode +914 fs/cifs/cifsacl.c<br>
<br>
975221eca5fbfd Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2020-06-12&=
nbsp; 894&nbsp; <br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 895&nbsp; static int set_chmod_dacl(struct cifs_acl *pndacl, struct c=
ifs_sid *pownersid,<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 896&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct cifs_=
sid *pgrpsid, __u64 *pnmode, bool modefromsid)<br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 897&nbsp; {<br>
2b210adcb08c79 Al Viro&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 2008-03-29&nbsp; 898&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; u16 size =3D 0;<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 899&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 num_aces =3D 0;<br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 900&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct cifs_acl *pnndac=
l;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 901&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 nmode;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 902&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 user_mode;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 903&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 group_mode;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 904&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 other_mode;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 905&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 deny_user_mode =3D 0;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 906&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 deny_group_mode =3D 0;<br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 907&nbsp; <br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 908&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pnndacl =3D (struct cif=
s_acl *)((char *)pndacl + sizeof(struct cifs_acl));<br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 909&nbsp; <br>
22442179a5bb8c Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-07-19&=
nbsp; 910&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (modefromsid) {<br>
22442179a5bb8c Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-07-19&=
nbsp; 911&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; struct cifs_ace *pntace =3D<br>
22442179a5bb8c Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-07-19&=
nbsp; 912&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (s=
truct cifs_ace *)((char *)pnndacl + size);<br>
22442179a5bb8c Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-07-19&=
nbsp; 913&nbsp; <br>
fdef665ba44ad5 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-12-06 =
@914&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; size +=3D setup_special_mode_ACE(pntace, nmode);<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 915&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; num_aces++;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 916&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; goto set_size;<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 917&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 918&=
nbsp; <br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 919&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 920&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * We'll try to keep the mod=
e as requested by the user.<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 921&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * But in cases where we can=
not meaningfully convert that<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 922&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * into ACL, return back the=
 updated mode, so that it is<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 923&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * updated in the inode.<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 924&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 925&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nmode =3D *pnmode;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 926&=
nbsp; <br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 927&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!memcmp(pownersid, pgrpsid, s=
izeof(struct cifs_sid))) {<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 928&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; /*<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 929&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; * Case when owner and group SIDs are the same.<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 930&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; * Set the more restrictive of the two modes.<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 931&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; */<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 932&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; user_mode =3D nmode &amp; (nmode &lt;&lt; 3) &amp; 0700;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 933&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; group_mode =3D nmode &amp; (nmode &gt;&gt; 3) &amp; 0070;<br=
>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 934&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 935&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; user_mode =3D nmode &amp; 0700;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 936&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; group_mode =3D nmode &amp; 0070;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 937&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 938&=
nbsp; <br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 939&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; other_mode =3D nmode &amp; 0007;<=
br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 940&=
nbsp; <br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 941&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* We need DENY ACE when the perm=
 is more restrictive than the next sets. */<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 942&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; deny_user_mode =3D ~(user_mode) &=
amp; ((group_mode &lt;&lt; 3) | (other_mode &lt;&lt; 6)) &amp; 0700;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 943&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; deny_group_mode =3D ~(group_mode)=
 &amp; (other_mode &lt;&lt; 3) &amp; 0070;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 944&=
nbsp; <br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 945&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *pnmode =3D user_mode | group_mod=
e | other_mode | (nmode &amp; ~0777);<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 946&=
nbsp; <br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 947&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (deny_user_mode) {<br>
22442179a5bb8c Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-07-19&=
nbsp; 948&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; size +=3D fill_ace_for_sid((struct cifs_ace *)((ch=
ar *)pnndacl + size),<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 949&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pownersid, deny_user_mode, 0700, ACCESS=
_DENIED);<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 950&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; num_aces++;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 951&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 952&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Group DENY ACE does not confli=
ct with owner ALLOW ACE. Keep in preferred order*/<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 953&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (deny_group_mode &amp;&amp; !(=
deny_group_mode &amp; (user_mode &gt;&gt; 3))) {<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 954&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; size +=3D fill_ace_for_sid((struct cifs_ace *)((char *)pnnda=
cl + size),<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 955&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pgrpsid, deny_group_mode, 0070, ACCESS_=
DENIED);<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 956&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; num_aces++;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 957&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 958&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size +=3D fill_ace_for_sid((struc=
t cifs_ace *) ((char *)pnndacl + size),<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 959&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pownersid, u=
ser_mode, 0700, ACCESS_ALLOWED);<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 960&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_aces++;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 961&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Group DENY ACE conflicts with =
owner ALLOW ACE. So keep it after. */<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 962&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (deny_group_mode &amp;&amp; (d=
eny_group_mode &amp; (user_mode &gt;&gt; 3))) {<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 963&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; size +=3D fill_ace_for_sid((struct cifs_ace *)((char *)pnnda=
cl + size),<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 964&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pgrpsid, deny_group_mode, 0070, ACCESS_=
DENIED);<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 965&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; num_aces++;<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 966&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 967&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size +=3D fill_ace_for_sid((struc=
t cifs_ace *)((char *)pnndacl + size),<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 968&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pgrpsid, gro=
up_mode, 0070, ACCESS_ALLOWED);<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 969&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_aces++;<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 970&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size +=3D fill_ace_for_sid((struc=
t cifs_ace *)((char *)pnndacl + size),<br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 971&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;sid_eve=
ryone, other_mode, 0007, ACCESS_ALLOWED);<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 972&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_aces++;<br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 973&nbsp; <br>
253374f7557e41 Shyam Prasad N&nbsp;&nbsp;&nbsp;&nbsp; 2020-08-17&nbsp; 974&=
nbsp; set_size:<br>
e37a02c7ebb9fa Aurelien Aptel&nbsp;&nbsp;&nbsp;&nbsp; 2019-09-17&nbsp; 975&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pndacl-&gt;num_aces =3D cpu_to_le=
32(num_aces);<br>
22442179a5bb8c Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-07-19&=
nbsp; 976&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pndacl-&gt;size =3D cpu=
_to_le16(size + sizeof(struct cifs_acl));<br>
22442179a5bb8c Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-07-19&=
nbsp; 977&nbsp; <br>
ef571cadd516e7 Shirish Pargaonkar 2008-07-24&nbsp; 978&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return 0;<br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 979&nbsp; }<br>
97837582bc1e19 Steve French&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-31&=
nbsp; 980&nbsp; <br>
<br>
:::::: The code at line 914 was first introduced by commit<br>
:::::: fdef665ba44ad5ed154af2acfb19ae2ee3bf5dcc smb3: fix mode passed in on=
 create for modetosid mount option<br>
<br>
:::::: TO: Steve French &lt;stfrench@microsoft.com&gt;<br>
:::::: CC: Steve French &lt;stfrench@microsoft.com&gt;<br>
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;amp;da=
ta=3D04%7C01%7CSteven.French%40microsoft.com%7C6c0a045183264f54babc08d89ce1=
66e5%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637431841742581679%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C1000&amp;amp;sdata=3Dq710sHM5tnPpoI2WLKJfJns9zE1VzGQ5%2FX4G2bwJ=
nW0%3D&amp;amp;reserved=3D0">https://nam06.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists=
.01.org&amp;amp;data=3D04%7C01%7CSteven.French%40microsoft.com%7C6c0a045183=
264f54babc08d89ce166e5%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C6374318=
41742581679%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;amp;sdata=3Dq710sHM5tnPpoI2WLKJfJns9=
zE1VzGQ5%2FX4G2bwJnW0%3D&amp;amp;reserved=3D0</a><br>
</div>
</span></font></div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/SN6PR2101MB1069149ACA3B1F94531284F1E4CB1%40SN6=
PR2101MB1069.namprd21.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfoot=
er">https://groups.google.com/d/msgid/clang-built-linux/SN6PR2101MB1069149A=
CA3B1F94531284F1E4CB1%40SN6PR2101MB1069.namprd21.prod.outlook.com</a>.<br /=
>

--_000_SN6PR2101MB1069149ACA3B1F94531284F1E4CB1SN6PR2101MB1069_--
