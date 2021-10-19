Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBEVVXOFQMGQEYNCWBKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCBF4338FF
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:47:48 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id i7-20020a056122208700b002a3418e27a4sf7300616vkd.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:47:48 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654867; cv=pass;
        d=google.com; s=arc-20160816;
        b=ir9LJsJU+w/pbnwq4OO2QnK/rLmNrz7lIJPzbXfQHRDfDjd+swAYrjcVaTgIA8QOTd
         B9pcSgiHVqOYt/a3Rm6b5hq3iu9AP+9nYtcQHkOujZTxBR5pUchcEIBkvETR6K5k3wwA
         GpdfdqH+aWB7ITWubs1EQi6I95sGEg2mVE/PoOl4e4Vl208sG8L0YsejJWTezrI50KmL
         ClzAAC2hsjtPspY0VpE+TvpiLBz0ASKpl+LE/SG3syFqvF3bT9Ta9jDdnPWhJSeC/vte
         djZErjFi33WBbY7zoylcSTqhINmBBKDkDDoazec/G7/TiFJd7MaROLN3SEBoXVSGng35
         3MJQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lqEU4qjpeH7OizGmAo/KTKg9KQmNAZ9Cp25LlZgE3lM=;
        b=xYNdim7G9BNexNvsNCPMNJN3/Q76W12e2IhSZxQDHDH9E/dLqdLZhVBx9Mbu2fagrf
         jcT/gOKx8ILZ7HLySt5YDWngkcXaxFgdRNLfV6asPMYjvkD5Cpvg4IsBf+UPV6CpiH+V
         RNqNzoSSXNz2Yy8JMWlVOTWke14vGvTYuHdtmZzKSeuCLzyREz0j4+Lf2fCGSrlFE9hJ
         o54UmKiHQ36t5WGiR+c9Ao70RZtMzwzTrLSIsxoAcQsMlsdNk0PqL6uCUifclPfZQDck
         SJ5HARZGZc3O3gKPuUO2oQMMknbKlXKChKnBv5NUpZ9dQy7qu0wcefzz7wXuSMT/4al+
         QCTQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=RFsH5apj;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.95.46 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lqEU4qjpeH7OizGmAo/KTKg9KQmNAZ9Cp25LlZgE3lM=;
        b=JoVub/PvOHnj5T+E0UhZXAzR1wEdiyEhKVgSMY9yv9IjR09sDvk0NvwliTerzUaQMU
         YqhFlRcPy7Zbnnmue1OoFl7luluGYdEjAZ5tQJmiPBczaRvzU4G2YUFSVhXr0j2KUaK4
         1Eh/ahSVRO/qk+HQG+rnQV6Ue4BPb+gqYknfVyFrbhw42zaW0maqYUqTVH9hq9BPqK42
         Pj9ev4ARd4ThIByhrvEBfJwuZVIBWVtspvTG6pCB0Dgh5811ejj4MIublQXnLJGiUKh7
         PlvnX3ZCZBAhyehbnfBbvt8RBzsszWf/A2KIh2HiF1o9DQKczwmRNFv/UVgB5b/DmPxK
         sbkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqEU4qjpeH7OizGmAo/KTKg9KQmNAZ9Cp25LlZgE3lM=;
        b=wNK7knxjLtlCJkaer9cw8YWJHISOXRy/xYbX4NtNVv9iPZyyAYa7KldzDPOIFjz5Kq
         SEDbwIL3/PD3qWu2ksUEACPTfl03Ri7W9GLrgosXSvwFDC2zsXvHHza9Q5/2KOez4hSN
         MYs33Xcl0Zr0HezJsmPBgRhbp2jQzt3nXKldhTnHqnLEP6EnALjUeqzf8kIXkZ/jnqPK
         V2uuHhn3iJXiJ6RxP8y80rAXzY/hKlVJvB97xk+8BAAW6LMoHk9AxMlIqX2S60o/ucsk
         1pCcOkYnX3ZjCymEHrXH9wRztcZT1bPhb1K0T1milnlcjJSYM7vn/FAide+HQ+mPKYf8
         xLXA==
X-Gm-Message-State: AOAM533iVIAKtHdJiJRHd2e2qhT61Kw6UD+521ecCPwWNEwOPPvw8ZLu
	ieSoR5mPq8x1LAeob/VJGOM=
X-Google-Smtp-Source: ABdhPJzfBZfHU0hStpNAQsBiBn0Gfp+r7fwLgMC1nEOISN/ixfhVSpSrfkVvzfwvzvbIuDDX2CGhjQ==
X-Received: by 2002:a67:fb4f:: with SMTP id e15mr15886337vsr.8.1634654866785;
        Tue, 19 Oct 2021 07:47:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3763:: with SMTP id o3ls3626550uat.6.gmail; Tue, 19 Oct
 2021 07:47:46 -0700 (PDT)
X-Received: by 2002:a05:6130:321:: with SMTP id ay33mr375229uab.140.1634654866275;
        Tue, 19 Oct 2021 07:47:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654866; cv=pass;
        d=google.com; s=arc-20160816;
        b=e38HiPr3x8SamBpPAwq/+fKK/lpbUvtT8411tKK3w6pYFlFdywQcH19BlVkoKh5aHo
         K2I3u20MUxnFkx8tmPo+E+A2JIqlv9njzJD8/4yUkWIjLQrz6OP1ChMyw4y/luvCaaZx
         OcYKrETuRSFUUTwNIeua75w6k3/UJpnabSaod442VyF5SE/YjNotyVbrFm4dGHNq+v2S
         JFooza5MyaRo+S/GqoRmqttX/1oQv7lvni+IKLdIXiu92dEkF098ekj8jr76GIYOqckw
         rs78B7xM3IGCYpHeKHNufqQAZmv/+1hE9dtwlIbsESDOhZM7ZSr7cRbqJ3RyGIEjTWVB
         mBpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QwTjwXxdG12o2mQxxRArAsWV4kp+J5whluLckcXufEY=;
        b=VF/MVr5V3+iOigglUdPrE+eK+HK5huy0WyoGxdoNLXrx5wS9V3VqMzbJYVZakzEobn
         gnkFGuP08naG3SppelPftIIJCKflCaIDWbg8dLuMXHkLq58+P/rvadh0FBHMh9Iz7LZl
         3Cs985uVC3NIhNNttiqzkBLVbb0h7PVhzTpxpmIjW2P92+x0cVgJ0A4Ubl+MhTv+Ub2A
         pvMEKVZoA3t3ixPBP6lADHGBRVoPJN2mgL/eLbAtwPM8+vja7ZcNDhde5AV1Ug9tSw/t
         OqDwVqAPiDtrPDUrPCgKlRm7er9aduzed94GEGUkQokxThOLr2N7vL24gYCmMieVozj/
         55Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=RFsH5apj;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.95.46 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam07on2046.outbound.protection.outlook.com. [40.107.95.46])
        by gmr-mx.google.com with ESMTPS id h133si977912vka.3.2021.10.19.07.47.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.95.46 as permitted sender) client-ip=40.107.95.46;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TfWfD1o2Bp2QtmYhRrYEl+VJyq97RGb0bP4das5qSztfOCTF6CsgsSqH3PzckdEIGCND9hghzbJwO5HGJOicmaL43x7tjv0detKk1QcsMkrQKOOB8rt+ngmSBxkP7zj2xCOFH7MNUTc+KM6ISp4tZ9hz1bNMETCCXmkmo6XCrDO2HGtQncoePf+9CV3oW9KinFku2A9YWSnpA9zeh3zhueiDUqLjjGEB6dfel3vWm+Rmsxk2gjU5Zaejwuwjd3u2sPEGTDsQn6ydsTQr1NLovH3VLzfG/KMuJh8Wy61D7SVHwcr9NygXT0wHRwOX7qonal4R86XxfHOtueB+tiuxrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QwTjwXxdG12o2mQxxRArAsWV4kp+J5whluLckcXufEY=;
 b=h9PEg0mZuKLHFP5VZs8PMyxlaDA5BbPsDwxZNPeg4UfUNf6/eyawky+leEGdFPlNFiJr2VzrfkzetSKaFBf5Kg/3a7PjsBPoIiUGsWVThR0XYNRSvTvYus0Onb987Eu5vf1mqVc0cziUhK9yDzkDdytiIt/a9nJqMkmbfMZ5klnOJVTFmY9whfRpmPhpoo3FA/Hq0WG39ZECC9mKvlPCAGSLo3nWWrSe3ZSksurmUr6T5FbSmg8VQ9ZMuv6zZnI41ULbFh2dvH3rONLtOXBBFJeBKPjdaDJ+d2POq7ZWLrGcHJA255KFrgMSXK8xPMOCKYds4bbt5mDWBPCSPkzRKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from DM6PR04CA0019.namprd04.prod.outlook.com (2603:10b6:5:334::24)
 by MWHPR12MB1613.namprd12.prod.outlook.com (2603:10b6:301:11::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Tue, 19 Oct
 2021 14:47:43 +0000
Received: from DM6NAM11FT031.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:334:cafe::a8) by DM6PR04CA0019.outlook.office365.com
 (2603:10b6:5:334::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:47:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT031.mail.protection.outlook.com (10.13.172.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:47:42 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 14:47:38 +0000
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:47:26 +0000
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
Subject: [PATCH bpf-next 02/10] bpf: Support dual-stack sockets in bpf_tcp_check_syncookie
Date: Tue, 19 Oct 2021 17:46:47 +0300
Message-ID: <20211019144655.3483197-3-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7d9e9ae9-f70e-498f-a6d8-08d9930f6838
X-MS-TrafficTypeDiagnostic: MWHPR12MB1613:
X-Microsoft-Antispam-PRVS: <MWHPR12MB161308509A2C820E0DEA73E1DCBD9@MWHPR12MB1613.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vRCszz2Ht3l9BG44B4UFz+Q1OMaS+0V1EIIMF6sJDnZk7YI+Nze4BGLGog2NvDuGLgdZY14m/AF6vocsyGpn9CbibM7EPKNAVCIPV/N7/qPZ56BHYCO2/IEUDAe8MgJle9Qt92rfz7Rh2ja2DLQLN63TIpAx4KSeM2lTjYqXc9K7NHCH/9eSBrrVclWI+VFU23Hbhxz7Zt1IWyqTqaXkeaOgMIgJDxuPP1gn20rqwYFJ82+YrKvsL+smT+D+CTHI4u6+GTPuIG7N0nWMs4Qj4HQu7/Wjv1R+OrdAH/c9JU0r64EWXgHGg015T3XqFNNLHy+WzaZ9wa6hacuY0QJmuM2x86vN3eHhbRYbwmBrMu25fbI9+0Fycuq1VP/Zxfju8WEaAk64J4mh4qWpLHYQkJZ1VXOKxwZuZ2G1vlqg09XSknn2qJ9xytd+RJKMnZ1CJzBSjbtRpgJBtxIsOTOQnXdVvzQsyC9fHBpa36vHGHclYGXkN+q+Z1e2qvZ1UVwr4hM/Bya9PT6/q/Qt5exYvAatioQnqhV7d7Sa5YkcLMPNgARLPQPmwmmnZqugnJS6efJB66AG7LvtL1zOpIYP39gbf/t8xbsS288+JsDvVIn7hkO7XwfBImb1wGkSeASWRbvToA8Tp8rLtja8U+mSJJtj3COpWF+MLMwUhyt/3RIjpIbIYyatE0vVrsvkWPEo2JCyTtvwjK5d8I6D4dulmQ==
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(7416002)(47076005)(36756003)(186003)(1076003)(86362001)(7636003)(356005)(70586007)(83380400001)(26005)(426003)(4326008)(2616005)(110136005)(107886003)(316002)(36860700001)(5660300002)(70206006)(336012)(54906003)(2906002)(82310400003)(508600001)(8936002)(7696005)(36906005)(6666004)(8676002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:47:42.6304
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d9e9ae9-f70e-498f-a6d8-08d9930f6838
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT031.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1613
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=RFsH5apj;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.95.46 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

bpf_tcp_gen_syncookie looks at the IP version in the IP header and
validates the address family of the socket. It supports IPv4 packets in
AF_INET6 dual-stack sockets.

On the other hand, bpf_tcp_check_syncookie looks only at the address
family of the socket, ignoring the real IP version in headers, and
validates only the packet size. This implementation has some drawbacks:

1. Packets are not validated properly, allowing a BPF program to trick
   bpf_tcp_check_syncookie into handling an IPv6 packet on an IPv4
   socket.

2. Dual-stack sockets fail the checks on IPv4 packets. IPv4 clients end
   up receiving a SYNACK with the cookie, but the following ACK gets
   dropped.

This patch fixes these issues by changing the checks in
bpf_tcp_check_syncookie to match the ones in bpf_tcp_gen_syncookie. IP
version from the header is taken into account, and it is validated
properly with address family.

Fixes: 399040847084 ("bpf: add helper to check for a valid SYN cookie")
Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 net/core/filter.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/net/core/filter.c b/net/core/filter.c
index d830055d477c..6cfb676e1adb 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -6714,24 +6714,33 @@ BPF_CALL_5(bpf_tcp_check_syncookie, struct sock *, sk, void *, iph, u32, iph_len
 	if (!th->ack || th->rst || th->syn)
 		return -ENOENT;
 
+	if (unlikely(iph_len < sizeof(struct iphdr)))
+		return -EINVAL;
+
 	if (tcp_synq_no_recent_overflow(sk))
 		return -ENOENT;
 
 	cookie = ntohl(th->ack_seq) - 1;
 
-	switch (sk->sk_family) {
-	case AF_INET:
-		if (unlikely(iph_len < sizeof(struct iphdr)))
+	/* Both struct iphdr and struct ipv6hdr have the version field at the
+	 * same offset so we can cast to the shorter header (struct iphdr).
+	 */
+	switch (((struct iphdr *)iph)->version) {
+	case 4:
+		if (sk->sk_family == AF_INET6 && ipv6_only_sock(sk))
 			return -EINVAL;
 
 		ret = __cookie_v4_check((struct iphdr *)iph, th, cookie);
 		break;
 
 #if IS_BUILTIN(CONFIG_IPV6)
-	case AF_INET6:
+	case 6:
 		if (unlikely(iph_len < sizeof(struct ipv6hdr)))
 			return -EINVAL;
 
+		if (sk->sk_family != AF_INET6)
+			return -EINVAL;
+
 		ret = __cookie_v6_check((struct ipv6hdr *)iph, th, cookie);
 		break;
 #endif /* CONFIG_IPV6 */
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-3-maximmi%40nvidia.com.
