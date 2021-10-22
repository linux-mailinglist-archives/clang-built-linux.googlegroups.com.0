Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBN62ZOFQMGQE7G67NLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A9C437B30
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Oct 2021 18:56:24 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id 136-20020a2e098e000000b002110b902242sf1485708ljj.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Oct 2021 09:56:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634921783; cv=pass;
        d=google.com; s=arc-20160816;
        b=EiPB66/3hOHIjS48V7yJ/uMBi9uRilT3lhn+1r0v2uvsdJ3Lb9DufBdW2wcEsAtuLq
         pK9A9Bo9JyW7rC2fINH3JcBMQGibzKGvmn8NUZjY/kPKKmbghuifbO1Simrn6Qi1nqCy
         45JZTeRyjTtN9No5k6WZBG4EoYMxpo/us+uHh7QS+o367vx4S/MOhatRuGdq3Rq4t4j5
         CxIHeJDc4Yrahs6JpRoBUhQrV/xxzf6ROkCAjBzUBPSNgVYHb2+LgoPDIlJzU7TlZpSx
         SGmBj9rjJKSeFeaXyO7qgOwcQCdANHXhZw7SeE0L3nJLL9ir8qLGt0WlfEeaKlLS7sE+
         jrGg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=j4FwTEnSE1ZQ83df87IP+Ctxz+9BRvqY7drnmorJuAI=;
        b=n280qlIasXVtLrJ/iNJzUb8OYPpQ4BzEoTlsfs9E5LqTa7d9baHaVYV5eBg/Qg6SxU
         3fsib9TxMqqiGHZAikK+HR3SzcqrUTjLTDjLEqTHUUNXdIhDTcmpiPCGxms5gHHF9Mf4
         DgR2cd7X1Pbfsm5oSPYNC6MuS0N6tJeBWpNwlFQbENjkvk0Qe5srixOxgDA0x3Th5mjw
         JdLGMZCs86E9c+gm9qKoddXPXjs3WlmM/pnb7ET8CA3WjAvZT16r6HmtcRxoxcnKdLmi
         NUCds+MrVPmPJanS8mdcjGp0p+3WgSaVvq5GOmHnjupGgxnNesOmTwrFGS1wHPRx0E8R
         p1+Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=hYxQe93l;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.96.81 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j4FwTEnSE1ZQ83df87IP+Ctxz+9BRvqY7drnmorJuAI=;
        b=e5LWNuOf7g5Z8zF2iwqWkN+VGS/diQ7qAQormQE6ekDDM+lzgLC22nGrxOV+36obaf
         gA3WWCTHlWqhgIYg7mns8e5jl9CXj7OP25D6EH5T3pa3cqE0PxQE5tfCggZBRsiLn1B4
         lviNZZr0cx7eqRScymb1Mkar573ZlG4WJaTYyPcWGce3jvhAOE7HhXB/jB5VlIE/sK7y
         XvFwtGuqVAYrkwi70raOggBquvjBi9PiFzRWpj8bMR8CqvGLMMlwNSclHydx6bJJWt6B
         0ecfy1Q4YOOJzAvc/p3epiBDpXCacRG9x+1nKpRpds++icGHRQns6DJegDVn1yI0BaGD
         nMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j4FwTEnSE1ZQ83df87IP+Ctxz+9BRvqY7drnmorJuAI=;
        b=DWSuWfXgeGG6Qj/3ZAXq9GXI8D1V76N6bEcwpcvKrZO0DjgtltqamEfcIjVD8E7UoY
         SmhRx4DVCCEYSgmNfzBrdlt8rh9XcIM5ULxAFBBVE2NB+ThRDxy0ViwUUJnzkmClrsd/
         238a4+hQo4uuxv0yqdTnTXiQN7JWpSmfG2dIrOSoIwGcq1Jk83c6cxSQtY7sqIa8dv2V
         r1US+xKxNjPyjI9W1+o+iJ8cwGoi7gP0qe4rYRtp83JlsEvx/N3HGJDpopmQoWxj9YJl
         07eH3ybCyq/xrKWylWzHb4yTcpYZLcPIvAW/kBSJgrmwL2wfrjyvuNbHv3vQr+ap18WR
         N48Q==
X-Gm-Message-State: AOAM531iOvuEvlN4rGVXCfJs0QcHfDk5khNy4HnzSle2N7YnFIf/d9Ed
	MIFdkvDG9FzvyP8iyEtbBDs=
X-Google-Smtp-Source: ABdhPJxiwtzF/u/Y9ScSp29jvUv14oJI+r+scbujy7kaBmvIr9Ag3JAmMmCL2CdQuyI6DXME2vQVdQ==
X-Received: by 2002:ac2:5de2:: with SMTP id z2mr749017lfq.329.1634921783652;
        Fri, 22 Oct 2021 09:56:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b44:: with SMTP id o4ls1871578ljj.9.gmail; Fri, 22 Oct
 2021 09:56:22 -0700 (PDT)
X-Received: by 2002:a2e:5353:: with SMTP id t19mr1163085ljd.304.1634921782602;
        Fri, 22 Oct 2021 09:56:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634921782; cv=pass;
        d=google.com; s=arc-20160816;
        b=N7wDR0RNolcM2ZS6gYNl8vb7jSrGYoa0W/2lM1624ne00uQNhXSyEGjqAykfMAzE3Q
         16IJ5QjOmzMMZXUZXAKFKwKJz2Q87Yp0I1AlfO4k07mz9VPQITa8gHTXgRvkzBees4gS
         B9m6eOeUdrSaUl3LW45w2wSg5ChzAObzNZnt8dBf1FhvJv6XO5q71EUoLIc8ekhr4Ibn
         PuTBr+BS7T7XtFDWQ5z1U5RmlCWPdlgQfT8Hi/f50cR4h50hOQ5E+TCiXqtAOwSr7baq
         ofzto0QgwIxIvS9xrFOdZBLMcs68BhR81yhQIR1EAocR45N3CNoWvusqQ378vF0ELKvp
         7E1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=wdPVH0zRaJCLsKEtzYc8xoWEooc9kW9V2xlsPZZT0bI=;
        b=BuuzvEf0WXYE6UbyQqAUgY3Mhent8oP6i43s3BcWGb1wQ4K2ftk1jTpk5ypDeMinka
         mWBOt8VGAjJKMcROHL5Rmji5LZCUzo+2vt63Eo77jSKiU8B0L7BOM78YQBhNCzIO/OH4
         IAoiuklzV0qjaC5Fioiq86OEUr4bLDofkNhYR3LiIp8Z4EJ8dbhFvA6x7PEe+i06oOTW
         yO/pzz3NnJ4a1M8gA4+QlNrEx/kW+8HKWBFOFM0IM+xNNzWgwNFDtF2m571odIVWNJVn
         lHiLsCXN41YL0Dogz1NrGZ1gwGgI7C6pRP/0h5P7H6jcDjDBO6vQazb8IvQdc35M3cF3
         U6aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=hYxQe93l;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.96.81 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2081.outbound.protection.outlook.com. [40.107.96.81])
        by gmr-mx.google.com with ESMTPS id m18si572022ljg.7.2021.10.22.09.56.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Oct 2021 09:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.96.81 as permitted sender) client-ip=40.107.96.81;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTSfAd5jfQe81Pwpj2ZcbPcpCQ/7vWHgvUGhbSg5yc8fG6bUNi/tTnIFPuT+7mjdWAcwLJwl/OPEYM1RINt8iaZ2B8p4EfkOAPdMdsGqGTzzaMFntXKZCLNJEWZewe5QyVsl3gpAPrZCig2TvD1/Pvs6fUwqidE0/1P6fvaMm3NH5esSqCJ/sR41BhIBlHZe3iU6NfA7k7rarGNAzBVaomkpffIm+AOgVncJKGd8LxvlGbh0FduxdyyVBmTOz0hsEKU2rJWXci357Dc4g2cj4XQS/sj7Z8vnwPCwgQpHBlKPAwPMZivz1RvhDij239s+ciMilzQLsTP/HdyVjsnJVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wdPVH0zRaJCLsKEtzYc8xoWEooc9kW9V2xlsPZZT0bI=;
 b=Bs9CrrPGAFrCEG1TnHe9hdAo9TPINuSgWnIfGJO8xOAvT+7u8qHddDAfpYw+tBiKw5ZmPk7vf0YAofV36p/XeZnKG0BhhwLU2Hmstf03gqNhyFVqPa+QG7LQGBGqrxHYObYe9KCAjuLNZBdp5cI7ldTr7brFfrbhVb1C6BXD+pfbN2pGdZppHSQSz1xjyHlEfnX0xGjx18oJqogotIoDRu5lj3xMPOP0l3bLQRikz7PPL0BDTpGxRAFibozQN8X6frP5vNzU5FR7zRyihO4ctPtRIBAKy2+5oVpMVMIF5023K1p1vIWp+ht3/H0fhMNIsdi4vpxzFOaJhnLLy5IlyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from MW4P220CA0008.NAMP220.PROD.OUTLOOK.COM (2603:10b6:303:115::13)
 by SA0PR12MB4397.namprd12.prod.outlook.com (2603:10b6:806:93::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 16:56:19 +0000
Received: from CO1NAM11FT017.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:115:cafe::c6) by MW4P220CA0008.outlook.office365.com
 (2603:10b6:303:115::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18 via Frontend
 Transport; Fri, 22 Oct 2021 16:56:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT017.mail.protection.outlook.com (10.13.175.108) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4628.16 via Frontend Transport; Fri, 22 Oct 2021 16:56:18 +0000
Received: from [172.27.0.234] (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Fri, 22 Oct
 2021 16:56:09 +0000
Message-ID: <533129a4-7f4e-e7a6-407c-f15b6acbb0e2@nvidia.com>
Date: Fri, 22 Oct 2021 19:56:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, "Lorenz
 Bauer" <lmb@cloudflare.com>
CC: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
	<daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
	Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI
	<yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Brendan Jackman
	<jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer
	<joe@cilium.io>, Tariq Toukan <tariqt@nvidia.com>, Networking
	<netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk>
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <87y26nekoc.fsf@toke.dk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f7bc98e-8656-416f-159b-08d9957cde61
X-MS-TrafficTypeDiagnostic: SA0PR12MB4397:
X-Microsoft-Antispam-PRVS: <SA0PR12MB439772C321F64F784FD73919DC809@SA0PR12MB4397.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WMeWS9/0Li6T+7UGc3awXQu5cofrYd9xt9zCDV0H01+n01ijn5jQrUiimluGgeoaMu7vWbXAj+fBWpkQ/Kipku7/GkXNweXIUsZ+vvI5gzWDoWoifH2ejPHbwZ2cwu6gOgOHVHajxOpCuoThqjDnV1kqPB7zKXdHPFlHGDaYf/f+UIJ0b/KJzCtqZpzKdHrM2tYZjM9MqJFHzOGvfE23L/+BXSRQDs4H89YLJqWaPROCmL9bsRzKm2JSPRVFFDYSXQaPOw+xHFgvcz0DXj/gsvErRUids/afjqr75u8Y3bB26shlMyw7JgzZRN31PSw5xTbbQHV8B96SKdatz2x4Bk+AQRttGa6FKcuOslkriTwUzQRx5Kiv8u+xVRZBnkXsZ04Hh1tf8WlKMvKHLwpAToqmH3mqa9t1minxc0fZ0CgsFec7eZW9FQhqWTBGyzlecUUJ5ITFAPnnpogFmxJCOe8zb1XI8ePh7WI4/LwtiXOnI+f1cB1pU+5Yjf5sRzyiKcve9/rd0ZAGxM8tXZjf0C3kbC68iIBl6Jlvb7eEiRWkqd6llmIJq+0ccb+PUPWNAks0D/61HU3+nDGuSH1gVenysKawhKsOqFBXkHKjKrkDZscI6rsDZdMGd2ku7OdXXf9kEhIvWL0KD9jcgfLs+6HVZLp4o6Td02Qg3JJ7HVWl10Y2nSYbZ6pK35MdTgfJpCEMroP/5lFLGW+M15kyHlwEd2DmNP9c5qGXMrdEurg=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(46966006)(36840700001)(8676002)(82310400003)(53546011)(36756003)(36860700001)(8936002)(70206006)(4326008)(186003)(16576012)(36906005)(426003)(356005)(83380400001)(316002)(16526019)(86362001)(508600001)(2616005)(26005)(70586007)(7416002)(47076005)(2906002)(54906003)(7636003)(6666004)(31686004)(4001150100001)(31696002)(5660300002)(4744005)(336012)(110136005)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2021 16:56:18.7914
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f7bc98e-8656-416f-159b-08d9957cde61
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT017.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4397
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=hYxQe93l;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.96.81 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
> Lorenz Bauer <lmb@cloudflare.com> writes:
>=20
>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be3=
2 *tsecr)
>>
>> I'm probably missing context, Is there something in this function that
>> means you can't implement it in BPF?
>=20
> I was about to reply with some other comments but upon closer inspection
> I ended up at the same conclusion: this helper doesn't seem to be needed
> at all?

tcp_time_stamp_raw() uses ktime_get_ns(), while bpf_ktime_get_ns() uses=20
ktime_get_mono_fast_ns(). Is it fine to use ktime_get_mono_fast_ns()=20
instead of ktime_get_ns()? I'm a bit worried about this note in=20
Documentation/core-api/timekeeping.rst:

 > most drivers should never call them,
 > since the time is allowed to jump under certain conditions.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/533129a4-7f4e-e7a6-407c-f15b6acbb0e2%40nvidia.com.
