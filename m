Return-Path: <clang-built-linux+bncBAABBZ5B5TXQKGQEAIFASPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C70125B0A
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 06:55:53 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id o18sf3006200qtt.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 21:55:53 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1576734952; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+QV6rd8Rimrjkxu2SLMlocXqa/Utl0xcnFh6MiAF7JnM3Iokhe+xvrFk76YTBcul3
         Jq/hsCIbVRCF1mLr29ErVkz3vHSVH+htwWjlZrL9IdeVClyYMKB+tmHGwSJ/OaqR/SIN
         +V+RVwIF1/bjdh5CjaPSJJ7t1ndqCIqiC91NykSVLk/Ze8x7E7CtM32PCsMBuH/IurkX
         q1G/WvxJerJ3Y01wmQmrvafHMU2Yhv817ENmQlxmn2QIVlnFoX9I5cbHfFxkHEKsLQwA
         KVgLO9r4EjOI51ZWUXS82h3YxvHz0T+8IXyaKK5QnGrifmO9mFYUMNqb5ff9LOGV22V/
         tO7w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=hqCwUMaBMtXuE94baUzGyrclZ/C25XQQcUXk03BfP10=;
        b=SD55XdsAFlZLz6LdTgDMuQ3dHXRLJu8WSKnXwT7+uPO2PWfJ2M/aeMjbM8x9zgp0ko
         /s6fr4K8UYFZelsUmk/r0r0zFSrLuEYR2F+40tfNSIprDRG36qRRFQD0cYROpvzvyp+O
         tsUhuvaIEU9gwknxM0x7CcWRRL6jCLv0k89uj1UJCBzbYPjA72qkX6SCjcnGuCqeURp4
         6BCUAKQYQnBQsDOcpWgvoCKkO2ao07g7ukKk+kheeGJY2+qkZTUkU52TfFhiscvRImxo
         cNWhgnuRFWLH4GkCbsmF2eaCEYTBu0Xd0Jgbp1nLx0dw5+0OQkVGzIZu2gQsdXY8oxFu
         IZgw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@marvell.com header.s=pfpt0818 header.b="qB/TGdCa";
       dkim=pass header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com header.b=Wlgampbx;
       arc=pass (i=1 spf=pass spfdomain=marvell.com dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of prvs=9256fe81bd=mrangankar@marvell.com designates 67.231.148.174 as permitted sender) smtp.mailfrom="prvs=9256fe81bd=mrangankar@marvell.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=marvell.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hqCwUMaBMtXuE94baUzGyrclZ/C25XQQcUXk03BfP10=;
        b=IAfAHXY3vjaqH1O4So/RtOtlaMTs8Rh8Vb4Sb7Q4GRTLRboKiBltRfa4fbNbgRM5GX
         KG9UDyYiZuzzBjTterqxu0LIbjMWl5tkcL5x4JNnwgcYKGp1fKN12sEwtrltrK5jqyTM
         kSlzSqyGSdmIqA3HN08LCqGG7BJfOGwJDaaYb3wvZkFBzqsdTS+To191jdjiZz8j7Yw3
         FddmxViz/h1TcrEWUUXex0MD44qlk9mQzw0Hz833PD4VMZQEBEf3mbsW9URsuoZZ6iIr
         X2B3O7jC/d9kumRnR4NN4f+Bv2Dt3atS8UDgxt2ua0rVIoWAmDvpSa7qkyxEAkJXbWQE
         sSPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hqCwUMaBMtXuE94baUzGyrclZ/C25XQQcUXk03BfP10=;
        b=g39iutzQKeGskj1X+7CnxixiZBJa9Atn8lp/dR0WtOygFQQN1kijQB6pWISkw+h7M0
         e/s3fDYr0RIaN23Xb3JEq2dohoFnpbVI5JGPHDqPwvGDkY9CuYYty6KcBS3oiGCSBT7h
         QHEwvWAQ0GqrVdRm7bjYrAmzEiNJ/bntpo1qJfOdESokFimdyRmICuvvIMduue2us694
         Jk8wrvH9zdmUCyD6q4/FUeFTXFWYXFwodmbklQiWUhy8FJ3eApYrtmXWfwYW/NoANEwj
         r1sKbKYm2urbXgXce0h0OqLLzMwHgL8SqXmqV9z73KfNtnMdVUgGHO0ffZpjfWdHsf4T
         b71A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3D07GqSQRKeg+bxxiJoqIWkaHEKpwrhTtc8fOlahgX7/QFyvf
	DPRcIEpOBVy+5LsbDjRfuCw=
X-Google-Smtp-Source: APXvYqwJz2b60zoeXrl/vVMRD8GRkG4m5naPwtS5SY/2jryW0xNyn7qmmnpYPfTXOTAKynfSqkf5sg==
X-Received: by 2002:ad4:514e:: with SMTP id g14mr6122411qvq.196.1576734951849;
        Wed, 18 Dec 2019 21:55:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:18e9:: with SMTP id ep9ls753504qvb.2.gmail; Wed, 18
 Dec 2019 21:55:51 -0800 (PST)
X-Received: by 2002:a0c:8a93:: with SMTP id 19mr6138073qvv.157.1576734951488;
        Wed, 18 Dec 2019 21:55:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576734951; cv=pass;
        d=google.com; s=arc-20160816;
        b=dgJVWi0Kim+Ibse58IBYPe9Z9v+NIa3phGohIpxY2ajOJBXJBIP3/mgEPZchkwZnSf
         OgRawrZJWlWw0x9QSaJtJgARu58HPwVyoQSE4mh70VW3cz3k0+9Tzl5KJpwCvkF3Q6Yi
         //wMRA3VEGoYHhaC/HqOUrmf35QfS/CKQpWWPtGErGyYgSSm45wtdMcaOqNBKBKi4LQv
         XfWZjRmkW4UktNDAD4wlN2mgcP4KWxRy+XuoI/QJSsf5M+mryC0Pk24X5AFjHc7LPvTh
         jy8nH1O+Mq1e4qH1yJoT88pKwSt+hwzAcBwE0afkd46cfxE/kWj/ObGmy9RF8SMucpsY
         oIqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=qw5oUp9krnNDjUaPn+q6MTYZm2jYH6NJzEZ2HyyXoQM=;
        b=vCLvrLe/KDbOxUic+axUnZXo5AYVLu0x5SFDKuIKYddXqjVsIAu0hIY9zgUSvJVaBL
         0COuHvnkxT8E1kNen/3CZlW0gZZOwCei0VuHOuSY6PCUfvnQpx79bWISbcjLBoLUWcea
         TG96q1z16xjbsHk6oGdlX3K74xZl+UR+9Ow6ODKy8531HJkUFns3+H8AlDT2117aVYCr
         Ahfl/x2LWKaLCt2zI09Wd4YSAur2CCDuOayaNEvY5H7ut1CkGD/WI6k6ddZAfLIHz+0m
         Sgoxk8zUJzZD4f2Z7cSO4JTJDwN0KTtXz0A9TWhVhJNpMtU4wZpLgysHgQ1Btp4koDgl
         KBWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@marvell.com header.s=pfpt0818 header.b="qB/TGdCa";
       dkim=pass header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com header.b=Wlgampbx;
       arc=pass (i=1 spf=pass spfdomain=marvell.com dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of prvs=9256fe81bd=mrangankar@marvell.com designates 67.231.148.174 as permitted sender) smtp.mailfrom="prvs=9256fe81bd=mrangankar@marvell.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=marvell.com
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com. [67.231.148.174])
        by gmr-mx.google.com with ESMTPS id z17si219972qkg.3.2019.12.18.21.55.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Dec 2019 21:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=9256fe81bd=mrangankar@marvell.com designates 67.231.148.174 as permitted sender) client-ip=67.231.148.174;
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xBJ5tn8R019697;
	Wed, 18 Dec 2019 21:55:49 -0800
Received: from sc-exch02.marvell.com ([199.233.58.182])
	by mx0a-0016f401.pphosted.com with ESMTP id 2wxneb1s4v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 18 Dec 2019 21:55:49 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 18 Dec
 2019 21:55:47 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 18 Dec 2019 21:55:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EKTmPq1TTb7iNR31vnJTCZ/AZAAQEAlW3uANFAg9f8Zzi+ln5++4aQgt0/l6EgYhkQ2jJT5ODcPbXS4fmntNGFWETteJhNo3L0hnN9sNSq1SR+bW8K9lakT2IYSSvs64ELUOkvXROCqZB1UG41KCMMJ1MkuO2+oTUPfs/b87hgLxLkbT6GNt7Jj8BGDLfGObidcL5hJV3V4h1SP09n4hOREzgVdy9Gqz07a0sbzxroGlbSVQ+vY08XpABAEBIKo0uJqYzPaBeWiViZGXxE5yZ1mGM0e/1nnN3LR5/TcFNSUltNINtCzBFS4E7HyCuvUkiA1zILdV/4Qk+QR75+IkXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qw5oUp9krnNDjUaPn+q6MTYZm2jYH6NJzEZ2HyyXoQM=;
 b=KYM2RCByGe+dILEO0ThNVts0eB2gvoNh3Iy/1bHYQZWyYEp1KXtK82gEUQDDe9qIFBxIjb7Z8Dtj0YNUdqlTuiaWki+Bq0ZxOzZokzi/faYv6MmFgkZe4A7UsEs2Zh7AekfUB4HpNqnLEnfbiHjOQ0IfuiLM4BAhdr4Do1Ecxp/tHBReTPaXv1RxmprJiWmG2kETuXpEQuPvxijX78patmkIyX+I1rZgNl7G58UhVSbiLOSQo8c0aENozHgQzXbGO73ImMPW8CnrybTz+y5eLGwUCKa30w5dwPeyBYr2jZ7lQIOcaRibCnatMwGqM8Q8FU4VVg1EqgRYJjV3Hg2K7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from MN2PR18MB3022.namprd18.prod.outlook.com (20.179.81.79) by
 MN2PR18MB2814.namprd18.prod.outlook.com (20.179.23.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 05:55:46 +0000
Received: from MN2PR18MB3022.namprd18.prod.outlook.com
 ([fe80::71b6:15a6:296b:d72e]) by MN2PR18MB3022.namprd18.prod.outlook.com
 ([fe80::71b6:15a6:296b:d72e%5]) with mapi id 15.20.2538.022; Thu, 19 Dec 2019
 05:55:45 +0000
From: Manish Rangankar <mrangankar@marvell.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
        "QLogic-Storage-Upstream@qlogic.com" <QLogic-Storage-Upstream@qlogic.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen"
	<martin.petersen@oracle.com>
CC: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] scsi: qla4xxx: Adjust indentation in qla4xxx_mem_free
Thread-Topic: [PATCH] scsi: qla4xxx: Adjust indentation in qla4xxx_mem_free
Thread-Index: AQHVtUXiqoQyQCCWl0SuaAvTA+GDZ6fA9vfw
Date: Thu, 19 Dec 2019 05:55:45 +0000
Message-ID: <MN2PR18MB30227FB22733182ACF0BEFD8D8520@MN2PR18MB3022.namprd18.prod.outlook.com>
References: <20191218015252.20890-1-natechancellor@gmail.com>
In-Reply-To: <20191218015252.20890-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.143.185.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30dbd85b-fc7c-4c20-0958-08d784481747
x-ms-traffictypediagnostic: MN2PR18MB2814:
x-microsoft-antispam-prvs: <MN2PR18MB28140AD3B1D71450D9FCBFE3D8520@MN2PR18MB2814.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:79;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(136003)(396003)(39850400004)(376002)(346002)(199004)(189003)(13464003)(33656002)(19627235002)(9686003)(52536014)(81156014)(71200400001)(7696005)(54906003)(110136005)(81166006)(8676002)(4326008)(66476007)(64756008)(76116006)(316002)(5660300002)(966005)(478600001)(66556008)(66446008)(66946007)(26005)(2906002)(186003)(8936002)(55016002)(86362001)(53546011)(6506007)(32563001);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR18MB2814;H:MN2PR18MB3022.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lRmnKY7r/tf/Ag7blQCG1S81wxE7TQJvJK2ViY7afZ8YR0MxeRbanz4qG/CguEkVDQ/HFAd8BebfGxVFPgTSU68A8KXrWegTlhfIGIjLbc0GwCUD/wEDHcDyq2jYWnbg/lHvJGzGm29in/PluJYEYs2uXYnBg78Tn4yT3zz7+rldipzB2ncLT3cgwf2kkdUNtnzDFYPhJs0XcBonYwESa2tg3dpgLeChKXXyxTCPZy+UFWy+CBJyXNlr3NiG6HWnR5qzPUtzeWKyw/ccSpJNxLqNQe5OlzOfSsovTbBeZ+ZdHa791n1snt58p8QnfpEdRbwiT7s49AfOVyiWofI68Y370wQ80dLt89vNeIJRT084Qnm0UbWSBfoQd4Typc5gaUJLqWmsg7nnarXbVMKEYfeuQlpoB0WHawiO1rJtVx31T6YADtE/XqLi0N7Umi18Vj8BM7gSNF7F1g/+NqsY+zthSz0tIv+l4yIAc1Uvyao7iyyZA4YWHWEPZrAr7tXwBvUUteNsx2IUQsh6bN3QueMuHLRmOKXvpFnRGKt61xE=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 30dbd85b-fc7c-4c20-0958-08d784481747
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 05:55:45.7328
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3kcUL4iNB2bZCLVsMPcCbIJ5EHnQ/71kuZ6TOXyu8dEkdKAnh5esrrdZ5dWdhkAXdio6i12oPeTeOIhw85ocCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2814
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_08:2019-12-17,2019-12-18 signatures=0
X-Original-Sender: mrangankar@marvell.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@marvell.com header.s=pfpt0818 header.b="qB/TGdCa";       dkim=pass
 header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com
 header.b=Wlgampbx;       arc=pass (i=1 spf=pass spfdomain=marvell.com
 dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of prvs=9256fe81bd=mrangankar@marvell.com
 designates 67.231.148.174 as permitted sender) smtp.mailfrom="prvs=9256fe81bd=mrangankar@marvell.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=marvell.com
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


> -----Original Message-----
> From: linux-scsi-owner@vger.kernel.org <linux-scsi-
> owner@vger.kernel.org> On Behalf Of Nathan Chancellor
> Sent: Wednesday, December 18, 2019 7:23 AM
> To: QLogic-Storage-Upstream@qlogic.com; James E.J. Bottomley
> <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@oracle.com>
> Cc: linux-scsi@vger.kernel.org; linux-kernel@vger.kernel.org; clang-built-
> linux@googlegroups.com; Nathan Chancellor <natechancellor@gmail.com>
> Subject: [PATCH] scsi: qla4xxx: Adjust indentation in qla4xxx_mem_free
> 
> Clang warns:
> 
> ../drivers/scsi/qla4xxx/ql4_os.c:4148:3: warning: misleading indentation;
> statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>          if (ha->fw_dump)
>          ^
> ../drivers/scsi/qla4xxx/ql4_os.c:4144:2: note: previous statement is here
>         if (ha->queues)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel coding
> style and clang no longer warns.
> 
> Fixes: 068237c87c64 ("[SCSI] qla4xxx: Capture minidump for ISP82XX on
> firmware failure")
> Link: https://urldefense.proofpoint.com/v2/url?u=https-
> 3A__github.com_ClangBuiltLinux_linux_issues_819&d=DwIDAg&c=nKjWec
> 2b6R0mOyPaz7xtfQ&r=At6ko6G2bmE5NMB-
> 6KMSliwRneAzZrOmmK21YHGCrqw&m=uRvAonUUcyFaz2S6vZ8po-
> QrrPYNB3gw84QZKl9wS78&s=t3EPVR3mOgGj_emNe0i_rdomyiK4K9noSBB
> WMFBt2Ag&e=
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/scsi/qla4xxx/ql4_os.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
> index 2323432a0edb..5504ab11decc 100644
> --- a/drivers/scsi/qla4xxx/ql4_os.c
> +++ b/drivers/scsi/qla4xxx/ql4_os.c
> @@ -4145,7 +4145,7 @@ static void qla4xxx_mem_free(struct
> scsi_qla_host *ha)
>  		dma_free_coherent(&ha->pdev->dev, ha->queues_len, ha-
> >queues,
>  				  ha->queues_dma);
> 
> -	 if (ha->fw_dump)
> +	if (ha->fw_dump)
>  		vfree(ha->fw_dump);
> 
>  	ha->queues_len = 0;
> --

Thanks
Acked-by: Manish Rangankar <mrangankar@marvell.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MN2PR18MB30227FB22733182ACF0BEFD8D8520%40MN2PR18MB3022.namprd18.prod.outlook.com.
