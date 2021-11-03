Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBH5NRKGAMGQEG6K7QWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD634442FA
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Nov 2021 15:03:13 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id v62-20020a627a41000000b00492638b8ebfsf1185340pfc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Nov 2021 07:03:13 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1635948191; cv=pass;
        d=google.com; s=arc-20160816;
        b=RiJ93ygIF7COpY/ISSC7kg5sNiIICByH537ND6yVcM0u45idNa10jM86w96ccqMmn4
         ECSNXJTSg7Ra/bk99rjDlKBhXt64ZeDi/YMFz3STDuo/5eqlBH5N6PzjcqFEqZvLSMQC
         Rkdoy8BY0E6vfYa3l/pRlLXjg1vaiM/y6ytZm9fyMR91c3vrTxujGZjLurh7KlZOBH/k
         D3h1PN8L2jiPBP+172x4P5uKXdU4TQIG9geihVO+gQkzFtNR4z4EbXBrzxbPMAwzO6xz
         +Nf/k2b0RQ547Rxv7t/W3RgE3nuCDSae8cZAO/++b9fLdf2ktyT4pyWOY0fhmk71MSD9
         dkhg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=OKFsvuUXsImFcdKhT7VGeiqwWZasyI1aiy/4zgwvS4E=;
        b=zo++5rSQ0D7S/6bxIMOGDGzM8hRYkjEIWO9IS9POMQrQXbbRtBoMS7cBnle4QH+EIi
         fk3eQK9w2r0CKwstP6XnsMkckX+AGiYXLrTxj4llTV3YYcr1mPe3BhWuZmsEbJCDJtyr
         7Toh5er81epDnGKjGK5/qz4wbgcvla6NaanEJ4PmS7vMilVGBKHZd2hMS0FVfRE+xUp/
         DK89Ei7+eJoLbYssLFQ4sBlPckq/7JNzkNYAxmcCXVzY3uFOJRo8xzFyis5wemwVdueS
         6wGsDxHw93AjhqDTpj8mUkm07UjIp8NqCvVtlQVUIwKJciPd6ZX79ytWeTkLUfSYVMV9
         J8EA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Poa2C66w;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.220.64 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKFsvuUXsImFcdKhT7VGeiqwWZasyI1aiy/4zgwvS4E=;
        b=eLaZQ1DAg2q02pJcBdb1WXVbDcgJPyY8IxJAeesIvMk5Med6LI0QWSkvXc1txbflq7
         rM2/Iu5OqwIuUVjAqYCcbs9uRMjPx+lG0e+02Q1/VNOPiR0lFJxap+xsRUoTF9rbftzF
         m+UYYLZ68eC72L2OFPhZF2RWlqxwBTPNWJHomy6dvXM0BUaRRfTQgI09ucFUHtzgPEHH
         v+BlkdB4FQecXv4mJNBvl9USpYPZxxydhS3szCTvhJOt03sBhnrZ1rQIpoYz/upbww9m
         4NiP7CnnOubcPS+p/NRUs/QohPmOOyXEWju1ZlIlaywjJhmTzEumuV8ZuCgUbWaXLjeI
         folg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKFsvuUXsImFcdKhT7VGeiqwWZasyI1aiy/4zgwvS4E=;
        b=T1sYKBshzBHgRdP1bR79d5DGwaIRQLKjsODue6Y1sBbMM/1oqUfRb4U7WdMO2OP90D
         k+XnhA1TnpztiA0KAYmQ+fIo49Gg+Y2iGQYsBZk1UE3v7EtxHrqHXiMxnjnNiv5ETrIc
         8sI+BhnFGe3wHI5FScfDWJ9F+T3/kw5/rRTq4vtGLOneBdGp6EuCXziZSYdQcd9MO6o/
         3snLsJCXhim/UkgtNjX5guwZ06cR1qWYGoo56Tfi8NgXepuF/BwONx08IyPnBZEJKrqG
         TJ7vQZcWIQkYn6hiPH8QGvFQVVZNtq1DSWqo+4SyWfXASESamQsOp5KJyNXSOjXQQtaT
         manw==
X-Gm-Message-State: AOAM532yossnlEDOKaq+LLSoPA+qklrhrFhvtuyCUYEzk9fpQJZ0wIjB
	kI0jQANSQFPD/5DK61XixXI=
X-Google-Smtp-Source: ABdhPJwzg6fJ9/mDg40VxySmeZJWJ/fY3dHzePkrJED6iTgulAoWDq3h/KDGlR8Uld+t/52dm6/7Kg==
X-Received: by 2002:a05:6a00:cd6:b0:47e:6237:f995 with SMTP id b22-20020a056a000cd600b0047e6237f995mr38837048pfv.39.1635948191545;
        Wed, 03 Nov 2021 07:03:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:cec3:: with SMTP id d3ls1343399plg.1.gmail; Wed, 03
 Nov 2021 07:03:10 -0700 (PDT)
X-Received: by 2002:a17:90b:4904:: with SMTP id kr4mr14550132pjb.125.1635948190859;
        Wed, 03 Nov 2021 07:03:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635948190; cv=pass;
        d=google.com; s=arc-20160816;
        b=l1LJDKN0HbWA/f4Zq+eMGQVHmq9VlbrzTz4829RwSvqxOuCZnkfVrRPNasDxOc7EUo
         Sz0jE7Cn6XxpMFV1hopGNbE4X+XSV0nU51EeBpbqWvl+VhG6uJVlUz9NMJdxN8txBAb/
         VFYOG1GkUxhrX1aTzS9Vv9iHV0iXK9OV1BWLjUaBEZQHt+GB8xyDSPkwsWHIcvlecr9a
         pc8BsdfZPrjQz63DxTJJDnllKU+ZfIVK/LgbKBziP3prH2eo6CqzztPnbkfB9c375ofn
         UjRvE7GgMfW/JH93HN5iyvwdUyUfHnHlXGQuXcXUleVcEAUB+LpGWhSbo0I9wK3JgL94
         vEYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=uHIeFUGoiz7zOWABq9siQZ9r2y9dn71b0QCYGQ2niEQ=;
        b=hnIHlRCdoW4exric59NcAZd+MQpw17PNY604sQto4fNhCONXPc1K8mbVGSK2KLyv7N
         wja6kfX/trPLpQJveP1MSUnEyP9NtkQ5jO8j1/GWBmgt/9jV4EcJdvO0VJ1BGqpo2Coc
         oK1bHYCp4AorDGNI5Sev8TNe+Cpruh544NnKaLxfWnFyu38KIgwyY62nKo7oUcnZHx08
         98Dns9FBPed9AnpEvZNR/QirDh2rPe8xGtcAdML3qyNbIvchXy14hY+GiU4+AxvPPLE+
         Gr0cabKWyDEWtPty6TIXDK/RdiGb9rNiMtUvjrqrzELooVEeMAVHqQVvgyhn0lEPq0kA
         oe4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Poa2C66w;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.220.64 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2064.outbound.protection.outlook.com. [40.107.220.64])
        by gmr-mx.google.com with ESMTPS id mq9si364126pjb.3.2021.11.03.07.03.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Nov 2021 07:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.220.64 as permitted sender) client-ip=40.107.220.64;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmE7DDoBAJRRirbGu1kFTnXKdNvCtMnaAtMiuxaWxguv5HHI6+TmGdzDozMEAFvHzR7vT9ILrr2Pc7PPCEpli0Z1hqDV8/i2dx/7Bd2AkMoqskZBR+HCz/zEEzC7ghLvu4tJ5Qu5itcHYpb251qhJ+Lc7bk9C50x9MFC7MXpg4xhYTDlBhqgqbapFF06gs/PDiNXjk7Uii6wGnxWDZ/vdXmiG6bLHi464aRwGO9jEpTSPwjfbQy7h+b9CJ8QBwNtoRW2nSOHE2fgERPmGx15prhCdtq+1Ppu2lw1aGzv+CkP4uazewLoarCD3prqje47SF6adh3RedkgoAEV2zyJ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uHIeFUGoiz7zOWABq9siQZ9r2y9dn71b0QCYGQ2niEQ=;
 b=aKMv2jdpphqBo4aPYTzRLNXrKLZ8eJTJe7YObkwIJoSKKqQb13klyCRSSjaXIcDFga+4eewa3BWDtxdxvq0dbh4m1Z1AjkVGiy6Mhq2shADaPv3b2cSLqCcHnOLlMrUV0HhzaQaHwRQWs/m77e/DN56qN+fI+btwemMlxs7elNBxcedGyeHzETyn2PslR0sdO45LQjF7V2T+LDMPVLb2QEAioKpa7Z2NNA2iCQKWIneuNbUcaVdCJYR54znvChrAB1eKJvxZQs7PA3WsGgM3OIfIoGkYgfhVhAlnLEooFZeNEmq8axWVDgxFC98iz7QWKbCArb8ad5cUcBsSXw4XYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from MWHPR08CA0038.namprd08.prod.outlook.com (2603:10b6:300:c0::12)
 by BL1PR12MB5190.namprd12.prod.outlook.com (2603:10b6:208:31c::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 14:03:07 +0000
Received: from CO1NAM11FT030.eop-nam11.prod.protection.outlook.com
 (2603:10b6:300:c0:cafe::f) by MWHPR08CA0038.outlook.office365.com
 (2603:10b6:300:c0::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Wed, 3 Nov 2021 14:03:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT030.mail.protection.outlook.com (10.13.174.125) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4669.10 via Frontend Transport; Wed, 3 Nov 2021 14:03:06 +0000
Received: from [172.27.12.193] (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 3 Nov
 2021 14:02:57 +0000
Message-ID: <1b9b3c40-f933-59c3-09e6-aa6c3dda438f@nvidia.com>
Date: Wed, 3 Nov 2021 16:02:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
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
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <103c5154-cc29-a5ab-3c30-587fc0fbeae2@fb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0a201566-750f-481e-7c8b-08d99ed2a90d
X-MS-TrafficTypeDiagnostic: BL1PR12MB5190:
X-Microsoft-Antispam-PRVS: <BL1PR12MB51908548E72BD6658300F86CDC8C9@BL1PR12MB5190.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +hJb/J+e1Dzzf7mXLcOYBceZLPlEaPJ4Lsbt5dzq9zpM2u0jiy/eBYnYjhFQdTzGXelpUC5DI9By6JMk47f7MAo12XyXHrhCbeUR95Uj3NXTCu27rw6lWNMs0vaqkwfAsCjOU9zp9H4Bc0WYfETiF2VaK1eFdHGhB+2aQYgKmVGjdIIVZp8oiIJNYSIVECm4XEnowcyVJbJRVAQVKSi18gfpIdZEBlffCl1lkgJ90dSffhCTx0phqulLGkYfO+hrZOPEkeWvVJqnpyOWUfHmNYISZ4vkLhNnz7ljz8NBesMlj9Ha4pziCZx/A0Hou2QC73qC0qi6ae+1eHmPSGSI54BdoESj2nlHLS7y4kpQyV2gDysbNt57TaJkGe52r9F3U9Boraf5c6gnegSJeS/lOWN0Ggdwwp10xYIpWtLJ6qvL8yg9VFXLJE1VbWfh7pKIddRdU1IzTtexG3MBC/0gc6eAKrzDLjUfBQJUqLo70x2rfDqdDRTeR/1z0S75Ne62/hNwEzjGi3xV6nEizuyK1p1d0BhXsc4zzoCXrLNbuR4Z93OhBOi8uBULH52PEtA0RzFKIcHit8T2CjuJTFi/y5CiXHP5ZbJUi5bVhOv3h2k4o5T3UaidSf5i+MZpdJUm98n+MF3EzhIr1A0Dfbtas+Vkz2Warkj/9t6qC0AzVEaTFYYPBnqbws8PMItv0q+OQefg7r1AusoVbuESXRzkqC5xYMfTn2xeecRGi7U0TYd53wCx2N8pfP1qjdm4wZrJ
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(8936002)(66574015)(16576012)(86362001)(54906003)(47076005)(53546011)(4326008)(7416002)(26005)(7636003)(31696002)(82310400003)(186003)(336012)(30864003)(36860700001)(36906005)(5660300002)(83380400001)(8676002)(70586007)(2616005)(36756003)(4001150100001)(70206006)(2906002)(6916009)(426003)(31686004)(316002)(16526019)(6666004)(508600001)(356005)(21314003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2021 14:03:06.5080
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a201566-750f-481e-7c8b-08d99ed2a90d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT030.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5190
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=Poa2C66w;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.220.64 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

On 2021-11-03 04:10, Yonghong Song wrote:
>=20
>=20
> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>>
>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval,=20
>>>>> __be32 *tsecr)
>>>>
>>>> I'm probably missing context, Is there something in this function that
>>>> means you can't implement it in BPF?
>>>
>>> I was about to reply with some other comments but upon closer inspectio=
n
>>> I ended up at the same conclusion: this helper doesn't seem to be neede=
d
>>> at all?
>>
>> After trying to put this code into BPF (replacing the underlying=20
>> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues with=20
>> passing the verifier.
>>
>> In addition to comparing ptr to end, I had to add checks that compare=20
>> ptr to data_end, because the verifier can't deduce that end <=3D=20
>> data_end. More branches will add a certain slowdown (not measured).
>>
>> A more serious issue is the overall program complexity. Even though=20
>> the loop over the TCP options has an upper bound, and the pointer=20
>> advances by at least one byte every iteration, I had to limit the=20
>> total number of iterations artificially. The maximum number of=20
>> iterations that makes the verifier happy is 10. With more iterations,=20
>> I have the following error:
>>
>> BPF program is too large. Processed 1000001 insn
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 processe=
d 1000001 insns (limit 1000000)=20
>> max_states_per_insn 29 total_states 35489 peak_states 596 mark_read 45
>>
>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the=20
>> accumulated amount of instructions that the verifier can process in=20
>> all branches, is that right? It doesn't look realistic that my program=
=20
>> can run 1 million instructions in a single run, but it might be that=20
>> if you take all possible flows and add up the instructions from these=20
>> flows, it will exceed 1 million.
>>
>> The limitation of maximum 10 TCP options might be not enough, given=20
>> that valid packets are permitted to include more than 10 NOPs. An=20
>> alternative of using bpf_load_hdr_opt and calling it three times=20
>> doesn't look good either, because it will be about three times slower=20
>> than going over the options once. So maybe having a helper for that is=
=20
>> better than trying to fit it into BPF?
>>
>> One more interesting fact is the time that it takes for the verifier=20
>> to check my program. If it's limited to 10 iterations, it does it=20
>> pretty fast, but if I try to increase the number to 11 iterations, it=20
>> takes several minutes for the verifier to reach 1 million instructions=
=20
>> and print the error then. I also tried grouping the NOPs in an inner=20
>> loop to count only 10 real options, and the verifier has been running=20
>> for a few hours without any response. Is it normal?=20
>=20
> Maxim, this may expose a verifier bug. Do you have a reproducer I can=20
> access? I would like to debug this to see what is the root case. Thanks!

Thanks, I appreciate your help in debugging it. The reproducer is based=20
on the modified XDP program from patch 10 in this series. You'll need to=20
apply at least patches 6, 7, 8 from this series to get new BPF helpers=20
needed for the XDP program (tell me if that's a problem, I can try to=20
remove usage of new helpers, but it will affect the program length and=20
may produce different results in the verifier).

See the C code of the program that passes the verifier (compiled with=20
clang version 12.0.0-1ubuntu1) in the bottom of this email. If you=20
increase the loop boundary from 10 to at least 11 in=20
cookie_init_timestamp_raw(), it fails the verifier after a few minutes.=20
If you apply this tiny change, it fails the verifier after about 3 hours:

--- a/samples/bpf/syncookie_kern.c
+++ b/samples/bpf/syncookie_kern.c
@@ -167,6 +167,7 @@ static __always_inline bool cookie_init_
  	for (i =3D 0; i < 10; i++) {
  		u8 opcode, opsize;

+skip_nop:
  		if (ptr >=3D end)
  			break;
  		if (ptr + 1 > data_end)
@@ -178,7 +179,7 @@ static __always_inline bool cookie_init_
  			break;
  		if (opcode =3D=3D TCPOPT_NOP) {
  			++ptr;
-			continue;
+			goto skip_nop;
  		}

  		if (ptr + 1 >=3D end)

--cut--

// SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
/* Copyright (c) 2021, NVIDIA CORPORATION & AFFILIATES. All rights=20
reserved. */

#include <stdbool.h>
#include <stddef.h>

#include <uapi/linux/errno.h>
#include <uapi/linux/bpf.h>
#include <uapi/linux/pkt_cls.h>
#include <uapi/linux/if_ether.h>
#include <uapi/linux/in.h>
#include <uapi/linux/ip.h>
#include <uapi/linux/ipv6.h>
#include <uapi/linux/tcp.h>
#include <uapi/linux/netfilter/nf_conntrack_common.h>
#include <linux/minmax.h>
#include <vdso/time64.h>
#include <asm/unaligned.h>

#include <bpf/bpf_helpers.h>
#include <bpf/bpf_endian.h>

#define DEFAULT_MSS4 1460
#define DEFAULT_MSS6 1440
#define DEFAULT_WSCALE 7
#define DEFAULT_TTL 64
#define MAX_ALLOWED_PORTS 8

struct bpf_map_def SEC("maps") values =3D {
	.type =3D BPF_MAP_TYPE_ARRAY,
	.key_size =3D sizeof(__u32),
	.value_size =3D sizeof(__u64),
	.max_entries =3D 2,
};

struct bpf_map_def SEC("maps") allowed_ports =3D {
	.type =3D BPF_MAP_TYPE_ARRAY,
	.key_size =3D sizeof(__u32),
	.value_size =3D sizeof(__u16),
	.max_entries =3D MAX_ALLOWED_PORTS,
};

#define IP_DF 0x4000
#define IP_MF 0x2000
#define IP_OFFSET 0x1fff

#define NEXTHDR_TCP 6

#define TCPOPT_NOP 1
#define TCPOPT_EOL 0
#define TCPOPT_MSS 2
#define TCPOPT_WINDOW 3
#define TCPOPT_SACK_PERM 4
#define TCPOPT_TIMESTAMP 8

#define TCPOLEN_MSS 4
#define TCPOLEN_WINDOW 3
#define TCPOLEN_SACK_PERM 2
#define TCPOLEN_TIMESTAMP 10

#define TCP_MAX_WSCALE 14U

#define TS_OPT_WSCALE_MASK 0xf
#define TS_OPT_SACK BIT(4)
#define TS_OPT_ECN BIT(5)
#define TSBITS 6
#define TSMASK (((__u32)1 << TSBITS) - 1)

#define TCP_TS_HZ 1000

#define IPV4_MAXLEN 60
#define TCP_MAXLEN 60

static __always_inline void swap_eth_addr(__u8 *a, __u8 *b)
{
	__u8 tmp[ETH_ALEN];

	__builtin_memcpy(tmp, a, ETH_ALEN);
	__builtin_memcpy(a, b, ETH_ALEN);
	__builtin_memcpy(b, tmp, ETH_ALEN);
}

static __always_inline __u16 csum_fold(__u32 csum)
{
	csum =3D (csum & 0xffff) + (csum >> 16);
	csum =3D (csum & 0xffff) + (csum >> 16);
	return (__u16)~csum;
}

static __always_inline __u16 csum_tcpudp_magic(__be32 saddr, __be32 daddr,
					       __u32 len, __u8 proto,
					       __u32 csum)
{
	__u64 s =3D csum;

	s +=3D (__u32)saddr;
	s +=3D (__u32)daddr;
#if defined(__BIG_ENDIAN__)
	s +=3D proto + len;
#elif defined(__LITTLE_ENDIAN__)
	s +=3D (proto + len) << 8;
#else
#error Unknown endian
#endif
	s =3D (s & 0xffffffff) + (s >> 32);
	s =3D (s & 0xffffffff) + (s >> 32);

	return csum_fold((__u32)s);
}

static __always_inline __u16 csum_ipv6_magic(const struct in6_addr *saddr,
					     const struct in6_addr *daddr,
					     __u32 len, __u8 proto, __u32 csum)
{
	__u64 sum =3D csum;
	int i;

#pragma unroll
	for (i =3D 0; i < 4; i++)
		sum +=3D (__u32)saddr->s6_addr32[i];

#pragma unroll
	for (i =3D 0; i < 4; i++)
		sum +=3D (__u32)daddr->s6_addr32[i];

	// Don't combine additions to avoid 32-bit overflow.
	sum +=3D bpf_htonl(len);
	sum +=3D bpf_htonl(proto);

	sum =3D (sum & 0xffffffff) + (sum >> 32);
	sum =3D (sum & 0xffffffff) + (sum >> 32);

	return csum_fold((__u32)sum);
}

static __always_inline u64 tcp_clock_ns(void)
{
	return bpf_ktime_get_ns();
}

static __always_inline __u32 tcp_ns_to_ts(__u64 ns)
{
	return div_u64(ns, NSEC_PER_SEC / TCP_TS_HZ);
}

static __always_inline __u32 tcp_time_stamp_raw(void)
{
	return tcp_ns_to_ts(tcp_clock_ns());
}

static __always_inline bool cookie_init_timestamp_raw(struct tcphdr=20
*tcp_header,
						      __u16 tcp_len,
						      __be32 *tsval,
						      __be32 *tsecr,
						      void *data_end)
{
	u8 wscale =3D TS_OPT_WSCALE_MASK;
	bool option_timestamp =3D false;
	bool option_sack =3D false;
	u8 *ptr, *end;
	u32 cookie;
	int i;

	ptr =3D (u8 *)(tcp_header + 1);
	end =3D (u8 *)tcp_header + tcp_len;

	for (i =3D 0; i < 10; i++) {
		u8 opcode, opsize;

		if (ptr >=3D end)
			break;
		if (ptr + 1 > data_end)
			return false;

		opcode =3D ptr[0];

		if (opcode =3D=3D TCPOPT_EOL)
			break;
		if (opcode =3D=3D TCPOPT_NOP) {
			++ptr;
			continue;
		}

		if (ptr + 1 >=3D end)
			break;
		if (ptr + 2 > data_end)
			return false;
		opsize =3D ptr[1];
		if (opsize < 2)
			break;

		if (ptr + opsize > end)
			break;

		switch (opcode) {
		case TCPOPT_WINDOW:
			if (opsize =3D=3D TCPOLEN_WINDOW) {
				if (ptr + TCPOLEN_WINDOW > data_end)
					return false;
				wscale =3D min_t(u8, ptr[2], TCP_MAX_WSCALE);
			}
			break;
		case TCPOPT_TIMESTAMP:
			if (opsize =3D=3D TCPOLEN_TIMESTAMP) {
				if (ptr + TCPOLEN_TIMESTAMP > data_end)
					return false;
				option_timestamp =3D true;
				/* Client's tsval becomes our tsecr. */
				*tsecr =3D get_unaligned((__be32 *)(ptr + 2));
			}
			break;
		case TCPOPT_SACK_PERM:
			if (opsize =3D=3D TCPOLEN_SACK_PERM)
				option_sack =3D true;
			break;
		}

		ptr +=3D opsize;
	}

	if (!option_timestamp)
		return false;

	cookie =3D tcp_time_stamp_raw() & ~TSMASK;
	cookie |=3D wscale & TS_OPT_WSCALE_MASK;
	if (option_sack)
		cookie |=3D TS_OPT_SACK;
	if (tcp_header->ece && tcp_header->cwr)
		cookie |=3D TS_OPT_ECN;
	*tsval =3D cpu_to_be32(cookie);

	return true;
}

static __always_inline void values_get_tcpipopts(__u16 *mss, __u8 *wscale,
						 __u8 *ttl, bool ipv6)
{
	__u32 key =3D 0;
	__u64 *value;

	value =3D bpf_map_lookup_elem(&values, &key);
	if (value && *value !=3D 0) {
		if (ipv6)
			*mss =3D (*value >> 32) & 0xffff;
		else
			*mss =3D *value & 0xffff;
		*wscale =3D (*value >> 16) & 0xf;
		*ttl =3D (*value >> 24) & 0xff;
		return;
	}

	*mss =3D ipv6 ? DEFAULT_MSS6 : DEFAULT_MSS4;
	*wscale =3D DEFAULT_WSCALE;
	*ttl =3D DEFAULT_TTL;
}

static __always_inline void values_inc_synacks(void)
{
	__u32 key =3D 1;
	__u32 *value;

	value =3D bpf_map_lookup_elem(&values, &key);
	if (value)
		__sync_fetch_and_add(value, 1);
}

static __always_inline bool check_port_allowed(__u16 port)
{
	__u32 i;

	for (i =3D 0; i < MAX_ALLOWED_PORTS; i++) {
		__u32 key =3D i;
		__u16 *value;

		value =3D bpf_map_lookup_elem(&allowed_ports, &key);

		if (!value)
			break;
		// 0 is a terminator value. Check it first to avoid matching on
		// a forbidden port =3D=3D 0 and returning true.
		if (*value =3D=3D 0)
			break;

		if (*value =3D=3D port)
			return true;
	}

	return false;
}

struct header_pointers {
	struct ethhdr *eth;
	struct iphdr *ipv4;
	struct ipv6hdr *ipv6;
	struct tcphdr *tcp;
	__u16 tcp_len;
};

static __always_inline int tcp_dissect(void *data, void *data_end,
				       struct header_pointers *hdr)
{
	hdr->eth =3D data;
	if (hdr->eth + 1 > data_end)
		return XDP_DROP;

	switch (bpf_ntohs(hdr->eth->h_proto)) {
	case ETH_P_IP:
		hdr->ipv6 =3D NULL;

		hdr->ipv4 =3D (void *)hdr->eth + sizeof(*hdr->eth);
		if (hdr->ipv4 + 1 > data_end)
			return XDP_DROP;
		if (hdr->ipv4->ihl * 4 < sizeof(*hdr->ipv4))
			return XDP_DROP;
		if (hdr->ipv4->version !=3D 4)
			return XDP_DROP;

		if (hdr->ipv4->protocol !=3D IPPROTO_TCP)
			return XDP_PASS;

		hdr->tcp =3D (void *)hdr->ipv4 + hdr->ipv4->ihl * 4;
		break;
	case ETH_P_IPV6:
		hdr->ipv4 =3D NULL;

		hdr->ipv6 =3D (void *)hdr->eth + sizeof(*hdr->eth);
		if (hdr->ipv6 + 1 > data_end)
			return XDP_DROP;
		if (hdr->ipv6->version !=3D 6)
			return XDP_DROP;

		// XXX: Extension headers are not supported and could circumvent
		// XDP SYN flood protection.
		if (hdr->ipv6->nexthdr !=3D NEXTHDR_TCP)
			return XDP_PASS;

		hdr->tcp =3D (void *)hdr->ipv6 + sizeof(*hdr->ipv6);
		break;
	default:
		// XXX: VLANs will circumvent XDP SYN flood protection.
		return XDP_PASS;
	}

	if (hdr->tcp + 1 > data_end)
		return XDP_DROP;
	hdr->tcp_len =3D hdr->tcp->doff * 4;
	if (hdr->tcp_len < sizeof(*hdr->tcp))
		return XDP_DROP;

	return XDP_TX;
}

static __always_inline __u8 tcp_mkoptions(__be32 *buf, __be32 *tsopt,=20
__u16 mss,
					  __u8 wscale)
{
	__be32 *start =3D buf;

	*buf++ =3D bpf_htonl((TCPOPT_MSS << 24) | (TCPOLEN_MSS << 16) | mss);

	if (!tsopt)
		return buf - start;

	if (tsopt[0] & bpf_htonl(1 << 4))
		*buf++ =3D bpf_htonl((TCPOPT_SACK_PERM << 24) |
				   (TCPOLEN_SACK_PERM << 16) |
				   (TCPOPT_TIMESTAMP << 8) |
				   TCPOLEN_TIMESTAMP);
	else
		*buf++ =3D bpf_htonl((TCPOPT_NOP << 24) |
				   (TCPOPT_NOP << 16) |
				   (TCPOPT_TIMESTAMP << 8) |
				   TCPOLEN_TIMESTAMP);
	*buf++ =3D tsopt[0];
	*buf++ =3D tsopt[1];

	if ((tsopt[0] & bpf_htonl(0xf)) !=3D bpf_htonl(0xf))
		*buf++ =3D bpf_htonl((TCPOPT_NOP << 24) |
				   (TCPOPT_WINDOW << 16) |
				   (TCPOLEN_WINDOW << 8) |
				   wscale);

	return buf - start;
}

static __always_inline void tcp_gen_synack(struct tcphdr *tcp_header,
					   __u32 cookie, __be32 *tsopt,
					   __u16 mss, __u8 wscale)
{
	void *tcp_options;

	tcp_flag_word(tcp_header) =3D TCP_FLAG_SYN | TCP_FLAG_ACK;
	if (tsopt && (tsopt[0] & bpf_htonl(1 << 5)))
		tcp_flag_word(tcp_header) |=3D TCP_FLAG_ECE;
	tcp_header->doff =3D 5; // doff is part of tcp_flag_word.
	swap(tcp_header->source, tcp_header->dest);
	tcp_header->ack_seq =3D bpf_htonl(bpf_ntohl(tcp_header->seq) + 1);
	tcp_header->seq =3D bpf_htonl(cookie);
	tcp_header->window =3D 0;
	tcp_header->urg_ptr =3D 0;
	tcp_header->check =3D 0; // Rely on hardware checksum offload.

	tcp_options =3D (void *)(tcp_header + 1);
	tcp_header->doff +=3D tcp_mkoptions(tcp_options, tsopt, mss, wscale);
}

static __always_inline void tcpv4_gen_synack(struct header_pointers *hdr,
					     __u32 cookie, __be32 *tsopt)
{
	__u8 wscale;
	__u16 mss;
	__u8 ttl;

	values_get_tcpipopts(&mss, &wscale, &ttl, false);

	swap_eth_addr(hdr->eth->h_source, hdr->eth->h_dest);

	swap(hdr->ipv4->saddr, hdr->ipv4->daddr);
	hdr->ipv4->check =3D 0; // Rely on hardware checksum offload.
	hdr->ipv4->tos =3D 0;
	hdr->ipv4->id =3D 0;
	hdr->ipv4->ttl =3D ttl;

	tcp_gen_synack(hdr->tcp, cookie, tsopt, mss, wscale);

	hdr->tcp_len =3D hdr->tcp->doff * 4;
	hdr->ipv4->tot_len =3D bpf_htons(sizeof(*hdr->ipv4) + hdr->tcp_len);
}

static __always_inline void tcpv6_gen_synack(struct header_pointers *hdr,
					     __u32 cookie, __be32 *tsopt)
{
	__u8 wscale;
	__u16 mss;
	__u8 ttl;

	values_get_tcpipopts(&mss, &wscale, &ttl, true);

	swap_eth_addr(hdr->eth->h_source, hdr->eth->h_dest);

	swap(hdr->ipv6->saddr, hdr->ipv6->daddr);
	*(__be32 *)hdr->ipv6 =3D bpf_htonl(0x60000000);
	hdr->ipv6->hop_limit =3D ttl;

	tcp_gen_synack(hdr->tcp, cookie, tsopt, mss, wscale);

	hdr->tcp_len =3D hdr->tcp->doff * 4;
	hdr->ipv6->payload_len =3D bpf_htons(hdr->tcp_len);
}

static __always_inline int syncookie_handle_syn(struct header_pointers *hdr=
,
						struct xdp_md *ctx,
						void *data, void *data_end)
{
	__u32 old_pkt_size, new_pkt_size;
	// Unlike clang 10, clang 11 and 12 generate code that doesn't pass the
	// BPF verifier if tsopt is not volatile. Volatile forces it to store
	// the pointer value and use it directly, otherwise tcp_mkoptions is
	// (mis)compiled like this:
	//   if (!tsopt)
	//       return buf - start;
	//   reg =3D stored_return_value_of_bpf_tcp_raw_gen_tscookie;
	//   if (reg =3D=3D 0)
	//       tsopt =3D tsopt_buf;
	//   else
	//       tsopt =3D NULL;
	//   ...
	//   *buf++ =3D tsopt[1];
	// It creates a dead branch where tsopt is assigned NULL, but the
	// verifier can't prove it's dead and blocks the program.
	__be32 * volatile tsopt =3D NULL;
	__be32 tsopt_buf[2];
	void *ip_header;
	__u16 ip_len;
	__u32 cookie;
	__s64 value;

	if (hdr->ipv4) {
		// Check the IPv4 and TCP checksums before creating a SYNACK.
		value =3D bpf_csum_diff(0, 0, (void *)hdr->ipv4, hdr->ipv4->ihl * 4, 0);
		if (value < 0)
			return XDP_ABORTED;
		if (csum_fold(value) !=3D 0)
			return XDP_DROP; // Bad IPv4 checksum.

		value =3D bpf_csum_diff(0, 0, (void *)hdr->tcp, hdr->tcp_len, 0);
		if (value < 0)
			return XDP_ABORTED;
		if (csum_tcpudp_magic(hdr->ipv4->saddr, hdr->ipv4->daddr,
				      hdr->tcp_len, IPPROTO_TCP, value) !=3D 0)
			return XDP_DROP; // Bad TCP checksum.

		ip_header =3D hdr->ipv4;
		ip_len =3D sizeof(*hdr->ipv4);
	} else if (hdr->ipv6) {
		// Check the TCP checksum before creating a SYNACK.
		value =3D bpf_csum_diff(0, 0, (void *)hdr->tcp, hdr->tcp_len, 0);
		if (value < 0)
			return XDP_ABORTED;
		if (csum_ipv6_magic(&hdr->ipv6->saddr, &hdr->ipv6->daddr,
				    hdr->tcp_len, IPPROTO_TCP, value) !=3D 0)
			return XDP_DROP; // Bad TCP checksum.

		ip_header =3D hdr->ipv6;
		ip_len =3D sizeof(*hdr->ipv6);
	} else {
		return XDP_ABORTED;
	}

	// Issue SYN cookies on allowed ports, drop SYN packets on
	// blocked ports.
	if (!check_port_allowed(bpf_ntohs(hdr->tcp->dest)))
		return XDP_DROP;

	value =3D bpf_tcp_raw_gen_syncookie(ip_header, ip_len,
					  (void *)hdr->tcp, hdr->tcp_len);
	if (value < 0)
		return XDP_ABORTED;
	cookie =3D (__u32)value;

	if (cookie_init_timestamp_raw((void *)hdr->tcp, hdr->tcp_len,
				      &tsopt_buf[0], &tsopt_buf[1], data_end))
		tsopt =3D tsopt_buf;

	// Check that there is enough space for a SYNACK. It also covers
	// the check that the destination of the __builtin_memmove below
	// doesn't overflow.
	if (data + sizeof(*hdr->eth) + ip_len + TCP_MAXLEN > data_end)
		return XDP_ABORTED;

	if (hdr->ipv4) {
		if (hdr->ipv4->ihl * 4 > sizeof(*hdr->ipv4)) {
			struct tcphdr *new_tcp_header;

			new_tcp_header =3D data + sizeof(*hdr->eth) + sizeof(*hdr->ipv4);
			__builtin_memmove(new_tcp_header, hdr->tcp, sizeof(*hdr->tcp));
			hdr->tcp =3D new_tcp_header;

			hdr->ipv4->ihl =3D sizeof(*hdr->ipv4) / 4;
		}

		tcpv4_gen_synack(hdr, cookie, tsopt);
	} else if (hdr->ipv6) {
		tcpv6_gen_synack(hdr, cookie, tsopt);
	} else {
		return XDP_ABORTED;
	}

	// Recalculate checksums.
	hdr->tcp->check =3D 0;
	value =3D bpf_csum_diff(0, 0, (void *)hdr->tcp, hdr->tcp_len, 0);
	if (value < 0)
		return XDP_ABORTED;
	if (hdr->ipv4) {
		hdr->tcp->check =3D csum_tcpudp_magic(hdr->ipv4->saddr,
						    hdr->ipv4->daddr,
						    hdr->tcp_len,
						    IPPROTO_TCP,
						    value);

		hdr->ipv4->check =3D 0;
		value =3D bpf_csum_diff(0, 0, (void *)hdr->ipv4, sizeof(*hdr->ipv4), 0);
		if (value < 0)
			return XDP_ABORTED;
		hdr->ipv4->check =3D csum_fold(value);
	} else if (hdr->ipv6) {
		hdr->tcp->check =3D csum_ipv6_magic(&hdr->ipv6->saddr,
						  &hdr->ipv6->daddr,
						  hdr->tcp_len,
						  IPPROTO_TCP,
						  value);
	} else {
		return XDP_ABORTED;
	}

	// Set the new packet size.
	old_pkt_size =3D data_end - data;
	new_pkt_size =3D sizeof(*hdr->eth) + ip_len + hdr->tcp->doff * 4;
	if (bpf_xdp_adjust_tail(ctx, new_pkt_size - old_pkt_size))
		return XDP_ABORTED;

	values_inc_synacks();

	return XDP_TX;
}

static __always_inline int syncookie_handle_ack(struct header_pointers *hdr=
)
{
	int err;

	if (hdr->ipv4)
		err =3D bpf_tcp_raw_check_syncookie(hdr->ipv4, sizeof(*hdr->ipv4),
						  (void *)hdr->tcp, hdr->tcp_len);
	else if (hdr->ipv6)
		err =3D bpf_tcp_raw_check_syncookie(hdr->ipv6, sizeof(*hdr->ipv6),
						  (void *)hdr->tcp, hdr->tcp_len);
	else
		return XDP_ABORTED;
	if (err)
		return XDP_DROP;

	return XDP_PASS;
}

SEC("xdp/syncookie")
int syncookie_xdp(struct xdp_md *ctx)
{
	void *data_end =3D (void *)(long)ctx->data_end;
	void *data =3D (void *)(long)ctx->data;
	struct header_pointers hdr;
	struct bpf_sock_tuple tup;
	struct bpf_nf_conn *ct;
	__u32 tup_size;
	__s64 value;
	int ret;

	ret =3D tcp_dissect(data, data_end, &hdr);
	if (ret !=3D XDP_TX)
		return ret;

	if (hdr.ipv4) {
		// TCP doesn't normally use fragments, and XDP can't reassemble them.
		if ((hdr.ipv4->frag_off & bpf_htons(IP_DF | IP_MF | IP_OFFSET)) !=3D=20
bpf_htons(IP_DF))
			return XDP_DROP;

		tup.ipv4.saddr =3D hdr.ipv4->saddr;
		tup.ipv4.daddr =3D hdr.ipv4->daddr;
		tup.ipv4.sport =3D hdr.tcp->source;
		tup.ipv4.dport =3D hdr.tcp->dest;
		tup_size =3D sizeof(tup.ipv4);
	} else if (hdr.ipv6) {
		__builtin_memcpy(tup.ipv6.saddr, &hdr.ipv6->saddr,=20
sizeof(tup.ipv6.saddr));
		__builtin_memcpy(tup.ipv6.daddr, &hdr.ipv6->daddr,=20
sizeof(tup.ipv6.daddr));
		tup.ipv6.sport =3D hdr.tcp->source;
		tup.ipv6.dport =3D hdr.tcp->dest;
		tup_size =3D sizeof(tup.ipv6);
	} else {
		// The verifier can't track that either ipv4 or ipv6 is not NULL.
		return XDP_ABORTED;
	}

	value =3D 0; // Flags.
	ct =3D bpf_ct_lookup_tcp(ctx, &tup, tup_size, BPF_F_CURRENT_NETNS, &value)=
;
	if (ct) {
		unsigned long status =3D ct->status;

		bpf_ct_release(ct);
		if (status & IPS_CONFIRMED_BIT)
			return XDP_PASS;
	} else if (value !=3D -ENOENT) {
		return XDP_ABORTED;
	}

	// value =3D=3D -ENOENT || !(status & IPS_CONFIRMED_BIT)

	if ((hdr.tcp->syn ^ hdr.tcp->ack) !=3D 1)
		return XDP_DROP;

	// Grow the TCP header to TCP_MAXLEN to be able to pass any hdr.tcp_len
	// to bpf_tcp_raw_gen_syncookie and pass the verifier.
	if (bpf_xdp_adjust_tail(ctx, TCP_MAXLEN - hdr.tcp_len))
		return XDP_ABORTED;

	data_end =3D (void *)(long)ctx->data_end;
	data =3D (void *)(long)ctx->data;

	if (hdr.ipv4) {
		hdr.eth =3D data;
		hdr.ipv4 =3D (void *)hdr.eth + sizeof(*hdr.eth);
		// IPV4_MAXLEN is needed when calculating checksum.
		// At least sizeof(struct iphdr) is needed here to access ihl.
		if ((void *)hdr.ipv4 + IPV4_MAXLEN > data_end)
			return XDP_ABORTED;
		hdr.tcp =3D (void *)hdr.ipv4 + hdr.ipv4->ihl * 4;
	} else if (hdr.ipv6) {
		hdr.eth =3D data;
		hdr.ipv6 =3D (void *)hdr.eth + sizeof(*hdr.eth);
		hdr.tcp =3D (void *)hdr.ipv6 + sizeof(*hdr.ipv6);
	} else {
		return XDP_ABORTED;
	}

	if ((void *)hdr.tcp + TCP_MAXLEN > data_end)
		return XDP_ABORTED;

	// We run out of registers, tcp_len gets spilled to the stack, and the
	// verifier forgets its min and max values checked above in tcp_dissect.
	hdr.tcp_len =3D hdr.tcp->doff * 4;
	if (hdr.tcp_len < sizeof(*hdr.tcp))
		return XDP_ABORTED;

	return hdr.tcp->syn ? syncookie_handle_syn(&hdr, ctx, data, data_end) :
			      syncookie_handle_ack(&hdr);
}

SEC("xdp/dummy")
int dummy_xdp(struct xdp_md *ctx)
{
	// veth requires XDP programs to be set on both sides.
	return XDP_PASS;
}

char _license[] SEC("license") =3D "GPL";

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1b9b3c40-f933-59c3-09e6-aa6c3dda438f%40nvidia.com.
