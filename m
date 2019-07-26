Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBVGY5XUQKGQE676PWQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CED7733D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 23:10:45 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id b188sf40101361ywb.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 14:10:45 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564175444; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRRYm1/4bVTi2E8roiW8gcOfLicuXMZwx9fuCAjjDRaTR20MElTyiBv2l8bGR0RJR3
         Y8/UrqAxLz7te113lRPoBkd0tJDmZ8NU7AkT/o85TH9yfeCKQxPDGkSaNzwuGGPOzLf2
         DFWMhMaruXmBY5TB9VHj9LUpJyjMs8MLe054LDycytfz7CQ1dps6Q9d7S1PEaQrqYd7h
         vbpxOPFsks5OZsQofVxrFKYdVjGiq20d01wFXRFtaUdxy3plSbMnhMo+Z/taZFSsURPD
         FSPPejjY0ZrSS3Yl4hXM6kTccyxueEGIjSMAudeE0suLPj1asOPSGkesoxbU/cqp4rP6
         EjyQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=+WEw7MO3foXVO8A3ZNw6tCYfzP6MBfIR2bLzxnurTDo=;
        b=eoeXScRMx0sr5V/aOGW/bJpAun+0P2/n1ppCFDG6XYFMsjyrtnK2WJO0+kvJSGJUqI
         RFXDYToITYev1Hiu6kodAJBSmTyWOonh3NytLzuNpgDc4bZG9ROq8zEPN11tCVbZjO3E
         c4mDWGfVVhlKqJl9ysjjKTF+RFRpmahbnavVzYTRQDvKTZKuV1FH4T4SRGmsL8t2nLfR
         P/8kiLkjbQLM55PmkWaU/LhyVRIMJboF91uvWNaZDn9qoHN27saGD1JGV8lUOhMCo6mf
         hR9lBuqcHascnRtfEL21DQ9ftDLJHKlBePbZXgsPBXTyQeSRIiGYgudkOU/kuL1R7Cbe
         /B7w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=Kv0dWHri;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=bivArwai;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=2110cc791f=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+WEw7MO3foXVO8A3ZNw6tCYfzP6MBfIR2bLzxnurTDo=;
        b=rIM55rsyiV41UqiLNr5rwA3GJtWCdPI4bJdq/VbgM8tCHphCe0Efd6fwuyb+KKkFK9
         FZlc5DwNwoITd8dODDy5tJgo9pj7YVl0iRxUh2ogVvAwNL418RRbL0vG4oCvxaviFsx+
         WKSROpZFM9TUE/YBAnSVqB67uYqw3JwLWPI+PL6LSwasU8oubiPEvQEdWDvWVoHvJdyz
         Kb3CFdxsVD1cmDiUlXxMqxlZah5zEQlL4ahsiebwyTW5/ECQrqWfsYeINISIl7QK3qNg
         Ss+IE6OIqTa08qxKe2GZFFRv4q2SuDeYPE18jZrU9gtr/790q/dhxCd1ks2iFycZQy97
         mqiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+WEw7MO3foXVO8A3ZNw6tCYfzP6MBfIR2bLzxnurTDo=;
        b=c9Pwnsum0DOfenDQ5WHjdZnT/iDej9Wzg3XvqbfQBd5xgLlUAooxSHGdKKXtWFc7Hm
         ODTae4slLu0bmKVBhIQm5D9o5lbx2mT/pIvJbr7ulASRUgrO8I2I0BN3zbITFrsFMCAL
         tZweqpQs0OwLa8xUDM9NLiu3Y+7DX1z8kgXPnwJmIFcBLFcikpLi/afoUjrkWl2gjldb
         hGivh/jzvUA98d9WqZCevT4uQ5eoYtfFlH4cCkuVtBdPOky32lks7N5SgINdBFXSFVta
         wqnUaYVYO5+Mb4ybGC6XqzVX0U3DBxF+W16UM3WqUU9yU7nbuXOfX3o0jON2Euq6nPIc
         o81Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXZqeiuisr5ZF+p8n6Xk2pP8w841ijTMc1NPNZ1tmTjGI7++3AV
	6rnxlBoCGbpj4LY6pIa+wGg=
X-Google-Smtp-Source: APXvYqzI1XmVnVYjaHL0FV7+ab9YHuonRsY/3p8jzfF/ek5t2/kpZoz6B1+Rb0spM+uc/cANX695IQ==
X-Received: by 2002:a81:1bc5:: with SMTP id b188mr60724331ywb.232.1564175444380;
        Fri, 26 Jul 2019 14:10:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d994:: with SMTP id b142ls7283676ywe.2.gmail; Fri, 26
 Jul 2019 14:10:44 -0700 (PDT)
X-Received: by 2002:a81:3888:: with SMTP id f130mr59501643ywa.227.1564175444108;
        Fri, 26 Jul 2019 14:10:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564175444; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gdf9s17vEGfyDLVIl5Rp9Lr5RF8cTQWTbWWjSkbVGLwX+PfQcp859EKxG63QPlw/3M
         oL357MSlk0uvePmwBXcxNIxlAMJ7EoDYNKEBdGVRshjX6DWa1p96w8OgU5mKg1WTWtAG
         60ER8eVl7v4ca0ttTBxCoR0ZLJTKJC1sQvfSt87liZwtoP+X0mdyTB3mmFDJcJD0WgBs
         QhYaY8RgMUCY7zdn7l2H4/5hImBA4j41MD1nGJ0XNmcwcjgfpYle7kd8m/eLquMShPC9
         hnBl+mDMVSIccbt233MpnGXHY8lap7WiV4ujAvpD/10OXkQ/0R33KWsquSYAvYqBFgYg
         +snA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=LNS8OR6Ncvjj6Sdz3ZTCLrdR89334qCIClQZK3jYVUU=;
        b=RsJHNsC/VMgefLxp3Xl3av8lTy8qc5AVbkM2DyAnpo8aEWJN5FY8McfNo/hC2xa51O
         bAWGuoh8UH08hmK1zI8KW78U/7THr0ygn4GIjEZHK/sXziHjCFMOsU9EuO8ZBpwHQwTu
         //zTkun4ZpEHIn7JSIGS+RHaXDqblKSKaz3B+Xia7olHTyRsMRbIrcxVO47Vwz9hYDqE
         BxH6FIHBHsC8i3+FnGkrDeyGU+0FKHXphnrfjGIMsNPIMwcK1mA0dN85DC8rSpMvX9AF
         Ath3I9N41rkyeMPnrHSKxtyWW4FA86N0KBBqA/YuPPX50pbggkYZBHyw+53P5DoZEiTo
         0lCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=Kv0dWHri;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=bivArwai;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=2110cc791f=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id r1si3101099ywg.4.2019.07.26.14.10.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 14:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x6QL7eOG012382;
	Fri, 26 Jul 2019 14:10:42 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by m0001303.ppops.net with ESMTP id 2u04gfs56r-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 26 Jul 2019 14:10:42 -0700
Received: from prn-mbx05.TheFacebook.com (2620:10d:c081:6::19) by
 prn-hub04.TheFacebook.com (2620:10d:c081:35::128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 26 Jul 2019 14:10:37 -0700
Received: from prn-hub02.TheFacebook.com (2620:10d:c081:35::126) by
 prn-mbx05.TheFacebook.com (2620:10d:c081:6::19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 26 Jul 2019 14:10:37 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.26) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 26 Jul 2019 14:10:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n3h+7/Nc2BN5NW7PolaubSJfpoW64hbxf7EV3+0Hhd8Mm3reS/YFHhO8vlEbbX8X7fCz+S1kBy+k+Kju8VIz44/eNhLLevUd75t1aD5Zn8kvNXlhScSeQ44NzEoOrEuXZ05Cj/q+2io6Fxau85HUL48Xzj7zbtyDso+NmjoiWzhyDhT9I3IMgerLfTP8l5dhGLygmBsATwUT1dGB+a7MIchMxrLUz92LaxZxMAfOkHBEXxPTd6OfIvI5yp/gb8rCklxZzBecg/R9F8VbZ3OReVOQDp0Jm4XgC0mSuUSF8wO6ZJj8yoc6SNlCmCCXMdS5MI51pXqbH0w8XSyUXXpMYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNS8OR6Ncvjj6Sdz3ZTCLrdR89334qCIClQZK3jYVUU=;
 b=FeO+04ZDExmqNPygFidB305ZTgKnvj0fnd2MP7zH3uMFrTLkVZQUkxdsb2pulFLR7pCVqfxy/b46qGt9yagZdIhfaA/JjFDYanEAEasdU6hphgAjqmRYW6i5qss8wQedLfXuO6CWQAinOscPFs0VxYxMjSD0Nndc5BAvW8eVksfmFDUNGCB1RjDAtxegZqMsUvDC1ZLEHWUQgUbhwM8Fly2ct3RL3fa/M2HIAJ7cKrJv9q/eGZZwFLwBWFSxfXH1vOXlyVuBOxC0CXB+LLZq4zwqTi/cr2p8ebExczngGioCN2YEE6+ISw1mfxvoRzsUYmGKc3Km1dGcKCOPN1KFjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.59.17) by
 BYAPR15MB3143.namprd15.prod.outlook.com (20.178.239.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Fri, 26 Jul 2019 21:10:35 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac%5]) with mapi id 15.20.2115.005; Fri, 26 Jul 2019
 21:10:35 +0000
From: Yonghong Song <yhs@fb.com>
To: "sedat.dilek@gmail.com" <sedat.dilek@gmail.com>
CC: Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann
	<daniel@iogearbox.net>, Martin Lau <kafai@fb.com>,
        Song Liu
	<songliubraving@fb.com>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
        Clang-Built-Linux ML
	<clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>,
        Nick
 Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor
	<natechancellor@gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Topic: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Index: AQHVQ4xS9PP3XA7/nkqulb+RBeHJq6bcleMAgADHHgCAAAbMgIAAAjgA
Date: Fri, 26 Jul 2019 21:10:35 +0000
Message-ID: <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com>
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
 <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
In-Reply-To: <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR05CA0060.namprd05.prod.outlook.com
 (2603:10b6:102:2::28) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:10e::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::81eb]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db99f531-8b1b-4600-d581-08d7120db3c7
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB3143;
x-ms-traffictypediagnostic: BYAPR15MB3143:
x-microsoft-antispam-prvs: <BYAPR15MB314313E8E4E4708B4CAF175CD3C00@BYAPR15MB3143.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(39860400002)(376002)(136003)(346002)(396003)(45914002)(31014005)(189003)(199004)(6436002)(2906002)(6116002)(86362001)(478600001)(36756003)(45080400002)(5640700003)(31696002)(6916009)(31686004)(14454004)(4326008)(229853002)(6486002)(30864003)(66556008)(5660300002)(305945005)(66476007)(66946007)(66446008)(64756008)(8936002)(81156014)(81166006)(6246003)(25786009)(71200400001)(71190400001)(6512007)(486006)(54906003)(53936002)(446003)(99286004)(52116002)(2351001)(76176011)(11346002)(68736007)(256004)(102836004)(5024004)(14444005)(186003)(386003)(2501003)(8676002)(6506007)(53546011)(7736002)(2616005)(476003)(46003)(1361003)(316002);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB3143;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ubaXfoAt6cEMwM5h22XWCKZgZCQHdK11efxYUoOx7vqSIllwOnrpsS+LPFG2e+CvmbHZuWTKJU8Pv9CBKLtBuWtLkYpcO4W3OpTHy4vetF67lCccrhPKdfytAexL+2ukZEazTJeaEVQK9dcM0GEOir5FZvLfaSB3uZp8sRN+Ds/upuLCfatxVbMrRhd2rUGB/8c42iGPeBrFQQ5FeGd7/gRZq9vxruf6B5XLbK+UhOM9xoWE/1xvMgVuppTy7mX4ekXchlHJYThb0w/bu0gf6B4bR5d49EHVPbviqhgnlKQLfLFu86QMdyhFONKcwheeBmKbu8eEpEkAr4p+aJ5K359qmATZJ7WmJ9sa3Re+jLIwiMwZZqwcZ2kecZja2mEGbs45LFZ/ajtSqPHIxBB5JrIDN99ccZzP9by3rRMZoGU=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <ED4C068772D152418FC541B37CAF5AFB@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db99f531-8b1b-4600-d581-08d7120db3c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 21:10:35.7866
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhs@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3143
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-07-26_15:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907260239
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=Kv0dWHri;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=bivArwai;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=2110cc791f=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=2110cc791f=yhs@fb.com";       dmarc=pass (p=NONE
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



On 7/26/19 2:02 PM, Sedat Dilek wrote:
> On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>
>> Hi Yonghong Song,
>>
>> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
>>>
>>>
>>>
>>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
>>>> Hi,
>>>>
>>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
>>>
>>> Glad to know clang 9 has asm goto support and now It can compile
>>> kernel again.
>>>
>>
>> Yupp.
>>
>>>>
>>>> I am seeing a problem in the area bpf/seccomp causing
>>>> systemd/journald/udevd services to fail.
>>>>
>>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
>>>> to connect stdout to the journal socket, ignoring: Connection refused
>>>>
>>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
>>>> BFD linker ld.bfd on Debian/buster AMD64.
>>>> In both cases I use clang-9 (prerelease).
>>>
>>> Looks like it is a lld bug.
>>>
>>> I see the stack trace has __bpf_prog_run32() which is used by
>>> kernel bpf interpreter. Could you try to enable bpf jit
>>>     sysctl net.core.bpf_jit_enable = 1
>>> If this passed, it will prove it is interpreter related.
>>>
>>
>> After...
>>
>> sysctl -w net.core.bpf_jit_enable=1
>>
>> I can start all failed systemd services.
>>
>> systemd-journald.service
>> systemd-udevd.service
>> haveged.service
>>
>> This is in maintenance mode.
>>
>> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
>>
> 
> This is what I did:

I probably won't have cycles to debug this potential lld issue.
Maybe you already did, I suggest you put enough reproducible
details in the bug you filed against lld so they can take a look.

> 
> Jul 26 22:43:06 iniza kernel: BUG: unable to handle page fault for
> address: ffffffffa8203370
> Jul 26 22:43:06 iniza kernel: #PF: supervisor read access in kernel mode
> Jul 26 22:43:06 iniza kernel: #PF: error_code(0x0000) - not-present page
> Jul 26 22:43:06 iniza kernel: PGD 2cfa0e067 P4D 2cfa0e067 PUD
> 2cfa0f063 PMD 450829063 PTE 800ffffd30bfc062
> Jul 26 22:43:06 iniza kernel: Oops: 0000 [#3] SMP PTI
> Jul 26 22:43:06 iniza kernel: CPU: 3 PID: 436 Comm: systemd-udevd
> Tainted: G      D           5.3.0-rc1-7-amd64-cbl-asmgoto
> #7~buster+dileks1
> Jul 26 22:43:06 iniza kernel: Hardware name: LENOVO
> 20HDCTO1WW/20HDCTO1WW, BIOS N1QET83W (1.58 ) 04/18/2019
> Jul 26 22:43:06 iniza kernel: RIP: 0010:___bpf_prog_run+0x40/0x14f0
> Jul 26 22:43:06 iniza kernel: Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c
> 00 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c
> c3 48 83 c3 08 0f b6
>   33 <48> 8b 04 f5 10 2e 20 a8 48 83 f8 3b 7f 62 48 83 f8 1e 0f 8f c8 00
> Jul 26 22:43:06 iniza kernel: RSP: 0018:ffffb3cec0327a88 EFLAGS: 00010246
> Jul 26 22:43:06 iniza kernel: RAX: ffffb3cec0327b30 RBX:
> ffffb3cec00d1038 RCX: 0000000000000000
> Jul 26 22:43:06 iniza kernel: RDX: ffffb3cec0327b10 RSI:
> 00000000000000ac RDI: ffffb3cec0327ab0
> Jul 26 22:43:06 iniza kernel: RBP: ffffb3cec0327aa0 R08:
> ffff9b33c94c0a00 R09: 0000000000000000
> Jul 26 22:43:06 iniza kernel: R10: ffff9b33cfe14e00 R11:
> ffffffffa77b8210 R12: 0000000000000000
> Jul 26 22:43:06 iniza kernel: R13: ffffb3cec00d1000 R14:
> 0000000000000000 R15: ffffb3cec0327ab0
> Jul 26 22:43:06 iniza kernel: FS:  00007f7ac2d28d40(0000)
> GS:ffff9b33d2580000(0000) knlGS:0000000000000000
> Jul 26 22:43:06 iniza kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370 CR3:
> 000000044f3ea006 CR4: 00000000003606e0
> Jul 26 22:43:06 iniza kernel: Call Trace:
> Jul 26 22:43:06 iniza kernel:  __bpf_prog_run32+0x44/0x70
> Jul 26 22:43:06 iniza kernel:  ? security_sock_rcv_skb+0x3f/0x60
> Jul 26 22:43:06 iniza kernel:  sk_filter_trim_cap+0xe4/0x220
> Jul 26 22:43:06 iniza kernel:  ? __skb_clone+0x2e/0x100
> Jul 26 22:43:06 iniza kernel:  netlink_broadcast_filtered+0x2df/0x4f0
> Jul 26 22:43:06 iniza kernel:  netlink_sendmsg+0x34f/0x3c0
> Jul 26 22:43:06 iniza kernel:  ___sys_sendmsg+0x315/0x330
> Jul 26 22:43:06 iniza kernel:  ? seccomp_run_filters+0x54/0x110
> Jul 26 22:43:06 iniza kernel:  ? filename_parentat+0x210/0x490
> Jul 26 22:43:06 iniza kernel:  ? __seccomp_filter+0xf7/0x6e0
> Jul 26 22:43:06 iniza kernel:  ? __d_alloc+0x159/0x1c0
> Jul 26 22:43:06 iniza kernel:  ? kmem_cache_free+0x1e/0x5c0
> Jul 26 22:43:06 iniza kernel:  ? fast_dput+0x73/0xb0
> Jul 26 22:43:06 iniza kernel:  __x64_sys_sendmsg+0x97/0xe0
> Jul 26 22:43:06 iniza kernel:  do_syscall_64+0x59/0x90
> Jul 26 22:43:06 iniza kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> Jul 26 22:43:06 iniza kernel: RIP: 0033:0x7f7ac3519914
> Jul 26 22:43:06 iniza kernel: Code: 00 f7 d8 64 89 02 48 c7 c0 ff ff
> ff ff eb b5 0f 1f 80 00 00 00 00 48 8d 05 e9 5d 0c 00 8b 00 85 c0 75
> 13 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 54 c3 0f 1f 00 41 54 41
> 89 d4 55 48 89 f5 53
> Jul 26 22:43:06 iniza kernel: RSP: 002b:00007ffcfb66a478 EFLAGS:
> 00000246 ORIG_RAX: 000000000000002e
> Jul 26 22:43:06 iniza kernel: RAX: ffffffffffffffda RBX:
> 0000561e28ac9390 RCX: 00007f7ac3519914
> Jul 26 22:43:06 iniza kernel: RDX: 0000000000000000 RSI:
> 00007ffcfb66a4a0 RDI: 000000000000000d
> Jul 26 22:43:06 iniza kernel: RBP: 0000561e28acd210 R08:
> 0000561e28990140 R09: 0000000000000002
> Jul 26 22:43:06 iniza kernel: R10: 0000000000000000 R11:
> 0000000000000246 R12: 0000000000000000
> Jul 26 22:43:06 iniza kernel: R13: 0000000000000000 R14:
> 000000000000005e R15: 00007ffcfb66a490
> Jul 26 22:43:06 iniza kernel: Modules linked in: nfsd auth_rpcgss
> nfs_acl lockd grace i2c_dev parport_pc ppdev lp parport sunrpc
> efivarfs ip_tables x_tables autofs4 ext4 crc32c_generic mbcache crc16
> jbd2 btrfs zstd_decompress zstd_compress algif_skcipher af_alg sd_mod
> uas usb_storage scsi_mod hid_generic usbhid hid dm_crypt dm_mod raid10
> raid456 async_raid6_recov async_memcpy async_pq async_xor async_tx xor
> raid6_pq libcrc32c raid1 raid0 multipath linear md_mod
> crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel
> aesni_intel i915 intel_lpss_pci nvme aes_x86_64 glue_helper
> i2c_algo_bit crypto_simd cryptd xhci_pci psmouse e1000e drm_kms_helper
> xhci_hcd i2c_i801 nvme_core intel_lpss drm usbcore thermal wmi video
> button
> Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370
> Jul 26 22:43:06 iniza kernel: ---[ end trace 312670b063bd0391 ]---
> Jul 26 22:43:06 iniza kernel: RIP: 0010:___bpf_prog_run+0x40/0x14f0
> Jul 26 22:43:06 iniza kernel: Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c
> 00 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c
> c3 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 20 a8 48 83 f8 3b 7f 62 48
> 83 f8 1e 0f 8f c8 00
> Jul 26 22:43:06 iniza kernel: RSP: 0018:ffffb3cec0253cb8 EFLAGS: 00010246
> Jul 26 22:43:06 iniza kernel: RAX: ffffb3cec0253d60 RBX:
> ffffb3cec00e9038 RCX: 0000000000000002
> Jul 26 22:43:06 iniza kernel: RDX: ffffb3cec0253d40 RSI:
> 00000000000000ac RDI: ffffb3cec0253ce0
> Jul 26 22:43:06 iniza kernel: RBP: ffffb3cec0253cd0 R08:
> 0000000000000000 R09: ffffb3cec0253f58
> Jul 26 22:43:06 iniza kernel: R10: 0000000000000000 R11:
> ffffffffa77b8210 R12: 000000007fff0000
> Jul 26 22:43:06 iniza kernel: R13: ffffb3cec0253eb8 R14:
> 0000000000000000 R15: ffffb3cec0253ce0
> Jul 26 22:43:06 iniza kernel: FS:  00007f7ac2d28d40(0000)
> GS:ffff9b33d2580000(0000) knlGS:0000000000000000
> Jul 26 22:43:06 iniza kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370 CR3:
> 000000044f3ea006 CR4: 00000000003606e0
> Jul 26 22:43:06 iniza kernel: BUG: unable to handle page fault for
> address: ffffffffa8203370
> Jul 26 22:43:06 iniza kernel: #PF: supervisor read access in kernel mode
> Jul 26 22:43:06 iniza kernel: #PF: error_code(0x0000) - not-present page
> Jul 26 22:43:06 iniza kernel: PGD 2cfa0e067 P4D 2cfa0e067 PUD
> 2cfa0f063 PMD 450829063 PTE 800ffffd30bfc062
> Jul 26 22:43:06 iniza kernel: Oops: 0000 [#4] SMP PTI
> Jul 26 22:43:06 iniza kernel: CPU: 0 PID: 437 Comm: systemd-udevd
> Tainted: G      D           5.3.0-rc1-7-amd64-cbl-asmgoto
> #7~buster+dileks1
> Jul 26 22:43:06 iniza kernel: Hardware name: LENOVO
> 20HDCTO1WW/20HDCTO1WW, BIOS N1QET83W (1.58 ) 04/18/2019
> Jul 26 22:43:06 iniza kernel: RIP: 0010:___bpf_prog_run+0x40/0x14f0
> Jul 26 22:43:06 iniza kernel: Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c
> 00 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c
> c3 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 20 a8 48 83 f8 3b 7f 62 48
> 83 f8 1e 0f 8f c8 00
> Jul 26 22:43:06 iniza kernel: RSP: 0018:ffffb3cec032fa88 EFLAGS: 00010246
> Jul 26 22:43:06 iniza kernel: RAX: ffffb3cec032fb30 RBX:
> ffffb3cec00d1038 RCX: 0000000000000000
> Jul 26 22:43:06 iniza kernel: RDX: ffffb3cec032fb10 RSI:
> 00000000000000ac RDI: ffffb3cec032fab0
> Jul 26 22:43:06 iniza kernel: RBP: ffffb3cec032faa0 R08:
> ffff9b33cf34b000 R09: 0000000000000000
> Jul 26 22:43:06 iniza kernel: R10: ffff9b33cf3a3400 R11:
> ffffffffa77b8210 R12: 0000000000000000
> Jul 26 22:43:06 iniza kernel: R13: ffffb3cec00d1000 R14:
> 0000000000000000 R15: ffffb3cec032fab0
> Jul 26 22:43:06 iniza kernel: FS:  00007f7ac2d28d40(0000)
> GS:ffff9b33d2400000(0000) knlGS:0000000000000000
> Jul 26 22:43:06 iniza kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370 CR3:
> 000000044724a001 CR4: 00000000003606f0
> Jul 26 22:43:06 iniza kernel: Call Trace:
> Jul 26 22:43:06 iniza kernel:  __bpf_prog_run32+0x44/0x70
> Jul 26 22:43:06 iniza kernel:  ? prep_new_page+0x47/0x1a0
> Jul 26 22:43:06 iniza kernel:  ? security_sock_rcv_skb+0x3f/0x60
> Jul 26 22:43:06 iniza kernel:  sk_filter_trim_cap+0xe4/0x220
> Jul 26 22:43:06 iniza kernel:  ? __skb_clone+0x2e/0x100
> Jul 26 22:43:06 iniza kernel:  netlink_broadcast_filtered+0x2df/0x4f0
> Jul 26 22:43:06 iniza kernel:  netlink_sendmsg+0x34f/0x3c0
> Jul 26 22:43:06 iniza kernel:  ___sys_sendmsg+0x315/0x330
> Jul 26 22:43:06 iniza kernel:  ? seccomp_run_filters+0x54/0x110
> Jul 26 22:43:06 iniza kernel:  ? filename_parentat+0x210/0x490
> Jul 26 22:43:06 iniza kernel:  ? __seccomp_filter+0xf7/0x6e0
> Jul 26 22:43:06 iniza kernel:  ? __d_alloc+0x159/0x1c0
> Jul 26 22:43:06 iniza kernel:  ? kmem_cache_free+0x1e/0x5c0
> Jul 26 22:43:06 iniza kernel:  ? fast_dput+0x73/0xb0
> Jul 26 22:43:06 iniza kernel:  __x64_sys_sendmsg+0x97/0xe0
> Jul 26 22:43:06 iniza kernel:  do_syscall_64+0x59/0x90
> Jul 26 22:43:06 iniza kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> Jul 26 22:43:06 iniza kernel: RIP: 0033:0x7f7ac3519914
> Jul 26 22:43:06 iniza kernel: Code: 00 f7 d8 64 89 02 48 c7 c0 ff ff
> ff ff eb b5 0f 1f 80 00 00 00 00 48 8d 05 e9 5d 0c 00 8b 00 85 c0 75
> 13 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 54 c3 0f 1f 00 41 54 41
> 89 d4 55 48 89 f5 53
> Jul 26 22:43:06 iniza kernel: RSP: 002b:00007ffcfb66a478 EFLAGS:
> 00000246 ORIG_RAX: 000000000000002e
> Jul 26 22:43:06 iniza kernel: RAX: ffffffffffffffda RBX:
> 0000561e28aaa600 RCX: 00007f7ac3519914
> Jul 26 22:43:06 iniza kernel: RDX: 0000000000000000 RSI:
> 00007ffcfb66a4a0 RDI: 000000000000000e
> Jul 26 22:43:06 iniza kernel: RBP: 0000561e28aaaac0 R08:
> 0000561e28990140 R09: 0000000000000002
> Jul 26 22:43:06 iniza kernel: R10: 0000000000000000 R11:
> 0000000000000246 R12: 0000000000000000
> Jul 26 22:43:06 iniza kernel: R13: 0000000000000000 R14:
> 000000000000005d R15: 00007ffcfb66a490
> Jul 26 22:43:06 iniza kernel: Modules linked in: nfsd auth_rpcgss
> nfs_acl lockd grace i2c_dev parport_pc ppdev lp parport sunrpc
> efivarfs ip_tables x_tables autofs4 ext4 crc32c_generic mbcache crc16
> jbd2 btrfs zstd_decompress zstd_compress algif_skcipher af_alg sd_mod
> uas usb_storage scsi_mod hid_generic usbhid hid dm_crypt dm_mod raid10
> raid456 async_raid6_recov async_memcpy async_pq async_xor async_tx xor
> raid6_pq libcrc32c raid1 raid0 multipath linear md_mod
> crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel
> aesni_intel i915 intel_lpss_pci nvme aes_x86_64 glue_helper
> i2c_algo_bit crypto_simd cryptd xhci_pci psmouse e1000e drm_kms_helper
> xhci_hcd i2c_i801 nvme_core intel_lpss drm usbcore thermal wmi video
> button
> Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370
> Jul 26 22:43:06 iniza kernel: ---[ end trace 312670b063bd0392 ]---
> 
> Full `journalctl -xb` attached.
> 
> - Sedat -
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/295d2acd-0844-9a40-3f94-5bcbb13871d2%40fb.com.
