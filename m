Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBEUY76FQMGQEODHE7DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F15441A88
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Nov 2021 12:14:27 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id w30-20020aa79a1e000000b0048012d2e882sf3717568pfj.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Nov 2021 04:14:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1635765266; cv=pass;
        d=google.com; s=arc-20160816;
        b=e7cJA0Xf5R7Ncrk/E2j+XXqJxtGayhkw3CnpGMvJWPpjeuV6D1zMoA5VB+mKvFUFGF
         ptRZrzHJsGFmnpq9pP6/gM75hHEUGgba87c8YJVmsEIfFU689tuqBn6bhvVjxl7vPf2r
         DxERvwEIXAvF3b5Q0gxjKKQfZMIAh0fNkN7p0zlewcm7PRuUxWAoDpuYZOud+jdleMqA
         DLGzfSMEtoHNULxXkJgcP43N3Mn/G9MUom8vMgHgE83iWkHP0Ryu3hf9Y0JEaYMx4ZC8
         tCVcJcfZzsPn4I1PQgOJG381xO6mVj0qLEZ87ndaH3pS1ALdE5ZfwPFfItEYjBEeYVye
         tzNA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=MqMzp9tjKXClwJnEAACMX/Pfhrmq0wOq/thXPk8v62k=;
        b=I57nCfQtU0mX9Z0Xmx6FZo9CwIFikSYO+P2dECvE9DH9a1inIwfTFw+DyByksLmtWG
         oYXkRN+K6F3yA0Oj7KB/7Y4dYpf+bEp4wP+UMIiccQgD8fjymwBJDnIb2D/5ZUlGaGoB
         7WHNu3DFdPVdWA4IyZsJHmawrYVc0ukjLrFLKxFT7/e8OHd2NR2x5+/DRo4Dbox3cz91
         i8Qt3vmXSnzwPbuyFOLRtxVxSBajhUNquZxWHPqHcEuq2AHIhIoe0Tswg5sxFRg68j+n
         X5b/8JU7LUj5bE4ubf4vwFm92w5JoGbuGW8HMr9Yet69wGdONViecWXD+RcJ4F42hVfH
         ab8g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Z2YnJ45s;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.94.82 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MqMzp9tjKXClwJnEAACMX/Pfhrmq0wOq/thXPk8v62k=;
        b=sqdZl+PPjYPFrr1T8bRxm4SImY18XqmnSXymqNnNIlmgiVtM+7XVublt0k9Ra90ORY
         xHw9rWXoINew2AqYsKehOop67sk2VAMZjNEFgC2epC/lKZUzLZmB0H6qaWsexcrIA56g
         mNyJIOfQdei7LHVUNxMZzhW/N5p5i1lb7uyJhUrIF8Swus2rGsv8G4Q32KBLWyBGWhGT
         Oiebq6Al6+tcSrq7N3QLFFuoh/+6Uigod1lTVjihVtYNQfB7OfCln9nK4U+X5fAV/BLs
         YwTPuZcMXF/ZHeE0KJ8ChDndmPxITBCHTWC0a6SRjbTehYFUap6fD6sZE6mWTiYASP51
         ewFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MqMzp9tjKXClwJnEAACMX/Pfhrmq0wOq/thXPk8v62k=;
        b=VwFvG0GlroT6kG1H03odt6fTpIEoBLw3wfQLWPDtqpye+SBnSzs3Sdd6Wu77mEcMlM
         VhJyOC4rjabYkDflK8TUKew+aRvkicnZdmGCsqOq0BK892dbW4VWIeLG9S1giB0ph026
         zY+J0GzDBhcDCQqfuMwBCpeVQxmuf2q6UQibpqcO6Y+XV84X6+iWGIUxDWIW/ebbejBz
         I+9k/Q0itNvTdJQQ4nTJlPVnMtDtCGVHuhDYyMeCjTDGwJ3BPMaiOFF0cmgmZrb52mtE
         h9pbuxSWAD/Pvd4xop50XXcJfRSudDgVxkY3eNdcbqy+C8HMh5BDVRizvUsQ14QE0rPf
         amwQ==
X-Gm-Message-State: AOAM530o4GmeNma3EYK5cHFFdi8vByvZraNbJ8ZNU8QC5HIcxQXh5Zs7
	naXkgDaCkxb/ziSRv7pDsgs=
X-Google-Smtp-Source: ABdhPJxquSIDm9jGMNo1TcZPD+P7D//UovOVVWuVE4x0WSlkN4LOW7vqqKiRvBIok+Y0CNm9pB92Cg==
X-Received: by 2002:a17:90a:8c0f:: with SMTP id a15mr15001683pjo.25.1635765266212;
        Mon, 01 Nov 2021 04:14:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:a03:: with SMTP id p3ls6622891pfh.0.gmail; Mon, 01
 Nov 2021 04:14:25 -0700 (PDT)
X-Received: by 2002:a63:5714:: with SMTP id l20mr21330306pgb.121.1635765265592;
        Mon, 01 Nov 2021 04:14:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635765265; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ow2HGELD8ipKvPgfsWdlA/P1GMk0cJA+Qm0hZ5IW+e0mdA2Qt84CXptvWiAoCpdEsy
         dBgjfy0PEYAikE/JrD9hcHd9iQm8kfviMrVVlV7yjhmMD+EAV1gcZ3SU0qihcu/2CLKW
         T999eCgIPsg8tZ8KOAR2Wk6DgVLz2goHqA+3z6ERMKToDjzn/YzmKz7uhQzH0oZMxlXl
         WYxLVUh6dxXoSc3Ja2cJnhKKjpkFk7NYAmht+llw5mZSQR6ng7UaJUZO9W5fg1GL5cpE
         pgWPiHM+/Scbv+evAmvBbwSh2V7Hri3SC8aifj9mNUKyNyS9Gqlpv7xm/IKRg94Kqc6Z
         KSWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=s0Tx1dqihqJwHC0wMTdZjhJuoWdfkkGu5EqUcjjz/EQ=;
        b=rJST/LJCX40Z/gpvDbAFJMxd5fcwiyHSdInD9gVkg1AXeg03aHt7mo9IItkPXa1zT3
         sWnCa3+2WvlkYZcGMsjgte5ABh68ote+85xQt0LxkHogmpZvepInlgj6IbCIs6hnc8+v
         UnwfvPlwHQiaW5w7a4jEk/hLX8ShLrjxHY99CuvyeqibLSYkEluafA+0MnrcI4YMk7cm
         ZzpjlfBhR9GHNagkk5fJO6XwqVoit1nNW4xAkK44sNPKNr0Zhh50KIXCteps2cPvIwag
         4XJFAsk1W2F3ZOrEZlJ+u3o3FZKbxc8fCiIMbIr/tZCO9UHFAXl/kKXQKSoFBFdzso5I
         I3EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Z2YnJ45s;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.94.82 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2082.outbound.protection.outlook.com. [40.107.94.82])
        by gmr-mx.google.com with ESMTPS id q20si138597pgt.1.2021.11.01.04.14.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Nov 2021 04:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.94.82 as permitted sender) client-ip=40.107.94.82;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZSeRz75N3XrNOxlvjyTd6lXaDifdxLJoGTWMP7tnP6R2bzXOuVGE4P30J0RhfMZ657ZLOf2Dy1sJ9eb7R4KK7q0ygU1YDLYpfINnVj+yEcFZvA4slGICEkFMhRCWVrjCS3yDXMf1L/RNUONMbNp5UWvW7ytbeCJfFznlv0tHTsSxmNzvavtnuODXmJb32Wa0MlhOP29oI9F5iHW1PjXq/WgCMMiZLVzd1uFZJwb5bOdDo5o9tNysLcyXDyX19UZdFByAJIi4vey20pTeBAcc41JQ3wPkGFJcLjIYNoF7pHxkYMFJs2GU+qko0JOgXsjhxKN6Orj2oIYkkD7bdvX0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0Tx1dqihqJwHC0wMTdZjhJuoWdfkkGu5EqUcjjz/EQ=;
 b=CcJWp7YdWdks+cLZmU427IxFRWYmI1L5KI/CXOe7pBjCo14WtmdZXfN63d7cUACyE6RAGKUN5CpcQQ19D3kSfkz81kw5Rkc85kYrNMR/sR8QxhOTdie98fyhREuOV92i5+3Ldz0lWG+mN+2c8QnMcZE1KjHOkwNCRmJfwch0EOgLL/odx86pNV6hXfOTN90qQ+6hWrLsRzTjPR2ifm9pH2DvKbk0gPhSeA7AzWHle6545VrfCxVHsDLGz8QfUYv88tTmG7AXLTu/AnBeZh7skppfM51ekWeT2BdSEBKvm0PPWVmvIpdLGRPDd2JMrttEhm95NQClbIZvI8iAaarTRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
Received: from MW4PR03CA0032.namprd03.prod.outlook.com (2603:10b6:303:8e::7)
 by BYAPR12MB4631.namprd12.prod.outlook.com (2603:10b6:a03:10d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Mon, 1 Nov
 2021 11:14:22 +0000
Received: from CO1NAM11FT018.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:8e:cafe::2c) by MW4PR03CA0032.outlook.office365.com
 (2603:10b6:303:8e::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Mon, 1 Nov 2021 11:14:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT018.mail.protection.outlook.com (10.13.175.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4649.14 via Frontend Transport; Mon, 1 Nov 2021 11:14:22 +0000
Received: from [172.27.15.76] (172.20.187.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Mon, 1 Nov
 2021 11:14:13 +0000
Message-ID: <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
Date: Mon, 1 Nov 2021 13:14:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, "Lorenz
 Bauer" <lmb@cloudflare.com>, Alexei Starovoitov <ast@kernel.org>
CC: Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko
	<andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu
	<songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, John Fastabend
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
 <87y26nekoc.fsf@toke.dk>
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <87y26nekoc.fsf@toke.dk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.187.6]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 654f6d49-4cb8-4267-b8c9-08d99d28c1b7
X-MS-TrafficTypeDiagnostic: BYAPR12MB4631:
X-Microsoft-Antispam-PRVS: <BYAPR12MB4631B7D679D5DCA95C1F1A93DC8A9@BYAPR12MB4631.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cgNeV9pf+gsQ5grEoTG3luxltxLqPwQ9Si3AVK6JxC1u/6zQ7HI0jv8ZIuXLNgGYZj1ixI9Tecj5C31/DthDf2mZAvzJ1/X974es2wuZ0cQX2c+9dZI6bqMYNK8NCmml1dosxJGqqi6HsSa6bPsRyAWb3aGZGIHvLPGWiVD84SaiQ1kjChtAvLuzh3yy08Fk/zRB1mP9OZUb04oHHPtXl935UY2d1S9DeLl03buAXkacxofIpazQHg3kRrzpWmGTg5ghkRjWpTOOiX55mAm46BcD+HmJkurYtVEU2tjNgEiMBQvdeQIgxchu5Fo4JoTBwpDcc6rdHjaz06PedYB4/O9RYYPeNVKqYFyiAZBb15HGoMS5OibmMBk55A1sOXPCeIG3ISFBYk93vbXXIw56mi/0+QThDKuvwsoxZnQc8w3TGWSgf+2c16Tamj+QUghkNvNpCxfPMmIMrnBAgP95qp+gqrj3u9R+/v2RY2lSFfUyF1pyMap9q/UAkxWQMbI9rGs56x2f+jKtNo4ClF2pXC9q5jpUUHNYczZDxMtP1Sq1QFdSnJN2quMO7C+LfrNsp69VtTXTQZ5KF+YHHONH0DNbWibdfcnjxjNHKyhsHfCMG8ACpM5s8lMVWUskn8CcG4DBfVBUyFcZaCSD1Pq+mnFXtvyGMZoVrL5KHYhaD9aFqecOskk0rmqleNOK4OozL5nSYTkdhVaWzoLg0gfHSZH6+EyZxQQMAX20bqF9zPA=
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(16576012)(4001150100001)(2906002)(83380400001)(316002)(70206006)(336012)(8676002)(54906003)(47076005)(70586007)(426003)(8936002)(2616005)(110136005)(36906005)(508600001)(53546011)(356005)(26005)(7416002)(4326008)(36860700001)(16526019)(7636003)(82310400003)(66574015)(31686004)(31696002)(186003)(86362001)(5660300002)(36756003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2021 11:14:22.2802
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 654f6d49-4cb8-4267-b8c9-08d99d28c1b7
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT018.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB4631
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=Z2YnJ45s;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.94.82 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

After trying to put this code into BPF (replacing the underlying=20
ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues with=20
passing the verifier.

In addition to comparing ptr to end, I had to add checks that compare=20
ptr to data_end, because the verifier can't deduce that end <=3D data_end.=
=20
More branches will add a certain slowdown (not measured).

A more serious issue is the overall program complexity. Even though the=20
loop over the TCP options has an upper bound, and the pointer advances=20
by at least one byte every iteration, I had to limit the total number of=20
iterations artificially. The maximum number of iterations that makes the=20
verifier happy is 10. With more iterations, I have the following error:

BPF program is too large. Processed 1000001 insn=20
=20
=20
                        processed 1000001 insns (limit 1000000)=20
max_states_per_insn 29 total_states 35489 peak_states 596 mark_read 45

I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the accumulated=20
amount of instructions that the verifier can process in all branches, is=20
that right? It doesn't look realistic that my program can run 1 million=20
instructions in a single run, but it might be that if you take all=20
possible flows and add up the instructions from these flows, it will=20
exceed 1 million.

The limitation of maximum 10 TCP options might be not enough, given that=20
valid packets are permitted to include more than 10 NOPs. An alternative=20
of using bpf_load_hdr_opt and calling it three times doesn't look good=20
either, because it will be about three times slower than going over the=20
options once. So maybe having a helper for that is better than trying to=20
fit it into BPF?

One more interesting fact is the time that it takes for the verifier to=20
check my program. If it's limited to 10 iterations, it does it pretty=20
fast, but if I try to increase the number to 11 iterations, it takes=20
several minutes for the verifier to reach 1 million instructions and=20
print the error then. I also tried grouping the NOPs in an inner loop to=20
count only 10 real options, and the verifier has been running for a few=20
hours without any response. Is it normal? Commit c04c0d2b968a ("bpf:=20
increase complexity limit and maximum program size") says it shouldn't=20
take more than one second in any case.

Thanks,
Max

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1901a631-25c0-158d-b37f-df6d23d8e8ab%40nvidia.com.
