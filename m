Return-Path: <clang-built-linux+bncBD6NJS73WYMRBGMZTODAMGQEPJAVRQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF253A5BCF
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 05:27:23 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id p7-20020a170902e747b02900ef00d14127sf4056133plf.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 20:27:22 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623641241; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2dXtn9cvXP+Iz4Nf6ubl95gDaWR9tAbvdpKFFZvilbdty6mgBCuGUabTWnd5g8vcD
         RLZ8Ma54mphU5r/azlRRhvIO5GakWw7gAb0FOakPV5UiadZPTHsip4i2lyrz3+BXaZR4
         ZMqpJ8pfHBXcOyXOpUZ3PYvp1f4DkCK89McOak889eZd/UFMHGJHbgVUdtS2DSOJrzfN
         ANWfQDtKJhtR+mjcknBcqvh4M0iZ7Uh3N8Dgh/oTJy+rNEuScRGkaVKV9zh3NEqlspzc
         nGR1i3gELvWUo+BC/g/Jxf2qLQb3NuweMVqVfkPhp/C4yQ4hvShssRlJXjzIWEqjYrHK
         OtBw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=tHDEuPid4MXHOFww46wfD8edWEV3zk9T4+6vcCfeu08=;
        b=Xwo4TsnRdAWzk9oxHL8aI0bzYIX3iWZfnBCjDEV4TTMbzzttQ+vQu0pKkpksiOa+Ur
         ELS9FehAa2j15DDgo47gQf06NaKXHdGwSyXDdoBV5Kmn8mxwf2Rft9W6GYxutCCj2DWw
         6lg2jFpHzlIzv8OEaDIVHdSCsiYGPVmYqCq7IJOwXJK83iOijYugJArZb2vOrhjBgXoW
         yDuC9PUjerf/agN0lSX2ZhS0SxpaliXHjK6GIPd6WRtfk9N1WETrfMcP+2dcopZxA6A3
         j2pbAYNljvL87hA3VwqaJvDtPeOZWhNUwE4lMXSb6Hsrgd2dnojruSV7qps+juXGVs2H
         u7mg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vQsCcgpH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PTThjpUx;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of haakon.bugge@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=haakon.bugge@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tHDEuPid4MXHOFww46wfD8edWEV3zk9T4+6vcCfeu08=;
        b=CizF94Ky9hNuPzYYLEjWuPpu2yj/tNPXZ7i4buVhoXGASuBStypsqVj9s/z/PCH7Tg
         t7gFOyZTjIfFybIR/UDb/VhYIH+lc+6wJZ7n4LfHCizMG8RTf2Oh62Hh9cOKSSuiUhZ0
         Tl2DpGrV9mMRJKXsvb1jtdUrCGxLGvyAMlDLV+YjD118Ye+7BKmDNlYQTBhcLbxJ3MIK
         pvKcJgqu1QiveKDHPHNHfBfCRRkNsj02cUgZLYt9FBEqoGmitMsmwBRcA1ozxgfUmjZh
         auIteFiV+27KmTBYkw/+55vPcvEu762TP0VoQXRdabJ2okqur9NNuu9SXS4SSJsXRvVY
         xTGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tHDEuPid4MXHOFww46wfD8edWEV3zk9T4+6vcCfeu08=;
        b=J3fMPqdR28XjUJs69mKrC5PiZVMjfEvaXNm2ublyznoQe9oEN8jwbsBdgvpkyZo+Gq
         GZtovqQTy85ZsuSAFduLraP06dzz2wRpcoQJnwDLb9Jv7+YqhkWKZm69iViQXnqTEUPP
         gHIW2oNVMyfAu/SdpJbjtvSeyfoLxmdq9b/vZC1lfU5dCfAz0/qCovMOvbHOat7QtYcs
         fmKTernyYAJZ/Oz7GiAjOVhuJrPqvUODH7WuEs0hQzXGrPOccf6RJnyXSzZf2ygouagv
         OUglecBzmiUrep5XI7rgZY1gcim99vC3W5bZVBLb8zge0KjHUk7pHdjIgUm8naKc3uqm
         ugkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bb75xeBpDfW6FHJqW6EtJHjrGkFd6uquEVyJHgWvKra1/CTEI
	l3NBM3rLVBRpfXipoqZ2ZTI=
X-Google-Smtp-Source: ABdhPJzyK6cOH+kqnwmzDImbVhLgnnhEpABlTYWNlITvqAXTi6xu5pJ3hzeNOJSKfHh1PxqxGgT5sg==
X-Received: by 2002:aa7:998f:0:b029:2ec:9844:a549 with SMTP id k15-20020aa7998f0000b02902ec9844a549mr19844036pfh.65.1623641241534;
        Sun, 13 Jun 2021 20:27:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3848:: with SMTP id f69ls8030769pfa.0.gmail; Sun, 13 Jun
 2021 20:27:21 -0700 (PDT)
X-Received: by 2002:a63:e952:: with SMTP id q18mr14985557pgj.430.1623641241002;
        Sun, 13 Jun 2021 20:27:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623641240; cv=pass;
        d=google.com; s=arc-20160816;
        b=Du/1RmX+0DPCfc/w8n3xTrFBRGPOkAFMiNEC/dVGgSzxvJPpZYQIjKlm+My+3dAeV0
         DqQ2HjICEDPPH3sLTEycdqkHVmSq/9TJqO7Ks7MwryWqzVtBIO7hukc6Q4tr8slo4Hwk
         5vDgkqSM5xYav9b59LiqP8g5MIa8zk0PRaD/J34k59uB/PM1hWuiW4p6rxOaO3rnLtL7
         dyFUgiAT9792nr7Kt5afz5igDND9f4MrQaLVWOMf6mhJ9+jU5ujRjQgqo4haGQ6DN7ea
         rSG5M+FVU05ph3nrIi+Vi7QRn6I/wC9NCEUC14EubUyo86NO5k9iwhkw60REmtaUby9C
         mKLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=Hw9TRLrxvdpdujVDMMzJirV9OICy4AmTWEU6cvq4KUY=;
        b=kuk5dAO4rnIlrBx1sqKfoEiSzAnFBGV1Kr54V70lM1jM5RRkUHnCQ7moMASWkpuXIH
         bFKdcupznhHxbAYjwcCwMyk4i3QuisbRbav33ELKzvn3pxIhYfe3OCVz6IhmopeCtVdg
         f2aqAQ5VFSB24LOqJlaHUzPqvVkYfAuBqGHBLQyMM8Ky4oNM5iYtdb7S0Fmbo5VPO0EO
         VPt7mt/6Camd2/q23I1ipU4wOUeuaMZPIxVBlQZGYPZD8zyIEfVitcNmZDc/tnMCYGlW
         d8Z0NL6VeqJdb5wJXkh9FojgXNyDAXJuzlpmqMtPAmq1fAslrTK+FVhPiC66pn8xPKYF
         7xWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vQsCcgpH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PTThjpUx;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of haakon.bugge@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=haakon.bugge@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id hk2si1652948pjb.0.2021.06.13.20.27.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Jun 2021 20:27:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of haakon.bugge@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15E3R4eS003247;
	Mon, 14 Jun 2021 03:27:04 GMT
Received: from oracle.com (aserp3030.oracle.com [141.146.126.71])
	by mx0b-00069f02.pphosted.com with ESMTP id 395t6ug242-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Jun 2021 03:27:04 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
	by pps.podrdrct (8.16.0.36/8.16.0.36) with SMTP id 15E3R3lb012820;
	Mon, 14 Jun 2021 03:27:03 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	by aserp3030.oracle.com with ESMTP id 3959chtw4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Jun 2021 03:27:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LspWqBrfHpZWFMkVLHH5KwSjQ0F0/XbIkxRiZfxPNBrOr4sURdtYqP3A7BJMKAvSn2rhqPnqaebkpZw7MylJ/TWjJH44tBHYwozSvq3Rm3rGt9K1AWwwJ2hCo/CAJ78zuF8xbpFK3Fu8tVRQrdGeghohLbxKcyo7tgNmh3NojERyuYMMB6YtEZZunATL33J5E4KuWstswSQ3fPKpo+20sqh4AJZOPJfwANSyiw9Owo3ZX2VIuJbcI7roS40R84nylvyGGNRWBeMtRznBZo5TP9dhegkGN0YnQmH0x8ojzoSe0jMUcMoxYqvZ3MYc6YSTqRflyH3JVyPGrjo1IB0qCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hw9TRLrxvdpdujVDMMzJirV9OICy4AmTWEU6cvq4KUY=;
 b=cpa1/fzIlSYQTsmot3IxaaFqT8nKtwPae2+hFqLvqyNRZWcPwBC3dNFQXP0wKzFCR/HvxTWgoO1qbvFqA+UQHACx5GOQnNOOhaeZD9t/+mpjEqaCezenJv/zOqlNnnIXpPXlorks+SkeiA7XABnN8w5K2oEyOE0vJ+Xk/qbWcYt1RxuCtC7zNyZQcyGQruEfq0vxRfIL6NK84dVat72/iB4LC06PbxFjNYxSfrtGRdGmr9tqBA3uJSGXjjvwPxo9EdXQ5iwxI+Kb4vgM/JOsjBloSC8dM7+Sqg9+eTpBXoU5lfPwcREyrc80hhYGqpqT4N6wfDmaP7wWZcoDx/7eDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY4PR10MB1989.namprd10.prod.outlook.com (2603:10b6:903:11a::12)
 by CY4PR10MB1349.namprd10.prod.outlook.com (2603:10b6:903:2a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Mon, 14 Jun
 2021 03:27:00 +0000
Received: from CY4PR10MB1989.namprd10.prod.outlook.com
 ([fe80::2cda:5611:238a:17a3]) by CY4PR10MB1989.namprd10.prod.outlook.com
 ([fe80::2cda:5611:238a:17a3%8]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 03:27:00 +0000
From: Haakon Bugge <haakon.bugge@oracle.com>
To: Greg KH <gregkh@linuxfoundation.org>
CC: Jason Gunthorpe <jgg@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
        Doug
 Ledford <dledford@redhat.com>, Kees Cook <keescook@chromium.org>,
        Nathan
 Chancellor <nathan@kernel.org>,
        Adit Ranadive <aditr@vmware.com>, Ariel Elior
	<aelior@marvell.com>,
        Christian Benvenuti <benve@cisco.com>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
        Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
        Devesh Sharma
	<devesh.sharma@broadcom.com>,
        Gal Pressman <galpress@amazon.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        OFED mailing
 list <linux-rdma@vger.kernel.org>,
        Michal Kalderon <mkalderon@marvell.com>,
        Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
        Mustafa Ismail
	<mustafa.ismail@intel.com>,
        Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
        Nelson Escobar <neescoba@cisco.com>,
        Nick Desaulniers
	<ndesaulniers@google.com>,
        Potnuri Bharat Teja <bharat@chelsio.com>,
        Selvin
 Xavier <selvin.xavier@broadcom.com>,
        Shiraz Saleem <shiraz.saleem@intel.com>,
        VMware PV-Drivers <pv-drivers@vmware.com>,
        Yishai Hadas <yishaih@nvidia.com>, Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on the
 ib_port_attribute intead of kobj's
Thread-Topic: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Thread-Index: AQHXW3XC7qLq8SZSTkiH41zCfEamxasIV9WAgAAefoCAAAclgIAAAusAgAXurYCAAA5IAIAEZf6A
Date: Mon, 14 Jun 2021 03:27:00 +0000
Message-ID: <92A96585-DAE5-46C5-8D2A-2EED92F75FDF@oracle.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com> <20210607121411.GC1002214@nvidia.com>
 <YL4TkfVlTellmnc+@kroah.com> <20210607125012.GE1002214@nvidia.com>
 <8685A354-4D41-4805-BDC5-365216CEAF40@oracle.com>
 <YMMb9NZ0nHRTullc@kroah.com>
In-Reply-To: <YMMb9NZ0nHRTullc@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3654.100.0.2.22)
x-originating-ip: [51.175.204.144]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0437c7f4-2120-4639-755a-08d92ee445a5
x-ms-traffictypediagnostic: CY4PR10MB1349:
x-microsoft-antispam-prvs: <CY4PR10MB1349D98C8A85555D402018E0FD319@CY4PR10MB1349.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OT7HDaLrG8ZKbVsmBUrwQ7GXzNaQLkOeD9oIrkJlwLxg4CvlwwvA8x2BoGKO6KwfE3syAXO2ZSC1SCzVrHy0VqT4ekkZEVKUcc4kEFP2E7jycxfdxteis0ROHsCVa1VzGNA7kusY54bazMMg3gB829Y8ld14ra4f+FmoopXoMbQy9CtLbaNLWkIBphnjejgb/+7YHV/Bkpb0I7C6ZitirZcmejFFXhxgofeuxFXXbc0jvzCyRXv5ht2sycaTaWHGqSDej2kCYDsA/3DgChtdKQl+eccecr76HHEQDJJscqPKV41xhBQ/3dC/E+Mg9xCdN/HOD//IJHqlRWEoSjVXMhZEdAPm1ChaPZjc6PGV4YH7+eLA5vY2FlcY297DVmlW5vuQg8UTYjerX/s85iakLJRCO2Y9ylVxPggym/zMKufYqhIeUWNqGso97+W2HWw6u9qfIs34FOr6/d4bNpgdbzCEEKTuawQ3/pklXMnOZ2/YlsdEWS6YVenlJAGlAO3qnfPZzO2bCiTVUR9a9HBuT2sVHSvcHFqppOoD9bvm7BF97jTj5sPBu/kEY5aNbdHdsAfLFcslagqk/WW5IK42AcRs7IyT/gDEKuG+2A7Yjq//UvxfYF9P5EbYQnr3vSqvy7vcAM3dqDQfL7qAXnjGYtuc4AM3SSDLDtloAhTE2uA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR10MB1989.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(39860400002)(136003)(376002)(396003)(366004)(122000001)(8676002)(64756008)(53546011)(38100700002)(71200400001)(66446008)(66476007)(66556008)(8936002)(66946007)(6506007)(76116006)(44832011)(7416002)(91956017)(5660300002)(54906003)(66574015)(33656002)(4326008)(2906002)(316002)(26005)(6486002)(2616005)(6512007)(6916009)(86362001)(83380400001)(186003)(36756003)(478600001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHVMVjdKeDhXZDZDanY1dXhMSExVN2ZwZnZWbXI1eHp2RGlTNzYxSFYzS09V?=
 =?utf-8?B?NURyWXlTODNjMEx4U0FMNlZXMnl1RWxCZFlwRjE4SVZEK0wxZ3dvSXFFeElF?=
 =?utf-8?B?QnJaMkp6QVRnbGtMN3NZYy9jaVVnS2oxWnQ1Y1Q1N2lLQW56dXIvb21sSmpn?=
 =?utf-8?B?VFIvMmttZkxkeDl6c0pHSmtiUlFaUVdYZk9mMTFKUHhDdCs2NmpEOGFGcGNZ?=
 =?utf-8?B?a3R0aGk4aGIvR0hJcVR4WUVoY2FaUUdOTEtUdUxKeGVZclNMRHJnOENRdlBS?=
 =?utf-8?B?d04wb2lpN28vV0E2NWlrUlJVVmE0aWYyMDBob2JWemxBS1g1bEFSTG8yN2lG?=
 =?utf-8?B?Z1ZRUnVnLzcvRUZjOUFSakdBbnBKRE5oVWs2VVdEUmphOUY1dU0xdVlzSkNn?=
 =?utf-8?B?eDRGZHNLKzRCMm5sbW84K3dScGJDOHNEWnBmckJnbi9yRVJISnQ0WUhWbUc1?=
 =?utf-8?B?L0Nyb0NtdjgrSVRXajNwbG9QRkdKSlBBZ3IvWWREK2M1VE5lRVZ6Z25aR29E?=
 =?utf-8?B?WVg3SDhKSHFnYkJCdjVYZTFRUjAxT3ZqajNSU2huSzhnOGUyaDZZNGZhZklI?=
 =?utf-8?B?ek9xNGxjaGZRMHRnclgzY1JwQUVYdWNSVVV6R0tIZDMxUXQxK2tvTmgrOW4z?=
 =?utf-8?B?ZXdaVWV1UDlGclFqQ3krQzZkWEh6YkdlSkloMFZSRFVacENneVZJY0UrazRu?=
 =?utf-8?B?K0dERHJhcVB2MXlmZDJoQU1mWWN2ODNJcGUyMjBBanRhWWNiTG83cmI3SUxi?=
 =?utf-8?B?MkVLaWpwWm1wOUticTBiaXB6YVp4Qm9jYzNhVHhXVmRlMlpkY1dTTUxYMm84?=
 =?utf-8?B?QmM2TVNCWkdCaVlyQUhwS0Z6MVQ2eGVqWE1oV3p6SHZsUEsrUFBoMTNWYS96?=
 =?utf-8?B?b09xZGkzNUl6VjJmMmsrR09LcDJFRjVKOU11K2xTenpJSmRqaTNhMzVjdzJU?=
 =?utf-8?B?WnFIY2paY2pYUHc3b3RNcDJQU1dEMUNZbTgvMjdwZ0lnL1FJekQ2L0JoOEhy?=
 =?utf-8?B?WFJTRG56NFIrN2YrNmN2VGk5ck9kZ2RlKzZBeFJXUDFRa3ZZMUNIL2xFZEh2?=
 =?utf-8?B?US9OZ2NUL2lKcDR6UFRPa3puY1dsZnBqTWtmZXY3T3BVWTF4UVArQmVNQldh?=
 =?utf-8?B?S0tDZ0hWVFR4R1B3dzZOWmRKWVRIUWltQ21QZjZhbGZldW1zOHNVQ3FFeTdS?=
 =?utf-8?B?VVI5dld5bzZZSkZQTHRwZUJKbTc1RlprelRibVk1OFdWOGJ5Q09KU01sS3h4?=
 =?utf-8?B?WlFiNFFISXhwVW02VThrVkVPSmxpR1RSMWxRL3ZTMHZ1bzRCNStqVHkzZHhi?=
 =?utf-8?B?eHFueFdrODkraTEzeEx3MHRRYllMVTVTcGZoeEJxZUFoeDcrQmJsLzhYZUJW?=
 =?utf-8?B?RDh4T0lGUnpQYnNnV283bUx0S3Z5RUF4K1FQazhLcGh5S096THZKUGVPVmdV?=
 =?utf-8?B?U0RoT21USllZVzZlcXFhTXZZcUtCY1lOb2NUa1ozc1hOcDltdWk0dU96L1dO?=
 =?utf-8?B?NU44eXJjc1ltYW1hTWtORVdkak94bXJReWc0MHZzQmRYMVVyRzVIK2oxQTAx?=
 =?utf-8?B?UlVKc2xPUGJyNzJpTFNDYmFaSHlSc2Fsc3E1YmtKckZWd0tGMnNLOVp6RE5y?=
 =?utf-8?B?dnQvTG5WbStYeGgrRWRlL0JwVktYQ1l2OUE1Z1ZhKzB6NGhnb2tKbGsrNVRv?=
 =?utf-8?B?RmRva0tYd0kxMUlKVW50VVUxZ05rMmt0UmRqbmt1VlMwaDFMMGxQUjNRYmZT?=
 =?utf-8?Q?8KYEYqcznDdBEGmfqXmmdSkF7EyhQafyBRx92WN?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <B93D5F9C79B9F54981114C347DBF968A@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR10MB1989.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0437c7f4-2120-4639-755a-08d92ee445a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 03:27:00.3589
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YTdbWU6vaJAOf7z6X4b2gQbWlgng384+MtgyAv5UE+vAyNXoCz7i4l5CB/8IGzoI8girW5gFw+fhS4G70xBjGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR10MB1349
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10014 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0 mlxscore=0
 adultscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106140023
X-Proofpoint-ORIG-GUID: N1KDN3HUx4q3aP90Gqy1RQIuZ70wWfL8
X-Proofpoint-GUID: N1KDN3HUx4q3aP90Gqy1RQIuZ70wWfL8
X-Original-Sender: haakon.bugge@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=vQsCcgpH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=PTThjpUx;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of haakon.bugge@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=haakon.bugge@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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



> On 11 Jun 2021, at 10:16, Greg KH <gregkh@linuxfoundation.org> wrote:
>=20
> On Fri, Jun 11, 2021 at 07:25:46AM +0000, Haakon Bugge wrote:
>>=20
>>=20
>>> On 7 Jun 2021, at 14:50, Jason Gunthorpe <jgg@nvidia.com> wrote:
>>>=20
>>> On Mon, Jun 07, 2021 at 02:39:45PM +0200, Greg KH wrote:
>>>> On Mon, Jun 07, 2021 at 09:14:11AM -0300, Jason Gunthorpe wrote:
>>>>> On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
>>>>>> On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
>>>>>>> From: Jason Gunthorpe <jgg@nvidia.com>
>>>>>>>=20
>>>>>>> This code is trying to attach a list of counters grouped into 4 gro=
ups to
>>>>>>> the ib_port sysfs. Instead of creating a bunch of kobjects simply e=
xpress
>>>>>>> everything naturally as an ib_port_attribute and add a single
>>>>>>> attribute_groups list.
>>>>>>>=20
>>>>>>> Remove all the naked kobject manipulations.
>>>>>>=20
>>>>>> Much nicer.
>>>>>>=20
>>>>>> But why do you need your counters to be atomic in the first place?  =
What
>>>>>> are they counting that requires this? =20
>>>>>=20
>>>>> The write side of the counter is being updated from concurrent kernel
>>>>> threads without locking, so this is an atomic because the write side
>>>>> needs atomic_add().
>>>>=20
>>>> So the atomic write forces a lock :(
>>>=20
>>> Of course, but a single atomic is cheaper than the double atomic in a
>>> full spinlock.
>>>=20
>>>>> Making them a naked u64 will cause significant corruption on the writ=
e
>>>>> side, and packet counters that are not accurate after quiescence are
>>>>> not very useful things.
>>>>=20
>>>> How "accurate" do these have to be?
>>>=20
>>> They have to be accurate. They are networking packet counters. What is
>>> the point of burning CPU cycles keeping track of inaccurate data?
>>=20
>> Consider a CPU with a 32-bit wide datapath to memory, which reads and wr=
ites the most significant 4-byte word first:
>=20
> What CPU is that?

Hypothetical32 :-)

>>    Memory                   CPU1                   CPU2
>> MSW         LSW        MSW         LSW        MSW         LSW
>> 0x0  0xffffffff
>> 0x0  0xffffffff        0x0
>> 0x0  0xffffffff        0x0  0xffffffff
>> 0x0  0xffffffff        0x1         0x0                         cpu1 has =
incremented its register
>> 0x1  0xffffffff        0x1         0x0                         cpu1 has =
written msw
>> 0x1  0xffffffff        0x1         0x0        0x1              cpu2 has =
read msw
>> 0x1  0xffffffff        0x1         0x0        0x1  0xffffffff
>> 0x1         0x0        0x1         0x0        0x2         0x0
>> 0x2         0x0        0x1         0x0        0x2         0x0
>> 0x2         0x0        0x1         0x0        0x2         0x0
>>=20
>>=20
>> I would say that 0x200000000 vs. 0x100000001 is more than inaccurate!
>=20
> True, then maybe these should just be 32bit counters :)

How long can we then run without wrapping? Our UEK is security updated by m=
eans of ksplice, and since the introduction of Spectre/Meltdown CPU fixes i=
n 2018, we have been able to update the kernels running wrt. security fixes=
.

I see no harm by using an atomic 64-bit add. Yes, it serializes the pipelin=
e and locks the cache-line in the first-level cache for as long as it takes=
 to for a RMW on it. Compared to surround an ordinary add with lock/unlock,=
 an atomic increment is strongly preferred in my opinion.

Ordinary add without locking leads to the issue above on systems with 32-bi=
t wide memory data paths.

Using 32-bit counters raises the issue of wrapping in systems running for y=
ears and having a high frequency of IB connection forming and resurrections=
.


Thxs, H=C3=A5kon


> thanks,
>=20
> greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/92A96585-DAE5-46C5-8D2A-2EED92F75FDF%40oracle.com.
