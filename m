Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBJUM6DVQKGQEXB7ETVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CC042B270D
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 23:12:07 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id p68sf11076564vkp.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 14:12:07 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568409126; cv=pass;
        d=google.com; s=arc-20160816;
        b=lxxtKNvps7IBe0NiOx6tDmit0XnKEB1Rk6llaNgFVIgl6bm4hBR6UWqP9/T693cYvr
         7O0UpXGkSr8HB0kIxieEIfvQ2Lb9zZ1AALyqG8ovPJm187px5is/Zu4JR2d0db3ruLAT
         uNm6zEW1C6qB1YXa7ERoV5YsCkYX/AvFCwC98CecpDxzmMm+2HoRIYqFD/zfy0nQmqCn
         ueZ7KEICdh0SxQxAFrlLNqHUdvKLfbiWqy3ZuH5JalWERpaVpIBwWO7n+TsU8Th/XlrQ
         wwtyU9tcvuK3GqxbEEyeZl4bIOduvTYGQuIBoHCSvxTAxomuceHGv7Qu4hwdc1A3Bwve
         yeTQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=vMNNSUV6+InF70Rcv4Ubaegu9pTGsyJ5KJQMly8io9c=;
        b=eJWyuLKe/PeQn8DmKHHRYx+//u7TL6YldIGmaUTQsODTOaHc4X19uFVMwHtp/xomzB
         +ks5KwXbo/fQiovNmXn3SiE2enA4o+bi4/2VvE87Wt7VlkHNxQ4DADb2RxY8WdDOlqtL
         hW/tJcsPfvAPCT8l4ZyVDCmkzTj+DE8W3fGwaWp5e9p1qiJsrHyjIkU7LIqeuaSnAWUo
         9meIVvh1aruG6akEWVXfZY2yuYmdUIS6Gd1pZ+fpGp5GyRNnmbDOUIX2/gl8GQtAjm00
         Az8I1fl/3xrcECOShpUT27P2Ypk26m90OtFTJ8Wo+T12K+oA8WdYia/nH6LDPd+xmQl0
         F1oA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=qUO8bDvf;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=lUSzbunB;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vMNNSUV6+InF70Rcv4Ubaegu9pTGsyJ5KJQMly8io9c=;
        b=oi+NDDM4ZtQoFxrg1e+v4xuqpvB/z2cf3U5nAn9mQyjbnU4OEBW+5ZRBcx4sACLQ1h
         s9zex8fPH9az9+aiBBQatnQ9Tlsjv6YiWFOhU+QXOHiJABN16Yk4xSQjlXTHh7b3z5Ry
         5LCccp+3feYM+cofyLnmxc1KzpKSGDKn62FbvllaWWNSac5rJqG30YQ3/P/kZ2ei0HMx
         XBAyMkAemimFRgRP0WU6sUtIVsMd7cd7MbRjXC4LrQoaJECUjiDa5S00JJ065K5Q4uR7
         GEet0jnITeJkax53sv6IGoNjZaV1/g+18zR7wlF3XIp8Owx4Yo6u7AwSAVCNYza0qcwm
         ay9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vMNNSUV6+InF70Rcv4Ubaegu9pTGsyJ5KJQMly8io9c=;
        b=podFdnBvf/MN5a9x885aRsfJVDpGpsRHtv1/ZCu/IqJRAHDdNJFKmDLT7eCjprdTcc
         v1aJSyXPLZZbXASKmK3BHMJKeuvTpnqYjsS5TCR0G7iJSoeVJ152RmKHS6+MgNwDhnJp
         u9QVBrqey8g51/yo1LO92tIeTQ4ssV/goj9JQSTpFDUc3H4aft+rvxlNgaHKEqbGpjvA
         EFn+ICo94gFcML+2mL+pNKaRQQsfFa231kFk1pHvRVMcW8umTbfaV5kvfLE2Gcy6gCTq
         oRZxxIYiSb9W9IfrNmHZS5nEg2UDL7DU68/gQPQrBRhhSakbKQU+6cQWKN0I3q9wn/h/
         fcDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXtXUWy7NYIcbZpDvRLsImqaucyCaqQ47jF9LSHeGZg8vd0lTn2
	I6FS6jSft+f/4wVcN6rrqjI=
X-Google-Smtp-Source: APXvYqzd5LUsn3lZWftxdyZgd6Kq/aK9BAW5ShX/V+R6w92shGqvGHLtGWmFpowtm5Il8L/AufJeuA==
X-Received: by 2002:a05:6102:7b2:: with SMTP id x18mr2655055vsg.176.1568409126525;
        Fri, 13 Sep 2019 14:12:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b102:: with SMTP id w2ls3056860vsl.11.gmail; Fri, 13 Sep
 2019 14:12:06 -0700 (PDT)
X-Received: by 2002:a67:fa86:: with SMTP id f6mr1148935vsq.78.1568409126272;
        Fri, 13 Sep 2019 14:12:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568409126; cv=pass;
        d=google.com; s=arc-20160816;
        b=r11r/tiGBd0A0Wi2VS5cgOIUqtCwuGjDOPkGDW8n49RS+TtW0aWztH3q+zNtNrm+xA
         7x5Ej77aTynlYQZbTcZf2FfAEVn1HdqjaTn/sVldgWanZfExw6CmNkEXA9d9oaFPT7iN
         Xr0FfpELfQkTeeSqGNK3/n6xieXM4/I5XGsQNi8Tf9dT5KElPfl+Uvr9HiJvIw5yWS8H
         Z9+RO7SX+TAfynF+6ydsdyYo3CdGvl4uUvfS4D8KPS9bXM0coELl/I4qohtoImLwn6Au
         7NMbzBOMumPQ6f22q8chD2NNo9WHMoAUo9qkGOzTX/cKk8geTeN8OTeoYSJD73YatAZz
         VSRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=Zeb1pA+O1j1Huoaw/l2xP0kbqF3BDFBQb+rAvDiXLbY=;
        b=xVHYftSmD78gDRb5iep1PnQc5AG/ouC5Xuuqng+K7Q/jN8eCfBQFkaJMCk4wYY4c4e
         FJ25xuD5sYutEFtTnqDXr3fNRcOZe8W3QnzQKEWnOY50HUgqzEoQSucoy1QU5zRw0kkI
         5ITpHlPu9zixZf0oVvHep0jIXtVg4cIuvlbj3qSrnfGMVH/CRimra0NKF5HaWgty6vFK
         6hob3jIdNwZpSg4EfvUT3+rGOCmV2ZeoiRvnxib1r/NUx2sxr9enW24yLhPdget7/TeZ
         MUssNTPDeoYeE5It4dgGKzOW9HNeGR9+/ZH7M6cWTm9R+mrvzKzVnMTH8nY4QbJlvv/P
         tH+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=qUO8bDvf;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=lUSzbunB;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id r72si1334872vke.5.2019.09.13.14.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Sep 2019 14:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8DL8XKB006551;
	Fri, 13 Sep 2019 14:12:03 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 2v0ehf18dq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 13 Sep 2019 14:12:03 -0700
Received: from ash-exhub201.TheFacebook.com (2620:10d:c0a8:83::7) by
 ash-exhub202.TheFacebook.com (2620:10d:c0a8:83::6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Sep 2019 14:12:02 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Sep 2019 14:12:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGInd5+OgRsa38oYyHxfn0AKAcAHm3Pgev/S2dR4uAOuZxa8+uWpQ4PgjfR3mxGl0B7lBLG/Gb7FCo7JPna++iMPJPEMqtVf3tAKrLeIsU3341UQm1LXa3WvvsZLmMc2DpfUwY2RhwMo2FBAZ+FyzzEL73YI72wUHs/CVMivaaYTkoL3CKc6E6ms9VLs/uPVP9h0GMkMNT5TSScFRK0n2bOKY6h6kRYYm70mWcgit0C7hbTbDm3n5NX85UevaRnWx7u60v4sRsnyeqghdDRjXDsUAHKEx3ypgJiIyCITwGI2yjEkqcOz0XuAMYkx9IJGskgsbBR0VWPMuNPoTjomlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zeb1pA+O1j1Huoaw/l2xP0kbqF3BDFBQb+rAvDiXLbY=;
 b=D2n6NN9/NE1LtT4t0QImatQLvtNzfVTEVvFxr5yRRnM6X0ccHkU4x14soY15YM5mO9NiuXDw2KAWEkrulhtGmpCPDY9Gn0SCCfFV77DUVm4UqcxbuE1Q4Z5ZXuM3T3jcu4AdNwbEol5M57gaufNpWLuEALoIu2H2r5A9zlkNik14WSEV6IUc+17jrKTKPW26w9qpCiYEF9841a4XRk9r2fPtdmdwVmy4jnRziJFb/NfI4+T2UBUvS+rjM7XtrJaVwgsO/1ysGVIPLw51oKZwDlh2U9q5p8n4ZixCn4vMjfX5+E4zvwLTtkQnMmXbzZeesShukM7FtMPrkP5VUFLJ9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.60.27) by
 BYAPR15MB2887.namprd15.prod.outlook.com (20.178.206.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Fri, 13 Sep 2019 21:12:01 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e%6]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 21:12:01 +0000
From: Yonghong Song <yhs@fb.com>
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
        "ast@kernel.org"
	<ast@kernel.org>,
        "daniel@iogearbox.net" <daniel@iogearbox.net>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "jakub.kicinski@netronome.com"
	<jakub.kicinski@netronome.com>,
        "hawk@kernel.org" <hawk@kernel.org>,
        "john.fastabend@gmail.com" <john.fastabend@gmail.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org"
	<bpf@vger.kernel.org>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next 05/11] samples: bpf: makefile: use D vars from
 KBUILD_CFLAGS to handle headers
Thread-Topic: [PATCH bpf-next 05/11] samples: bpf: makefile: use D vars from
 KBUILD_CFLAGS to handle headers
Thread-Index: AQHVZ8PziWr/UVryq0m06Eabu047jKcqIDkA
Date: Fri, 13 Sep 2019 21:12:01 +0000
Message-ID: <97ca4228-145a-2449-b4ba-8e79380a54f4@fb.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-6-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190910103830.20794-6-ivan.khoronzhuk@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR2201CA0063.namprd22.prod.outlook.com
 (2603:10b6:301:5e::16) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:112::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::ec5b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71246443-36e6-4c34-47c5-08d7388f04d8
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB2887;
x-ms-traffictypediagnostic: BYAPR15MB2887:
x-microsoft-antispam-prvs: <BYAPR15MB28879B1DDDA066A1E430010ED3B30@BYAPR15MB2887.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(376002)(136003)(366004)(396003)(39860400002)(346002)(199004)(189003)(478600001)(53546011)(256004)(6506007)(2616005)(386003)(71200400001)(71190400001)(99286004)(5660300002)(86362001)(2201001)(31696002)(46003)(54906003)(186003)(316002)(110136005)(102836004)(76176011)(446003)(11346002)(476003)(486006)(25786009)(52116002)(4326008)(305945005)(7736002)(6116002)(2906002)(36756003)(66476007)(66556008)(64756008)(66446008)(66946007)(6246003)(229853002)(53936002)(6486002)(8676002)(6512007)(81166006)(31686004)(6436002)(2501003)(14454004)(81156014)(7416002)(8936002)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2887;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iLBW2rz5Q+DdConauGXZyKgh4pHlc9yfN+yyIlttTfC1W/aRYuAd1tEMZGv1vjl7P/rPkY3l20o8gyuPOYuahtX3eydAfFIrnP10ViO2P2LJ72RbGAEKwkUsrHwhO9h1cqOR/PT/jHOBgNNESqrL4ExWaVESFDzCKQ3CJgKGU2Ds3YaI7C0Ja3Vh1Msri6nXyl3ms9vFJMB1An2CA1WnL8+O+OOaWe9dUmLtsymfxrcQIUcii3kfYTMorpFH7o5Ek3iBqD7pJzW62FFUwx9FsIgZg//TAkRjvecnG94HVy91dFXsrBivZO5Nhv+HNZr491CWRXm3R6DEi8j+p2FhkKSZivmRnYWXRXgKlLD7NOY0/vmjjIKzqlk60+u6hz75dzj85s7iUfKpujZU+crV6EnHXSjwJTfhLiOEjLYJLHk=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <73E16539182A3C4989B6317B1C064729@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 71246443-36e6-4c34-47c5-08d7388f04d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 21:12:01.0485
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ly+o7+n5jGnMVivNQOILqyk6iNI5KFQm/SpztTVn3XJMPNK5uZTv29clqE4To3BT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2887
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_10:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015
 malwarescore=0 phishscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130211
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=qUO8bDvf;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=lUSzbunB;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=fb.com
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



On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
> The kernel headers are reused from samples bpf, and autoconf.h is not
> enough to reflect complete arch configuration for clang. But CLANG-bpf
> cmds are sensitive for assembler part taken from linux headers and -D
> vars, usually used in CFLAGS, should be carefully added for each arch.
> For that, for CLANG-bpf, lets filter them only for arm arch as it
> definitely requires __LINUX_ARM_ARCH__ to be set, but ignore for
> others till it's really needed. For arm, -D__LINUX_ARM_ARCH__ is min
> version used as instruction set selector. In another case errors
> like "SMP is not supported" for arm and bunch of other errors are
> issued resulting to incorrect final object.
> 
> Later D_OPTIONS can be used for gcc part.
> ---
>   samples/bpf/Makefile | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 8ecc5d0c2d5b..6492b7e65c08 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -185,6 +185,15 @@ HOSTLDLIBS_map_perf_test	+= -lrt
>   HOSTLDLIBS_test_overhead	+= -lrt
>   HOSTLDLIBS_xdpsock		+= -pthread
>   
> +# Strip all expet -D options needed to handle linux headers
> +# for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
> +D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
> +	sed '/^-D/!d' | tr '\n' ' ')
> +
> +ifeq ($(ARCH), arm)
> +CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
> +endif

Do you need this for native compilation?

so arm64 compilation does not need this?
If only -D__LINUX_ARM_ARCH__ is needed, maybe just
with
    CLANG_EXTRA_CFLAGS := -D__LINUX_ARM_ARCH__
Otherwise, people will wonder whether this is needed for
other architectures. Or just do
    CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
for all cross compilation?

> +
>   # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>   #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>   LLC ?= llc
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/97ca4228-145a-2449-b4ba-8e79380a54f4%40fb.com.
