Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBJ7IQGGQMGQEXUXNCVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1D245E783
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Nov 2021 06:44:08 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id w13-20020a05620a0e8d00b0045fad6245e8sf8954071qkm.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Nov 2021 21:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WTbuILRGAFiqKBRKlnlv8BkpxK1QKi8Z9qu7IDcbmb8=;
        b=m53g08izFT9FgXvE1bTC6VFqKKP8mEwlJs+2YkpHxO1+y/pel6D5TObOOrXXyyagcN
         DJPiyzNagXuesfWjwk20MRaVQdMu5Nd1UuR19Z9G2/Z8KDGhQpljGR/EAmXL6xVp7ycQ
         o1rb/zcZI4NsY3EbysPBoP+ncQ6Yyy5oH38mzTSQGUPvD+vq61qP7hgyAk/ZDLmn/Ucg
         bWfrlXgauX+9EyyAWyNJ6ESasWMTY0uUWaMddQ9++xC2mlG6CK9eH2lbNuqhNE+buQ33
         C6oxJH03v/dM+rzNchOIcu2H7hbkVOi0JBkPMG9EFcEUYsALv84Vb2hMD8lzs1pSdvOy
         OMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WTbuILRGAFiqKBRKlnlv8BkpxK1QKi8Z9qu7IDcbmb8=;
        b=IpjKYyTWcexqLmFMdE5AGH3wYht3T/eWpIuJULXV9gzH10SKRlTYWBo7HJX1iY6U33
         JtKbKf6r/4HWClSsY5r0MuobenHBFgEri/PrvmNreavJG3EjpQCuaKAjxoP3bjMXGHJE
         B6zUv4nP16I3z5UjQu5YyredGQsDGnY6m6fRCgEqrr2ewgbxRvv4XRuNo6VHoaeEoF18
         LH02O7/gmNw87Bqh3mJptoNmAVWqlKd3qebBpm/GxGO7oRf1qm9WPcXrEn5Tx7Vl/EDN
         6CcsGG4WbsP99NMT0gThEdM5s98N9bxKI/qcz/Kr2kiiTqCC97LvulMM5wAt9LLWgj/l
         Gw7g==
X-Gm-Message-State: AOAM531qz5CN+Z+MQ5L68vuzEc2dxPPfkOpyqRcw0mAc7YlOf4PvnbeB
	hwn3R9blFBoLMJeUwAB93S4=
X-Google-Smtp-Source: ABdhPJwsHA7pYvvNuwKD/IEfhS4Cb58VMl6BUliSnRwYVUkvosEGJpsA/Q/cPs60lKR79FlkWNECZA==
X-Received: by 2002:a05:6214:27c6:: with SMTP id ge6mr10987392qvb.103.1637905447372;
        Thu, 25 Nov 2021 21:44:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:24b:: with SMTP id o11ls2821232qtg.0.gmail; Thu, 25 Nov
 2021 21:44:07 -0800 (PST)
X-Received: by 2002:ac8:6112:: with SMTP id a18mr22339496qtm.401.1637905446923;
        Thu, 25 Nov 2021 21:44:06 -0800 (PST)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id u2si915794qkp.6.2021.11.25.21.44.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 21:44:06 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=096484b02e=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AQ1GSPm025029;
	Thu, 25 Nov 2021 21:44:02 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 3cjnru0tgu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 25 Nov 2021 21:44:01 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 25 Nov 2021 21:44:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fPGHMcXuQnoWHqHuuQTE6aZBNWFDKNza5tlKuGmvonqwfxY9ZwlqzSQQtQCCNosms1DuetHPEsKYjoWC+EXXrwS7+d6iDoWRjPwkCXJeJmWQm3sLhajHZ23HQHxD6Jp310cRT79GMTv5V5kNJWMekGbyygtglklSpJcinVndFaffdMeutJZInILl3+JIkAhhrhg+yH/7HKXbG61CtSsBh2AfLrU5DOtLWPpPvbMojy6X4J9erO8KV4PthuBue8B5sH8k+EI+TcrILsQbeeNXn9JTw/+8to3US8WsUvbN/8lTsDbqmXMtQb1uGO6SANTJ6/oGpot8GnzrwQluU3m1NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+dRCzsljmfRDH/14+zraS146B2inNjkvPecLf/DAVNg=;
 b=IzHa9PsevMVbXia2QnRMBgWudTDw8w7TF2V6ZdMcJgTixrN92B6Oizt5WZ2pPBgiX/LSekM+M/vG2ui/yC8CPXxSgqi1l1ZoOT5kUhvaF2mBDlZ9LwTlKwrXn+7WhQHNV3Ox4m581HnvPGBk3HZAbqJKQfKVny3xeFikMGOh5jRXcnJX/Axw6tztXALSEymBLye9X6JBkQGqq4F8GrBUyojN2KQJ4qU/Zv9WJXgKsh7f4CGrxQXmfvCusvrEHQUsHeHVizthbvUYdqpXSUGp7eujPkWw4Cp3iSuQRP8gX9AseIbSThjWp5r3Ue9n+IfgC4ocbHR2O9wEOUOqjhDK4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com (2603:10b6:805:d::27)
 by SN6PR1501MB4093.namprd15.prod.outlook.com (2603:10b6:805:63::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22; Fri, 26 Nov
 2021 05:43:58 +0000
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::a91b:fba1:b79c:812c]) by SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::a91b:fba1:b79c:812c%5]) with mapi id 15.20.4713.027; Fri, 26 Nov 2021
 05:43:58 +0000
Message-ID: <f08fa9aa-8b0d-8217-1823-2830b2b2587c@fb.com>
Date: Thu, 25 Nov 2021 21:43:54 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.2
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: Maxim Mikityanskiy <maximmi@nvidia.com>,
        =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
        Lorenz Bauer
	<lmb@cloudflare.com>
CC: Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann
	<daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>,
        Song Liu <songliubraving@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Eric Dumazet
	<edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub
 Kicinski <kuba@kernel.org>,
        Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
        David Ahern <dsahern@kernel.org>,
        Jesper Dangaard Brouer <hawk@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers
	<ndesaulniers@google.com>,
        Brendan Jackman <jackmanb@google.com>,
        Florent
 Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>,
        Tariq Toukan
	<tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>,
        bpf
	<bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk> <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
 <103c5154-cc29-a5ab-3c30-587fc0fbeae2@fb.com>
 <1b9b3c40-f933-59c3-09e6-aa6c3dda438f@nvidia.com>
 <68a63a77-f856-1690-cb60-327fc753b476@fb.com>
 <3e673e1a-2711-320b-f0be-2432cf4bbe9c@nvidia.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <3e673e1a-2711-320b-f0be-2432cf4bbe9c@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: MWHPR22CA0032.namprd22.prod.outlook.com
 (2603:10b6:300:69::18) To SN6PR1501MB2064.namprd15.prod.outlook.com
 (2603:10b6:805:d::27)
MIME-Version: 1.0
Received: from [IPV6:2620:10d:c085:21e8::1060] (2620:10d:c090:400::5:b5af) by MWHPR22CA0032.namprd22.prod.outlook.com (2603:10b6:300:69::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.20 via Frontend Transport; Fri, 26 Nov 2021 05:43:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d686657f-e9ba-45f4-2abf-08d9b09fbe27
X-MS-TrafficTypeDiagnostic: SN6PR1501MB4093:
X-Microsoft-Antispam-PRVS: <SN6PR1501MB40932340E51D5FD3B2CAB030D3639@SN6PR1501MB4093.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jfJ59cd+LPQ6b0hfvh+Hzn5dn1Ep/AxBOYJeeYqhvMgwkkYWWM23IHjQWMPc48S1TZfFoPUOYnE8NXHrMK3LFvvGEuKK+9XyNi58Ezg77tJe0j/nXdxNhhVSqN4clTC9mjMEndzwlpP4k+R9WituCjHlE/qO4QJjm/VvxPyToY1hMvWh0g3/vmbD8pNLnARIExQbnR2dIzTSNgn7k2Pptn6aLX5mkKKi89Y8KZIhFIQ/gM6dQq4QhebMHScs/xfFofZfEeZnMXb1RYCX892pYc09vU4ocpJfby0N66/OODLdREsETzZ1fuZX3Gt1JC+2aETf1ryDTnC8+rj69tujf33RGZ1l3g2Tr2zMsshOm12jdR4dsT/CTPia6bAY4HrsFF85+MmbY513e5qOjnpvJUKpINKTH4fZAJkJmiDhe6cHDOEDfyMH27mp6SkMLGRxXcVfJhTbNpf+EOH9+BDBsl7uSgsXrsuAh5hiN3rR8VLzRAV/G0ebm10WzuLW9yIIo/QPa+Lv7yaPW2lNzmK8h/GkElknJXfvObWd2awpi+9Oz5VmPrQQ1LI/Qzn0PjDZyKRaAfMRXQnpHRubhG+iDTdDgLbIpToYEw1JzFm8wtMLruQGB2s9DPoT9yIj6IOppa+ylHI/fppoYWsZgHNhiammRAHqyAACJxqh2a8rCCsTJZw+KmIhzLRUm43vu9P3369huKt1NvKrW+/l06DH97UbURZ8XlLfdzLOALEqT1PiLCO60TLMeGfkK/GTv+zJ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR1501MB2064.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(31686004)(186003)(7416002)(508600001)(4001150100001)(86362001)(36756003)(8676002)(66574015)(4326008)(8936002)(31696002)(66476007)(110136005)(52116002)(53546011)(5660300002)(66556008)(66946007)(83380400001)(6486002)(316002)(38100700002)(2906002)(2616005)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1ZGYkhkZWhmS1VmLzhzTGN0aEZIczdmaC9mS2R0QXlnb3BkSE5mK0UzRHky?=
 =?utf-8?B?VnJMR1ppR29FOFBpVG43UnNNdTF2WWtxVk8rdDdHNnNQQmlpRW5qbmtKRlMw?=
 =?utf-8?B?L2VaaU5FYzFOWUduS1pDVDN6MkdZeGNqVngvNEw0dStseXZML0svKzV6YlJY?=
 =?utf-8?B?enpVZVVUVU9EZnlrNmNZTU5EUFlFTjYwV1g5bFFJNnpOdThRdVhVcVByL0hL?=
 =?utf-8?B?RDJjWmdNVk1PcGRuYjN0aFVCY0xsRmRBbm1VbGNuWTJYOW0yRlJSN3JhSGlr?=
 =?utf-8?B?NXJEQmg3QkI0ekdDaERSYldGTTJ5dlVqc0tzcDhhakRUMXEzalNXMGFOMFhC?=
 =?utf-8?B?Q1FzR3NKaUJWdEhCMGdaN1hvclFtVk1NZFNBSklnRitiVi9MTjlBVndrajVw?=
 =?utf-8?B?Y1E0UUJ5SHI2YTFFS25sKzNHOHZLOXR2a3ZMWTNvRHNoYzkxUmYvakV1b3VT?=
 =?utf-8?B?OGZYOWNhdXVNSDJEcXJtbU5zdmdENnZUZjVSMnpaSjUzRnU5YXk1TGhKRVVt?=
 =?utf-8?B?WDQ3RUNaRFA0aURpRG4zV1J5MUhSd2t3eW9PVmYwWWNYeTBZQUFoM3Q5ZndC?=
 =?utf-8?B?SzgwYzNJQmxPK0twSWZsMWpWaEI0U0ZLTW5HQTJzZGdreTh3VlQ4TlRidGhm?=
 =?utf-8?B?eEp0V29jWUxKcnRHLzZ2S29DcS9ZZHZzQ3ZWSE5zVkpkdXAzbGRBbTY0bzVt?=
 =?utf-8?B?UzNiNUV2T21iTGY0WEFsWWJjS1N3RkUwYjB1bVdmYnEybDNuVGl5aU9nTDBZ?=
 =?utf-8?B?eTM2eVVZR3k0T3UwNE1SSzVYVS9DWGZLN1lJNTF2cFNobXVZRi9JWEdjY0k0?=
 =?utf-8?B?OUVvR3hPN1gyeDB2TnExWkx6bHhrQmFkanNPcG9RazB4b0pkZHdHcGxKblBP?=
 =?utf-8?B?Z0U2ZGd1SUhGSUhwWHpXc2dDTDY2eHRRUk0rYU1WSjFUZWIwOXJ6ejBtb0M2?=
 =?utf-8?B?R0tEMnhtVHBIeDllOSt1OHMzdDBLYjFtUEZBU1BnQ1FBUElEcEJwUlloTVNs?=
 =?utf-8?B?YXZzS1pJQURSK1dpRGZRSFE1SHBKZVhHYjV6Nm54cnk5UURQU3l0THJMdVZL?=
 =?utf-8?B?TldCZGZNMVREZVpOVUVxK29wdGdxZzNVNnVzNHNOMlZZczk1UXo2TjIxUEdp?=
 =?utf-8?B?QWpuTzVhck1oTG1oK3Jrd3QwOExVNmpob2ZCNE9UK0ZMdTdPYlkrT0RqL0pl?=
 =?utf-8?B?bk41T010MlZYSVMxNXZHK0FaTlFnSEhFdzJuOUw5bVdSb2VXMWZjdEV3WndE?=
 =?utf-8?B?OFJSQlp2MlJXdnBEbS9hVVQxdzJRNFNTWUR5RjZvR0laSWh0cUc1Mkh5TUlH?=
 =?utf-8?B?WHkrbmRxQXlYemNRSmV2ZHVYU3M4eE1YZUJEODVwa3puK0YxRmxyVmV4dEpY?=
 =?utf-8?B?dEh5RUVqc3RYR1kvM1p2UDdob1JQWXYxUDFLbG9BbmN4dnhvb0wvMEIzMTRl?=
 =?utf-8?B?aTVyTDFOWnI1VmJYS1NWeG1OcVRmaWNOWGMzTDFLSGNDRUFVcVc0akRseFJl?=
 =?utf-8?B?bEpRT29vbStJT0lXWlppVk1HSzM4ejJURy9haHYweTdLalVjUHRVSEFJOTBQ?=
 =?utf-8?B?ZW9obExTcGlyZHA3NVNzRlRVVUFjMWdiU0czY1pqZDlaMzIwN0cvTW41eUts?=
 =?utf-8?B?UWpUbUxRZkJ0ejR0ZmNMdGUxSmxOWUlsZnRyODBqMmVDVGozVnRmditlKytS?=
 =?utf-8?B?cmlOTnE4SDNKM2R6bmxwLzVkM1VEMXI0cHlkeFZWUnkzNGV1a3Nyci92aEdN?=
 =?utf-8?B?WExDb01YRzBQc1ZwZ29ZRWdDUGY4bnNGcEZjY1FqakFGeklKQW9NQ0tkVHFN?=
 =?utf-8?B?d2hJdEJEMXgvRVprV0hwcW1EamVmOXRIbTRHTXQ0OWNYNWdWSlhDZGxoR1ov?=
 =?utf-8?B?QXM1Z2lLTTJUd3VxYjFjMGdsQXpRb0Jrd1Q5UkNXM0k4V1hBZEJ5dlBzVGxG?=
 =?utf-8?B?elBtU3AwOXErTkFzUGdPRys1ZVI0REFCUE5nVVNhUzBpbHdueXZ2cFc0VG9K?=
 =?utf-8?B?b1lXVWthOStCTTZSVDhjMWt6MTE0YjhyL2E0ZEhsUnlIZktrdnRjOXBob0hZ?=
 =?utf-8?B?OWlrMjRNbkU2OWJmRkRsK0x3WThiNWhuTXdjTC9USXl4TGR5eW90K3BsK2li?=
 =?utf-8?B?YmwzMVBuL0FzRkJjNVA3UXZvUlhCems0bXYyalBDWWZMdVlrOXdzTThaeEpp?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d686657f-e9ba-45f4-2abf-08d9b09fbe27
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1501MB2064.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2021 05:43:58.7591
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6pQG2xDRmaS0JzztaKGfma2TCQQY/qiunkALSm06swb5YF1taHCjZMfrudrj11Uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR1501MB4093
X-OriginatorOrg: fb.com
X-Proofpoint-ORIG-GUID: g7CDktSOQtNGFox7rlKNHtzNdhapJA5c
X-Proofpoint-GUID: g7CDktSOQtNGFox7rlKNHtzNdhapJA5c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-26_01,2021-11-25_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 phishscore=0
 clxscore=1011 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 spamscore=0 mlxlogscore=999 impostorscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2110150000 definitions=main-2111260031
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=efmVJOEy;       arc=fail
 (signature failed);       spf=pass (google.com: domain of prvs=096484b02e=yhs@fb.com
 designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=096484b02e=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
X-Original-From: Yonghong Song <yhs@fb.com>
Reply-To: Yonghong Song <yhs@fb.com>
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



On 11/25/21 6:34 AM, Maxim Mikityanskiy wrote:
> On 2021-11-09 09:11, Yonghong Song wrote:
>>
>>
>> On 11/3/21 7:02 AM, Maxim Mikityanskiy wrote:
>>> On 2021-11-03 04:10, Yonghong Song wrote:
>>>>
>>>>
>>>> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
>>>>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>>>>>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>>>>>
>>>>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32=20
>>>>>>>> *tsval, __be32 *tsecr)
>>>>>>>
>>>>>>> I'm probably missing context, Is there something in this function=
=20
>>>>>>> that
>>>>>>> means you can't implement it in BPF?
>>>>>>
>>>>>> I was about to reply with some other comments but upon closer=20
>>>>>> inspection
>>>>>> I ended up at the same conclusion: this helper doesn't seem to be=20
>>>>>> needed
>>>>>> at all?
>>>>>
>>>>> After trying to put this code into BPF (replacing the underlying=20
>>>>> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues=20
>>>>> with passing the verifier.
>>>>>
>>>>> In addition to comparing ptr to end, I had to add checks that=20
>>>>> compare ptr to data_end, because the verifier can't deduce that end=
=20
>>>>> <=3D data_end. More branches will add a certain slowdown (not measure=
d).
>>>>>
>>>>> A more serious issue is the overall program complexity. Even though=
=20
>>>>> the loop over the TCP options has an upper bound, and the pointer=20
>>>>> advances by at least one byte every iteration, I had to limit the=20
>>>>> total number of iterations artificially. The maximum number of=20
>>>>> iterations that makes the verifier happy is 10. With more=20
>>>>> iterations, I have the following error:
>>>>>
>>>>> BPF program is too large. Processed 1000001 insn
>>>>>
>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 proce=
ssed 1000001 insns (limit 1000000)=20
>>>>> max_states_per_insn 29 total_states 35489 peak_states 596 mark_read 4=
5
>>>>>
>>>>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the=20
>>>>> accumulated amount of instructions that the verifier can process in=
=20
>>>>> all branches, is that right? It doesn't look realistic that my=20
>>>>> program can run 1 million instructions in a single run, but it=20
>>>>> might be that if you take all possible flows and add up the=20
>>>>> instructions from these flows, it will exceed 1 million.
>>>>>
>>>>> The limitation of maximum 10 TCP options might be not enough, given=
=20
>>>>> that valid packets are permitted to include more than 10 NOPs. An=20
>>>>> alternative of using bpf_load_hdr_opt and calling it three times=20
>>>>> doesn't look good either, because it will be about three times=20
>>>>> slower than going over the options once. So maybe having a helper=20
>>>>> for that is better than trying to fit it into BPF?
>>>>>
>>>>> One more interesting fact is the time that it takes for the=20
>>>>> verifier to check my program. If it's limited to 10 iterations, it=20
>>>>> does it pretty fast, but if I try to increase the number to 11=20
>>>>> iterations, it takes several minutes for the verifier to reach 1=20
>>>>> million instructions and print the error then. I also tried=20
>>>>> grouping the NOPs in an inner loop to count only 10 real options,=20
>>>>> and the verifier has been running for a few hours without any=20
>>>>> response. Is it normal?=20
>>>>
>>>> Maxim, this may expose a verifier bug. Do you have a reproducer I=20
>>>> can access? I would like to debug this to see what is the root case.=
=20
>>>> Thanks!
>>>
>>> Thanks, I appreciate your help in debugging it. The reproducer is=20
>>> based on the modified XDP program from patch 10 in this series.=20
>>> You'll need to apply at least patches 6, 7, 8 from this series to get=
=20
>>> new BPF helpers needed for the XDP program (tell me if that's a=20
>>> problem, I can try to remove usage of new helpers, but it will affect=
=20
>>> the program length and may produce different results in the verifier).
>>>
>>> See the C code of the program that passes the verifier (compiled with=
=20
>>> clang version 12.0.0-1ubuntu1) in the bottom of this email. If you=20
>>> increase the loop boundary from 10 to at least 11 in=20
>>> cookie_init_timestamp_raw(), it fails the verifier after a few minutes.=
=20
>>
>> I tried to reproduce with latest llvm (llvm-project repo),
>> loop boundary 10 is okay and 11 exceeds the 1M complexity limit. For 10,
>> the number of verified instructions is 563626 (more than 0.5M) so it is
>> totally possible that one more iteration just blows past the limit.
>=20
> So, does it mean that the verifying complexity grows exponentially with=
=20
> increasing the number of loop iterations (options parsed)?

Depending on verification time pruning results, it is possible slightly=20
increase number of branches could result quite some (2x, 4x, etc.) of
to-be-verified dynamic instructions.

>=20
> Is it a good enough reason to keep this code as a BPF helper, rather=20
> than trying to fit it into the BPF program?

Another option is to use global function, which is verified separately
from the main bpf program.

>=20
>>
>>> If you apply this tiny change, it fails the verifier after about 3=20
>>> hours:
>>>
[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f08fa9aa-8b0d-8217-1823-2830b2b2587c%40fb.com.
