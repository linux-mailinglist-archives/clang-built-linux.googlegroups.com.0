Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBVFAQSGQMGQE4SEWN5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D2745F274
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Nov 2021 17:50:29 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id e1-20020a056e020b2100b00299addac2a4sf12591705ilu.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Nov 2021 08:50:29 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1637945428; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUtuQEBEo5MalMVdzXV954zV45fRUtsak0JyKDMzO3VxvSPsBACW3dCnHzszJPoro2
         9vfF7bfbuFiERRTWggoaxrlD7VkC9m2USoww+/J4LtU1OJ5br/1yX3c61ur3+Ff/s5d6
         pv/Zc6JGTf/LaoPbWUumlZS4a4dy+pTMdaw6JNHc3k9UmK/LcIIdbRCyGIQ96O6t+ajV
         khip5qMnirozGNg64WH5XHFAOYX+qPqUabJdFnfuCzcYddLfA9x3zucN2pbFZPGj6wgV
         6EPODly664mqPx/bHkzWm3bFwN2UEx7VgRJhVu5MHqTnSwowtxu8yQdJpgxHyDNXKTif
         fjbg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=i4gAt3uVzwGYnmqxTBssgw6nT3rjBfiXBcifYm4kuVk=;
        b=EQziUiDBHGnjVg1h3RrRUCgWn3PcbSAjy77y0sN75bl/LY3ZvvhTpGHgvJeg5XOOY/
         OpaDqKleghHRzjoCBZ/MyQmA6Qh+pCqUy4vDwFWhgngMlb68mFVxLV+y2OwuJTlfUcCQ
         dS6VQBfKsPl41Yha0Gt5Sw+HxntYzIZFPOfdWv+zAW/w9zxm8EGR1eoI8HUr2h//Wrou
         sm3t9ZTVRL08N2j+IWRCQEUUwdv37vEdWMkW9ByF9URirVwy+nyn+/92VtHttB6drOxH
         N2RmYGGurK5C5gZOvgRXtkeHDVTsLC0+iyANEaQSyWKxHBgPNBK4euQe5hu7mWqT+Nuu
         70Xw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=XO29Mlwt;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.94.42 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i4gAt3uVzwGYnmqxTBssgw6nT3rjBfiXBcifYm4kuVk=;
        b=S8im64VEwATI6TUM/tYMaW+gruCbUndjLpj1Qg7WKf4lq8BM6KLttlNCQ/SkfmXG4A
         if9G0BHPOs++ZZ0+40nFud7BkgNGVKFvXA5UKdDvnMyLEzPS2hQKrGgXfhNXv56DKipW
         EqRcFMafUYtABZOe6nq/BABKrB022dUkWyaDaU9Yk7ngXPcu7WfrhTByKeA6D0ozNGRa
         zlnK+bVHahfjoD7zxiWX/SjelvdTQTwVMs88ts5NyVbdw449aLviOm+2ZFFRL/s6Bvah
         w6GkFywjSc8z2mDixSjTdQi5hES0YGLOKw4wxvunHv4iB6talr2qJtb9ztncLZTpGwlE
         r5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i4gAt3uVzwGYnmqxTBssgw6nT3rjBfiXBcifYm4kuVk=;
        b=rc6BZpVvW27JRyqR1gdfjyyCdCtnB3leYcXqsuKjPenzTSvtXE/+azdwkYQtze4AiM
         lDiEAr539W0tVgFdJJ2zjSmWDR4OjYuGKjGyarmO4OhCgaV11TbZ/eGiLupIynrp+Ove
         l05vNzKiWGj2DeNJy5k+0W+zXJqiPq+ZAu7LMJeFcck2r23eZo7IgMb+v2tt9ZfEW+CE
         L59bIov+Mr5hAXvpHoTu7TCX64Z83+j1ocLEw2mSs+WrK6hMiXCsNr/BjxYfHqL7tak5
         Xu39oHAEMPP7izTEPi2mVQ/tPsrCqCKQvdlE/YaWvy98wERMwIU+29/WFJ87GqAcOzPr
         2Qfw==
X-Gm-Message-State: AOAM533mQIZSYXqlbUuzeRRfgwRqjZHOngdI8UR3KdaTNfBXLGCnddgQ
	mAaR2YSn5tWTopkY99E7MPs=
X-Google-Smtp-Source: ABdhPJwTXHLqxWhAPW6+2siSdcZEc31tD5qXRA1mn9sZt8lSxUL6uBqfLGWlFqvUOW2qS47BIelDRw==
X-Received: by 2002:a05:6e02:1a83:: with SMTP id k3mr28387622ilv.202.1637945428747;
        Fri, 26 Nov 2021 08:50:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cda4:: with SMTP id g4ls985028ild.10.gmail; Fri, 26 Nov
 2021 08:50:28 -0800 (PST)
X-Received: by 2002:a05:6e02:1529:: with SMTP id i9mr37428546ilu.253.1637945428287;
        Fri, 26 Nov 2021 08:50:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637945428; cv=pass;
        d=google.com; s=arc-20160816;
        b=McjEKZghPuIZOvbNtAEZx6YXufKwz5F0w+//8D3fKgAqOgUKagiolkRpStewjLx1Vy
         TbgYm27mAZFFeNvYemM1rfpQjDuZnMPOf0lVQunJwsU8jeeM0xGBOjZyA/kCarvWmCdA
         WSSY7d67rLvSbg2NtnFxvuLf3cMlB3fP4zORII2d80n690tk2lHo4xKQok/o2FJINvTt
         aSNkUpivCYeqHDwsWAUMbuV/lsFLgIJjp6Oxl1dAcIKFjxjYYkKQ/EjZYkc668x5R+B9
         erFVXnMjd1pt3j5ZTjFnyvw0Yb+aapojt+8DyGtjphDh6jgixbZLuzu4v4cJpCSnRZDm
         aZfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=YLRrfMeEupWfYsOcagM5Dtytcm88a4jFioLBSKX1+cg=;
        b=B7zsYWHEv3qxOR+tEshNuXxoKBOEwxYmFx/u2UWycsLxmaD41s14T3yZOfkkCAgCVM
         8TLQDwt7SC+1aTzo+gEJhIIiTYSyLKqcoOIGw8C/EOuf65gHsfybr7bq0h89yc5g2kHN
         N6jaWH+DiLheGrvxoYZMYNpYtcrx4S8NTwTujrECO54p0bMv/ERrcU40eAkdu9WewAEk
         SzeBYycYiJ1QRHnnHupT9wkntI64MG5er2Ln4khNLHP6fKvn5B6TX5QNQ31k3VPvSAZD
         Pxk/TkVT1OZQ35KO/1iUIa0RWe/uGLe2csRuibKdbRa34jwIfLx2rNCQygwc7ROrRQJl
         htig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=XO29Mlwt;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.94.42 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2042.outbound.protection.outlook.com. [40.107.94.42])
        by gmr-mx.google.com with ESMTPS id f19si480245iox.3.2021.11.26.08.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Nov 2021 08:50:28 -0800 (PST)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.94.42 as permitted sender) client-ip=40.107.94.42;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i15ksaUfsl+viO3jRAIOx6wL5K3cLO86pnUfTf51zYtEhUyNtj9H4kpqyDdsCmxbgYIFnRzbgCUBUW758W76WgL2NjYyth9JgJQBybnm1RM3b5IqN1G3qUP8z8EHtNYgyWJhxOy4OB2pQpX9j7cOZB9+DySnJKFfyWwXLKPsmcytdODAZhwUvVHGyl6K3bfaTVYt4PucI0a2UBZTwfTaeVUsE2caVHCzybpmMaCkExQQnd8iaoJMDlmzY+w874O2cRqmuDIx9eYPfnUPgdcwt5sIlQhU7zfk3ka6lZa8H2ATqrCtWN2e7nNF3UOx4s9u/QIJcwAzNyDXdycob6/jbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YLRrfMeEupWfYsOcagM5Dtytcm88a4jFioLBSKX1+cg=;
 b=U90XB3HGAtKoOsy8ANjXR27/7BQi2sWzyr/2nyJlkDOtxdkQH4mCM+xeL60Y/e5TK192NQE55ssDqXRWAaErBi3y33vQtTC99WpZ33Kd+iTvuhWhyZ1wBkvHUJsdCQI5zMPwkACtV0tOd7rthnTX2bHqaBNOU36wWauL7/viCZtl8xvO00s8ttx5lijxrwX7uxsP1WXn/j2NIlYHGosA9A9zwoj/YpYP6Dk1sB4Mj4Pe24UHHDj2HpdV2OunlWehJMqzaQOacsjGY07eVzMsWuLwrvBfRAlB5TrSn5xEc8vdUcHQE/mCivUH2ey36WefLktB8qh8lHteroAg3rtE4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from MW2PR2101CA0014.namprd21.prod.outlook.com (2603:10b6:302:1::27)
 by MN2PR12MB3790.namprd12.prod.outlook.com (2603:10b6:208:164::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Fri, 26 Nov
 2021 16:50:26 +0000
Received: from CO1NAM11FT038.eop-nam11.prod.protection.outlook.com
 (2603:10b6:302:1:cafe::aa) by MW2PR2101CA0014.outlook.office365.com
 (2603:10b6:302:1::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.9 via Frontend
 Transport; Fri, 26 Nov 2021 16:50:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT038.mail.protection.outlook.com (10.13.174.231) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4734.22 via Frontend Transport; Fri, 26 Nov 2021 16:50:25 +0000
Received: from [172.27.0.11] (172.20.187.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Fri, 26 Nov
 2021 16:50:13 +0000
Message-ID: <cbd2e655-8113-e719-4b9d-b3987c398b04@nvidia.com>
Date: Fri, 26 Nov 2021 18:50:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: Yonghong Song <yhs@fb.com>
CC: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, "Lorenz
 Bauer" <lmb@cloudflare.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>,
	"Martin KaFai Lau" <kafai@fb.com>, Song Liu <songliubraving@fb.com>, John
 Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Eric
 Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>,
	"Jakub Kicinski" <kuba@kernel.org>, Hideaki YOSHIFUJI
	<yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, Brendan Jackman <jackmanb@google.com>,
	"Florent Revest" <revest@chromium.org>, Joe Stringer <joe@cilium.io>, Tariq
 Toukan <tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>, bpf
	<bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk> <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
 <103c5154-cc29-a5ab-3c30-587fc0fbeae2@fb.com>
 <1b9b3c40-f933-59c3-09e6-aa6c3dda438f@nvidia.com>
 <68a63a77-f856-1690-cb60-327fc753b476@fb.com>
 <3e673e1a-2711-320b-f0be-2432cf4bbe9c@nvidia.com>
 <f08fa9aa-8b0d-8217-1823-2830b2b2587c@fb.com>
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <f08fa9aa-8b0d-8217-1823-2830b2b2587c@fb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.187.6]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa26a21c-f149-4da2-94f5-08d9b0fcd821
X-MS-TrafficTypeDiagnostic: MN2PR12MB3790:
X-Microsoft-Antispam-PRVS: <MN2PR12MB37900D7BBF7F17E6673C5546DC639@MN2PR12MB3790.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QNWdUpI4NU1QMYO0tIVUMkM18VH3V9VyvhAZyEyuKa44dylwg6NwEfMK3OuGhdtObYjvx8mrANZDuFQnHsW6BrZHgA9XYhrmLXB3WsT3l6Ul38/cvPIuASqIjlNc8dLJktOoOGA+vmX1Rlaiz45qwY6nTlfxK9wyetQasvSdL3HnYz0HEBQguw4PO+myZBANoZqEAoa1cPiJ3bjXc27Rd8J7NEIATGK0grRoNtq8428V5nXjkD35VNiRUGcOIcPy3aizkov5ROdPx8XoGxugneW+plDRO3dUhBEHLWJJzDdlnGIVqwrn120S9JuVfO6WOGAadf05nrcQBvBcKJd65ZowsAtyVkyQugiYTwMF3FinIrmF4N3TnuATAoYpubmkBFrgMmrRhGmmcLsqR/7W5PEfORYHE638bC1n23qZVRvOi22UFOSwdK7hWJw7gL5qUiopB4fsU1Bd/jTxjq9aJlZhImcBKs6JrQIndr3f3oxKx4Toq7rSpw+wft6mZgWOWFuEVrvtc2XS9CMoXnXkW4hA/1cfxO9TaY7VGzoygM1GClFEDII6Lh7Y6myIOZPdmr9pgnyWjhveE07flp0i6J/0l38vbw5jIyQFf4Y4EAcvMGNfnzdat7AGOJemuxrMhH3yIoMMZOpVjxSPvu9xMHiBa+7tU0QZLtA0vyK8/hjEBmnC/gDdSdfhhC4aiS0kaRN17K1gSz3VUIsEm6VjdLCs7TlI7LmjiKipaCXg6ew=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(4326008)(36756003)(2616005)(86362001)(508600001)(26005)(8936002)(82310400004)(16576012)(7416002)(5660300002)(16526019)(31686004)(186003)(426003)(356005)(2906002)(83380400001)(316002)(53546011)(54906003)(336012)(66574015)(36860700001)(70586007)(4001150100001)(70206006)(6916009)(8676002)(47076005)(7636003)(31696002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2021 16:50:25.2113
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fa26a21c-f149-4da2-94f5-08d9b0fcd821
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT038.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3790
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=XO29Mlwt;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.94.42 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

On 2021-11-26 07:43, Yonghong Song wrote:
>=20
>=20
> On 11/25/21 6:34 AM, Maxim Mikityanskiy wrote:
>> On 2021-11-09 09:11, Yonghong Song wrote:
>>>
>>>
>>> On 11/3/21 7:02 AM, Maxim Mikityanskiy wrote:
>>>> On 2021-11-03 04:10, Yonghong Song wrote:
>>>>>
>>>>>
>>>>> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
>>>>>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>>>>>>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>>>>>>
>>>>>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32=20
>>>>>>>>> *tsval, __be32 *tsecr)
>>>>>>>>
>>>>>>>> I'm probably missing context, Is there something in this=20
>>>>>>>> function that
>>>>>>>> means you can't implement it in BPF?
>>>>>>>
>>>>>>> I was about to reply with some other comments but upon closer=20
>>>>>>> inspection
>>>>>>> I ended up at the same conclusion: this helper doesn't seem to be=
=20
>>>>>>> needed
>>>>>>> at all?
>>>>>>
>>>>>> After trying to put this code into BPF (replacing the underlying=20
>>>>>> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues=20
>>>>>> with passing the verifier.
>>>>>>
>>>>>> In addition to comparing ptr to end, I had to add checks that=20
>>>>>> compare ptr to data_end, because the verifier can't deduce that=20
>>>>>> end <=3D data_end. More branches will add a certain slowdown (not=20
>>>>>> measured).
>>>>>>
>>>>>> A more serious issue is the overall program complexity. Even=20
>>>>>> though the loop over the TCP options has an upper bound, and the=20
>>>>>> pointer advances by at least one byte every iteration, I had to=20
>>>>>> limit the total number of iterations artificially. The maximum=20
>>>>>> number of iterations that makes the verifier happy is 10. With=20
>>>>>> more iterations, I have the following error:
>>>>>>
>>>>>> BPF program is too large. Processed 1000001 insn
>>>>>>
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr=
ocessed 1000001 insns (limit 1000000)=20
>>>>>> max_states_per_insn 29 total_states 35489 peak_states 596=20
>>>>>> mark_read 45
>>>>>>
>>>>>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the=20
>>>>>> accumulated amount of instructions that the verifier can process=20
>>>>>> in all branches, is that right? It doesn't look realistic that my=20
>>>>>> program can run 1 million instructions in a single run, but it=20
>>>>>> might be that if you take all possible flows and add up the=20
>>>>>> instructions from these flows, it will exceed 1 million.
>>>>>>
>>>>>> The limitation of maximum 10 TCP options might be not enough,=20
>>>>>> given that valid packets are permitted to include more than 10=20
>>>>>> NOPs. An alternative of using bpf_load_hdr_opt and calling it=20
>>>>>> three times doesn't look good either, because it will be about=20
>>>>>> three times slower than going over the options once. So maybe=20
>>>>>> having a helper for that is better than trying to fit it into BPF?
>>>>>>
>>>>>> One more interesting fact is the time that it takes for the=20
>>>>>> verifier to check my program. If it's limited to 10 iterations, it=
=20
>>>>>> does it pretty fast, but if I try to increase the number to 11=20
>>>>>> iterations, it takes several minutes for the verifier to reach 1=20
>>>>>> million instructions and print the error then. I also tried=20
>>>>>> grouping the NOPs in an inner loop to count only 10 real options,=20
>>>>>> and the verifier has been running for a few hours without any=20
>>>>>> response. Is it normal?=20
>>>>>
>>>>> Maxim, this may expose a verifier bug. Do you have a reproducer I=20
>>>>> can access? I would like to debug this to see what is the root=20
>>>>> case. Thanks!
>>>>
>>>> Thanks, I appreciate your help in debugging it. The reproducer is=20
>>>> based on the modified XDP program from patch 10 in this series.=20
>>>> You'll need to apply at least patches 6, 7, 8 from this series to=20
>>>> get new BPF helpers needed for the XDP program (tell me if that's a=20
>>>> problem, I can try to remove usage of new helpers, but it will=20
>>>> affect the program length and may produce different results in the=20
>>>> verifier).
>>>>
>>>> See the C code of the program that passes the verifier (compiled=20
>>>> with clang version 12.0.0-1ubuntu1) in the bottom of this email. If=20
>>>> you increase the loop boundary from 10 to at least 11 in=20
>>>> cookie_init_timestamp_raw(), it fails the verifier after a few minutes=
.=20
>>>
>>> I tried to reproduce with latest llvm (llvm-project repo),
>>> loop boundary 10 is okay and 11 exceeds the 1M complexity limit. For 10=
,
>>> the number of verified instructions is 563626 (more than 0.5M) so it is
>>> totally possible that one more iteration just blows past the limit.
>>
>> So, does it mean that the verifying complexity grows exponentially=20
>> with increasing the number of loop iterations (options parsed)?
>=20
> Depending on verification time pruning results, it is possible slightly=
=20
> increase number of branches could result quite some (2x, 4x, etc.) of
> to-be-verified dynamic instructions.

Is it at least theoretically possible to make this coefficient below 2x?=20
I.e. write a loop, so that adding another iteration will not double the=20
number of verified instructions, but will have a smaller increase?

If that's not possible, then it looks like BPF can't have loops bigger=20
than ~19 iterations (2^20 > 1M), and this function is not implementable=20
in BPF.

>>
>> Is it a good enough reason to keep this code as a BPF helper, rather=20
>> than trying to fit it into the BPF program?
>=20
> Another option is to use global function, which is verified separately
> from the main bpf program.

Simply removing __always_inline didn't change anything. Do I need to=20
make any other changes? Will it make sense to call a global function in=20
a loop, i.e. will it increase chances to pass the verifier?

>>
>>>
>>>> If you apply this tiny change, it fails the verifier after about 3=20
>>>> hours:
>>>>
> [...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cbd2e655-8113-e719-4b9d-b3987c398b04%40nvidia.com.
