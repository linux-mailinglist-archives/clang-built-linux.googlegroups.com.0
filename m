Return-Path: <clang-built-linux+bncBAABBJOUZX7AKGQEHQNEHTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F2E2D75EE
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 13:46:30 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id g24sf6368814pgh.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 04:46:30 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607690789; cv=pass;
        d=google.com; s=arc-20160816;
        b=jJ3WeLOHhEtQAMNcW2WX3kxCtUTjtN5+t47KOLYxt1bmvvcFAMwwXaXUSzCQDXiU4R
         /0vxL8XQFke3x6hkK8P0USm05exbuK6ma4Vh4KEaXuRPJWAfnl4qsQMp0DkZx77XUbUI
         JqQlxtyKSYjix3GqhMLOvYrUJ7YKbXJHNxjYiX1UE73CTXvrwbSI1F8TGRc/RQTRIdB0
         G9LOOC2z0Mw92EDQ4QPU4RsAltxa9qlu3eYQodjGNhOlg//Lo2d9dUrvVzRTB5SKvJ5E
         CGi3oBfvQX3pOFgr95FQ95dpwRQB/qg2CP6t+5YOmL7Mn0nbtC/+NxMh+QXOYjgG8pQO
         dk9g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RrhjYduUEf+0bKsAzQqOqpM+MUF3d1QAKmahjsQMvt0=;
        b=chI7bLg05PmAwBEg7MOcLk1tpHUAbV3MMdM7I8oxRPmRPe6OQOlxBAMHEHcYVx9JwQ
         4Q5KFB5122rybHyC2wGlWhzVzr4xjvpuaG9viGwhnjQFdwmYZJvCIJTwzy/5oGjMqgyN
         G9DMIzE9Fyei2kfdfjUbJqAaz6rMRtHU7+dpGtTKwVuULqQ9XG20gfMWW/G9Pg53rtc4
         87BRUIy7O8ScYbChOxfWdXtYeHhe6U7S1DU34T5Hy/Ff8ZjbiUNDts7r8zOOxmgeq+7V
         XlDoYlC+vISf5mycYK7+lWsud7Ap3n8hKQ9f08Ofk2ANo2Bh7DKyGYKpzzPzhHbOVNWj
         9tiQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=hT8CA+up;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.221 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RrhjYduUEf+0bKsAzQqOqpM+MUF3d1QAKmahjsQMvt0=;
        b=WRKpkJoid1iraWYSzOuVcJkDaGGmjiBquZ1BUJH5LQJntSwlyiRlELPNYuVCMu/H5x
         HVZ0ABGRaFXPqPeERRhJcYBDxCLiZodQ9RTpbm4AciK63Ixe9mjhugbE+OuyxA6U9qPU
         N8k5MJTkBUvNLDk5Bz4Zt1Df+OfSZGlglcPkh3uEMnMLtIUdPYDVCA3POEYUMcrlqo1J
         JDrxTouzvc3huN0PeZKvf5NGe9pCxpPYdyHXGXmQt1hSJJk9u7CricUcsV4Bmk5I3H1t
         CaptDUfFZAF6U06t2WgyJEKOzygB5+AB44sxLDpPJ9nlFbeDtALNRIVxTHQ5Z+jE/8mJ
         E8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RrhjYduUEf+0bKsAzQqOqpM+MUF3d1QAKmahjsQMvt0=;
        b=kqgmIoErkHVw1Bet0io3ZWNuTNzA0uHSBF+eQn5KALNenNnEVsmKUws9xEeOU+CIbT
         VOg34XX1gxkVWDtHTWzcYRMQR9cbjfu4zCgY+gyQow7c4b7WSlSkzWL3SPn9QZcWvuBj
         3sPPqzFJ0QghzCk/C2Lo8lggo9SmIyUn5TW4xo4H5+TM1ttkFQO5BAEjDAswjNV4JGN6
         X6kXYrvec/Xp48axyk9oGqK/aER2YqoMFOdlonISqwjEH3lJ7S1c5qBuXCTNZZIx9LUP
         DdXT7gDQeTNRW12cgZ+lioQ7AV8Oq7f2NlzoT9WASsnRM3JGi33ox+jCngk6k1UBqXyS
         gVgw==
X-Gm-Message-State: AOAM53202JXSbA+zU921nYeAXyFlxB3+FOxpzk5TEB3S0G3zlMx0K5fL
	cooTBStFDHDy9CtVoAuAyGM=
X-Google-Smtp-Source: ABdhPJwf6oA3uAPcipXHrWfo7v3qUqeEjR+JNrBIkSJhsW6IkBAS5RNLG9GobZhKEJR6vLU3Sx62cg==
X-Received: by 2002:a17:90a:fb43:: with SMTP id iq3mr13214230pjb.175.1607690789297;
        Fri, 11 Dec 2020 04:46:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls4064577pll.0.gmail; Fri, 11
 Dec 2020 04:46:28 -0800 (PST)
X-Received: by 2002:a17:902:b616:b029:da:fcfd:7568 with SMTP id b22-20020a170902b616b02900dafcfd7568mr11024854pls.35.1607690788568;
        Fri, 11 Dec 2020 04:46:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607690788; cv=pass;
        d=google.com; s=arc-20160816;
        b=OCNkuzonXSTmp+p2nn8/MQvkpUroZ0eCy17RJd3J0YSPoyKwa6KqYrxpfgcN/szxSu
         YbfTofFnDp6zYdz2G65627CLZnx3jcWxij/paA40qL5QMWOfTNz8vkGQRO+P1Ypo04VT
         A6PFfwWu1Eg0VEwwpa4Sd6JW3IlHO6cB2Vx+B9zzLogtphH7KVL3lorEu0LXaQaCreAB
         DtjcoPrc+/+Zzr3wNEEfSInO0oyzv4+7PvZ9IEBDMa2lgNT8e7wdUlB6YVWgNC538GeT
         wESS1rPBCTp0isQQ7TOEHbxJ4STxJfEMkKP1pk1EWcCuaBu4J6260yoZWCptQO+kDMiP
         quoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=2VYc8RI1s8NXb6rHexLS6lq5tfKCHIrIhh6hpGekGhU=;
        b=wRNKofC5qCyGV3AILK79M0c6bra/i8sMLMsvCERKkeDkMSn2Swt+XmGlX8V9AsjiMb
         zV3oTj5M/ue8w6L3PN7TkrxUNpLA6Ym8fA+efwiAyOHO+amqtgSDUm+Toe8MKG6hWFuY
         +nWOCsDinCJ5Y1ynbtBFom+ZOA82ODLXPR2kDzdPED/AKkPo8vh4n0RTd+9U9FxP8N5l
         bY6VEzBc3195NI2lKlL67SzyP3OodwdJpvJ8l9HphDBZP90AACwPsCaPkp5UNoFFKrdk
         rvfo46zgPS8bi5jOhk8vFoH+HeZmZJWbyOuZI+r/VHSBtI5PrFxhaF4jqxZPbiWOx4BG
         pD4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=hT8CA+up;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.221 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip24b.ess.barracuda.com (outbound-ip24b.ess.barracuda.com. [209.222.82.221])
        by gmr-mx.google.com with ESMTPS id e19si724002pgv.4.2020.12.11.04.46.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 04:46:28 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.221 as permitted sender) client-ip=209.222.82.221;
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-bl2nam02lp2059.outbound.protection.outlook.com [104.47.38.59]) by mx6.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 11 Dec 2020 12:45:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fs1TpwVSeaLpGab+XO+EtjRAqy2lk0ycwo5WPHqapWu85SuVkJ7DCHoR9K1CptIM0TjzOaEq8coXcXXf76m57hpHuHG15Q6lA3lgMEajtNEYg0pHBhlPTxvP6+0FshuarsKTf2Zv6Cg3gPM3mN4gnL06o/MX4FxsPmIy8ks/OKbRe0a4DwTuQfvtzOzgZtrdQruEcgVRY+F0YVGlBqHnXWIplGWK+bzZ1mBusN/3+vMYGF3iYthotUOr9pDoq0tzglCmfLW6lqQSMgML4SpKWqcqaR6PP4v7lIjc2iQODhLnl8bcofAmfQf2LRZG05Cv8CJ1ldLXg976IV2IQxjdSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2VYc8RI1s8NXb6rHexLS6lq5tfKCHIrIhh6hpGekGhU=;
 b=dTdYded6uWsr2bqoS888lyFz1GuBE0XRrvDS5llVX0ijejdfn+7wxHevTANPsmG4nBzL4lafIXBe+Fb4sTZyo918TCxXhLs4txYvKhLf53CxG6AfwMDWUIwePcRbKlga5FeQmatd96K4wfGT7UBVacO+1fT+XEGhKZ8uQsRxPVzmlpMplaREgRCxPLhsJcbnunT/v/Q1DFSXtf5lc8xVdp9PZb2I/9+2IH4THO7nbIAG3nypsrX0Vp1Slz+Q+HXpE0BLV/ZVKhJnDIzDp/pOa9RT2MRUSI2FKWQ7RFhPpn3KI4IlQ1zuChYd+WV8E7mqcM9WyusAbZOijSYdtkDzIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
 by MN2PR10MB4384.namprd10.prod.outlook.com (2603:10b6:208:198::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Fri, 11 Dec
 2020 12:45:02 +0000
Received: from MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365]) by MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365%9]) with mapi id 15.20.3654.019; Fri, 11 Dec 2020
 12:45:01 +0000
From: "'Pavana Sharma' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kuba@kernel.org
Cc: andrew@lunn.ch,
	ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	f.fainelli@gmail.com,
	gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	lkp@intel.com,
	marek.behun@nic.cz,
	netdev@vger.kernel.org,
	pavana.sharma@digi.com,
	robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: [net-next PATCH v12 0/4] Add support for mv88e6393x family of Marvell
Date: Fri, 11 Dec 2020 22:44:36 +1000
Message-Id: <cover.1607685096.git.pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201209113727.1b4bd319@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
References: <20201209113727.1b4bd319@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [220.244.12.163]
X-ClientProxiedBy: SY6PR01CA0016.ausprd01.prod.outlook.com
 (2603:10c6:10:e8::21) To MN2PR10MB4174.namprd10.prod.outlook.com
 (2603:10b6:208:1dd::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (220.244.12.163) by SY6PR01CA0016.ausprd01.prod.outlook.com (2603:10c6:10:e8::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 12:44:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58d6b36d-8af8-4611-01f6-08d89dd29386
X-MS-TrafficTypeDiagnostic: MN2PR10MB4384:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR10MB438463CAB86D48AEBCFD7E9395CA0@MN2PR10MB4384.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SLptp7FDPnwRigwRRzM5rmQTj4rk1LKI5vMWY72PhrFlebZ0qO0bEvfLzQ/GjtcRkvKPhfOlyAkLqwY+kIBFfultN4OqLJQB2njRPyM6/DJIE5KATkrn8nUyHqbFeUriNwxIeg+ftxrYXpC+tyJ3Gf828KEZg4O44OPQ8V1bp7YMhbVCBCJYz4REBgmDf7Ve4y4MMUFS3AoTOkOntd+1gkOHuQhrnfmHc5I1S5rOmXobzACZp8HovBWZcrDhzZPTB3t5V8LH2e9byk8CPu+PoUGa0TTALKpJ3CVsRjUV0Ej4Mo+7SjwMPtbxv7mX4f1jtBMT9KR/O94GJ5eqFEs+pNG5A/ku+khQdLXAu9D9OsmYmdOmOnD2/GZSlDxkfasU3OQfAOre3EfGy9A9Uej2J0wc/G/BI1G1VFeN/11dERk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4174.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(366004)(5660300002)(69590400008)(86362001)(508600001)(83380400001)(66556008)(4326008)(7416002)(8676002)(36756003)(956004)(26005)(52116002)(6916009)(16526019)(6486002)(186003)(6512007)(6506007)(44832011)(66476007)(8936002)(2616005)(4744005)(34490700003)(2906002)(6666004)(66946007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?nUsOB0XLMV2+vgn2LD20fOYpjU+yRUNmx2VE1YrQs+WuwFBkHbAiF5eWbtGt?=
 =?us-ascii?Q?bonoGrCVRkmH8/qIPBNN98DCwg2dPPcPc1FlCs7ne/tbrzOzn/MKRCbdkyP5?=
 =?us-ascii?Q?p6MAd7ZdsxwOEIHCE1f/4wKh+xROav4MOa8JEK9Eli1NJyvKXnxp+W0R00ik?=
 =?us-ascii?Q?3GYd6+dVtsFfdaiSULs0jCi14oQuN8fcbGjHq5c9exel26o7a1pKjt+xfHzn?=
 =?us-ascii?Q?zdrqto9C1FOV6bp1Vhe2/MQ1pUMAkjRzo83I7xMT91sKn0Ozexa4qHc17k2i?=
 =?us-ascii?Q?CYDoBJYjPWsOE66RwynYXB62OtnyWmK+XgQS9mkK3IZBLaHfMkMdF5DNroVE?=
 =?us-ascii?Q?dMk73rr9mILbejm0f0wcaCE6Du1h6K3inN1WqlsCTf5YGH0yniDK5dAO6PkL?=
 =?us-ascii?Q?I3Zo65tmZ7lnK9PbvzRPkm4kOSY5xjERn+YPqDEHfnVsf5uMMWDfCxLDjjN4?=
 =?us-ascii?Q?85TdtRvEYa4vTLO/DwcUv56yq4sHNMQx8A7y1DlH7lkniNrWi1MAv5nIuI47?=
 =?us-ascii?Q?TGa3CJ5efZCH1m/YGX6btNJKfxIME5apkyxInwRCmNk5SNdF/2upfFoxeS0w?=
 =?us-ascii?Q?Kl7k7TYZu9O88IAWFDHtbl43T3xMCaoLaONxIoY6okCfZfQvfLb+oRKN0kYE?=
 =?us-ascii?Q?bKkKoi7NREYTeiJNbRMK2Y1p90J+Rm/bL9bVDowxZA0ewVa4mDQWo17+f95a?=
 =?us-ascii?Q?GYHPBZgRvOQ5DbjY0XXXQ75rah22g/bF+iJyn3grZfccJOuXkzmQFhxJnbkT?=
 =?us-ascii?Q?oXVY/Ce/inEyngkuC7HoWZFRAGEolw+Chee2OunbnvqLg4AUf2LKB3hSJb+i?=
 =?us-ascii?Q?00bwJ0wf0iVB286BU85vC4rBB5bGSAWdDKxfHAfg2slT7+jp+VtRaOq/Fx0s?=
 =?us-ascii?Q?MGT+f9ci9O0+NXRVqnBKSttS6NmQ9F6zTuQjt7K5+qkIbaKeapiOIrNZwpYj?=
 =?us-ascii?Q?lh+Q8Pt+GMm/Ks8QuZDoShXwnyt158np5EnJcRtYFqBGTBLHX2aZls4auIPT?=
 =?us-ascii?Q?RYMv?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4174.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 12:45:01.3883
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d6b36d-8af8-4611-01f6-08d89dd29386
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iwbx9OdY0j1mhx6fLK0nrT7X0vT2eItuChQICD0gwxTTGzRlas+YH5mr+KMh1DjTRiUx9rpOqi7MznujiHSMoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4384
X-BESS-ID: 1607690704-893011-7238-10841-1
X-BESS-VER: 2019.1_20201210.2155
X-BESS-Apparent-Source-IP: 104.47.38.59
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.228760 [from 
	cloudscan14-79.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, MSGID_FROM_MTA_HEADER
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=hT8CA+up;       arc=pass (i=1
 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass
 fromdomain=digi.com);       spf=pass (google.com: domain of
 pavana.sharma@digi.com designates 209.222.82.221 as permitted sender)
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

Updated patchset after rebasing and incorporating feedback.

Pavana Sharma (4):
  dt-bindings: net: Add 5GBASER phy interface mode
  net: phy: Add 5GBASER interface mode
  net: dsa: mv88e6xxx: Change serdes lane parameter type  from u8 type
    to int
  net: dsa: mv88e6xxx: Add support for mv88e6393x  family of Marvell

 .../bindings/net/ethernet-controller.yaml     |   1 +
 drivers/net/dsa/mv88e6xxx/chip.c              | 164 +++++++++-
 drivers/net/dsa/mv88e6xxx/chip.h              |  20 +-
 drivers/net/dsa/mv88e6xxx/global1.h           |   2 +
 drivers/net/dsa/mv88e6xxx/global2.h           |   8 +
 drivers/net/dsa/mv88e6xxx/port.c              | 238 +++++++++++++-
 drivers/net/dsa/mv88e6xxx/port.h              |  43 ++-
 drivers/net/dsa/mv88e6xxx/serdes.c            | 309 +++++++++++++++---
 drivers/net/dsa/mv88e6xxx/serdes.h            | 103 ++++--
 include/linux/phy.h                           |   4 +
 10 files changed, 791 insertions(+), 101 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1607685096.git.pavana.sharma%40digi.com.
