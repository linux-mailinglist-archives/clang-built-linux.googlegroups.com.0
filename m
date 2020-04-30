Return-Path: <clang-built-linux+bncBC2JVVVIVIMRBAXEVP2QKGQE3C26GRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9889D1C00A2
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 17:42:59 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id v1sf5097423oos.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 08:42:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588261378; cv=pass;
        d=google.com; s=arc-20160816;
        b=w/r1SIvD6zeOVCOweeKg3cIddwavmppMQ+AnM0W6+tEFAUeSP8eJ77Hd4NDp6apJ+q
         f+WGRsb6etSzdLhNNofwsJIhIJUFHQm1WN+k+fQgfS5ge36TUWRWYhmuwJ9oqtXoNqkN
         H6q8wA6utsZqJ/OC61ARDq9Rxrutrowr+5/giGoSqsDAYjtqQ5S3pQ/7gkBv+J4H8Sfa
         NZ7DsNDq8qpfgLpoQYt3bOPGWF1gIipOoShjPg1ZfeMgNJy9MZwC4rZIa80vmGJlII0M
         TUc9xom+Tt22JXAgZ3mUP/TcdJldI9ejx4n6rMQKG5vHllTpLWoa4j+vB6y4jY4ylNkd
         u/Gg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=OFz5ih0ZQFNBlHYgLrqmqf382odjSXvGa6Z9HDoazjs=;
        b=RJ8R6szRKpiREOrn/M1mxvpHFQhK5iIX16T/6jdFgMkg46J98sQDEKj6UjyfbpjFAy
         AwuZqj5eJOiP2CMNbTLBH5Yzm/w/LZdvCLSa3DkeaqxKaWbCP8FBtlnhtDuV4mx4uBWU
         3wHDaEoVVBWTG2PiRtbZztSgtfuJpPzdMJpM1G1CeO4VAF9coJoFg848/rKnHd7mIBJx
         MRlaEszlUuxU0kNUGCVUOmwqPj23fxUFN2rxtmtdB8iv1o3sZiAo5RxpiiOJq9IyvaGk
         KD+zNqU7d3SylcQoynRFP64xCTLvw6cYqWK9zwgMgszh6MWTp4iWvbRs/P9HsRIAAegy
         LRNg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=ASlBt2v5;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of haiyangz@microsoft.com designates 40.107.220.98 as permitted sender) smtp.mailfrom=haiyangz@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OFz5ih0ZQFNBlHYgLrqmqf382odjSXvGa6Z9HDoazjs=;
        b=OCgHpN+1GCrW2fvdR1X0zft0omYdQRyybsccoMRUY3jFVeIBTiDvpYqSt2nbLa7BpX
         xDe3sjcZ52DScx6La3cA3Q4yl3Ov+t6uZt24QG7g3/q/71J71XqUbEnuDY5L0No17KiX
         Qgt0e+q+huL6QTS5Su9XigH5Daa/OJ7vDqsXMBOPYdGnlimNF9aFvVmv38H2/Ns/IJu/
         TWF1lcmvZ1+z8C8SL2UyI0nKfGlv4oj0v81I7ugoigzmPbZy9vt3JO7UcCmARv8Fzopo
         U5Z9qFrNpe4Sz7gmAd0fp6XxLBoNtvgjF6NExW3WUuOEUysyLff3GMOakJwN5zwSbyTm
         RO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OFz5ih0ZQFNBlHYgLrqmqf382odjSXvGa6Z9HDoazjs=;
        b=EZghRTa9kMZO8jU7Dp5tbwJ8IID1fQ5//yPFUUjKal3li5Z5mPFoZLRSceGkD16C+Y
         ZB5GO8IssF9/rO81K3GwEQdt5PvJI8IhsFq/w3hhr8+JtdmbzXwXBxz7L/GLOZI30jgm
         yV4dxfPGRcoJpA2g5B3lcC7HkuvzTXY7YYkZrnD1hwqWUwG2fNOuzmYCA3CYjkg2DYo2
         tdHNLkr1/DpI8hNmyMnCHsaaXrwzkAP5459vcOAzxVYsj6fXeUyGBa8xa0YWHkZROi3n
         pDm8KGYyO3/TJQEXNOizatF45KIAhwNK2vXbmE+d7Aq7tOhsRsVESmMKvswflMRpn+u2
         YoYA==
X-Gm-Message-State: AGi0Pua1hZc1V0hurYxTjsNG/9U2ISZWrPPGj5Cm/shGNseM8kvPVLzi
	gr027R71RJWBHA02dvGMXCQ=
X-Google-Smtp-Source: APiQypK+kJhMNET620ilgAiixKXpmidmAwQflaD46ypZwOeOvD+ubMKxGhu6BDM8XGSXaVfMKrGVMQ==
X-Received: by 2002:a9d:7ada:: with SMTP id m26mr2884146otn.181.1588261378158;
        Thu, 30 Apr 2020 08:42:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:150:: with SMTP id 74ls740320otu.8.gmail; Thu, 30 Apr
 2020 08:42:57 -0700 (PDT)
X-Received: by 2002:a9d:1462:: with SMTP id h89mr3140138oth.18.1588261377698;
        Thu, 30 Apr 2020 08:42:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588261377; cv=pass;
        d=google.com; s=arc-20160816;
        b=gR8MnHJlbmw4FwoitIcRPWKzKUCJlyj3skeXrLksDwd6guK5ZGKVdRVOOSTiBBWTJS
         mG4uzduvPSkNJ1i6f0VVgFmIm3kC0ClliT/2QgfJ2QXJ2l6BAzx0JcdzTMmsw/rAOcrK
         B/9i5r/lfXD5CsotMAhs+ZKOOezxcvxZVeiv3fKTm4H8TZKTtAz7xZazhhKD4Svjej/S
         u6Kjr/NdflTVIHQDRRtaNIYpwj8g0xEuBVs8B1FdSlJiqGjgVL8vW4Y2t1sxRXoeWJ8r
         2BBY/eCKNmWXbaWgKOReAQDi5gBOYoGxFkc8EsV1vMfNOHDZD6fEPdVJp23O3/hPsgDu
         cYVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=oQBdZ/fGcozTanySAideIcVdPprG4AIT8zF/vq9KAuY=;
        b=tos6fkY8larpX61SHWkO+lnaaz2uf5psjoZAxn9G5XIkkKcAnmolnapIUAG9WWGnjZ
         DPpiOxAq+UxEDT8vVn8uj/gaXTi93FC2EIrmBYB6mTh3ZsyBWKdwto/jpFmArI39oTnw
         hWKIxJ0s439CFo3eFOR3XiHybj0LLbXYeuPPRU7f9j+Z7yFApPucrc8eAJeHE8iHLR6G
         Nl+0j4Bh5IEnwZaUNserFMB2axsgAJLv5xNBrlzCRj6quLNjegqwRdx6XU18Mv4/Q4Qg
         7Hh8ItY4mCLrRHcljMmYfVF74O6AetQ722u6Wxyw8k0cQq7T5tGnfHq0HmLS9mrY+EcQ
         87HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=ASlBt2v5;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of haiyangz@microsoft.com designates 40.107.220.98 as permitted sender) smtp.mailfrom=haiyangz@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2098.outbound.protection.outlook.com. [40.107.220.98])
        by gmr-mx.google.com with ESMTPS id t29si29759otj.2.2020.04.30.08.42.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Apr 2020 08:42:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of haiyangz@microsoft.com designates 40.107.220.98 as permitted sender) client-ip=40.107.220.98;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CWgBHvDcnX8UnFL4WySAclcNuRivpsd/4QHzus7Rr0tv0SOx+GjpnNE6/SaFZHwzyLkZsOCYkHeGWkHkOAJ8Gxx1XFQfWjmkl4y1V7gRI/7CyZt4Td1cW8ZdbySqrIihbioVQOA5GHnEL/qMqLLdL4jQuro4kmM4wQWk7U3yL7xvxYpAdpca03oR5GglpygrjZzb5QGo59+HnTPWbADikcgfDVGbI1VB+2UVTEXcd05i+5JJ0cPAh7sN4zSWsKdh3Oh6ZCI6hj8SJlGSfvitj5ilNelYZCbd9OxgJ85xim1TUOKpgmU/ga8Mgt9ONvK/EAjSOEySLADkTjnDPUNg2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQBdZ/fGcozTanySAideIcVdPprG4AIT8zF/vq9KAuY=;
 b=hr6Bav5y8VcQp3uHpC6knN7LF9LMm5fsMipzvzlge2yKs5fa4qHf/4MVS2sJpG0iIHwj2WpPcWb+ORBnYlSAK8sZYKMEDQS2vM5A6/wqL0rlOppSgM9xKPrDK+BI+4fBvzUENaobEJXeCzbr3TGgYsovEGkUTNB1xV7i5yVgx0G0KO7n9q/hI2FtWl+LnGsGr/y2+HJxQYVEcBnCZjFr62E4Xp7VKpSE56bNp735kaM2ReXQ+M5bP2ZDYJG4CVRkjNZCx96Xg50+mIxzkKZs6uO4/7TbUbpcW3x2UMwvPG/+YTMlujlK4K3F1wN7KTXOfxxq9NmkPPXVI98Qb23eGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
Received: from MN2PR21MB1437.namprd21.prod.outlook.com (2603:10b6:208:208::10)
 by MN2PR21MB1149.namprd21.prod.outlook.com (2603:10b6:208:fd::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.6; Thu, 30 Apr
 2020 15:42:55 +0000
Received: from MN2PR21MB1437.namprd21.prod.outlook.com
 ([fe80::453:5eca:93bd:5afa]) by MN2PR21MB1437.namprd21.prod.outlook.com
 ([fe80::453:5eca:93bd:5afa%6]) with mapi id 15.20.2979.005; Thu, 30 Apr 2020
 15:42:55 +0000
From: "'Haiyang Zhang' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Kelley
	<mikelley@microsoft.com>
CC: KY Srinivasan <kys@microsoft.com>, Stephen Hemminger
	<sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
	"linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: RE: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
Thread-Topic: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
Thread-Index: AQHWHYZGNBVu4gM0F0qaHyJdA0wqmKiQy0CAgABjYoCAAJnwsA==
Date: Thu, 30 Apr 2020 15:42:55 +0000
Message-ID: <MN2PR21MB14373FE40A4D3AD012FAEC49CAAA0@MN2PR21MB1437.namprd21.prod.outlook.com>
References: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
 <20200428175455.2109973-1-natechancellor@gmail.com>
 <MW2PR2101MB10522D4D5EBAB469FE5B4D8BD7AA0@MW2PR2101MB1052.namprd21.prod.outlook.com>
 <20200430060151.GA3548130@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200430060151.GA3548130@ubuntu-s3-xlarge-x86>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=haiyangz@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-04-30T15:42:54.3419050Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=5a6f0a0d-2bde-46e2-8635-0d6d252653b2;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
x-originating-ip: [96.61.83.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 25283589-86b4-4f36-ae3c-08d7ed1d26ce
x-ms-traffictypediagnostic: MN2PR21MB1149:|MN2PR21MB1149:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR21MB11498AAB5E6A5D80C98A6F4ACAAA0@MN2PR21MB1149.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sJQ02fUP6ojI9CpTn9va7j/XLLt46HY4MUvQmbadjIlVV7fnMJthnWGLy+Dg+bZsWAptnzKC1Yfq4Pd28TcTGRGkugZtAJBA4TDiBYXSmeBPRv0q3cqIoNnvhQb3nC3fulXULFRumnOMbnbbLFn9qDqPYbvl+SFEIWgT6RnDjyGmMNpU0XrGZszNi3lD9QL4ZS8RCXVyMaHbmfe9ik72qb+EnYPjc4a4/VbT1f4l+J5Ti5WSdm6+xDNS+XpHOh0GFpHg6eLwPbihGufzPJ46vKmyVBd4kF98LuZNk2U7NT3GfnfYwNWhOCjOQ5o+UKvUPevGyfqGItSAae12gZGOKHlywmgwoVCNAvxonDxytEsyPMNhCuZjyMzCBTN4Mp5V2L9Xn+Seq6PRuK9Trz+cQ3ysCocOOjjp32xTIih56A8Z1xoGC/Iz6YqnOvLYn1h/
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR21MB1437.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(136003)(39860400002)(376002)(366004)(346002)(186003)(52536014)(478600001)(4326008)(5660300002)(71200400001)(66556008)(66946007)(10290500003)(76116006)(66446008)(82950400001)(82960400001)(64756008)(6636002)(66476007)(54906003)(6506007)(55016002)(316002)(26005)(86362001)(7696005)(110136005)(33656002)(8990500004)(53546011)(8676002)(8936002)(2906002)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: WWSgXzDaGSjwNjBl+fz44967biH3cM+w6FvwqsuvsGPGm8+gGnh8ZgpU+DjA4DfAWGIQCF8aV/qdyOL2j3MLeq6ayCfBAuaBPdnRsymXG5Khc/HgpCjDXf8cUzqig6s9QZr4UvqKxNCP5fL/5VP1eJZ1JFVUCfT5bPmToca4+Cctr2cxahMEbw31I1Gh4hVNwuHwdV07+MF4OxMGL9dX08k7WZFpzyB6QSTPQqZFiT2dM4WXomDUlxN7NiRPdAdVZXSfWTPuQWi/+gPXEwan6ON3owApqGOfjy6b0PCHGKeEMxoi7yjlgoxhoehG9N1tT0xDbNaLuPivKZeW51WbyA2+RT0t6RiucWFQ+NZMNYC33o0URquQ7JumWAeUakZyTOpVSdkFkDvwG1aNgmba9RAlcVLpAGrwaYXvynRn+ccfeek7X11+ifw2EzqMa3FfO2LYMPTswKYIaoYLpYIz3+XsArbpKf4eSKwhjTN2Nyr2P+zIIj/bR9UaJ3Rve8sPqFgatoWJGkovVSL6pHVj5woQkiSR3RcwVGaD9LnTVD75Nt498u7ue93THZOYiZQwu7sR1XAGYtiFJLiYJxHKuAqienKy8+Ph4JUgfn3sdbjIEOJyqXaPN9qUweGj48MYrZGCddMjOkBvRAxAGvWVVKX3miNBRa8qhSm39crOMuVmUm3bXcA9XuL6HVUfg0rdySnHfrDtGDwN2bJa4LDWJpJ6UoVmNDNexS3X1koWjH01KOqNgP7TV8GnUSpuO5AgfsbeWtzUWx6EPd1Qvp+I436NVQHKhGKAeZC38CaRQmw=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25283589-86b4-4f36-ae3c-08d7ed1d26ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 15:42:55.5853
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KpHitXjOyFdQ0WNo7QBJl4d1NER1pG4tBidWhGLHP+tRuTnYxcRFxNFORpUCwHkSuYGKcJF8yjKz7T1ocKjWIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR21MB1149
X-Original-Sender: haiyangz@microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microsoft.com header.s=selector2 header.b=ASlBt2v5;       arc=pass
 (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com
 dmarc=pass fromdomain=microsoft.com);       spf=pass (google.com: domain of
 haiyangz@microsoft.com designates 40.107.220.98 as permitted sender)
 smtp.mailfrom=haiyangz@microsoft.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=microsoft.com
X-Original-From: Haiyang Zhang <haiyangz@microsoft.com>
Reply-To: Haiyang Zhang <haiyangz@microsoft.com>
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
> From: Nathan Chancellor <natechancellor@gmail.com>
> Sent: Thursday, April 30, 2020 2:02 AM
> To: Michael Kelley <mikelley@microsoft.com>
> Cc: KY Srinivasan <kys@microsoft.com>; Haiyang Zhang
> <haiyangz@microsoft.com>; Stephen Hemminger
> <sthemmin@microsoft.com>; Wei Liu <wei.liu@kernel.org>; linux-
> hyperv@vger.kernel.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; clang-built-linux@googlegroups.com; Sami
> Tolvanen <samitolvanen@google.com>
> Subject: Re: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
> 
> Hi Michael,
> 
> On Thu, Apr 30, 2020 at 12:06:09AM +0000, Michael Kelley wrote:
> > From: Nathan Chancellor <natechancellor@gmail.com> Sent: Tuesday,
> > April 28, 2020 10:55 AM
> > >
> > > Do note that netvsc_xmit still returns int because netvsc_xmit has a
> > > potential return from netvsc_vf_xmit, which does not return
> > > netdev_tx_t because of the call to dev_queue_xmit.
> > >
> > > I am not sure if that is an oversight that was introduced by commit
> > > 0c195567a8f6e ("netvsc: transparent VF management") or if everything
> > > works properly as it is now.
> > >
> > > My patch is purely concerned with making the definition match the
> > > prototype so it should be NFC aside from avoiding the CFI panic.
> > >
> >
> > While it probably works correctly now, I'm not too keen on just
> > changing the return type for netvsc_start_xmit() and assuming the
> > 'int' that is returned from netvsc_xmit() will be correctly mapped to
> > the netdev_tx_t enum type.  While that mapping probably happens
> > correctly at the moment, this really should have a more holistic fix.
> 
> While it might work correctly, I am not sure that the mapping is correct,
> hence that comment.
> 
> netdev_tx_t is an enum with two acceptable types, 0x00 and 0x10. Up until
> commit 0c195567a8f6e ("netvsc: transparent VF management"), netvsc_xmit
> was guaranteed to return something of type netdev_tx_t.
> 
> However, after said commit, we could return anything from netvsc_vf_xmit,
> which in turn calls dev_queue_xmit then __dev_queue_xmit which will
> return either an error code (-ENOMEM or
> -ENETDOWN) or something from __dev_xmit_skb, which appears to be
> NET_XMIT_SUCCESS, NET_XMIT_DROP, or NET_XMIT_CN.
> 
> It does not look like netvsc_xmit or netvsc_vf_xmit try to convert those
> returns to netdev_tx_t in some way; netvsc_vf_xmit just passes the return
> value up to netvsc_xmit, which is the part that I am unsure about...
> 
> > Nathan -- are you willing to look at doing the more holistic fix?  Or
> > should we see about asking Haiyang Zhang to do it?
> 
> I would be fine trying to look at a more holistic fix but I know basically nothing
> about this subsystem. I am unsure if something like this would be acceptable
> or if something else needs to happen.
> Otherwise, I'd be fine with you guys taking a look and just giving me
> reported-by credit.

Here is more info regarding Linux network subsystem:

As said in "include/linux/netdevice.h", drivers are allowed to return any codes 
from the three different namespaces.
And hv_netvsc needs to support "transparent VF", and calls netvsc_vf_xmit >> 
dev_queue_xmit which returns qdisc return codes, and errnos like -ENOMEM, 
etc. These are compliant with the guideline below:

  79 /*
  80  * Transmit return codes: transmit return codes originate from three different
  81  * namespaces:
  82  *
  83  * - qdisc return codes
  84  * - driver transmit return codes
  85  * - errno values
  86  *
  87  * Drivers are allowed to return any one of those in their hard_start_xmit()

Also, ndo_start_xmit function pointer is used by upper layer functions which can 
handles three types of the return codes. 
For example, in the calling stack: ndo_start_xmit << netdev_start_xmit << 
xmit_one << dev_hard_start_xmit():
The function dev_hard_start_xmit() uses dev_xmit_complete() to handle the 
return codes. It handles three types of the return codes correctly.

 3483 struct sk_buff *dev_hard_start_xmit(struct sk_buff *first, struct net_device *dev,
 3484                                     struct netdev_queue *txq, int *ret)
 3485 {
 3486         struct sk_buff *skb = first;
 3487         int rc = NETDEV_TX_OK;
 3488
 3489         while (skb) {
 3490                 struct sk_buff *next = skb->next;
 3491
 3492                 skb_mark_not_on_list(skb);
 3493                 rc = xmit_one(skb, dev, txq, next != NULL);
 3494                 if (unlikely(!dev_xmit_complete(rc))) {
 3495                         skb->next = next;
 3496                         goto out;
 3497                 }
 3498
 3499                 skb = next;
 3500                 if (netif_tx_queue_stopped(txq) && skb) {
 3501                         rc = NETDEV_TX_BUSY;
 3502                         break;
 3503                 }
 3504         }
 3505
 3506 out:
 3507         *ret = rc;
 3508         return skb;
 3509 }


 118 /*
 119  * Current order: NETDEV_TX_MASK > NET_XMIT_MASK >= 0 is significant;
 120  * hard_start_xmit() return < NET_XMIT_MASK means skb was consumed.
 121  */
 122 static inline bool dev_xmit_complete(int rc)
 123 {
 124         /*
 125          * Positive cases with an skb consumed by a driver:
 126          * - successful transmission (rc == NETDEV_TX_OK)
 127          * - error while transmitting (rc < 0)
 128          * - error while queueing to a different device (rc & NET_XMIT_MASK)
 129          */
 130         if (likely(rc < NET_XMIT_MASK))
 131                 return true;
 132
 133         return false;
 134 }

Regarding "a more holistic fix", I believe the return type of ndo_start_xmit should be 
int, because of three namespaces of the return codes. This means to change all network 
drivers. I'm not proposing to do this big change right now.

So I have no objection of your patch.

Thanks,
- Haiyang

Reviewed-by: Haiyang Zhang <haiyangz@microsoft.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MN2PR21MB14373FE40A4D3AD012FAEC49CAAA0%40MN2PR21MB1437.namprd21.prod.outlook.com.
