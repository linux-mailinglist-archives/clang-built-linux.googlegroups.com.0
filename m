Return-Path: <clang-built-linux+bncBC6PR5N36AORBH55USDAMGQEAGNLZAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA3C3A8B4F
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 23:41:52 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id o8-20020a92c0480000b02901ebb5960fb8sf227745ilf.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 14:41:52 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623793311; cv=pass;
        d=google.com; s=arc-20160816;
        b=v5fTk3LOSO/Vr/CxoVjMSDnDHmAvWD307kKn5qcrR1Mowoi96tQbe0ftJLkTHAfYIR
         BjA8jHStE/jMaC9XofZYcL/1Zq/IPWy8lRuXt9961QkvmXf4GH/8vl+P6XICgauFXix4
         nzVHwzrAx/20dqoxGxvQOcLcTp8aVyuGujh0UigZ/MZDNlS50ne/UKH9pQ8vWrv8zAZP
         7oEpZkOvvh1tCuRRsrNy0nYtqnbAeqzEG3Qa0EdYDvMxEA7c5zgbv5Va6y5DHjwEOYym
         vACa4JdcUe1gLE+XdS91MSeoq/6hPd0a3NfkOAPm6HjExT8NRTEok2oAQY1BF88ZevDJ
         /hXA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :sender:dkim-signature;
        bh=BY6EtIbxktRZp68oNKIZwuU/BImG8WAn9+l2KRt+cX0=;
        b=j9YACNq0pEgjOCwwVh1xtbGi5gwQbewqH28evdZyNe34FU/7JfbQ30DZo8MhL8vUg3
         CpewSqJqUII6mvqqYqBq0vdxkWommTG+Mm38Jgb2JeQTnO9eIu6sv+Ny1KwdAA532Fws
         GVAGXd2njpdZlkuPcw+ZlgwAEOgneyCwrh8ifVgKmCyjQcSEFKvQkgCZJig4UHyCc8nh
         bODBqHRH+ejcRJcWRddJFulaoaW3fEBS7OT+GWm6/FZLZVZ5azrRPpH6RVuJDKFFdGUi
         1XYP4OuIGcRcUYiM4/ErLZYFVf3SmAYG30jv4EO/wcZwVgbLB7Q97S49gKMFAmHSzPE6
         cpkQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Ocgw9W8N;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=vyPPigop;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=793731fd0=chaitanya.kulkarni@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=793731fd0=Chaitanya.Kulkarni@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:wdcipoutbound:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BY6EtIbxktRZp68oNKIZwuU/BImG8WAn9+l2KRt+cX0=;
        b=GCCsew8qG7F2mfjuTtzMMyXS8wtI9338oyoBOvsNAchosaPaidgR7u+aoRvnmiUhpj
         3+gvId9klo0FhvpBGSGKSOSwR3X29DsRS2Tdi4cLoRFPTZDUBRnkvYsVwG1j17p6tgmB
         b+3zuxy3jgJQItNZphvkvI+B55kTLw5Ry2ms2FTK63l2aqLvMQS2uzD3OJ4uJ2jOWDuG
         x56HMzgA26YzoSKGcc4sSqQpXVdBEP05fXP7aD5LYKeBW4Uv3TA4kGrm1KCr6rHDGVWb
         40cFDJyQZdXsB041H4g+AapULlQGHO1Nirsm658tQjymL8DqFD8PkXyCztSOC2huCcMl
         U0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:wdcipoutbound:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BY6EtIbxktRZp68oNKIZwuU/BImG8WAn9+l2KRt+cX0=;
        b=fp+3Lgbl5bmzIi+P/k1cX4IwjzV/CP8Eka5sdcJUJcOgNbv0zvQs6lLxtrMSkA0x0j
         8HNsKNHpv4LQa/8WWmgRCFrkfCS7MKRov8J4m44a67IoG8xcrNa91A+X3rr/tek03NAS
         /y+hn+o2rtBymIl2o4I5U5kwKoCJe47/ny+TIv0E/k2UvGx01IK/hOTkmT4yS9MPlgmT
         zqOcmz4gZUmyhFsx3X4Suh1v7/5w+Kx0rmeEw1NxlVHZn1GKxhixuCBreAOYpT+FwQ7r
         TR4u4Ml7qdhE8LXoOk14cQZ/+2E9BQZPy71shj+/H7lIZLqDUXpIlZ1Maq7PsEg5qwpb
         oXeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530olhxRlFUpoAdzeg14MpgGqSOmZF5slwQANJyjcWi+Bf+QI5NZ
	1C/HoAycOtO/ALiGBsDpY9g=
X-Google-Smtp-Source: ABdhPJz7P98rlR/GSnuIVZ3YEjwCddEtzNnoseFuETMOXRPlsr8xVRSo9CmB3PMlT8MCgcPsq5t/eQ==
X-Received: by 2002:a02:c906:: with SMTP id t6mr1083181jao.117.1623793311626;
        Tue, 15 Jun 2021 14:41:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d902:: with SMTP id s2ls7115iln.1.gmail; Tue, 15 Jun
 2021 14:41:51 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a84:: with SMTP id k4mr612733ilv.206.1623793311286;
        Tue, 15 Jun 2021 14:41:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623793311; cv=pass;
        d=google.com; s=arc-20160816;
        b=G0FfHIXdNt43TI/gImzTmOyCJqsQFtvsKa3z5sEK7vYZuDmZWTl1eGSI4Z/FwO7cT7
         TuK+zKujnRMDjvIDRpww9n4wggB6Tk0G8xCEbtIgeii7wzdZj/1bQJCcAn87uqrv03H5
         SjPG522Ba+RySl8VWJbSo9Bbx0y4ZEzwUcWMKXOq+Hyg9+zpSMmJ9iD1f/nvmeiDVGyo
         wHbKmH5vObr90lgtQz05QAy+IA6UuMOc3Xr+wbMF9Lx0tGBhFf8ZkIwWKbA6zsT2JryU
         kkydlNh8JG9dOLN/BcbRFrsiUvH79p7yvvkI7VurRqTggAMeE9bDVZARsGEn64+mMn1g
         rkVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=8NQGG5JRNJEWGXvYxH2yGhSMcjbB2JQnCqCmq+RBEno=;
        b=K5R5EuzfS3xvKMmXINzjgSSibegJGBZ4HE8zmWvCX+MrgG/qZpNlJOhbGSFmC3QNpJ
         mo8zvj6v4V6xCioh3cVApQDiu0Bt1VjdymmiwOhXDCpJNuZKvy9EaSUje9aXjrw6gkse
         zumdcMLgCBOveYa2E35UbqhDSebEj0q/Mk29KRwJTA1UavRCjO530SMMheGdbWDgcrKm
         jy7B6c0V0URQoo4xr2dGhEs3zWFszEAVBU9xIgHNcYIhDARXcfoNLwgT+C5dAzHw5Blx
         afjWgKHmWPM2WUgBH307jZdnlCr41WTBb18L0KTllvNhIFtZ4L2sv8aL+XsY0XpOH0qd
         15Zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=Ocgw9W8N;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=vyPPigop;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=793731fd0=chaitanya.kulkarni@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=793731fd0=Chaitanya.Kulkarni@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com. [216.71.153.144])
        by gmr-mx.google.com with ESMTPS id g16si15281ion.0.2021.06.15.14.41.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 14:41:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=793731fd0=chaitanya.kulkarni@wdc.com designates 216.71.153.144 as permitted sender) client-ip=216.71.153.144;
IronPort-SDR: xOzVDWHNnqOdvB4862ly3ICTaHH6KZRhDi61q3kWQPe2gGWF5V8VJBnB+f31v6rbC6KLzjMUjw
 0bATRGZPVE+i8ceSF43JKbv/9oP/Wgcx3AuUj6dWOv49Ij8lv8DfhzufRfhHbyj++JBjtc9DDN
 MkW9Wam4SKO7FuhOLS/6Jc6FrvkMblgy8qct+X7I7gq9YKsyR/KjVgK86UsglCFUczsLo2XJtl
 zbx0wTKyE2G+JcN42o6xZjdG61bkwR5asF75BD7gux8NPvR08T5VU4ndXeqGqiFvA7TK3Lpl5y
 go4=
X-IronPort-AV: E=Sophos;i="5.83,276,1616428800"; 
   d="scan'208";a="172020400"
Received: from mail-dm6nam12lp2175.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.175])
  by ob1.hgst.iphmx.com with ESMTP; 16 Jun 2021 05:41:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXvVIhpr9B8CTrM8DAWFCcUuTBMrnC2GTZr64SlyqLlfV14kk1Hhhk1RJ3Mb4Qq7YaqfHXyCAF1Hm8liobaySioegbPrSMeRje2gO3InjoO11inSkViqIf5UvP0N5AsYUzTlqwZBznHRrilT3I5FFveKvmWXqXaHVweozusCfxLmKWHXWxjABq+dCu99oVrsdNpgo7y/HC/L9glBCyU7QYsqB6NV++JuBgM4jxatuIdumh9u+7Fv9L4O4PBt1ecDqJTlu1JEhGUjpdyj9lvNIcXkJ214aYGJd0BUxmD9FslFZv6IGK6shinanv6YMdj/2r/6PiWaX5dfqdtD7lOnCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8NQGG5JRNJEWGXvYxH2yGhSMcjbB2JQnCqCmq+RBEno=;
 b=h2pLyJdMvVekQM76m38wocgMNZjRR02lp8KMTyBTzmtGXYSOuQqrt4sfuZGAfAgwc3cAhxOgknfMwhas9ve7mPolkHD5qoneG/OsoVqh+IvWFZBrZzdPiZG++x5b2aerfyaxfMYgdRyFaDGPSkKOVZjOsyc8TKVXkZzjgI0+4TjGQrK4n7kw82Vd8Dt0tTQC4q5tvKO1OXrF4r9hci49nW5xdtqyJduxvcFl2vcTMSiQku/eSfrt0zdH7kqptlu5rkDTi4ho5OTfmE9iMfuo2rm57LCTv3PKgvPbJtVZj4tyczML7oGnEnLirdrqAfx+tuPaDU5X/1NLPWaEnRaXbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from BYAPR04MB4965.namprd04.prod.outlook.com (2603:10b6:a03:4d::25)
 by SJ0PR04MB7550.namprd04.prod.outlook.com (2603:10b6:a03:327::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Tue, 15 Jun
 2021 21:41:48 +0000
Received: from BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::6873:3d64:8f9f:faf0]) by BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::6873:3d64:8f9f:faf0%7]) with mapi id 15.20.4219.025; Tue, 15 Jun 2021
 21:41:48 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, Christoph
 Hellwig <hch@lst.de>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: [linux-nvme:nvme-5.14 32/32] drivers/nvme/target/zns.c:257:6:
 warning: no previous prototype for function 'nvmet_bdev_zone_zmgmt_recv_work'
Thread-Topic: [linux-nvme:nvme-5.14 32/32] drivers/nvme/target/zns.c:257:6:
 warning: no previous prototype for function 'nvmet_bdev_zone_zmgmt_recv_work'
Thread-Index: AQHXYi7/YxXu7Hmy5k6zW4wZts/tSasVmh6S
Date: Tue, 15 Jun 2021 21:41:48 +0000
Message-ID: <472070C8-85CE-4C02-A96C-4D163A7D9296@wdc.com>
References: <202106160534.PvpGDOHM-lkp@intel.com>
In-Reply-To: <202106160534.PvpGDOHM-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2607:fb90:849e:cc43:e84c:2e80:f77:c13b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50cabb1a-f6f5-414b-3214-08d930466105
x-ms-traffictypediagnostic: SJ0PR04MB7550:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR04MB7550F9347216EA978D4CA33A86309@SJ0PR04MB7550.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8ULvImVs+lIhX2Au3VqHVEz3J4vh+xxyAYH4dnNT+p1n3DYcn9b+qRie3PxV/W2YttX6dUgQkNt5u1pgQVQt30SqPz7mESzwQd0pAjoNwdXJtuafaRUxguxzbRVmx9ilKY3EIIFEMNT1TPYPksW1eqdD+5ExXMLlUOTBzz06/04oo2atPQVDmHNiNZLiCdJiP5CNAqyacVSvDtHra/O5NkMRHxkA9h+R1kbOwhZBy0/yyFI/vpT1o94vtDQQM/uXg6SWCeupSD90OD+O6x8TMtx7XzIheZIpo+lNn+4gmQ+C4sKpsidKI7V76wiUp8GTwjWUeNL8t35tHqsS+lYQBjn8GI+WQYsaqrHiMblrvINhNkVX+pVhB6eM27E9pXkN+oFO1+wpgUpWvFZ4RvaCaY1QsY9CvfvKn/dvysreOfbK4bi9RBUmlF2wQ1Ydl1+IEWY97QLpckmaEk60BHaoRbP7ztFUer3GZHJz73/YAbRIoIU1xL9qEbKU1i67foT9Aj4oQy3oLppnqGhVfDW2C3FVUJ+WKySzXt+FYxSJGvLTQONc2gw2B4U7ERoOKJ3pUbAN2jlqMJrCAT4umb3LADXt3g0I1zjpLsR//DbhvhhIPXDGTx3HGeMnMfbd9wRJTukgljMxFD5PECM8Pp22KA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR04MB4965.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(6506007)(6512007)(478600001)(53546011)(2906002)(6916009)(2616005)(38100700002)(54906003)(83380400001)(8676002)(122000001)(71200400001)(86362001)(36756003)(66946007)(186003)(33656002)(76116006)(4326008)(66446008)(6486002)(64756008)(66476007)(66556008)(8936002)(316002)(4744005)(5660300002)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eZAdG1Ncj0Cd3SmpHWYKo+c+MfZl6VKNErrGAyOIImUp/F+rQf63OQKirOOw?=
 =?us-ascii?Q?ZW7k8qkSRnnZfsmKzfo3BL1bhqhx67hX4mIcqqcvjv98bnSuruzjkuKBcqfO?=
 =?us-ascii?Q?xhWe0TUuMh1wDGg6AR8sKs653shw54XSSKbjbcfVPWAxQKNpslo9aYHmzemK?=
 =?us-ascii?Q?6jqJ+4uLkTRJ3UEFUu38e0+G7j7yQfmS4xks/k/dqoaSNgw5dhYZG+zt8pFG?=
 =?us-ascii?Q?FIi1bW8nwfoujo6cz+Ik/ur7PKrR8nkPhATEMQ1xctcoAjYwlVLRKU7tUqc3?=
 =?us-ascii?Q?xHr1P0WQKvWy0ebNT2RRCyyVNwEp1IOM1/VtVqMGpeLTBwm43qJZDBLcuKop?=
 =?us-ascii?Q?7nbWbSZtQ9PJ/nQrnPHutt0LLyVPDd3uu4z2FqP5atqsHln1dugoFfNiDoJL?=
 =?us-ascii?Q?ccD9sqL187zih3+RjF+5tDg/CqHdsiSSKAfOHtOFPSm4Kv6Brq02neNoAsf8?=
 =?us-ascii?Q?MP2PLw6ZVj8r89j4IpIvzdYFInNr8BDJlyIr4CdHkj8aSZFFcybaLkJh6Fzb?=
 =?us-ascii?Q?AALTXublNP/HbXY0iebecZxP9Fv7nA6ve9DCNGMTF30FwFLMHLGC1pcmodnJ?=
 =?us-ascii?Q?hC0nKRQdK8RZHNUawfLeNMHmmPTCjlv0u7PqVIoFCOaOtA9v9sDqeLE8hARa?=
 =?us-ascii?Q?w3GP/W68KLeaBAeWnvASS90a8lDULP5paFMpOIKNNxn5CE0rjRNgVDTBFRaG?=
 =?us-ascii?Q?cW0+bHjJ03LIzp3fJuo++uw8SzrtHEyH9fDoUL1T3GJvFDhN1v9IiPuF6y4+?=
 =?us-ascii?Q?o4qdEx8oFekPDR2DhptAwwsyIfFCZyxmld4vER6Jl+ocd1ixDfqPju+Pxl4J?=
 =?us-ascii?Q?xnALaHrv0MmodbG+UvzSzcaBgJG8/rARXGdMI6FLp0e12isQ9Plsga7U7F+Q?=
 =?us-ascii?Q?ShvD96BOU1fH/w93812UjL3uWiplanHVsJxBAWH6iQQcfjbrEVJN5h8teQ3k?=
 =?us-ascii?Q?D7FlU+p0VjyOB3IJrerLvcEPw2MNqAtSQRlrC0lWV2ceWU9SaI3Xtnf/RTla?=
 =?us-ascii?Q?jgS2BkPbHL8l9gJPjMMsRMtPEDd8ep43O9gRofzOWpOJ4fJnphL4brpykaYl?=
 =?us-ascii?Q?rLBam63dRT2WsBdBff2ma00afJMBVCDrk9YdNWC9D/26sTahKDOEx8qwpy1H?=
 =?us-ascii?Q?/yzWsPfFjmOVh4lK0n5lOGWviRxZGdN5Vk8kaHv+Kme1ZI3Cp1t0N6xHUx1+?=
 =?us-ascii?Q?qtvN3SSbs9tG6ia/jgErsPc/Tr8At/bnFZLOOTbMOzTufpACY+KMfJOMihue?=
 =?us-ascii?Q?kRnaOU/1yyDcYi6gJKNGP0YCt9LPuywLcqMcXVrnqIR2gIqnyg798IrY1LLZ?=
 =?us-ascii?Q?Bm32uEE4OWM/z8sR1TYa1LYP0xNQkinCjnW0fARovgQBwmvhSs9mUrXgNYc2?=
 =?us-ascii?Q?gr5YsqPlA4PVTTtXDVQ9zOYbMfdd?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR04MB4965.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50cabb1a-f6f5-414b-3214-08d930466105
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2021 21:41:48.2140
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: alJRb7U9tRsA3TzEjbSw6IatNTJRZXSBLk4WXUS1/VVMmq4bJT+vD5Rzk9RH8etxPxMhtr5oApm8yugALR3HCjBVexG4C+ru13zYZSutivI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR04MB7550
X-Original-Sender: chaitanya.kulkarni@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=Ocgw9W8N;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=vyPPigop;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=793731fd0=chaitanya.kulkarni@wdc.com designates 216.71.153.144
 as permitted sender) smtp.mailfrom="prvs=793731fd0=Chaitanya.Kulkarni@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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


> On Jun 15, 2021, at 2:40 PM, kernel test robot <lkp@intel.com> wrote:
> 
>  void nvmet_bdev_zone_zmgmt_recv_work(struct work_struct *w)
>        ^
>   drivers/nvme/target/zns.c:257:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>   void nvmet_bdev_zone_zmgmt_recv_work(struct work_struct *w)
>   ^
>   static 
>   1 warning generated.
> 
> 
> vim +/nvmet_bdev_zone_zmgmt_recv_work +257 drivers/nvme/target/zns.c

Yep got it now, will send out the fix soon. 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/472070C8-85CE-4C02-A96C-4D163A7D9296%40wdc.com.
