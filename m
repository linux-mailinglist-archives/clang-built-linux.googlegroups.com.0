Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBM5VXOFQMGQEMRY6BVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD13433909
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:48:20 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id 59-20020aed2041000000b002a78c85c668sf101110qta.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:48:20 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654899; cv=pass;
        d=google.com; s=arc-20160816;
        b=xjSZ0Dhctw+7FyXr8MDE5uxrGsWHwaFuRm7hrl19l9f7VCwfvj0UE32E2VVDWQI3pg
         Rz2bKPK0LTdZXajhT7JFTvIIx0ClGQ+5LH2luI2JRIUADU4eESBBf5vM9KpzY2HeDJ0j
         Q52TJ9q1t+ExJmqAc4XycX5PT1gE0tjVb0sDz33Vd29RwbP2qQa3ra0YKgaWKKo0qAV5
         i0pmw2IOX1bJc6a4VXTOk7js4j70wTIgxw4evYADeQvCHlYIpVagInY7rCS3nWWkh9sz
         GAGHfZ+p2cusxWXGc29XzsveRUN5dr2IsgNVwo14whr1f8wp18AS9hA6/zz2dEmLEXH5
         RAow==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=uwloRAPZAWV1ItjBkpnyjyGQdTP+kIQdWoa1YYuIk6k=;
        b=zQYMVVGrbUkqVOTXanHMus6cY1/iEpNBSr27b2VA8zD+Tt/MP1MOKXtXRZ/L5K5xU4
         1ehzXqmMcPbXt1aOKSH8JHtYGwGz0RfpSKL+KG0gC0inGFhSrZTnNThVZDjaUItb7bQj
         xmcSq1Z54GXd50mLjLfvdGQNqsXCdda3YTMPnkBgXlkBTdqXQDmFaMSo6phyhxiy/ekV
         k+ga1E0zs5BDFgihNtJ067/+hav4uI3nmHZvaehCxgTjaQpt8KOaC6cN7ZsRtNRTW8TJ
         Hl/FPM9DGOXuTTEZt6O+YtGzLzsWKFzJtmYNXJFQJykfiO82tJW55akJlLSWKJmAdL9a
         xs9w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=noWFWeo9;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.244.67 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uwloRAPZAWV1ItjBkpnyjyGQdTP+kIQdWoa1YYuIk6k=;
        b=D88SCwUABGisBiK+PaXNolK75FXgtD+AS5slFPYD0IUrqpRKPfkbHpsZIqJPKFsHDT
         /G7jzDx8bxgk5ZbibhFXotWf3lxLEFkxwdls+0ZovdUYSBz3/p//dEj+gdd5wxeIUNdN
         F8EUiE9X5297o0UiFjcN+sFht+C0O6nbvIUUmlxDRvHE2SmIZGw407eNt7fjTwA+5Rb0
         mPX6HAVUrw2eye2pIBFw1agzqkkM8ytnxvfXuGzPScbWOL3qqxUUjXwNB2Cg0mE/QU2U
         Blbil3uWVFWGVric1X+N6XX2qh0pkAEaPcLKKNdIM3Uo6TN6+XPhZZ4ovuF1MsJ2oStV
         jQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwloRAPZAWV1ItjBkpnyjyGQdTP+kIQdWoa1YYuIk6k=;
        b=sv2NlbnpY40p9JIDY8dBPIWIB8xxwwnUtk7Sa1Gm0EWzgQ5P+x5jNuIi6hCqPIe6I6
         MUVgoUbnNsTiVwhFxuFzBBsAn+exohoYiT2PrCgr1uccGw2aHz+WNhW6grCn8E+ew19x
         kFZ5gJqyBXxx1ee3m16+bsPi2Zaat00SFLyvg0INwZROIjYYpkcssxQcHF7gSCMVye1m
         bBEaxAw7sfW7Sk8tdkVVpN8/p/uIXMJAHAs1Uryu7wyCrripNKpeKQV9kb7SfV/fZi7g
         G7IYLXIO0rQaBbc2LNXkQaMgVofsMRE3LRUL2NwT+MHcZTd4kqYq2oXhOvrsFSAiShhM
         YTwQ==
X-Gm-Message-State: AOAM533zKHFpbVRNtr/aqHlkTMO5cdTy3yMI3Uy9gSDsn8cpDakkn9pz
	F/t7P/zfzsmi45v19lKc0FU=
X-Google-Smtp-Source: ABdhPJy5xac3o6VLzZmdhx320l/YQZeoFvAihKm8c2rxGR/p6OErYb07mUiEjgJ0ZZAVaJ1O78yuHA==
X-Received: by 2002:a37:4250:: with SMTP id p77mr348727qka.130.1634654899520;
        Tue, 19 Oct 2021 07:48:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f118:: with SMTP id k24ls10279775qkg.11.gmail; Tue, 19
 Oct 2021 07:48:19 -0700 (PDT)
X-Received: by 2002:ae9:ebc2:: with SMTP id b185mr266339qkg.491.1634654899035;
        Tue, 19 Oct 2021 07:48:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654899; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uw+T2z/DpgMZkj3JXnW5ajHUHjnoG7QzSMYlHcuRihGqy9tJOZgY1KeO6R74LRZ8dv
         enkR5zFRROp5uND3wScPuJ9Z89Qmn2bSEYOsnFRgo8ZvVwAqUsjQQ9Iq/vIVu1rf9voN
         aaxVxgf7Gft89A9rrYQCG+POin24NVoBLayyt61mUWIp7dcBBX03ARjOjKxIAnynH6q4
         7KI6hMFAO57JFUZSPYWKgMg/tIqygPAFydSDd+lQbJL8agTxhm19eNL/kq12alhVKJ1v
         GXcOuFWPsNxNxh9ORoDWf9qgUh4dUwXaG7r2dTEZ3tC3HYnBpg0iZbWBxqPuBLtWyv41
         2+rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Jb1uETqWVAaoOM305t81Q0H2Deol3CCp7nQLsSHbUSs=;
        b=qdxw3oitWrB8xHAEOrlwOqPUBTeq/50yBEI7SR3nXV489H6IyUCekqEzpXCgyRWDES
         X0PaS7eG6wOQ5L7AixQV6Nius1uxhzc26D+9bV+dtwEhFU64h2OhPB7HqTKuFzYYHcC7
         DxdpOJBfiT0jzmRZRu4+//eV6QGChjOFRiDH8VF3vKAC3QpFE8glJ/raddZ/YnxPTbem
         S74Nda10c98vAqKbl+M6mx/Jj6Te+0l724Aut3uesMdCuC7GUfIyK4BGdrdG+/LUWhgu
         85RPXyDYDjc8AgW0bA1vT5ntspcf+P366G///40xtkFnA/nhjcuIjjxPyxVNauzzatzV
         Tp0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=noWFWeo9;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.244.67 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2067.outbound.protection.outlook.com. [40.107.244.67])
        by gmr-mx.google.com with ESMTPS id k18si198036qke.1.2021.10.19.07.48.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.244.67 as permitted sender) client-ip=40.107.244.67;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YuaITKXVjeV2xeMUkmILYlBI0mX+fNub31B9JBT3Ms5+x1lrgOkZxrCKyQSpuvO+Y7++DhBo3x8ByJDYEAyk1fqIWecUfIYUpQRQ9Vwe2xrrJwXDlDiMH6iRA47mVQNWWuH4bVTqYL1QxOm2l/mgbQv8c9CjKpeCxGRWjWPTm/P+PFsBF4TCW5zcLejr86BlLhsl9FA8nOwYBL+fJwfsMOlYkQEMw0VmtDA9DeYQkMdoNqrgt/vH0PTU5kM1IyRb8V/l6VYLlqbuP0Uk/gsYDdbgsRdUJ4uOLmU+XtKXjWDzdV2AmmgEepdYLGjbhvcVc73qF84hmxRMQQqp12SVeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jb1uETqWVAaoOM305t81Q0H2Deol3CCp7nQLsSHbUSs=;
 b=cUV0fWxbR1yJgKF7ATeDn3LWL70Yw1Kvlt75aXJj4Xg/NmfrgpYw5Vx5kj7h7TQxTCnvoKYlQHinMJtSph7wJ5i6HiEq33zotDHGQM/VEXNbnn5kobBV7raE6noLkiAlge+BvvB+nAH4D8J5HqjWOYJs39qxRsB0+D0FFFd0oaoA877P69doPwo2wDR3moL+i8ELAponwAihIcDOSx7RNBCBrBtvFDL0p0zbme2PGSS9mMhCBzjEdwIC2fY5svrXB3JyokgJ3vcJSF1ZcO2xMemPqDZT6RZ6lsbxW5FHhvFwvvbsNUD8dRomcNspaB6EDtl5XTe5xDUl9Fy3yti7XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from DM3PR08CA0021.namprd08.prod.outlook.com (2603:10b6:0:52::31) by
 BY5PR12MB3684.namprd12.prod.outlook.com (2603:10b6:a03:1a2::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Tue, 19 Oct
 2021 14:48:16 +0000
Received: from DM6NAM11FT067.eop-nam11.prod.protection.outlook.com
 (2603:10b6:0:52:cafe::fe) by DM3PR08CA0021.outlook.office365.com
 (2603:10b6:0:52::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT067.mail.protection.outlook.com (10.13.172.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:48:15 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 14:48:14 +0000
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:03 +0000
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
Subject: [PATCH bpf-next 05/10] bpf: Fix documentation of th_len in bpf_tcp_{gen,check}_syncookie
Date: Tue, 19 Oct 2021 17:46:50 +0300
Message-ID: <20211019144655.3483197-6-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea5932fd-8d1c-4ff7-2166-08d9930f7bb1
X-MS-TrafficTypeDiagnostic: BY5PR12MB3684:
X-Microsoft-Antispam-PRVS: <BY5PR12MB368401FA52943580A4C36C28DCBD9@BY5PR12MB3684.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C6RKjhAPiBOoyuhWSy0Kg2ciyNFQdhKI0nlgpZbbsRhdrz94GzU5SXt9UvyEStw/+eQYsI+znpIg3vjfuZCtKgIu9oeDh/aEUXo1KlHx9g1v2GpJcIfW1xfcM4inUsYOi546LPU3TuVybGZo4YQzt2mcfDy8M3/wZsgTykhjD2sBA11EhpO05oR/GTobdnecCEUCMtIhk0ITlsffjHkpPLZp/4JnRGq4nqP61HfewNCaRi7qzdOx04O2QmsTb5W+anW1zCcMYKCmUaJIaMetcQa2KkNBrz8D7YOmCjJyEn0cpK4whMR4kaOfjVve66S8uroXGdtU8owLIHKvOqAzuddAfZiyWlzt8re22OyTHliUelGlmQ/ug2ejSPUYrfSZpTKZGz6AhbGcAU+QKIvbp4DP04/z3lO/t/iWJh0XAknIpF7W2L+4XBoceN2QXifZrH8/VdPNLCDiUY7w531MmmaoaNlVnqF/eTiKsJflJ//idWMz0OHy+8UP0coM1UvlPuWQGknyK00awGzg/gfHD3p91BQipUeGLpZjbd5t0UQKfJXrXl08Fyfq9IZiwLLB8vM7wPM6CEFN4TREDM+y+h5fJE/e+fFM6PvQxSXrmcb9INHUvAw++yS297cvxswb2iZ10/NO9IyLYd0QDTEmqOKV3AtS2KEDVVDgxA2c7HyhvN7fyjag2ATfIrk7rWmbeKCFWxejAN6CoZvCyiD53Q==
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(8936002)(107886003)(36860700001)(316002)(6666004)(7636003)(356005)(7416002)(83380400001)(82310400003)(2906002)(336012)(47076005)(2616005)(86362001)(70206006)(70586007)(36756003)(7696005)(110136005)(54906003)(426003)(8676002)(5660300002)(508600001)(186003)(1076003)(4326008)(26005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:48:15.7135
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea5932fd-8d1c-4ff7-2166-08d9930f7bb1
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT067.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB3684
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=noWFWeo9;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.244.67 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

bpf_tcp_gen_syncookie and bpf_tcp_check_syncookie expect the full length
of the TCP header (with all extensions). Fix the documentation that says
it should be sizeof(struct tcphdr).

Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 include/uapi/linux/bpf.h       | 6 ++++--
 tools/include/uapi/linux/bpf.h | 6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index 2f12b11f1259..efb2750f39c6 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -3543,7 +3543,8 @@ union bpf_attr {
  * 		**sizeof**\ (**struct ip6hdr**).
  *
  * 		*th* points to the start of the TCP header, while *th_len*
- * 		contains **sizeof**\ (**struct tcphdr**).
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
  * 	Return
  *		0 if *iph* and *th* are a valid SYN cookie ACK.
  *
@@ -3743,7 +3744,8 @@ union bpf_attr {
  *		**sizeof**\ (**struct ip6hdr**).
  *
  *		*th* points to the start of the TCP header, while *th_len*
- *		contains the length of the TCP header.
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
  *	Return
  *		On success, lower 32 bits hold the generated SYN cookie in
  *		followed by 16 bits which hold the MSS value for that cookie,
diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
index 2f12b11f1259..efb2750f39c6 100644
--- a/tools/include/uapi/linux/bpf.h
+++ b/tools/include/uapi/linux/bpf.h
@@ -3543,7 +3543,8 @@ union bpf_attr {
  * 		**sizeof**\ (**struct ip6hdr**).
  *
  * 		*th* points to the start of the TCP header, while *th_len*
- * 		contains **sizeof**\ (**struct tcphdr**).
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
  * 	Return
  *		0 if *iph* and *th* are a valid SYN cookie ACK.
  *
@@ -3743,7 +3744,8 @@ union bpf_attr {
  *		**sizeof**\ (**struct ip6hdr**).
  *
  *		*th* points to the start of the TCP header, while *th_len*
- *		contains the length of the TCP header.
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
  *	Return
  *		On success, lower 32 bits hold the generated SYN cookie in
  *		followed by 16 bits which hold the MSS value for that cookie,
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-6-maximmi%40nvidia.com.
