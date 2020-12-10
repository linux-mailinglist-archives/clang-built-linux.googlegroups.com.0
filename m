Return-Path: <clang-built-linux+bncBAABBGGOZD7AKGQED6H2XXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EB72D5C32
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 14:48:09 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id a13sf6851289ybj.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 05:48:09 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607608088; cv=pass;
        d=google.com; s=arc-20160816;
        b=EyH8Y/mKWvXgslq4PFts9SHrKQI8q9nwZPPypH1YldJ//fUTZd2wQ44wjnJ28PHnJV
         Rk44IIMD0T/WjTLnTW0ZzbBIL82V264qP9Lt88qxgjzHo0FBqM8M24iRv7PTTMvarSQE
         whgCsfCr8S7aijuBe6XA0wBX2Q9RuReWon7r1kokYlWh5JsTPW12vhBuIOHLBldOrruQ
         Ldi9Z8chq2/60+coLkAfIS8b5ZD3Qht4CLs68MdK633Zah2WnY2jLCTv6ytS/gOosCEo
         DaabjqAFA70mCd5Hf085Xvuw9aCQ98bHZaApB9NvwJ3GcjmZ65SWNbevi/ixV170Zs2T
         yM2g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=biezLqCQGOBwL7M/T4tgFvh1ORJ6V35ZuamJsa6Yi/k=;
        b=ckYlapmF2H4c7Ck6UUpxr8E1Qt+HP6ejdvqVCnFKLhKieIVfhc9RXcrOdKD6Yei37N
         jHX8YLXjAAt+ZcGDPiLTNMj2lEsxHZ4SLuzTfpUhs3G1YqyJ6KHGCdd3OuiY6MaBvA8u
         xHDysUUaR7RS92Xwe1+paNtlYHRPd3+BBo7iVfwoXR7kTNow7GitSr1VSfHcR8+r7Ms7
         BuwEaK1Z08H6QbJ/2cy0S1iOWQXJOPf2YmBzSZhIzzRrdG/y4V3EEsH+igANdBUiEz9O
         9paR39812Evc8EdIxs281QW92Sxa9EmQ2613LpyZeHLpY8VrhiYqGBOs3/R1HqER3P5y
         LsDA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=G5tqxCNx;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=biezLqCQGOBwL7M/T4tgFvh1ORJ6V35ZuamJsa6Yi/k=;
        b=gmGhZ6q6iMwREpsjrfy3fxiL65sEGTQw6q+p2nrOMZ86DiRBzI+WkxCI9OHR+iyr0E
         nZmcvhijWTO2bSTZvptVMWsr1LZqpzblAb+S0hikvJjn4WBtvzPEiclxb9bjiWZn0qkb
         u+XOm3TWT0Mx+lh9lDWDke1CrNytNoHYijysY3d7suR9uSJo7c+7ESqCL5sYBQsB82Xt
         q6saV+n4AGPfB4hLJwZ/Bc9MFZ5CF+lxlApqbZm5Qj0YxbViwKoSBNFrqPBTrxZTNkzC
         B1vnyzg5G+U5Dj1Oz5Vx1M3djQ9bTzSodTgOmBfPdmdtb54ps3K3sNy2rkVbJc2AcCmE
         Cukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=biezLqCQGOBwL7M/T4tgFvh1ORJ6V35ZuamJsa6Yi/k=;
        b=P9PUo7UJQNkbr8GayBR605HduoxilbbIdIg0UrZgMz7XT1L3kO9GFTsP1X54IScf5c
         ohXaxlyqyH6PkVYQEe5MN1HLYRThFBXgpCqLuaUSbxTEl5r/njeIBe+JWpL3oPHWQSbW
         RGnszqaBi5rWAXsY77RoVMYbiMapb6GS/37Pl2AzUxsaN2IINST/eZID0oEXpXLB5NKX
         m0feGX0XRGZzFjelmmb7APIJcrPu+UovqSGb3LQ2To6Ngasy3CK6W+2xD1JfIYwBIqtY
         vDZhpTGHT44Xb3zMYFH2fQAQ59EShxZ73KVdoQv2F4MN4cCWpqwQ9fOifMhcb8sx5XRw
         8NTw==
X-Gm-Message-State: AOAM531dn0hia2Bb7KnMjbZmt/JtqklIlkMxtkCkNb0ZcjzLd7SXD+3F
	sWLPB84hNGWcp9SFOuyMxTM=
X-Google-Smtp-Source: ABdhPJx/+2Vie/F6B4uhOIiPSARAl9gqqPVotha34VIXIUdTmHX8r98SrZtIsc+dowwaGCVgh9GvkQ==
X-Received: by 2002:a25:68cc:: with SMTP id d195mr10276596ybc.424.1607608088497;
        Thu, 10 Dec 2020 05:48:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ce49:: with SMTP id x70ls2555199ybe.4.gmail; Thu, 10 Dec
 2020 05:48:08 -0800 (PST)
X-Received: by 2002:a25:16c4:: with SMTP id 187mr10441236ybw.39.1607608087957;
        Thu, 10 Dec 2020 05:48:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607608087; cv=pass;
        d=google.com; s=arc-20160816;
        b=F3n33IKZs0eZcakN1fwJkdV74+ZoqcfuH3vpAoRDIihuFDcA3A8g+yHYfb5RaNPljw
         n4/1NVmX0PM9R6ked2JsZdYZKGe8LputNOVIW0ppzm4dwJfSVDDCIf8ZSZzIxyFwFQjM
         V9ijkCCnVt+MA2twsVn5OvclJVkGS8wPe9CpL+K3CUWeXa/P0MpghUd7wVhQ2dHp8whE
         DKDSSIBvulA0ymXIc9GsBABUfw8w8A2EOxd1oALNfQIjwjOUG7epbWLfko2qxu7pnnkl
         pJML8w9O4FVQ+7lge/Pq6MzbHAwb+SGrAp0inV7JDd2g5Xn+6k2KbNX638dScxBIEPsV
         yKSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=mifXxRPNSb/Hcp/k1oz5Pj4HZF0OlUG7nMJUhMoDwlY=;
        b=W0kDIAgYDSFgNwf3dOiOj73SPXUuMlEpFMiLzO/CqK9p9l1y+8UfVvkFxScyDqIpPp
         eG/J69pCc6yT2meEarbvqqXBit06exgxIDWT6yXULq2JRlfnrNYKCRusP1B/HAFNcplL
         YdSr23Hr7/VykXJJwRjKF0zKLTZsPMmJ+NYFoZJ+5+ZHg11KbHV9/R1nXytXXWR8bfs4
         h89NJxoP2a9M7sIvxBDU6f1A15/InSYaPALyEW/ZqVaMzLG0Z70px5O/hDPipsy6ItyZ
         38Lq9azMPNd8TBGB802ZCDiw66W8tMDXx2ce9e3PrM3XLQesAAhkwQYiiS8qGOR2S00r
         jZRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=G5tqxCNx;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip23b.ess.barracuda.com (outbound-ip23b.ess.barracuda.com. [209.222.82.220])
        by gmr-mx.google.com with ESMTPS id x14si502558ybk.2.2020.12.10.05.48.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 05:48:07 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) client-ip=209.222.82.220;
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (mail-cys01nam02lp2055.outbound.protection.outlook.com [104.47.37.55]) by mx11.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 10 Dec 2020 13:44:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nn19zBwh+TjXA9U4gEuWx5fYo89tAjNFn9CxQ5GjLaKSmc4gdxNcYweJo8oQYlgHcF1oQTgoE1Nu8Ec2X1sljEGnlr50UxSlOTi/3lHOt8F1lb6lPzhbWi0SZu8SFlFdK/35UKWgEiidWbYJ1BaZtLhaoLQW1fBoS2TF6idnNgbfultgIcZODbZdJpLWdGWs8v5HUOzxeJp+VrnlWWt6M0lFAG1QVyuVSbd04whKEyrHtOS01FO+tQ7nKkVjPc+MvbDJIh+GLEq4x88M0yChkIIe4e9jkQFnHBsDdt5XoTU5kWvL7gu3q9UrtYx5G3KUpP1/2C15NihPC4EZLM625w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mifXxRPNSb/Hcp/k1oz5Pj4HZF0OlUG7nMJUhMoDwlY=;
 b=HrFxIK0wFUNbfgB9W2PSnzImhonXVMRHAeW9sMC3luLO2NT2p7GsYG1Fg6cclOSG1zNjGcgUsAAImAS0p+NbqmB3bkS20XwuOt3TqIjMPBh+AF05jHEUEQDSVYQosmOzKwmEq+tdYfEeuZOxVniQUqWzn3CAO3yPff0pF+gvwIS7UDXatwayDoRHx1ZtCQEHlc4G+KwhjR2On8vZEd/q7HsoOZwz/x2aibTuUSAjT1HG6+T5gWafJEqbrCywzmM2x4DiBumtkvhVFH9x0BK228D4qLTXqvUQ5KXtPgkJvr4V2LXUvTeeaMX+ITGtVHA2qkfdnuTF2ojhUrvBFL7HLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
 by MN2PR10MB4304.namprd10.prod.outlook.com (2603:10b6:208:1d0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Thu, 10 Dec
 2020 13:44:01 +0000
Received: from MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365]) by MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365%9]) with mapi id 15.20.3654.013; Thu, 10 Dec 2020
 13:44:00 +0000
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
Date: Thu, 10 Dec 2020 23:43:29 +1000
Message-Id: <20201210134329.25200-1-pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201209231512.GF2649111@lunn.ch>
References: <20201209231512.GF2649111@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [203.111.5.166]
X-ClientProxiedBy: SYCPR01CA0022.ausprd01.prod.outlook.com
 (2603:10c6:10:31::34) To MN2PR10MB4174.namprd10.prod.outlook.com
 (2603:10b6:208:1dd::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (203.111.5.166) by SYCPR01CA0022.ausprd01.prod.outlook.com (2603:10c6:10:31::34) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Thu, 10 Dec 2020 13:43:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f314a665-0647-4bc7-8bd6-08d89d11a6af
X-MS-TrafficTypeDiagnostic: MN2PR10MB4304:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR10MB4304BA3ACD44530E49B47DB995CB0@MN2PR10MB4304.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c7PX/vFPJN+PoqDZUU6mA1T6zpkzhKd0Otq4I2i4A387v01UVrlQxS8llWvwzdMK6lUwuv7olnjAbrJXlv3sJWtNu7INd3y3eFy2TnSJbFgSau+SNd8C57ub6egQPzo2AivC0vrEmCXrtPA++wXGdt+wfRAYxiEytYLPNIb3G4+LNTIOznpby5eIed1zB0sp/52+XXbvdi8637YFeJLoG+fx/MaN3/5k4DQzuco4Cl8AhVDjZrwnvpMPFLmck+N7yRwUrqPApX4Iq3seTwDAF8ZGkC/po2j/DPSMhWTFuj+fT4IVVNGpEJZBhNyn/ZTAuGz0TSCFMvWm44ueyiys9EJgKk/WUPbSfhIgFyPm957hXPjKaLdn7JTOIK4VYoNBiZjj+ZJOBlnF1CH6BZHr5PMZBJsSbgWlSNwbfXFRTIA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4174.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(346002)(16526019)(6512007)(52116002)(26005)(7416002)(4326008)(66946007)(66476007)(69590400008)(186003)(6486002)(36756003)(66556008)(8936002)(44832011)(86362001)(4744005)(2616005)(5660300002)(34490700003)(6506007)(2906002)(6916009)(8676002)(1076003)(508600001)(956004)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?ZSqg5eWat6j2KKZ5I93XVbDvRZTZCy4VdQBAwhygNIbxAngOkx4gwUVc5hXy?=
 =?us-ascii?Q?tQqd0oUoMzzocR9S/+mxM29ENuyh8+qUfo8YgXVNpvw+OwWyWtVbRolMz1MJ?=
 =?us-ascii?Q?+Dve9AN8V6CTYynfDgaNF4SD6xsEG134OP+tMVNRTIClN6+h/h0mF+4mttu1?=
 =?us-ascii?Q?Pslm1/n8KyU53wW9rYOWQDk82O+PeghNH6Ak1dyogbDUtM1EGLh15kuCb+ad?=
 =?us-ascii?Q?Rl5qUcIRhEJHuZB3zPE+FmnKu8SHZhQDGmgFRG+EqKjfoBQMGwejCDgr+0tV?=
 =?us-ascii?Q?i323hPfCyC7rMm0kdhAJlmKLzyDfFlqjJyelhHcfGVu/2O8pG7Y+53ys7krH?=
 =?us-ascii?Q?oyMKrSdFFPjV7gW8bQmNJDQdJfXdkYD2tuDEoEBZB3n9s/9Piz/w3kMqIV0l?=
 =?us-ascii?Q?d9FfT2yyLXT41xKirADyMXV2QZrJRvZpTNZmtBtR9/0DP9JJ9j6nY+iSqqXS?=
 =?us-ascii?Q?XXdxd0KmUpKzM3YZ+ulEGHbKHuF4MRr9Ijr0+JGlARQ2Gv51icWIjuT7E0dq?=
 =?us-ascii?Q?yKCViYYCBUSoKcajn+XPLPWCyXD8SnHEjwQ2nKBj3diZo+0DCzDazlS/Tug0?=
 =?us-ascii?Q?tE2aVCCvaSiuYda8A6kp6A3I29gcVa/202gqZs2tnmGr7iF+3XOv16cVA/bJ?=
 =?us-ascii?Q?8uo0TQjJ+L9mzGPt5PLQiARoD6A9qcLksUeb/oeXfMu+4X2SRGjApltL2aiP?=
 =?us-ascii?Q?yZSplZK1oxcA1Z38JT52wnbfBzj4unCGkN5RjRE60lzLb+PE45auRYV7oZvB?=
 =?us-ascii?Q?Zw2YMkFcGq46lKX+SFWoB63fc0VXe1/y72VQdJlJzdOb6L0INAciqP9rdzhI?=
 =?us-ascii?Q?xfj7k6FCRiu+sIss6IdwQff7HJQTRCFD0IPgGFEeD09ZsIdB5eLH05j++2TS?=
 =?us-ascii?Q?kiNZbNuHI5d3HGM3pLks6lufz6Dk0J8ONgr8NZjYHO+ReAp1XPYt7mcRDidh?=
 =?us-ascii?Q?hqSJZvswc003y5KXK8wdE1mgO+AzSTo+yg+vB75hf6+E000JK6YHA1EMZO4t?=
 =?us-ascii?Q?lwe5?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4174.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2020 13:44:00.8347
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: f314a665-0647-4bc7-8bd6-08d89d11a6af
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2lm5wtn1qrf9FineqjOl0UG9NZifduHsIdCciyPTc5fQNv0YDB/i4at8SR2UuDo9iOoQOYQxjDvxLfb3zuFhLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4304
X-BESS-ID: 1607607842-893021-7403-6361-1
X-BESS-VER: 2019.1_20201208.2330
X-BESS-Apparent-Source-IP: 104.47.37.55
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.228739 [from 
	cloudscan10-15.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, MSGID_FROM_MTA_HEADER
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=G5tqxCNx;       arc=pass (i=1
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

Hi Andrew,

> For v10 i said:

> > What value does the comment add?

> I don't remember you replying. Why is 5gbase-r special and it needs a
> comment, saying the same thing in CAPS LETTERS? What value is there in
> the CAPS LETTERS string?

There isn't anything special regarding 5gbase-r apart from another supported
speed.
So, I will remove the comment from [PATCH 1 & 2] and keep it similar to other
(1000/2500) speed options.

Thanks,
Pavana

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201210134329.25200-1-pavana.sharma%40digi.com.
