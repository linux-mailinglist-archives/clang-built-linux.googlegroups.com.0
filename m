Return-Path: <clang-built-linux+bncBCFIV7H5YYEBB2FVXOFQMGQEDYOJ7AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF6043391B
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:49:13 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id x5-20020a50f185000000b003db0f796903sf17831726edl.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 07:49:13 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634654952; cv=pass;
        d=google.com; s=arc-20160816;
        b=tu+trv61HlT3LaDymyyaDFv/38zahK+hj2pVRZD2ah6eyoahK2hoiGs3mowjT0GRwI
         oaNnPSphDYq9rW7/nmQ0zuzgWfGLS8DA3UNifptLbiJRUijmhB8cCBbmNan96mbOi0dp
         Vw5O5FcTrFT0id9lhPCl4JPcW1cjyDZanmfVx3OPijWesPTxzpzJhJyp9/QI2A8VG7nU
         x5/iolAKhnTjmGLPiHDqmIk5ahbUOwu1YwNYBEw5FHFqZs862JnS5kO9NQDEdZ0NDoY8
         eZ13b3zWx4Crls5d/i1v2hKmCKkRUK5Ew/Isohyp393mNGyOihOVHh/303CRPJ3ntWAJ
         LK7w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=NRGyHUJy6swPYJPMlFEta10aZYPZQg53CfWrCyDxecY=;
        b=Ituwz57SrxgOpHwO8ayOOBXWoOHEHlNalXz+Np30/C3o4vtsRxYzGHj43NCnGS72jE
         ywzyTZQETQOt8Nk9HF3Wn5LfLScd+itkKISPEtgtL75XKqxykLANTFz7H9d+doYYNieW
         6qhCdvGdOSwmgJi5Ot2UunN8qM/AsstvpOjbGNY8R1Kven3CWqRfUYFkKn063Smz3SHA
         I5DWut9OA0jGNFOVRMc8sSCIXygfTRQXFkmaINbRU24Tg2I2uPufcGbwputFy8ufby10
         9aQtJ9AD1ORS2d8nsKjekaNl1Oi4wuxZRUhkgHU5wDQ5oIkjyL7bkOVDDfXOxpvZYDnZ
         IaEA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=AWGL2rsx;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.102.61 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NRGyHUJy6swPYJPMlFEta10aZYPZQg53CfWrCyDxecY=;
        b=kt45BbvVpac7nactTIq1ooZCzxoXsAahIy7m7UoJrBvlBRdd5oq37xNuH6Gt63Q0ad
         BkGwHrHagBwuJz7FMfx74jZkNz2VQSZfVQPYEPxhkv2h1PAT4Yhb+Ps2QTGrC08NzT3/
         NHhsdpIqmZFiwfk3hLM7YwfF5WyRSqifmoYV0YQQ4V6VyLw10RaR1/JluQN0OiIbJD53
         YH7q2jiZnWPmv6qVn2gmcmgu86yFYi3dAy9HgebYTRVH0fnDI/SqkikCF0dyyUBTAwFJ
         zCz3QAFXJ9dZUoOP5Wz03um6MWBEO1l0OHn0YwRVxgIPTdpCFC6QJwAw+LRkEwTDfNRd
         Idqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NRGyHUJy6swPYJPMlFEta10aZYPZQg53CfWrCyDxecY=;
        b=Ai+BvA0DoOJ3WoTTtoYqBSuIYE9ZXVGOdgrMd1DvdML7PTtf8Zdr2ckwcxyCp7bVPE
         3X8aaDJoMSlyRFiQ7Wzr5xUYDzTJzggRZxkvHP/78GaQRjgH0sVa/RW/bLswpc9oIvmV
         JI75NTlFhWxA+6a62ftNsnW3uwozSAx3FhppD/UAhHo/j5T2DYFC+vGlnEVkSFck7Yij
         6fY+YuEr28+3xEAgcfTPnFeJAYpDO2P5mai07qb1WA/ja6PUI1tUwTuws/PdsYN0dUgz
         vfMrqdHz9LFxi7s4hARGGVM6b/jN9p3XEBtQBsXp2nJU+9Q2rTTSN7ZEctSlM/wBbjVF
         +kow==
X-Gm-Message-State: AOAM531dPElSUuIhG7fTOxvawQDLwIWI1pzhQO4OWKpKsUtUHE/yaXHs
	viQtcHcgR2Ar17zkFV55BiI=
X-Google-Smtp-Source: ABdhPJwFDJBJlQp7mT6L2gPOnxCJdWm5GETduEhJNlmsyinssbLvDCawWAxfttmn5YmjENSb0mUsSw==
X-Received: by 2002:a05:6402:40f:: with SMTP id q15mr52782876edv.333.1634654952818;
        Tue, 19 Oct 2021 07:49:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls2188952edt.1.gmail; Tue, 19 Oct
 2021 07:49:11 -0700 (PDT)
X-Received: by 2002:a50:e1cf:: with SMTP id m15mr54484623edl.181.1634654951759;
        Tue, 19 Oct 2021 07:49:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634654951; cv=pass;
        d=google.com; s=arc-20160816;
        b=DlZLoyzM47fZBkstGkJdhgBAm8jQPxI2o93r3StpUt7sOKPMOr+NWSjJgpVVrcR0EN
         BkjjpmKVPWVquiRGp5RiWPkdOXewfaB91koYWiQ/YGUtg6m4/UDFyeIhfKLc+klL9xe/
         ZkgkG63bQ9eIzHK8pVS+6fqtcXnnPmr4J1pLQ6YTb3VIZG1rktWL3dcLV6lXXEfxGTsA
         jU8F7WlzVU9visgHf3XaV98gHuRG/giedoLQUpgRRYFBBqRCVLqGNtSqiFdvHE7I9Xh3
         P1NFTjPQn4ITOQMfizCR/40ODPBMl/UXbH8tlAhiqOfuqn1U3pUGQFuRl6vzaYoWCXM/
         zQKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nnYsQpFbbU9w72FPBcPIOhXIc+/fmO4PsWHDublhcrQ=;
        b=VNShIHeudcZ73XOhoH3lWcbYR6mf3s5XDk9e/ppn9d8kEUb7C0kWN7XvH+6NPWjSsb
         zIxNLM/BOc7koIZjtiMfmYWfvnglQAYz8XsKmKhmIb6zZfBr7/xKQe18XhbjxmFakUx1
         NVVUf7Gveryy/pwVPiZ/xY4VKwFPpS6A++SEgg6hfBPJ4NEADvkuPIKPVGQMVluUpOq6
         QInuWBPAm0rT7dFHTbJs5B3qXUnWJJ16bY0j5sJtah1ZiA+e3U9DpLg8lG0+CEpfl09o
         UCwQwMm0HjJnJScLajq1g3fzBqPAYOttDc8mOc59k0gawF5E7ksRMqYj/4vBA9TWe6WQ
         QlKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=AWGL2rsx;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.102.61 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08on2061.outbound.protection.outlook.com. [40.107.102.61])
        by gmr-mx.google.com with ESMTPS id q4si258356edj.3.2021.10.19.07.49.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 07:49:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.102.61 as permitted sender) client-ip=40.107.102.61;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXtTxP1on4jWtDaLl01gttX1LSGswhzZgf9pqnYj61Rec3BYOd6Pq0FDqeC0m5jCPhIpxytzf6v3yv/2oSQYQbykyri0YripxwQlPH2EwCJOl4rTbdCXHi8mGSJzbISuyJ6ldrsghLJJPtJ7tTylKXd8OR1ptJwQ+vsKUwfB2dY/sfIiiDBXxChJM8PBXRmJvYGr9+BXZrGDuwHNG3mC/mw12kTJVagwdH2G18WdHaa+JuDk85ZUSgUmKd6itM3UzGkuH2G0LjDVIHz/Z8To+yRiUuWr3r5FjiFtwhjq6VURHYGi6QpkkEYbegUGy1xWq8dy1xpBxDu0Xd6t5N+ZsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nnYsQpFbbU9w72FPBcPIOhXIc+/fmO4PsWHDublhcrQ=;
 b=X2km8BSqekc6WgS+ahOXKg+NQQrk69fNBz7xMgAFckogSlrB9ccQE382Fpjm15570rN4IHVVMZSnqR/zpcrVSIuK5SHNirzF6hba/1UuzkrFbR7/Mf89wHo0QbmNeQCZ2TaOlISc2zkIkN8VLqqwBQl083RpiQoTdIVhsT0bZRShWiJ7/sEdJM1v85FB38bJF9HW68TEeAlSJLqrA7kNnDohUtwLP3js4552x5elZKiCZepNnJ6rxVkmoogXnN4ted+VNKAQswe1p4EJPOeE1MTzXpUftBDHFareu+QtI1e0VxeBPQC12vPLkjEkyTM+IkiWOyAOU4vzWLNVTjV/2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.36) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from MWHPR20CA0037.namprd20.prod.outlook.com (2603:10b6:300:ed::23)
 by DM6PR12MB3449.namprd12.prod.outlook.com (2603:10b6:5:3b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Tue, 19 Oct
 2021 14:49:09 +0000
Received: from CO1NAM11FT019.eop-nam11.prod.protection.outlook.com
 (2603:10b6:300:ed:cafe::2e) by MWHPR20CA0037.outlook.office365.com
 (2603:10b6:300:ed::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Tue, 19 Oct 2021 14:49:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.36)
 smtp.mailfrom=nvidia.com; google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.36 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.36; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.36) by
 CO1NAM11FT019.mail.protection.outlook.com (10.13.175.57) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4608.15 via Frontend Transport; Tue, 19 Oct 2021 14:49:08 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 19 Oct
 2021 14:49:03 +0000
Received: from vdi.nvidia.com (172.20.187.6) by mail.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Tue, 19 Oct 2021 14:48:52 +0000
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
Subject: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp cookies in XDP
Date: Tue, 19 Oct 2021 17:46:54 +0300
Message-ID: <20211019144655.3483197-10-maximmi@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211019144655.3483197-1-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab28417b-d125-472e-eb62-08d9930f9b1e
X-MS-TrafficTypeDiagnostic: DM6PR12MB3449:
X-Microsoft-Antispam-PRVS: <DM6PR12MB3449F3578C86F4E7FAC77DCDDCBD9@DM6PR12MB3449.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: his0TTJTrh2Hvzr8+YQCtjPYLkTAwuM/MNmgUYXivdiNlyl24n9NQ8nrqiD3aWAl5pEj1tKSjVpALqZtQ9BjU2Vr1LCutoi65VWlyVSDSbVGlscKWqoA04PrCqjUaVU9bBUkHfY4mhVOSpoeGF0vWIxfZ49ie1/DDJkVa3mJRTVDOaviMaJb/aAKOmjaHaAq2zi1kPrPieKVAvq6GNzespZnaKCe/HCqU6nmf/cD3dLvsTOoQCY57Qs8CEZwb5AXsz881UCt0RXI3pr+yd/61EIUqYh2hN5/sfa5RHkDTQlVdDfBlJgyKmlQHzyg7azBcNC9VEBZS2StSYoaJDSF0nmMz32AfjeJ0YwN1dQoXs9WvueYtf2RrpZ9PweNDSzczQn/kVvej7iz7Q7G4QZvECV6VQ7fZbJjNGSJjr2MVSeghE54U2/tXlVP6oHOJNUUFtOUIubh6o+6pg2N2C2nsbEG0qsQWsTDIuOC7JrIDPnn+06D86247Sw7J9B3gR5/cpySgUl2p2RrPDpwPwvUiV4TLfPzWCEgRykqGwe7e9fv9zBWGFR8kC5jfGqtzflylDrVkq5z+y24J/Bmop5TrwCEpjJODbM54F1xlrAlFFM3A5kIqmFS0qKkEtreb9wZlZAUA09CR7sDSdTdnQ1ZUlrMyzzzpXONBAzic7cQNgaOO++TQqi0WlrKpen8Nf6T0ozcWBTX/f0v3CkdhPpv4A==
X-Forefront-Antispam-Report: CIP:216.228.112.36;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid05.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(7636003)(356005)(7416002)(36756003)(7696005)(54906003)(82310400003)(5660300002)(4326008)(186003)(36906005)(107886003)(110136005)(36860700001)(70206006)(70586007)(336012)(8936002)(426003)(2906002)(83380400001)(508600001)(86362001)(1076003)(2616005)(8676002)(316002)(26005)(47076005);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 14:49:08.0616
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ab28417b-d125-472e-eb62-08d9930f9b1e
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.36];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT019.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3449
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=AWGL2rsx;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.102.61 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

The new helper bpf_tcp_raw_gen_tscookie allows an XDP program to
generate timestamp cookies (to be used together with SYN cookies) which
encode different options set by the client in the SYN packet: SACK
support, ECN support, window scale. These options are encoded in lower
bits of the timestamp, which will be returned by the client in a
subsequent ACK packet. The format is the same used by synproxy.

Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
---
 include/net/tcp.h              |  1 +
 include/uapi/linux/bpf.h       | 27 +++++++++++++++
 net/core/filter.c              | 38 +++++++++++++++++++++
 net/ipv4/syncookies.c          | 60 ++++++++++++++++++++++++++++++++++
 tools/include/uapi/linux/bpf.h | 27 +++++++++++++++
 5 files changed, 153 insertions(+)

diff --git a/include/net/tcp.h b/include/net/tcp.h
index 1cc96a225848..651820bef6a2 100644
--- a/include/net/tcp.h
+++ b/include/net/tcp.h
@@ -564,6 +564,7 @@ u32 __cookie_v4_init_sequence(const struct iphdr *iph, const struct tcphdr *th,
 			      u16 *mssp);
 __u32 cookie_v4_init_sequence(const struct sk_buff *skb, __u16 *mss);
 u64 cookie_init_timestamp(struct request_sock *req, u64 now);
+bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be32 *tsecr);
 bool cookie_timestamp_decode(const struct net *net,
 			     struct tcp_options_received *opt);
 bool cookie_ecn_ok(const struct tcp_options_received *opt,
diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index e32f72077250..791790b41874 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -5053,6 +5053,32 @@ union bpf_attr {
  *
  *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
  *		CONFIG_IPV6 is disabled).
+ *
+ * int bpf_tcp_raw_gen_tscookie(struct tcphdr *th, u32 th_len, __be32 *tsopt, u32 tsopt_len)
+ *	Description
+ *		Try to generate a timestamp cookie which encodes some of the
+ *		flags sent by the client in the SYN packet: SACK support, ECN
+ *		support, window scale. To be used with SYN cookies.
+ *
+ *		*th* points to the start of the TCP header of the client's SYN
+ *		packet, while *th_len* contains the length of the TCP header (at
+ *		least **sizeof**\ (**struct tcphdr**)).
+ *
+ *		*tsopt* points to the output location where to put the resulting
+ *		timestamp values: tsval and tsecr, in the format of the TCP
+ *		timestamp option.
+ *
+ *	Return
+ *		On success, 0.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EINVAL** if the input arguments are invalid.
+ *
+ *		**-ENOENT** if the TCP header doesn't have the timestamp option.
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
  */
 #define __BPF_FUNC_MAPPER(FN)		\
 	FN(unspec),			\
@@ -5238,6 +5264,7 @@ union bpf_attr {
 	FN(ct_release),			\
 	FN(tcp_raw_gen_syncookie),	\
 	FN(tcp_raw_check_syncookie),	\
+	FN(tcp_raw_gen_tscookie),	\
 	/* */
 
 /* integer value in 'imm' field of BPF_CALL instruction selects which helper
diff --git a/net/core/filter.c b/net/core/filter.c
index 5f03d4a282a0..73fe20ef7442 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -7403,6 +7403,42 @@ static const struct bpf_func_proto bpf_tcp_raw_check_syncookie_proto = {
 	.arg4_type	= ARG_CONST_SIZE,
 };
 
+BPF_CALL_4(bpf_tcp_raw_gen_tscookie, struct tcphdr *, th, u32, th_len,
+	   __be32 *, tsopt, u32, tsopt_len)
+{
+	int err;
+
+#ifdef CONFIG_SYN_COOKIES
+	if (tsopt_len != sizeof(u64)) {
+		err = -EINVAL;
+		goto err_out;
+	}
+
+	if (!cookie_init_timestamp_raw(th, &tsopt[0], &tsopt[1])) {
+		err = -ENOENT;
+		goto err_out;
+	}
+
+	return 0;
+err_out:
+#else
+	err = -EOPNOTSUPP;
+#endif
+	memset(tsopt, 0, tsopt_len);
+	return err;
+}
+
+static const struct bpf_func_proto bpf_tcp_raw_gen_tscookie_proto = {
+	.func		= bpf_tcp_raw_gen_tscookie,
+	.gpl_only	= false,
+	.pkt_access	= true,
+	.ret_type	= RET_INTEGER,
+	.arg1_type	= ARG_PTR_TO_MEM,
+	.arg2_type	= ARG_CONST_SIZE,
+	.arg3_type	= ARG_PTR_TO_UNINIT_MEM,
+	.arg4_type	= ARG_CONST_SIZE,
+};
+
 #endif /* CONFIG_INET */
 
 bool bpf_helper_changes_pkt_data(void *func)
@@ -7825,6 +7861,8 @@ xdp_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
 		return &bpf_tcp_raw_gen_syncookie_proto;
 	case BPF_FUNC_tcp_raw_check_syncookie:
 		return &bpf_tcp_raw_check_syncookie_proto;
+	case BPF_FUNC_tcp_raw_gen_tscookie:
+		return &bpf_tcp_raw_gen_tscookie_proto;
 #endif
 	default:
 		return bpf_sk_base_func_proto(func_id);
diff --git a/net/ipv4/syncookies.c b/net/ipv4/syncookies.c
index 8696dc343ad2..4dd2c7a096eb 100644
--- a/net/ipv4/syncookies.c
+++ b/net/ipv4/syncookies.c
@@ -85,6 +85,66 @@ u64 cookie_init_timestamp(struct request_sock *req, u64 now)
 	return (u64)ts * (NSEC_PER_SEC / TCP_TS_HZ);
 }
 
+bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be32 *tsecr)
+{
+	int length = (th->doff * 4) - sizeof(*th);
+	u8 wscale = TS_OPT_WSCALE_MASK;
+	bool option_timestamp = false;
+	bool option_sack = false;
+	u32 cookie;
+	u8 *ptr;
+
+	ptr = (u8 *)(th + 1);
+
+	while (length > 0) {
+		u8 opcode = *ptr++;
+		u8 opsize;
+
+		if (opcode == TCPOPT_EOL)
+			break;
+		if (opcode == TCPOPT_NOP) {
+			length--;
+			continue;
+		}
+
+		if (length < 2)
+			break;
+		opsize = *ptr++;
+		if (opsize < 2)
+			break;
+		if (opsize > length)
+			break;
+
+		switch (opcode) {
+		case TCPOPT_WINDOW:
+			wscale = min_t(u8, *ptr, TCP_MAX_WSCALE);
+			break;
+		case TCPOPT_TIMESTAMP:
+			option_timestamp = true;
+			/* Client's tsval becomes our tsecr. */
+			*tsecr = cpu_to_be32(get_unaligned_be32(ptr));
+			break;
+		case TCPOPT_SACK_PERM:
+			option_sack = true;
+			break;
+		}
+
+		ptr += opsize - 2;
+		length -= opsize;
+	}
+
+	if (!option_timestamp)
+		return false;
+
+	cookie = tcp_time_stamp_raw() & ~TSMASK;
+	cookie |= wscale & TS_OPT_WSCALE_MASK;
+	if (option_sack)
+		cookie |= TS_OPT_SACK;
+	if (th->ece && th->cwr)
+		cookie |= TS_OPT_ECN;
+	*tsval = cpu_to_be32(cookie);
+	return true;
+}
 
 static __u32 secure_tcp_syn_cookie(__be32 saddr, __be32 daddr, __be16 sport,
 				   __be16 dport, __u32 sseq, __u32 data)
diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
index e32f72077250..791790b41874 100644
--- a/tools/include/uapi/linux/bpf.h
+++ b/tools/include/uapi/linux/bpf.h
@@ -5053,6 +5053,32 @@ union bpf_attr {
  *
  *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
  *		CONFIG_IPV6 is disabled).
+ *
+ * int bpf_tcp_raw_gen_tscookie(struct tcphdr *th, u32 th_len, __be32 *tsopt, u32 tsopt_len)
+ *	Description
+ *		Try to generate a timestamp cookie which encodes some of the
+ *		flags sent by the client in the SYN packet: SACK support, ECN
+ *		support, window scale. To be used with SYN cookies.
+ *
+ *		*th* points to the start of the TCP header of the client's SYN
+ *		packet, while *th_len* contains the length of the TCP header (at
+ *		least **sizeof**\ (**struct tcphdr**)).
+ *
+ *		*tsopt* points to the output location where to put the resulting
+ *		timestamp values: tsval and tsecr, in the format of the TCP
+ *		timestamp option.
+ *
+ *	Return
+ *		On success, 0.
+ *
+ *		On failure, the returned value is one of the following:
+ *
+ *		**-EINVAL** if the input arguments are invalid.
+ *
+ *		**-ENOENT** if the TCP header doesn't have the timestamp option.
+ *
+ *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
+ *		cookies (CONFIG_SYN_COOKIES is off).
  */
 #define __BPF_FUNC_MAPPER(FN)		\
 	FN(unspec),			\
@@ -5238,6 +5264,7 @@ union bpf_attr {
 	FN(ct_release),			\
 	FN(tcp_raw_gen_syncookie),	\
 	FN(tcp_raw_check_syncookie),	\
+	FN(tcp_raw_gen_tscookie),	\
 	/* */
 
 /* integer value in 'imm' field of BPF_CALL instruction selects which helper
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211019144655.3483197-10-maximmi%40nvidia.com.
