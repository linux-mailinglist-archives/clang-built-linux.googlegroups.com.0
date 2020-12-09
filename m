Return-Path: <clang-built-linux+bncBAABBL5WYH7AKGQEHJHRGWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C4D2D3A0B
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 06:05:53 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id m15sf241573oig.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 21:05:52 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607490351; cv=pass;
        d=google.com; s=arc-20160816;
        b=bCiF4D+Yw5Dvlz2mvdqUi9Cf9lo5HFU4dZQ5sGuUglfTl7sH7hdmQkz7MvzR9z0236
         Q9n0KQEACD6Jau3mizDZsr8EqArF7ORYBOCtYPkQjEwFHtWu16pwQqbCQOy3tyq9pSmq
         S4WdR7Wqem3FFsiv8583bG0GRAx4XkvfaSYKvvy1G8g4XUWgJ4QAAh7RzY8LfOU6/3Pa
         i9ooQVL5FsrM/QH6bJWFwfGFl1GRrt/CZ8AZLSGp3wI/GSRCQB/mnfIZQTsvhoMWww7X
         dPQEP0MhgwITNRPdxTGHCjg3QDnQa+3j2mhQiI7nkt6N9g89NV3nXVKWF6o2iuTwM43i
         QjRQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=gR5b4SoDeD98D8Srl/HXadXOFhb9ACiCRE0DiNc5kLg=;
        b=NJmvBc25xQxTwcA6rRBaT7S9RbB6j1Xb+vbbjE+F7ZbxRsrC4OZ363dBG2qN02VY65
         ANgeidPzf0+wEi2Y9Nod5kizCPn1MfAz4D61MAjnlOvaltOX4hzpVNe/58T1MV5xcy55
         t0LQBG35fcVGFN+bAvBEVrm8e+5lwlN+1SglJK4Lm9YdyGX/vtIel5tyIiLVi45BzZbY
         aqzY/vb3YqnT++pK6xVUHiP8/vSYk7vlXMhJdxzbDdNLfRHT8b3+PxSsYv9pleJsaBpH
         IpmiDgIVVFN9rhcRXXKbHffP7yOTmSFr3g/iUZuPgDpCsMAVyTDFg19NGrlBmifNlwqY
         fkCA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=FKeHieG6;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gR5b4SoDeD98D8Srl/HXadXOFhb9ACiCRE0DiNc5kLg=;
        b=U+tcAT4wQbiF3j15huw9LyjWgCc9ILZ+xB9YNr/N5vzjnMmfEIT926upkhp7sNdEH2
         0N0Suap7v4UK2dLzzDf8ai7qyjGFJW/uH0coQB5/B0trk4LGx7xvisqgef1mybdNXSyE
         uTaUqEZto+Zp1bVgb/xncaV2tKVa7uUsm9ctHAvMwrB9kaglMTB3LmQDRSgqcO0MIpd2
         opJLIy6qZdRfIdEyUW6M0dD+3lF6UpVNRw0q5n4hL7mslk9nyAccXUljsbQ9BpB5uwiI
         KB4NKWnR0RFrSsSZMT1vUzjPrvvrfDdj/Cw3cWe+3defDbqQkd8uhYhVDotCNRCu8sFI
         6KLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gR5b4SoDeD98D8Srl/HXadXOFhb9ACiCRE0DiNc5kLg=;
        b=dDTj3QwZGuEC3ZzTOjQl82h0wYjboVex2H+IOZZgtxcG/MnZjU9LC3ELWz7UH+9RmR
         Zr9CPOVU5tWd30UM0rTApEZhK3TS9r0WRwOkIm1QQzXswHI82HStLz/j+C4F0y00SSzh
         U0hsMXVFArhOXRBzTGqu9KCBO3T7W2BJyORHi78WGgWO17xrrrzBgzsQjn5P0sWlO0GR
         tx4kieiGns7cut52GdVbV2GJASn8jGD7Ttp+UH4YAuM5wcB1UjaeYBef0hVLqS6eGVg/
         HGOkJ+eX537VTJGA/CKM9j3R/ow4TMBPtu2lHlDuSQIqWKc9Cr/tQzWczd/FH+TOsof4
         NSng==
X-Gm-Message-State: AOAM532nq2JTROQbqP/lgVKQhoDGTrphrEaRzUmGAO9OgBeKagOs2MhD
	JXgWHBiW0J4fsbouoVQDsIY=
X-Google-Smtp-Source: ABdhPJxEPlQWY3DK4NZI/iRLo0GycEUGxWNFZT2NWYBKvHsWSXywsJr4KcrNyQ9F7eMlrcMJY6/Mrg==
X-Received: by 2002:a05:6808:b26:: with SMTP id t6mr584286oij.169.1607490351848;
        Tue, 08 Dec 2020 21:05:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:344b:: with SMTP id v69ls134020otb.3.gmail; Tue, 08 Dec
 2020 21:05:51 -0800 (PST)
X-Received: by 2002:a9d:10d:: with SMTP id 13mr401066otu.8.1607490351424;
        Tue, 08 Dec 2020 21:05:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607490351; cv=pass;
        d=google.com; s=arc-20160816;
        b=M2rFtOmh9rjsTkMaEgDIuHeRgJrlp0h/MJeRftA+m76bL5xZZtfy4h49ibbOVMMiJU
         iHWgCTuam7lZVYhfHfIB712PY22XtO8l4j5FtpRPNyJLnxrPaS/hTOMnMsizxkFAz7qS
         nT1lrahtSBjMQAxli+ZfIBa4Jn+pVy7wiAGMt7zjpV7rWgwJlko7/3Z4fh1JMk1AREhq
         j+VFPpupeGqCRLmj0XAptuCn70NzJuz5ucEKTKDghfkH9sKlklOVaLS7ezZxyeqtIu8i
         JNSXKp7aHqVo/UE2EHRfSOVFPYFiy6cqZE9/wcShPKaHXiqbfdIegPF2TqM0im3TACwM
         K0dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=xZyIIcbULkqFuqRRVCOgfB002r4JFCtYt2FmxhjIbMk=;
        b=zfBI3VfAhFjeICQd8yvUd43qdU1JXlIzyYxLjnQHfGIieYanbRjIpCU+ac68gud06A
         nUsNFBKrFOTaDvm1/2IWjMSi52V+vL5wnDmbX3CvUjt9WV7hK/MRcmhbiFw0YMUSJYVt
         ANpAHwiFTSETAUPkXfGCCBYHJ1pkRE7zFFCC6HVnhifqzNcJpzmo5kbarRfIF5c/j3rg
         4QngCZAWEV8YyF4xDiMQC73ubfwbpsoc/wwJK8ONI26XT3I1twyhA8/oUO4UJQEw9efs
         FL7V+QirJWCxIlTyXg20y+kh6+T2+2AhdBmhcN6G6gy8LWbGehtGKWD/Hi/UdBxRmgj4
         nruw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=FKeHieG6;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip23b.ess.barracuda.com (outbound-ip23b.ess.barracuda.com. [209.222.82.220])
        by gmr-mx.google.com with ESMTPS id e1si46736oti.2.2020.12.08.21.05.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 21:05:51 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) client-ip=209.222.82.220;
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173]) by mx3.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 09 Dec 2020 05:04:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sgj6qqnUOBNw0LwrxUdt6EOMrtNKHz+Q9fOndJvEtQHTwMQPlR3FOAt9Gayq38ROOtbYHyBdMGfk5RquMtx3z5TqbXMwyUbaHfouG0/4eesWXvGGwk7n5LwN1tDh6dfczp3lXBrsJ6HDHbdYt4CL8Ds9GR9faIsBJRygJms4qUcc5LZWfhv9VFbDAuBwZ8BhaNXureIyWRCOXBwKoW7BBCtyx/hBhMbXZxUxpna6T4yhFS4bW8ccUgCPx2xdGyoh52btNY3XewbwCSKqov5dS6Y8JrIzgHgW5peo+xcSLbP1XeKd4GcICn8nI+fq/8kFMWO7c5iMm5FMN6A5GqYPtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xZyIIcbULkqFuqRRVCOgfB002r4JFCtYt2FmxhjIbMk=;
 b=nLFbBI+d2LEg4pHhUMJxWxzQFnF6ReNL8SiM4Mb6MgfbjVxVqxW5FU7CiaRPmI0b2klqGEehRCWxxPYpAQxcxAdlmQ62drXvpNNsWxj78EdDtteupSZFN2uWb7Mfi/F16Gd5s3EhB/yNWp4yrKtfBOuTs86RPnmO7tbvPZsushdtrFFsKCGtItKjrI3UOBiBVKGRfFhhYEGTwesq0G/osnt7NZPZmzIGljaa3UXvnG3d+/t4l3SpdllDQB9mZHW7ha/PdAr8kbk4WWt3gk6ed8vzltuMYDXTjQsZ+D1g42LiOWEABWdVATlBj9AVn5RQKgZRz8qHmIk8Na+5zbv4Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
 by MN2PR10MB4336.namprd10.prod.outlook.com (2603:10b6:208:15f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Wed, 9 Dec
 2020 05:04:10 +0000
Received: from MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365]) by MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365%9]) with mapi id 15.20.3654.013; Wed, 9 Dec 2020
 05:04:10 +0000
From: "'Pavana Sharma' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: andrew@lunn.ch
Cc: ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	f.fainelli@gmail.com,
	gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org,
	kuba@kernel.org,
	linux-kernel@vger.kernel.org,
	lkp@intel.com,
	marek.behun@nic.cz,
	netdev@vger.kernel.org,
	pavana.sharma@digi.com,
	robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: [PATCH v11 1/4] dt-bindings: net: Add 5GBASER phy interface mode
Date: Wed,  9 Dec 2020 15:03:47 +1000
Message-Id: <0537d23a6178c8507f3fda2ab8e0140b6117ef74.1607488953.git.pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1607488953.git.pavana.sharma@digi.com>
References: <cover.1607488953.git.pavana.sharma@digi.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [203.111.5.166]
X-ClientProxiedBy: SYAPR01CA0003.ausprd01.prod.outlook.com (2603:10c6:1::15)
 To MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (203.111.5.166) by SYAPR01CA0003.ausprd01.prod.outlook.com (2603:10c6:1::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 9 Dec 2020 05:04:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 27e1fb9f-2f34-4a90-0fba-08d89bffdd3c
X-MS-TrafficTypeDiagnostic: MN2PR10MB4336:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR10MB433626C56F75D758EB50858C95CC0@MN2PR10MB4336.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gn8L3UwsviItd8wY83NP39FacYSWTA7x2x/Fqmip6eoRJ0X5vG8Tixw1vUQ5eiOXOE3PfSZYlkHo5fwuR63OzXIeDZURz439m918o+4HLG3p2ceIdQUqw3yUo9i1NAoNJJRsVR03hANE6vXM+LqhROJUZwWl3ESG8w9zD5xJJZ3ENDDq6BU3RYf7tWqClZuULumGiCu2geqsiGn/WUvodDMd6TRAxvjJtpKf5Hxj/+1i22S4p//bItp8dwdRvVh1Bs1NMjH51eGODtmqt96z/cTmaa3bWCctBqwFXYDL2ROWYMZZhhTmFRUuVI/gkH1yixB55nVnI0imPt0/5OzG/ZKv2wmFRB0bGPPxicseQYCFsDvBth6w3PCuzg3yWT3jK22gof4ygvqcHU5S3iXBB3KHPzxh6pVGGolk4Y85LnU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4174.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(136003)(376002)(4744005)(2906002)(34490700003)(66556008)(66946007)(8936002)(8676002)(6666004)(66476007)(5660300002)(508600001)(86362001)(186003)(52116002)(4326008)(36756003)(69590400008)(2616005)(6506007)(26005)(956004)(7416002)(44832011)(16526019)(6916009)(6486002)(6512007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?iGhS71eBHj6qltYCBskAF09ds9fHCUaR9OF/r55z11ZVv4qiqAijWIQfshhj?=
 =?us-ascii?Q?UOlAMOER5jVbxKj4RS+X0IFzB1rABA5qJeXviVR39BPiH6mhDNe5QNMk+mDi?=
 =?us-ascii?Q?nD1VkVfAkzJJwEofUPdE+zi0Q8QWc/vWdfIT5Kk0cjYiYuGKV7Aa0miyUQ0h?=
 =?us-ascii?Q?jU5iX2YYjAvjOgFOhbn2BA3g7Rn230YI9WWnWPF8Ez9q0Q6W479/UstSfuc3?=
 =?us-ascii?Q?SgyECnSCGsjA4ptOJ9P6Z5dlFi0FpXMqXlDiW6RIBSAVwlgfnC/8HaZnpsoN?=
 =?us-ascii?Q?Rre6ckPc6nEoaep30rZREcCnms2e3vHT0zD/CCgVHrsQ6LVqG2MAmMuApAjF?=
 =?us-ascii?Q?DYtiUmg9n3U3cHZ2ave8V4XR4or+9B5x4TO2HdwA03vHcgmj9ZFHP/mjfirC?=
 =?us-ascii?Q?Pyl8huir1bOQUr0KEg/esxU3Rh26xi7AkfcgPGWLXIALlREIK9BV5kw8SLNo?=
 =?us-ascii?Q?kihC6ed/2OEkS9n49FESC4RcKoIES72ogZ4y+f78/24+I9H71/zX/lAYg0aZ?=
 =?us-ascii?Q?YL5RcU17DE2KXL2H/tYGd/UcABM9xDG02UAVAolJ/LJifQH1aYCcjgocZz3O?=
 =?us-ascii?Q?in9NohX5eSXSF3OmvbonvId/JcDAqZF3lL828x40vr41isH/3/Tpke81WU03?=
 =?us-ascii?Q?/sNYXgrwtJdkvjZsmBmJZMBy40TiCxFIdTzIvoABYX05HTccyfCx3oP3Bzub?=
 =?us-ascii?Q?mmdEgL+Lt7xvs0jR2W8wmaKM3Wi1QhWKA6X6jZQN2AE5R4ITdBOOuUGkzDz5?=
 =?us-ascii?Q?Rkk/eyEp2mBZNEPO0yUk+MS1axwfG9z3f6hgR6S5/TdTLYs3NYQjJZF7IqK1?=
 =?us-ascii?Q?3NNZjbgkF8jwaX/Lv5GWZCQvztTUQnkE8E3SVdT6NoiEKNF7HJtmXrkWMM6D?=
 =?us-ascii?Q?KgPJPFXfgFuDlIPvFnBhNeCP+7kPzS2NaATpKw83MeQoNRjUMorL8fraAg3X?=
 =?us-ascii?Q?xjM4k6bkJsnC4kLaZeUngjLZ2Aof6HsitRNO84o9mmlMTfBdyT0i5w8LcGLH?=
 =?us-ascii?Q?ZMIA?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4174.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2020 05:04:10.3074
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: 27e1fb9f-2f34-4a90-0fba-08d89bffdd3c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oMi4swPIg6PGW9zKhVntEg/mZCGeUeIB+dFOlWH6lVGJ2CWuJIkKXjp6ORVl02VqenvZJThtPz2jAug5ZLqblQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4336
X-BESS-ID: 1607490285-893005-3817-28891-1
X-BESS-VER: 2019.1_20201208.2330
X-BESS-Apparent-Source-IP: 104.47.55.173
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.228709 [from 
	cloudscan12-219.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, MSGID_FROM_MTA_HEADER
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=FKeHieG6;       arc=pass (i=1
 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass
 fromdomain=digi.com);       spf=pass (google.com: domain of
 pavana.sharma@digi.com designates 209.222.82.220 as permitted sender)
 smtp.mailfrom=Pavana.Sharma@digi.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=digi.com
X-Original-From: Pavana Sharma <pavana.sharma@digi.com>
Reply-To: Pavana Sharma <pavana.sharma@digi.com>
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

Add 5gbase-r PHY interface mode.

Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
---
 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index fdf709817218..aa6ae7851de9 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -89,6 +89,8 @@ properties:
       - trgmii
       - 1000base-x
       - 2500base-x
+      # 5GBASE-R
+      - 5gbase-r
       - rxaui
       - xaui
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0537d23a6178c8507f3fda2ab8e0140b6117ef74.1607488953.git.pavana.sharma%40digi.com.
