Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBUXR5DVAKGQE2I7P4IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFC491CC2
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 07:51:16 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id g126sf1883548pgc.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 22:51:16 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1566193875; cv=pass;
        d=google.com; s=arc-20160816;
        b=jK2LRfVCNYFp6Z4TSHuMTgv1E+PCZr9jBynSPm4EfrKVcoCXFRw0+/mVVOWwDpDTL2
         zjxKsHw5Gw7Ds/XeRghdM2H/yZkbufcd+u9Bbx6APuPMmx0QsobjDYFuDxtPy3UpTf3I
         Oey78AF+6dGQ0Z9Hb14qLzGVmIgNy84WTuKVJCCP0+/FkAYx386GhN1mS7s7ET78pmLM
         3ke9iwXV7qGaY8FwxufxcX/Zw7gP/4Yasj7lntLje3EOnDgQ/5sJMi9hHt2ZB/8yKMM1
         GzbtrrjnP4Js5TbhRBUZDkwaZQgDa39O2VDiLmG3itInQEWlxMqbjGWMBsfZ6oensycP
         cTjQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=mVcBp4eJXLTp4BSVGAXVfdLkr9KiThcDx/08Yxhzp5c=;
        b=AwwwvV+GI6sZveKFpxIR2d22wobZTA4LTHLxIFCjBS0bts3ia0pN4YwJ6k97KUz/s+
         i0yJdJ2lIs2w66JuNAgNy1XNO12Kr5p6DX5St0U2HjdudF/v558/6pmv6f/xWKRQrMWo
         rXiMCA18jLkJ72LhfxPfJ21Csrkc4rTDoW0F8QXc2YZ/QGx7g4ZYB0D0oT2XdNUEWx1/
         w9fa24n5wT+dpLKjj1puNRF032AqRf0xPfsk+O9hWO60kqNE4LCaAVkyc0rgDejRTjIm
         Y4C6tEh6QkR2hebm3mPW/gm9Sx0NXOp0PCxssq10T07kLNUbkatMuYiDJAYGE02vrpCn
         ls1Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=oy1q7Cdh;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=WxRT3jjY;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=3134b91f87=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3134b91f87=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mVcBp4eJXLTp4BSVGAXVfdLkr9KiThcDx/08Yxhzp5c=;
        b=KKmiiLNyaD/Y7CZ22Gq/cBz652w6Z6JzKRird6RSN+8BfGzYyP1mnsY8FiKncqXAds
         Ius70WfcKzCbRGqyK92zpgqlqwgJXi9dVciXoyHzaWEs4JgLdzJPygCfgTLPSG6XUlGI
         0z67dx43YuUxZVO+WMHgcXx3+9QFcZoF1q1cgqHGHV4NiGUsTGSdDRTnvtpPguKlbTKX
         W8ToCLERVyNNSFXRS9+VV/BkgN+evp6YI6DQstxmSrYGmtj65Qb/RtUMvG8WwZodoTzh
         8+SyPo4FPJtLaMvmCqJDsZWJ2cRq5M5JJ/r5aOVlJ7/1Vsj2x3iCP1PvcJJT4vpf80h7
         gMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mVcBp4eJXLTp4BSVGAXVfdLkr9KiThcDx/08Yxhzp5c=;
        b=TJXN5gbPywp2jm8JX3bfy3Pikkbk+KqJMu6esZ6cTIDHI044iPxhJdYGxMhGeCptFs
         isNN5Kv03iPRH3Vn7yd4ziOAioAh7IpggiQnrqwRO1oARO6wze8VQQQnlwBO7jcMWCn+
         9klreJijSuN15EoVYoSYCbcOH2w4ApwQdEZ8UE+qRuQEX44vLsk2t51FVlhiB7EvgyxV
         osXlOQpb9YaPGMXvoRQmywqrA7kFcWf16toTZF4JSbD0hx9Ri7Fkk5j0xrisHkQ8ucbb
         Q+uyafQVfnW+/Jwc+JorYD5kLrx1CSzPXteHQTjQauE+RfXuSU11Dr7Btfz+Fja7SgJm
         69ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtkzKE2encbSJ1fJYsTD2WrOPB1gEPzybqjlJ+zq6jAkxpWWZ1
	zdzEOqMhGpYYRdvrd2kbm2w=
X-Google-Smtp-Source: APXvYqwuKn13V4vciIAitIsS4EFW/ryP6mAC58UkQcdOvi/XL/HbcKbGUNvtjAFHofhkAA5BQ5oP8w==
X-Received: by 2002:a17:90a:2ecb:: with SMTP id h11mr12037960pjs.108.1566193874872;
        Sun, 18 Aug 2019 22:51:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:68c8:: with SMTP id k8ls3270047pgt.8.gmail; Sun, 18 Aug
 2019 22:51:14 -0700 (PDT)
X-Received: by 2002:a62:642:: with SMTP id 63mr22585092pfg.257.1566193874616;
        Sun, 18 Aug 2019 22:51:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566193874; cv=pass;
        d=google.com; s=arc-20160816;
        b=uY1JfuEaRGe566KfDuxyupdPT1HhXVV4JURfL1lHl0KB/KOwssgzuULPM9XkvRbsdX
         rfTvSlqoTrfojdWbZF9fR0NEnV/2OJBFifAYM5CT9n3xM6bldJMKnoBqyJKfNqwGQhQe
         6EgAQFbeR1antLejBMID5nXPB5r5ztWTNZKW+aXUkl0+yf09L635bc9mTcpk7qW0v9Qp
         qoPQk8GQM/WB/9CNIiJheJfBzdB5x5xiZsaC93t94bG2xq5fbIQ/EITSElWyKpHTdm6A
         2TQsQM9Sip54R6YgXs/MnnQr41EiewO5oGHGKsl0/doM+iP3v4x9CIzu5h/s0Ncu7BK4
         z1eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=/D1aTRNaQpXeGhUKDkRERGc+8ROoHc7Ime160JrClvc=;
        b=tYxFG0r+XVPX+xaL4fUja2xvvTZGuCOUjDB1/Unf/e3QH7bh8Iabx3OaS43jZUtGuc
         qt38L6aJI/QgAeM1w796zEWQ8gi2/smojhBffRxqQw0nwtpju/cdi2WAoUY2nClDKxUu
         UkM0UnFZ5snRBwez5/6C/ctyf2GaFrb763WMVlBBHjVjcKQiBipdBgQ5f/8j9/xYbGMJ
         EkmJXbLFazBmUU9iyv2pgE2M7YqHZp58gPcM6hsFVX3mOrDoePnQ2QFLmd9cJ42LN7qc
         4byKtDNFx3QxHEGni05Yiu6Xxvr7D3HACWDgRVyh5usj2lEQHSUVp85XG2KzSdg6sn3m
         uG4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=oy1q7Cdh;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=WxRT3jjY;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=3134b91f87=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3134b91f87=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id b12si787122pfd.4.2019.08.18.22.51.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Aug 2019 22:51:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=3134b91f87=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x7J5nugR014183;
	Sun, 18 Aug 2019 22:51:12 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2ufnqb01h1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Sun, 18 Aug 2019 22:51:12 -0700
Received: from prn-hub04.TheFacebook.com (2620:10d:c081:35::128) by
 prn-hub05.TheFacebook.com (2620:10d:c081:35::129) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Sun, 18 Aug 2019 22:51:11 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Sun, 18 Aug 2019 22:51:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2FdP9OF8w6o9nZicQ4Ppzy1cUH1C+6fLBcnc97XUKYTl+/09zPWoUdBK0vpDIjn6XBJMTW6gMn+Id6RL0wptHTYyAbkquwSfrfStwhMEpSNTloJGM2AtvXA+A/slH95RjJDh8CJRQwP2qPW9M2jv7H8NLlhNcXEoJxmKMuJXy0uTb0MVZYY6/AMmaMHQFSN0bPq27lOwV5mKL9Pac/wYVE6UDSByCU9NeCRXpaRlBEFzCF34TdvKUlhoOOe9TEDXjWQB//bj0LLVeXTZcpOG/p9RqbkNOTJ+zmJAyTTJDYZk+Ufa9YzseUNUp91/19KWwiPq2oXVTwXAPACEFaNZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/D1aTRNaQpXeGhUKDkRERGc+8ROoHc7Ime160JrClvc=;
 b=D50Bh+1C7VKLPMNS1VEeK8hagr6aJcwJK1Iu549RvP+h9cmNh6uMyqJbJ/TBOy2bqvWOTht+qkYK0lE46+k+Z+NxaBEYH9t3PjOjscp6LvcNaIn9p8dPRwxEUhUn3EezVKQrs6vQgijPNDO2qsU9EvaJCXfg2CZ5LQOIPgaOAsJaA7rEEVW0LIw2JeWoOtjNnEo2QnmSYY2iPJ/ltMmPFDIP0SyvFQ+PYznIAxZD6LgtNuMkC3RdDcT+umOkF/fc/Pcvv5tqeuNbQrgdA4k/mpK/zloHbBPO2cul8RJB3sGaAWANyr8leE9eHdM6NS3IYyxq80p2tMWDX5iyQeDqvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.59.17) by
 BYAPR15MB2439.namprd15.prod.outlook.com (52.135.198.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 05:51:09 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::d95b:271:fa7e:e978]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::d95b:271:fa7e:e978%5]) with mapi id 15.20.2178.018; Mon, 19 Aug 2019
 05:51:09 +0000
From: Yonghong Song <yhs@fb.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
        Alexei Starovoitov
	<ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
CC: Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org"
	<bpf@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] test_bpf: Fix a new clang warning about xor-ing two
 numbers
Thread-Topic: [PATCH] test_bpf: Fix a new clang warning about xor-ing two
 numbers
Thread-Index: AQHVVkfGI3lq+eqY6EetOxo2qpIqHacB956A
Date: Mon, 19 Aug 2019 05:51:09 +0000
Message-ID: <00b21133-196c-f304-14a1-facb24c09103@fb.com>
References: <20190819043419.68223-1-natechancellor@gmail.com>
In-Reply-To: <20190819043419.68223-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR21CA0034.namprd21.prod.outlook.com
 (2603:10b6:300:129::20) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:10e::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:180::a8b3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfe2e8dd-f4e8-42a9-b03a-08d724693c09
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:BYAPR15MB2439;
x-ms-traffictypediagnostic: BYAPR15MB2439:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR15MB2439B1BF18CBBCA0FA53C097D3A80@BYAPR15MB2439.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(346002)(39860400002)(376002)(396003)(366004)(199004)(189003)(25786009)(6246003)(14454004)(66556008)(478600001)(64756008)(66446008)(66476007)(53936002)(229853002)(4326008)(966005)(6116002)(31686004)(76176011)(52116002)(2906002)(446003)(5660300002)(6506007)(102836004)(6486002)(386003)(53546011)(7736002)(14444005)(31696002)(256004)(305945005)(86362001)(316002)(71190400001)(71200400001)(66946007)(99286004)(186003)(81156014)(81166006)(110136005)(8676002)(8936002)(36756003)(54906003)(6512007)(6306002)(6436002)(476003)(11346002)(486006)(2616005)(46003);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2439;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hU0I7CBEUiZygn4rD/I4IEwG8R8TciSNnNLFEanXgdL03ngJSp55zV6zfpNTaGPc0mVyp3MEDBJjq8zEiORqZwjahs/AvDPSDSy2Etnv1PZJvawtjUd4Nx49IuRmpH5DbtCxg6E4yf5x9Q4I4rFpzIaF+LUkRBtTJC4eScDTILvKnljI55x6teaKg/IjhF28TXgpxxGYl/w0W6Cdsu6PBgHmr+A8LbQAq78fmflgT/3xUpNu+llyBa3aVKbr9pOgflmXHnzFOhidzgGmsiLhBd/SZeIxMS7jomspSqU4ddLIJxz9yBai4zxxtI5BsA/h6g5BgJZOMZmIlMEVN/OMtVrw1jnwsBCCfqnmZ6XGKiMGZ5C/dJUrnIMQGk/lK1nW3f29ocm6Dmh8bBwQFkszaWh0JXZRKYb4ZTQGDUmcOhA=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <1F8ECC3C16EEA947B68204269CE85C56@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dfe2e8dd-f4e8-42a9-b03a-08d724693c09
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 05:51:09.6716
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rH0w1dUzAX1Z514QlhnfdCSSSwAHmRsHQLrydg7wuDMMXwtH6t5R84VJXnni0GvB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2439
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-19_02:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908190067
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=oy1q7Cdh;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=WxRT3jjY;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=3134b91f87=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=3134b91f87=yhs@fb.com";       dmarc=pass (p=NONE
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



On 8/18/19 9:34 PM, Nathan Chancellor wrote:
> r369217 in clang added a new warning about potential misuse of the xor
> operator as an exponentiation operator:
> 
> ../lib/test_bpf.c:870:13: warning: result of '10 ^ 300' is 294; did you
> mean '1e300'? [-Wxor-used-as-pow]
>                  { { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
>                         ~~~^~~~~
>                         1e300
> ../lib/test_bpf.c:870:13: note: replace expression with '0xA ^ 300' to
> silence this warning
> ../lib/test_bpf.c:870:31: warning: result of '10 ^ 300' is 294; did you
> mean '1e300'? [-Wxor-used-as-pow]
>                  { { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
>                                           ~~~^~~~~
>                                           1e300
> ../lib/test_bpf.c:870:31: note: replace expression with '0xA ^ 300' to
> silence this warning
> 
> The commit link for this new warning has some good logic behind wanting
> to add it but this instance appears to be a false positive. Adopt its
> suggestion to silence the warning but not change the code. According to
> the differential review link in the clang commit, GCC may eventually
> adopt this warning as well.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/643
> Link: https://github.com/llvm/llvm-project/commit/920890e26812f808a74c60ebc14cc636dac661c1
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Verified that latest trunk clang indeed has this warning, and below 
change indeed fixed the warning in the correct way.

Acked-by: Yonghong Song <yhs@fb.com>

> ---
> 
> I highly doubt that 1e300 was intented but if it was (or something else
> was), please let me know. Commit history wasn't entirely clear on why
> this expression was used over just a raw number.
> 
>   lib/test_bpf.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/test_bpf.c b/lib/test_bpf.c
> index c41705835cba..5ef3eccee27c 100644
> --- a/lib/test_bpf.c
> +++ b/lib/test_bpf.c
> @@ -867,7 +867,7 @@ static struct bpf_test tests[] = {
>   		},
>   		CLASSIC,
>   		{ },
> -		{ { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
> +		{ { 4, 0xA ^ 300 }, { 20, 0xA ^ 300 } },
>   	},
>   	{
>   		"SPILL_FILL",
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00b21133-196c-f304-14a1-facb24c09103%40fb.com.
