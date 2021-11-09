Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBYV6VCGAMGQEXUL7BAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD0B44A763
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Nov 2021 08:12:36 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id r7-20020a63ce47000000b002a5cadd2f25sf11722805pgi.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Nov 2021 23:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFqm8M4sv2JRfqdABlZu6ItxhSRNVBokjilE3203Acc=;
        b=fFyiQc6nm5ZTT6tXud2WCczKwSMFvFISa8Cibp2M3KXKseEfv2Vd2pBLQz7p9BnbTf
         OUtcNNq6SBXQNXJSfuYV+cDuTywitkC1b2a4gRuynIvozZ+KAyj1Y9riYy3tdegyg+om
         p5I9t8UBJg7KcttIkVqjFfv1tVl3tfea9zzqYM3kSjZ+D+VSUkUw5irsYyJGFs0Vk0hR
         8v/2JY54pkGkJF7mV2OEP5q6w4dF/PcRtyf63wzdN1zO40Vzc6L0QjxrzAP/J6qL7d++
         i82/sjy126Rds+hUKH4h7Ra4W3VTIRKMzF1elR/in9IyReoooRv+c6IZ8uYHMeShtYJX
         3Cmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFqm8M4sv2JRfqdABlZu6ItxhSRNVBokjilE3203Acc=;
        b=WtpF2bLZmrqLrFxqoSVjvcXJPzr5QFIatCiHRAZGLihpFk5B7piZDi3xiWS8aN6ShZ
         T1Wgp5lRFyxM0I5TVjEMQhl1k6Bvr2zOhGTpLTjWn24JVLUahbTWiqxZEyg/TAgLOo0i
         q67DDmtB0VQSVpdSA1Zt5mfS4lu47c8mA7bCgsdR6f8sSXROMcIEVUFLtBGp3nrWIoRM
         02HU/Xrrg5VR7NBmJFpql0NIktxvCSEoppsP8vA0tHmoDoogfuzHg9V150Zrfbdao00B
         Rrg7go+2X+6Bma1sLTgI1m8qBRKWOoT/tRKPgZ5gfbq622mZXXK7Q2GKskU+Hq3gN5JB
         tCUw==
X-Gm-Message-State: AOAM5314fqLpexBTSPgAZpmdOhrbg+KCjzpAqxEXt/FvjaTAZzHLJNbh
	x9Cav18NN2/sVzvXVei+uZI=
X-Google-Smtp-Source: ABdhPJz2D4EoyNHVjTkYlrjKVNBPb6/0o4NFTWk+8ZrrgVHxKdoTv4utwMN0gwZEUKTxGQK+dZ38xA==
X-Received: by 2002:a17:902:b110:b0:142:7621:aecb with SMTP id q16-20020a170902b11000b001427621aecbmr4929110plr.55.1636441954666;
        Mon, 08 Nov 2021 23:12:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e749:: with SMTP id p9ls4191628plf.6.gmail; Mon, 08
 Nov 2021 23:12:34 -0800 (PST)
X-Received: by 2002:a17:902:d4cf:b0:141:d36c:78f6 with SMTP id o15-20020a170902d4cf00b00141d36c78f6mr5315721plg.56.1636441954058;
        Mon, 08 Nov 2021 23:12:34 -0800 (PST)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id l11si4742pfc.4.2021.11.08.23.12.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Nov 2021 23:12:34 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=0947586288=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.1.2/8.16.1.2) with SMTP id 1A93sauS018453;
	Mon, 8 Nov 2021 23:12:27 -0800
Received: from mail.thefacebook.com ([163.114.132.120])
	by m0001303.ppops.net with ESMTP id 3c7hg3gv21-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 08 Nov 2021 23:12:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.228) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Mon, 8 Nov 2021 23:11:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OSsEAsw2vZP6Oa+xwfBbDBtWrNiAbdb3YS8692ylCdMmW4NNMebL9FZjhgtlhcMkzPFxgprLOpgPe7v825vFPE5KFz6Hb0gUukNMwzdc0whqAk2Ze3eZJtubXmsP7I8lUqfCl3OAV3ZdN5qGE+HnQ9sAECa+qEiaZztd0UsMSVgOb3oV8lOEaeqZDK/QKDpKqX4WKpXhMsoEi88QkAKx3k30pelQqqJGO6K3Lxdks0wfC016SKUF3NDlAAjDz3KF8MEw1fXiJQAmS2BKVwh5ml3NEmJ0ZJpfzck2x1JZV5kCanhznQQ67gwXh78KWODBNQPZlNoShojbAHa7tgIM7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqZQjUA+Jbx6Wamu7MtfcJHyhbJxr40DCJH8FZX+XN4=;
 b=FxxEFVvRgJ4GKyE0/GhScAy9u74FAOaC29wtzQ/arI0WZ294rKpBV1u4KMSVlw7sTeOTIwPhb955Hvjqxq99eKBmo7VzlBcizNQHvbFM34Lg0WNwGL4Ojn5qAmIHAKt/NjjcDPyTN8RoD2N/UN9B/Ez5K9RSMHJeJOnmc6QftQzAT5y5Tm/KCvlLmQ2HiEm6ISirOHIql43XMGUzk3K9u9bbXrTZOZhfkGO+HuIpHvvv0Mqn2Wyv4c60lIr6KX3HvJzAXeg2FYHAC6Emqf9D+e4fx3HIIAJYhUSdo5QYab0Tp6hWKLi3mn8La0HhWp/nllz+pCmdCaeE2C5I0jfh5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com (52.132.118.155) by
 SA1PR15MB4497.namprd15.prod.outlook.com (13.101.86.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.13; Tue, 9 Nov 2021 07:11:58 +0000
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::51ef:4b41:5aea:3f75]) by SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::51ef:4b41:5aea:3f75%6]) with mapi id 15.20.4669.016; Tue, 9 Nov 2021
 07:11:58 +0000
Message-ID: <68a63a77-f856-1690-cb60-327fc753b476@fb.com>
Date: Mon, 8 Nov 2021 23:11:53 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.0
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: Maxim Mikityanskiy <maximmi@nvidia.com>
CC: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
        Lorenz
 Bauer <lmb@cloudflare.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel
 Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin
 KaFai Lau <kafai@fb.com>,
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
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <1b9b3c40-f933-59c3-09e6-aa6c3dda438f@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: MW4PR04CA0063.namprd04.prod.outlook.com
 (2603:10b6:303:6b::8) To SN6PR1501MB2064.namprd15.prod.outlook.com
 (2603:10b6:805:d::27)
MIME-Version: 1.0
Received: from [IPV6:2620:10d:c085:21e1::100d] (2620:10d:c090:400::5:a73a) by MW4PR04CA0063.namprd04.prod.outlook.com (2603:10b6:303:6b::8) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend Transport; Tue, 9 Nov 2021 07:11:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ca94d37f-4571-4558-23a3-08d9a3503805
X-MS-TrafficTypeDiagnostic: SA1PR15MB4497:
X-Microsoft-Antispam-PRVS: <SA1PR15MB44970EE4884B4C4B46C6B0CDD3929@SA1PR15MB4497.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gA+yw8m8ZH0FK6HYcHmoCYdrKc+jortme8lg9jmjGSZ9uM/1Y8ikYXslsLcB/ye3wV++B0CLCaecgKLytfTdHA8B8UKMYkKYsXSXmNq9x1X7MKmBxrsfVPkdbWTTrZmcbn8AX3L+jzdjumBz4FtYqkuLZrJBmI3NBcneBtWhAFP2XjCyw7w0jg7gT3wx8cCEzt6ik9wyhF+PLuOy2tGbopC3Cy8VV9g/g+jMENsoeZnVJGf5G7/hGdlzxG6SSjYgPqFEye2RNT8URs96PWl9et2CuFG9XGzWrDECjKwuo5BkDJkmIqT7TSR5TaHhsBtSREAHmGp3jmuaynGsJWJxqxbDXks+dYTwaNI1CUc1mhlx6ZZMOMYHoWIEr47moFJllPlUpkRLratqXJK6gF8ctte8+Max9iO+WlgJvRyTy5FmzuE+M2fiMxYdC4a7Wf2OjaD4vzH5OEGaT6jL5x3Nf3Dj6OyqjexT2rGoBWTZUQIdryo7G87f83z7x2IUIgzC9QT76Q66U0XmsrhiTpkz+b041m1EAuuDjqjC6gUoZeBC43E1N+l1ZJTLfzInI0uksb9xYEW6R0VZLsYoqr7Mf7ujDZITKrfOofwwedcGsCmgKM1CBoz1mhklw339eq2Jp0A0v/0eC18eN45FJp9UpaiWFLlbwCQ3WP7iBMVpjWqzf3+CoWlPTNS5o/ENuaUnGAdv4a4fP36riOEJUOSsTuY4VvwbROHkuZZFHxeL31M=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR1501MB2064.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6486002)(53546011)(31696002)(186003)(5660300002)(86362001)(31686004)(6666004)(52116002)(8676002)(508600001)(83380400001)(7416002)(2616005)(2906002)(54906003)(66556008)(8936002)(66476007)(36756003)(66574015)(4326008)(316002)(66946007)(6916009)(4001150100001)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2RyejRvVDIyOXYxRnJLN2R3VFRsZWpLMlhrTysvTldMZmRTajQ2dzVmbjdJ?=
 =?utf-8?B?MDJHb2UxWmZjMzdySDh3ZEJ2Rmpab2g4N3M0V1JnZlpOM2YvSG05bU9WRVpO?=
 =?utf-8?B?YWZlT0RQRzRhczJZenNtb1BlNElBaVB4dDc2T2tId1kxREw3VjREd1Q2UU9t?=
 =?utf-8?B?akZrUWQyS2ZvZVhPdDJHTE5OcmRJRU9oVjJxRjcxSXlmLzhQbW9tUndOOWRL?=
 =?utf-8?B?QmhQVEF4NW9QVFZOamtwYldZVWQ0b1ZBcnV3QlEzSFRiQlp4VWhzb01IYWRN?=
 =?utf-8?B?TmRqOStHMkpDczZvZ2FIWTZGSVVsMm1zc1MzdFRjeGZzeWF1Qys4R2x3dktX?=
 =?utf-8?B?MG0yYjVDc0l6SkJlckVVZmx6dDdwaDUxbEd4a1dxdnhrZ3pWZjZsS1VyVDBV?=
 =?utf-8?B?VlZBeEJyZEJibDloblF0WVZaMkZ1bjRKQXlmN1FsQ05uSDRNVFdTYXRaOTZI?=
 =?utf-8?B?d1hrekE3blNyYmZoWUVzZFBhRkN4TmxLRjh2YXZFdGlXYWVNK1Q2cnNZaGMr?=
 =?utf-8?B?aUlHLzRYdnc5OVpqL2d1TTNNNnplNDdNSzVNOFB3U1BiTjhRQ1BGMHdxSVdO?=
 =?utf-8?B?OU1Ybi9RYW1XS29JZVZiRmgzY3V4MzFacFV6R0k2ZkVQQ3pDWXFMRkR3eDgx?=
 =?utf-8?B?QUJTS3RQdjVITVdHUTBoZTJzMWc2YTgwdW5CVGRyZFVOVEdVOTNiZmIvQUY1?=
 =?utf-8?B?NjVHY0lZcDFvWWVZRmdVSDVSb3ZqK3RTek1JYjB6YUI1ODZFR3NWeXFlRlNh?=
 =?utf-8?B?VW5zY0w1UStMOHo3WGZZLzhOV3RCMHFYb0VQeWluUk1FdUVoRzBRbTQ5WExy?=
 =?utf-8?B?MENza3hSY1ovVVpQWHB5eVdDU0tyM29VMFZzdzlXNnhsWlN2VWlkNFVCZFZ0?=
 =?utf-8?B?U3pKOXpUU2JocVNuY0hGYVpITVZWRUV4SEVlUVBrTWRRYlBFUWJQUmtWS1ho?=
 =?utf-8?B?VTZWc2FoQzhma0NDMndrcE1TQ1F0UkJGeGpsU0ptNk1oTmV0cVJDLzB0eFYw?=
 =?utf-8?B?MnROVG5VRVlOdDErMWk5UGRoNG9naXdCMHNmNWcyUWpmNnQ5Rm1IWDJmM0p0?=
 =?utf-8?B?RkxtbjVINWkvWGczU3dQVkNuZS9ZbU1zdC8wSUNTNHpCR1lNdTNaTW1vMWZ4?=
 =?utf-8?B?NzlRdWJUNmJZSG1CcWZNSWhnSytvQS9qUklQVFNjV2ladGFvSGRoRmgxQWxs?=
 =?utf-8?B?UEJwT0RnRGU1aEE1b0Y0bzgrZTcvKzRPb0VwYUdDeWpSM3JGR0NJSnVSRTZR?=
 =?utf-8?B?d253aVpQN21MdU5BTUxVYmQ5dC9WNDFXS2tNRWd3d0FzY1Zub2p2OVdZOHAy?=
 =?utf-8?B?dWU1VVIyeG1zdHRlU1ZJTEhMZFpsaFVKN2RDSWpWRDBocC83aitlNFBtbWlY?=
 =?utf-8?B?cm51UTdDeTB4V3VReHcwanlMOUZacmEzbldhTlRDZmFwUHpuY0d1RFR2NUlp?=
 =?utf-8?B?c2VnSmdFOHJmNGFocjVIN0k4aTFtVUxFbHVZaElNNVBBTDdoWUZSMVQxZUxF?=
 =?utf-8?B?TG5NdUFwNExiV2ppMithemR0b0xwTU1CZEI2Z0UwYVRpUXRMbUNOQ0dIYWxV?=
 =?utf-8?B?Z3NUZUltRGpkMUg2RllBakcwSDdGMFBncWR4azBEQ0d3ZmpueHRnNWlIRExF?=
 =?utf-8?B?MEtkMmpXdWFFY3pQVzRQcHA4elRxY2J0bjJydlJiTnc1OFJKdzlmWHEzM3hT?=
 =?utf-8?B?SVM3RU5lcVVRakRHWjZ1TGpwVjVYSVFYdGNSYmRXbUNCOXQ0bG1hdmtkQlYr?=
 =?utf-8?B?bkJUeW1XeVBvbVlkQU5WNmxKNk41TW8wYW9ESVdzZ2ZkeTVNOSt6a2RJcWVX?=
 =?utf-8?B?cmVJVThiTlZ1anpsRFFESk1rZW1jUk1wODlPc1hoWTRMUFEvUCtjVVd2Ris5?=
 =?utf-8?B?NlpsRHJWSVc0MTRhZk9WZk9iZk1vaGxNT0pNeitiL0xRUDVGVzdwL1VDODMy?=
 =?utf-8?B?Y3VHcWlkNks5YndrTFBmR0tZME04dnBqSWlEeFBBSVh4TVRlU1R2M1pmbVJZ?=
 =?utf-8?B?L29XTVFxTVMvc2VCNlRtR3o0NzBjc0dBVXlYZzNFeGxzc0hEaGhqSHZ0bC9T?=
 =?utf-8?B?L2RERkNXZUhubWNaZ3BvTkZMcEVEWktnL2lZeFh1VklEY0xseHFVUWNBUTVF?=
 =?utf-8?Q?GuIysJEXKEn2sGGIT+WmjuyEx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca94d37f-4571-4558-23a3-08d9a3503805
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1501MB2064.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2021 07:11:58.4116
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RQlDPucopt1rkMVwqUY3B+QrTyyF2c3BZ7qbWBL/i6bmm7LR47eKuKHTlRM03Msi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR15MB4497
X-OriginatorOrg: fb.com
X-Proofpoint-GUID: GunNOl8ia-95QZ4kV2korm80wIdZVGn7
X-Proofpoint-ORIG-GUID: GunNOl8ia-95QZ4kV2korm80wIdZVGn7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-09_02,2021-11-08_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 phishscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111090042
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=g9I3FtLj;       arc=fail
 (signature failed);       spf=pass (google.com: domain of prvs=0947586288=yhs@fb.com
 designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=0947586288=yhs@fb.com";
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



On 11/3/21 7:02 AM, Maxim Mikityanskiy wrote:
> On 2021-11-03 04:10, Yonghong Song wrote:
>>
>>
>> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
>>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>>>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>>>
>>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval,=20
>>>>>> __be32 *tsecr)
>>>>>
>>>>> I'm probably missing context, Is there something in this function tha=
t
>>>>> means you can't implement it in BPF?
>>>>
>>>> I was about to reply with some other comments but upon closer=20
>>>> inspection
>>>> I ended up at the same conclusion: this helper doesn't seem to be=20
>>>> needed
>>>> at all?
>>>
>>> After trying to put this code into BPF (replacing the underlying=20
>>> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues with=20
>>> passing the verifier.
>>>
>>> In addition to comparing ptr to end, I had to add checks that compare=
=20
>>> ptr to data_end, because the verifier can't deduce that end <=3D=20
>>> data_end. More branches will add a certain slowdown (not measured).
>>>
>>> A more serious issue is the overall program complexity. Even though=20
>>> the loop over the TCP options has an upper bound, and the pointer=20
>>> advances by at least one byte every iteration, I had to limit the=20
>>> total number of iterations artificially. The maximum number of=20
>>> iterations that makes the verifier happy is 10. With more iterations,=
=20
>>> I have the following error:
>>>
>>> BPF program is too large. Processed 1000001 insn
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 proce=
ssed 1000001 insns (limit 1000000)=20
>>> max_states_per_insn 29 total_states 35489 peak_states 596 mark_read 45
>>>
>>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the=20
>>> accumulated amount of instructions that the verifier can process in=20
>>> all branches, is that right? It doesn't look realistic that my=20
>>> program can run 1 million instructions in a single run, but it might=20
>>> be that if you take all possible flows and add up the instructions=20
>>> from these flows, it will exceed 1 million.
>>>
>>> The limitation of maximum 10 TCP options might be not enough, given=20
>>> that valid packets are permitted to include more than 10 NOPs. An=20
>>> alternative of using bpf_load_hdr_opt and calling it three times=20
>>> doesn't look good either, because it will be about three times slower=
=20
>>> than going over the options once. So maybe having a helper for that=20
>>> is better than trying to fit it into BPF?
>>>
>>> One more interesting fact is the time that it takes for the verifier=20
>>> to check my program. If it's limited to 10 iterations, it does it=20
>>> pretty fast, but if I try to increase the number to 11 iterations, it=
=20
>>> takes several minutes for the verifier to reach 1 million=20
>>> instructions and print the error then. I also tried grouping the NOPs=
=20
>>> in an inner loop to count only 10 real options, and the verifier has=20
>>> been running for a few hours without any response. Is it normal?=20
>>
>> Maxim, this may expose a verifier bug. Do you have a reproducer I can=20
>> access? I would like to debug this to see what is the root case. Thanks!
>=20
> Thanks, I appreciate your help in debugging it. The reproducer is based=
=20
> on the modified XDP program from patch 10 in this series. You'll need to=
=20
> apply at least patches 6, 7, 8 from this series to get new BPF helpers=20
> needed for the XDP program (tell me if that's a problem, I can try to=20
> remove usage of new helpers, but it will affect the program length and=20
> may produce different results in the verifier).
>=20
> See the C code of the program that passes the verifier (compiled with=20
> clang version 12.0.0-1ubuntu1) in the bottom of this email. If you=20
> increase the loop boundary from 10 to at least 11 in=20
> cookie_init_timestamp_raw(), it fails the verifier after a few minutes.=
=20

I tried to reproduce with latest llvm (llvm-project repo),
loop boundary 10 is okay and 11 exceeds the 1M complexity limit. For 10,
the number of verified instructions is 563626 (more than 0.5M) so it is
totally possible that one more iteration just blows past the limit.


> If you apply this tiny change, it fails the verifier after about 3 hours:
>=20
> --- a/samples/bpf/syncookie_kern.c
> +++ b/samples/bpf/syncookie_kern.c
> @@ -167,6 +167,7 @@ static __always_inline bool cookie_init_
>  =C2=A0=C2=A0=C2=A0=C2=A0 for (i =3D 0; i < 10; i++) {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 opcode, opsize;
>=20
> +skip_nop:
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ptr >=3D end)
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 break;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ptr + 1 > data_end)
> @@ -178,7 +179,7 @@ static __always_inline bool cookie_init_
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 break;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (opcode =3D=3D TCPOP=
T_NOP) {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ++ptr;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 conti=
nue;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto =
skip_nop;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ptr + 1 >=3D end)

I tried this as well, with latest llvm, and got the following errors
in ~30 seconds:

......
536: (79) r2 =3D *(u64 *)(r10 -96)
537: R0=3Dinv(id=3D0,umax_value=3D255,var_off=3D(0x0; 0xff))=20
R1=3Dpkt(id=3D9,off=3D499,r=3D518,umax_value=3D60,var_off=3D(0x0; 0x3c))=20
R2=3Dpkt_end(id=3D0,off=3D0,imm=3D0)=20
R3=3Dpkt(id=3D27,off=3D14,r=3D0,umin_value=3D20,umax_value=3D120,var_off=3D=
(0x0;=20
0x7c),s32_min_value=3D0,s32_max_value=3D124,u32_max_value=3D124) R4=3DinvP3=
=20
R5=3Dinv1 R6=3Dctx(id=3D0,off=3D0,imm=3D0) R7=3Dpkt(id=3D9,off=3D519,r=3D51=
8,umax_va^C
[yhs@devbig309.ftw3 ~/work/bpf-next/samples/bpf] tail -f log
550: (55) if r0 !=3D 0x4 goto pc+4
The sequence of 8193 jumps is too complex.
verification time 30631375 usec
stack depth 160
processed 330595 insns (limit 1000000) max_states_per_insn 4=20
total_states 20377 peak_states 100 mark_read 37

With llvm12, I got the similar verification error:

The sequence of 8193 jumps is too complex.
processed 330592 insns (limit 1000000) max_states_per_insn 4=20
total_states 20378 peak_states 101 mark_read 37

Could you check again with your experiment which takes 3 hours to
fail? What is the verification failure log?

>=20
> --cut--
>=20
> // SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
> /* Copyright (c) 2021, NVIDIA CORPORATION & AFFILIATES. All rights=20
> reserved. */
>=20
[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/68a63a77-f856-1690-cb60-327fc753b476%40fb.com.
