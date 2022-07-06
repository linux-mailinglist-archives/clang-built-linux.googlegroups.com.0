Return-Path: <clang-built-linux+bncBAABBNGVSWLAMGQEV23JP4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B2927568645
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jul 2022 12:57:57 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id z13-20020a056512308d00b004811694f893sf4985619lfd.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jul 2022 03:57:57 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1657105077; cv=pass;
        d=google.com; s=arc-20160816;
        b=uHkLO7p94FLllf6H5fjSCr9tJx90ZrKWbhabl8PqXmVTgxP/azUTsKDupyTJXU/Mfm
         ERWgGl7COBJ6njw1w2iX75pqcjlvRvGkHui3UB5780z4lJfH9vDYCkOfMOiH5G+c0aMo
         QnJuaJKCeegHGGc46nqjbAJujKCiu0DTXwkdaMAKQpP7BGQpYWsDAE5yckOQD/M72zPy
         eP5OQq4mqfy3pJ66xEnhhlS6ogvBAxpD+1rvSb+6sHg+EojvOKOMplDFWxd5akZuho+Q
         P/r25bUs+VNQjD3zBlxpOIy6zfQWNhBIWLEa8PGfMHxVVbFae72dEcikhH5GIuIN6+12
         +R4Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :suggested_attachment_session_id:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:to:from:sender
         :dkim-signature;
        bh=jUOldRJj7Jcl62UAArPj6xD20+7G0tzhjZn28rPK96g=;
        b=s9Ww+5mLWtYiLCLkcAW97LigRmKl2bn67A+tFkrQMdnBhB2QcRtM6ApjBZniEntjk1
         oYWWJ12PA1qCYQPMNut+nF0wuIub0z8dFWYlEAUWw+cLC7L/yb3HmW+4EC69DzxBvl9h
         2peIkUxQHr79vTrQVPZbExzVV76qgwNB8+wJpm23ssOqocEGvEyhOn4eSpMCb0ka+DhF
         6VxABiS68Anxfe/gg28mCjH3WiqM+yU6gi5/E923G3UdtqNu1VLd1qtzFGIhwWSamVQV
         BicM3kRVrj3v0aJypq14CSEmH74TaPivthkpx/y8yGVLEB6vTZ7I3d+Au5byEs07L86L
         /rRQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@mail.utoronto.ca header.s=selector1 header.b=TwGQtHSg;
       arc=pass (i=1 spf=pass spfdomain=mail.utoronto.ca dkim=pass dkdomain=mail.utoronto.ca dmarc=pass fromdomain=mail.utoronto.ca);
       spf=pass (google.com: domain of zh.lin@mail.utoronto.ca designates 40.107.115.106 as permitted sender) smtp.mailfrom=zh.lin@mail.utoronto.ca;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=utoronto.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:suggested_attachment_session_id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jUOldRJj7Jcl62UAArPj6xD20+7G0tzhjZn28rPK96g=;
        b=jUoyw1asiMp0DaAmroCkoVafJzNVKodX0mKvCDJA44mnoBGLgHJemB8bsO1HwkU68P
         qesKM6pXP0mwAKbbLecOFdbXG2R8hrUGDnHQza1x4eg+69zSyY/a5jrQxUPFoNYTvKZp
         /jWtgAzjsAzFpc4ZSe9EP3AzAWmaKkb6Hryzc1YOw+vSEPG8+rxM4Cd+GrubVA5JcXGp
         wT3wxiSv7Te8bxuN9cDLq+6EUKL6z6QLU5cBeushz6ncuYdSIvGAB/chf/Qi+R0M5/7K
         QuQxBMdUdmHU4MxN6dgI5Sl9E0dBPU8w5R1Ga85Y98M/7ABAn6KI3ZhxDfxP5U7iy2lt
         XMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language
         :suggested_attachment_session_id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jUOldRJj7Jcl62UAArPj6xD20+7G0tzhjZn28rPK96g=;
        b=tXSRP/AezGmsrlHMfmxK3O0DMAJNhMyR6zJNlXh0ryWVHIotIB0zFn3+5mmds+wfW0
         e3WMlD0Vku7+8BwyrNabJmKlaWKwI/wcKEdlwkxPQsmbb10/vEDcpBs4GnDB0erHMW+S
         kF/ZFeDkutWwUYktDvSZIgkg4zv6kYyR/6/7pJODOQJYJK003io9bjbaAEQfNqXHLoi2
         7AoP2d26CfQTPlU81SQCqOkiIDtSZCVESmvunRt7w8lJ7I5w9rTmaQntQ4PdWWDyPHov
         wcyrYLKnSlG1HR6K0YZGMVxDXTDDPjR09IQHONuGasiM+OlDIeEcGh25n8i6YXY7turI
         XG6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+3iDXezIND7ztBvY371qDePSm4EZUKOFerO+IaPRsgOtI9yp+A
	aJPWyQZVODtrOOEwPe6tSWI=
X-Google-Smtp-Source: AGRyM1tl7oF6+n9FRZAabS07NIil0sc0h+8W441vu8hy+cHmzORX+rXKvgKscgGuHxrzZialOw7c8w==
X-Received: by 2002:a2e:8e85:0:b0:25a:72fc:437d with SMTP id z5-20020a2e8e85000000b0025a72fc437dmr22171810ljk.308.1657105076943;
        Wed, 06 Jul 2022 03:57:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0c:b0:47f:9907:2b50 with SMTP id
 f12-20020a0565123b0c00b0047f99072b50ls525001lfv.3.gmail; Wed, 06 Jul 2022
 03:57:55 -0700 (PDT)
X-Received: by 2002:ac2:44a1:0:b0:484:1bbb:3d04 with SMTP id c1-20020ac244a1000000b004841bbb3d04mr4755392lfm.557.1657105075766;
        Wed, 06 Jul 2022 03:57:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1657105075; cv=pass;
        d=google.com; s=arc-20160816;
        b=GfIah8XHRvaZlyWFAhRzA3NLBHX1h5zg9UMeECdZXY+I7qEQc7SQXBCY+UU4A76AWJ
         ffUmoZyY2n91TEpDo/jDw2POL15vvZcBTD8xNkaYEH4/aSAZV26y63WWxCd1E3VEtz3S
         +53G0945ppSopgZ+6YcmQrWfAEYwvb6epQm7aDOtz6NCfv81fp9eQa7i5B7syF9F1j2t
         W34KNsMjhReEBQugaDpqyr9F42wsUYkTzGmNJplEJzO1xRfon/vU6gaWyRP+5uyoTLsM
         jUSYfwi4Extd/gFZv6TwzZdh3NCTxtonYyduL9tjy4lqIO0ermAxRsw0ZIPWx3WfJ2m5
         OOAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:suggested_attachment_session_id:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:dkim-signature;
        bh=PXmgdBqJ+LDbgIE1zuQQ+2SnX/bO2h4QhSXGjGYUfSo=;
        b=J47mzOzBxeJyRRss7ddoZ2J1SNnFJVwtFiKIAsUMuaeTRPcO7ybZbcV52q+nS9wsNh
         hwfQqhQRlSK5r8pw0X6B0obIseAH/02cZbbwSmHWZuhSQJ5TgvWBHymz+f6ROpk+btXQ
         750eBeiqb9XEztIEfqO97IZjc5dAFD/RV+o5WyttLkEfloetlKibSdmZy4OdhwxSTeAm
         bRIxX8Z8FqFGdjXCBjhhcnOohsyepeYIFqPame65zOpVUeL6J0/bVaEveQ0ThpUDULIy
         bUV841Nce5kpuUCSNbWVWw8yoRIMN2+8ZVoKLLrIsAakdW8LCQOYFcirqubxbG6a8Xs5
         UT4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mail.utoronto.ca header.s=selector1 header.b=TwGQtHSg;
       arc=pass (i=1 spf=pass spfdomain=mail.utoronto.ca dkim=pass dkdomain=mail.utoronto.ca dmarc=pass fromdomain=mail.utoronto.ca);
       spf=pass (google.com: domain of zh.lin@mail.utoronto.ca designates 40.107.115.106 as permitted sender) smtp.mailfrom=zh.lin@mail.utoronto.ca;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=utoronto.ca
Received: from CAN01-YT3-obe.outbound.protection.outlook.com (mail-yt3can01on2106.outbound.protection.outlook.com. [40.107.115.106])
        by gmr-mx.google.com with ESMTPS id v12-20020a056512348c00b00482b3534361si356892lfr.6.2022.07.06.03.57.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jul 2022 03:57:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of zh.lin@mail.utoronto.ca designates 40.107.115.106 as permitted sender) client-ip=40.107.115.106;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WXGOBBlzq4sCKnaiaEiR1IrFmAf1GiQCdumtSd3bT0t4yLsQwlt0K3fiA6oW15k23mPUuiJ9euVrjqVzpjyBpqbmziRxSpzY5DUZEM2U2VIWpxabtlr1KbGjzA1k3ywBpKtMXYQIblYbh2y5A1JDoNq4ME45LR5vT5e+hykydPBv4Fkwcsppy6bjenZDJ1f41kIeanF22RHUcRaYZyFc0J055TTa5e5yHls3qsS9MugP+fDvJvcyu6ILaGi+mXh19HPnwYjdMebHg/eBfikdzCwSMGDz5aku1KT8uBEo1tLZElw60JAhwP6gH6UoLXIUrUMZZJS8VP2vnxZzoeJGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PXmgdBqJ+LDbgIE1zuQQ+2SnX/bO2h4QhSXGjGYUfSo=;
 b=EBH4xTLTGZof52rqrpPMX32+G/ZA9KzIRfyCrJng3IvKwqoc31/2y/10ZWiv5mos6jB9Dl7XLHbfC7oLIlfaeaP/XKrCbpuIOGVEl6Fix/swmAJC1iRxtASZSoDhd/4a730RIAIx/Rmzk4Cq5XX6uJGPk056NiZfxR7+aYuwwsq65RWS71ZOQvGskZTHmYRjklfnNn8YOZEn6w2Fa371kV0g27cRTjoDVfFS8kYinonSJh5iKYMnK4dIeNO2eW2GkBtYytPgTu6v/TgCJakM6YoJ1SwT7BKgZRNmd8nuc/NfThdvO0m5xHILX22FXM/aRxQdZgiD13Z211xKp9Hh8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mail.utoronto.ca; dmarc=pass action=none
 header.from=mail.utoronto.ca; dkim=pass header.d=mail.utoronto.ca; arc=none
Received: from YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:7d::6)
 by YTBPR01MB2927.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:26::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Wed, 6 Jul
 2022 10:57:53 +0000
Received: from YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::2030:a9f3:d851:de4c]) by YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::2030:a9f3:d851:de4c%8]) with mapi id 15.20.5417.016; Wed, 6 Jul 2022
 10:57:53 +0000
From: Zhihao Lin <zh.lin@mail.utoronto.ca>
To: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Generating LLVM IR
Thread-Topic: Generating LLVM IR
Thread-Index: AQHYkRr0QVZuUqHzpkSOgWblO6j9ww==
Date: Wed, 6 Jul 2022 10:57:53 +0000
Message-ID: <YT3PR01MB8756D354EA9FC06D5009E205A0809@YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 12fe99e1-9015-a41c-bded-aab7bf773f7a
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fda2e56-36d3-4da2-8270-08da5f3e604a
x-ms-traffictypediagnostic: YTBPR01MB2927:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eDaZWaOAWjdXeP0JHt2t87KMOmnJghmEZpLp5tKXoy2/U8AXCMch0g9w7IVPX0V5lAEl8QR0FVeW5cJSeDMyBksBBrpm4wWxJgCac+QXND4m/fGvntU/H2ggXHNM7den0cVzw218VoTdMIa4B81+E7trq9Tf85lC3mjs1kbybqjJ7bshaL3JoZtM7RXG2k0E5GIj8ApVNXKdabyj2mTHryHpXP4OMLgyAGd1eMELd2LTFPqGHpMmGm8jgSzFWZbe62xN/4VftsHgcgmPS2zqxPGOd35Mryf6eNwRJZAusISYXUG6LlxAMtq3yUkgL0DYi26KHGGY5zgoyQ0Kob4MOSNPt9DW76ukzPhTA+sOnYPLEReZ9V4uomd3Jp0TChxom2tzcL2JjEadiYc9/RWG/7HJ3sPJJ9V5bl+lUKMkt2KudLZC2xlluPO4DAQLkAC4uDxVzo+082XJFVw4DmhL4QuXfPh0kycfBr7ptVPYrKhfe/oPl87SArAV6pBPWL2qvAXG5aRY8lLGNRr32748h07cckUg72bj2Zlh5FkH5FRs+9SHOf1sxwGL8aZFYMH8UFaDIhCQUj3p/Isdjtxvy9Ltv1kWvNacmO4WmXaCcNgDj00/ODS01QJdZKpq8oVbuuwkpds4ewXheJdpF+WM3UCpEsKvTUfeitsyP6uW+OuBYLizT8r2v3xkHd13G8ZW6Z+Qc4KnN9xxqZm9tZmHSYxXr790Afh9fmuBJE5pgcdO46LwfZZXgLvNJl4uj7GWpWYceda6vx3b4hwEDNDRjosXwNzMPS09wYBnFhMhVqvAkWSTzdJDukEe9YNIJWy7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(346002)(396003)(136003)(39860400002)(316002)(786003)(6916009)(41320700001)(26005)(19627405001)(33656002)(9686003)(186003)(6506007)(7116003)(86362001)(55016003)(5660300002)(4744005)(2906002)(7696005)(66556008)(66476007)(66446008)(64756008)(38100700002)(66946007)(8676002)(76116006)(478600001)(71200400001)(41300700001)(3480700007)(122000001)(38070700005)(52536014)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?UlNlcTFyL05PVUxNUzJrKytOTmlTRVBBU2tGa0V1ZTF2a2ZPekIxRHVzVUZp?=
 =?gb2312?B?L1lQMTAySlJneFQxNkpocGlQZnQ3WFhERUd2OTI3SzI2M2lvRjdaSDNXZnNt?=
 =?gb2312?B?bmdyVW52VWdKb2UySm5JSXlubVUyU0oxREVPd2FaMG9nMVlVMkNjZlozM3k0?=
 =?gb2312?B?SFB1Nk4yQitLWFMvQUI0OE1WdWltN3ZrRndqTHl0aUcrTUpuQ0h3TXpjSWpM?=
 =?gb2312?B?TTRudkxSc2dDRWxxQlhvSEZRVmpST09IcGZtKzJnWmFZYXpZdmhxTVhHWHU0?=
 =?gb2312?B?cWIrOXV1NWpNbGNEdDRxc1FrbW1jWWpLVVpVaUgveGoybEtLRHJsejdIL0ky?=
 =?gb2312?B?SWVHK1JJRzA0dWgvcGFXREZBdnJiR3kzTTFsWnJYU1YvbGh3ZUVnZUVsRWpX?=
 =?gb2312?B?NGxzNUJTdEtTbHpISFZ6SkhmUGczNU4rUEZqWHhTS1lWZjk3amlRYmhjRExH?=
 =?gb2312?B?a2VUNXRraittcDNDaWVkT0g5S2NGM0xBZHc5U1lMZXIyK1ZPQTBJRHZXWktZ?=
 =?gb2312?B?Q1FEMVFqNWNCRzZ1MlpVa3FJdXFEaXpCY1BidU1DM2gzS0Uvb1QybDIraFNI?=
 =?gb2312?B?bWFlZUprZFFTL1VnQ2xjSzRFbHl6Q3VkNCtJRFJYVGlWenR0MWpiNTRnNFl5?=
 =?gb2312?B?QjZzclBKZjFMcXEycU1BS1RhVmE0bzQwc2grdjc0blRVcnRDRGVmZ3p2V05O?=
 =?gb2312?B?VUZlaU1SS1dmM2xxZzJOWnZlYm1jZ24rS1I2TWl6T0ZBdXQ3cW1BOHlOSVZ2?=
 =?gb2312?B?NWErZTdBZEY3dWZBdHorbUhuRlBuenpKZjFFTDNsUjFmc0tUSmpweUIrK3JZ?=
 =?gb2312?B?T3BYczROQVVQbC9mTkE0SVZYZk1NcXBzLzhTbnlvK3ovL3dmU0FGWHFqWVdm?=
 =?gb2312?B?bSs2WExpYkVPbTRzMjhPWk11QkJ0aUF1MWdOVEYzR2Fvekg1KzJQYTJNUFlE?=
 =?gb2312?B?V1pKcThxOXArclBzV2pVRnp5QXVFbDBxdFlrSUZlRVhhNDljbWhkazlZdyto?=
 =?gb2312?B?THhNRDFMRlcvcmc4eFRFNTVUN1RWNjFJRXdyd2JDc0o3RklNSkpuUlhFUEJr?=
 =?gb2312?B?U0h4a2hSQWczNlNiemY5RVQ4cnQwYmF3SHFoY1QvQlBtbVZOSlZ3b1hBNkhB?=
 =?gb2312?B?Nys0aWxEOTBpdDg5MmtFRjJqVnlqOXE3M2hOMmhLd0NmSVJCLzJQYnp2TlNq?=
 =?gb2312?B?bzlMUjR0SENJakZkbFByZ0xocXVGQlFXbFp0RVlFT3Y0QWQxQmhoTXJpUFRY?=
 =?gb2312?B?RlhCUUZtTTJUckZHeENmRytxZ0VOVi8yRmR3SlVTS3l3aTl5WDBYNkRLT1Mw?=
 =?gb2312?B?QlZ0TjFOZUxJUVBnc1orcm5ZZkQxMkhDTkJKbkJDWWY1NUsycTQrZmoxcjB2?=
 =?gb2312?B?M1NManVvejhBc2R0aDZzaXpLVlduT2ppdExmKy9zejNvSzI4eXA2aTVLY0ZU?=
 =?gb2312?B?MkJLYS8xWWRhdXhWSFRIMmpKcFRIek0xZTFDV0VUc21GNkhuN05YTG1UWWVT?=
 =?gb2312?B?WU04elJrS2JGRnV1NFU2MnZYOHRDdjhuNm9kQ2NtWkl4bDRrK3VGQ0FFYXpL?=
 =?gb2312?B?dTNOeWhnNGx4aDBwVSsvQk9NV2k0ajc4cHFlRUJyR1hRUXlvZ2RZWnB4Vldw?=
 =?gb2312?B?KzhEVFQrRXkwRnFrSUs5cnY3Z3B0U0pmcDhMQWVOcFBTb2k5R1ZXbm1XOS9B?=
 =?gb2312?B?U1Y3cVhtVHlpNktuR1psVVROQmRDMVNCQ1F4K09vdkNMNTFjbjBuNXRBcE1L?=
 =?gb2312?B?MUZpMzVLV2FmcUhTcHljOTZsc1Z1Um43NkFOeklUMERuY3lGSGJpaEVxclhS?=
 =?gb2312?B?K0dTV1JKUjczTlE1dWYzMi9RWTVyeUlUNWh0OUtoWmpiYlNTYml0dXovSSsz?=
 =?gb2312?B?bm1lTXdUZmZNVmUxcENGbEhFRGNEeXZ1cHNMT3ZiTncrdmpTRVk0U3U2anNU?=
 =?gb2312?B?cDZqL2V1ZzQvNTczdUhhQWZjbG5seUgxVWwySUNlUGM3VlhCRnVEdFR5aUww?=
 =?gb2312?B?NGliTGQrZmZET2VaaFFOaG9vdUt4SytITysrVnB2SXRkYlRrN2pnTllDd1N6?=
 =?gb2312?B?MVhXMm81N01VMk5sdmgxUXBXYldWOTEzYlhWcytTTVcvZExCRmExcS9PdEgr?=
 =?gb2312?Q?V0C0h69lSnjz7q3wjsVjWhu9D?=
Content-Type: multipart/alternative;
	boundary="_000_YT3PR01MB8756D354EA9FC06D5009E205A0809YT3PR01MB8756CANP_"
MIME-Version: 1.0
X-OriginatorOrg: mail.utoronto.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fda2e56-36d3-4da2-8270-08da5f3e604a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2022 10:57:53.3828
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78aac226-2f03-4b4d-9037-b46d56c55210
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Krh3981S3c6tevBHslcTGkhfySCdfGwgnwnZ14vyP8aw2C42nEbDhVN4U+RTHiY704X1hoF6x7iDqvV0+p1O/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YTBPR01MB2927
X-Original-Sender: zh.lin@mail.utoronto.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mail.utoronto.ca header.s=selector1 header.b=TwGQtHSg;
       arc=pass (i=1 spf=pass spfdomain=mail.utoronto.ca dkim=pass
 dkdomain=mail.utoronto.ca dmarc=pass fromdomain=mail.utoronto.ca);
       spf=pass (google.com: domain of zh.lin@mail.utoronto.ca designates
 40.107.115.106 as permitted sender) smtp.mailfrom=zh.lin@mail.utoronto.ca;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=utoronto.ca
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

--_000_YT3PR01MB8756D354EA9FC06D5009E205A0809YT3PR01MB8756CANP_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, I'm trying to build the kernel using LLVM and generate LLVM IR. In t=
he makefile, I saw there is a target "dir/file.ll" provided. However, I wan=
t to add more attributes to the IR file generated, such as adding debug inf=
ormation. Is there any way to generate personalized IR by either modifying =
the Makefile or changing Makefile variables?

Thank you for your patience in advance!

Zhihao Lin


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YT3PR01MB8756D354EA9FC06D5009E205A0809%40YT3PR01MB8756.CA=
NPRD01.PROD.OUTLOOK.COM.

--_000_YT3PR01MB8756D354EA9FC06D5009E205A0809YT3PR01MB8756CANP_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello, I'm trying to build the kernel using LLVM and generate LLVM IR. In t=
he makefile, I saw there is a target &quot;dir/file.ll&quot; provided. Howe=
ver, I want to add more attributes to the IR file generated, such as adding=
 debug information. Is there any way to generate
 personalized IR by either modifying the Makefile or changing Makefile vari=
ables?&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you for your patience in advance!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Zhihao Lin</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/YT3PR01MB8756D354EA9FC06D5009E205A0809%40YT3PR=
01MB8756.CANPRD01.PROD.OUTLOOK.COM?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/YT3PR01MB8756D354EA9FC0=
6D5009E205A0809%40YT3PR01MB8756.CANPRD01.PROD.OUTLOOK.COM</a>.<br />

--_000_YT3PR01MB8756D354EA9FC06D5009E205A0809YT3PR01MB8756CANP_--
