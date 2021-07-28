Return-Path: <clang-built-linux+bncBDIZTUWNWICRB6URQSEAMGQE3QWU7SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 787ED3D88E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 09:36:27 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id g11-20020a25ae4b0000b02905792fb55b0bsf1851780ybe.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:36:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627457786; cv=pass;
        d=google.com; s=arc-20160816;
        b=SvlXTam8F4t7A4C6qOPaFED+45yT8RToYDC+k5nypZEsiNFae1c9VgqKXOvSMJC0Bw
         LQTXuWetQ87we5MxHmsNgjUnVkXa51K9F6Mtnogr0gFoOsX952tuNyQJKPd5DWDw6SwR
         sI1gyvaYExAcFi/1BiU6l0RptyX1EP+mQx4wFO76Kbu6ongKuY3rjmQNgV/AIvduEU1f
         eDNYfAeHB3CItPxuZhwhGhoypOM/5QEgr8p8jpQUdKPnZkiUewyV3npG0xu7CS/eQqQV
         A0Frxs9sWnUjc/LY9894Ve8ZudBVIr+EVPKAykcbOJDXmUB06fOjEHxpfOz6InF/Px7Z
         XaNg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=U3ohqPNxuxN4y1r1xAeVhpENd1FdLPEd5iaJuR4/z3M=;
        b=IVj5y2Fft2UCsmWeKHbGwa5kV+hGqoUPBR/m9fRhRNioRUEE6OfCjayCl87zgcrbXy
         LMAQxGwMm1LhEh7x2KdBEZvEaq+9bYC3fbHT8Pk9BfPDolg8vKsE6QXztsg36JWw1dWp
         lb3DV/iC2HNyTlLs/VbyUl/ivE7OyGdUFM7duTX1lps84E6cTKtrLXDrFNJiHu6/sbRF
         4RlMQEG/z8NIzyjBVK2irg5Zq+Yk0R1TluBuJIJ8qnHvkkisQHCO/+acZQ0ADzetd7IS
         Pm08XVSjzHId9Exx2XQVTLv62W2ly1wEgaT0cgbphWnTB47WBXGUaUwIO+JtezKHE+Hr
         zGSA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="gY0/+Sxg";
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ljPnWkPl;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=S9sFUDYg;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U3ohqPNxuxN4y1r1xAeVhpENd1FdLPEd5iaJuR4/z3M=;
        b=TPptQzW3Cc4BvKUOWraTM3gvXdehp7NMm5kpHIPp24qLJT8PV13AVADZzxLtJY7nCC
         /fJ+EHkP8zQCUH3/55L7OipAuxJVeTdUXvv9vVXeaUpzmqNZIActqBseFHnFvaNj67M1
         TLbrRjyxLpG4vks/+glwCKg1+ihYtUugdUNBFI4APoxC0TP6d9QVG26wz9Ey9kq1wa6w
         V7eBUpBSrGNwp/7Fu5b1dTbTWyHs5X/sDB3MdJKHUSwKfKDBkE8MZ5kAfyiNueGT021B
         pse3VG8P0b/zVGumSsJoeLlZ1c97A71UCEyHZVtYY8ObeyjYnnvpM3WWBmTRsnKjCnB4
         cffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U3ohqPNxuxN4y1r1xAeVhpENd1FdLPEd5iaJuR4/z3M=;
        b=A1CznXIi+JcTdQl3/4GKHAyPXCUoodu9F838ZwymWCBogVlWd3u7k2bnL7zJ9ODkoM
         jAHSKgSv2X6yDaqohN4TNryP8Ak3NdECj6j3Egzrqdjw3DO7ZQ1u+GVg2MFiXKZojrpo
         ZRzQsxgT6SNL6JpcX9dWUN/mu6dvcAgjvKNP8i6Adng6w51jnygoXg3dU99nv5ihwWu/
         OcazUo75RRWt0EQbgywu1rQbPSucdEiFQdFRvS4xnva/wREJxJHfLtshbKDS4Uti/Xp8
         ZItqVxyBrgiLa/H81uhZ6KB545jTvKAXwoMazkH4thal40ucCVB1KblFSfR2RPU5Jb9w
         NjVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TXl1K8aS/yONI2ucx/7B3ZIhb8zMs9c1FOLCryFavx48XrS6Z
	jPT5ZFDzN7DS7b4dLgBeAB4=
X-Google-Smtp-Source: ABdhPJzb1/FjJ3kmOwkbDIx0YWJOPUhTWJvCeKHUPYBA8FVY03YFh9tBECJwevnFGmBdFl/btDmCHw==
X-Received: by 2002:a25:c752:: with SMTP id w79mr3428206ybe.348.1627457786333;
        Wed, 28 Jul 2021 00:36:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa24:: with SMTP id s33ls868844ybi.0.gmail; Wed, 28 Jul
 2021 00:36:25 -0700 (PDT)
X-Received: by 2002:a25:b84e:: with SMTP id b14mr37099063ybm.237.1627457785875;
        Wed, 28 Jul 2021 00:36:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627457785; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/4wz85k88H1kZoQ5ER13GTRL05wt7Mp2+6ErwUpgmTNHWdyH3kYiWnp3TTovFzoLw
         rA1K6Wq+PbOhGlt9qKaF7Lnx58DpC3e2XjQCtVkYtnXuOfNoHyfJIznqJz4A1rSgwZkG
         oj4CoAJikKTRhlg403vCloNcWb5Od6LR2uHBBlJ9G3+WQl+dd64FaFRv8b9Itf5NYiiE
         YRJE3GDwyn9bWpD0S9ETkluoweRrCKgoITox6tNnDerXU0S2UaajYCPs2ouCiO7ZDsA8
         5ksemAP4O9F2j78YOz7LIFFN4p7n9xdU0KmPMz69tpLBCd4RKFoBtXbikXHbvh2vaxJn
         qCgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature;
        bh=iUyZsdg71UL/8uTbbAssii/OaMusSXBn/yn5ciEwzi8=;
        b=WSdoSTcv7B1fGeOiimQlXKvLuIN4gt4EPAx+0ytHBAIUTz/NgILMWGRW+MNi2SI/mM
         GQ3TE7jXouYC0mjxzrktgrL/91jOrK+ps0YLVHrlkUdMOanL+FeARRsjgCwKGCzfHYbo
         8qMDWpt2bpwk7PYt2b20De5+4YooGKKWeCgl8q2PwaANB1PPjIcfZvFY5iUTmTWAl+gQ
         kLaAeiwDoIdw327ArS9qErkNqId11lFeBse+2jrZXRjTzWTS6oHtfdqcvF0Gaw4ye/YX
         QF+5u7/SW1tXefqyC23jUmK95f/jFiNmlzthvN7AiMoyROGRmUkq7dRZ8YkAItAf+htF
         UnBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="gY0/+Sxg";
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ljPnWkPl;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=S9sFUDYg;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id z205si416814ybb.0.2021.07.28.00.36.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 00:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16S7Ganb006586;
	Wed, 28 Jul 2021 07:36:24 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a2jkfa0bd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 28 Jul 2021 07:36:23 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16S7Yu9I071526;
	Wed, 28 Jul 2021 07:36:23 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2109.outbound.protection.outlook.com [104.47.55.109])
	by userp3030.oracle.com with ESMTP id 3a2354m8gd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 28 Jul 2021 07:36:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ea4Zpd2uT0/uYTRhXs3Widgzk0chWwnH615aWSriqLweKkNAEPs9I0iEd2R1ReTm7RjsUYeWR/Dvgrr/LuHWHAzuQkBzodTgkmlqrbLoynyla9TcUl1CSs6z8kJ4tTsl5jK3oBmEw3t7/SP9OrIsF+4jZIHwtiIU7cT+mIpqYJhliQuGCT391Mtc6hZpbyqGQ7tVN5nwbA+F5LyPBDA/pzAexPQBdHkR7v3/a1d8wfPm204pJpmqOipOZJLugcQNF0fytomj6gIWNYY5FHKgFC1239XQxrftg077suDVIs+IJMZHD9GBA/iZoaEzZCbBWqA4YhH6nV89s56nnNi6bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iUyZsdg71UL/8uTbbAssii/OaMusSXBn/yn5ciEwzi8=;
 b=MvXVOwWYxn+jBSCwCSRikvgjxGYHNKLPSPbzN4JqiB6zIvIdlzEpjWnJ52BkTh9MOnHUlgeTQqruwJnu1ZH4hSH24b0nz0P7Bd9WWby3PuEwj7EBEDVlOc3IpdzEQFDjccCDFLBxK5Gr+TSHqUmwbVWvhwILgQ42RjV+uk361RCB6Z8TOsmWKgwro8CwGycy8ETuolJOFrV3UDGLk+Y3NpbnzJeNFP0tmY9qRjpjSWn0TDPdMSyEBGynColtfiBFGsKIRlvKXt5n3mUR0T7L0FKHt0KDvlAQpk01s0RJVND7S+jvlewh5j4I9KVTIf+PzkZJ1WHv3JQclbfwM8A2eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1823.namprd10.prod.outlook.com
 (2603:10b6:300:110::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19; Wed, 28 Jul
 2021 07:36:20 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4352.032; Wed, 28 Jul 2021
 07:36:20 +0000
Date: Wed, 28 Jul 2021 10:35:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Keith Packard <keithpac@amazon.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
        linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Message-ID: <20210728073556.GP1931@kadam>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-3-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-3-keescook@chromium.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0059.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::12)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (102.222.70.252) by JNAP275CA0059.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 07:36:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 528e340e-6c6d-45be-fef6-08d9519a6433
X-MS-TrafficTypeDiagnostic: MWHPR10MB1823:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB1823366B33655771C9EE841E8EEA9@MWHPR10MB1823.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FM5uyf1RjD2vOqO1Ar5On6BeA9zCWdiHOIvkEpC4CWwfsgWAEUydN8mhKKGRaPyeprxZNgNRUIZ/B7RRVg2DZP/3XbunLyeym+HN/GTZvrpVAfgKlIIYV86UXI25jykTsWWAPOq6gbj5yb4E2Mw3Ve+jrqKTV/AYjdazYKSkjDWpuNI08alUvKJImY+t2S69gi0f1Q1aozgSqJiXShhKEaHDDBek3hYM5+SQzj/w1dkYkIOZ/edOKUrbjc8oAWRF5iWXRkueQdIyah+r3IDADdALSUSF5aCHSL9Ft2P+pD9yoHtIhWVrGhNHU+1KwFl7UCBm0idS89Uke4FYMvg0a00M0/bazNa8AXZo09VKuxIB1I/s3kWFKd+vX4U+E2Tp8WqtBCUNoFU2/mjJECtwRRkyLlzmss3Y6cINAkDSyc9BUhEnjZ5wlDVxk5NAmjSA5QSc+ToLwB6B0GhcoDmfT4gLWkovFMM4f2IL4FDL3VhDiKQmiaLqysHe/MIYh54Ldt+iFJ7uvpGCsmrVT50A1ycxFx1dyXRPVY1A3n+AwzV9sEN2DbFHXUyewJde033S8H0FvD5DF8v0YhNpFuVue4AX38cXE3zW30upz8l9CJJ803nJyj+shMqgiyjJ+FHzfrL05o04Cxu0N8vE0oG2mfvj6OiMRMfWoGbGl+vtsuny+KmTgvj7LpOJBlYZjWTmGQeb2c6WNJXrWcYaZ0tumQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(346002)(39860400002)(376002)(136003)(86362001)(38100700002)(38350700002)(2906002)(7416002)(4326008)(9576002)(8936002)(956004)(54906003)(44832011)(6496006)(52116002)(33656002)(83380400001)(5660300002)(6916009)(316002)(186003)(26005)(6666004)(1076003)(478600001)(66476007)(66556008)(55016002)(66946007)(9686003)(33716001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xJbfF3FtviXJJGzptUJjFXQG0ZEL71Xage6OQv+rLQgb/AShBSWSw7udSdGL?=
 =?us-ascii?Q?VjtnPQxZTxiMR+Ejq3cqK42vOWLWCXZ2x9refSo/K6CALZhmuuWNXlvmUHIU?=
 =?us-ascii?Q?ZvvflN+mvzXgVpwHmMtMuO7qgocT3RXwtzIpdVIwI4Q+7ffam+Ehzm7t7pyA?=
 =?us-ascii?Q?n3vMYhnSAIQ9sxiFbLHj9c+ofTYeKYzr/JSpvPnUP4CX9410eruNbZg11Dcq?=
 =?us-ascii?Q?zzQveuHZvPUMnZFDJcom9sHtYbMljPMDrm8X9w2Aj+1BgkDlovi2Bu95zG5h?=
 =?us-ascii?Q?gUwSyTPvWi/XJp1Pc/ySUCWxLL3+bKBYbgQxSU8odmkWkBEKpvIeP2nK1Nqe?=
 =?us-ascii?Q?RulEVTjpLPss+Aqc0w3rq8EZ8qH35iq0GV7ypjpZAoqix+vyHXrv1PFaBVIq?=
 =?us-ascii?Q?tE8MjviGQIo+Xefx8EpxgUboUoO5GEpG8xKJzde8tbYHxZAQ7v5V4QYcA/r8?=
 =?us-ascii?Q?qrAySJNNFal2dhpFNCibZ2+O6065G5YIbj0YiZtSVY3SoSXEqnGBdGEbuAj6?=
 =?us-ascii?Q?18YV3bRgqM6omfKI8oLx03O/CGi7NrRD81XidG39FGVU+LglPtndsds5kkzn?=
 =?us-ascii?Q?vNUU6h1kCbrl46NnWiwoQvtWpU6AMg4UPcMDj0yJJDRXq1x8U8yVKI0VWJcY?=
 =?us-ascii?Q?BNFSeSJXSS98/WS3UEjcy9cqTVLj52A9Swh6h71fynUMqcSTcacFUNyNW1d9?=
 =?us-ascii?Q?/z4LeMu3AbDENBTV064PB+1THZl1ytGJ5lE8nVJtj7jLpoTBNA2xbMySDRzX?=
 =?us-ascii?Q?kK90lZ+DlbPK0s6Iz0sENfzmFglX1gqaYhhmnV+IN6OVm0rODZZVixAo+4En?=
 =?us-ascii?Q?mX7SDF+yf/9W+9c1mRFS+o1xXtRmaSuAcmR5mXI7FSUFCexx8qFb73JUJs8r?=
 =?us-ascii?Q?qpjEJdErskQ0cK8s+U3AK/ntAPfGeJiVTmlktylPzC0oYvlCvRb/mFQyY1/q?=
 =?us-ascii?Q?RmuHpaFBbzlRixUaWueMN4mpzp/dtUOdREc6dbtZTryUKZ/asdbqmD3SPmw+?=
 =?us-ascii?Q?NlQxzWJvnsirK98Sm7xSxu1JKVCSi5xtxWA6ZUfNkoS2C1MRqVNYpTLIeJcH?=
 =?us-ascii?Q?Cf5cnEV1aFSgi0j86h/DAnE7qkM/9hdpW2+9kBQ/Z+1EDN9+sXVsg+pzecae?=
 =?us-ascii?Q?byTib18ad4XbCnIKU+uVMEsi6/XtzO25Vn0VrBf1GshudkbnoCZLXc3amd07?=
 =?us-ascii?Q?nr7ii1vWmPBPPaIDDMQxWbLTSSLWzsqu5Y19n9v3OrZGW2Tl0/ckuN1scHo0?=
 =?us-ascii?Q?ZNwPTLeTSYG+jHgmGrdR63nEn1LU//9vgewKAsyF692qwxHLAPNRZMIE8vj1?=
 =?us-ascii?Q?R24szslkuZ2PU0FgTOM4wf/1?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 528e340e-6c6d-45be-fef6-08d9519a6433
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 07:36:20.3165
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I7VLyOuIi1yC2CeTU41RM+DLp7WL9CtA/GKmkaRbpOlNWzEyuyfTjySFjUWtX8Si+lTU1ceco2P3a3fffEZb6kXVxXd3iJfFiPXb6P7oYNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1823
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10058 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0
 suspectscore=0 phishscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107280042
X-Proofpoint-GUID: cR4q8qtkwg64r25iE_LSTBA9F0qpqnIx
X-Proofpoint-ORIG-GUID: cR4q8qtkwg64r25iE_LSTBA9F0qpqnIx
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b="gY0/+Sxg";
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=ljPnWkPl;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=S9sFUDYg;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 dan.carpenter@oracle.com designates 205.220.177.32 as permitted sender)
 smtp.mailfrom=dan.carpenter@oracle.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=oracle.com
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

On Tue, Jul 27, 2021 at 01:57:53PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> The it_present member of struct ieee80211_radiotap_header is treated as a
> flexible array (multiple u32s can be conditionally present). In order for
> memcpy() to reason (or really, not reason) about the size of operations
> against this struct, use of bytes beyond it_present need to be treated
> as part of the flexible array. Add a union/struct to contain the new
> "bitmap" member, for use with trailing presence bitmaps and arguments.
> 
> Additionally improve readability in the iterator code which walks
> through the bitmaps and arguments.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/net/ieee80211_radiotap.h | 24 ++++++++++++++++++++----
>  net/mac80211/rx.c                |  2 +-
>  net/wireless/radiotap.c          |  5 ++---
>  3 files changed, 23 insertions(+), 8 deletions(-)
> 
> diff --git a/include/net/ieee80211_radiotap.h b/include/net/ieee80211_radiotap.h
> index c0854933e24f..101c1e961032 100644
> --- a/include/net/ieee80211_radiotap.h
> +++ b/include/net/ieee80211_radiotap.h
> @@ -39,10 +39,26 @@ struct ieee80211_radiotap_header {
>  	 */
>  	__le16 it_len;
>  
> -	/**
> -	 * @it_present: (first) present word
> -	 */
> -	__le32 it_present;
> +	union {
> +		/**
> +		 * @it_present: (first) present word
> +		 */
> +		__le32 it_present;
> +
> +		struct {
> +			/* The compiler makes it difficult to overlap
> +			 * a flex-array with an existing singleton,
> +			 * so we're forced to add an empty named
> +			 * variable here.
> +			 */
> +			struct { } __unused;
> +
> +			/**
> +			 * @bitmap: all presence bitmaps
> +			 */
> +			__le32 bitmap[];
> +		};
> +	};
>  } __packed;

This patch is so confusing...

Btw, after the end of the __le32 data there is a bunch of other le64,
u8 and le16 data so the struct is not accurate or complete.

It might be better to re-write this as something like this:

diff --git a/include/net/ieee80211_radiotap.h b/include/net/ieee80211_radiotap.h
index c0854933e24f..0cb5719e9668 100644
--- a/include/net/ieee80211_radiotap.h
+++ b/include/net/ieee80211_radiotap.h
@@ -42,7 +42,10 @@ struct ieee80211_radiotap_header {
 	/**
 	 * @it_present: (first) present word
 	 */
-	__le32 it_present;
+	struct {
+		__le32 it_present;
+		char buff[];
+	} data;
 } __packed;
 
 /* version is always 0 */
diff --git a/net/mac80211/rx.c b/net/mac80211/rx.c
index 771921c057e8..9cc891364a07 100644
--- a/net/mac80211/rx.c
+++ b/net/mac80211/rx.c
@@ -328,7 +328,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 
 	rthdr = skb_push(skb, rtap_len);
 	memset(rthdr, 0, rtap_len - rtap.len - rtap.pad);
-	it_present = &rthdr->it_present;
+	it_present = (__le32 *)&rthdr->data;
 
 	/* radiotap header, set always present flags */
 	rthdr->it_len = cpu_to_le16(rtap_len);
@@ -372,7 +372,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 			ieee80211_calculate_rx_timestamp(local, status,
 							 mpdulen, 0),
 			pos);
-		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
+		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
 		pos += 8;
 	}
 
@@ -396,7 +396,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 		*pos = 0;
 	} else {
 		int shift = 0;
-		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_RATE);
+		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_RATE);
 		if (status->bw == RATE_INFO_BW_10)
 			shift = 1;
 		else if (status->bw == RATE_INFO_BW_5)
@@ -432,7 +432,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 	if (ieee80211_hw_check(&local->hw, SIGNAL_DBM) &&
 	    !(status->flag & RX_FLAG_NO_SIGNAL_VAL)) {
 		*pos = status->signal;
-		rthdr->it_present |=
+		rthdr->data.it_present |=
 			cpu_to_le32(1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL);
 		pos++;
 	}
@@ -459,7 +459,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 	if (status->encoding == RX_ENC_HT) {
 		unsigned int stbc;
 
-		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_MCS);
+		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_MCS);
 		*pos++ = local->hw.radiotap_mcs_details;
 		*pos = 0;
 		if (status->enc_flags & RX_ENC_FLAG_SHORT_GI)
@@ -482,7 +482,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 		/* ensure 4 byte alignment */
 		while ((pos - (u8 *)rthdr) & 3)
 			pos++;
-		rthdr->it_present |=
+		rthdr->data.it_present |=
 			cpu_to_le32(1 << IEEE80211_RADIOTAP_AMPDU_STATUS);
 		put_unaligned_le32(status->ampdu_reference, pos);
 		pos += 4;
@@ -510,7 +510,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 	if (status->encoding == RX_ENC_VHT) {
 		u16 known = local->hw.radiotap_vht_details;
 
-		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_VHT);
+		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_VHT);
 		put_unaligned_le16(known, pos);
 		pos += 2;
 		/* flags */
@@ -553,7 +553,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 		u16 accuracy = 0;
 		u8 flags = IEEE80211_RADIOTAP_TIMESTAMP_FLAG_32BIT;
 
-		rthdr->it_present |=
+		rthdr->data.it_present |=
 			cpu_to_le32(1 << IEEE80211_RADIOTAP_TIMESTAMP);
 
 		/* ensure 8 byte alignment */
@@ -642,7 +642,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 		/* ensure 2 byte alignment */
 		while ((pos - (u8 *)rthdr) & 1)
 			pos++;
-		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE);
+		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE);
 		memcpy(pos, &he, sizeof(he));
 		pos += sizeof(he);
 	}
@@ -652,13 +652,13 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 		/* ensure 2 byte alignment */
 		while ((pos - (u8 *)rthdr) & 1)
 			pos++;
-		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE_MU);
+		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE_MU);
 		memcpy(pos, &he_mu, sizeof(he_mu));
 		pos += sizeof(he_mu);
 	}
 
 	if (status->flag & RX_FLAG_NO_PSDU) {
-		rthdr->it_present |=
+		rthdr->data.it_present |=
 			cpu_to_le32(1 << IEEE80211_RADIOTAP_ZERO_LEN_PSDU);
 		*pos++ = status->zero_length_psdu_type;
 	}
@@ -667,7 +667,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 		/* ensure 2 byte alignment */
 		while ((pos - (u8 *)rthdr) & 1)
 			pos++;
-		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_LSIG);
+		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_LSIG);
 		memcpy(pos, &lsig, sizeof(lsig));
 		pos += sizeof(lsig);
 	}
diff --git a/net/wireless/radiotap.c b/net/wireless/radiotap.c
index 36f1b59a78bf..f7852024c011 100644
--- a/net/wireless/radiotap.c
+++ b/net/wireless/radiotap.c
@@ -114,11 +114,10 @@ int ieee80211_radiotap_iterator_init(
 	iterator->_rtheader = radiotap_header;
 	iterator->_max_length = get_unaligned_le16(&radiotap_header->it_len);
 	iterator->_arg_index = 0;
-	iterator->_bitmap_shifter = get_unaligned_le32(&radiotap_header->it_present);
+	iterator->_bitmap_shifter = get_unaligned_le32(&radiotap_header->data.it_present);
 	iterator->_arg = (uint8_t *)radiotap_header + sizeof(*radiotap_header);
 	iterator->_reset_on_ext = 0;
-	iterator->_next_bitmap = &radiotap_header->it_present;
-	iterator->_next_bitmap++;
+	iterator->_next_bitmap = (__le32 *)&radiotap_header->data.buff;
 	iterator->_vns = vns;
 	iterator->current_namespace = &radiotap_ns;
 	iterator->is_radiotap_ns = 1;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728073556.GP1931%40kadam.
