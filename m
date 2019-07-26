Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBKOA5TUQKGQEPLWUFTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E7C76E38
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 17:45:47 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id a5sf28654781pla.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 08:45:47 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564155946; cv=pass;
        d=google.com; s=arc-20160816;
        b=cc4WxCtDclnJqdQbD138n9wwqNshuFlBwAvYW99sXMzIvSdwSxqmA2AW5sc7Cc/q19
         BlDomXgztZrZiQnGdAQzeSrOzYsRjMqgd0wM+L8MtjR5n0wtzW/tkeB3tnAj3dCj2lcu
         vV+L11qMK5buvp2Jfi+56HIWXmKIg0aAiyEC3+eKupsIzRRfWNNjlzSqqokvTf7UeCTd
         fVQzsJJV+cFc7RH2HtO4iecOp2745Sl0A4pGQDqKaSD461l8Zo6/cpb/3Tb/Mp7ufSz+
         GCQSlhdZP68fVbw/UGuXwat+XB7pFML6tqRFWe4b8GDtBhooD5mVupxUDxyvOdfr3oGQ
         mWuQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=GyGdUe8wgtgmbamFdL2IHVuRLTmQXUsCQrNTp5eLIBA=;
        b=oTR6r/pGz+8+A5x6sHHhVYgsXMfvXSyfANbeFyyAsnu8AMiKcUWiyoLipKfhzfsYgm
         NbfHlKKt9bj6vaxFL/ndzdZwxiBMCFMC/LiLmNjjzp2s3Ym1L03oYmAX5n1fzsfnxk4r
         LuWn086TUFExEP1XOvGrYu9WlUvDu9UWj1aaaKvWi2P0dssS95/M5z51VSiKk+LqOrWe
         7ysW2Z8WK1gJE1mL812jbdoNTuvwBTxmf2zfnK2ksgxSAhBKSOMzcfHfM9YlLaLBxOsV
         PuJEFq408/xZCXcuQ1ou1FV/l7zu80BYQEggP9BJcH1LkcLH6VG4oc6Fs9mqU4N/e7XO
         WbsQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="a/DlCRFW";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=FEsbmc1J;
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
        bh=GyGdUe8wgtgmbamFdL2IHVuRLTmQXUsCQrNTp5eLIBA=;
        b=BFFsB9Qr6jAQGmh8ph+l0ax1vu2JWAoXim0cg7MifsPPjE799Go4qKhLi9cAbqwaG7
         fgkVsnGP6y5HrPVa1Q1QitLSJuC6IZLhZpW6ZX/rhbnzxjoPZOd242xeds6n90zjB3g7
         Mc7N9lcBHhuPLacnb8qt/UoWFG3dJobLZmgv6sGtfjLlabDBx6R4hNW3mFRb2G8q+w6m
         bA0pR7WhkgaveyP92gsZQNYxApZoaXcaYi/8EFsxUFqSwsO+UcvEjlg9plinLwqoxfyL
         oKTR2vp1NIfyy/N5zOLweCGH/TKT8F8S+73dRQjAyfe2mo8Y0Hb+HZHHrvrkXFDfN2In
         t+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GyGdUe8wgtgmbamFdL2IHVuRLTmQXUsCQrNTp5eLIBA=;
        b=PVWSYRfphexwLOiPhzrfgbTYt0Kg/wdP2mQaX94+4S3L2VHBAqgwXtstlYl+0q6kFw
         k8DcnCOSQWsz1e737AE1J5XaVl27borZKA4bo/JQ6A7z31rGNjPmZ6HCnqP5Ajl+k9nc
         lnjp1sAKvTnIaPw3UzP09qQIqTUN6kEI43NKATnB8O/oy1YJIOzGC/8Zs3Tnl65EMVXM
         +wbFm5DmMKWNhXWZXubj9yQMuDfVTIF4xgPhSqfORIL6nd/QgRNeFCIcezDWxXpMT4G1
         9PPWuFNQOFnx0wEW3KTF6d7g1WS1eg1aAlLjnOm5dtqbnQJFvQ6Ul8auh4M/Y04w8uOn
         nvAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFRa+JwT64nAYUK6510pNfuoPVQE0ROibgU79VTNwDnkCIVaZH
	abswVGxbMtjxBTFhR3n3rFk=
X-Google-Smtp-Source: APXvYqzsZs3AAQIvfrNfTAXPTBFiJggX2i1FS49r63G/rs3sKt3QAhFdAZ2MPEhh0F42TpXvNuNSTQ==
X-Received: by 2002:a63:6f8f:: with SMTP id k137mr38737661pgc.90.1564155945957;
        Fri, 26 Jul 2019 08:45:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ea10:: with SMTP id t16ls5922512pfh.5.gmail; Fri, 26 Jul
 2019 08:45:45 -0700 (PDT)
X-Received: by 2002:a63:c442:: with SMTP id m2mr93404573pgg.286.1564155945463;
        Fri, 26 Jul 2019 08:45:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564155945; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q0+NOzLwR0XGzXzrJMtbXptCk8crpmNfQ5RHizPaGRWGnCLuHsF5SFnvwQTbKiG3Ch
         VwPuk23/I56WZmO6Sw6CKtGTgft6HHOtQf4yNeAsmhChQ4RUIyuaZTfoPSiH9fvyndiO
         p3DGCFz2DPYIG09ct4F5CCvCtGF3JpYPbrSr4yAdukkNUGyNprTl/ZdvHvO2jj2RtxJk
         eG9trm3jhZaitnFzDwuVcvJvzrcI4pVrFljtrVwO+nx6K+aHwtEiZHqnAmWXCfzYkH53
         wOynMBZvNdaTSn6pxe9sRywyv8VNSOIypO8onap7klNwBVna8bztLipOUoplnFR/lk3I
         R73w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=RfpiC4CFiFMdN78Z977e8FMhFB3Yrpl6CvPJaYdXncc=;
        b=IwNnixR7bSajZGSBFUSG+r20TekaG0MDUwJm22d85S6fs+aNG6KD5EGK0VQxDZDZMz
         GxxpW9Q+QTM9muoDlQpzKrb38Z8pZQZOvDV49l7dqqk3M02uOKl/mIDH8rUda9ZY8Zff
         5j3qD7JOzzhxNiCrdZ9RPOq4kkg2ZZzaNuI1CsBPCuxpr3p/pkNWLH2zGXz5a4yBxm6I
         2m2Q6532xNuRlmgwbEwJqFPi0gOYNLMQWNENC3w84x9ftaQNrA5TyohqHmw55EEJj+kK
         wLvRLXlXuPNKxT5aayhxDyAjPEfCBnSDAYVIN5vB1HvQcvK4qwIgibCvfSPORGwOqEGy
         182w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="a/DlCRFW";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=FEsbmc1J;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=2110cc791f=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id d67si1801425pgc.1.2019.07.26.08.45.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 08:45:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=2110cc791f=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x6QFSO5S029258;
	Fri, 26 Jul 2019 08:45:42 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2u006agxd0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 26 Jul 2019 08:45:42 -0700
Received: from prn-hub02.TheFacebook.com (2620:10d:c081:35::126) by
 prn-hub04.TheFacebook.com (2620:10d:c081:35::128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 26 Jul 2019 08:45:41 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.26) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 26 Jul 2019 08:45:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e+k455gaIdyR/sPjky6dC3x6XE22nqxYwFF4ZfHRfSVyuKhXqhfZDrnpo/H/tM+SJDVamAwFdXW65n0wbimxyBG/k4WRGyeH5VT28rFRhXrh0UDoJkwYt8QUqVACwSrz6mXlkNtdzkCwuawGIqHi/0EyoE95L1w+7OTp8VSoYxjHLR/AhGy9AJI7Yt6Si3UPsUMdrgXL8MYEZnGQxrNJe22v/ZZlNIQ2TyjFlmOrGQZHfZ2sR7yDvJN73ZdDKGmCFazbC6l694TcszhU22ocABouvpafZARlwkhNLzzqwQ8q5sVn+ypIrCT47/gwxXN50TMOg/wCfgyLLXAWyX1oOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RfpiC4CFiFMdN78Z977e8FMhFB3Yrpl6CvPJaYdXncc=;
 b=YQCVFOLEU1dZA/0KvA8UxPsqWqfGOHdsATs94M8BkIrzZK0xDxmuft6GSaLGh0Wio7Vw4F64YbeQIV7yWwIH8igHdHI7+mmF/pZHDdKsydL4aXrGCJ9/MvSrN/U0eyPM6SInj6b5w955ZqnfLLTpp23xxPtro5hbTcVEEIcdR8AEVgGSIqGni87jMIp38vz7b2Z2BdEiseLpiUe3F41QK9oA4r0b583H5QuQ2WwACmVg0VjZ3A8WN9ZHl/0rIixzCNZQmK6/Ki1q4yMs4dLVCzURSL3FXVonrWaqVYqbsBV+4FwZiL2fv+Ks37M2Jv7B81mvFXMiB1R5Z9kdl93vKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.59.17) by
 BYAPR15MB2278.namprd15.prod.outlook.com (52.135.197.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Fri, 26 Jul 2019 15:45:39 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac%5]) with mapi id 15.20.2115.005; Fri, 26 Jul 2019
 15:45:39 +0000
From: Yonghong Song <yhs@fb.com>
To: "sedat.dilek@gmail.com" <sedat.dilek@gmail.com>,
        Alexei Starovoitov
	<ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>, Martin Lau
	<kafai@fb.com>,
        Song Liu <songliubraving@fb.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org"
	<bpf@vger.kernel.org>,
        Clang-Built-Linux ML
	<clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>,
        "Nick Desaulniers" <ndesaulniers@google.com>,
        Nathan Chancellor
	<natechancellor@gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Topic: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Index: AQHVQ4xS9PP3XA7/nkqulb+RBeHJq6bdCzwA
Date: Fri, 26 Jul 2019 15:45:39 +0000
Message-ID: <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
In-Reply-To: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR19CA0017.namprd19.prod.outlook.com
 (2603:10b6:300:d4::27) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:10e::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::81eb]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b34563ca-e2a5-45cb-c935-08d711e04f06
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB2278;
x-ms-traffictypediagnostic: BYAPR15MB2278:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR15MB2278B1A952F7ECEE8DE2E5FDD3C00@BYAPR15MB2278.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(376002)(136003)(396003)(366004)(39860400002)(189003)(199004)(31014005)(45914002)(5024004)(256004)(14444005)(229853002)(6436002)(6306002)(110136005)(6512007)(64756008)(66556008)(66446008)(66476007)(6486002)(54906003)(66946007)(45080400002)(52116002)(2616005)(53936002)(71190400001)(6116002)(31686004)(25786009)(186003)(305945005)(478600001)(7736002)(966005)(4326008)(99286004)(53546011)(6506007)(386003)(486006)(2906002)(2501003)(6246003)(76176011)(36756003)(102836004)(86362001)(31696002)(8676002)(81166006)(5660300002)(81156014)(8936002)(68736007)(11346002)(46003)(316002)(476003)(6636002)(14454004)(446003)(71200400001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2278;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qGPlquMP3NjyniRB120TlXKBYAvqMjOgtAzVmeHu+3FOX6MT8GmRGv/eZ/urXBt+jPTgzJgj9Di0ini+lVURAgMGhS/hjxfpjAmPX5bTP5AeZ9CF2wZlLpa8hbSIddb/a9OXVDOD+Yc/ek7j197yBx1yHXAYZuV24l5/5hEPjw8UuIb2O1o7a99vE2dExMMFEkbJ/rIuHHMDG8oq7axPfYo8kb4nX4ePvYSRS8nmmg0t2vgnca7N5oi73K5kIummdZ4DPzp/IIb/331l4iHHFr1OjSKfGIBGVqCGGeZbyMnsQ51uqUheARkpZ7Lr9BPgcyMVYQ7HC46SftCvsWVxOCVXp/Jz0rRou2LXmkFszP2ju31hCrVmoynapZBwdYeJRXuLLWq7w+VqZTEolMeN4Z25kKA9sPexhJNtnPPiKJA=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <90E615333D14124482A9506461F14F3B@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b34563ca-e2a5-45cb-c935-08d711e04f06
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 15:45:39.5394
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhs@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2278
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-07-26_11:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907260191
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b="a/DlCRFW";       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=FEsbmc1J;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
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



On 7/26/19 1:26 AM, Sedat Dilek wrote:
> Hi,
> 
> I have opened a new issue in the ClangBuiltLinux issue tracker.

Glad to know clang 9 has asm goto support and now It can compile
kernel again.

> 
> I am seeing a problem in the area bpf/seccomp causing
> systemd/journald/udevd services to fail.
> 
> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> to connect stdout to the journal socket, ignoring: Connection refused
> 
> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> BFD linker ld.bfd on Debian/buster AMD64.
> In both cases I use clang-9 (prerelease).

Looks like it is a lld bug.

I see the stack trace has __bpf_prog_run32() which is used by
kernel bpf interpreter. Could you try to enable bpf jit
   sysctl net.core.bpf_jit_enable = 1
If this passed, it will prove it is interpreter related.

> 
> Base for testing: next-20190723.
> 
> The call-trace looks like this:
> 
> [Fri Jul 26 08:08:42 2019] BUG: unable to handle page fault for
> address: ffffffff85403370
> [Fri Jul 26 08:08:42 2019] #PF: supervisor read access in kernel mode
> [Fri Jul 26 08:08:42 2019] #PF: error_code(0x0000) - not-present page
> [Fri Jul 26 08:08:42 2019] PGD 7620e067 P4D 7620e067 PUD 7620f063 PMD
> 44fe85063 PTE 800fffff8a3fc062
> [Fri Jul 26 08:08:42 2019] Oops: 0000 [#1] SMP PTI
> [Fri Jul 26 08:08:42 2019] CPU: 2 PID: 417 Comm: (journald) Not
> tainted 5.3.0-rc1-5-amd64-cbl-asmgoto #5~buster+dileks1
> [Fri Jul 26 08:08:42 2019] Hardware name: LENOVO
> 20HDCTO1WW/20HDCTO1WW, BIOS N1QET83W (1.58 ) 04/18/2019
> [Fri Jul 26 08:08:42 2019] RIP: 0010:___bpf_prog_run+0x40/0x14f0
> [Fri Jul 26 08:08:42 2019] Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c 00
> 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c c3
> 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 40 85 48 83 f8 3b 7f 62 48 83
> f8 1e 0f 8f c8 00
> [Fri Jul 26 08:08:42 2019] RSP: 0018:ffff992ec028fcb8 EFLAGS: 00010246
> [Fri Jul 26 08:08:42 2019] RAX: ffff992ec028fd60 RBX: ffff992ec00e9038
> RCX: 0000000000000002
> [Fri Jul 26 08:08:42 2019] RDX: ffff992ec028fd40 RSI: 00000000000000ac
> RDI: ffff992ec028fce0
> [Fri Jul 26 08:08:42 2019] RBP: ffff992ec028fcd0 R08: 0000000000000000
> R09: ffff992ec028ff58
> [Fri Jul 26 08:08:42 2019] R10: 0000000000000000 R11: ffffffff849b8210
> R12: 000000007fff0000
> [Fri Jul 26 08:08:42 2019] R13: ffff992ec028feb8 R14: 0000000000000000
> R15: ffff992ec028fce0
> [Fri Jul 26 08:08:42 2019] FS:  00007f5d20f1d940(0000)
> GS:ffff8ba3d2500000(0000) knlGS:0000000000000000
> [Fri Jul 26 08:08:42 2019] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370 CR3: 0000000445b3e001
> CR4: 00000000003606e0
> [Fri Jul 26 08:08:42 2019] Call Trace:
> [Fri Jul 26 08:08:42 2019]  __bpf_prog_run32+0x44/0x70
> [Fri Jul 26 08:08:42 2019]  ? flush_tlb_func_common+0xd8/0x230
> [Fri Jul 26 08:08:42 2019]  ? mem_cgroup_commit_charge+0x8c/0x120
> [Fri Jul 26 08:08:42 2019]  ? wp_page_copy+0x464/0x7a0
> [Fri Jul 26 08:08:42 2019]  seccomp_run_filters+0x54/0x110
> [Fri Jul 26 08:08:42 2019]  __seccomp_filter+0xf7/0x6e0
> [Fri Jul 26 08:08:42 2019]  ? do_wp_page+0x32b/0x5d0
> [Fri Jul 26 08:08:42 2019]  ? handle_mm_fault+0x90d/0xbf0
> [Fri Jul 26 08:08:42 2019]  syscall_trace_enter+0x182/0x290
> [Fri Jul 26 08:08:42 2019]  do_syscall_64+0x30/0x90
> [Fri Jul 26 08:08:42 2019]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [Fri Jul 26 08:08:42 2019] RIP: 0033:0x7f5d220d7f59
> [Fri Jul 26 08:08:42 2019] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00
> 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8
> 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 07 6f 0c 00
> f7 d8 64 89 01 48
> [Fri Jul 26 08:08:42 2019] RSP: 002b:00007ffd11332b48 EFLAGS: 00000246
> ORIG_RAX: 000000000000013d
> [Fri Jul 26 08:08:42 2019] RAX: ffffffffffffffda RBX: 000055bf8ab34010
> RCX: 00007f5d220d7f59
> [Fri Jul 26 08:08:42 2019] RDX: 000055bf8ab34010 RSI: 0000000000000000
> RDI: 0000000000000001
> [Fri Jul 26 08:08:42 2019] RBP: 000055bf8ab97fb0 R08: 000055bf8abbe180
> R09: 00000000c000003e
> [Fri Jul 26 08:08:42 2019] R10: 000055bf8abbe1e0 R11: 0000000000000246
> R12: 00007ffd11332ba0
> [Fri Jul 26 08:08:42 2019] R13: 00007ffd11332b98 R14: 00007f5d21f087f8
> R15: 000000000000002c
> [Fri Jul 26 08:08:42 2019] Modules linked in: i2c_dev parport_pc
> sunrpc ppdev lp parport efivarfs ip_tables x_tables autofs4 ext4
> crc32c_generic mbcache crc16 jbd2 btrfs zstd_decompress zstd_compress
> algif_skcipher af_alg sd_mod dm_crypt dm_mod raid10 raid456
> async_raid6_recov async_memcpy async_pq async_xor async_tx xor
> raid6_pq libcrc32c raid1 uas raid0 usb_storage multipath linear
> scsi_mod md_mod hid_cherry hid_generic usbhid hid crct10dif_pclmul
> crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64
> i915 glue_helper crypto_simd nvme i2c_algo_bit cryptd psmouse xhci_pci
> drm_kms_helper e1000e i2c_i801 xhci_hcd intel_lpss_pci nvme_core
> intel_lpss drm usbcore thermal wmi video button
> [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370
> [Fri Jul 26 08:08:42 2019] ---[ end trace 867b35c7d6c6705a ]---
> [Fri Jul 26 08:08:42 2019] RIP: 0010:___bpf_prog_run+0x40/0x14f0
> [Fri Jul 26 08:08:42 2019] Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c 00
> 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c c3
> 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 40 85 48 83 f8 3b 7f 62 48 83
> f8 1e 0f 8f c8 00
> [Fri Jul 26 08:08:42 2019] RSP: 0018:ffff992ec028fcb8 EFLAGS: 00010246
> [Fri Jul 26 08:08:42 2019] RAX: ffff992ec028fd60 RBX: ffff992ec00e9038
> RCX: 0000000000000002
> [Fri Jul 26 08:08:42 2019] RDX: ffff992ec028fd40 RSI: 00000000000000ac
> RDI: ffff992ec028fce0
> [Fri Jul 26 08:08:42 2019] RBP: ffff992ec028fcd0 R08: 0000000000000000
> R09: ffff992ec028ff58
> [Fri Jul 26 08:08:42 2019] R10: 0000000000000000 R11: ffffffff849b8210
> R12: 000000007fff0000
> [Fri Jul 26 08:08:42 2019] R13: ffff992ec028feb8 R14: 0000000000000000
> R15: ffff992ec028fce0
> [Fri Jul 26 08:08:42 2019] FS:  00007f5d20f1d940(0000)
> GS:ffff8ba3d2500000(0000) knlGS:0000000000000000
> [Fri Jul 26 08:08:42 2019] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370 CR3: 0000000445b3e001
> CR4: 00000000003606e0
> 
> More details in [1] and what I tried (for example CONFIG_SECCOMP=n)
> 
> I have no clue about BPF or SECCOMP.
> 
> Can you comment on this?
> 
> If this touches BPF: Can you give me some hints and instructions in debugging?
> 
> My kernel-config and dmesg-log are attached.
> 
> Thanks.
> 
> Regards,
> - Sedat -
> 
> [1] https://github.com/ClangBuiltLinux/linux/issues/619
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c2524c96-d71c-d7db-22ec-12da905dc180%40fb.com.
