Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBJ5VXOFQMGQEPGIOQJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 580BA433908
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:48:08 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id h15-20020a4a6b4f000000b002b6fa118bfesf1520409oof.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:48:08 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654887; cv=pass;
        d=google.com; s=arc-20160816;
        b=ICW+sfKcj/Tesxk3UPy+VzKJxKS7NiRqlfsTTBuuZlGJcdh4qdUh4K2P94Gzs3dJCg
         t3oH5AMEUPmWR5rFmdDzp/VKDTA39mFq1e4RH+m0GW22VkVadBHxP94WFQw6CfotT3Uj
         gCZhA/iiP+H3XzXUF9B0dF29ZZF7l54MLxmUXaneBVIhUN1ttG2Jc8O9RN0J29gD8tSx
         zZeI24itUeRkVCPTlT7hdVdM46IzF1oqPaSM2geezYd9k6umkGZsCw9anybNNXUcWX9O
         ItspmrJbppEe9Y2IGRKnWMAmj07GeukH31Qrv1DzJSrYItFmHnV/vkwQ4iJfs0kEonKl
         Rapg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=6kDwMIZdRZjkxI2pu1z/M8dJN11clcRMQaIwYteDDD8=;
        b=oE5atqaOCeeB63TNvNIzfvQ7WW4U3eTq5CtlZT8wkhDA/KRYLKHtYVvKMTkRiVRmcf
         QYdRUUqFnGpMCV5ZDTU0PeBD0IhFnHrBW6untS/LQwDSC9Wr6vLriOVs5kKr3+C8E1ev
         Rw0uljX95QsdT5DtAyCgYdrrc06RqE9e6a77MdjgxTSO2ikbi+hv8bMW8sH1B61QgP1H
         eGlje6Z4yTLlPLJISqLenUAsWNuQ7qkHHbeETMzUxwFppag3P/Vun/mdTJrAMbPxEu/E
         H7q+hqdS+rK/1GncDkxlg1GyVI5OS1pNyn/TMA7Q/trZ4I22KKQhE+tK1JZtkHcfeYT2
         mNSA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=OmhToDrl;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.220.85 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6kDwMIZdRZjkxI2pu1z/M8dJN11clcRMQaIwYteDDD8=;
        b=h4/2I6/wtF/Lm09pW80pOlQuaSYulHsUeun43prWrUXn5sZ0PsbSV7jREClQzt80WV
         +MNiIGsczFGQ10Obac9Dv6uMaZkYl+vMrAbPnwAIc0P9EekY9nVN9wzFsFchxnMAeB2N
         aBrJXTx1NIrNvjZVBk62fSaux2p3HL/6zXoFTFC7+HEd3hszScO9gc0ajrKI9J4KrVg4
         XIE1VfTfd2/gFh4UfEblRgFdWcHETvWC3yspoHhBuSivHn4MHEyPA+k6tjcekZx+oPJ2
         mDMePCcQpDBD4WviKUd1GnHqbyoQWMM1fmUPk3dX4LobMUT3frxuCveYpO6esxbakplg
         GWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6kDwMIZdRZjkxI2pu1z/M8dJN11clcRMQaIwYteDDD8=;
        b=XkC48C0YTTKK0b1AYCoZolYq/6gZuqQ50Gn7imeofr2GRmUCMgJDPYufQvrMbA6Upt
         1Ojpfc6Z+RNdSGyuMoUOUsF8w5s2B7TSKhbte4QEcDsWSm1bcd24tPFElb1qw+kTh7go
         UcC6Jd1UhEUcvaVNp5TfQxnLVDQeJCLvX6xXHM4s7Jv4Tgl1QkjnlvSXhX9GBPOGqbC1
         ZnwAiVqSRL1rLyk3bziWMrZbmEMQlfLxbtiCftW0lF28uE1p1UGXpxu129XZs1HUYDw5
         MzDyQzfsJm+ObBLHpehvOWCsso3KqxfVfYi9sgpvgx+yLMBc7po13qmZ1QEEdmBwrriQ
         zQSw==
X-Gm-Message-State: AOAM532zZR5ED9nH2lXCvnj0+Wnlgu7tq6k2RMT92KMhA3TasH7eb+4o
	LRCmnE7uH9PW5pZ/z+59E38=
X-Google-Smtp-Source: ABdhPJxzxZJiuDQ2Lg9TDGyZUGUAniRirmWmIX9M8sfZp+sGK8SG37Xo2nhK2TkZlOCPSyz1v1GNIA==
X-Received: by 2002:a4a:4006:: with SMTP id n6mr5067508ooa.73.1634654887131;
        Tue, 19 Oct 2021 07:48:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6155:: with SMTP id c21ls6138930otk.10.gmail; Tue, 19
 Oct 2021 07:48:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1ad5:: with SMTP id r21mr5857258otc.192.1634654886800;
        Tue, 19 Oct 2021 07:48:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654886; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7ajHtYKLE7nllNh2X1msTnFfi/mi3q7fOZmtBcxI58UXa3ocMALttofvSuS53O7JK
         N2cQJuXXoWGeyFa4UWRhSRbeUalnWKCA0SjUaBmZELyktroaQYqX0Jl55Cul6PnrsXPF
         DKJcuNTc7Qwu5CeIzL0AL+oXiwLN32HR3gSryKbM1IRxG1oKW1LiTw8gnaVFVMtL/Usc
         2jffsvstZL80J1l9nEWx9FB5A30ykcs/uBAUB284InQI4KuKVld5GOG37zNwMEdUM0+/
         bL70lsqRpq60Cc/d9p2pDHMStLHqNwB2miozZWLniVIFkQhB06j83HTDTzdldGBomDdk
         MDPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jXLQ7xAs8EOu6G2zUj4E0yFOji2FUos7HtcrIt0viUk=;
        b=Ryyzq1mb2e22LM5x5NnXVbPkqB8+kb6lFNAeZJ6XkAiFHmHEs+xUaTrCbD37UvyXPx
         ICo00Q+cNGAX8J4U21YjtJjb85Heit+ePQKWCFfqpc3k8TAvr84ALSS/xo8c9BWTXVlE
         TjPsuj5FpAvPWtIhVi6+QSjOoBXNMIPFEGWAPQZ/Gq7efm7hWYKUWH31n6rKFUHupJ39
         zqtoPTImye/cu2qzXGdQRO+AanrKecsb+HDO2m1dOiGhEOuo/V2MC0CBqsLaFMn3ZeKn
         Ig6GcJYaR6Yzm/aMJrHVg6lGtSoSxuV2J/9ZigqII0XxKHq6eqiDT8P/zpL4L+6V814A
         T1Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=OmhToDrl;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.220.85 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2085.outbound.protection.outlook.com. [40.107.220.85])
        by gmr-mx.google.com with ESMTPS id o24si769899otp.2.2021.10.19.07.48.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:48:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.220.85 as permitted sender) client-ip=40.107.220.85;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X4N6/ndJtwnRABwvbQMO9vh66s8G5E95Nmg6eSFEAokrBIdAyW2QvzPLFVzvPTDHsdUpx79jgARyifP5ca8C9vPPUnNE6W0artPPrBJq3L5RZ/h6cb3AFAgqI2Yjr/Dr2xO1MD13bO7JOuaNRHHzwdiBjHaxIMfjfsXsqXqTyimKMczklB/Lg4eGicJNVWgkbMfosiCvDibnz1yoeZBdXjg1CyaClOhA80k+umZVAP9J5J5F68rGnYXlSNKjBj5YY/TErIP7wwGKLvPRbZ7iobgDNXohii+tOoG0WprR3txorwZkQ6M3DqqJqYFGS+/OXimoe+s/Dcr/FpoWtvfahA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jXLQ7xAs8EOu6G2zUj4E0yFOji2FUos7HtcrIt0viUk=;
 b=fib6ncjq2r8saJChd3oebAZPjywo4FDxhK/eeUpQ2rz+kNUwRvG649xT0bWSQ9KrmhjRkWScRBD3SWdERjHXBEuiENL+0CnGkW8lsiCNakHCPmvZ0w9W0qfbaekc/Vfuqf8dT2HmDckUFPdJ5TAyVYQiSY3mNaH6pahyZnTZ2Y7MV9Np/2kp/h9O6YsUfjQwMgCXEtj6k4LKbMXoPQddKSi9dAwuyjQZY5mokNBNznntDBQb3KE2umjWJ3iADNR2XmoO9cEDHiDrZQzvSBTMzBJLlZ8L+nb1nMW+HLWHiofXLUnlPUT7FpSlwf6pp6NcHD5DplKC5YQcbZSA/k6nHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.32) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from DM6PR03CA0013.namprd03.prod.outlook.com (2603:10b6:5:40::26) by
 CY4PR1201MB0199.namprd12.prod.outlook.com (2603:10b6:910:1c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Tue, 19 Oct
 2021 14:48:03 +0000
Received: from DM6NAM11FT028.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:40:cafe::4) by DM6PR03CA0013.outlook.office365.com
 (2603:10b6:5:40::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.32)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.32 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.32; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.32) by
 DM6NAM11FT028.mail.protection.outlook.com (10.13.173.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:48:03 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 07:48:02 -0700
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:47:51 +0000
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
	<daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>
CC: Eric Dumazet <edumazet@google.com>, "David S. Miller"
	<davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI
	<yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Brendan Jackman
	<jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer
	<joe@cilium.io>, "Lorenz Bauer" <lmb@cloudflare.com>, Tariq Toukan
	<tariqt@nvidia.com>, <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, Maxim Mikityanskiy <maximmi@nvidia.com>
Subject: [PATCH bpf-next 04/10] bpf: Make errors of bpf_tcp_check_syncookie distinguishable
Date: Tue, 19 Oct 2021 17:46:49 +0300
Message-ID: <20211019144655.3483197-5-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dbffa9f1-e9d6-4067-fb84-08d9930f7452
X-MS-TrafficTypeDiagnostic: CY4PR1201MB0199:
X-Microsoft-Antispam-PRVS: <CY4PR1201MB0199E769E8000F0E40711B55DCBD9@CY4PR1201MB0199.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HUDYheS+pV6nwD7bM5lIZQ+sE+Qpea1QxXSfKXbFkeW+cZFjpaL5owE+buJzw64Ld+iws2ZcAsJi5KQSRvISs0xw78ls2G8ydv2X8vgkDOoCYQE6wXa602ucJPhAryAtA5LouAMI6kwYsEwnNumrbGVcVZ543G0R7ZLJ5YSeNEuiv24yVJgePzVMc7sqWFlC8OhndOHT4GI8jFP9NNZ3LTdpuugjgf91EIUY+eNIYmLS5QyonFih7w5bls/yxZVThIgt10wAU1ZTbKt+r4nTHaB6j5u16sNa1z6+P030FwE9EbbmmL9k9SNJcimSH0B3sfE5HfrjJFjNkD/MdK/dSU1b2Wl4M0OnXBw4iN+WV6oPuef3GJ0TXtDkxZz6h9sAAe9KHiJo5/KcXbAe8s4xil82FMz8sfguJad+y4P4gh2cYfrfAbxSgvYOgp14DrAhVOJ7te94fhwXYPvYWWLkX4xtm94BWxTmRxNPUHmFqCt+ugtDWQHws4iADUaQLeJFSj3/nOf3twT/n6Qdw0yRAxQekkDmQ186+JSLrk/XBoQ05IY5qOhboPXrEfqxlaerkCcU8mG9i/8pdBn09+J+TQQJ0ULUUDJpU2z8nynW5HzPaxQaBMr3YQkn6KeFXWi/jg2iu4m+UA40SIxufhapIl299m7K9h/XC+yD8W0qm5TyUm+4nYURA/vYaSAvdi2xhX0lCMeP4Cm5eV+hjs3E7Q==
X-Forefront-Antispam-Report: CIP:216.228.112.32;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid01.nvidia.com;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(110136005)(2616005)(54906003)(70586007)(107886003)(2906002)(8676002)(47076005)(1076003)(316002)(83380400001)(7696005)(5660300002)(70206006)(7416002)(36860700001)(82310400003)(426003)(26005)(36756003)(186003)(356005)(7636003)(336012)(508600001)(8936002)(86362001)(4326008);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:48:03.3404
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dbffa9f1-e9d6-4067-fb84-08d9930f7452
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.32];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT028.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0199
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=OmhToDrl;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.220.85 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
X-Original-From: Maxim Mikityanskiy <maximmi@nvidia.com>
Reply-To: Maxim Mikityanskiy <maximmi@nvidia.com>
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

bpf_tcp_check_syncookie returns errors when SYN cookie generation is
disabled (EINVAL) or when no cookies were recently generated (ENOENT).
The same error codes are used for other kinds of errors: invalid
parameters (EINVAL), invalid packet (EINVAL, ENOENT), bad cookie
(ENOENT). Such an overlap makes it impossible for a BPF program to
distinguish different cases that may require different handling.

For a BPF program that accelerates generating and checking SYN cookies,
typical logic looks like this (with current error codes annotated):

1. Drop invalid packets (EINVAL, ENOENT).

2. Drop packets with bad cookies (ENOENT).

3. Pass packets with good cookies (0).

4. Pass all packets when cookies are not in use (EINVAL, ENOENT).

The last point also matches the behavior of cookie_v4_check and
cookie_v6_check that skip all checks if cookie generation is disabled or
no cookies were recently generated. Overlapping error codes, however,
make it impossible to distinguish case 4 from cases 1 and 2.

The original commit message of commit 399040847084 ("bpf: add helper to
check for a valid SYN cookie") mentions another use case, though:
traffic classification, where it's important to distinguish new
connections from existing ones, and case 4 should be distinguishable
from case 3.

To match the requirements of both use cases, this patch reassigns error
codes of bpf_tcp_check_syncookie and adds missing documentation:

1. EINVAL: Invalid packets.

2. EACCES: Packets with bad cookies.

3. 0: Packets with good cookies.

4. ENOENT: Cookies are not in use.

This way all four cases are easily distinguishable.

Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 include/uapi/linux/bpf.h       | 18 ++++++++++++++++--
 net/core/filter.c              |  6 +++---
 tools/include/uapi/linux/bpf.h | 18 ++++++++++++++++--
 3 files changed, 35 insertions(+), 7 deletions(-)

diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index 6fc59d61937a..2f12b11f1259 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -3545,8 +3545,22 @@ union bpf_attr {
  * 		*th* points to the start of the TCP header, while *th_len*
  * 		contains **sizeof**\ (**struct tcphdr**).
  * 	Return
- * 		0 if *iph* and *th* are a valid SYN cookie ACK, or a negative
- * 		error otherwise.
+ *		0 if *iph* and *th* are a valid SYN cookie ACK.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EACCES** if the SYN cookie is not valid.
+ *
+ *		**-EINVAL** if the packet or input arguments are invalid.
+ *
+ *		**-ENOENT** if SYN cookies are not issued (no SYN flood, or SYN
+ *		cookies are disabled in sysctl).
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
+ *
+ *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
+ *		CONFIG_IPV6 is disabled).
  *
  * long bpf_sysctl_get_name(struct bpf_sysctl *ctx, char *buf, size_t buf_len, u64 flags)
  *	Description
diff --git a/net/core/filter.c b/net/core/filter.c
index 2c5877b775d9..d04988e67640 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -6709,10 +6709,10 @@ BPF_CALL_5(bpf_tcp_check_syncookie, struct sock *, sk, void *, iph, u32, iph_len
 		return -EINVAL;
 
 	if (!sock_net(sk)->ipv4.sysctl_tcp_syncookies)
-		return -EINVAL;
+		return -ENOENT;
 
 	if (!th->ack || th->rst || th->syn)
-		return -ENOENT;
+		return -EINVAL;
 
 	if (unlikely(iph_len < sizeof(struct iphdr)))
 		return -EINVAL;
@@ -6752,7 +6752,7 @@ BPF_CALL_5(bpf_tcp_check_syncookie, struct sock *, sk, void *, iph, u32, iph_len
 	if (ret > 0)
 		return 0;
 
-	return -ENOENT;
+	return -EACCES;
 #else
 	return -EOPNOTSUPP;
 #endif
diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
index 6fc59d61937a..2f12b11f1259 100644
--- a/tools/include/uapi/linux/bpf.h
+++ b/tools/include/uapi/linux/bpf.h
@@ -3545,8 +3545,22 @@ union bpf_attr {
  * 		*th* points to the start of the TCP header, while *th_len*
  * 		contains **sizeof**\ (**struct tcphdr**).
  * 	Return
- * 		0 if *iph* and *th* are a valid SYN cookie ACK, or a negative
- * 		error otherwise.
+ *		0 if *iph* and *th* are a valid SYN cookie ACK.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EACCES** if the SYN cookie is not valid.
+ *
+ *		**-EINVAL** if the packet or input arguments are invalid.
+ *
+ *		**-ENOENT** if SYN cookies are not issued (no SYN flood, or SYN
+ *		cookies are disabled in sysctl).
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
+ *
+ *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
+ *		CONFIG_IPV6 is disabled).
  *
  * long bpf_sysctl_get_name(struct bpf_sysctl *ctx, char *buf, size_t buf_len, u64 flags)
  *	Description
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-5-maximmi%40nvidia.com.
