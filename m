Return-Path: <clang-built-linux+bncBAABB6NWYH7AKGQESYB7QDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC372D3A14
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 06:07:06 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id b9sf277199qvj.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 21:07:06 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607490425; cv=pass;
        d=google.com; s=arc-20160816;
        b=x/OCH37nyDYIYsWgo4oVOHEjVqmmB6lglMCR2yboi91QKzVX4BTxd4i0YmBE6geCnd
         xHkXIHtz2LFvsxREOFRKVL9AJ6+5ZHR/rsEMDAqa6iOQNaeZNXWrDrj4hLYqzVmDjb8Z
         mPhDGgLPgFxBJqKms6YVey0kE8iRg+NXmJNnvKnVl1SBxFmiGuuH22ep6cjJ9o7alegv
         79biMQOllgG8IBS/wsOwwkX3irY9XaHT0/E3vm6ggqnypuAZw3MxpnUYkrddZNY6r3vL
         vj80OxbxfOEgnbLNbP+XkXItmkBQyutn6LLQf8sH89QWdoDwYWhxe9r11vFOyopu6neX
         YKmg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=C+wU92eZpXL2diw6qIdiGK2IZ7caskrQHoNfxPzvG0s=;
        b=ZA66QjMnaQHrmiApuHrp+2AXIUbQ8YhbCOEPOHT25yD8tdqG3reDrfYWIh56xtr1Q/
         98uBiV2YsxGqGK0Z4hShw0Jqpo1Y7LT+HoVg25hTj4xGY+H+t/L6d6u+syOqWnOySfKZ
         nvpVgBnpe/hYiOqAdIqZQbtznj2nLGNVeOdgS2mUvMQFH9QbfFuQLDlcw5GaSnp8rNju
         UxOKix5FtXt3V5q0fQISGMqOhl2dSY6VslQ4wQ9Mtt2Eu12eRbjotwwrlV6/OsbfH1Wq
         TFT94thlnSrd4Qo2YsJj3tEce/117jT8Y3BSIlHvbvlZf6Ni3Ma7MuhAJjkP8Glircmf
         S/jg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=grIOONjI;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.205 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C+wU92eZpXL2diw6qIdiGK2IZ7caskrQHoNfxPzvG0s=;
        b=tEjCGl5Pg8D0z3vMQpi3Xa7BquL0isEEAlr38x2jDG8MNRbcySQhXqSsh6vY2LuzJb
         klEM1V2lGtwO2Zt5My8GcEaMUpwhCECTzkYq8E51J7NlQ+AEk3KvC8ualtpYbW9Td91f
         Y2e6CzleAWqvnuC+TnUbldABor8fp71lwQZGusst4cs9sacxJsXBhYt2uV+qespc3WGX
         buXu56P1Eo08DRL6IMNtmwaJzmK663Eo07LMz0nUHBvvf+ijiQUfNe2IbSARTM7LHXbr
         msrxfqtRqSusCORbOebIvGu4Uvx3MzKsryhukPUeKkrWBTynt6i31LDi/QLf9tsl1xIb
         3zQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C+wU92eZpXL2diw6qIdiGK2IZ7caskrQHoNfxPzvG0s=;
        b=TGeLPT6oEIf318VfcXH8cm7IBIvnv3pDJ01woeqB/YVfkJ0DROxheUPKxIPHVDv8xk
         2hSp7Gkjjnmqu7ufj0YfcnkTsVAr2xStgAOMtOWqhA4nIe6fCsm1VkJzNDZrc/bQw0oC
         V/uYy4zrM1JscQZRuSn91PvazTLZzUqeH+TJmjMZRvcpGD/cXbydai9Fls5xtYQfCelD
         Cen6fKsQxKxgNP+mCRTNp7kaDK4T0c7gnZjhyEsSVoq0v42958lzY5CgD7C/5vQDBLj5
         71mbczQlEx4pduvlIUh2z4XzDvCxBIfFFvx0vo0a0lSubZJBuBmBCuccV6t0V82SIUvw
         3SMQ==
X-Gm-Message-State: AOAM532QmDHZscy2PPwPMJ1n4aSW8ybwUGQwIqA6CNNemtwk5Sv5q+Ku
	M4TeWR9VORuNOxPCxnKTY9E=
X-Google-Smtp-Source: ABdhPJzAeHi4bJuvI/Umwx+195qjgkit8+Kr7+1L06ur49nWc1Qjp5uZLLaz+5Karp9hZmuhUD4G5g==
X-Received: by 2002:a05:6214:48:: with SMTP id c8mr1408724qvr.49.1607490425487;
        Tue, 08 Dec 2020 21:07:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edd6:: with SMTP id c205ls255916qkg.10.gmail; Tue, 08
 Dec 2020 21:07:05 -0800 (PST)
X-Received: by 2002:a37:7bc1:: with SMTP id w184mr1206919qkc.190.1607490425038;
        Tue, 08 Dec 2020 21:07:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607490425; cv=pass;
        d=google.com; s=arc-20160816;
        b=hXt8KgtNtmV9bK8u7h+GLZCn8HJY4aVqdil2NbxRiL/a+nEtODHjra6G7nE/aiCOkp
         +GG0H1Cb4Thq4tliDk3KnIfVpZoMwmwBxrOVg4DPzHFSP0LKWBL3w1vk4nO88voa1Qeq
         1L3nygVjEgswL+ofLReCvkipJNx6A2i8nU15w1wbefk44yhr79I2RtLXAp/gdd98+wN8
         e4OP8CdV09ZzPnhZBfQ5NVk4vz5pQJ+wFeUdrk5u0oIIVV18YgTLSeBCJJAy9wvCAMzm
         HReXomPLLIsGFAvIXLvoomBWK9q7kNdqlvGiWtpSi7F+n6L0hENbIFa973iZzcty8oLV
         Nqhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=mZ8CA8rrgjZJWvxzlMrPM+FkYZBMup1D7/II/L05SIE=;
        b=eM0I1RyrKXTZqaSZO+pXdgbC53EVVoz/6oEP4lw2o7u/oOAv3U4EnTEQSCa5XUm2Gd
         BWS9rDuncUdu3suFtCDX1uJUsMBQp5oQDjXaeBXC5l3H/ytTalarznQN5KfxluDy6Kpt
         AJxYYIfFTKpoNo7apNk2wgF3AoMCYrkjry2Xvyx4CHwSO7mUfcPAR+5XKJMXkcHJkC9C
         YzkXsDxDVi/KqlhwsWJtD1FiFloNwo08bN0hy4cxW9I4PE3fb7IESLY+hDVe8oaDJbeO
         u9el67tUlQWSd7shglPVuoIKGCiNlasCaYEgtnuwDwfZ210sY3mzD3ocpwx01WbCa/3T
         YOBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=grIOONjI;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.205 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip23a.ess.barracuda.com (outbound-ip23a.ess.barracuda.com. [209.222.82.205])
        by gmr-mx.google.com with ESMTPS id f21si47134qtx.5.2020.12.08.21.06.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 21:07:04 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.205 as permitted sender) client-ip=209.222.82.205;
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172]) by mx1.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 09 Dec 2020 05:05:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d6HPLvqkQV4Vn8mYEvquusAGdwZw8bpNcwOFCNWA5RQVllXjf7YCq8XLTu7KSEZSUsGKLuiJ26ktjdOkTmo1flgQW2eEP3BO0OWushgk053qPNjy52rHFChCGwWm3XO6+aBq3H9/jmK/lQhcMp2eCOf7boY32h2OYz6MIYPC0UXP/Twy+YHc9a2N0xuDn5Mzho6kcxgPRJ51Fws2o50S90BH2aXFLZpfD5C1rZvMaM8MIqa+0h0SqHBO7ib9ghVLEjGj6UcKHRQcnhxzjDWLKvleKRRk27rof9g57ZdMwiSmr5R6EV91pVIqR0kNVcg1/okHxBcZbp5nB3msmbv/YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mZ8CA8rrgjZJWvxzlMrPM+FkYZBMup1D7/II/L05SIE=;
 b=Jgk9SBSqPNTPXuU4VRoXYe2Z0xQGXnqZXeXWzqRNHkRB6fExVMMJRFS3T4ts0Zt37sobHTMVXeX1nIuw1kSQskOi+MPhcanyK8wylQz107cnDFjxoQSZFNM8g4lw65ME4nPsJGZgwBfpjRmTrKm3r1a35lIKLCR2KZ9fTrAs8eWgegrhI3apJV1BEpSe36WyuCZDz2e0RwBsAgxiA/7k49aKGJjHzCB5W2wa2P62mr4cbDuwL5AE+voQ783q3ZBHu+0KZGTWJjeCebYVzbAjcgQC+Tu4GVbSFPoIIc8935b2vmk51Y9QhOb03861lP9ujTqK/D4YiSVk+5HMVTt8/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
 by BL0PR10MB3441.namprd10.prod.outlook.com (2603:10b6:208:7f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 9 Dec
 2020 05:05:43 +0000
Received: from MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365]) by MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365%9]) with mapi id 15.20.3654.013; Wed, 9 Dec 2020
 05:05:43 +0000
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
Subject: [PATCH v11 3/4] net: dsa: mv88e6xxx: Change serdes lane parameter type  from u8 type to int
Date: Wed,  9 Dec 2020 15:05:17 +1000
Message-Id: <cc16a07f381973b0f4c987090bc307c8f854181d.1607488953.git.pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1607488953.git.pavana.sharma@digi.com>
References: <cover.1607488953.git.pavana.sharma@digi.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [203.111.5.166]
X-ClientProxiedBy: SY2PR01CA0018.ausprd01.prod.outlook.com
 (2603:10c6:1:14::30) To MN2PR10MB4174.namprd10.prod.outlook.com
 (2603:10b6:208:1dd::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (203.111.5.166) by SY2PR01CA0018.ausprd01.prod.outlook.com (2603:10c6:1:14::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 9 Dec 2020 05:05:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d3bf2347-e5b2-495b-85f0-08d89c001492
X-MS-TrafficTypeDiagnostic: BL0PR10MB3441:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR10MB3441D73C5A812A81FA78E54195CC0@BL0PR10MB3441.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LbjCq1oXQ2M31uWs3fpemvhjqBDnACuo1HAorp8BubukATmj6mDqUSIO1LxF0NXJ8FVLYV80dl+AI6bgAOAaPAYTYYbZNvAfk4AJgcPEC5fHOCL6aI/6VtPyzbrZobiRrCMqBMpKXw6gv3SOm4nIfgLxcsWousDCZdsGAIZOe+ugpp5aYPOj7Z/SOVZUgmnlWfr1lM9fDUmpuY26DooJfUEdGByjiUz7EAMvTr1SCt9NsjoFQBFmlHCWMevmf97e+tg+GZKLHWK7qbrdyUGi9EPrzGRYfXYcUdLQBinh3I09X2apJi4IjdGicUn0ql5WDVU1Ivku00h4llFpEltY7afWPrmD9phR7t1ulxO4+RF/C/hzM+/50piynyMmh1sQbaoRRHYd0kQ9EwSfdZRiIenZY7q+ycRBRD7AlM0HIFE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4174.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(136003)(346002)(36756003)(52116002)(34490700003)(956004)(2616005)(508600001)(66556008)(26005)(66476007)(6916009)(86362001)(66946007)(6666004)(8936002)(8676002)(4326008)(6486002)(16526019)(186003)(44832011)(69590400008)(5660300002)(83380400001)(30864003)(6512007)(6506007)(2906002)(7416002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?MDg1UbfrMJMZPXuuRQZE/uPa9FIBaVaVijegXNy1x0/rQJoXLlJawTLxyZhd?=
 =?us-ascii?Q?Vvp6doOvu8nMV+gobtCEpekO9TmSMog+4ZfjTmNU1rz3ohtYiPiFgDO1iZ+r?=
 =?us-ascii?Q?lrK6tcvAWY+3orEf9e8QaE/wX1Zgbnf4JvS2E8hqz2uXrAKMjKc+d2GVf8/8?=
 =?us-ascii?Q?iaRPRZcFXB0gxKXmWEvpZuA0MRDyT9/6l0EXxnOvkCflZ8gC2nbE/uclFvzF?=
 =?us-ascii?Q?y2ky90dEPy9pN82xh7ZsfW8lgv0FDgOgD2aJJIna3IDKaLswDGafQ3CoAw4V?=
 =?us-ascii?Q?/hKq9yp59UnUS3jk4mWraCiZqm5p/FoD+YZWE/W+JSj9A02r6v/yQIksAyVn?=
 =?us-ascii?Q?b6sJ8NZohX5Ts02aaH+fW6OqNDBP8CbzuyN0jGF56QAxxohqMOlz1tKMQfMI?=
 =?us-ascii?Q?Llienqx2J0wXGNl47duNfy+ykW+XOWERxj8TwU8gcxyh/mz+GyHecuRPk6SM?=
 =?us-ascii?Q?jR75qMeNhNfAtqpuIKSvV4Q5PgmaR+WzD71s22WXvzQDm/+fA+AlfncYa3s2?=
 =?us-ascii?Q?tdskUeJ5h/VuhXI+v3Le9Y7S/14X8JK72cjTPqSwwYcepSgvWLm1RSnjA6uI?=
 =?us-ascii?Q?Yyd0AqhxBxAvsvCPrgKdjuyEKvnLiJRou2XRTytCHOmSPYRKecmJw4yFCzQ9?=
 =?us-ascii?Q?a254+a3bthoxJNGFX9xuHURpz5oOGdlK7I+2qfS3pZpsvdrH2OfO7h9/Qn6M?=
 =?us-ascii?Q?emcybLylfBal+Jk4nAU2a89N5QS5qv40kmT+zgqF+PhMYaMa82000i9IT7RX?=
 =?us-ascii?Q?jVG/scl7sQFh286A9xzTG/UaYNd1habfQanmVDIyR1ThUOX99AhFvSCWzzbq?=
 =?us-ascii?Q?oRMnXWBZTYZQtySM4FiFKkE9ADxrIbguqdLZ2d59xS/YanvRuNCsI4IChRke?=
 =?us-ascii?Q?JmihjqwJUulBJ2tgFuIsroNZkbSLYFTxe8uibDWNX98pOcsriAx7VJt8ZnPR?=
 =?us-ascii?Q?jWdfPph1hk8Kk29MEypLpnd2h8eFdpdb07wDJVdwYQIAeCNUQhHqWn7DMQk8?=
 =?us-ascii?Q?BhoF?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4174.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2020 05:05:43.0740
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: d3bf2347-e5b2-495b-85f0-08d89c001492
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qLkqsEqlSOiAd3lcQ74h/rxBQFo95Hf335CdMuBc15yifMmbBf5xm066fXtS6OVc0exRpj6WBwWEflNfj7ZX8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR10MB3441
X-BESS-ID: 1607490288-893000-4814-29180-2
X-BESS-VER: 2019.3_20201208.2330
X-BESS-Apparent-Source-IP: 104.47.59.172
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.228709 [from 
	cloudscan11-70.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=MSGID_FROM_MTA_HEADER, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=grIOONjI;       arc=pass (i=1
 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass
 fromdomain=digi.com);       spf=pass (google.com: domain of
 pavana.sharma@digi.com designates 209.222.82.205 as permitted sender)
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

Returning 0 is no more an error case with MV88E6393 family
which has serdes lane numbers 0, 9 or 10.
So with this change .serdes_get_lane will return lane number
or -errno (-ENODEV or -EOPNOTSUPP).

Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c   | 28 ++++++------
 drivers/net/dsa/mv88e6xxx/chip.h   | 16 +++----
 drivers/net/dsa/mv88e6xxx/port.c   |  8 ++--
 drivers/net/dsa/mv88e6xxx/serdes.c | 72 +++++++++++++++---------------
 drivers/net/dsa/mv88e6xxx/serdes.h | 54 +++++++++++-----------
 5 files changed, 89 insertions(+), 89 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 34cca0a4b31c..367f69bd4c82 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -485,12 +485,12 @@ static int mv88e6xxx_serdes_pcs_get_state(struct dsa_switch *ds, int port,
 					  struct phylink_link_state *state)
 {
 	struct mv88e6xxx_chip *chip = ds->priv;
-	u8 lane;
+	int lane;
 	int err;
 
 	mv88e6xxx_reg_lock(chip);
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane && chip->info->ops->serdes_pcs_get_state)
+	if (lane >= 0 && chip->info->ops->serdes_pcs_get_state)
 		err = chip->info->ops->serdes_pcs_get_state(chip, port, lane,
 							    state);
 	else
@@ -506,11 +506,11 @@ static int mv88e6xxx_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
 				       const unsigned long *advertise)
 {
 	const struct mv88e6xxx_ops *ops = chip->info->ops;
-	u8 lane;
+	int lane;
 
 	if (ops->serdes_pcs_config) {
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (lane)
+		if (lane >= 0)
 			return ops->serdes_pcs_config(chip, port, lane, mode,
 						      interface, advertise);
 	}
@@ -523,14 +523,14 @@ static void mv88e6xxx_serdes_pcs_an_restart(struct dsa_switch *ds, int port)
 	struct mv88e6xxx_chip *chip = ds->priv;
 	const struct mv88e6xxx_ops *ops;
 	int err = 0;
-	u8 lane;
+	int lane;
 
 	ops = chip->info->ops;
 
 	if (ops->serdes_pcs_an_restart) {
 		mv88e6xxx_reg_lock(chip);
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (lane)
+		if (lane >= 0)
 			err = ops->serdes_pcs_an_restart(chip, port, lane);
 		mv88e6xxx_reg_unlock(chip);
 
@@ -544,11 +544,11 @@ static int mv88e6xxx_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
 					int speed, int duplex)
 {
 	const struct mv88e6xxx_ops *ops = chip->info->ops;
-	u8 lane;
+	int lane;
 
 	if (!phylink_autoneg_inband(mode) && ops->serdes_pcs_link_up) {
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (lane)
+		if (lane >= 0)
 			return ops->serdes_pcs_link_up(chip, port, lane,
 						       speed, duplex);
 	}
@@ -2424,11 +2424,11 @@ static irqreturn_t mv88e6xxx_serdes_irq_thread_fn(int irq, void *dev_id)
 	struct mv88e6xxx_chip *chip = mvp->chip;
 	irqreturn_t ret = IRQ_NONE;
 	int port = mvp->port;
-	u8 lane;
+	int lane;
 
 	mv88e6xxx_reg_lock(chip);
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane)
+	if (lane >= 0)
 		ret = mv88e6xxx_serdes_irq_status(chip, port, lane);
 	mv88e6xxx_reg_unlock(chip);
 
@@ -2436,7 +2436,7 @@ static irqreturn_t mv88e6xxx_serdes_irq_thread_fn(int irq, void *dev_id)
 }
 
 static int mv88e6xxx_serdes_irq_request(struct mv88e6xxx_chip *chip, int port,
-					u8 lane)
+					int lane)
 {
 	struct mv88e6xxx_port *dev_id = &chip->ports[port];
 	unsigned int irq;
@@ -2465,7 +2465,7 @@ static int mv88e6xxx_serdes_irq_request(struct mv88e6xxx_chip *chip, int port,
 }
 
 static int mv88e6xxx_serdes_irq_free(struct mv88e6xxx_chip *chip, int port,
-				     u8 lane)
+				     int lane)
 {
 	struct mv88e6xxx_port *dev_id = &chip->ports[port];
 	unsigned int irq = dev_id->serdes_irq;
@@ -2490,11 +2490,11 @@ static int mv88e6xxx_serdes_irq_free(struct mv88e6xxx_chip *chip, int port,
 static int mv88e6xxx_serdes_power(struct mv88e6xxx_chip *chip, int port,
 				  bool on)
 {
-	u8 lane;
+	int lane;
 	int err;
 
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (!lane)
+	if (lane < 0)
 		return 0;
 
 	if (on) {
diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index 81c244fc0419..d81f586d67e8 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.h
+++ b/drivers/net/dsa/mv88e6xxx/chip.h
@@ -506,30 +506,30 @@ struct mv88e6xxx_ops {
 	int (*mgmt_rsvd2cpu)(struct mv88e6xxx_chip *chip);
 
 	/* Power on/off a SERDES interface */
-	int (*serdes_power)(struct mv88e6xxx_chip *chip, int port, u8 lane,
+	int (*serdes_power)(struct mv88e6xxx_chip *chip, int port, int lane,
 			    bool up);
 
 	/* SERDES lane mapping */
-	u8 (*serdes_get_lane)(struct mv88e6xxx_chip *chip, int port);
+	int (*serdes_get_lane)(struct mv88e6xxx_chip *chip, int port);
 
 	int (*serdes_pcs_get_state)(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane, struct phylink_link_state *state);
+				    int lane, struct phylink_link_state *state);
 	int (*serdes_pcs_config)(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, unsigned int mode,
+				 int lane, unsigned int mode,
 				 phy_interface_t interface,
 				 const unsigned long *advertise);
 	int (*serdes_pcs_an_restart)(struct mv88e6xxx_chip *chip, int port,
-				     u8 lane);
+				     int lane);
 	int (*serdes_pcs_link_up)(struct mv88e6xxx_chip *chip, int port,
-				  u8 lane, int speed, int duplex);
+				  int lane, int speed, int duplex);
 
 	/* SERDES interrupt handling */
 	unsigned int (*serdes_irq_mapping)(struct mv88e6xxx_chip *chip,
 					   int port);
-	int (*serdes_irq_enable)(struct mv88e6xxx_chip *chip, int port, u8 lane,
+	int (*serdes_irq_enable)(struct mv88e6xxx_chip *chip, int port, int lane,
 				 bool enable);
 	irqreturn_t (*serdes_irq_status)(struct mv88e6xxx_chip *chip, int port,
-					 u8 lane);
+					 int lane);
 
 	/* Statistics from the SERDES interface */
 	int (*serdes_get_sset_count)(struct mv88e6xxx_chip *chip, int port);
diff --git a/drivers/net/dsa/mv88e6xxx/port.c b/drivers/net/dsa/mv88e6xxx/port.c
index 8128dc607cf4..8c4114d0eb4e 100644
--- a/drivers/net/dsa/mv88e6xxx/port.c
+++ b/drivers/net/dsa/mv88e6xxx/port.c
@@ -393,8 +393,8 @@ phy_interface_t mv88e6390x_port_max_speed_mode(int port)
 static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
 				    phy_interface_t mode, bool force)
 {
-	u8 lane;
 	u16 cmode;
+	int lane;
 	u16 reg;
 	int err;
 
@@ -430,7 +430,7 @@ static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
 		return 0;
 
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane) {
+	if (lane >= 0) {
 		if (chip->ports[port].serdes_irq) {
 			err = mv88e6xxx_serdes_irq_disable(chip, port, lane);
 			if (err)
@@ -459,8 +459,8 @@ static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
 		chip->ports[port].cmode = cmode;
 
 		lane = mv88e6xxx_serdes_get_lane(chip, port);
-		if (!lane)
-			return -ENODEV;
+		if (lane < 0)
+			return lane;
 
 		err = mv88e6xxx_serdes_power_up(chip, port, lane);
 		if (err)
diff --git a/drivers/net/dsa/mv88e6xxx/serdes.c b/drivers/net/dsa/mv88e6xxx/serdes.c
index 9c07b4f3d345..058cce01c01e 100644
--- a/drivers/net/dsa/mv88e6xxx/serdes.c
+++ b/drivers/net/dsa/mv88e6xxx/serdes.c
@@ -95,7 +95,7 @@ static int mv88e6xxx_serdes_pcs_get_state(struct mv88e6xxx_chip *chip,
 	return 0;
 }
 
-int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool up)
 {
 	u16 val, new_val;
@@ -117,7 +117,7 @@ int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
 }
 
 int mv88e6352_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise)
 {
@@ -166,7 +166,7 @@ int mv88e6352_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6352_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state)
+				   int lane, struct phylink_link_state *state)
 {
 	u16 lpa, status;
 	int err;
@@ -187,7 +187,7 @@ int mv88e6352_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6352_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane)
+				    int lane)
 {
 	u16 bmcr;
 	int err;
@@ -200,7 +200,7 @@ int mv88e6352_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6352_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex)
+				 int lane, int speed, int duplex)
 {
 	u16 val, bmcr;
 	int err;
@@ -230,10 +230,10 @@ int mv88e6352_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
 	return mv88e6352_serdes_write(chip, MII_BMCR, bmcr);
 }
 
-u8 mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode = chip->ports[port].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	if ((cmode == MV88E6XXX_PORT_STS_CMODE_100BASEX) ||
 	    (cmode == MV88E6XXX_PORT_STS_CMODE_1000BASEX) ||
@@ -245,7 +245,7 @@ u8 mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 
 static bool mv88e6352_port_has_serdes(struct mv88e6xxx_chip *chip, int port)
 {
-	if (mv88e6xxx_serdes_get_lane(chip, port))
+	if (mv88e6xxx_serdes_get_lane(chip, port) >= 0)
 		return true;
 
 	return false;
@@ -354,7 +354,7 @@ static void mv88e6352_serdes_irq_link(struct mv88e6xxx_chip *chip, int port)
 }
 
 irqreturn_t mv88e6352_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane)
+					int lane)
 {
 	irqreturn_t ret = IRQ_NONE;
 	u16 status;
@@ -372,7 +372,7 @@ irqreturn_t mv88e6352_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
 	return ret;
 }
 
-int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable)
 {
 	u16 val = 0;
@@ -411,10 +411,10 @@ void mv88e6352_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p)
 	}
 }
 
-u8 mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode = chip->ports[port].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	switch (port) {
 	case 5:
@@ -428,10 +428,10 @@ u8 mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 	return lane;
 }
 
-u8 mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode = chip->ports[port].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	switch (port) {
 	case 9:
@@ -451,12 +451,12 @@ u8 mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 	return lane;
 }
 
-u8 mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
+int mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 {
 	u8 cmode_port = chip->ports[port].cmode;
 	u8 cmode_port10 = chip->ports[10].cmode;
 	u8 cmode_port9 = chip->ports[9].cmode;
-	u8 lane = 0;
+	int lane = -ENODEV;
 
 	switch (port) {
 	case 2:
@@ -527,7 +527,7 @@ u8 mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
 }
 
 /* Set power up/down for 10GBASE-R and 10GBASE-X4/X2 */
-static int mv88e6390_serdes_power_10g(struct mv88e6xxx_chip *chip, u8 lane,
+static int mv88e6390_serdes_power_10g(struct mv88e6xxx_chip *chip, int lane,
 				      bool up)
 {
 	u16 val, new_val;
@@ -554,7 +554,7 @@ static int mv88e6390_serdes_power_10g(struct mv88e6xxx_chip *chip, u8 lane,
 }
 
 /* Set power up/down for SGMII and 1000Base-X */
-static int mv88e6390_serdes_power_sgmii(struct mv88e6xxx_chip *chip, u8 lane,
+static int mv88e6390_serdes_power_sgmii(struct mv88e6xxx_chip *chip, int lane,
 					bool up)
 {
 	u16 val, new_val;
@@ -590,7 +590,7 @@ static struct mv88e6390_serdes_hw_stat mv88e6390_serdes_hw_stats[] = {
 
 int mv88e6390_serdes_get_sset_count(struct mv88e6xxx_chip *chip, int port)
 {
-	if (mv88e6390_serdes_get_lane(chip, port) == 0)
+	if (mv88e6390_serdes_get_lane(chip, port) < 0)
 		return 0;
 
 	return ARRAY_SIZE(mv88e6390_serdes_hw_stats);
@@ -602,7 +602,7 @@ int mv88e6390_serdes_get_strings(struct mv88e6xxx_chip *chip,
 	struct mv88e6390_serdes_hw_stat *stat;
 	int i;
 
-	if (mv88e6390_serdes_get_lane(chip, port) == 0)
+	if (mv88e6390_serdes_get_lane(chip, port) < 0)
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(mv88e6390_serdes_hw_stats); i++) {
@@ -639,7 +639,7 @@ int mv88e6390_serdes_get_stats(struct mv88e6xxx_chip *chip, int port,
 	int i;
 
 	lane = mv88e6390_serdes_get_lane(chip, port);
-	if (lane == 0)
+	if (lane < 0)
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(mv88e6390_serdes_hw_stats); i++) {
@@ -650,7 +650,7 @@ int mv88e6390_serdes_get_stats(struct mv88e6xxx_chip *chip, int port,
 	return ARRAY_SIZE(mv88e6390_serdes_hw_stats);
 }
 
-static int mv88e6390_serdes_enable_checker(struct mv88e6xxx_chip *chip, u8 lane)
+static int mv88e6390_serdes_enable_checker(struct mv88e6xxx_chip *chip, int lane)
 {
 	u16 reg;
 	int err;
@@ -665,7 +665,7 @@ static int mv88e6390_serdes_enable_checker(struct mv88e6xxx_chip *chip, u8 lane)
 				      MV88E6390_PG_CONTROL, reg);
 }
 
-int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool up)
 {
 	u8 cmode = chip->ports[port].cmode;
@@ -690,7 +690,7 @@ int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
 }
 
 int mv88e6390_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise)
 {
@@ -749,7 +749,7 @@ int mv88e6390_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
 }
 
 static int mv88e6390_serdes_pcs_get_state_sgmii(struct mv88e6xxx_chip *chip,
-	int port, u8 lane, struct phylink_link_state *state)
+	int port, int lane, struct phylink_link_state *state)
 {
 	u16 lpa, status;
 	int err;
@@ -772,7 +772,7 @@ static int mv88e6390_serdes_pcs_get_state_sgmii(struct mv88e6xxx_chip *chip,
 }
 
 static int mv88e6390_serdes_pcs_get_state_10g(struct mv88e6xxx_chip *chip,
-	int port, u8 lane, struct phylink_link_state *state)
+	int port, int lane, struct phylink_link_state *state)
 {
 	u16 status;
 	int err;
@@ -792,7 +792,7 @@ static int mv88e6390_serdes_pcs_get_state_10g(struct mv88e6xxx_chip *chip,
 }
 
 int mv88e6390_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state)
+				   int lane, struct phylink_link_state *state)
 {
 	switch (state->interface) {
 	case PHY_INTERFACE_MODE_SGMII:
@@ -811,7 +811,7 @@ int mv88e6390_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6390_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane)
+				    int lane)
 {
 	u16 bmcr;
 	int err;
@@ -827,7 +827,7 @@ int mv88e6390_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
 }
 
 int mv88e6390_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex)
+				 int lane, int speed, int duplex)
 {
 	u16 val, bmcr;
 	int err;
@@ -861,7 +861,7 @@ int mv88e6390_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
 }
 
 static void mv88e6390_serdes_irq_link_sgmii(struct mv88e6xxx_chip *chip,
-					    int port, u8 lane)
+					    int port, int lane)
 {
 	u16 bmsr;
 	int err;
@@ -878,7 +878,7 @@ static void mv88e6390_serdes_irq_link_sgmii(struct mv88e6xxx_chip *chip,
 }
 
 static int mv88e6390_serdes_irq_enable_sgmii(struct mv88e6xxx_chip *chip,
-					     u8 lane, bool enable)
+					     int lane, bool enable)
 {
 	u16 val = 0;
 
@@ -890,7 +890,7 @@ static int mv88e6390_serdes_irq_enable_sgmii(struct mv88e6xxx_chip *chip,
 				      MV88E6390_SGMII_INT_ENABLE, val);
 }
 
-int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable)
 {
 	u8 cmode = chip->ports[port].cmode;
@@ -906,7 +906,7 @@ int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
 }
 
 static int mv88e6390_serdes_irq_status_sgmii(struct mv88e6xxx_chip *chip,
-					     u8 lane, u16 *status)
+					     int lane, u16 *status)
 {
 	int err;
 
@@ -917,7 +917,7 @@ static int mv88e6390_serdes_irq_status_sgmii(struct mv88e6xxx_chip *chip,
 }
 
 irqreturn_t mv88e6390_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane)
+					int lane)
 {
 	u8 cmode = chip->ports[port].cmode;
 	irqreturn_t ret = IRQ_NONE;
@@ -976,7 +976,7 @@ static const u16 mv88e6390_serdes_regs[] = {
 
 int mv88e6390_serdes_get_regs_len(struct mv88e6xxx_chip *chip, int port)
 {
-	if (mv88e6xxx_serdes_get_lane(chip, port) == 0)
+	if (mv88e6xxx_serdes_get_lane(chip, port) < 0)
 		return 0;
 
 	return ARRAY_SIZE(mv88e6390_serdes_regs) * sizeof(u16);
@@ -990,7 +990,7 @@ void mv88e6390_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p)
 	int i;
 
 	lane = mv88e6xxx_serdes_get_lane(chip, port);
-	if (lane == 0)
+	if (lane < 0)
 		return;
 
 	for (i = 0 ; i < ARRAY_SIZE(mv88e6390_serdes_regs); i++) {
diff --git a/drivers/net/dsa/mv88e6xxx/serdes.h b/drivers/net/dsa/mv88e6xxx/serdes.h
index 14315f26228a..ed3181e82da9 100644
--- a/drivers/net/dsa/mv88e6xxx/serdes.h
+++ b/drivers/net/dsa/mv88e6xxx/serdes.h
@@ -73,46 +73,46 @@
 #define MV88E6390_PG_CONTROL		0xf010
 #define MV88E6390_PG_CONTROL_ENABLE_PC		BIT(0)
 
-u8 mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
-u8 mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
-u8 mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
-u8 mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
+int mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port);
 int mv88e6352_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise);
 int mv88e6390_serdes_pcs_config(struct mv88e6xxx_chip *chip, int port,
-				u8 lane, unsigned int mode,
+				int lane, unsigned int mode,
 				phy_interface_t interface,
 				const unsigned long *advertise);
 int mv88e6352_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state);
+				   int lane, struct phylink_link_state *state);
 int mv88e6390_serdes_pcs_get_state(struct mv88e6xxx_chip *chip, int port,
-				   u8 lane, struct phylink_link_state *state);
+				   int lane, struct phylink_link_state *state);
 int mv88e6352_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane);
+				    int lane);
 int mv88e6390_serdes_pcs_an_restart(struct mv88e6xxx_chip *chip, int port,
-				    u8 lane);
+				    int lane);
 int mv88e6352_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex);
+				 int lane, int speed, int duplex);
 int mv88e6390_serdes_pcs_link_up(struct mv88e6xxx_chip *chip, int port,
-				 u8 lane, int speed, int duplex);
+				 int lane, int speed, int duplex);
 unsigned int mv88e6352_serdes_irq_mapping(struct mv88e6xxx_chip *chip,
 					  int port);
 unsigned int mv88e6390_serdes_irq_mapping(struct mv88e6xxx_chip *chip,
 					  int port);
-int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool on);
-int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, int lane,
 			   bool on);
-int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable);
-int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
+int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, int lane,
 				bool enable);
 irqreturn_t mv88e6352_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane);
+					int lane);
 irqreturn_t mv88e6390_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
-					u8 lane);
+					int lane);
 int mv88e6352_serdes_get_sset_count(struct mv88e6xxx_chip *chip, int port);
 int mv88e6352_serdes_get_strings(struct mv88e6xxx_chip *chip,
 				 int port, uint8_t *data);
@@ -129,18 +129,18 @@ void mv88e6352_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p);
 int mv88e6390_serdes_get_regs_len(struct mv88e6xxx_chip *chip, int port);
 void mv88e6390_serdes_get_regs(struct mv88e6xxx_chip *chip, int port, void *_p);
 
-/* Return the (first) SERDES lane address a port is using, 0 otherwise. */
-static inline u8 mv88e6xxx_serdes_get_lane(struct mv88e6xxx_chip *chip,
-					   int port)
+/* Return the (first) SERDES lane address a port is using, -errno otherwise. */
+static inline int mv88e6xxx_serdes_get_lane(struct mv88e6xxx_chip *chip,
+						int port)
 {
 	if (!chip->info->ops->serdes_get_lane)
-		return 0;
+		return -EOPNOTSUPP;
 
 	return chip->info->ops->serdes_get_lane(chip, port);
 }
 
 static inline int mv88e6xxx_serdes_power_up(struct mv88e6xxx_chip *chip,
-					    int port, u8 lane)
+					    int port, int lane)
 {
 	if (!chip->info->ops->serdes_power)
 		return -EOPNOTSUPP;
@@ -149,7 +149,7 @@ static inline int mv88e6xxx_serdes_power_up(struct mv88e6xxx_chip *chip,
 }
 
 static inline int mv88e6xxx_serdes_power_down(struct mv88e6xxx_chip *chip,
-					      int port, u8 lane)
+					      int port, int lane)
 {
 	if (!chip->info->ops->serdes_power)
 		return -EOPNOTSUPP;
@@ -167,7 +167,7 @@ mv88e6xxx_serdes_irq_mapping(struct mv88e6xxx_chip *chip, int port)
 }
 
 static inline int mv88e6xxx_serdes_irq_enable(struct mv88e6xxx_chip *chip,
-					      int port, u8 lane)
+					      int port, int lane)
 {
 	if (!chip->info->ops->serdes_irq_enable)
 		return -EOPNOTSUPP;
@@ -176,7 +176,7 @@ static inline int mv88e6xxx_serdes_irq_enable(struct mv88e6xxx_chip *chip,
 }
 
 static inline int mv88e6xxx_serdes_irq_disable(struct mv88e6xxx_chip *chip,
-					       int port, u8 lane)
+					       int port, int lane)
 {
 	if (!chip->info->ops->serdes_irq_enable)
 		return -EOPNOTSUPP;
@@ -185,7 +185,7 @@ static inline int mv88e6xxx_serdes_irq_disable(struct mv88e6xxx_chip *chip,
 }
 
 static inline irqreturn_t
-mv88e6xxx_serdes_irq_status(struct mv88e6xxx_chip *chip, int port, u8 lane)
+mv88e6xxx_serdes_irq_status(struct mv88e6xxx_chip *chip, int port, int lane)
 {
 	if (!chip->info->ops->serdes_irq_status)
 		return IRQ_NONE;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cc16a07f381973b0f4c987090bc307c8f854181d.1607488953.git.pavana.sharma%40digi.com.
