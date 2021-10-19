Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBWFVXOFQMGQEBHUAWVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DABA433918
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:48:58 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id a6-20020a17090aa50600b001a0a81b8664sf1740940pjq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:48:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654937; cv=pass;
        d=google.com; s=arc-20160816;
        b=JA+vSXWm6CEiUudcq02aBTsoElFjkoCXBkwHxSbgOe6VsIMHzm5Rxz469xd6UfocLt
         zoesw6XZzZ/XVAJ9iyr3qunCqguL9pxREQqYuCEj+FI1QJu/UUxcJ6j3B3gmF03UOUds
         V7iH2rvsWw794soCnZawMm/bSxm+SSxGX4IzmrTeg85Sy0WT/FZJTixobL+vIMzmYI+9
         y8cQe0rGWmmZpntxdASZVfWoVJifu9w/x/qyfWQ5bZZI/KtDjdgtZys4Yqg4xFEF1QVw
         kXMx6X/+7gcMKTU4nAcfCiyFn4jKFn/4M1dNQMjSF/wL1VgB4+2rb/bu6PxBs/lUJUeM
         aSCA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=UR6BMHbMSgIe6X2uaa1sGWncSI8ZlwTEUunY+tZZnaw=;
        b=ZsghGLOt/Dg0rIdxbVcUGhTiiBdGN7dJX4dRFIX7iBT3yozAxvSZzglZuEzSOP7LZr
         FpL+upR7J8TTpvIhNvkSdYvKAw7glAUI0PgRGY0PS/IyIksXbIIzvWUlQR4Bsq5PTpig
         +rXTl591yvZyYw8A7uqTJdfu9tAS6zyFuQ99Sl14y4VD/LkJEMk4mHdMHXiTXKVG4Bik
         sqsaT9GTa4VFka+m4NUb6+8zNWAp2L+ZzCET8ZTONfYwDcRx+lfkmp09wJ3XnnIEjeCu
         OjduIGHOY+/uULiKFtVRrOE1ccCGqOvioHVe3AZt2+3hfa8aKqM++ZGlpFYDVjYi072F
         2Wkw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=FJHAr3YV;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.237.87 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UR6BMHbMSgIe6X2uaa1sGWncSI8ZlwTEUunY+tZZnaw=;
        b=QGMAyjHrJp9e79jIKHvsynBPqozgqGOanFu7GzoCql/18cLjyJ14MzVQRwQoMozBfV
         yGs8AjuqU0dBI1vO4waM+4UeCuBZX9YEoHTslOBMQ2zG44mXI5jlWTe/VX2tj1O9s1bC
         8ThTArq0RmdRxZCwD7QKS0/mIaAfILMAgx302cmNedJyIdxjBk8rOyqdUA8d8KOjk50Y
         HZZGrICxlOutBcm3liP4S91PgJfjWriMf80RkRntpmBDMH3Pd/K9jdh4G2+12mY3QYoi
         vH0u5HqrwxyYwzDoF56MYoKfm81LupWatxlcD3yFlDcZuzOuK8UmRu1mNMAdZlxSDVlz
         6Yhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UR6BMHbMSgIe6X2uaa1sGWncSI8ZlwTEUunY+tZZnaw=;
        b=5Bh/5qSyEIVOkOzBegcu3yo6gZI0ILTUOUF+eoCYMv2hIxJ3aQLezzgwb7hB0kxpFK
         VIOpMy2+8K/wP010bc3fGKu5xhWOuV8bYxrafVhpYSD1coUls1ZitBieWx4H5kchAQZe
         VLLeHRjhxh3gbn2l2vBa1jR9CRKtARPA6CIGvHPXppaS4ngrqWqeKj2fzoL4N443aH0r
         rfILgfvrEU39YPFlaUre56Q1KNlGt4RUBzSadTphmLcNKHKRfE4rGpo9BRWBaS7JaTZz
         luTJETRLVY1iIsL9/wPIv4HJsa4f9Qadnosq0Y8B5IWVyrqEJr/0oE9tq9rizfsLXgdQ
         9lAw==
X-Gm-Message-State: AOAM531W4AveWwcdCLxBtkOH80+ejhKxzfgWWDWX/W4bbHJkbYtSrESN
	pJxqBCHonPR9ImoQnziJxio=
X-Google-Smtp-Source: ABdhPJxGWv1pZMr5OVeI70kTSf5je0U0uEDUtKlF5s5nOK+6JPQQduMpgqwUwFEGM88SUAmcarac8g==
X-Received: by 2002:a63:81c3:: with SMTP id t186mr22160062pgd.205.1634654937004;
        Tue, 19 Oct 2021 07:48:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:74c1:: with SMTP id f1ls11103357plt.10.gmail; Tue,
 19 Oct 2021 07:48:56 -0700 (PDT)
X-Received: by 2002:a17:90a:b382:: with SMTP id e2mr224259pjr.119.1634654936488;
        Tue, 19 Oct 2021 07:48:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654936; cv=pass;
        d=google.com; s=arc-20160816;
        b=u39eU0iuFQODCSp3JV5TwX77eWQKCkUyJddFuavCMo7uUTvk2Bd8KR8mpeYDfimYkw
         qWVhilfbjbxY/alhULEQ4Oqo+AKwaR/kdjbPQuKDlVF0dFKnrZyDUeI5mPMAsm8I04iQ
         LSnhEtKlN35ZdhECLc3mDYnefmzt+Jx7howShL+Q1fC2MgZNf4fj20Hj3IB3QM9msUfO
         63kx3C32uJRDjjuQslko712O9bbSbj8dPulC5blKZumNRKsMh/0ejA7VLugEvEn8FcR/
         xAKdLaLr7gu8gnZvsodhgrjkZmhL8vgcYEJArYJp5XBEjrLqEF0TEh4mBKd01C1WndCq
         Y++w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=izyikvGZoGtoyPRFWarjhXP/b/YofPb6QbY7D3U8IAM=;
        b=V7KxjPrBS361jufugD61uexPMON8qIELeWrS+3xIIMb4EpXHS+bbpXNGW6pfT+cKsf
         KfISKOtZXB4pF7zsphEIGZXx90C9lbJ9O2vsEP+Gtwsg1BcZudx5+/uiAw47C6A4rlvg
         J4IEwFKFXH/ZrV1n01M5Yq9IezzKqnKMmZgabWGMbn9RSHjluFgmGCluiwEfxk2xI75N
         QZCXDG3ddTMUjAZLCchonFltW9G4mGMdkIo9C2kbEN0/Il9c919FRqfvZ56+iZ2Fa0Vo
         KHLvLI3rFVI59bRgy17uWvRuORxn577csPqVt/0t3gcdoFRujtSgEoZ/1E9ws0PH/Wgb
         LLdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=FJHAr3YV;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.237.87 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2087.outbound.protection.outlook.com. [40.107.237.87])
        by gmr-mx.google.com with ESMTPS id b20si555128pgw.4.2021.10.19.07.48.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:48:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.237.87 as permitted sender) client-ip=40.107.237.87;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QR0Jp33Kd7nK6ZQ16Fmaje31Zu+bnWsw4phT9T+LeLi8EUvzPuBKQuwMRPu0jb0hY/lNmN8GeAfh9jsrl/ZhmBctWozyunV4VesAWBxFjMvWF0gqCR7wEMCChoVDWnDHE+MLkYMYDAPrkwVJU56THDtVN++xxN326oXFs4DPYVTlbJX4KUa2wkJ0uEFPf6PdDRtcZCXngqPec0jlh5vuP0vhPIkrEDxPjuv+p0pig8RfkbaAwekdzzgISnyssL1YzMiTTAbqc/XgYQZwNUnT8VFtpyhxZi7Az9OPF5LwVmLeEXtU9RxUfBx4Ju4KEjUi/RAPoE+R+mgQjKF3lCJQ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izyikvGZoGtoyPRFWarjhXP/b/YofPb6QbY7D3U8IAM=;
 b=AXTQrIOlYASKDJCMhgspcb05G78EWfaFyLxdXU3jA2kpgGvrG1l5dZRrl4eZeTpHPFgSpPR+NDbaP7Q3SxGvOo04ETRfRZBEQ7DReE5zZWhxqoL8McsiNyVtMkT7WOM53ZuY3obAGuPvruhyesvGYytwdHlJKeLiLWSmUWhCtspz3v0fX4ceHo3FTU++X9xEumW9Z1g/H/X43+apxV0Y0fNISLfz2dVi5LujSsR0X/ZDJgOTp4Rgow4Nmel4AyAXWoDkf6JawN1jDjsCBYvFmE4NjJDkEyLb5malm4p5/BTFsnV3rVj1PyY7G8wAXbErPcZRkY5wLBzGxvEGRV7ZJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from DM5PR07CA0096.namprd07.prod.outlook.com (2603:10b6:4:ae::25) by
 SN6PR12MB2637.namprd12.prod.outlook.com (2603:10b6:805:6b::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.16; Tue, 19 Oct 2021 14:48:54 +0000
Received: from DM6NAM11FT008.eop-nam11.prod.protection.outlook.com
 (2603:10b6:4:ae:cafe::8) by DM5PR07CA0096.outlook.office365.com
 (2603:10b6:4:ae::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT008.mail.protection.outlook.com (10.13.172.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:48:53 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 14:48:51 +0000
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:40 +0000
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
Subject: [PATCH bpf-next 08/10] bpf: Add helpers to issue and check SYN cookies in XDP
Date: Tue, 19 Oct 2021 17:46:53 +0300
Message-ID: <20211019144655.3483197-9-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de6d4987-4805-4e21-0fc4-08d9930f9221
X-MS-TrafficTypeDiagnostic: SN6PR12MB2637:
X-Microsoft-Antispam-PRVS: <SN6PR12MB2637EECC6F31FDB017B7E293DCBD9@SN6PR12MB2637.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yb5UrXtby0H1LScP0WRGdkfZIEMUhxUkjWu0eDn8ulmQVsAlfnyyPMhD5yvTK69SqZ9Zjv8fGhMBhllbRgUwe88iZuPmY2ihJ08Eohgq4uMRVO+WFG+0gZ3f09+Hab07b8d9F8GfQMpzaFxLN3dtMFODiQpHhdZR29YZSfpAsWwVfd6nNSzwM56McIIhOqHkdxXHTnGyDOzQntGyi3BtuslAkf6dECcrpIPuC0rgGMP1If6dPRTIG2cSAVTS+jJwXQGFqzo0HgkLxbjkAHMuHlc107itsd4aAgVfnSd1Z0LQR0enQisqggiHtV6dCboTK7muflOzrSfyl/+QMiocQ8pZfeh8O+Rxy/SXRAwA8NiZAS/GaWQy5MdlRrqmvJS0mJ27h5pAylReotdpWU6QChlmjdD0y4HXQ4DY4m/Sg0EIGZt7x/htkwZfK1LpawchcWL/RyaFL9QtscLaIJbwkS19sz8F/p6/Z8lC7aoBgs7fcKPSZNFeMsdOBQnIZbFs6TBvJdl8ghF+IMM02Lx93B9zbBtTBECn1MAqAcNvxsxpIo71eGi56mzy89o1vVTlOumfpbgk/IedI6TnT18R9S9PY2xLUlmgHaEJ055mEy+9/R+r0U2HInl4BQ7Be3C/lyWQ9F4xWAoQNwZg5r7bBqKq2+ZpIB/72xwObuwXd1BmMiForkpPUnltkCrtHAatbwtDTV7mKQG0z3+J4wcZFSPPZ0eXXXHOH0+7dYcBHs4=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(70586007)(7636003)(36860700001)(4326008)(8676002)(82310400003)(2906002)(107886003)(54906003)(426003)(110136005)(70206006)(508600001)(47076005)(7416002)(5660300002)(83380400001)(2616005)(30864003)(6666004)(336012)(36756003)(7696005)(1076003)(26005)(8936002)(316002)(86362001)(356005)(186003)(21314003);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:48:53.3189
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: de6d4987-4805-4e21-0fc4-08d9930f9221
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT008.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2637
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=FJHAr3YV;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.237.87 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

The new helpers bpf_tcp_raw_{gen,check}_syncookie allow an XDP program
to generate SYN cookies in response to TCP SYN packets and to check
those cookies upon receiving the first ACK packet (the final packet of
the TCP handshake).

Unlike bpf_tcp_{gen,check}_syncookie these new helpers don't need a
listening socket on the local machine, which allows to use them together
with synproxy to accelerate SYN cookie generation.

Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 include/net/tcp.h              |   1 +
 include/uapi/linux/bpf.h       |  57 +++++++++++++++
 net/core/filter.c              | 122 +++++++++++++++++++++++++++++++++
 net/ipv4/tcp_input.c           |   3 +-
 tools/include/uapi/linux/bpf.h |  57 +++++++++++++++
 5 files changed, 239 insertions(+), 1 deletion(-)

diff --git a/include/net/tcp.h b/include/net/tcp.h
index 4c2898ac6569..1cc96a225848 100644
--- a/include/net/tcp.h
+++ b/include/net/tcp.h
@@ -431,6 +431,7 @@ u16 tcp_v4_get_syncookie(struct sock *sk, struct iphdr *iph,
 			 struct tcphdr *th, u32 *cookie);
 u16 tcp_v6_get_syncookie(struct sock *sk, struct ipv6hdr *iph,
 			 struct tcphdr *th, u32 *cookie);
+u16 tcp_parse_mss_option(const struct tcphdr *th, u16 user_mss);
 u16 tcp_get_syncookie_mss(struct request_sock_ops *rsk_ops,
 			  const struct tcp_request_sock_ops *af_ops,
 			  struct sock *sk, struct tcphdr *th);
diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index 883de3f1bb8b..e32f72077250 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -4998,6 +4998,61 @@ union bpf_attr {
  *		pointer that was returned from **bpf_ct_lookup_xxx**\ ().
  *	Return
  *		0 on success, or a negative error in case of failure.
+ *
+ * s64 bpf_tcp_raw_gen_syncookie(void *iph, u32 iph_len, struct tcphdr *th, u32 th_len)
+ *	Description
+ *		Try to issue a SYN cookie for the packet with corresponding
+ *		IP/TCP headers, *iph* and *th*, without depending on a listening
+ *		socket.
+ *
+ *		*iph* points to the start of the IPv4 or IPv6 header, while
+ *		*iph_len* contains **sizeof**\ (**struct iphdr**) or
+ *		**sizeof**\ (**struct ip6hdr**).
+ *
+ *		*th* points to the start of the TCP header, while *th_len*
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
+ *	Return
+ *		On success, lower 32 bits hold the generated SYN cookie in
+ *		followed by 16 bits which hold the MSS value for that cookie,
+ *		and the top 16 bits are unused.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EINVAL** if the packet or input arguments are invalid.
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
+ *
+ *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
+ *		CONFIG_IPV6 is disabled).
+ *
+ * int bpf_tcp_raw_check_syncookie(void *iph, u32 iph_len, struct tcphdr *th, u32 th_len)
+ *	Description
+ *		Check whether *iph* and *th* contain a valid SYN cookie ACK
+ *		without depending on a listening socket.
+ *
+ *		*iph* points to the start of the IPv4 or IPv6 header, while
+ *		*iph_len* contains **sizeof**\ (**struct iphdr**) or
+ *		**sizeof**\ (**struct ip6hdr**).
+ *
+ *		*th* points to the start of the TCP header, while *th_len*
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
+ *	Return
+ *		0 if *iph* and *th* are a valid SYN cookie ACK.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EACCES** if the SYN cookie is not valid.
+ *
+ *		**-EINVAL** if the packet or input arguments are invalid.
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
+ *
+ *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
+ *		CONFIG_IPV6 is disabled).
  */
 #define __BPF_FUNC_MAPPER(FN)		\
 	FN(unspec),			\
@@ -5181,6 +5236,8 @@ union bpf_attr {
 	FN(ct_lookup_tcp),		\
 	FN(ct_lookup_udp),		\
 	FN(ct_release),			\
+	FN(tcp_raw_gen_syncookie),	\
+	FN(tcp_raw_check_syncookie),	\
 	/* */
 
 /* integer value in 'imm' field of BPF_CALL instruction selects which helper
diff --git a/net/core/filter.c b/net/core/filter.c
index f913851c97f7..5f03d4a282a0 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -7285,6 +7285,124 @@ static const struct bpf_func_proto bpf_ct_release_proto = {
 };
 #endif
 
+BPF_CALL_4(bpf_tcp_raw_gen_syncookie, void *, iph, u32, iph_len,
+	   struct tcphdr *, th, u32, th_len)
+{
+#ifdef CONFIG_SYN_COOKIES
+	u32 cookie;
+	u16 mss;
+
+	if (unlikely(th_len < sizeof(*th) || th_len != th->doff * 4))
+		return -EINVAL;
+
+	if (!th->syn || th->ack || th->fin || th->rst)
+		return -EINVAL;
+
+	if (unlikely(iph_len < sizeof(struct iphdr)))
+		return -EINVAL;
+
+	/* Both struct iphdr and struct ipv6hdr have the version field at the
+	 * same offset so we can cast to the shorter header (struct iphdr).
+	 */
+	switch (((struct iphdr *)iph)->version) {
+	case 4:
+		mss = tcp_parse_mss_option(th, 0) ?: TCP_MSS_DEFAULT;
+		cookie = __cookie_v4_init_sequence(iph, th, &mss);
+		break;
+
+#if IS_BUILTIN(CONFIG_IPV6)
+	case 6: {
+		const u16 mss_clamp = IPV6_MIN_MTU - sizeof(struct tcphdr) - sizeof(struct ipv6hdr);
+
+		if (unlikely(iph_len < sizeof(struct ipv6hdr)))
+			return -EINVAL;
+
+		mss = tcp_parse_mss_option(th, 0) ?: mss_clamp;
+		cookie = __cookie_v6_init_sequence(iph, th, &mss);
+		break;
+		}
+#endif /* CONFIG_IPV6 */
+
+	default:
+		return -EPROTONOSUPPORT;
+	}
+
+	return cookie | ((u64)mss << 32);
+#else
+	return -EOPNOTSUPP;
+#endif /* CONFIG_SYN_COOKIES */
+}
+
+static const struct bpf_func_proto bpf_tcp_raw_gen_syncookie_proto = {
+	.func		= bpf_tcp_raw_gen_syncookie,
+	.gpl_only	= true, /* __cookie_v*_init_sequence() is GPL */
+	.pkt_access	= true,
+	.ret_type	= RET_INTEGER,
+	.arg1_type	= ARG_PTR_TO_MEM,
+	.arg2_type	= ARG_CONST_SIZE,
+	.arg3_type	= ARG_PTR_TO_MEM,
+	.arg4_type	= ARG_CONST_SIZE,
+};
+
+BPF_CALL_4(bpf_tcp_raw_check_syncookie, void *, iph, u32, iph_len,
+	   struct tcphdr *, th, u32, th_len)
+{
+#ifdef CONFIG_SYN_COOKIES
+	u32 cookie;
+	int ret;
+
+	if (unlikely(th_len < sizeof(*th)))
+		return -EINVAL;
+
+	if (!th->ack || th->rst || th->syn)
+		return -EINVAL;
+
+	if (unlikely(iph_len < sizeof(struct iphdr)))
+		return -EINVAL;
+
+	cookie = ntohl(th->ack_seq) - 1;
+
+	/* Both struct iphdr and struct ipv6hdr have the version field at the
+	 * same offset so we can cast to the shorter header (struct iphdr).
+	 */
+	switch (((struct iphdr *)iph)->version) {
+	case 4:
+		ret = __cookie_v4_check((struct iphdr *)iph, th, cookie);
+		break;
+
+#if IS_BUILTIN(CONFIG_IPV6)
+	case 6:
+		if (unlikely(iph_len < sizeof(struct ipv6hdr)))
+			return -EINVAL;
+
+		ret = __cookie_v6_check((struct ipv6hdr *)iph, th, cookie);
+		break;
+#endif /* CONFIG_IPV6 */
+
+	default:
+		return -EPROTONOSUPPORT;
+	}
+
+	if (ret > 0)
+		return 0;
+
+	return -EACCES;
+#else
+	return -EOPNOTSUPP;
+#endif
+}
+
+static const struct bpf_func_proto bpf_tcp_raw_check_syncookie_proto = {
+	.func		= bpf_tcp_raw_check_syncookie,
+	.gpl_only	= true, /* __cookie_v*_check is GPL */
+	.pkt_access	= true,
+	.ret_type	= RET_INTEGER,
+	.arg1_type	= ARG_PTR_TO_MEM,
+	.arg2_type	= ARG_CONST_SIZE,
+	.arg3_type	= ARG_PTR_TO_MEM,
+	.arg4_type	= ARG_CONST_SIZE,
+};
+
 #endif /* CONFIG_INET */
 
 bool bpf_helper_changes_pkt_data(void *func)
@@ -7703,6 +7821,10 @@ xdp_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
 	case BPF_FUNC_ct_release:
 		return &bpf_ct_release_proto;
 #endif
+	case BPF_FUNC_tcp_raw_gen_syncookie:
+		return &bpf_tcp_raw_gen_syncookie_proto;
+	case BPF_FUNC_tcp_raw_check_syncookie:
+		return &bpf_tcp_raw_check_syncookie_proto;
 #endif
 	default:
 		return bpf_sk_base_func_proto(func_id);
diff --git a/net/ipv4/tcp_input.c b/net/ipv4/tcp_input.c
index 246ab7b5e857..659af6cc7d8c 100644
--- a/net/ipv4/tcp_input.c
+++ b/net/ipv4/tcp_input.c
@@ -3961,7 +3961,7 @@ static bool smc_parse_options(const struct tcphdr *th,
 /* Try to parse the MSS option from the TCP header. Return 0 on failure, clamped
  * value on success.
  */
-static u16 tcp_parse_mss_option(const struct tcphdr *th, u16 user_mss)
+u16 tcp_parse_mss_option(const struct tcphdr *th, u16 user_mss)
 {
 	const unsigned char *ptr = (const unsigned char *)(th + 1);
 	int length = (th->doff * 4) - sizeof(struct tcphdr);
@@ -4000,6 +4000,7 @@ static u16 tcp_parse_mss_option(const struct tcphdr *th, u16 user_mss)
 	}
 	return mss;
 }
+EXPORT_SYMBOL_GPL(tcp_parse_mss_option);
 
 /* Look for tcp options. Normally only called on SYN and SYNACK packets.
  * But, this can also be called on packets in the established flow when
diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
index 883de3f1bb8b..e32f72077250 100644
--- a/tools/include/uapi/linux/bpf.h
+++ b/tools/include/uapi/linux/bpf.h
@@ -4998,6 +4998,61 @@ union bpf_attr {
  *		pointer that was returned from **bpf_ct_lookup_xxx**\ ().
  *	Return
  *		0 on success, or a negative error in case of failure.
+ *
+ * s64 bpf_tcp_raw_gen_syncookie(void *iph, u32 iph_len, struct tcphdr *th, u32 th_len)
+ *	Description
+ *		Try to issue a SYN cookie for the packet with corresponding
+ *		IP/TCP headers, *iph* and *th*, without depending on a listening
+ *		socket.
+ *
+ *		*iph* points to the start of the IPv4 or IPv6 header, while
+ *		*iph_len* contains **sizeof**\ (**struct iphdr**) or
+ *		**sizeof**\ (**struct ip6hdr**).
+ *
+ *		*th* points to the start of the TCP header, while *th_len*
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
+ *	Return
+ *		On success, lower 32 bits hold the generated SYN cookie in
+ *		followed by 16 bits which hold the MSS value for that cookie,
+ *		and the top 16 bits are unused.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EINVAL** if the packet or input arguments are invalid.
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
+ *
+ *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
+ *		CONFIG_IPV6 is disabled).
+ *
+ * int bpf_tcp_raw_check_syncookie(void *iph, u32 iph_len, struct tcphdr *th, u32 th_len)
+ *	Description
+ *		Check whether *iph* and *th* contain a valid SYN cookie ACK
+ *		without depending on a listening socket.
+ *
+ *		*iph* points to the start of the IPv4 or IPv6 header, while
+ *		*iph_len* contains **sizeof**\ (**struct iphdr**) or
+ *		**sizeof**\ (**struct ip6hdr**).
+ *
+ *		*th* points to the start of the TCP header, while *th_len*
+ *		contains the length of the TCP header (at least
+ *		**sizeof**\ (**struct tcphdr**)).
+ *	Return
+ *		0 if *iph* and *th* are a valid SYN cookie ACK.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EACCES** if the SYN cookie is not valid.
+ *
+ *		**-EINVAL** if the packet or input arguments are invalid.
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
+ *
+ *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
+ *		CONFIG_IPV6 is disabled).
  */
 #define __BPF_FUNC_MAPPER(FN)		\
 	FN(unspec),			\
@@ -5181,6 +5236,8 @@ union bpf_attr {
 	FN(ct_lookup_tcp),		\
 	FN(ct_lookup_udp),		\
 	FN(ct_release),			\
+	FN(tcp_raw_gen_syncookie),	\
+	FN(tcp_raw_check_syncookie),	\
 	/* */
 
 /* integer value in 'imm' field of BPF_CALL instruction selects which helper
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-9-maximmi%40nvidia.com.
