Return-Path: <clang-built-linux+bncBAABBAEI3L7AKGQEG2MAFUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E9C2D90B4
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 22:13:38 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id ob4sf5461480pjb.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 13:13:38 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607894017; cv=pass;
        d=google.com; s=arc-20160816;
        b=ryHh1VI/Erq/LLSH1ex7riw/IsJrTkx1TNyeMB8VEXeL0npVK48VHV/EYB/nkdGbWl
         eQfRwA+5GwnAxcgqeCdnG1+NBAcllaR9fchrhOZmg8QqUWozB/9rsGnaFSNVUgdcRpJb
         DkjgrGqZNQvnI9B7dfzsdauqQL02M3AfNv4qJeFjDMip0IfUis3k7Ok0zFWsv7CCMk9k
         TsdDvkKfPXtJqLSKFlB4j88guX0ralDOgTOYm7CS+gejUJ74d59NcAU7xTs7hh5dMiUU
         f7GJL/omPFEbeQQQ2dmPErpXgZG40LSdePHe/PX4tpx7K1CUqqbFuMSOGtNCA5R8wL/M
         7xGQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=hXRujyiTqwBnVI79dT1l+DVoaeAYoEPHo/m5F9YCWVw=;
        b=cP+S4vfyOB6SMiRj2ewSajf3yXcPiCvipOqgKkX5HZ13HYcul7RaRbSw5D4XgFSNwo
         sYiO4YWeFvQmv2Lye53qAxWoa9VSByMDUyzf8jFGq0H2XdqfNbZe5hXkBa9UyfG6ttmW
         OBaAYUJNbw0EcwZkLrElS+NsN9/s1ZGVVsI5cpo0E9QJk2oNmqDr4OVgiw0Q3nQPor4S
         Y7kumaP6bCqsPKD1/QMCnV8M/fhF/KrzYItqxxbn1wn33cQ4KdRjqLBnfI8SC6XpkjKv
         hU805wuNHZZzZcW5XGmAIS6jj3I3Nz+zaECGlG03qBp+Kil316581OewM4n17U5M4c5d
         O/0A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=RxhnTFxH;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of steven.french@microsoft.com designates 40.107.69.112 as permitted sender) smtp.mailfrom=Steven.French@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hXRujyiTqwBnVI79dT1l+DVoaeAYoEPHo/m5F9YCWVw=;
        b=eF6Xfuxfwa0Mv0Ji4bMEBAdZS0mBW6el7DlqOG5DEgjcyhycDh18tKaIFWvtme96tt
         nu/dsvZdgIRLN+AbjvhOStd9x1UDe/fzIZaje4iMxsQRjE7O05nIJPDiUjq8g3K2hL71
         Vtx2bFEevQu3veJP5DcqUY9ESvqxW4d+nsT0FDRX9/LVRMZ2EoEPS3u2Wcb7H2zODtaw
         9PBf2iSDAzGw+pj5r/7DlB5PlUg4xMkPn3nGINKR3eokO+tUopJwiIvk6eLvKeKGSaVY
         leVZBB/+1vyD56quTDVrkiPuihvOEW9/0iJgzJNPgcwC3MZcKAS7XQZvSZa89aJC9wjV
         sxgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hXRujyiTqwBnVI79dT1l+DVoaeAYoEPHo/m5F9YCWVw=;
        b=qHTngpd9WlLo67Jti3poLjY52+RhE/xxhPFslWDk5MlVoZBsCfJw5siQkEKPEJjYmz
         5+TY+9NI0cwZu00dhH8gBT7EodEWnMYbb8q3Jroz0RtBt4NoSVZ/GFWMS3kA20whCuJV
         IvIusCeW8DYkwj3Vw2tnXJYRrRcV76XCL/wizlx9BBbGccNqBI6gtLGsdsgWJKslDSsd
         k6B+hhkTOT9GXP723NPp5d8H8upeUMvYEYj3glM2YZr0qc+PL6vSUXSzBnLg1gdrw4pZ
         Q1GbD0hSmL+zyvHYJm4sj+0kAZ/e2ing34JIBptQlLoGr6QiVteZDxfliLJxGWZBCaYA
         gu9g==
X-Gm-Message-State: AOAM532TMdYTcT1F9XBv8W3r0XIY+YmakQLu3dCqEmByEU5jFe9XWGhV
	r482ailN1SWcnrIZleGeOjE=
X-Google-Smtp-Source: ABdhPJzjmAHJPB25ZpBR7f2/Q7MjiRXzyme369oSq6/jLKBMASzYmJfOa5onDCn7V5rDXjFkTaLv0g==
X-Received: by 2002:a17:90b:4d0e:: with SMTP id mw14mr22563853pjb.92.1607894016943;
        Sun, 13 Dec 2020 13:13:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f601:: with SMTP id m1ls5665674pgh.4.gmail; Sun, 13 Dec
 2020 13:13:36 -0800 (PST)
X-Received: by 2002:aa7:9357:0:b029:1a5:43da:b90d with SMTP id 23-20020aa793570000b02901a543dab90dmr3225279pfn.54.1607894016355;
        Sun, 13 Dec 2020 13:13:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607894016; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxNJ0ubW0X23IvfqhDyOli+8dWvq2J+YIUP38Z+1o4qqPpkEm6hAqYa0SMoQKwPve5
         I6EcPwR/oeQChtwjj6s6nHJpTokrufArFHQmep3qKkpOQ5W0Q6j3o8GouTBRIYdilm+m
         1dv7ngKufcOnc238RP25N8vI81iqC1z4p5CacxhXaZC4CYQFh/VvBJ7GyjL0oyOQDoOk
         r0aKf+IHOXkNCijUurq90tzonMULPb4Yd3bqLUmghZ3xUpM6Ez4I27o8ApSWHgsebDok
         4ji/Dfu8kJ1bymNVLM/fWb2jCwBPfYy/ADdvBvFex/iGjm06i+kUN3WJZ13M1S7Ie3Fx
         Hr4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:msip_labels:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=5r+4qPkFJ6KxXPy1q9LrSl+LlB1P2WoE6PkQbYZVFKg=;
        b=rWar8At1lUhlU/bJdwqHkDprGpJlg/DEelZH+rCZj1Vq0PevHr60cN22lKDTN2MCYc
         vEiniipRsc+99ddXTZySWvpq2ZlrwMS4OFAXEp+0dqpcyevrnYO3rW9pa/QEc7TQ/f3R
         aemjR3RVKINBDJFCpy1fOWLpTwwytN7cMI6IULTUNhLNJxHlFjWs1vVFPyQSaJz7/qhE
         xFgkK128Nv7kUChBFupskk68ISYf+eM25ATZVHXQ5hic0obFdtyRSLDE9imqiGVTl/HX
         8F4EIHN8i7KNDLZVI/BF6dOtu6am+hkH4wrk2lGcNufManGoRWBSZVbzDMnPR9ZmMKgp
         G/Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=RxhnTFxH;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of steven.french@microsoft.com designates 40.107.69.112 as permitted sender) smtp.mailfrom=Steven.French@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690112.outbound.protection.outlook.com. [40.107.69.112])
        by gmr-mx.google.com with ESMTPS id w6si1092469pjr.2.2020.12.13.13.13.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 13:13:36 -0800 (PST)
Received-SPF: pass (google.com: domain of steven.french@microsoft.com designates 40.107.69.112 as permitted sender) client-ip=40.107.69.112;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aOm6LxFqs3o7swKqYw6NbeCTjBzWWsVhjYVXMbv/QWuyaVQobNIQK088LremH9zaJK243mfvq7Z2Us8paTgeiID45teq9MrWlsUa4+aOUkn9hYARcEqk9qu/eab9V0PfBnwi6/QhBPIRX4A3ANhDkFyGHqqZtZxJcIZzm39gpN4pFHgUuRUXi1x7DmddmY9O0l7jj5KqDT7jj1TBEIxvs9qdm/gQYz7C+lVBGLgvw+fDoPx0ZzaByXUnuNg43NfUdPxxwUUS67n3PnK04S4+2nAdBsJzVWockFriD7EK9Xv87UJ/ROsuCMEhoqTTGZnwJfqG4HoJrxGpp55r1Jzgqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5r+4qPkFJ6KxXPy1q9LrSl+LlB1P2WoE6PkQbYZVFKg=;
 b=Ssn7bSd2wGaGb8mAO+NhTmqUhiWvDpZNk5r17PHq8gxxBwQUCRxJWbXn1o08T8DppWjctYvFelghwYwg+tq293UCre2ic5KT5+c2ck8c5KarE3mvF2BumGxGxulkPSMY4rPNT+mEa5E9skFf1iVovL2ncSAzIcdVjro4GjAkV2B2aw8+3OmJ4EP30nyIGt1BvqBBTOKuDl8BdOjl6YJO66AyZAPODqL7i4KmDeh7+JIVYnpoYMK0q8CDIA6neRehuMJu3/n0F60hvZSMb0lNRLhkEFJ6ap9GtVEvE8hfiSfF72Y0myMnFBK9OIekogeHHqLUNbiYl4Uo1KuE6VjAIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
Received: from (52.132.115.18) by SN6PR2101MB1664.namprd21.prod.outlook.com
 (52.135.96.149) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.3; Sun, 13 Dec
 2020 21:13:34 +0000
Received: from SN6PR2101MB1069.namprd21.prod.outlook.com
 ([fe80::8552:d3f3:2443:ba78]) by SN6PR2101MB1069.namprd21.prod.outlook.com
 ([fe80::8552:d3f3:2443:ba78%3]) with mapi id 15.20.3700.002; Sun, 13 Dec 2020
 21:13:34 +0000
From: "'Steven French' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [EXTERNAL] [cifs:for-next 1/31] /tmp/mixer_oss-346997.s:202:
 Error: unrecognized opcode `zext.b s7,a1'
Thread-Topic: [EXTERNAL] [cifs:for-next 1/31] /tmp/mixer_oss-346997.s:202:
 Error: unrecognized opcode `zext.b s7,a1'
Thread-Index: AQHW0ZNlio7vFNIpJkqrC/+xNDgQHKn1hk+2
Date: Sun, 13 Dec 2020 21:13:34 +0000
Message-ID: <SN6PR2101MB106938225B5D96FF917D8FF7E4C89@SN6PR2101MB1069.namprd21.prod.outlook.com>
References: <202012140423.qZB2nYtw-lkp@intel.com>
In-Reply-To: <202012140423.qZB2nYtw-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-12-13T21:12:56.9815301Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Privileged
x-originating-ip: [172.58.97.94]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 605708a2-4478-4278-4c30-08d89fabf395
x-ms-traffictypediagnostic: SN6PR2101MB1664:
x-microsoft-antispam-prvs: <SN6PR2101MB16644CEF5EDA6A6DBB8EB0EBE4C89@SN6PR2101MB1664.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HLqTm7UUIqD/WtXRAVZXGR8LIzSlTs628vHIJPCDmSvGAxHx1dKlv/Ujhy44M9iTdy8JjF+bu2Geh8DouJrEWzPJiluTsXzSs8pLeDEOG9NWlE7BJyVdZSe02wHf0TML9Q1NFqEgAxb2D9esXUfJB5tXaSnBfIuSyeeydnN008tXKHN79G16SQDi6NRQDdHEIydNmanMy7LLmB8RRSx/84dqgqi9bUjOBKIwd2NggVl41PEwyqsUXTUmheZVTMPGmgElekokiIFDTrKgL8hte9YTHVli3/TOQ+rfbVTEEHFrmRPjDlW+QDv8+/ElgSGNmHgFOHj63r6liT9QbUdEatWYKlImPLVYyl8xmrcZIsEYY2rH5DCnQAZxzNbypzJsP1QrEZHsLMcMnVlGuAEXFKztzZauwkS5Jdtr7gNsSWNgnsQJFVI8GOATGTsaF/EO68cwmBhF2wQou/fzBCukAMiygJwgBXKr/lbslAGStcPMr1ujY0/xfXLjlfA07hjGKqWvkCt9D8HMM/UjjI6cPzDM6eMvqtjUPBriQxekZ64=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR2101MB1069.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(366004)(86362001)(7696005)(76116006)(8676002)(2906002)(6916009)(71200400001)(82960400001)(82950400001)(8990500004)(64756008)(33656002)(66946007)(5660300002)(66556008)(66446008)(66476007)(52536014)(9686003)(166002)(966005)(83380400001)(18265965003)(508600001)(10290500003)(6506007)(53546011)(26005)(4326008)(186003)(8936002)(55016002)(81973001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?nmfFnHmYKp4bQuxKPcYHgqAjPYZiEsMOv9t0/FPVWSgw/mGM+u4atgbKe2BF?=
 =?us-ascii?Q?ycQig67zBtrtJY4CGaGGpj8GXQ2DlPfaE19Ez/hWeDfhl6EKaIiCol6Equ8M?=
 =?us-ascii?Q?7A8jtFwBaPmOiA6vQUlPGetaYfRhjirgrHhiTKfzY8DYoAPCAcJ/8xQsBU+U?=
 =?us-ascii?Q?rRB+18MqGU+FI8/DREg3wWTaHsAWld7uo3JReiLLIEG4g+CCmYLKz68HnBXy?=
 =?us-ascii?Q?3vYM/AVmxdbEWjvqHf2AR7PPPCMPOjlgRyjbFqZ9MTVVOibowETqFIbdm8aj?=
 =?us-ascii?Q?Qtg8aWZSqQD6wiJxSMqesPRunSuLSTGvIquxBOeVYfWJjXZoG1r8NMRQacDm?=
 =?us-ascii?Q?OmIaiQ52hfHjgcB0bfG1nNeCNz2mLv/pfyKaRQ6Q/nPy2RHT3s0MO6zhdPDs?=
 =?us-ascii?Q?wMr2tPXowcueHyQ5KuT0ecSlrdEDsqFUSPGAsWBricPFB80n6jhMx5Rr2E8e?=
 =?us-ascii?Q?XGGmx9ichBkC76bAejVBvFvltmx6cdgFx4Ndkd5XF66aXHR0NJ9fC/VIVXde?=
 =?us-ascii?Q?p1l+JGO/HszusprvxMXpd8/nv/7kWz8Pv0ybXFCf789M1Vv6H6LUKYpiD/d5?=
 =?us-ascii?Q?mBZraX0MFOwYdwuoZAxPmV9QQRhtESq4m/plLv66e4AFcbD0mw2iF1egfa4z?=
 =?us-ascii?Q?Kz0CGzMS6ofcxfl6XG5GuoTtfcFKJJyOggjw6NyhzO84Um2q+5KHPIUKZ+Se?=
 =?us-ascii?Q?OfSI96OsIeD8jEL34WrxadiCig4KgANIabvJY25meTuqHdCO6SV9syrfhkHQ?=
 =?us-ascii?Q?8TBopDagI9u1gGyJKRwinyaMSyoQEFg0W6xSyfzXQr6CuOIrqob1wRoQ+Wnx?=
 =?us-ascii?Q?TuT/E7j4N9pD3EBLAneLygs6DUG4+ntQHls/mUgm+M8ZQmtJfkB+A3oPGnX5?=
 =?us-ascii?Q?P3zadgKuNBQVHJ4XI9oUsgruaYrWbpRAsWGwuCwlgfF083PJFoJvAdyK6XLl?=
 =?us-ascii?Q?FTsRXIsVGdmnrvgv2o7qQGqBtm81eEneruzxCnoiVvACS0Aka/X8EupwKzTB?=
 =?us-ascii?Q?/Omu?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_SN6PR2101MB106938225B5D96FF917D8FF7E4C89SN6PR2101MB1069_"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR2101MB1069.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 605708a2-4478-4278-4c30-08d89fabf395
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2020 21:13:34.5188
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CRTCea5Dr0w7PTgmPuXhXWScU8I20eIyTqy/ZIK+goWjdcira8x90EC1ilvMnf8cnW+zxzSdpLkA6/p//IyCLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1664
X-Original-Sender: steven.french@microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microsoft.com header.s=selector2 header.b=RxhnTFxH;       arc=pass
 (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com
 dmarc=pass fromdomain=microsoft.com);       spf=pass (google.com: domain of
 steven.french@microsoft.com designates 40.107.69.112 as permitted sender)
 smtp.mailfrom=Steven.French@microsoft.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=microsoft.com
X-Original-From: Steven French <Steven.French@microsoft.com>
Reply-To: Steven French <Steven.French@microsoft.com>
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

--_000_SN6PR2101MB106938225B5D96FF917D8FF7E4C89SN6PR2101MB1069_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ideas what in the small clang fixup patch causes this

Get Outlook for Android<https://aka.ms/ghei36>
________________________________
From: kernel test robot <lkp@intel.com>
Sent: Sunday, December 13, 2020 2:57:26 PM
To: Gustavo A. R. Silva <gustavoars@kernel.org>
Cc: kbuild-all@lists.01.org <kbuild-all@lists.01.org>; clang-built-linux@go=
oglegroups.com <clang-built-linux@googlegroups.com>; linux-cifs@vger.kernel=
.org <linux-cifs@vger.kernel.org>; samba-technical@lists.samba.org <samba-t=
echnical@lists.samba.org>; Steven French <Steven.French@microsoft.com>
Subject: [EXTERNAL] [cifs:for-next 1/31] /tmp/mixer_oss-346997.s:202: Error=
: unrecognized opcode `zext.b s7,a1'

tree:   git://git.samba.org/sfrench/cifs-2.6.git for-next
head:   de1ecd1edc1c428e6b1b37a0557d13ba7473e4fb
commit: 2494367d9d48498364276355dd85825c967d63c6 [1/31] cifs: Fix fall-thro=
ugh warnings for Clang
config: riscv-randconfig-r012-20201213 (attached as .config)
compiler: clang version 12.0.0 (https://nam06.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&amp;data=3D04%7C0=
1%7CSteven.French%40microsoft.com%7C266ffb63c0c74276feab08d89fa9c790%7C72f9=
88bf86f141af91ab2d7cd011db47%7C1%7C0%7C637434902052915534%7CUnknown%7CTWFpb=
GZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7=
C1000&amp;sdata=3DHn6f7ReIqy%2Bcmn8st%2FjQpRN4Yp8TjxVRctVQsl82JDM%3D&amp;re=
served=3D0 84c09ab44599ece409e4e19761288ddf796fceec)
reproduce (this is a W=3D1 build):
        wget https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.=
cross&amp;data=3D04%7C01%7CSteven.French%40microsoft.com%7C266ffb63c0c74276=
feab08d89fa9c790%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C6374349020529=
15534%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6I=
k1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DUWvVWMWzkTcIHsDlYoEzh%2B1EFO0ZL6Gu=
4aPrK3LTTZM%3D&amp;reserved=3D0 -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git remote add cifs git://git.samba.org/sfrench/cifs-2.6.git
        git fetch --no-tags cifs for-next
        git checkout 2494367d9d48498364276355dd85825c967d63c6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Driscv

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the cifs/for-next HEAD de1ecd1edc1c428e6b1b37a0557d13ba7473e4fb build=
s fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

   /tmp/mixer_oss-346997.s: Assembler messages:
>> /tmp/mixer_oss-346997.s:202: Error: unrecognized opcode `zext.b s7,a1'
>> /tmp/mixer_oss-346997.s:225: Error: unrecognized opcode `zext.b s1,a0'
>> /tmp/mixer_oss-346997.s:228: Error: unrecognized opcode `zext.b a0,a0'
>> /tmp/mixer_oss-346997.s:278: Error: unrecognized opcode `zext.b a1,a1'
>> /tmp/mixer_oss-346997.s:412: Error: unrecognized opcode `zext.b a3,a0'
   clang-12: error: assembler command failed with exit code 1 (use -v to se=
e invocation)
--
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v =3D readb_cpu((void*=
)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           =
~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cp=
u'
   #define readb_cpu(c)            ({ u8  __r =3D __raw_readb(c); __r; })
                                                            ^
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v =3D readw_cpu((void*=
)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           =
~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cp=
u'
   #define readw_cpu(c)            ({ u16 __r =3D le16_to_cpu((__force __le=
16)__raw_readw(c)); __r; })
                                                                           =
             ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from =
macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v =3D readl_cpu((void*=
)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           =
~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cp=
u'
   #define readl_cpu(c)            ({ u32 __r =3D le32_to_cpu((__force __le=
32)__raw_readl(c)); __r; })
                                                                           =
             ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from =
macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE=
 + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~=
 ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_c=
pu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE=
 + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~=
 ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_c=
pu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_=
le16(v), (c)))
                                                                           =
          ^
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic o=
n a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE=
 + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~=
 ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_c=
pu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_=
le32(v), (c)))
                                                                           =
          ^
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic=
 on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/timekeeping-638290.s: Assembler messages:
>> /tmp/timekeeping-638290.s:1850: Error: unrecognized opcode `zext.b a4,a0=
'
   clang-12: error: assembler command failed with exit code 1 (use -v to se=
e invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.0=
1.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;data=3D04%7C01%7C=
Steven.French%40microsoft.com%7C266ffb63c0c74276feab08d89fa9c790%7C72f988bf=
86f141af91ab2d7cd011db47%7C1%7C0%7C637434902052915534%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C100=
0&amp;sdata=3DVv%2BkF9ogk5PpcW6yyet5GRkLE81kPTP05Oh9FISBuP8%3D&amp;reserved=
=3D0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/SN6PR2101MB106938225B5D96FF917D8FF7E4C89%40SN6PR2101MB106=
9.namprd21.prod.outlook.com.

--_000_SN6PR2101MB106938225B5D96FF917D8FF7E4C89SN6PR2101MB1069_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
Ideas what in the small clang fixup patch causes this</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> kernel test robot &lt=
;lkp@intel.com&gt;<br>
<b>Sent:</b> Sunday, December 13, 2020 2:57:26 PM<br>
<b>To:</b> Gustavo A. R. Silva &lt;gustavoars@kernel.org&gt;<br>
<b>Cc:</b> kbuild-all@lists.01.org &lt;kbuild-all@lists.01.org&gt;; clang-b=
uilt-linux@googlegroups.com &lt;clang-built-linux@googlegroups.com&gt;; lin=
ux-cifs@vger.kernel.org &lt;linux-cifs@vger.kernel.org&gt;; samba-technical=
@lists.samba.org &lt;samba-technical@lists.samba.org&gt;;
 Steven French &lt;Steven.French@microsoft.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [cifs:for-next 1/31] /tmp/mixer_oss-346997.s:202=
: Error: unrecognized opcode `zext.b s7,a1'</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">tree:&nbsp;&nbsp; git://git.samba.org/sfrench/cifs=
-2.6.git for-next<br>
head:&nbsp;&nbsp; de1ecd1edc1c428e6b1b37a0557d13ba7473e4fb<br>
commit: 2494367d9d48498364276355dd85825c967d63c6 [1/31] cifs: Fix fall-thro=
ugh warnings for Clang<br>
config: riscv-randconfig-r012-20201213 (attached as .config)<br>
compiler: clang version 12.0.0 (<a href=3D""></a>https://nam06.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project&=
amp;amp;data=3D04%7C01%7CSteven.French%40microsoft.com%7C266ffb63c0c74276fe=
ab08d89fa9c790%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637434902052915=
534%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1=
haWwiLCJXVCI6Mn0%3D%7C1000&amp;amp;sdata=3DHn6f7ReIqy%2Bcmn8st%2FjQpRN4Yp8T=
jxVRctVQsl82JDM%3D&amp;amp;reserved=3D0
 84c09ab44599ece409e4e19761288ddf796fceec)<br>
reproduce (this is a W=3D1 build):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wget <a href=3D"https://nam06.sa=
felinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fraw.githubusercontent.c=
om%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.cross&amp;amp;data=3D04%7C01%=
7CSteven.French%40microsoft.com%7C266ffb63c0c74276feab08d89fa9c790%7C72f988=
bf86f141af91ab2d7cd011db47%7C1%7C0%7C637434902052915534%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1=
000&amp;amp;sdata=3DUWvVWMWzkTcIHsDlYoEzh%2B1EFO0ZL6Gu4aPrK3LTTZM%3D&amp;am=
p;reserved=3D0">
https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fraw.git=
hubusercontent.com%2Fintel%2Flkp-tests%2Fmaster%2Fsbin%2Fmake.cross&amp;amp=
;data=3D04%7C01%7CSteven.French%40microsoft.com%7C266ffb63c0c74276feab08d89=
fa9c790%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637434902052915534%7CU=
nknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLC=
JXVCI6Mn0%3D%7C1000&amp;amp;sdata=3DUWvVWMWzkTcIHsDlYoEzh%2B1EFO0ZL6Gu4aPrK=
3LTTZM%3D&amp;amp;reserved=3D0</a>
 -O ~/bin/make.cross<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chmod +x ~/bin/make.cross<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # install riscv cross compiling =
tool for clang build<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # apt-get install binutils-riscv=
64-linux-gnu<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git remote add cifs git://git.sa=
mba.org/sfrench/cifs-2.6.git<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git fetch --no-tags cifs for-nex=
t<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git checkout 2494367d9d484983642=
76355dd85825c967d63c6<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # save the attached .config to l=
inux build tree<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COMPILER_INSTALL_PATH=3D$HOME/0d=
ay COMPILER=3Dclang make.cross ARCH=3Driscv <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kernel test robot &lt;lkp@intel.com&gt;<br>
<br>
Note: the cifs/for-next HEAD de1ecd1edc1c428e6b1b37a0557d13ba7473e4fb build=
s fine.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It only hurts bisectibility.<br>
<br>
All errors (new ones prefixed by &gt;&gt;):<br>
<br>
&nbsp;&nbsp; /tmp/mixer_oss-346997.s: Assembler messages:<br>
&gt;&gt; /tmp/mixer_oss-346997.s:202: Error: unrecognized opcode `zext.b s7=
,a1'<br>
&gt;&gt; /tmp/mixer_oss-346997.s:225: Error: unrecognized opcode `zext.b s1=
,a0'<br>
&gt;&gt; /tmp/mixer_oss-346997.s:228: Error: unrecognized opcode `zext.b a0=
,a0'<br>
&gt;&gt; /tmp/mixer_oss-346997.s:278: Error: unrecognized opcode `zext.b a1=
,a1'<br>
&gt;&gt; /tmp/mixer_oss-346997.s:412: Error: unrecognized opcode `zext.b a3=
,a0'<br>
&nbsp;&nbsp; clang-12: error: assembler command failed with exit code 1 (us=
e -v to see invocation)<br>
--<br>
&nbsp;&nbsp; In file included from kernel/time/timekeeping.c:6:<br>
&nbsp;&nbsp; In file included from include/linux/timekeeper_internal.h:10:<=
br>
&nbsp;&nbsp; In file included from include/linux/clocksource.h:21:<br>
&nbsp;&nbsp; In file included from arch/riscv/include/asm/io.h:149:<br>
&nbsp;&nbsp; include/asm-generic/io.h:556:9: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return inb(add=
r);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br>
&nbsp;&nbsp; arch/riscv/include/asm/io.h:55:76: note: expanded from macro '=
inb'<br>
&nbsp;&nbsp; #define inb(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; ({ u8&nbsp; __v; __io_pbr(); __v =3D readb_cpu((void*)(PCI_IOBASE + =
(c))); __io_par(__v); __v; })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~=
~~~~~ ^<br>
&nbsp;&nbsp; arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro=
 'readb_cpu'<br>
&nbsp;&nbsp; #define readb_cpu(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; ({ u8&nbsp; __r =3D __raw_readb(c); __r; })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
&nbsp;&nbsp; In file included from kernel/time/timekeeping.c:6:<br>
&nbsp;&nbsp; In file included from include/linux/timekeeper_internal.h:10:<=
br>
&nbsp;&nbsp; In file included from include/linux/clocksource.h:21:<br>
&nbsp;&nbsp; In file included from arch/riscv/include/asm/io.h:149:<br>
&nbsp;&nbsp; include/asm-generic/io.h:564:9: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return inw(add=
r);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br>
&nbsp;&nbsp; arch/riscv/include/asm/io.h:56:76: note: expanded from macro '=
inw'<br>
&nbsp;&nbsp; #define inw(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; ({ u16 __v; __io_pbr(); __v =3D readw_cpu((void*)(PCI_IOBASE + (c)))=
; __io_par(__v); __v; })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~=
~~~~~ ^<br>
&nbsp;&nbsp; arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro=
 'readw_cpu'<br>
&nbsp;&nbsp; #define readw_cpu(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; ({ u16 __r =3D le16_to_cpu((__force __le16)__raw_r=
eadw(c)); __r; })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<=
br>
&nbsp;&nbsp; include/uapi/linux/byteorder/little_endian.h:36:51: note: expa=
nded from macro '__le16_to_cpu'<br>
&nbsp;&nbsp; #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; ^<br>
&nbsp;&nbsp; In file included from kernel/time/timekeeping.c:6:<br>
&nbsp;&nbsp; In file included from include/linux/timekeeper_internal.h:10:<=
br>
&nbsp;&nbsp; In file included from include/linux/clocksource.h:21:<br>
&nbsp;&nbsp; In file included from arch/riscv/include/asm/io.h:149:<br>
&nbsp;&nbsp; include/asm-generic/io.h:572:9: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return inl(add=
r);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br>
&nbsp;&nbsp; arch/riscv/include/asm/io.h:57:76: note: expanded from macro '=
inl'<br>
&nbsp;&nbsp; #define inl(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; ({ u32 __v; __io_pbr(); __v =3D readl_cpu((void*)(PCI_IOBASE + (c)))=
; __io_par(__v); __v; })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~~~~~=
~~~~~ ^<br>
&nbsp;&nbsp; arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro=
 'readl_cpu'<br>
&nbsp;&nbsp; #define readl_cpu(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; ({ u32 __r =3D le32_to_cpu((__force __le32)__raw_r=
eadl(c)); __r; })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<=
br>
&nbsp;&nbsp; include/uapi/linux/byteorder/little_endian.h:34:51: note: expa=
nded from macro '__le32_to_cpu'<br>
&nbsp;&nbsp; #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; ^<br>
&nbsp;&nbsp; In file included from kernel/time/timekeeping.c:6:<br>
&nbsp;&nbsp; In file included from include/linux/timekeeper_internal.h:10:<=
br>
&nbsp;&nbsp; In file included from include/linux/clocksource.h:21:<br>
&nbsp;&nbsp; In file included from arch/riscv/include/asm/io.h:149:<br>
&nbsp;&nbsp; include/asm-generic/io.h:580:2: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; outb(value, ad=
dr);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~=
~~~<br>
&nbsp;&nbsp; arch/riscv/include/asm/io.h:59:68: note: expanded from macro '=
outb'<br>
&nbsp;&nbsp; #define outb(v,c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ({ __io_=
pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ~~~~~~~~~~ ^<br>
&nbsp;&nbsp; arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro=
 'writeb_cpu'<br>
&nbsp;&nbsp; #define writeb_cpu(v, c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; ((void)__raw_writeb((v), (c)))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
&nbsp;&nbsp; In file included from kernel/time/timekeeping.c:6:<br>
&nbsp;&nbsp; In file included from include/linux/timekeeper_internal.h:10:<=
br>
&nbsp;&nbsp; In file included from include/linux/clocksource.h:21:<br>
&nbsp;&nbsp; In file included from arch/riscv/include/asm/io.h:149:<br>
&nbsp;&nbsp; include/asm-generic/io.h:588:2: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; outw(value, ad=
dr);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~=
~~~<br>
&nbsp;&nbsp; arch/riscv/include/asm/io.h:60:68: note: expanded from macro '=
outw'<br>
&nbsp;&nbsp; #define outw(v,c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ({ __io_=
pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ~~~~~~~~~~ ^<br>
&nbsp;&nbsp; arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro=
 'writew_cpu'<br>
&nbsp;&nbsp; #define writew_cpu(v, c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
&nbsp;&nbsp; In file included from kernel/time/timekeeping.c:6:<br>
&nbsp;&nbsp; In file included from include/linux/timekeeper_internal.h:10:<=
br>
&nbsp;&nbsp; In file included from include/linux/clocksource.h:21:<br>
&nbsp;&nbsp; In file included from arch/riscv/include/asm/io.h:149:<br>
&nbsp;&nbsp; include/asm-generic/io.h:596:2: warning: performing pointer ar=
ithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmeti=
c]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; outl(value, ad=
dr);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~~=
~~~<br>
&nbsp;&nbsp; arch/riscv/include/asm/io.h:61:68: note: expanded from macro '=
outl'<br>
&nbsp;&nbsp; #define outl(v,c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ({ __io_=
pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ~~~~~~~~~~ ^<br>
&nbsp;&nbsp; arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro=
 'writel_cpu'<br>
&nbsp;&nbsp; #define writel_cpu(v, c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
&nbsp;&nbsp; In file included from kernel/time/timekeeping.c:6:<br>
&nbsp;&nbsp; In file included from include/linux/timekeeper_internal.h:10:<=
br>
&nbsp;&nbsp; In file included from include/linux/clocksource.h:21:<br>
&nbsp;&nbsp; In file included from arch/riscv/include/asm/io.h:149:<br>
&nbsp;&nbsp; include/asm-generic/io.h:1005:55: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (port &=
gt; MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; ~~~~~~~~~~ ^<br>
&nbsp;&nbsp; 7 warnings generated.<br>
&nbsp;&nbsp; /tmp/timekeeping-638290.s: Assembler messages:<br>
&gt;&gt; /tmp/timekeeping-638290.s:1850: Error: unrecognized opcode `zext.b=
 a4,a0'<br>
&nbsp;&nbsp; clang-12: error: assembler command failed with exit code 1 (us=
e -v to see invocation)<br>
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org&amp;amp;da=
ta=3D04%7C01%7CSteven.French%40microsoft.com%7C266ffb63c0c74276feab08d89fa9=
c790%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637434902052915534%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C1000&amp;amp;sdata=3DVv%2BkF9ogk5PpcW6yyet5GRkLE81kPTP05Oh9FISB=
uP8%3D&amp;amp;reserved=3D0">https://nam06.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists=
.01.org&amp;amp;data=3D04%7C01%7CSteven.French%40microsoft.com%7C266ffb63c0=
c74276feab08d89fa9c790%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C6374349=
02052915534%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;amp;sdata=3DVv%2BkF9ogk5PpcW6yyet5GR=
kLE81kPTP05Oh9FISBuP8%3D&amp;amp;reserved=3D0</a><br>
</div>
</span></font></div>
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
om/d/msgid/clang-built-linux/SN6PR2101MB106938225B5D96FF917D8FF7E4C89%40SN6=
PR2101MB1069.namprd21.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfoot=
er">https://groups.google.com/d/msgid/clang-built-linux/SN6PR2101MB10693822=
5B5D96FF917D8FF7E4C89%40SN6PR2101MB1069.namprd21.prod.outlook.com</a>.<br /=
>

--_000_SN6PR2101MB106938225B5D96FF917D8FF7E4C89SN6PR2101MB1069_--
