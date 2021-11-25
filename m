Return-Path: <clang-built-linux+bncBCFIV7H5YYEBB2F572GAMGQEIF5UVHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C2845DC68
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Nov 2021 15:34:18 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id v14-20020a05620a0f0e00b0043355ed67d1sf6849193qkl.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Nov 2021 06:34:18 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1637850857; cv=pass;
        d=google.com; s=arc-20160816;
        b=VjGJf7PQwojqzstXRHLuFvp+o41zE3u5ecO/++5ogERMkcNmrufCd31kQzLou3uwri
         MPqrkAEUozQeo+6aCZIMNcmAMTyaEhpVgzPV5BHPJLlg5cgR/08oFYM19AsLEFUk7f3D
         9RPFmjO7gUT80aL//5CQWbeOIStKnUmT/Zs2MiwFLEqv7W5m0017Dz1DvJtmeSQPSlcn
         zGFCIHHJYlP6AJNLLBbrH7SS5dpV9UqthLPvYUxbI24C7MhRcuxwBou1IutosGGAkwZV
         UqFTwtJ5A7GSBZZ12ed9fjApmuy7nJkaS/NsibMl1Vv/yJ0NaovgNm2IrNgi9JhSem1I
         Gl/A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=qIah9MdJyx7xSYXL4egdKo3WC1xsRsoqmR3aFbYU9xY=;
        b=Eu0qWLYEZLjzLCmA6ec6zA4SFWGhsDXSw5AYGZunEZ5JyPZB+0+0DVtEHoFLVHZoOp
         UIwKPwWZWVgv0SxhohwZ6+rH/FeFJ+aZHqItuB9xo7M0C2MWgZe9RYH0zduDv27tjylb
         6dU313ei0/Swz/mWXR+mfESUCMFztltIjaOWOMMNkdhY9QaGZC7GeHnpu1Lg/AGLXfV2
         rj7FlsVt54HPpMPoWTMdsWSBIKobsqtrAhLbE3QK5iKFPFATOxacvXcUvY1HNZBsapgV
         vn0yc/4EhBcCW+3GME8j43jvDu9fc4iC872xFXwrxZrHKxNsplH7y36/pqZBRgGjbfGS
         5Hdg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="Nr/7eFA+";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.236.87 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qIah9MdJyx7xSYXL4egdKo3WC1xsRsoqmR3aFbYU9xY=;
        b=jeyyacf7PnAiesqg9mmKh0NCiq/G9K3WEyoHEqUnNYY8Pkj09bSvfcTuhRxGOfi1zu
         7ZexLlvJPU9kpIHDSV76MrUAEVEEF+MSdeH8EvrSFnbOZapYdLM6b36ZVoJjpswxt3Ne
         OLssQKeXy9MpqQPaAywLS/I5QHbes803j1vrzFUahnitBBMQZSvxXojhO/ZfvTWFZsoB
         Kbp6xVg406mEj1ZjXemnxgikq+ybfyCemNO7HtY18M+uxeGLhVDNCjN9clz3UEH95AOs
         zB6v9qWASoIeArtJRML4cF/XFK100eP1Zg0cAa7YFltBCXFGGmwOawWE7+nXv9kYdVf3
         Iqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qIah9MdJyx7xSYXL4egdKo3WC1xsRsoqmR3aFbYU9xY=;
        b=AmUZJnNBpaVPwbupdrM0Ml6M8qQhex8gBYrJC41QRxVsz8T8RHklAz3Bd62Fc5B7lD
         yMmFQMwvZ5lbrl58bvZ6SBbelv25Y+MnptodQe/mCg64vk345J0Er3gJqgTwlIe3Bm5m
         xRT8mLlXqtwzY0YyrJLa0wkfUs31KFY6kqw1HBSJSWsXLSsYCMkK5hLOXdsSkw4DnSUK
         YjRaoplJlc4BMCD3XLOSO30u9NEQWgaTtr4RP0Ou0FcVb/nzQxZES3hiKFQXxaT1lR+Q
         x9tfwPv/3xaFriaQDwAW/NzvqaqDsqFh+yEizyWhnVgme3MsZYx22o1N7fh0Ju0hsiBc
         JfKw==
X-Gm-Message-State: AOAM530d/SCyOupsIq8hGROieeio2TYujjYnbsytdg098WQ1LbQ62CMR
	D1PgO163sYCM1CQZbp64AYk=
X-Google-Smtp-Source: ABdhPJzXLZql7/g4yZEB/RjzhfnpXzsG8t1yQsx50VfeNdlEQUJj6G17ZADDBGCCYhgOvVYXDD4Adw==
X-Received: by 2002:ac8:7f13:: with SMTP id f19mr8988136qtk.423.1637850856926;
        Thu, 25 Nov 2021 06:34:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:440e:: with SMTP id v14ls1956134qkp.0.gmail; Thu,
 25 Nov 2021 06:34:16 -0800 (PST)
X-Received: by 2002:a05:620a:2796:: with SMTP id g22mr15879797qkp.341.1637850856441;
        Thu, 25 Nov 2021 06:34:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637850856; cv=pass;
        d=google.com; s=arc-20160816;
        b=f7QR31gL4cdmAjplfnqT/A0IB4DpksTxOnHQQEn3sixxymlC5KgYUTZbIUM5S5bEKH
         6np1NRmojYUONvn/RqMnltcdC1kj2Bh59tVMoiDq/PqJZff7g/v9c6pncfQ3WNGeBwCy
         mVldIpDIo4ajqpi0IMYehvU2A7QgMswqiZvqyIhctsFU/MLD6agbxBrEgMUmoTADbDg2
         adxc+RIA202AcZzevr86FxvaTfKa6zRT/CuTW/L3KApXI+MvKtIluKCHWE4gnMa5Y7z8
         fVnDoaBx+CSPZkKqjgCb6JloMp0hlSgLk2nRQpBiGQW7STqtXNHZokQtI01U4osEtLCq
         F8Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=q7E1QnrLGsJfobaR4D2SIjWe35pxhcuK+pJKWRzSvuw=;
        b=lRxBmutz5clA87kgGcjNCP7nlqSvuWa8SBIryRHbHlrpuHxGzaT/epJslyi+c0tM0Q
         ChAMy2ZTyCsDQCYhJhV4e632fflrQbbhH1WdiT5ACh4O0uG+j4A7fQhGOs1aa74M388t
         rDkGhTSDiRsip1OVlWrEhfdGw8giBYRXSmMotin0lyjB1XwNrybaKvhFKQNWyKGjkVUp
         LuSY/DTU0sxnIO2iJEptoas5WnH1AYOm/TDNDIrbYr/g/toUYGEeFP3U3QdVD2pZC/vz
         a3pJcLFKlenvvbUvG04gCAC2PBk2YYB9YedKtsxEvxbK5btvxtuRm0cjUN9Di8vhzMyy
         X41Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="Nr/7eFA+";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.236.87 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2087.outbound.protection.outlook.com. [40.107.236.87])
        by gmr-mx.google.com with ESMTPS id b8si478879qtg.5.2021.11.25.06.34.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 06:34:16 -0800 (PST)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.236.87 as permitted sender) client-ip=40.107.236.87;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mNEZ97fIRVle38av3VGMKPUlNyiDLH9rzemM51qiAN8lexwMNlY+3/HR8c1z5kBvFSJAi8SzA/DwnAMUcaTTgAZ8Ug0Set6hla3KVBYVQm6gcZ75GHeCuMRvCcT7zYT5pc0GeGHDBQFXcSM6/xs3VP4+9Sw/SkiYc27l9OZkAET14eMwQ3lm8ZvCy9yIzel1NwFFUo8LqhLLxzAWTmzzZy4kpxCQ4Ok6+GbLZNBwpLlJnYeINWQ/B0kfIEQ2pPWCtVzBs4L9Q91kPRcTN1Iq40CcCLnsCgSOhnOI8AlwuIzh58XpfJrbsJ/0GOVTsgQISNhLwM2tmK0PkL62NudwzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q7E1QnrLGsJfobaR4D2SIjWe35pxhcuK+pJKWRzSvuw=;
 b=LG/jfUdg99ZZTzWQ1ou4iOxjOYRkGgWhR3PbQdovK22KvFuxnP3iKkao/cWsHAOjxGq+bTaJvyink0pS++1sDC4Z8Bkq8PwdX/WzemiCEj7p9J8eEp3HgQhXfo4w8sZ8O5FTbjd9/jzPcoXqlN2x0+QrsDEgNMnzCHiQomB8zxFTw6+cCQHw5IpDL2fYvW9q9Me1/iNsLwXVTpZhESwSufjeCfzuDhPQyJ8EEl9fkF78lzYeaGanYIg0vOWL+NsP7SEUMyDcXkMi8h4bC6pkZErEm4hCitWEb6C3XH7GQOvZ41yithG5ZDnb8LCEY9RvLbykGV0Im4Wr+12Q7YbqTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from CO2PR04CA0202.namprd04.prod.outlook.com (2603:10b6:104:5::32)
 by DM5PR12MB2360.namprd12.prod.outlook.com (2603:10b6:4:bb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Thu, 25 Nov
 2021 14:34:14 +0000
Received: from CO1NAM11FT052.eop-nam11.prod.protection.outlook.com
 (2603:10b6:104:5:cafe::81) by CO2PR04CA0202.outlook.office365.com
 (2603:10b6:104:5::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22 via Frontend
 Transport; Thu, 25 Nov 2021 14:34:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT052.mail.protection.outlook.com (10.13.174.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4734.22 via Frontend Transport; Thu, 25 Nov 2021 14:34:14 +0000
Received: from [172.27.15.34] (172.20.187.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Thu, 25 Nov
 2021 14:34:06 +0000
Message-ID: <3e673e1a-2711-320b-f0be-2432cf4bbe9c@nvidia.com>
Date: Thu, 25 Nov 2021 16:34:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: Yonghong Song <yhs@fb.com>, =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?=
	<toke@redhat.com>, Lorenz Bauer <lmb@cloudflare.com>
CC: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
	<daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>, Song Liu <songliubraving@fb.com>, John Fastabend
	<john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Eric Dumazet
	<edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	David Ahern <dsahern@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, Brendan Jackman <jackmanb@google.com>, "Florent
 Revest" <revest@chromium.org>, Joe Stringer <joe@cilium.io>, Tariq Toukan
	<tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>, bpf
	<bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk> <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
 <103c5154-cc29-a5ab-3c30-587fc0fbeae2@fb.com>
 <1b9b3c40-f933-59c3-09e6-aa6c3dda438f@nvidia.com>
 <68a63a77-f856-1690-cb60-327fc753b476@fb.com>
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <68a63a77-f856-1690-cb60-327fc753b476@fb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.187.6]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6c2855b4-d273-4c6c-7097-08d9b020a79b
X-MS-TrafficTypeDiagnostic: DM5PR12MB2360:
X-Microsoft-Antispam-PRVS: <DM5PR12MB2360CA708F6A32EC90D8110DDC629@DM5PR12MB2360.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: esV5TYoR2qsTNqZ8Qvk8ws89YpGJ8tMP2LdAUbRMkdicpx76+OY1JycUCzYZtPIS1WKkM5OWb+6xwjF/w2UppOOw/KQ+SPzlxBVf4WQfSXLpICYfSWtiAzyUEyOI9vDPzpLk8sAowhq2Zt0c4xDc+OIlkgFzPrtrbx2W/xCUgKfoJ3r6kANuOXT4gYroQoOHR+reSwnYTGgCGOxR79CHOo6bqjDEYsFmxfO3TIGeYTOp+YJpxRKN0NrPCBc8VVYlO7f8sWiISFNthdR8r2j96Bk3RcM3UzttW3jhoffUX22QTddZN+rzDHz84Jceqky8MnTa9ANZBMM99wS2mywwQ9lqHg2py7L/uLZ5Lep5Sk5VxTf1lYd8J3YfSDGt2S1uxP5nW6tXmwfM+6FTPxKDutRi0/4vsH3AcBRFdipQPALkXvGNm+OR2PUALeaa7LC1Xihksj74R2k70fHlm9Pmqifp0WdAwgFLWTmhLPJ+5TDJjiyjmzzUfGt8eqNvZ0LvwezXTCELjoJ2TxD8AnHPjBF/UxAtvfMF8CROhdvNXCuP6Z6NNKGBc04hsM5pkJK0C0uPIj1XhqQrPAO03mbrMFcBu9/FfWU16P2QgH4QZUBdnTVIO/cl0QsnkOQXcbVil4y8csnjRg1GeytsauVgEhLk8o/eolZhSfV/tprvR+CLffyf4RMljO1/ARdhCGRS3URg44YboKx1TFZu1fSp/gW4PBo6ejULupScphYswww=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(5660300002)(2616005)(31686004)(6666004)(508600001)(336012)(2906002)(31696002)(7416002)(16576012)(8676002)(8936002)(82310400004)(36860700001)(110136005)(54906003)(66574015)(316002)(186003)(426003)(356005)(36756003)(47076005)(7636003)(70206006)(16526019)(4001150100001)(70586007)(4326008)(26005)(53546011)(86362001)(83380400001)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2021 14:34:14.5730
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c2855b4-d273-4c6c-7097-08d9b020a79b
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT052.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2360
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b="Nr/7eFA+";       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.236.87 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

On 2021-11-09 09:11, Yonghong Song wrote:
>=20
>=20
> On 11/3/21 7:02 AM, Maxim Mikityanskiy wrote:
>> On 2021-11-03 04:10, Yonghong Song wrote:
>>>
>>>
>>> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
>>>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>>>>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>>>>
>>>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval,=
=20
>>>>>>> __be32 *tsecr)
>>>>>>
>>>>>> I'm probably missing context, Is there something in this function=20
>>>>>> that
>>>>>> means you can't implement it in BPF?
>>>>>
>>>>> I was about to reply with some other comments but upon closer=20
>>>>> inspection
>>>>> I ended up at the same conclusion: this helper doesn't seem to be=20
>>>>> needed
>>>>> at all?
>>>>
>>>> After trying to put this code into BPF (replacing the underlying=20
>>>> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues with=
=20
>>>> passing the verifier.
>>>>
>>>> In addition to comparing ptr to end, I had to add checks that=20
>>>> compare ptr to data_end, because the verifier can't deduce that end=20
>>>> <=3D data_end. More branches will add a certain slowdown (not measured=
).
>>>>
>>>> A more serious issue is the overall program complexity. Even though=20
>>>> the loop over the TCP options has an upper bound, and the pointer=20
>>>> advances by at least one byte every iteration, I had to limit the=20
>>>> total number of iterations artificially. The maximum number of=20
>>>> iterations that makes the verifier happy is 10. With more=20
>>>> iterations, I have the following error:
>>>>
>>>> BPF program is too large. Processed 1000001 insn
>>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 proce=
ssed 1000001 insns (limit 1000000)=20
>>>> max_states_per_insn 29 total_states 35489 peak_states 596 mark_read 45
>>>>
>>>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the=20
>>>> accumulated amount of instructions that the verifier can process in=20
>>>> all branches, is that right? It doesn't look realistic that my=20
>>>> program can run 1 million instructions in a single run, but it might=
=20
>>>> be that if you take all possible flows and add up the instructions=20
>>>> from these flows, it will exceed 1 million.
>>>>
>>>> The limitation of maximum 10 TCP options might be not enough, given=20
>>>> that valid packets are permitted to include more than 10 NOPs. An=20
>>>> alternative of using bpf_load_hdr_opt and calling it three times=20
>>>> doesn't look good either, because it will be about three times=20
>>>> slower than going over the options once. So maybe having a helper=20
>>>> for that is better than trying to fit it into BPF?
>>>>
>>>> One more interesting fact is the time that it takes for the verifier=
=20
>>>> to check my program. If it's limited to 10 iterations, it does it=20
>>>> pretty fast, but if I try to increase the number to 11 iterations,=20
>>>> it takes several minutes for the verifier to reach 1 million=20
>>>> instructions and print the error then. I also tried grouping the=20
>>>> NOPs in an inner loop to count only 10 real options, and the=20
>>>> verifier has been running for a few hours without any response. Is=20
>>>> it normal?=20
>>>
>>> Maxim, this may expose a verifier bug. Do you have a reproducer I can=
=20
>>> access? I would like to debug this to see what is the root case. Thanks=
!
>>
>> Thanks, I appreciate your help in debugging it. The reproducer is=20
>> based on the modified XDP program from patch 10 in this series. You'll=
=20
>> need to apply at least patches 6, 7, 8 from this series to get new BPF=
=20
>> helpers needed for the XDP program (tell me if that's a problem, I can=
=20
>> try to remove usage of new helpers, but it will affect the program=20
>> length and may produce different results in the verifier).
>>
>> See the C code of the program that passes the verifier (compiled with=20
>> clang version 12.0.0-1ubuntu1) in the bottom of this email. If you=20
>> increase the loop boundary from 10 to at least 11 in=20
>> cookie_init_timestamp_raw(), it fails the verifier after a few minutes.=
=20
>=20
> I tried to reproduce with latest llvm (llvm-project repo),
> loop boundary 10 is okay and 11 exceeds the 1M complexity limit. For 10,
> the number of verified instructions is 563626 (more than 0.5M) so it is
> totally possible that one more iteration just blows past the limit.

So, does it mean that the verifying complexity grows exponentially with=20
increasing the number of loop iterations (options parsed)?

Is it a good enough reason to keep this code as a BPF helper, rather=20
than trying to fit it into the BPF program?

>=20
>> If you apply this tiny change, it fails the verifier after about 3 hours=
:
>>
>> --- a/samples/bpf/syncookie_kern.c
>> +++ b/samples/bpf/syncookie_kern.c
>> @@ -167,6 +167,7 @@ static __always_inline bool cookie_init_
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (i =3D 0; i < 10; i++) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 opcode, opsize=
;
>>
>> +skip_nop:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ptr >=3D end)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 break;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ptr + 1 > dat=
a_end)
>> @@ -178,7 +179,7 @@ static __always_inline bool cookie_init_
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 break;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (opcode =3D=3D=
 TCPOPT_NOP) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 ++ptr;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cont=
inue;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto=
 skip_nop;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ptr + 1 >=3D =
end)
>=20
> I tried this as well, with latest llvm, and got the following errors
> in ~30 seconds:
>=20
> ......
> 536: (79) r2 =3D *(u64 *)(r10 -96)
> 537: R0=3Dinv(id=3D0,umax_value=3D255,var_off=3D(0x0; 0xff))=20
> R1=3Dpkt(id=3D9,off=3D499,r=3D518,umax_value=3D60,var_off=3D(0x0; 0x3c))=
=20
> R2=3Dpkt_end(id=3D0,off=3D0,imm=3D0)=20
> R3=3Dpkt(id=3D27,off=3D14,r=3D0,umin_value=3D20,umax_value=3D120,var_off=
=3D(0x0;=20
> 0x7c),s32_min_value=3D0,s32_max_value=3D124,u32_max_value=3D124) R4=3Dinv=
P3=20
> R5=3Dinv1 R6=3Dctx(id=3D0,off=3D0,imm=3D0) R7=3Dpkt(id=3D9,off=3D519,r=3D=
518,umax_va^C
> [yhs@devbig309.ftw3 ~/work/bpf-next/samples/bpf] tail -f log
> 550: (55) if r0 !=3D 0x4 goto pc+4
> The sequence of 8193 jumps is too complex.
> verification time 30631375 usec
> stack depth 160
> processed 330595 insns (limit 1000000) max_states_per_insn 4=20
> total_states 20377 peak_states 100 mark_read 37
>=20
> With llvm12, I got the similar verification error:
>=20
> The sequence of 8193 jumps is too complex.
> processed 330592 insns (limit 1000000) max_states_per_insn 4=20
> total_states 20378 peak_states 101 mark_read 37
>=20
> Could you check again with your experiment which takes 3 hours to
> fail? What is the verification failure log?

The log is similar:

...
; if (opsize =3D=3D TCPOLEN_WINDOW) {
460: (55) if r8 !=3D 0x3 goto pc+31
=20
R0_w=3Dpkt(id=3D28132,off=3D4037,r=3D0,umin_value=3D20,umax_value=3D2610,va=
r_off=3D(0x0;=20
0x3ffff),s32_min_value=3D0,s32_max_value=3D262143,u32_max_value=3D262143)=
=20
R1=3Dinv0=20
R2=3Dpkt(id=3D27,off=3D14,r=3D0,umin_value=3D20,umax_value=3D120,var_off=3D=
(0x0;=20
0x7c),s32_min_value=3D0,s32_max_value=3D124,u32_max_value=3D124) R3_w=3Dinv=
3=20
R4_w=3Dinv9 R5=3Dinv0 R6=3Dctx(id=3D0,off=3D0,imm=3D0)=20
R7_w=3Dpkt(id=3D44,off=3D4047,r=3D4039,umin_value=3D18,umax_value=3D2355,va=
r_off=3D(0x0;=20
0x1ffff),s32_min_value=3D0,s32_max_value=3D131071,u32_max_value=3D131071)=
=20
R8_w=3DinvP3 R9=3Dinv0 R10=3Dfp0 fp-16=3D????mmmm fp-24=3D00000000 fp-64=3D=
????mmmm=20
fp-72=3Dmmmmmmmm fp-80=3Dmmmmmmmm fp-88=3Dpkt fp-96=3Dpkt_end fp-104=3Dpkt=
=20
fp-112=3Dpkt fp-120=3Dinv20 fp-128=3Dmmmmmmmm fp-136_w=3Dinv14 fp-144=3Dpkt
; if (ptr + TCPOLEN_WINDOW > data_end)
461: (bf) r3 =3D r7
462: (07) r3 +=3D -7
; if (ptr + TCPOLEN_WINDOW > data_end)
463: (79) r8 =3D *(u64 *)(r10 -96)
464: (2d) if r3 > r8 goto pc+56
The sequence of 8193 jumps is too complex.
processed 414429 insns (limit 1000000) max_states_per_insn 4=20
total_states 8097 peak_states 97 mark_read 49

libbpf: -- END LOG --
libbpf: failed to load program 'syncookie_xdp'
libbpf: failed to load object '.../samples/bpf/syncookie_kern.o'
Error: bpf_prog_load: Unknown error 4007

real    189m49.659s
user    0m0.012s
sys     189m26.322s

Ubuntu clang version 12.0.0-1ubuntu1

I wonder why it takes only 30 seconds for you. As I understand, the=20
expectation is less than 1 second anyway, but the difference between 30=20
seconds and 3 hours is huge. Maybe some kernel config options matter=20
(KASAN?)

Is it expected that increasing the loop length linearly increases the=20
verifying complexity exponentially? Is there any mitigation?

Thanks,
Max

>>
>> --cut--
>>
>> // SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
>> /* Copyright (c) 2021, NVIDIA CORPORATION & AFFILIATES. All rights=20
>> reserved. */
>>
> [...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3e673e1a-2711-320b-f0be-2432cf4bbe9c%40nvidia.com.
