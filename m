Return-Path: <clang-built-linux+bncBCN77QHK3UIBBINIWCCAMGQEDFCGK3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2800936FC5F
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 16:28:50 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id o6-20020a0ccb060000b02901c0933b76e1sf5946864qvk.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 07:28:50 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1619792929; cv=pass;
        d=google.com; s=arc-20160816;
        b=1ILdujy7S31xRwfXslNOMI8ygq7NSMmpIbfhaKheBBdRmfq9Gz0AiOR1mQ7+PFcc8a
         teAWN/zvvS0uxU+dtYs5wLrp0mP52G3qs8sLPKe+OEMEdTuICxMg3konyydxrNXKSDQ+
         GGwy2oVhNowaP3P1GAQu5OkA0j4/8/ldFg8OxXVb6jp9DzAOHoJStm2rkweNYPRY7xVT
         lS8MAbTt2VlCa39gOJzbJpoIYEyzLB8evzaatYmR0UEM2BudEKVtfp+N91IhiRa1aOki
         qoYnYwhBEoUdk3HlVMO714ZUgdA3bZAOogwe+vzLyLP1WpE4B+RGLmVPcGt7re5U+g/4
         +zaQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=wX8g0eh2s62lK408wCtLAjUY/MDLRm42V0rCJDydtwk=;
        b=LKUrev0+RZHPcCgTL33AKLW9eWMQh6IGB1js12NYBbxhyHvIAf1y9+xGPFtb63GFAy
         F7YjXSc/OFEbFA+seBh9M92WylkEcH00MabMMgnEJI9kd49Slq449faFvo/KwEQICJgW
         aPQFHQmdq8Eq4PNXKd5QdRBDIPpl7298aSA6AgfVi1WeEIsZmEvLtdArjAM5DzmMmu6m
         aDZjGZI+6ER9OLEME6AyRE0iopcn1VBkxJ+pAjQ+B6BuZwqszH4LmM92AG0JWlTP6aIt
         srm4MyuxlezruMpSO7DaY+6bZ/2rJlpA4n9JiM5QOO6T6Kbkt2oTz4YPxmqlKlKE8uCw
         UcfA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=dC2nl8Hj;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.237.82 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wX8g0eh2s62lK408wCtLAjUY/MDLRm42V0rCJDydtwk=;
        b=Cq0QRLRX6PL43LlA1UMzAGHmDunv2XuXGup9vS2OX/25Xp+gLNlVVv0K/ljKXD5Ck4
         LukYe82cLBeIAtQZvt1Na01bcXOoIt/GYt0DmvEh03AGRxB8uIzoiyEAAxYgJCjOxWTm
         48VmhV3glMxaneuCHTpUdFkqNfQ1I77mzoyDpVhVsXhPcLPH7lRNMmi38V954aTQ7irx
         GwS9YSuqvwFZWeZSEYK2Gzd1Qitd7kkRJOX1MXk2s4XnsMtRqgX0F9TpUjlwMxGMH+xU
         OWJtUMQVWXJXo9X05N/RlPp5mCkN0VdRBo9XGEQ4caXdq8rugQk6whmoOBL82nP2SKkx
         oU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wX8g0eh2s62lK408wCtLAjUY/MDLRm42V0rCJDydtwk=;
        b=Q1uebFDnJACSpLdc9Z7CfMSz1VSrBkLQTwQrOOmaNrtEE0L1wNPolm1l6AElOuLXmb
         H0Z2yhN70L+mSckjYU5oMv6sVMYB646cjaKyfsw/5Sls1W/TM0WA3umZQ4vAO/0vZJzx
         StYNaD2h8KzwInLTIgsI4miM+kw33rKvoPtJnlTVQtVA/QgRzpWTwfnqN54eSMmgzMHQ
         jhJU88vMPpgOZSq+OGPtxl2kXq4oZe2/Mv1M8a/sZ34Y5C99bG3z9F+WbdZdKioXVqj/
         Due6UtbZ0RSvC3zIPX/CHH3FJlyV1haydPAIeeWBZVFRLW5Hj1aGCK6DF19BBVPOKkmw
         VcDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RrMvXkofJ9jzlpSbneayLjpE1LX5a0C9K+FQIWYuNEEcB0Q12
	UPjtKR9yBFb4M2Ud742+Tu0=
X-Google-Smtp-Source: ABdhPJwyEYr3hEXhOrN8pGpG1YiO3Li5a5qda8KlCgL9UIHmzg4FtQAGNoAQgoIIKlNJp4BE2OJpyQ==
X-Received: by 2002:ad4:4f2a:: with SMTP id fc10mr5679062qvb.51.1619792929250;
        Fri, 30 Apr 2021 07:28:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:21ca:: with SMTP id h10ls3888626qka.10.gmail; Fri,
 30 Apr 2021 07:28:48 -0700 (PDT)
X-Received: by 2002:a37:b784:: with SMTP id h126mr5725496qkf.402.1619792928832;
        Fri, 30 Apr 2021 07:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619792928; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfRqnVq384NGQGO33bJE+uE33QQ7ud8YfYPhb9RC/rGIc/b9Uc19hZiwRO7QJTua9V
         RtPUx0QiLLuLhgDmgcyGQyPaPWJbb9hZ1f29aLuR1sFKjk2152VOQfbsoig7sxQvpr9v
         g6IeO1+XJlOBODMOvV6TADUrDgZQOjWk57IoaKLDKicedjWvIZWG/O1sq8oRg4UT7Ztp
         m8EVHN0xLjz36dGByP8/3uhGYFLIIPxsMePwYHpWh17H/P9aRGLyNLDbSHQCbVH5lUH0
         qg54imK9qLLKPbzIUz5J01iILUI5MUa/h7SmFBL0Pg6ohCDHPIuDjKsMcg+XlpD3pYuq
         4htQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qguFZneb1fOavwhVt1T+MV0mTTScFXAZTXKk0ky7hgg=;
        b=DuS0Wz+zUd2tktAJYwOAnsnp0TkMGZLGL+xqVYQJyxdUVbiMB1RvKRhbTTxTsLirKV
         ZnqyOMrgLyYN0soNlZDBphiqVOyJWkKs3QA3TFzKuOa+EzCs8LwEGaa874udTVZDmfAI
         T2oTJa98w/DOm+84lfcKPIVRwxIkiofITwnQ8d7BwQ5hrhSbdrICBDHQgGsR1e2yDTOH
         4TqTjiO3g8siEj6UFCeeyEtu7E+SK1ibt9LgM3kFVRsXOX9jRyD8t5MvtWYDrnLknYz7
         RVsJvzEeGXpndXNTEn8QNrvFELkmlILKqKVH2MKahiq4wTlr50WhBP8H78RlumyPGDQF
         RNAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=dC2nl8Hj;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.237.82 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2082.outbound.protection.outlook.com. [40.107.237.82])
        by gmr-mx.google.com with ESMTPS id k1si900506qtg.2.2021.04.30.07.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 07:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.237.82 as permitted sender) client-ip=40.107.237.82;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lUOcwpUBJArkO8en5TK8uegAsam6zYPHhN+3JzU9bAzwxXAkP99cqZleFn4ju1Kl67tJii6imH0OKbfp7YGL0attqYM3QNY+OPpf22Dm0qwo4iCllHNwuYP6N5nZx/AlTqTnoXT8cBHaebzcg0aj24PAIYp9hpvBmkmnd6+YQqE5Vm9K7hfnaWMcnpRS7xlKMeCjsAN8EjudCx05sNRCEiBWd80q437BPcQJVVw8lDLHYa1KtHaJQZ88eEyGdrOWKVrUhXEfR9UvirlmySQLIcdsOerq77UIllamv0SGrpz1GjPPixYjqItvqeagZ/dISEWa0N6z74pvfLX41gqq7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qguFZneb1fOavwhVt1T+MV0mTTScFXAZTXKk0ky7hgg=;
 b=IPBw0WCYbaUIexHNS3mtJfPA7ntHHn2FbaVyxRmX2t6Hm8Ia08jIwBfR2PrGbPWlNjuZVogTAEjxjxFeMMXkDPI+PuiNiPeLqLRhimP90ByPn1+wT9l9GX35N3lCzkSe38wNhXBsJ44FSfxiKftisQzTByLzcws7nP/eX2qK9Z9vGZb+s4dTejkxyi6WrP258b5BwqEzZCjtT06P/b3ANekiXvZNEPtckG7j4rHTJcu1uUk0NuVqDz3mUvWMiCTWF3iAMHFejNrSwDiX7lkRC7zKpNX9KE4eFR/Yi0zDNXjecYCoxpquNGmtNjGDS5g8+GOhTl8Y9Wzb3Si2ugQSsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM6PR12MB4499.namprd12.prod.outlook.com (2603:10b6:5:2ab::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.25; Fri, 30 Apr
 2021 14:28:47 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::1c62:7fa3:617b:ab87]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::1c62:7fa3:617b:ab87%6]) with mapi id 15.20.4065.027; Fri, 30 Apr 2021
 14:28:47 +0000
Date: Fri, 30 Apr 2021 11:28:46 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: dennis.dalessandro@cornelisnetworks.com,
	mike.marciniszyn@cornelisnetworks.com, dledford@redhat.com,
	nathan@kernel.org, ndesaulniers@google.com,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] IB/qib: Remove redundant assignment to ret
Message-ID: <20210430142846.GA3518700@nvidia.com>
References: <1619692940-104771-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1619692940-104771-1-git-send-email-yang.lee@linux.alibaba.com>
X-Originating-IP: [206.223.160.26]
X-ClientProxiedBy: CH2PR19CA0016.namprd19.prod.outlook.com
 (2603:10b6:610:4d::26) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (206.223.160.26) by CH2PR19CA0016.namprd19.prod.outlook.com (2603:10b6:610:4d::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.28 via Frontend Transport; Fri, 30 Apr 2021 14:28:47 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1lcU8M-00ElQ4-2f; Fri, 30 Apr 2021 11:28:46 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94df1694-0f0e-4151-8e56-08d90be44427
X-MS-TrafficTypeDiagnostic: DM6PR12MB4499:
X-Microsoft-Antispam-PRVS: <DM6PR12MB4499BCC3BBA4EBEA127BE5C3C25E9@DM6PR12MB4499.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FYeC+Amo+CmBNPTaOWIDs8xwRsX+WFW7tfCSpI/jRZsq/XE4JXhmRKhVbBM0RDH9jNZ0OWoWQpdJdc6Eo6XJdG/oMi8SNNJc+JFunAJMwF/M+n2ks/7JgllRM42RWaQFETztcLS0A+p9q4PIBIHj5lV7ylfYtkYr8gibB7Uh+BxwRjEHCqDFATrt/kO2Nfgo1ekSGChbldFXmY8qS5p0ba8HY7cxMmKLs+3MPjFXhhdMo9ys7Opx39fyP6Y+B68yZQHXVkhpXwyq1jgmbM7a+GeJbB4V315FR2T2CSkeAMAknED1sWU3d54/VVo4RZWMyNUNM4b7ohpvDS7jMD1vLOd+58a40RARPuoacwSJBfWC+9nGzjVt4f63HsE4V8OsKRRuuOCDLP1iAYIydz8xbSuMiQvfWEeRFSyE28B5KnRi43OLmzbncyRHHrIJ8ZcOucUrmmYE6P3Ql8+FW68Uwa/yGyHvDTDtgno9HI+BlogCKPZ96d0SlekscVY9WDaNVkqV9VM89dbfmyif/icac2yFsKbi+8kp9XOXEl3Fo09uKfyQKXN2yDIEkpzmBwcEGEyCuJpWBlJPXXY7qHwZtTVL1UO+8dri9O0L4KYiyH8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3834.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(38100700002)(9786002)(8676002)(66476007)(316002)(36756003)(33656002)(83380400001)(66556008)(8936002)(6916009)(2906002)(2616005)(1076003)(426003)(66946007)(4326008)(9746002)(86362001)(186003)(478600001)(5660300002)(26005)(4744005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?d2cILjGZ5DWp2rFavDU6tCt9kdgCnQb8sPiOJgdB0YTGU8nk82yhajTtlz1G?=
 =?us-ascii?Q?G7xzvSFAqbWWdSZe2HQr/etxVE8PMx/gvQ3aN9XX4OLTlSCA8C/qQGIgQ3Sr?=
 =?us-ascii?Q?beDlTpRN8SU8xAtR2Ku5M13TIgw+MTdQaHyybsSHCWXYHyCyAJ5lnOD0ARV/?=
 =?us-ascii?Q?USM67Up+E3vUhmP0LPxtYxI1JAV4XHq6yTfh07NYrdFXeS2mND4M1EKfHzQ/?=
 =?us-ascii?Q?tuwb4r6M/Weni9zCwzqe9w4d6phlzNFQqbjkVlv0nhXXe5O2eTtJB5Roh7I9?=
 =?us-ascii?Q?zb5Bw2uYXJOwvwGXKukdWYf9evJDMgen/GcehCTxBQ+ZB0qkGnkdKwmj4l2b?=
 =?us-ascii?Q?elmiHMAGIJ7xxpWKPl6Gc+GS5ZIbWAHXnTE5eFC9+aFjhBcSd26bbt5F4um5?=
 =?us-ascii?Q?pDSRhF1wgmq9zIZb5PE+8oifiSdImwthqY1GfmKcBor5Cs2BFXqqg0bSRiof?=
 =?us-ascii?Q?reBjRCYqKvHb5yiRT2NPSc0vck9+ZHkURKRBrB8agY1BpZ2d4knu8EmoJ1sY?=
 =?us-ascii?Q?1sGPsS2w0m9oZKbdcjKnDkDNZJdlbev02Mc9F33isgfgUM8GlA8q8LW7Mupk?=
 =?us-ascii?Q?qstp7tStapyLHuIDSqrbX6hkwSTINsjIdBB7/BfJ4RkGzFcYfmyhmiON+0Lg?=
 =?us-ascii?Q?D73trNn+UCqNFEdCHYSO9cvnak+JJyVoiB8IveAGudtkG1s5wuStfDM4Ugzo?=
 =?us-ascii?Q?3AVm3rGr/mAfkMQc323Tdi1rRXR66q6sxK/hAa2ob2r/GAyMLUtvgsIHG7Mp?=
 =?us-ascii?Q?OuOLCcP6vCHiCfZ9GtEPDZ9lYWJ1lL2L7xowSh3oyJwFdvQQC9K+Ewyl2UYf?=
 =?us-ascii?Q?mSbDnL6TD0MeTfotXiugxxoRJ4PmLW8ja0UtrWMJNV0IrffWqruGpUlAZuTV?=
 =?us-ascii?Q?o2Xn8nkINADo7BoUl0X3N97kH5o3ESiBlK1SuxE8SuAknRKuC9U0rXiKi/xL?=
 =?us-ascii?Q?fySdmg60z5h9rl2Z+Yvn88pw8o4kh1PARO5yrPjOVpLhPpHBFEOMfPkEgc+S?=
 =?us-ascii?Q?f8piW2MJrWihEXjWHqkXXxVrxJhhUYz4z3Oz9t2nv49l/Ms022V7jkXQjhOJ?=
 =?us-ascii?Q?gSrRjzEXQYshLoSDghb4ksmO6PvaBzqMiPvM2KbbxpZBaYr1Nudmz8Xcqx8K?=
 =?us-ascii?Q?papyTQsfHghwuITVAzKupdQoQ5vqCxgNzAxPHKR0LKjUNFWhux99lkjuEmxu?=
 =?us-ascii?Q?Xf5ESsTS2R5eyaTJHPlfnRrxKf2hkjrRJvYiYzWBpSvP5vCg7NvNB4P2j8QE?=
 =?us-ascii?Q?HY/QB9UD5BSv0zgjxp4pZ+vVJHfqmAjNdXlg3kGr/xpRprMbTU0D5pBZoS+a?=
 =?us-ascii?Q?ATjnbQtCr3thUL+rbXkJ9BiF?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94df1694-0f0e-4151-8e56-08d90be44427
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3834.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2021 14:28:47.6096
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rXNsjGrOCe7Zm+EJysDhFhTptNNLell6noDIWgx3KsEQgVfLX14BndnQYpiI3WdL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4499
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=dC2nl8Hj;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.237.82 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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

On Thu, Apr 29, 2021 at 06:42:20PM +0800, Yang Li wrote:
> Variable 'ret' is set to zero but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed
> 
> Clean up the following clang-analyzer warning:
> 
> drivers/infiniband/hw/qib/qib_sd7220.c:690:2: warning: Value stored to
> 'ret' is never read [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/infiniband/hw/qib/qib_sd7220.c | 1 -
>  1 file changed, 1 deletion(-)

Applied to for-next, thanks

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210430142846.GA3518700%40nvidia.com.
