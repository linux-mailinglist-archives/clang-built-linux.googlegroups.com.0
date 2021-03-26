Return-Path: <clang-built-linux+bncBDJJB37HVIKBBL4Y7GBAMGQEEEK3TCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD834B107
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 22:03:46 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id y16sf7118479pfm.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 14:03:46 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616792624; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgKnV29wxMH16TwgGPcmd86IU16PfgCJp9KOuami/G1NYYY6rXMHslC9ItfRJ0O16F
         cQn9kyGoq9K+XpXeQN0pM6tlcXo5bS2ya5ZsrIFTVZt1OlLVdFP7IzokqY5OXu7FbXio
         mugJuBUmUSIkCE58+qvKD5LTDreX7/DItSr29bzA5VvMX04w4N4F5VN5g97RQsNb5pOK
         seMD9u4GZRDr3Yd1Tuat2IueNwm41sqfk7ucUpamVgsJ6nRWcSg3MY6kF8g+5KPv5if/
         kRbCjm8XAvzY3cGUFZV+iScCVF0ziLaXT1WiMLaJ56MIC3i8K1Qo/Ga1SwE5w12NXn75
         u0yA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-transfer-encoding:content-disposition:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=vxeipImX/BFOD1FuZu/C8dPanyebrrML01Svl376v5U=;
        b=HcGhHXIyMnoxwewKdb7+PCXTNqhS58k8RNQLIEocTTXt0wb3OktfNPNqwmYjhw4W+z
         aKIcbE2GPlCeHqgzG7jPLO7gJanPxq32IPVLHj4AiZE0w3szPjA2ZuyOMYQVrgywUWz3
         nmAPYK+/a/gUsLiq2eHEY+MLSlbZcx9b0AFqf1IK3sRUGrf7fJVKktBhk19nOkaxlDDO
         ca2vioWIVeLWfLQOFo4cB41ZV9czOnygk2fREodd3Xls93/SdAg8SWMneBRSG0D0w8kr
         2SwxASVCO+u0c+2+2kUgosAPsrNLxzt9W4AVniwnxVDQ+ydXyAK3YW9pDpwXoNEdVizj
         Yg7A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Friu13FH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=khKMo+jL;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of tom.saeger@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=tom.saeger@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:content-transfer-encoding:in-reply-to
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vxeipImX/BFOD1FuZu/C8dPanyebrrML01Svl376v5U=;
        b=F8fWrWEQNeCGbzkeH6ocY829y7Mr3MqlQ5jUK2zNCobfMJ4CqdkQGrshm0dNuJJ12x
         hH3n5+zXeW6Hhs5tsj6EbNZa9lWIjtYVHxI6X9a83aGslK8syPdsqBUbd3lUrJ85Rdwv
         PSeTVV4eoS0/jJGKDz0R5dcBnGIePUc9pUU8V+D+N8w76eabrLdCzdWfF1X59uMhFU1z
         C9nI9mA8SEUL5jJtjGqqcmKWLFmuOIN1SbCHohKeE5UkuUWRwaO4f4TlWoy7CjrlFAcI
         04lTAgh48Ugogj+EeftNMua8oacmK46JLD5ZepfxtTVKaydaYta4jLP44tv2jMOvH2b3
         hsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:content-transfer-encoding
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vxeipImX/BFOD1FuZu/C8dPanyebrrML01Svl376v5U=;
        b=tcj2tYBx/MHaKQpfANNyASK+IuoFw/lsMDBd1B9p4xO7SHhQGrVyBffdMSc1FIdCDE
         E0Yiep6hbCCHGcWK4RPxgXlcrZly7LZFhFQ5XIuVXxMGPCchJ6uCiqbCA1Zt3Gw987q9
         JUJjkYtQiyx2Qc5/4Av38AgTigrCI+zjO0zuDsHlyM1CHBzSQiHJTlCtIYzcuPcs3Uk+
         KpkC/+CmfN0Sd74zpFDUUg/tHeswtdm1JNie5ew4/cJg0q5hQGwRhlnt4vRt0FBEEP/W
         T0atRA2x6DbW0hQ8J/V/9pp/or1+jSIN3k5q0Zi9fOqN67kkUNCLNIULUjM+B4Y38w76
         GWLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kBzOGgvwO8AjrlLCj1EVb0Rzi0n+32xfbyN20ZIXsngbdoWdz
	3cRf+jZLNrQvqD5btRlWP2k=
X-Google-Smtp-Source: ABdhPJzYWEqZJqe8UQlLRpTJmDYS73p7W5+2Ejydb5g9+iK0Yd1eNSOUK2u4wYv28CgeWqEnRoW86g==
X-Received: by 2002:a63:5924:: with SMTP id n36mr14382355pgb.183.1616792624139;
        Fri, 26 Mar 2021 14:03:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f547:: with SMTP id h7ls1675955plf.1.gmail; Fri, 26
 Mar 2021 14:03:43 -0700 (PDT)
X-Received: by 2002:a17:90b:4a8b:: with SMTP id lp11mr15381204pjb.141.1616792623476;
        Fri, 26 Mar 2021 14:03:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616792623; cv=pass;
        d=google.com; s=arc-20160816;
        b=v787ZcWcjdTLofiJSJQ3iiGeFVf7p7fdsxPGXLvHvOatg9QvPVa9U/4K2oImL5qpUn
         74849tuUiCpwuEaVnUuaRmmeT7uRo1InRt9E2M1aCFA7NzQ9u965tWL4vqPbU9327z8c
         P5upIfp578U7Am7N2t+Am/Jb65jSXrkJ6m92VqM4a38slGgZdl8GPUhmlmUs8/JIerXC
         KEvDUBNEFxPSKkmf7tJebUoT3WT4BYqOPzrdQP/mwyV2jT5G9sxL9Lb0xbxy3KqiyStw
         hAY3hPsWn7vt0FyQuysCGQzTRs0iqcqr4h1VqZqUTq8RwKphlok2Cf2huQT7e/l6OjpD
         +T1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-transfer-encoding
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=SPAQc8Bpmn1TO+ORAZujMPD6OWEiDkFUDHAoYnUhRh0=;
        b=SUtPG/6F1I1Yi0HUk4xUhtufqsNRRDdvJrwr5BTSyPGUhVByvWB8YSlFarIxcJwb/e
         79ITZ6Xd6KQ+6xoAlsP0n562EX/7Maoa9AUHJxLcFaZfXaQzwRaM7l2SgXRXuupzgFan
         vDUyxwfWlNbPmKDDyfniDOZGStxNohh/w3iSHA4yYrLH3xAskWF7h3YpnXcp8d5gcnid
         C6VTir1l5M5AX7Kh9gg04aUAgfVX7JV3pdTF+zp9PlMSRfdymKZdO+xaKYFTrleijUhC
         TogGgnSQezEiX9xtETXSJu2iP3QujWM0+Jki1UKU8BqXBa45lT/c+LypqMVcJopYSnDV
         /eJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Friu13FH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=khKMo+jL;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of tom.saeger@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=tom.saeger@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id y11si615892pju.3.2021.03.26.14.03.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Mar 2021 14:03:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of tom.saeger@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12QKxONe051985;
	Fri, 26 Mar 2021 21:03:40 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2130.oracle.com with ESMTP id 37h13rucrs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 26 Mar 2021 21:03:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12QL0aRs167409;
	Fri, 26 Mar 2021 21:03:39 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
	by aserp3020.oracle.com with ESMTP id 37h14nkgvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 26 Mar 2021 21:03:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVO52WAsX0NidZETuF8pLLKFmkqFvJHSe0wiHi1NebJJjDcWTuIYrUNYxQJ53fRY+y+2pb5Ti/gM55IXilKyIAre1JNPHfL89RmiD/ZDisYAA/QeeTGfoHkcJ6Gxy6aYbxR/8xR02gch6ernDl8MYIVkdIXuQpAlZaHpdLCE9VbrEBFj4sq2VBhttcj7OePCUzsZeOMx22yNF4jLuaK7sdDiDiph2IPzV5BgbhHxExgXhGN+MTMMzTV1a9dhBD1cNSAq/avv+kqw59++vq+Q7bb7SqpRv5vUG5kpZ4bVjz1QagdSTXeg0afny2RRAX8ecEQzsrK6pQTMdrTyJSBpDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SPAQc8Bpmn1TO+ORAZujMPD6OWEiDkFUDHAoYnUhRh0=;
 b=D8e136M2v40K/fh3yj94iPXRF7i2TIz9PAxsfs1SZ+AWurwl7OIFcIfX8eI2wlIxzufhM0ASG6fPrt3l08PgMbjA3f9q2oWNq6ouGsL12ftUuL06l+1xV+vBGaZyUy+LHLNiHbjEMbmqVCNGtt0cgEAGa13gJVCEmNwJvXcqgEMGoQvHPHEshrKiSBjNnB7rQ6zhlYFCE72v6HMwqlU+fvL4LRT3xQMhHgzB3P+e6jy9nY4tha2Su0wZH1LSNdExFmM2OzmrBqx8EXwoUnZniemfPxEB3OybBlJlSyBolSdblfeHuqIevzCbSI3hi4mpzulFFnKBuEKZoDR7CbsXPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BY5PR10MB3794.namprd10.prod.outlook.com (2603:10b6:a03:1b2::30)
 by BY5PR10MB4180.namprd10.prod.outlook.com (2603:10b6:a03:211::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25; Fri, 26 Mar
 2021 21:03:37 +0000
Received: from BY5PR10MB3794.namprd10.prod.outlook.com
 ([fe80::21a6:5c60:cd6e:1902]) by BY5PR10MB3794.namprd10.prod.outlook.com
 ([fe80::21a6:5c60:cd6e:1902%7]) with mapi id 15.20.3955.031; Fri, 26 Mar 2021
 21:03:37 +0000
Date: Fri, 26 Mar 2021 15:03:35 -0600
From: Tom Saeger <tom.saeger@oracle.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Sasha Levin <sashal@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>,
        "# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] scripts: stable: add script to validate backports
Message-ID: <20210326210335.e6m3cchks32oyzz2@brm-x62-17.us.oracle.com>
References: <20210316213136.1866983-1-ndesaulniers@google.com>
 <YFnyHaVyvgYl/qWg@kroah.com>
 <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
 <YFo78StZ6Tq82hHJ@kroah.com>
 <CAKwvOdmL4cF7ConV8841BX+Pey571KDWM8CBt8NnYY47vJ_Gfg@mail.gmail.com>
 <YFsMj3kL5Rl/Dc5R@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YFsMj3kL5Rl/Dc5R@kroah.com>
X-Originating-IP: [129.157.69.47]
X-ClientProxiedBy: BY3PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::22) To BY5PR10MB3794.namprd10.prod.outlook.com
 (2603:10b6:a03:1b2::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from brm-x62-17.us.oracle.com (129.157.69.47) by BY3PR03CA0017.namprd03.prod.outlook.com (2603:10b6:a03:39a::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24 via Frontend Transport; Fri, 26 Mar 2021 21:03:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfbf0b62-7b9e-4e2d-d933-08d8f09a9fac
X-MS-TrafficTypeDiagnostic: BY5PR10MB4180:
X-Microsoft-Antispam-PRVS: <BY5PR10MB41805FB6F020B6A2A306CC4BFC619@BY5PR10MB4180.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6jWyOPaeqTZ3WQDHjpFC2GEzWBYqGBrOMDhEqQVH03oTvO1kio5AyZb3gDAONsT6cz9rE/Z0r7fwuffSBIwQ7p3/x1gpGt2/IoeK4wYR3k+KntZLEjfnl7Sf1+fS/MsGlIGmGvGDeHtVQQjveJZrUcTwIDSKv5H7IW40yWJRLO7Hcv6ZT53PHhjwtGPnjF1dd4o59kvL/MM8Iwx8t3Vvs6nzjfrE9o8oK1FrqY2YiTolW5PAgJnCV55pdXGPOrz58eJzU06m8ktaBcmPvFvey5KPSVzwzP8K4zYD8o8yL/2qbbqTV3SRn9trJqBJwNRs83ntK54c71eviySJli4GAEQMbSlVbTodtInjl3JbpmgtM/P4Jo2HENJnYYy0o3vq+F+17A3/9CrWSGCJ5qXRu59BnucvkpBPcDOcwOGDjNZigu4Juoq25v7j1+XsknpEtb7a9wwKXXzxJhPCVG0Kyoja5UF9IyEvMl2NgrIOem4a0/fTpLbw0aL3+Vbouyd1EWpmOlXWgC5Fe1w4LIvx2TrD7t58CYam4cvaOX5nBoJEiZe/nk/PPhPWo7F3plB9mFTFFIye+2CFAkmLEh2BbpsFwPbHSEYyJlBcAIlmTidiSzUx6ml2RJiQYvy/hqxzm045Qx/oT999QT4N8IQ5nbDiTy27Blk1EZAOnghXryJymhiKQnyD3ZiP7WnmKMM/FhLhft2Y8/r4PmUXC7gsJJtwxVRMOe2zFwse9bJqWIw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB3794.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(346002)(376002)(136003)(366004)(396003)(2906002)(4326008)(316002)(8936002)(186003)(54906003)(44832011)(478600001)(7696005)(26005)(55016002)(966005)(52116002)(16526019)(8676002)(6916009)(15650500001)(53546011)(66946007)(956004)(66476007)(66556008)(1076003)(5660300002)(83380400001)(38100700001)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?NusxecpIGzFqi95Tx988qFi6f37PYDASKLIDeqL49XpSaH/3lQpK3PT8OZWk?=
 =?us-ascii?Q?dEMgVEkJ/gfFVOZgONm/u0Lj4FcvD2QMX1W1WpxPUJoqx5NDr7BppmB/SltF?=
 =?us-ascii?Q?SuJc/uV9WQlz1d3h8SiN/CnjHqOyDalmbU1spPsNB5OprsF7LgOMQv+uWiR0?=
 =?us-ascii?Q?ODqW6SKhqcK8aW5sgg9nPtJiYQitwO0/ndqq2qlOL0ENWz9Hxa968YJeM080?=
 =?us-ascii?Q?BjPYTCvr/pLj8y8QEcvC7ePqwl/uHeP74CGiwiUz9rAuBCdd6KZnev4GWpCf?=
 =?us-ascii?Q?BbDYgscr1qpsB6Xk3tcIM6Kchua0fQ2GIpWRgNdSxenr5o4gytIVQsINDCf8?=
 =?us-ascii?Q?ol1pjX6uakPAH6NLoaKDwrFm1rpwHw6ui8nTDyT+kSd9AZWU+6QB9yLkV4+d?=
 =?us-ascii?Q?JoZbMncj6AjM7uqVvzB4r2Yd9jeSDHgJ4fylwyA8Zb2m9w1eRJKqYvrPRBLP?=
 =?us-ascii?Q?IQnuecSuUx2HdwqRQu2n9OgiFnHxHQy3rrl1wfb6AcQH+Tg1N6q4AjQnjntk?=
 =?us-ascii?Q?irQcqb00QluA+MBF0/rKnUFVlP2I3S+ba+rAJ/unHK/wrrWmJVHim8H2GBEp?=
 =?us-ascii?Q?IkZVdG6SX40EhpEYd1OSRMo5UTfaDmPMeBAIfuevq9pcTaR7PKHLImrbat2h?=
 =?us-ascii?Q?2VSX+dPe1uMUIBCOzlnFMrbg8I4KXAZv+VeMqJLFuyl2po4dCqbCpmTg8+L9?=
 =?us-ascii?Q?0b1WQgsM7nxp9R0e5X4W1k9TlgfeXBHiI6/rior1tSNR9EQen63T5fk1T/ZV?=
 =?us-ascii?Q?mCha8BGUuwTMBFAQZXpiC/8Amd04DSe+HxvvO7TmzEMh/RZECA5hzCquryYC?=
 =?us-ascii?Q?MX7IkpBNtzdm8j+BszACKZm8cIZg/xhU7bryouzcMm8JlW4/WW9fZT3Uieat?=
 =?us-ascii?Q?lW1igsYz2lgQQ9zx6w5yp+ew6W8CHn8o8quqE3wrk1Iqsnigkc2kLvLnP5gg?=
 =?us-ascii?Q?YutZZp/zOY8Jj1UhFfQyWzKJ6/u5PTtaxFq9j7+rh/GIO0xaX61j+/uDfCCf?=
 =?us-ascii?Q?P9UV5zB/yIcMHYfh6RdbYxMwd52ebuUDJDrAHJs+eKSECMHZ5FYORWYQNH/N?=
 =?us-ascii?Q?a9lOtwIvOhyARaeMvjF5TrVr97WaOTPtDey8NnzXrVyec0X0nGXITnyr/p2N?=
 =?us-ascii?Q?8ogf4CnSvfBZUx4beSEg/oD0JEiNxA0pMdRh2WtJqEhsnfwoSQ3yxqfkCBCO?=
 =?us-ascii?Q?jZBAP/tJhaIX/+fWdt/I5qHR9+sYeNjaZPAE8Y4ieb2lj6oHYY4dQm7Y0aKc?=
 =?us-ascii?Q?bk5prbdEIhDaM+2HOtfJappufH8z3CW+tN3zfytp4mnTjqx47VcjqhLNL2VN?=
 =?us-ascii?Q?fUoniBlGZP5kFsV2u1Dz1u9k?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbf0b62-7b9e-4e2d-d933-08d8f09a9fac
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB3794.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2021 21:03:37.0628
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tYbPEVyH5rLBc/Dfrx4cCa6tmJZI6gWkXM7uKSFwOwh8dsopz2LJvh6HtYb7u3FtG7+89p4CHiMNyaunAGi1mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4180
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9935 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0
 mlxlogscore=999 spamscore=0 adultscore=0 malwarescore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103250000 definitions=main-2103260156
X-Proofpoint-ORIG-GUID: LamD3KLmMI5j_31-EH2-15iOZ-UqGPLH
X-Proofpoint-GUID: LamD3KLmMI5j_31-EH2-15iOZ-UqGPLH
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9935 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 impostorscore=0 priorityscore=1501 clxscore=1011 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2103250000
 definitions=main-2103260156
X-Original-Sender: tom.saeger@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=Friu13FH;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=khKMo+jL;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of tom.saeger@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=tom.saeger@oracle.com;
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

On Wed, Mar 24, 2021 at 10:55:27AM +0100, Greg Kroah-Hartman wrote:
> On Tue, Mar 23, 2021 at 01:28:38PM -0700, Nick Desaulniers wrote:
> > On Tue, Mar 23, 2021 at 12:05 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > The only time git gets involved is when we do a -rc release or when w=
e
> > > do a "real" release, and then we use 'git quiltimport' on the whole
> > > stack.
> > >
> > > Here's a script that I use (much too slow, I know), for checking this
> > > type of thing and I try to remember to run it before every cycle of -=
rc
> > > releases:
> > >         https://github.com/gregkh/commit_tree/blob/master/find_fixes_=
in_queue
> > >
> > > It's a hack, and picks up more things than is really needed, but I wo=
uld
> > > rather it error on that side than the other.
> >=20
> > Yes, my script is similar.  Looks like yours also runs on a git tree.
> >=20
> > I noticed that id_fixed_in runs `git grep -l --threads=3D3 <sha>` to
> > find fixes; that's neat, I didn't know about `--threads=3D`.  I tried i=
t
> > with ae46578b963f manually:
> >=20
> > $ git grep -l --threads=3D3 ae46578b963f
> > $
> >=20
> > Should it have found a7889c6320b9 and 773e0c402534?  Perhaps `git log
> > --grep=3D<sha>` should be used instead?  I thought `git grep` only grep=
s
> > files in the archive, not commit history?
>=20
> Yes, it does only grep the files in the archive.
>=20
> But look closer at the archive that this script lives in :)
>=20
> This archive is a "blown up" copy of the Linux kernel tree, with one
> file per commit.  The name of the file is the commit id, and the content
> of the file is the changelog of the commit itself.
>=20
> So it's a hack that I use to be able to simply search the changelogs of
> all commits to find out if they have a "Fixes:" tag with a specific
> commit id in it.
>=20
> So in your example above, in the repo I run it and get:
>=20
> ~/linux/stable/commit_tree $ git grep -l --threads=3D3 ae46578b963f
> changes/5.2/773e0c40253443e0ce5491cb0e414b62f7cc45ed
> ids/5.2
>=20
> Which shows me that in commit 773e0c402534 ("afs: Fix
> afs_xattr_get_yfs() to not try freeing an error value") in the kernel
> tree, it has a "Fixes:" tag that references "ae46578b963f".
>=20
> It also shows me that commit ae46578b963f was contained in the 5.2
> kernel release, as I use the "ids/" subdirectory here for other fast
> lookups (it's a tiny bit faster than 'git describe --contains').
>=20
> I don't know how your script is walking through all possible commits to
> see if they are fixing a specific one, maybe I should look and see if
> it's doing it better than my "git tree/directory as a database hack"
> does :)

FWIW,

I had a need for something similar and found `git rev-list --grep` provided=
 fastest
results.  Does not provide for the "ids/" hack though...

=E2=9D=AF N=3D"ae46578b963f"; git rev-list --grep=3D"${N}" "${N}..upstream/=
master" | while read -r hid ; do git log -n1 "${hid}" | grep -F "${N}" | se=
d "s#^#${hid} #"; done
a7889c6320b9200e3fe415238f546db677310fa9     Fixes: ae46578b963f ("afs: Get=
 YFS ACLs and information through xattrs")
773e0c40253443e0ce5491cb0e414b62f7cc45ed     Fixes: ae46578b963f ("afs: Get=
 YFS ACLs and information through xattrs")

=E2=9D=AF N=3D"a7889c6320b9"; git rev-list --grep=3D"${N}" "${N}..stable/li=
nux-5.4.y" | while read -r hid ; do git log -n1 "${hid}" | grep -F "${N}" |=
 sed "s#^#${hid} #"; done
6712b7fcef9d1092e99733645cf52cfb3d482555     commit a7889c6320b9200e3fe4152=
38f546db677310fa9 upstream.

=E2=9D=AF N=3D"ae46578b963f"; git rev-list --grep=3D"${N}" "${N}..stable/li=
nux-5.4.y" | while read -r hid ; do git log -n1 "${hid}" | grep -F "${N}" |=
 sed "s#^#${hid} #"; done
6712b7fcef9d1092e99733645cf52cfb3d482555     Fixes: ae46578b963f ("afs: Get=
 YFS ACLs and information through xattrs")
773e0c40253443e0ce5491cb0e414b62f7cc45ed     Fixes: ae46578b963f ("afs: Get=
 YFS ACLs and information through xattrs")



>=20
> thanks,
>=20
> greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210326210335.e6m3cchks32oyzz2%40brm-x62-17.us.oracle.co=
m.
