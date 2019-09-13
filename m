Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBWUW6DVQKGQEXSTC2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D37CB275A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 23:34:19 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id n62sf22282398ybg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 14:34:19 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568410458; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAz42gUYN5gI024ibhhdEfBBnCxWs1ic9ck0/Vpej7T/op3oY5Yt9xDkrlvaAj8V2M
         cwbwBfVJAzFfxzNvH+99okIT55yv1LHeGdLowMp1lJkWb2pQjaTFNrsQ3FEeDOYUod+g
         mLwxdtOguhSFQFW3VgQjMhl2UZtcazS3McYGwgeMX2viGgxbUfWqmusmnNz6Emg2x0BE
         WaFIgAP4vvuFspl60OSLsysw6bePvs9C3wnbpl0S4AFx0dfkvAC8jdgDRIZHeuIT/eFy
         SfdqXLwa4MPj2JGrHKE3yJGh4yCz7RX2OGG+bXgX6zpmQYoo/52cwQboSA4vbuZLvZVS
         qpig==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=tQNkhl/0xjKcjRsDwKRrSbm1mkuOwB5UjQRFXrbKFC0=;
        b=ZiYbEl248CMetNjj56EOVj7tZC4kg+PJHu8dYDMKNpHn3X9jxsDtK8mxFC74PlCJ6b
         C0w4IPybpqD1pDusvGMkO9J/DqyFpjd+aRuHDlcbW+FPfttPmQyOtiPfwok59knrEqQd
         dcW6nTloY1Z2y0XfyyPX2XyyYFWXRt61WyAimrsCgkQAPcy437jmV8LQrCEJLggEDhHh
         owetILaU1Nxmgw5E3w4eAq44drVxaATLFupokcRdlvPI9arGwitshSGOO46qK1trYlKs
         RX0C9L00lE0VWHfLyI3QMRl0lW4OSIt65HQEPS82HVXlpZM3xov/donMImqYwTKvwqe6
         tX3A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="kfSLY9/f";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=EkXDfbRn;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tQNkhl/0xjKcjRsDwKRrSbm1mkuOwB5UjQRFXrbKFC0=;
        b=GRLEP/9XWFl/10xeBcIiOMV76DeXybX0Yvc7KeryZfv+hui9m7Hsbtfwd9DdYG6FL8
         enl4/byFGFsfdr/TMaYjc1SLTemKTdM/429fYhofqopSBl5O11f68OogtR3dC7hQ/uBX
         69aDQ5aVMej7a1Qjr48s1uDQlKi9UlE4rgw4pDKEUxnXC5+rrTZqPcQDvAqswd2v2EzZ
         HvcCSO6rSCun2d3x0tRb8TcO5ZDri71HoKUYq/7La++whxWVvCStB1cqMfM/GOTCwDvT
         q9KKiAiXK4gQSI1WPH2qGteU96wJ6MovdkJeZ6FIWIJkZ5c03hZ0h+3UbKEyjIPhVbHb
         OfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tQNkhl/0xjKcjRsDwKRrSbm1mkuOwB5UjQRFXrbKFC0=;
        b=pjrFU8JUZLWrBcgYIcG+08IdP0jQ6DLB6F1wsxnW/DhhZaWS6KFKwzFDYtnCK9uvzi
         ApuoJy74nayva6jCt9Adr+lJJBtNa1YB2kUIgUYnbrKFxKl2Soo/Fijw7yKo9TbNu8JO
         vvoC63kUeCFwnBHnGiV89W61jlc6TXiOXk0GUevIiBYDUOkdQqfphAjc9aTGILva+keP
         IUkhb00LkY0x2YO3I0XjCSsWmmedid6lQ/bTA7jJaC93u2U6PeurHMWpQYWNi7c25OLW
         7FmN/dvIFBnb2RLw5kXPS09c9afrgK7d3G0UyhFWvhB+6nkD0JAq3/HiBTICFPVRQ5CH
         ZUcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVa+d5yV1shYaFfocjs3bt8678Lh6cQh84Kok/qkTgxobZZy+VW
	9AgUlfWvAN34ySAdHQQbHdk=
X-Google-Smtp-Source: APXvYqxsN7ES5FZ7eTrvOYxexkAaKErhVRNSdPtm7jrYJFT6OHUQZ6FcyMNB9x70HZLlSztPeyoldA==
X-Received: by 2002:a25:3743:: with SMTP id e64mr1837864yba.197.1568410458267;
        Fri, 13 Sep 2019 14:34:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:25d5:: with SMTP id l204ls4686497ybl.7.gmail; Fri, 13
 Sep 2019 14:34:17 -0700 (PDT)
X-Received: by 2002:a25:452:: with SMTP id 79mr1941140ybe.105.1568410457927;
        Fri, 13 Sep 2019 14:34:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568410457; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzbgA14iUGi9TbmtwUPuAy1oSLo6TC3eyN3xbCLQFSqq5FxgJNZo6b7Q0P/8WRroJb
         I4PQYcPk/bgyYmknmfg/icOKeds12lTYJ6LK1nlbCAAhres0elmCb5eNWVWB7rrCZJbh
         L2jz3o/2fy1NBkNciwBGo6vR+FbalTUPsFysDl6PUQWCMCDCrN4VK5sZEfD9Dcr5MI3R
         jRXeU4seuD6PQmst0Eq4c1w900XViXTyNiBBsTyDuBrXTJD9puW/jKfbFISGaEKKjgFM
         SZcRtQtHji3dI4cm3M6/1Vzg/C1+YEwVLN4vwq/I7cF0z56pXEm6AFq2Yd6e06tSqTZJ
         bTPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=AmTfHPl3zKHlwjYe8llbDM2hT14u3/aBGSn2/a3ehN4=;
        b=Cq9i5ZSp6NJRWHhlSG2g2BwinmnSBPdhHiKBjfq5nRnZbScA7uw9ImUJHY6Pw0Z+7E
         2NOeO4qdGZY37rZe976iWhZngg4l/hm27v5DMF0dthpD7JqAAUoL71Oxr4OJFigqC/59
         5bke6xefZ0foGXO6iEcUp9ozrnve/cY2jsrJb6L0gcyoRiVJFkOJJAmQ+HC2v2be35Px
         IPecJBxf8pgwvcL9YaYxiL+i6Sxa9stWfwPtYgFFxzqXUx3fjyv4NvqA0xXF9so/jeL7
         OUGiLpgymibZXaSWOSxTkRFVk9PEStqByAqZ/WleYSYVRG43MAf/h70Zbg9AUJ/g/tHU
         s9UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="kfSLY9/f";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=EkXDfbRn;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id g203si2351824ywc.5.2019.09.13.14.34.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Sep 2019 14:34:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8DLYAgS023456;
	Fri, 13 Sep 2019 14:34:15 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 2uytcqe020-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 13 Sep 2019 14:34:15 -0700
Received: from ash-exhub203.TheFacebook.com (2620:10d:c0a8:83::5) by
 ash-exhub101.TheFacebook.com (2620:10d:c0a8:82::e) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Sep 2019 14:33:59 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Sep 2019 14:33:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hes7G1d4HBAn1OanyCmP6YTug1UBxT4sl/UxO8QfOntEh1c7KNLXHdeyD8NmXrIs3x0Mq+HuBHhwAT08N7ffxX8FZLPKBA9B5fxPgJO5r6y/xvFNqlEuG93LF5Fuu2M5jVKNEH0yY4mo7cNLJ1LyJqqc1TkMGhwhrN7H+t4Vhw2IIdeFpFfRuqFq9hCSbslJ0RRjp+aRVpSbPdVLvU/3PMVmsm8qO1AFepGFtTzDvj5oQm/wgGffJckfwjXGmjBFJNxnGii3HPyXsL29pvmthdJRZQL2GVqGDDZgi3yYu6lPCqHB0kyWHO31Qj+82OdJQpkRMNywjYRR3IUnbK3F/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AmTfHPl3zKHlwjYe8llbDM2hT14u3/aBGSn2/a3ehN4=;
 b=H3cNvXf0NNXQ2rjaLM+9Hge5sc7P4+KrMfUw8kAsxbIWgj7V9nuh5F9LrXCKLw6dYBgkwZRZQGEC9WDPxBz/69ZZkWgt2IWbAnoO11zYHS1E+6eSX/tlBjdafdNS43/tXTMYGmzB1aY59W/2ITx54/WNWzRTUp3p+mPy8ha+ArNAD2FBd/RKHj6raZ9cj5lRKw2pQCajR0eYH9huJRXrbM2YVn18mMkmHSuZvmCAfLzBMhtJ1BgABzX2LiTuDCW8Dlx4QHvwZQW5ZUjBEaRf7Mg/8xYHqs2Ei8v8qxD/HQcX2sY1j6R+RMuJUK11Flr1eXscRWEc5X7JcvzEOsGQUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.60.27) by
 BYAPR15MB2421.namprd15.prod.outlook.com (52.135.197.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Fri, 13 Sep 2019 21:33:58 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e%6]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 21:33:58 +0000
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
Subject: Re: [PATCH bpf-next 07/11] samples: bpf: add makefile.prog for
 separate CC build
Thread-Topic: [PATCH bpf-next 07/11] samples: bpf: add makefile.prog for
 separate CC build
Thread-Index: AQHVZ8P7nMNMcmhFgkmUzoWLsT6rwqcqJloA
Date: Fri, 13 Sep 2019 21:33:58 +0000
Message-ID: <1720c5a5-5c64-46a3-be2f-56b59614f82a@fb.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-8-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190910103830.20794-8-ivan.khoronzhuk@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR18CA0036.namprd18.prod.outlook.com
 (2603:10b6:320:31::22) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:112::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::ec5b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b57c368a-a62c-4468-e9e8-08d7389215d8
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB2421;
x-ms-traffictypediagnostic: BYAPR15MB2421:
x-microsoft-antispam-prvs: <BYAPR15MB2421A10F4A5DEF7759BDCB35D3B30@BYAPR15MB2421.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(136003)(396003)(346002)(39860400002)(376002)(199004)(189003)(6246003)(5660300002)(66556008)(64756008)(316002)(102836004)(7416002)(52116002)(478600001)(11346002)(446003)(76176011)(2616005)(476003)(386003)(6506007)(8936002)(86362001)(2201001)(25786009)(486006)(31696002)(186003)(54906003)(110136005)(7736002)(305945005)(53546011)(14454004)(99286004)(46003)(8676002)(81156014)(81166006)(31686004)(14444005)(256004)(6116002)(71200400001)(71190400001)(6486002)(229853002)(6436002)(36756003)(53936002)(2501003)(6512007)(66946007)(4326008)(66476007)(2906002)(66446008);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2421;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 92uGh3MQb2IQzwAI5bibV+IDrqkxy11x/Q3hw9szNdpx1oLAVWOpBT6xgugJVdjLXnmEQ1j6b4GGSuhBFQvai/DeOhJFaDje0vnQlQxrqyeUstnNWiEwTz63X57Ezv07IFFiJ0zkWkd2Lki5cYsntm7ocTt8+jYq77Si2TRhzVHwFOQ+lJisX9AmRrfF6/vF+tSIJk88d77P5BaaPSLcD7yhEp1EGK8Ga5gFkDeK43M7+T3qGQ01aKzEnZFja5nlkKNx2MFf6KjfiU+F1e7IB+mxfzF4N16ZHC7pdUDSbr97+afyyRXwG5waslc1pCeYjRHdAnv5OzChmV/saQk59K6X5Wo6R5cfDcOO84hGhyL0cD6C2eKOA0t0EVQA8Z61RXVT43etKXomezQBkl+Kh5IQ0LXfajgOoItwDmOhI/w=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <EB454A36118DD34993C9DF88CC3AC185@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b57c368a-a62c-4468-e9e8-08d7389215d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 21:33:58.2240
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ghxaWA6+3eNquBKvSJFnnfCaTXn3flTeJEBhcSa2xBQxYTwkeQ5SrLIwCrMSNnRv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2421
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_10:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130214
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b="kfSLY9/f";       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=EkXDfbRn;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted
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
> The makefile.prog is added only, will be used in sample/bpf/Makefile
> later in order to switch cross-compiling on CC from HOSTCC.
> 
> The HOSTCC is supposed to build binaries and tools running on the host
> afterwards, in order to simplify build or so, like "fixdep" or else.
> In case of cross compiling "fixdep" is executed on host when the rest
> samples should run on target arch. In order to build binaries for
> target arch with CC and tools running on host with HOSTCC, lets add
> Makefile.prog for simplicity, having definition and routines similar
> to ones, used in script/Makefile.host. This allows later add
> cross-compilation to samples/bpf with minimum changes.

So this is really Makefile.host or Makefile.user, right?
In BPF, 'prog' can refers to user prog or bpf prog.
To avoid ambiguity, maybe Makefile.host?

> 
> Makefile.prog contains only stuff needed for samples/bpf, potentially
> can be reused and extended for other prog sets later and now needed

What do you mean 'extended for other prog sets'? I am wondering whether
we could just include 'scripts/Makefile.host'? How hard it is?

> only for unblocking tricky samples/bpf cross compilation.
> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>   samples/bpf/Makefile.prog | 77 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 77 insertions(+)
>   create mode 100644 samples/bpf/Makefile.prog
> 
> diff --git a/samples/bpf/Makefile.prog b/samples/bpf/Makefile.prog
> new file mode 100644
> index 000000000000..3781999b9193
> --- /dev/null
> +++ b/samples/bpf/Makefile.prog
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# ==========================================================================
> +# Building binaries on the host system
> +# Binaries are not used during the compilation of the kernel, and intendent
> +# to be build for target board, target board can be host ofc. Added to build
> +# binaries to run not on host system.
> +#
> +# Only C is supported, but can be extended for C++.

The above comment is not needed.
samples/bpf/ only have C now. I am wondering whether your below scripts 
can be simplified, e.g., removing cxxobjs.

> +#
> +# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
> +# progs-y := xsk_example
> +# Will compile xdpsock_example.c and create an executable named xsk_example
> +#
> +# progs-y    := xdpsock
> +# xdpsock-objs := xdpsock_1.o xdpsock_2.o
> +# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
> +# xdpsock, based on xdpsock_1.o and xdpsock_2.o
> +#
> +# Inherited from scripts/Makefile.host
> +#
> +__progs := $(sort $(progs-y))
> +
> +# C code
> +# Executables compiled from a single .c file
> +prog-csingle	:= $(foreach m,$(__progs), \
> +			$(if $($(m)-objs)$($(m)-cxxobjs),,$(m)))
> +
> +# C executables linked based on several .o files
> +prog-cmulti	:= $(foreach m,$(__progs),\
> +		   $(if $($(m)-cxxobjs),,$(if $($(m)-objs),$(m))))
> +
> +# Object (.o) files compiled from .c files
> +prog-cobjs	:= $(sort $(foreach m,$(__progs),$($(m)-objs)))
> +
> +prog-csingle	:= $(addprefix $(obj)/,$(prog-csingle))
> +prog-cmulti	:= $(addprefix $(obj)/,$(prog-cmulti))
> +prog-cobjs	:= $(addprefix $(obj)/,$(prog-cobjs))
> +
> +#####
> +# Handle options to gcc. Support building with separate output directory
> +
> +_progc_flags   = $(PROGS_CFLAGS) \
> +                 $(PROGCFLAGS_$(basetarget).o)
> +
> +# $(objtree)/$(obj) for including generated headers from checkin source files
> +ifeq ($(KBUILD_EXTMOD),)
> +ifdef building_out_of_srctree
> +_progc_flags   += -I $(objtree)/$(obj)
> +endif
> +endif
> +
> +progc_flags    = -Wp,-MD,$(depfile) $(_progc_flags)
> +
> +# Create executable from a single .c file
> +# prog-csingle -> Executable
> +quiet_cmd_prog-csingle 	= CC  $@
> +      cmd_prog-csingle	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ $< \
> +		$(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
> +$(prog-csingle): $(obj)/%: $(src)/%.c FORCE
> +	$(call if_changed_dep,prog-csingle)
> +
> +# Link an executable based on list of .o files, all plain c
> +# prog-cmulti -> executable
> +quiet_cmd_prog-cmulti	= LD  $@
> +      cmd_prog-cmulti	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ \
> +			  $(addprefix $(obj)/,$($(@F)-objs)) \
> +			  $(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
> +$(prog-cmulti): $(prog-cobjs) FORCE
> +	$(call if_changed,prog-cmulti)
> +$(call multi_depend, $(prog-cmulti), , -objs)
> +
> +# Create .o file from a single .c file
> +# prog-cobjs -> .o
> +quiet_cmd_prog-cobjs	= CC  $@
> +      cmd_prog-cobjs	= $(CC) $(progc_flags) -c -o $@ $<
> +$(prog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
> +	$(call if_changed_dep,prog-cobjs)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1720c5a5-5c64-46a3-be2f-56b59614f82a%40fb.com.
