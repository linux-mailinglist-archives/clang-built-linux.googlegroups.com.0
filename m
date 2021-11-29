Return-Path: <clang-built-linux+bncBCFIV7H5YYEBBFVGSSGQMGQER7HGODA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id AF358461D13
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 18:51:19 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id r13-20020a0562140c8d00b003bde7a2b8e2sf26056280qvr.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 09:51:19 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638208278; cv=pass;
        d=google.com; s=arc-20160816;
        b=elDSiBcK6GIPiB8qJMeYR4jvXTNAWJmEAdfaVPKZ8MoOASeckp32eogccvZsed1l52
         WFEl3wXyjwxe6JPg5Y3M6CDkonTjr8dQ7mHwpyAZQxaN6pB5BLnsVj5jArPRv5hN+dTZ
         aKlrltCCy86AQU65IV1JrVTM+LZ6rPYivd1siGgZFGi87YJIfQ6tye1/CQNozz2xP30F
         tzg5LadIjN4Bp6NiVk14F8rvkOaxs7Sqd490BiyKMY6oCX/1OTdgFB0dp017z1khE0X1
         NyF5Gw0yjcihQfiY0b+cgUc4pgnO+5bUzK4qbzjaUj6VPLkud4M22Op6zMP5qQ8qmtlp
         hfkA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=EQDtP6AhAj1uJC6eu03zkRIMqmqDM0wDoxyt5n6kNyA=;
        b=WalNaCKhGwhpeSPGi8km4aIEBZOKjh0T3yLQJBPXyZf9hFwM99KNToOODto+1hVSlU
         rbbVISaCdlWLtLvyGopQGEVc89M6ekoNezcHcAbxYO6UfbhLvcaQF2khVgvqoIeD2Bgb
         1tdQh8dlwqzc7gL9Je/GMraKGV4NJvDJkTUfGurQF32C9P/evyKtFM2h4KcOSBe0ibtk
         8d87O12CLPcPu7vYFOJlA3NbxFzW448HSzw9sN5Bu27slP19moLz7f18YSCtzRpIUuOx
         nJSnHUCy2o2Q+8rE6c8syI/3AuTfqw/ebGMhyeQeBP6/4q2FKxMexpg3iv9+gKgduWUJ
         e0sw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=HYDS3S0Z;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.212.62 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EQDtP6AhAj1uJC6eu03zkRIMqmqDM0wDoxyt5n6kNyA=;
        b=EKuSUHU2eNCsDgHuSa4n6TelC6okPIqQUTmqxJ5LN8L6qAUb2YEzNZtdSWW3KHS4eB
         9Wn92O02PVy9920sRynaMuv4Zulkh1Vdb1FDP8fGMEcZlAGp44Dw4bIBHv0GL7JVYgvh
         M1+untmgkpmzdVJkKG6+UeuuwqYzWyi0c5rmiRp++gzwT5MdRlG0p/+iCLU1mEUdhyBu
         CkHjWmwJRz97tkuWKSf9jad7VNIXbQf2thcnMIQI7dMhcdeS3nJot8A5QggvGRYUElFz
         grxXzJlQh+94kxOdzof0vztqdr1Kt7WduxOXYJUV5idN9LfPsnx1M08TuIPxrW5WFFT5
         lcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EQDtP6AhAj1uJC6eu03zkRIMqmqDM0wDoxyt5n6kNyA=;
        b=x4kZirPabx/enBeq3IX5dRYDEbqk9bV1DaY1jjF16dBdxXLZeJxuBrjovpxFX+7lEX
         RoKqr1NTEmmNxie4Mcee49fWy7nSvokjrLye0qDviq/nBEUzW5/Lyyk6HZEi01lU8AHj
         iIC2411ItMO29bHwDfyf00UmGE8sQxqFXI9hPWHvfcANhd2zK/U8F5LW0xIAjd5QiZ4p
         7d5iUyG1sYFzEhH86o6EzCMdw9LFb59xqb34QJdcc+RONuIMkXdDD0gx43flzEHctw5e
         V+qI2fPtvbtltcHHadtATwmnRazefoSeOVm+7SPqB8artg6Cf6x4avpHr1jIraO0SrAC
         U9dQ==
X-Gm-Message-State: AOAM5324OoW0wKRiBYsIxnSqb9TVjXKtBwOMPBcgheL8i1XwJLlHVBjf
	bVS/I+DDnaSA8ycvhod993s=
X-Google-Smtp-Source: ABdhPJxpjf9GoqBBDD5CPkiKh6Tq9TV01RMlWx/Oj737kj/5oaG6pQpEmz6KTg9sMlsDC45uDHRD0Q==
X-Received: by 2002:a37:e206:: with SMTP id g6mr41115579qki.61.1638208278633;
        Mon, 29 Nov 2021 09:51:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f3cb:: with SMTP id f11ls6257478qvm.4.gmail; Mon, 29 Nov
 2021 09:51:18 -0800 (PST)
X-Received: by 2002:ad4:5aaa:: with SMTP id u10mr31764532qvg.90.1638208278206;
        Mon, 29 Nov 2021 09:51:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638208278; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wi/niRrPR4mUj8hLn+TVOtpkHLEA1xwhFETLHkSZaQaYi00UXNmBbFZig4oAW7R0UP
         1mNU/lJ8vjohjKauTsqoC0aZiZc7GnPJjMlgnRYylrMSKtA1iJI7RINHeNzGDOYTGRyY
         xGvOYKlecTPsij5VesMkHxg8QlLXQocKTuwcayFrI0qxSgfkFWCq13zKaqz2mQaLPLyb
         WMdF5RTYJRelQ9l2s15v5KKHl/uCO567d9XEKWKpyG3+YBbkFZ/PXDgqixR+x9dPzfRc
         an/+2+WHwuWJzUAlV5nuPxUjt1biuusbdqgjzRwQRLLGDLhBY8/O5mz73j8YlU8wukhn
         jFZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=yTwjKW+jtxi0GmHcuM9THp0gYiMI2/1kRyhg4bXnAXw=;
        b=GsNmL+XRya/Mef+TKzDyJ9AklvWqtfzYKdxagRlFuOcCFOTUvNYVqxLdtEJw/ipqPm
         6poaIszY52I6TfIGzfB7yzTOoQAVXvznrivqITSk5ywGklEDcjSMGJPxP/AUCTH+7D12
         BSIjV4AZ3i9Vd3WQhvpnbWyV1pw/oJ4+gaibna149vfu0fT/w72O6KhuALO5yGcSRPUi
         Ii80HL/tYwDl+mTdl6RvRikk7PpMFgvTPeKRec3JNih0MkprU7oXKqJv5yKKftZbWt8f
         gnHnvj5RMwuiUGnnk8t+8cHAYqYkszcHvvrDVGVzc75IUlzqQ6rWs6tX9b1YtIBswXy2
         nplg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=HYDS3S0Z;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates 40.107.212.62 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2062.outbound.protection.outlook.com. [40.107.212.62])
        by gmr-mx.google.com with ESMTPS id m14si965509qkn.1.2021.11.29.09.51.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Nov 2021 09:51:18 -0800 (PST)
Received-SPF: pass (google.com: domain of maximmi@nvidia.com designates 40.107.212.62 as permitted sender) client-ip=40.107.212.62;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PecyqwI4vvq3o073A/6vDr9aSpnSwQxpmxJe7as+5A/3nQjVpQ66IqWTmo8YnR00IXk0tgCxWsHFsrYLdr2Y8dgMxWnXcaaeS9cgVBW1ktlQpf3LTGRxj3NlFsq7nfexPRto85yFyHYgKSW0Bb8InkX18y/wNOfUEeu/SAHR9w7ECyJ8UEEfpQ2hO0HEomhrxGipCPz7Q0dwlPuPrYxgbfTAGK0kbV256+YtcCX/uTLlg2IEnki5W/EWp7YOq9d4vC8+rf62aZguvdFq1H7gIQCG41v/TcrbmF33c8lVw13KaigxbSWfqUcEPs4/cQvrm4PRM1OaaTNKbM7lcPXAjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yTwjKW+jtxi0GmHcuM9THp0gYiMI2/1kRyhg4bXnAXw=;
 b=WfuI33gz3P7swl8Lq+Cao8wy23Dsott0F6EDpYt6554BIbrwjhwt+YmkuFx3v8gIjSpiWYyfzhMVf9CQhGUoWviVKIWxyMjIwt2QKHhsBaGwVbOf0KT/EKnZ7S6UDYz2eVK+/LsrBbNbIJbQIbrUCdHn9s7tOr8SFz+mBA9akuX+W8VqItfFWlxgCP1hYF9alCuYQSbOgvMNIKABW4illobnEwXOUx/CumW0CoAHsuYqeX/ln3B7yS8lEt9xoE8toW1O87g10mouFo0TZo/fGFZqkAAAgyTFXJEKnJDu3GjW4b6+77Qg41imAExM0ZQg0KWP6Evi1jqhZKdWvmeeew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=fb.com smtp.mailfrom=nvidia.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from MW4PR03CA0205.namprd03.prod.outlook.com (2603:10b6:303:b8::30)
 by CH2PR12MB4277.namprd12.prod.outlook.com (2603:10b6:610:ae::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.20; Mon, 29 Nov
 2021 17:51:16 +0000
Received: from CO1NAM11FT031.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:b8:cafe::ba) by MW4PR03CA0205.outlook.office365.com
 (2603:10b6:303:b8::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.21 via Frontend
 Transport; Mon, 29 Nov 2021 17:51:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT031.mail.protection.outlook.com (10.13.174.118) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4734.22 via Frontend Transport; Mon, 29 Nov 2021 17:51:16 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Mon, 29 Nov
 2021 17:51:15 +0000
Received: from [172.27.15.20] (172.20.187.5) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.986.5; Mon, 29 Nov 2021
 09:51:06 -0800
Message-ID: <0a958197-67ab-8773-3611-f8156ebdb9e0@nvidia.com>
Date: Mon, 29 Nov 2021 19:51:02 +0200
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
 <cbd2e655-8113-e719-4b9d-b3987c398b04@nvidia.com>
 <ce2d9407-b141-6647-939f-0f679157fdf7@fb.com>
From: "'Maxim Mikityanskiy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <ce2d9407-b141-6647-939f-0f679157fdf7@fb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55aa4e3c-0192-449a-03b1-08d9b360d784
X-MS-TrafficTypeDiagnostic: CH2PR12MB4277:
X-Microsoft-Antispam-PRVS: <CH2PR12MB4277ED9A31C634BED92ECD84DC669@CH2PR12MB4277.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/TLAcLOZ3cwKMp24N35ilqlwkK5WJr4NuPgxMgVzpt/z3mdOS0fASkQLvlaysZcLUoDqaHuk43YLUdKmM+wyV7hdNb0QppTwMwmJbFZiU5/KtKRQjlyz6DwuPI9E6Ozfb/V4eM+R3UhHLRoOKBh/HLJ+X82qCXvc7G/uyWuwR+pDo85TAXZQLZFpvn6JnvbDRTFrC7YFRfuVT0s03Qp7opvkO7KEHxk/7ChTCO3sTTThUr3ZQjPjfzwiddcwCFcvY4joQ9NPP9mFORBEfJV15Mrg2aBsH+Va5zJGid9caCP6lfcWt/pMiPhBCnPKaIU8GRXvwmxBeLKNflmHrJbFNCwUPb8cpbF0l/0mJVK39vzwDPITZj8Hl7kXB7GDBuGEK5yeHKtGQKE2YydPywKh6JuuE5rZibUP3++pK/pGibCte7aGlA/9gF6YkXBLDlS3krf2F36CP8JGCxhQ8BQu9FiX8laSVOCU2AO47Qm6OauTX4QoDwigUq4K+FyU1jkDQBBIMJqDCZ6TpPtMcqkjlSiAAS0DOqVhN/p6KxPaEaPLRhdThcHl2q/EzvCJm2JXmTFfP3UIz1U2LYnGMNc49SJ08PdM51D7uwhOz2GYxgsNiVnlkIfIM2oroHFrF3L4ceCsdPk28ZohExObFhJwBNwMLhkDmIg7J1ESjJqLSm8mG7DndBpOdj+sHAAXHvViii+m1l7S57aB9Bpvv1WWZ9kxs59wu/wuLPJz2xOr0kqW6ERjdZ3Qam7PM1ewNyh2QsWtrcqzpdfW0aZtUOwMi03dJzz0EA7efUvqmbsu36s9zWqknRm3+OuNQdu4U6Q
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(82310400004)(70586007)(66574015)(7636003)(36860700001)(8936002)(316002)(336012)(86362001)(83380400001)(16576012)(186003)(426003)(966005)(53546011)(2906002)(31686004)(8676002)(6666004)(508600001)(47076005)(356005)(2616005)(16526019)(36756003)(26005)(4001150100001)(54906003)(5660300002)(4326008)(7416002)(6916009)(70206006)(31696002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2021 17:51:16.2541
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 55aa4e3c-0192-449a-03b1-08d9b360d784
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT031.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4277
X-Original-Sender: maximmi@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=HYDS3S0Z;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of maximmi@nvidia.com designates
 40.107.212.62 as permitted sender) smtp.mailfrom=maximmi@nvidia.com;
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

On 2021-11-26 19:07, Yonghong Song wrote:
>=20
>=20
> On 11/26/21 8:50 AM, Maxim Mikityanskiy wrote:
>> On 2021-11-26 07:43, Yonghong Song wrote:
>>>
>>>
>>> On 11/25/21 6:34 AM, Maxim Mikityanskiy wrote:
>>>> On 2021-11-09 09:11, Yonghong Song wrote:
>>>>>
>>>>>
>>>>> On 11/3/21 7:02 AM, Maxim Mikityanskiy wrote:
>>>>>> On 2021-11-03 04:10, Yonghong Song wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
>>>>>>>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>>>>>>>>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>>>>>>>>
>>>>>>>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32=20
>>>>>>>>>>> *tsval, __be32 *tsecr)
>>>>>>>>>>
>>>>>>>>>> I'm probably missing context, Is there something in this=20
>>>>>>>>>> function that
>>>>>>>>>> means you can't implement it in BPF?
>>>>>>>>>
>>>>>>>>> I was about to reply with some other comments but upon closer=20
>>>>>>>>> inspection
>>>>>>>>> I ended up at the same conclusion: this helper doesn't seem to=20
>>>>>>>>> be needed
>>>>>>>>> at all?
>>>>>>>>
>>>>>>>> After trying to put this code into BPF (replacing the underlying=
=20
>>>>>>>> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues=20
>>>>>>>> with passing the verifier.
>>>>>>>>
>>>>>>>> In addition to comparing ptr to end, I had to add checks that=20
>>>>>>>> compare ptr to data_end, because the verifier can't deduce that=20
>>>>>>>> end <=3D data_end. More branches will add a certain slowdown (not=
=20
>>>>>>>> measured).
>>>>>>>>
>>>>>>>> A more serious issue is the overall program complexity. Even=20
>>>>>>>> though the loop over the TCP options has an upper bound, and the=
=20
>>>>>>>> pointer advances by at least one byte every iteration, I had to=20
>>>>>>>> limit the total number of iterations artificially. The maximum=20
>>>>>>>> number of iterations that makes the verifier happy is 10. With=20
>>>>>>>> more iterations, I have the following error:
>>>>>>>>
>>>>>>>> BPF program is too large. Processed 1000001 insn
>>>>>>>>
>>>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr=
ocessed 1000001 insns (limit 1000000)=20
>>>>>>>> max_states_per_insn 29 total_states 35489 peak_states 596=20
>>>>>>>> mark_read 45
>>>>>>>>
>>>>>>>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the=20
>>>>>>>> accumulated amount of instructions that the verifier can process=
=20
>>>>>>>> in all branches, is that right? It doesn't look realistic that=20
>>>>>>>> my program can run 1 million instructions in a single run, but=20
>>>>>>>> it might be that if you take all possible flows and add up the=20
>>>>>>>> instructions from these flows, it will exceed 1 million.
>>>>>>>>
>>>>>>>> The limitation of maximum 10 TCP options might be not enough,=20
>>>>>>>> given that valid packets are permitted to include more than 10=20
>>>>>>>> NOPs. An alternative of using bpf_load_hdr_opt and calling it=20
>>>>>>>> three times doesn't look good either, because it will be about=20
>>>>>>>> three times slower than going over the options once. So maybe=20
>>>>>>>> having a helper for that is better than trying to fit it into BPF?
>>>>>>>>
>>>>>>>> One more interesting fact is the time that it takes for the=20
>>>>>>>> verifier to check my program. If it's limited to 10 iterations,=20
>>>>>>>> it does it pretty fast, but if I try to increase the number to=20
>>>>>>>> 11 iterations, it takes several minutes for the verifier to=20
>>>>>>>> reach 1 million instructions and print the error then. I also=20
>>>>>>>> tried grouping the NOPs in an inner loop to count only 10 real=20
>>>>>>>> options, and the verifier has been running for a few hours=20
>>>>>>>> without any response. Is it normal?=20
>>>>>>>
>>>>>>> Maxim, this may expose a verifier bug. Do you have a reproducer I=
=20
>>>>>>> can access? I would like to debug this to see what is the root=20
>>>>>>> case. Thanks!
>>>>>>
>>>>>> Thanks, I appreciate your help in debugging it. The reproducer is=20
>>>>>> based on the modified XDP program from patch 10 in this series.=20
>>>>>> You'll need to apply at least patches 6, 7, 8 from this series to=20
>>>>>> get new BPF helpers needed for the XDP program (tell me if that's=20
>>>>>> a problem, I can try to remove usage of new helpers, but it will=20
>>>>>> affect the program length and may produce different results in the=
=20
>>>>>> verifier).
>>>>>>
>>>>>> See the C code of the program that passes the verifier (compiled=20
>>>>>> with clang version 12.0.0-1ubuntu1) in the bottom of this email.=20
>>>>>> If you increase the loop boundary from 10 to at least 11 in=20
>>>>>> cookie_init_timestamp_raw(), it fails the verifier after a few=20
>>>>>> minutes.=20
>>>>>
>>>>> I tried to reproduce with latest llvm (llvm-project repo),
>>>>> loop boundary 10 is okay and 11 exceeds the 1M complexity limit.=20
>>>>> For 10,
>>>>> the number of verified instructions is 563626 (more than 0.5M) so=20
>>>>> it is
>>>>> totally possible that one more iteration just blows past the limit.
>>>>
>>>> So, does it mean that the verifying complexity grows exponentially=20
>>>> with increasing the number of loop iterations (options parsed)?
>>>
>>> Depending on verification time pruning results, it is possible=20
>>> slightly increase number of branches could result quite some (2x, 4x,=
=20
>>> etc.) of
>>> to-be-verified dynamic instructions.
>>
>> Is it at least theoretically possible to make this coefficient below=20
>> 2x? I.e. write a loop, so that adding another iteration will not=20
>> double the number of verified instructions, but will have a smaller=20
>> increase?
>>
>> If that's not possible, then it looks like BPF can't have loops bigger=
=20
>> than ~19 iterations (2^20 > 1M), and this function is not=20
>> implementable in BPF.
>=20
> This is the worst case. As I mentioned pruning plays a huge role in=20
> verification. Effective pruning can add little increase of dynamic=20
> instructions say from 19 iterations to 20 iterations. But we have
> to look at verifier log to find out whether pruning is less effective or
> something else... Based on my experience, in most cases, pruning is
> quite effective. But occasionally it is not... You can look at
> verifier.c file to roughly understand how pruning work.
>=20
> Not sure whether in this case it is due to less effective pruning or=20
> inherently we just have to go through all these dynamic instructions for=
=20
> verification.
>=20
>>
>>>>
>>>> Is it a good enough reason to keep this code as a BPF helper, rather=
=20
>>>> than trying to fit it into the BPF program?
>>>
>>> Another option is to use global function, which is verified separately
>>> from the main bpf program.
>>
>> Simply removing __always_inline didn't change anything. Do I need to=20
>> make any other changes? Will it make sense to call a global function=20
>> in a loop, i.e. will it increase chances to pass the verifier?
>=20
> global function cannot be static function. You can try
> either global function inside the loop or global function
> containing the loop. It probably more effective to put loops
> inside the global function. You have to do some experiments
> to see which one is better.

Sorry for a probably noob question, but how can I pass data_end to a=20
global function? I'm getting this error:

Validating cookie_init_timestamp_raw() func#1...
arg#4 reference type('UNKNOWN ') size cannot be determined: -22
processed 0 insns (limit 1000000) max_states_per_insn 0 total_states 0=20
peak_states 0 mark_read 0

When I removed data_end, I got another one:

; opcode =3D ptr[0];
969: (71) r8 =3D *(u8 *)(r0 +0)
  R0=3Dmem(id=3D0,ref_obj_id=3D0,off=3D20,imm=3D0)=20
R1=3Dmem(id=3D0,ref_obj_id=3D0,off=3D0,umin_value=3D4,umax_value=3D60,var_o=
ff=3D(0x0;=20
0x3f),s32_min_value=3D0,s32_max_value=3D63,u32_max_value=3D63)
  R2=3DinvP0 R3=3DinvP0 R4=3Dmem_or_null(id=3D6,ref_obj_id=3D0,off=3D0,imm=
=3D0)=20
R5=3DinvP0 R6=3Dmem_or_null(id=3D5,ref_obj_id=3D0,off=3D0,imm=3D0)=20
R7=3Dmem(id=3D0,ref_obj_id=3D0,off=3D0,imm=3D0) R10=3Dfp0 fp
-8=3D00000000 fp-16=3DinvP15
invalid access to memory, mem_size=3D20 off=3D20 size=3D1
R0 min value is outside of the allowed memory range
processed 20 insns (limit 1000000) max_states_per_insn 0 total_states 2=20
peak_states 2 mark_read 1

It looks like pointers to the context aren't supported:

https://www.spinics.net/lists/bpf/msg34907.html

 > test_global_func11 - check that CTX pointer cannot be passed

What is the standard way to pass packet data to a global function?

Thanks,
Max

>>
>>>>
>>>>>
>>>>>> If you apply this tiny change, it fails the verifier after about 3=
=20
>>>>>> hours:
>>>>>>
>>> [...]
>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0a958197-67ab-8773-3611-f8156ebdb9e0%40nvidia.com.
