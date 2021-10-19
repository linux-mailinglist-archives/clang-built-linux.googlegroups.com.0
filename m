Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBHFVXOFQMGQELWUDEYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id E1984433907
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:47:57 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id i83-20020a256d56000000b005b706d1417bsf25045250ybc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:47:57 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654877; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xbw5yAwoqdqKQtkvITXxTaK+5Lu8N5OkCvS3CEu+/HWojDq3NLzfBgcVW1j+pp4Q1w
         5vQASZ8RlyrBs+N4d8+3qQFDIaYbQxBqzRXNumm8k5wfVwPjmUSF6Zm3CpzC3CNNMlfZ
         An7LoHzQjd35x8BJlLRT879AT3to1TKXPFjF5U9SrcBcMhccPXFCGhzfFh6cNW4b0zxb
         FOEbMKEnCbdqtjFXJ3GsfsOUkD6g8bYICtOqltNg9aab+uReaPNELzKIzDXtlQLmU0fE
         kLhd/JuT4DNDoYoNXEx+58wFOMMMMAuEcE7WmZCRt1KtcR/zxj3hQWANVmH2w3yg+nDu
         ij9g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=btq0whlOEpAQC4v1NqmqsOKVWCpu0Fj0FbS+GMIFGQ8=;
        b=AC+JPjct1Mct3URHAI7G936fbBoo1NuUnGGpeR5LJ7MaKrP+Xj8BiH0j6ozXdDJ1mN
         gaRuW4TvFQd4RHTCiRuQqC9yciX4jbmNHLScJtKBa3rn6uhmkgXiKPXoUrXKBSw/dhfQ
         3/EQu+hd62QoyeFwImYtzrHsAdogsBQc/LiJ1XfIe2KwhR4u/sq3+dzXH9oWJ4kuzbdo
         +Bh6sybaHp2jkPPYLmZ3njlL0ODYhbKGfyVX7Hit25k4G4UyxpqN8gkqGt5mm/Vr/3da
         +UNZUzqKJhvf4Jpzk9Smh+TxPiDq2SbgWt1CKqxNzudWX112C/MhlGobZ6wczL4NqFEz
         PF7g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=FEFBeIrS;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.236.85 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=btq0whlOEpAQC4v1NqmqsOKVWCpu0Fj0FbS+GMIFGQ8=;
        b=mio3Inx8VUrflpPssIAAN3/K0oGCWnrdI3zplhgxH+BjPv5VvDtbrxDPMPJ+D86LTV
         DYPtiPxhaYsfmKHWUuKYv4G5fCBg4Vfyh3PcM1zRR4WD2x5Pdi8ode39RV/9giNE3/yB
         9UvDZyz66+ls66Sx04THydJINIBFNSovUl0EluqRSQvCWyyjtSTvSmuaCUZd4UqdCRgl
         iOl56VEzRYJLvcdGsdtX46Bg2X7+FZk/rYvjRkTHXOB76RKJZoxLxJTL2gu3YcafeVqJ
         AjYsOM1FO5iw5kw/Y5dSkr280QgM0LJGw9ZU32pFP591z0i9kd+z9VPdcjfxAT52Zipz
         1bsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=btq0whlOEpAQC4v1NqmqsOKVWCpu0Fj0FbS+GMIFGQ8=;
        b=mUtVWqJO1Hzg0YRclpsK9LJtV3ObhWOtjN4mTfnNpAbZA9sUqClZKz4oB0CpRJ80r0
         Lk9Kdy9w8FMdfhMXKtoX9sc8EaMY33q1tQhwF/4AzJTfL65JlJ1iDgKW5BhQ2ulWoTaa
         jtGdezmlQoibPnP1enKKy8OYZLlaJnkPVC8KN2gQBNFgKn5EghTDvlUZxm/z2qFop8A7
         ykOtHDBpNdEQDLv+jJ6HIMLxmiKU6Nhj/fn6bU7wpfNXUj3Lkzl9GxSj7JgQcFACBbrb
         xCqrXArlyq5JLKYfTt09aKAnyjEQirb2aknglls3+WgOK7rhDaZx6yZyYetVXIDAJUOO
         kAuA==
X-Gm-Message-State: AOAM533D969/vpSt5K+al2kwVTeRsB6RqcuahTWCMqMqVfIN/VAfJ6E3
	qU/AAE+523AxaxU4kkPDQgg=
X-Google-Smtp-Source: ABdhPJwSOdEVuGxBEVpzAfJ/pL7gBocI7ueMn78efuc1VEP7dqgivesMxuFzTLyX8g9iMY4dRxaKmw==
X-Received: by 2002:a25:848e:: with SMTP id v14mr34124195ybk.458.1634654876808;
        Tue, 19 Oct 2021 07:47:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b185:: with SMTP id h5ls7086087ybj.11.gmail; Tue, 19 Oct
 2021 07:47:56 -0700 (PDT)
X-Received: by 2002:a25:8b8b:: with SMTP id j11mr38796786ybl.160.1634654876327;
        Tue, 19 Oct 2021 07:47:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654876; cv=pass;
        d=google.com; s=arc-20160816;
        b=sASFiknBX1YYzlTSTCWmJkLEf4r1GGdAMrJvr9CwqUIn/5VTf7XfT72qQk1hs53AV0
         YqtL1/kiiqwPSa8+NZ4D6lt09BHQwCK9U+WM7xDpO8I3P2W5tBmZ3/GFjCq4LOQtW4oM
         xKmFKg4tLItEESLy4jlqqrRyZBvTOLSYxd5edGQX4Jrkh1w5zEjZZzkprXoHwzWDThZy
         2UZ7PLoYwAu51UAGJo5IA11KzBO5Jqw18+CWXUao/V4HItNJ7sPtTZyMwj8RnpneAILX
         le9JKfZOXiZsI6oHt+TgETtNzj5Q3PhPVvVJx/Z8Kr//5E/11D6yHSMHS5nusDEBFYZu
         L7rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6iBQ0gwMkFusxTqbsXw5hdDyo8RoCQn5IqnfK77WvkY=;
        b=XvYkGOpOUX3Du/opY0AuFdn9+g5KuUxNUgpdkWD9F/a7pGZAwikUq+wDO88563wJu7
         q+sGMFOEiHBHbMUDQPfuuouvugr0Ag41O/MWFsHdJekNzHoW7xpKPL8gDK8jLSJJTjO+
         +PBm9Qhszch0jmZpE1xruYlBxqHipYps5OYnJJMOObdIiAnryOyCsLIzTafmyg+F5L2M
         9DcTMl1G1Rq3QUP9PJRhwlYxCdWjKT9KLqS/0zHkXIu63OU02/GlhEJEGaCMsRYbBcVB
         I7webNNJ6EIsBWS/CU29zmF0VJagvT24A6L4oeXNjhdK2FUuNnRB4Uis470tV4krr1ak
         oOUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=FEFBeIrS;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.236.85 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2085.outbound.protection.outlook.com. [40.107.236.85])
        by gmr-mx.google.com with ESMTPS id k1si1385140ybp.1.2021.10.19.07.47.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:47:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.236.85 as permitted sender) client-ip=40.107.236.85;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jwpc3cOGJQp6eFJp2nbzDBjJeSUDawedApdWjo/yj0wFEEY9n/1YtYDUtnfZnIPi5IwjG27DXzn0OLwACwOrHnHBWxmsq13ioaGQ2fSGz2DQjaS4FLxQmEx8Hj9q5GKNqJq5Uc9xB6YsT0g/1G01p0ol7H05igKySFSPTdvjfn1MOvAD7tojuGWDkiVgoMwnbO7t9C3sSG01SkKlNtJUx8e2PW5XD1TB1LL+DzYtvmwKE11ARlzG6E2WCGsPZKBoar9u+HZfiePyX15RdTk8kBndSOArvJ+MIElPrr62okS7XS0QoHxF8PDx65kSSskMxE8LWrTnXZT9Bh7uLqWhEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6iBQ0gwMkFusxTqbsXw5hdDyo8RoCQn5IqnfK77WvkY=;
 b=jUJMdkgLIFYByMkTimXqIfQIyVa+MDvR5/n0Snuahf9sS6FPVRCpi/NPgEIjEtpCwWYv6FKanJfXVA/+qGPdgQjFnl/OWX1tTBORFcbWK8oyr7lzZWk483PnmTkm8nDGn9nrzAoOZmPWy9Xr6vgHMM7KA0qkMAUUdlzYht66a5TzFoSVZOU+rOL51d6JwxPoPzmQZBEtC25hRQzOYF2CDnIwu0NxfPWly3RYmC+qEbRg7annn9sQ85StL8Enwgvvhx9hv8yge4O6PdMWbuQpEmIX1VlpDopM7HF+6zjRnnjVfMq87faGJgIn5bgUQY7BYZOvLokXB82rTSmd6l1z8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.32) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from DM6PR06CA0023.namprd06.prod.outlook.com (2603:10b6:5:120::36)
 by BN6PR12MB1635.namprd12.prod.outlook.com (2603:10b6:405:3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Tue, 19 Oct
 2021 14:47:52 +0000
Received: from DM6NAM11FT023.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:120:cafe::f7) by DM6PR06CA0023.outlook.office365.com
 (2603:10b6:5:120::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Tue, 19 Oct 2021 14:47:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.32)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.32 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.32; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.32) by
 DM6NAM11FT023.mail.protection.outlook.com (10.13.173.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:47:51 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 07:47:50 -0700
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:47:38 +0000
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
	<joe@cilium.io>, Lorenz Bauer <lmb@cloudflare.com>, Tariq Toukan
	<tariqt@nvidia.com>, <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, Maxim Mikityanskiy <maximmi@nvidia.com>
Subject: [PATCH bpf-next 03/10] bpf: Use EOPNOTSUPP in bpf_tcp_check_syncookie
Date: Tue, 19 Oct 2021 17:46:48 +0300
Message-ID: <20211019144655.3483197-4-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d2669bd0-f6bb-4ea1-68a5-08d9930f6d7c
X-MS-TrafficTypeDiagnostic: BN6PR12MB1635:
X-Microsoft-Antispam-PRVS: <BN6PR12MB1635BF908116452C015BD95FDCBD9@BN6PR12MB1635.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cK/aQwOSJstpsONa+KlBS213rvP81Z4QY4aPZm/7sooTdzeenBYcngtCVKm5ayMIu3KIO+tg2qBNaURbAFkhHJw7d3GAeEMOpzklFbGdUDTGgZBX4KCCOQi9KVY+a3B4PDQUy380/JNiwagDfrcU5+JPGrKlDtHJyAipTtkPXE09IC9x045qNkbhAPXCuPvJS0T2Kf8JY1qNcNKHqWh5OD9Zxi/dkrXBXFBs4X+/zEOfVgXMCnfXdIWsTbLNwsoocYb6KZJR2tJwI2TZSD3qHmuhLHk5wl0Gs9iwAdctLUD+U9IjvS3pkMGfsZmhclPpT8KSAO2+fAQNpnxsOQ6wYo9ynMZd5O9DIIcUy2sAKCHu5qnsJE3sBlLVYYAuD/nG73qnGv1LInv5qB+D8jYdqG1L6zuhpI5ssRMKkwh73a0f155oLxRVPrx/Wj6QaFjpRXQiKFBPGipzAKrE1yUbaID0qu3sJMDm9nMcpTY+Q1efsjMuk1OM4ZucuRFmnwuc+WF0fRZrwmy+sC/h02X5dKEpvL5nu1ZZiEP++QqCK0U6pbh7VQq0gvQmaY3wUN3Hvlx7qqpoFZtso15B1tSuXE/wqgRhBFkpJnbR/FPSY/5pwnKkTCXOcZX50/QnyAbklh24azR3k+pf6rJqDzOqRASAEEIQmhH8P8lL5gLbHKhn2L20yCiK6NB6ijTHUOosyHDWRYdeqPijdRq9Jfpjsg==
X-Forefront-Antispam-Report: CIP:216.228.112.32;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid01.nvidia.com;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(36860700001)(36756003)(7636003)(8676002)(356005)(1076003)(83380400001)(70586007)(86362001)(47076005)(4744005)(4326008)(186003)(70206006)(82310400003)(2906002)(316002)(336012)(5660300002)(2616005)(508600001)(8936002)(110136005)(54906003)(107886003)(426003)(7416002)(6666004)(7696005)(26005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:47:51.8798
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d2669bd0-f6bb-4ea1-68a5-08d9930f6d7c
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.32];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT023.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1635
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=FEFBeIrS;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.236.85 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

When CONFIG_SYN_COOKIES is off, bpf_tcp_check_syncookie returns
ENOTSUPP. It's a non-standard and deprecated code. The related function
bpf_tcp_gen_syncookie and most of the other functions use EOPNOTSUPP if
some feature is not available. This patch changes ENOTSUPP to EOPNOTSUPP
in bpf_tcp_check_syncookie.

Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 net/core/filter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/core/filter.c b/net/core/filter.c
index 6cfb676e1adb..2c5877b775d9 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -6754,7 +6754,7 @@ BPF_CALL_5(bpf_tcp_check_syncookie, struct sock *, sk, void *, iph, u32, iph_len
 
 	return -ENOENT;
 #else
-	return -ENOTSUPP;
+	return -EOPNOTSUPP;
 #endif
 }
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-4-maximmi%40nvidia.com.
