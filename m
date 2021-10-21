Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBJGCY2FQMGQEQVN4ANQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BFA4368EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 19:19:34 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id p19-20020a634f53000000b002877a03b293sf492669pgl.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 10:19:34 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634836773; cv=pass;
        d=google.com; s=arc-20160816;
        b=qQkNIeFEtP2zxRAOCTZQHO4Pgga+lQT2NIp4fqOpi8SDXDiiwtS5hn4kUdcZF6Uo4P
         jSrD6m8DdZiScXnIPxrrAuKj3uiSBqQsGOsWZTUDuGhPPWiac5tEgAmMLvre0s/JGVuk
         ghYjocSHLHUsKj5EmKS8uWmuGHpX2YTyiDC63L5wYHRqtgxN7ncHALEAOduI+HeduyAG
         bTTLeWOCmhzz6LE3SKI4f2ojfSlKOmb9W6bjl473enhf4KsXnfMpwcDJqUmcSrmQDzyE
         OAf5DEkOz1VspA+Zo5Gw4PghOoFtfvhjzaBs+njJgZY8Chf1bvmMaxCTDXlKGO6/dife
         rVAw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=5PlTwJf6AB2jkyesuFGboa6wIgu9Ks4/AX1jQsnqztk=;
        b=XnKQv+wzWLLhZxcdvocriF+z2e1bvvus4zDWAP/jQTX+qMJ510wPjtHqAKDytBktTC
         HRjmqyRP3Rm1C2GDOyByO7jB3Z9SLJCJbrmBIE8yB1DkaJ6Cm3P+OL2BLCqQm8BDBP8r
         f2aixR9g6PeF9igVG3mFzUImwTNp3HtwMeBGiOXRNbG38oX6UhIltEG5172iCys7t2mu
         d1TDQEIAxTKlTXotf6IRDPmXonwmd9VkL0+pOBUeTxYLuq7oXUuYWDKtxyuaj5UQ+E9J
         Hne+Ma6WPf2bgJITWEX5k1NoEikt6vcqqSJSvLTKsuCCaitLkDZMB0hhdbP515pGxepd
         8j2Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=ITFef8u+;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.96.74 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5PlTwJf6AB2jkyesuFGboa6wIgu9Ks4/AX1jQsnqztk=;
        b=c+amhOjUC/D0CrlMarexFvcOcuBlg8CzBwLmYfPbDh7Gr+WctCdwvx/V/AVWngiVo1
         bhf1/pGOM2RJHkE16o952gbIey9qDfkaLi9fKN9Nz9yxXGXtSUnTabK7GWb/5D5pUjjC
         kgre+GOHG1bFoNYFzWauf0F0DBiwnKoT4sEhb8FV3L98McsZ4+y0ZA/TuCP/pb0KRsNF
         6Hd7zCsxvr/3BrZMtTncAMhIV6czt+qJkiCDiqVCCzsjs01Y5qDOOQ9JZiRRQjt7ksBB
         3G5+fcjtI0t3pm8mfdf8Bei3YjiJVu2NlplwEe11UK097J5+vH+BVB5ETL0WASBBfT/B
         gqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5PlTwJf6AB2jkyesuFGboa6wIgu9Ks4/AX1jQsnqztk=;
        b=KUfXaKnX/m6sADg3WBtrCEQiWfSwbBObB5CsyqM2y4IGHMurRkqRQiVd3ZPnuE8p13
         VCzzpfK1oXY37e36+c3+adayaupoCw/a1bp6b2aQvxQZ3hGujzlio+NLeUFocrf3DpK3
         LESSgwWCFjNEgdzvqBCrufRBzm30sxnZG1N2jpV0CQQdOfN6dAPi34R3XQ0i2tQdc2b+
         V/sol/FhcG8f1P6MuUmcBGxP9ni517T93B3v2jQfIzsipdp+U8Iq7teFB5bRGGXPpaRs
         m9V2V2X5FzRLj1jyktt64jvUP69tUplztXq2Cx0kBZQZKcqwdtEq+Y3KevQ8JxgA87jB
         SfDw==
X-Gm-Message-State: AOAM533HzeTta+r8C8p+YeXMQuyWQOBd0ARPfEBhHufgwv9B7N0VGwUw
	v4/sRHv3mWo5ARK0k+yTCsQ=
X-Google-Smtp-Source: ABdhPJwhfa+GLM73pdEa/QKH71Qhd75nXYJjrq9uc/78bIokpsZJoZxGzjAaeO08N+HdciToZ4cblQ==
X-Received: by 2002:a65:6643:: with SMTP id z3mr5468146pgv.16.1634836772854;
        Thu, 21 Oct 2021 10:19:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4bce:: with SMTP id p14ls2191783pgr.8.gmail; Thu, 21 Oct
 2021 10:19:32 -0700 (PDT)
X-Received: by 2002:a63:3d8f:: with SMTP id k137mr5477538pga.21.1634836772232;
        Thu, 21 Oct 2021 10:19:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634836772; cv=pass;
        d=google.com; s=arc-20160816;
        b=FplZC0/8EtGmtFFMU85FcelerXZvrCFpFVb9REN9cljrBGlXCLlZ7kG1ZIWRK2Ab3w
         eclwiTPeIIsOa69GZNmDlZ3t1N+PIGepKtBzFt/qpYfTrhoY7Xl6hnBWSRHmFCgBNFQ8
         YRaQKX4/YB3Q2lO/tDgkyFqTjdyXp2VCkAGBaCZtl2TR7nnJUsEDE1tLrYw72YC+ET+u
         2js9ALFpUSjeXs+B2zNa4aZlCBRM8SXlI4wbUqiRITvIAuUcH3wd+e9iLPYF2WOtgbcl
         NU7Hs3/SLJgG11MN4EGKIK1aR4QXYbm2d7qNo8t962wTw8qK6+QSSyn5Uos7KFDEmK9W
         wpWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=JEYM5uugq/xggWm4UCD7OXO6YMbC8MAHotAumyc0XPc=;
        b=vyjJNeKyUNz4rgKwgg+zsojAYlyPDJsGk/NBts3xzRmkzxG3lTE0G3fgf6trGpXN90
         16NO2+65xK+ttSafvjwyfPHxbukgCTpCThcI6CTHmvJRNDgdQ8X6q8HAyjjha3aQQ9zJ
         ngRywUqOUiW4Hv1LDoISeFXT5pAv/HDp5T2RlldbWNy6pl9ErgrorLjZSrE3pDy7VTOq
         nFsJL26hfzoI92nNbh0lAOmrtKMOwnIWutJkBhqZcrcX6yeOz1YARqnS7JEyWiRQbEBK
         GQSUFHRRSP6DjZ7euJB/p/HrP0XWw/UfhAORPjgVdAHEzQJSLNwTlDirCT9cBZVPITwp
         5pVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=ITFef8u+;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.96.74 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2074.outbound.protection.outlook.com. [40.107.96.74])
        by gmr-mx.google.com with ESMTPS id e26si409805pgt.0.2021.10.21.10.19.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Oct 2021 10:19:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.96.74 as permitted sender) client-ip=40.107.96.74;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=itqk993Ih6R3iHu044t98DiFyPuGLFz2zPrGVBGmryvu4AskQS81KBQhsrmVRHQbh31jM3ky69u5/4zZHiKspamfbyHhTtP/xTjqDEfIm09UNTIBOziOv6g61sIShyvXEPe4icnEJYTv2/8RoOdzzy7f7OM0TTC/qmcbYxzUSI1s0mjTqJd12fi4uwkETB+RE6C1USQ62zPM+51tcPExLv2axLuW2irJyx8XsZr9JWSyWIX/wSDDB3wsZrACN8Rs45fqF2HukXse4T7TR7e5LpRfqIPiSCElpOB6z1xKCmqd87ku+J+aBscQNzhxwinmeIM5QyOYjaoLhSXRB+bKVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JEYM5uugq/xggWm4UCD7OXO6YMbC8MAHotAumyc0XPc=;
 b=Oc6dfH3IWTzSbcvSHz7dyB/7+u/lmZ4orLutD/ZMxiVYp/lOdcKgLl66IWhVKUACdkJGm0l7mPVbKMNGRFFQcEGiPUXVRqY7oOA1ljfYkUUA96V0SS6TSi2/+AnDoGiaHjZBProutHotEEvsh75UgaTHzYopvedv5wdYSd9sQIrJA5vWEEeXdOl8GRzdTM1Daol1DrcqGpL4OkDJNY+++5ZqVDnQUPbpaN7UqY1Snl+DcI8yIqpifeR1ruCtyW+W3IIF6Pm65SiQP+6tgwZkL5diVW291OY2S58JKQ9kjWtg6rksXcWdY4vbbW7kHIwuBh4yMT0DjpgVYYpSud2fgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from DM3PR12CA0078.namprd12.prod.outlook.com (2603:10b6:0:57::22) by
 BN9PR12MB5289.namprd12.prod.outlook.com (2603:10b6:408:102::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Thu, 21 Oct
 2021 17:19:29 +0000
Received: from DM6NAM11FT023.eop-nam11.prod.protection.outlook.com
 (2603:10b6:0:57:cafe::a0) by DM3PR12CA0078.outlook.office365.com
 (2603:10b6:0:57::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16 via Frontend
 Transport; Thu, 21 Oct 2021 17:19:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT023.mail.protection.outlook.com (10.13.173.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4628.16 via Frontend Transport; Thu, 21 Oct 2021 17:19:28 +0000
Received: from [172.27.0.234] (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Thu, 21 Oct
 2021 17:19:18 +0000
Message-ID: <9fde9552-c289-1540-1b6c-0a5cfe883890@nvidia.com>
Date: Thu, 21 Oct 2021 20:19:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [PATCH bpf-next 10/10] bpf: Add sample for raw syncookie helpers
Content-Language: en-US
To: Joe Stringer <joe@cilium.io>
CC: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
	<daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
	Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI
	<yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Brendan Jackman
	<jackmanb@google.com>, Florent Revest <revest@chromium.org>, Lorenz Bauer
	<lmb@cloudflare.com>, Tariq Toukan <tariqt@nvidia.com>, Networking
	<netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-11-maximmi@nvidia.com>
 <CADa=RyxEQwQp++1JD67h5_JZMokGhMi6ediGKjQSQeBR2-TeBQ@mail.gmail.com>
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <CADa=RyxEQwQp++1JD67h5_JZMokGhMi6ediGKjQSQeBR2-TeBQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3f61fde-1c7f-42e9-2518-08d994b6f0a2
X-MS-TrafficTypeDiagnostic: BN9PR12MB5289:
X-Microsoft-Antispam-PRVS: <BN9PR12MB5289AE66264D67E6A37480E6DCBF9@BN9PR12MB5289.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oxVeogS2mzIf/zRYAUW5v3AD+tfOaSt/5sN81U8hEJo16jvbLKGYn/07NHHJIestUyn5Ev0B68BBXq7dtLAW6zDcaYO8lBUlOAbYB5wuE20tfv5cKvtONtPlPbF6wW0qbbVGxSRnbw1QV5IkcTkIzHnFMtutv3yCh9RBMyYMGHhiQ36JeOnd3UWGAVMbAz8nQQfB+otTDxTGw15U0Tvhu+8eqMOjTtRQCmxZbH5bjkeVCDVw7TghgUUG78JGV1uAGpUV1XYS1EfXcomzMlfPceG6DHcgY44PSN20jxrISt6vi2CqGWLoMeN+9+6rdhIQZDEG/D2KL+s5Rt6aw5D1f0LTmxhXg4ne9b58vcmLMxwvxVPrk/R9dOrx+klIPUTFiBR9vfiZoiFnFy6B4Q6KSq3vh6eWFhs6ObGbg7TDF3FNSwlIhwcYDah6TY9Ms6cSDPSuJT7Yyd46TBo8y2k6FgOLsLSQo49LtMM+IVyPMriAE9wMOEfpw75inwuQRA+b3Vs5FTqle7ccqoHc4YaaruHUl1Nw+M1gMAf6aF8QWV3g0KZIHA1O6ciPM2kjN4fiClRAlMaTXD2u/7YP7nSzWjXHsTROStBEYCly8pb+4DMYnDCoBiJyjXClUVy47FBq9U4eToCuxKz2axYN0/M4a/5WojfHi02NPn9chkrgDxVqaaiCkfuaq0w+VZWPFo30HlABHDnyOwG6I6oiD8YclRetqRnnIqS08oKyV6+9UBk=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(6666004)(31696002)(2616005)(7636003)(186003)(83380400001)(53546011)(5660300002)(4326008)(47076005)(86362001)(4744005)(36860700001)(6916009)(8676002)(70206006)(16526019)(356005)(426003)(54906003)(8936002)(16576012)(36756003)(508600001)(7416002)(70586007)(31686004)(2906002)(316002)(36906005)(336012)(4001150100001)(26005)(82310400003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2021 17:19:28.9434
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f61fde-1c7f-42e9-2518-08d994b6f0a2
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT023.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5289
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=ITFef8u+;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.96.74 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

On 2021-10-20 21:01, Joe Stringer wrote:
> Hi,  just one comment related to the discussion on patch 7.
> 
> On Tue, Oct 19, 2021 at 7:49 AM Maxim Mikityanskiy <maximmi@nvidia.com> wrote:
> 
> <snip>
> 
>> +
>> +       value = 0; // Flags.
>> +       ct = bpf_ct_lookup_tcp(ctx, &tup, tup_size, BPF_F_CURRENT_NETNS, &value);
>> +       if (ct) {
>> +               unsigned long status = ct->status;
>> +
>> +               bpf_ct_release(ct);
>> +               if (status & IPS_CONFIRMED_BIT)
>> +                       return XDP_PASS;
>> +       } else if (value != -ENOENT) {
>> +               return XDP_ABORTED;
>> +       }
> 
> Is this the only reason that you wish to expose conntrack lookup
> functions to the API?
> 
> You should be able to find out whether the TCP session is established
> by doing a TCP socket lookup and checking sk->state.

It's not possible to lookup a socket, because there is no socket. The 
traffic is forwarded through the firewall machine that runs synproxy and 
this XDP program.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9fde9552-c289-1540-1b6c-0a5cfe883890%40nvidia.com.
