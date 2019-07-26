Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBMWW5XUQKGQEBUEGJLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6372077332
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 23:05:55 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id y1sf21639593oih.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 14:05:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564175154; cv=pass;
        d=google.com; s=arc-20160816;
        b=l5yifDdNchXMKXi3WZTykmPLJn26J++xCP4H7XBeRn+V51wdS37oAJiEwbSd3FqDK8
         fbkdrTw+Cz94KlhVLP5HOrFCxuI3jkOzmlp7AV0NKhP1+MMofYxttc7zsqrXWBLN4g5d
         SKzGiEswVO6q7eoHku1qj37KwQLTtMjpamOZK2L1yo+b6usV0TYJmDQnDJN/ZApgjzyi
         rcJSdyMASLEDrMYobzQAZJRBHLXx3E3n9NV87HJKJhasZCp+ZMcZ9UgiNmDZbHdKWcN6
         oN5otZdlGTagINfcwNApuS1Ph4sU7YTv4A7X4EEQuNPGfSlA3+dDLNK1WUWvg8bjBgeP
         N74A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=coYuRGxyIgsM9tSxNJ4L4DmKOzhiU1avzAs+Fp+/lto=;
        b=CQW6C9YP2ERxq+dGB+/1dMRy5Le9SnhlSFJoa7xUJXwa4kT0KcFHmZ7lzG/Fgd2J1W
         NuSxfh9s7qBudAphWbPbPHYS/Lpvrave9DaBumNKCpg77MDXrLRvCnp400inM8Di/nDd
         Q6EojWLBBgvMYHP5MOwZFElxEo7Ze6WIIXH/Fva88yOPQszlkqLm2NZt9VojFZw2yxH0
         gG5dqwTr0/vxmrb+ftT4tdAoV70BdMVH0FQINmZblfeSdvgt7w0gK1eLfZ4AdaZzvxAM
         tZp2Afpo2aC6ywvdmGO88+2JCtPbaVvZeQmUQTpaQqSKQc0fvJFAgDbpNe/OUyyzAuKV
         Cchg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=HKJ93EL+;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="cB6/yvlO";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=2110cc791f=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=coYuRGxyIgsM9tSxNJ4L4DmKOzhiU1avzAs+Fp+/lto=;
        b=JuX2Nxhz6Zv3WN84z2Rzs/zn30s9qrzBzZSaBbaqQRl+F9Gj1WPun+hU8e5gA+6/mB
         BRE3WXmt/Z6mflkPMRB/7Kb7aWYu6/Dv4Q/TGcJcuTC8c0RLRHDqAU4M2VPBAYgwhdNN
         AYj+0oHQywhTPqTrkDqoyukMtdd1oG/on4yzrG3MQ8Af2ndCPRC6thhneWB82CxzC/Ln
         +rz2Amx6pzIgNaTk+N0poz4a1X9erioNDDqY2QYTK8bWs+4FVB4f3kJAWAn8Hc2/oWow
         OGFgw8aODbNJgi+2hvKUl2P22sxijsfrjCZLN/566cODk3EIx5+L0tK/6zCChq1K/tHy
         cQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=coYuRGxyIgsM9tSxNJ4L4DmKOzhiU1avzAs+Fp+/lto=;
        b=nKFXXorJzLkxjk6KFogd9GJBxA72F6EUTlildQGExdOcCqqIKxI0Tt+LLaH6ZwI8WF
         S+J3mtEs3vmc+yKsmykUGZGiSHsz+REQaAd1uIqoLAxYu7aFWKQ2jVbrMIFMr3jtMPZr
         DKhG2iLO4hw1UJT2DHq3OVEDMLZEfLbseCgf/CyXRTAGdokKbeySIe2BQ6k38+sSXjyM
         U6tgPgXb39o4zshzFP5f7RVTRS2weRTaWjqpuX3EFBsfDDu32SRLH9xJWA6nM16wAWzV
         ripRqU7kKibGJ0+JAAEKFV6Gm6toCAsZPwZAvGaI5r/wq5oc7k25HbqF1V7A03ej5ysG
         wgMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnCQ+nXtJOeL+30oQWKcE5zOvR8RaRHaar+MomA9IhM5e4liGm
	NMO2KCCR0uHr+/mchsaguIk=
X-Google-Smtp-Source: APXvYqxnJgABh0RKIGe3p2eyZePB7Mf/gsmNpWVqm7V/4/EoQ6Ld/EMRqp8gjCfBnr/215B8YOXt6w==
X-Received: by 2002:aca:ad0f:: with SMTP id w15mr13902188oie.58.1564175154266;
        Fri, 26 Jul 2019 14:05:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d7:: with SMTP id b23ls10558544otk.14.gmail; Fri, 26
 Jul 2019 14:05:54 -0700 (PDT)
X-Received: by 2002:a9d:3f62:: with SMTP id m89mr73995723otc.44.1564175153978;
        Fri, 26 Jul 2019 14:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564175153; cv=pass;
        d=google.com; s=arc-20160816;
        b=AIF7Mmw90CklbfSnf+BBy+//Put/8msnBx2iP1TOQ+1NNQf8QsFCVu00ez4GUkGHj1
         og9GP5sTERb5jNXrM0JCkS4NWqAtTfKUSMV2CpgwkxUX5E+iXF7XV4nd1LjSwPCHOS5k
         9L602J6oX91dp4/31Fg5Mm1alCbHObqE4DVgu3yaLk/qG1jcY1C0miy0r0tBZ49C/k4Q
         C+NgxQ6vLzaTU1+kcQc1tlYgrrjyzheKs7afjVeUpkixopau/POmsJWfwVoto+hGYu6T
         UqtT02nRjTGzRB83M+1JJCYIQE9iSj7i18B6H3W3nZPqKoVZH4/8YosGX94j4beGzIyc
         RVGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=vsolyvoBI8mjxwDcvo6DRD3M8cd2EnRVhLjcwMijc24=;
        b=mr/LYNph9k19mhdoBSUz1OS22kwSOemiiLfFDa7/10gX83gHjMs5x2WSExa96iYeNJ
         t//TTZPK5o5IJ4HjygokoceZaiUnlzDtJDTj6VgTpe2G7qOhHv6Pw3Jzge2eklTrEpFk
         VDt7wIPfecufcSrv9P823+F0UzY84+nHav4+hrwW8geSmhSMNd41HJqP5gglYPTpmOb9
         /dDqihK4SsHD+Ewgt4k+F16bFx0szR23gfvFeJ0kh4K3pq6k9GIwnILwCa7s27IVWU6K
         mF6zqFiRGj6tV/gBZRyQS1neyp8kE/0cbaiXrGWZq04gsDnva/1/1AeOU/21TIZ5PpBo
         6i8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=HKJ93EL+;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="cB6/yvlO";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=2110cc791f=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id n27si2647373otj.1.2019.07.26.14.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 14:05:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x6QL19e6019251;
	Fri, 26 Jul 2019 14:05:49 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 2u04m61353-18
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 26 Jul 2019 14:05:47 -0700
Received: from ash-exopmbx201.TheFacebook.com (2620:10d:c0a8:83::8) by
 ash-exhub201.TheFacebook.com (2620:10d:c0a8:83::7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 26 Jul 2019 14:05:25 -0700
Received: from ash-exhub104.TheFacebook.com (2620:10d:c0a8:82::d) by
 ash-exopmbx201.TheFacebook.com (2620:10d:c0a8:83::8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 26 Jul 2019 14:05:24 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.175) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 26 Jul 2019 14:05:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKe0hL6rf2jZuQ19Pue6zkpqSpfOWn9g83Hq7RNvOBvpwfzbcJ1UWO5v84ylvjmx6ohZrRZ9XagIaWCqs4d+7SDbfiVH0VOcH0QoV1XqBOAvoi8L5rFG26fugBj/E8jjkR3T7dmWKKH2LPMz8rFI33WECO1G/Avz3QxCqD8KaIT5t/CHAgQtLHtEoDAqd2hfRWnQIE59J7abUGvovR3Vr5Ag5yQFHuvLfKhhnQBvtMwftYJxug+Mru5thBPIWel5ZpjLDQ0FhbGTtbUyhMZ7pH9pGekAexcP4n2T3DtksVv3b7uZzzDlMWMrUyCx4rwBVq7x3uBAQnkL8L8Rsh8Ccw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vsolyvoBI8mjxwDcvo6DRD3M8cd2EnRVhLjcwMijc24=;
 b=D2+BtgumJ6pWHpJGSxaC5C0jzW3qPDYmN3TRe9A/l43kpdIRyGOPbUlcZo2T82gRZh+dJNSgh0Zqh+9vHKCcw7YDgJ46p6xsV6MNrWyoehyf55pGgIjMFhKP0rsrtksYPGYYYP531fuRwQ2CQUnt8avwOu98tcjGH9pJORkLML0QyWq3JuYy51eXpqjiJrXU66NOAVdhBY2ssjgeSLf3uIDskOcJyvdY6bJQb/TCQ6gb4lf8VSToFJUhZhw3Reyvv6E3jZ7Ouh7yRn6scpe8Rru17s/JNc+Rjf8wiDXO+7oO6kgcrzXvHqi4pPC6yqgrkrrVGUKPkWmxIlqQQH41aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.59.17) by
 BYAPR15MB2933.namprd15.prod.outlook.com (20.178.237.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Fri, 26 Jul 2019 21:05:24 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac%5]) with mapi id 15.20.2115.005; Fri, 26 Jul 2019
 21:05:24 +0000
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
Thread-Index: AQHVQ4xS9PP3XA7/nkqulb+RBeHJq6bcleMAgADHHgCAAAeRgA==
Date: Fri, 26 Jul 2019 21:05:23 +0000
Message-ID: <5bb726c5-5f50-ba44-9d78-e57a92a58266@fb.com>
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
 <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
In-Reply-To: <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO2PR05CA0103.namprd05.prod.outlook.com
 (2603:10b6:104:1::29) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:10e::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::81eb]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f06e40eb-09b4-48de-034e-08d7120cf9cc
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB2933;
x-ms-traffictypediagnostic: BYAPR15MB2933:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR15MB2933E0FED5AC510939CC3EE8D3C00@BYAPR15MB2933.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(346002)(396003)(39860400002)(366004)(376002)(45914002)(189003)(199004)(31014005)(71200400001)(25786009)(14454004)(6486002)(5024004)(14444005)(256004)(2616005)(446003)(11346002)(476003)(66446008)(316002)(229853002)(6306002)(31696002)(1361003)(54906003)(71190400001)(46003)(66946007)(66556008)(4326008)(53936002)(52116002)(68736007)(6512007)(5660300002)(86362001)(66476007)(478600001)(45080400002)(6436002)(5640700003)(2501003)(6916009)(81156014)(81166006)(7736002)(2351001)(305945005)(102836004)(6246003)(6116002)(186003)(966005)(2906002)(386003)(53546011)(6506007)(486006)(36756003)(76176011)(8676002)(64756008)(99286004)(8936002)(31686004);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2933;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6IBv1eubCi6GaQo4BlHdq+pT29XnZ2xRbj4AMs1Uvs5BRhWOIbyPsqnVVYUO8EyBa7f9+Y+m925YUoB0y14Q2Cxocqf4oeZF7EehD7+H0EfdoLCJON+T/a74hRdDlV/Z51cOpThc0VTfDgRTF/RjXMTUJM+i5AzwNAWS4S7FV3P4y87q2CRMV2dRw/DFay/x6hijtbfiRTg6990wySPAUUBeAoM8VWn+Zaw/zMQfKVki4e3Zo/b0NiOUcHTmQVuGkJ6aZM0I51V9JSAP3BsBz02tMoqqmVOsLxDzG/C7fu+/T1RS4RDorBOAxbf5L+prKIiZlnEfvckRUm87+gE4wjKH65KwHrPjtSLby2j8gNfGjYf9ryjWyJfV21YSc+dP1kBra/Vbby1b2w2Xjg+ohhzvbglJSSnPmBWkuGY1hr4=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <26D73F401881564188E9EE860A2D5022@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f06e40eb-09b4-48de-034e-08d7120cf9cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 21:05:23.8497
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhs@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2933
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-07-26_15:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907260237
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=HKJ93EL+;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b="cB6/yvlO";       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=2110cc791f=yhs@fb.com designates 67.231.145.42 as permitted
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



On 7/26/19 1:38 PM, Sedat Dilek wrote:
> Hi Yonghong Song,
> 
> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
>>
>>
>>
>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
>>> Hi,
>>>
>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
>>
>> Glad to know clang 9 has asm goto support and now It can compile
>> kernel again.
>>
> 
> Yupp.
> 
>>>
>>> I am seeing a problem in the area bpf/seccomp causing
>>> systemd/journald/udevd services to fail.
>>>
>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
>>> to connect stdout to the journal socket, ignoring: Connection refused
>>>
>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
>>> BFD linker ld.bfd on Debian/buster AMD64.
>>> In both cases I use clang-9 (prerelease).
>>
>> Looks like it is a lld bug.
>>
>> I see the stack trace has __bpf_prog_run32() which is used by
>> kernel bpf interpreter. Could you try to enable bpf jit
>>     sysctl net.core.bpf_jit_enable = 1
>> If this passed, it will prove it is interpreter related.
>>
> 
> After...
> 
> sysctl -w net.core.bpf_jit_enable=1
> 
> I can start all failed systemd services.
> 
> systemd-journald.service
> systemd-udevd.service
> haveged.service
> 
> This is in maintenance mode.
> 
> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?

I do think you should set net.core.bpf_jit_enable by default. This is 
more tested in production and you get better performance as well.

> 
> Regards,
> - Sedat -
> 
>>>
>>> Base for testing: next-20190723.
>>>
>>> The call-trace looks like this:
>>>
>>> [Fri Jul 26 08:08:42 2019] BUG: unable to handle page fault for
>>> address: ffffffff85403370
>>> [Fri Jul 26 08:08:42 2019] #PF: supervisor read access in kernel mode
>>> [Fri Jul 26 08:08:42 2019] #PF: error_code(0x0000) - not-present page
>>> [Fri Jul 26 08:08:42 2019] PGD 7620e067 P4D 7620e067 PUD 7620f063 PMD
>>> 44fe85063 PTE 800fffff8a3fc062
>>> [Fri Jul 26 08:08:42 2019] Oops: 0000 [#1] SMP PTI
>>> [Fri Jul 26 08:08:42 2019] CPU: 2 PID: 417 Comm: (journald) Not
>>> tainted 5.3.0-rc1-5-amd64-cbl-asmgoto #5~buster+dileks1
>>> [Fri Jul 26 08:08:42 2019] Hardware name: LENOVO
>>> 20HDCTO1WW/20HDCTO1WW, BIOS N1QET83W (1.58 ) 04/18/2019
>>> [Fri Jul 26 08:08:42 2019] RIP: 0010:___bpf_prog_run+0x40/0x14f0
>>> [Fri Jul 26 08:08:42 2019] Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c 00
>>> 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c c3
>>> 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 40 85 48 83 f8 3b 7f 62 48 83
>>> f8 1e 0f 8f c8 00
>>> [Fri Jul 26 08:08:42 2019] RSP: 0018:ffff992ec028fcb8 EFLAGS: 00010246
>>> [Fri Jul 26 08:08:42 2019] RAX: ffff992ec028fd60 RBX: ffff992ec00e9038
>>> RCX: 0000000000000002
>>> [Fri Jul 26 08:08:42 2019] RDX: ffff992ec028fd40 RSI: 00000000000000ac
>>> RDI: ffff992ec028fce0
>>> [Fri Jul 26 08:08:42 2019] RBP: ffff992ec028fcd0 R08: 0000000000000000
>>> R09: ffff992ec028ff58
>>> [Fri Jul 26 08:08:42 2019] R10: 0000000000000000 R11: ffffffff849b8210
>>> R12: 000000007fff0000
>>> [Fri Jul 26 08:08:42 2019] R13: ffff992ec028feb8 R14: 0000000000000000
>>> R15: ffff992ec028fce0
>>> [Fri Jul 26 08:08:42 2019] FS:  00007f5d20f1d940(0000)
>>> GS:ffff8ba3d2500000(0000) knlGS:0000000000000000
>>> [Fri Jul 26 08:08:42 2019] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370 CR3: 0000000445b3e001
>>> CR4: 00000000003606e0
>>> [Fri Jul 26 08:08:42 2019] Call Trace:
>>> [Fri Jul 26 08:08:42 2019]  __bpf_prog_run32+0x44/0x70
>>> [Fri Jul 26 08:08:42 2019]  ? flush_tlb_func_common+0xd8/0x230
>>> [Fri Jul 26 08:08:42 2019]  ? mem_cgroup_commit_charge+0x8c/0x120
>>> [Fri Jul 26 08:08:42 2019]  ? wp_page_copy+0x464/0x7a0
>>> [Fri Jul 26 08:08:42 2019]  seccomp_run_filters+0x54/0x110
>>> [Fri Jul 26 08:08:42 2019]  __seccomp_filter+0xf7/0x6e0
>>> [Fri Jul 26 08:08:42 2019]  ? do_wp_page+0x32b/0x5d0
>>> [Fri Jul 26 08:08:42 2019]  ? handle_mm_fault+0x90d/0xbf0
>>> [Fri Jul 26 08:08:42 2019]  syscall_trace_enter+0x182/0x290
>>> [Fri Jul 26 08:08:42 2019]  do_syscall_64+0x30/0x90
>>> [Fri Jul 26 08:08:42 2019]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>>> [Fri Jul 26 08:08:42 2019] RIP: 0033:0x7f5d220d7f59
>>> [Fri Jul 26 08:08:42 2019] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00
>>> 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8
>>> 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 07 6f 0c 00
>>> f7 d8 64 89 01 48
>>> [Fri Jul 26 08:08:42 2019] RSP: 002b:00007ffd11332b48 EFLAGS: 00000246
>>> ORIG_RAX: 000000000000013d
>>> [Fri Jul 26 08:08:42 2019] RAX: ffffffffffffffda RBX: 000055bf8ab34010
>>> RCX: 00007f5d220d7f59
>>> [Fri Jul 26 08:08:42 2019] RDX: 000055bf8ab34010 RSI: 0000000000000000
>>> RDI: 0000000000000001
>>> [Fri Jul 26 08:08:42 2019] RBP: 000055bf8ab97fb0 R08: 000055bf8abbe180
>>> R09: 00000000c000003e
>>> [Fri Jul 26 08:08:42 2019] R10: 000055bf8abbe1e0 R11: 0000000000000246
>>> R12: 00007ffd11332ba0
>>> [Fri Jul 26 08:08:42 2019] R13: 00007ffd11332b98 R14: 00007f5d21f087f8
>>> R15: 000000000000002c
>>> [Fri Jul 26 08:08:42 2019] Modules linked in: i2c_dev parport_pc
>>> sunrpc ppdev lp parport efivarfs ip_tables x_tables autofs4 ext4
>>> crc32c_generic mbcache crc16 jbd2 btrfs zstd_decompress zstd_compress
>>> algif_skcipher af_alg sd_mod dm_crypt dm_mod raid10 raid456
>>> async_raid6_recov async_memcpy async_pq async_xor async_tx xor
>>> raid6_pq libcrc32c raid1 uas raid0 usb_storage multipath linear
>>> scsi_mod md_mod hid_cherry hid_generic usbhid hid crct10dif_pclmul
>>> crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64
>>> i915 glue_helper crypto_simd nvme i2c_algo_bit cryptd psmouse xhci_pci
>>> drm_kms_helper e1000e i2c_i801 xhci_hcd intel_lpss_pci nvme_core
>>> intel_lpss drm usbcore thermal wmi video button
>>> [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370
>>> [Fri Jul 26 08:08:42 2019] ---[ end trace 867b35c7d6c6705a ]---
>>> [Fri Jul 26 08:08:42 2019] RIP: 0010:___bpf_prog_run+0x40/0x14f0
>>> [Fri Jul 26 08:08:42 2019] Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c 00
>>> 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c c3
>>> 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 40 85 48 83 f8 3b 7f 62 48 83
>>> f8 1e 0f 8f c8 00
>>> [Fri Jul 26 08:08:42 2019] RSP: 0018:ffff992ec028fcb8 EFLAGS: 00010246
>>> [Fri Jul 26 08:08:42 2019] RAX: ffff992ec028fd60 RBX: ffff992ec00e9038
>>> RCX: 0000000000000002
>>> [Fri Jul 26 08:08:42 2019] RDX: ffff992ec028fd40 RSI: 00000000000000ac
>>> RDI: ffff992ec028fce0
>>> [Fri Jul 26 08:08:42 2019] RBP: ffff992ec028fcd0 R08: 0000000000000000
>>> R09: ffff992ec028ff58
>>> [Fri Jul 26 08:08:42 2019] R10: 0000000000000000 R11: ffffffff849b8210
>>> R12: 000000007fff0000
>>> [Fri Jul 26 08:08:42 2019] R13: ffff992ec028feb8 R14: 0000000000000000
>>> R15: ffff992ec028fce0
>>> [Fri Jul 26 08:08:42 2019] FS:  00007f5d20f1d940(0000)
>>> GS:ffff8ba3d2500000(0000) knlGS:0000000000000000
>>> [Fri Jul 26 08:08:42 2019] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370 CR3: 0000000445b3e001
>>> CR4: 00000000003606e0
>>>
>>> More details in [1] and what I tried (for example CONFIG_SECCOMP=n)
>>>
>>> I have no clue about BPF or SECCOMP.
>>>
>>> Can you comment on this?
>>>
>>> If this touches BPF: Can you give me some hints and instructions in debugging?
>>>
>>> My kernel-config and dmesg-log are attached.
>>>
>>> Thanks.
>>>
>>> Regards,
>>> - Sedat -
>>>
>>> [1] https://github.com/ClangBuiltLinux/linux/issues/619
>>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5bb726c5-5f50-ba44-9d78-e57a92a58266%40fb.com.
