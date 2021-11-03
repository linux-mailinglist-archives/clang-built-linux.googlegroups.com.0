Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBM67Q6GAMGQEULSDTWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D8431443B39
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Nov 2021 03:11:00 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id gs5-20020a056214226500b00382f5609124sf1053049qvb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Nov 2021 19:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tsTTASoVGCQKPZhUcTaxQ9OTtYfWpq+oE2u99HbMAB4=;
        b=naN9D+gFEEzafizNJIlThChbvtts2QSF48WzqXiROAjVG3FvKtah7sO72uia4t9YVL
         6PzzWnXqCL5bB7C4tsF7Omlu272f+sQILv9qObk0kO1jLVzXWsqCYpiClnSDDJJAcTTw
         2jP7M5ukNB7yJq1AYRH9Yao7bZoZLbizcS+gLSVccWmd0B2jTeMlRManywZkUm4WemZs
         D6Ri34zxoSzL0Ngp7gpkC7WjQU2hICmkBf1IGGhl6D/gQ4a5DrsK+9e9Xfo9zUXAHwqV
         qZAbqYL4q4Gg6ixjzaGTVR53eYFQUKbaufEFxR/2EWZ6b+8dTT3KxUiCWBRmKGaXHAQ4
         mDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tsTTASoVGCQKPZhUcTaxQ9OTtYfWpq+oE2u99HbMAB4=;
        b=thijUGg7NWounD3tTfvVEPS8TI30ZF2n4k5pC0qUg6AAAK34qp8FwL066OAV0iOaAf
         2kyWzDBX3IIhQ2kG7k0Kih5KfiqLTguTEwzApsvcTYc3B8DxMEh69IMdmzHRc2Mm+ot6
         61UwugSJqjgvcdWOixnnC6DBxy4UxQov8Za1lMnq/JKim/2EtcQFMSf+iZ8aMZt4tHSt
         /j4mI1DN0SKhBXNPSzUs5YO8YPGi/v9S2HHnFY/Zr0mFfBdAthRDFkXs1PMVLUPOmfeF
         607ApkZzAd6wFh1pZI9XvuaBnxOMEEMUPcdb+faFGsCEAKAp5TAygFUJDft20yuclcGd
         kXGA==
X-Gm-Message-State: AOAM533a0EYxNPX+Ibuc+BQE1AODbaRCbOyJHEVlkSOHKN2WVoTL5sQm
	v20dhHNWx2QBnIwxtUy0tQE=
X-Google-Smtp-Source: ABdhPJwHHKT6+KA9hQvZFLfzQnsQ/jKsm03XIQQLpQ5PxYsapyHbIpLz3N82Kbhnfa6G/aRylg7BAQ==
X-Received: by 2002:a05:620a:4088:: with SMTP id f8mr15649128qko.418.1635905459575;
        Tue, 02 Nov 2021 19:10:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:454e:: with SMTP id z14ls487574qtn.3.gmail; Tue, 02 Nov
 2021 19:10:59 -0700 (PDT)
X-Received: by 2002:a05:622a:1788:: with SMTP id s8mr13610267qtk.388.1635905459100;
        Tue, 02 Nov 2021 19:10:59 -0700 (PDT)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id i2si79132qtg.3.2021.11.02.19.10.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Nov 2021 19:10:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=0941585f4b=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1A2LaSTo016267;
	Tue, 2 Nov 2021 19:10:53 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 3c3dd31gat-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 02 Nov 2021 19:10:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Tue, 2 Nov 2021 19:10:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijLYDV6PuGz/eTbbepo3hX2T8IEjgmnLnPLh7OXfj0vh6QvmPfptqFP2fmeIN4LDi+5fgTNi9BqrgeZBdss+m8RD6Zm8RIktoF8QAmiSnKsYdGKGdgMch5f4bGWM2VwmjpGiDbX+0O27Gs+fEspcaRoiGJ0gvcL01T4B/Tm2JW+MJs5aqhkF2UooTSDHV7tYOGbAfTW1HR8ABBqvysWbybhYbiodJnk2Z+NXqqaKR2QF1nmrusnG/f5y4sZaiJd/20fee6P+rbApeFCnMYL9NFDaMXdEzWpWlFAE+1vNjtjGmq071aXtZUpt3bc7QKB5jAb+poZ87Mq7H6ZLJXdPgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V6FvNl4gy8J2NIR5dn4rOvsCvJByPwGD4iyketNiqko=;
 b=mOwQPgCysyLgakAV1qb6tcLyo72+lFtAGQiNaS0x3l5hrlnySTvN60/Ov7N4md+CPjoFpEWH72QBgnPTpSOqLH8icmcAZn7EayXK/dIrz3NNW6d9w32sHeyVVwwYpVdMFkMO7OyNimgCa9BYe9P83bEoh9L9T+4Y2fVx5JOapnw6c2vyUdnCvfS0MVkKaln4CPvgHzP2dHBVNZWcwDj/+euGAB/eBfYkVo+BAudb2tF7rxiTipVBJN8Jz1xJQ7nPdddkYu8G5zboxc/3CaQV58brsJQRRNuJyqhZbcVUpBp8AD4oZtoaMA7GWYNe4uQ7Jo6E/4tki/OGzK3roRGP5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com (2603:10b6:805:d::27)
 by SA1PR15MB4451.namprd15.prod.outlook.com (2603:10b6:806:196::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Wed, 3 Nov
 2021 02:10:51 +0000
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::51ef:4b41:5aea:3f75]) by SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::51ef:4b41:5aea:3f75%6]) with mapi id 15.20.4649.020; Wed, 3 Nov 2021
 02:10:51 +0000
Message-ID: <103c5154-cc29-a5ab-3c30-587fc0fbeae2@fb.com>
Date: Tue, 2 Nov 2021 19:10:45 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.1
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: Maxim Mikityanskiy <maximmi@nvidia.com>,
        =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
        Lorenz Bauer
	<lmb@cloudflare.com>,
        Alexei Starovoitov <ast@kernel.org>
CC: Daniel Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko
	<andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Song Liu
	<songliubraving@fb.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh
	<kpsingh@kernel.org>, Eric Dumazet <edumazet@google.com>,
        "David S. Miller"
	<davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Hideaki YOSHIFUJI
	<yoshfuji@linux-ipv6.org>,
        David Ahern <dsahern@kernel.org>,
        Jesper Dangaard
 Brouer <hawk@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick
 Desaulniers <ndesaulniers@google.com>,
        Brendan Jackman <jackmanb@google.com>,
        Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>,
        Tariq
 Toukan <tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>,
        bpf
	<bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk> <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: MW4PR04CA0286.namprd04.prod.outlook.com
 (2603:10b6:303:89::21) To SN6PR1501MB2064.namprd15.prod.outlook.com
 (2603:10b6:805:d::27)
MIME-Version: 1.0
Received: from [IPV6:2620:10d:c085:21e8::198e] (2620:10d:c090:400::5:deca) by MW4PR04CA0286.namprd04.prod.outlook.com (2603:10b6:303:89::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.19 via Frontend Transport; Wed, 3 Nov 2021 02:10:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c6b216ec-298c-4951-092a-08d99e6f28ad
X-MS-TrafficTypeDiagnostic: SA1PR15MB4451:
X-Microsoft-Antispam-PRVS: <SA1PR15MB4451EC17DBB21777097DDC1BD38C9@SA1PR15MB4451.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: quIUkwKQqbx03/3q+SnD/i1EHjRptXThB3pmv64yOTQMzbNALyIqfYPr8cEsOb2Z5VjN0J1ivnuCmsfE7yntxH7/z3U1byIR2ILh5WwnW10kKCHL6tMTtsHQH90dnLBHBmwRdZC6jF813Bi5bv78ryiY2v1bP+w9g4DkY2aAu6BG59tiFqrZUTnkBeSwHqGKeLyzrSiH+WCxrBzfbJa8cntzJ5OoR+x4atkpNdudmODN9gD9BlaB0KC7XcHXW5EZVvq7pezkGz1r9DZSfpg3tCWYbvzBrbnZyo51DISzM+7n/W1v6J3248HfPFioUfY7nLcuFBn0LhAC2l0nwDwj+DC0iX41ZaSMRBS26owxzj4OLhCa9p4pzWjF/6n3/zLTTNeRHd6V+ApZLs4kONgHSNl/FqHZhzRV3472skVm3DrW6RFhM7K32myrlYF5iPdzCESlpW5bxQRCedB/CSPdMec7g5+ry/ZW5M2IZLDpKO01afJlCUrm17200+Z6XAJ0JAIorho1ZQGXVA//2rrO1rrHD7D/0XIZV2OKxDwCakap9LYmsDmoLfmLk3xvRs1J5dwsxzWxaGgjkC1zzACVEYItnXJfzA3DnEJd5FtlAZPm29OvrXUaomFIrOPWlbipk0muj8DldkY8ssIVx//shriQHUG8Xma6ISsDpeP6YdaiV1PUFffaaaIj9oxuRUNAqNbA0Ovg4LBQ6u0lcbRM19zjAcyQ9dSVPtcxO/a1KYgAiqdeh+vLTpSPo6kY3ZCT
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR1501MB2064.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66574015)(31686004)(53546011)(5660300002)(186003)(2906002)(36756003)(52116002)(6486002)(2616005)(508600001)(83380400001)(4326008)(31696002)(66476007)(54906003)(38100700002)(110136005)(4001150100001)(66946007)(316002)(8676002)(7416002)(66556008)(6666004)(8936002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0pNN2V0RkN6bS9NZEJVdlhWeGdKaDFaWHVHSGFjeWdLSWExaFh2bzZEdUJ4?=
 =?utf-8?B?a0V2OFBOK3NEZldYc2dXWDllZnVhSmUxTWxtNGhRcUNhTC9nWWtiWWVoMnBh?=
 =?utf-8?B?OVowU3ZwMVhpNFVMeGtRSTZpZ1ZwR3NpRXZ1TjBVZXhqYWF6YTAzUk0yUGV2?=
 =?utf-8?B?YldiN1ZvQzlXQmZRVEhRTFQwS011YXVva2hjdnkvb05tZjF4NExaU1pxRm1B?=
 =?utf-8?B?UUs5ajJpaU1wQ1NjamYxdkozZTdtQkFKRlJkUERKbVo5L3F0S0UxamJ4am9J?=
 =?utf-8?B?UUMwSjdjZlNhVlFYMmtnQi8rYk8vYUE5T3A4Y2tFcHErR3dNbzV3akFqTDJ5?=
 =?utf-8?B?SVVjcnZxbjEyVk1zbFlybWZ6djVQVkF0OUJVc0V5VzdheHloTjF0cEZkYlBX?=
 =?utf-8?B?QXpGalpqYmlsV0Z6ekQrbGl2Y004SmdqSEo1Nnh1SmJ6VHJjazJtbmRzb3FL?=
 =?utf-8?B?ZjFZQ0VuR2dtMCs0NGJQYWVKRHhJUThWeE9QUytnWXVmS1lJbHNiMk52U3BD?=
 =?utf-8?B?aG84bDlENlFOaG5CSjdjL2lTMzJ1UXJmWW14L09XVGh5TWNodTczUGdZRld5?=
 =?utf-8?B?c0h5K0I5S2N0T1VSRDhBdkowaUxNaDB0SDFsY1kvbUJuOWxnOFM3WVF5Kytt?=
 =?utf-8?B?aGNHT3d5eWNUMEcwejh5L29rdVo3bzNQMmtOS2FZMEZFbnpXdXFMK0QxSkkz?=
 =?utf-8?B?MkdrcXRWbWt4MVhVR2VQV05RdzlCLy8rTU1TS2V3OTlla09DUlB6YTVxcjZi?=
 =?utf-8?B?R3hNVGtkWUs2YVhzcU42VGJhMjBnUjZGQkE2RUM0NE5tVmRscnNZZVlkelFD?=
 =?utf-8?B?akxJMGZmMGVhdVZJK2c5eFdMTk5rUTF2VXJpNXJ3WmRiUGp4YW1ROGpjM1I1?=
 =?utf-8?B?UVFmbzRlZGp1a2FDMGI2VklhMmdJMjkxMVprM29RUThoU2ptejZrMFh4cW4y?=
 =?utf-8?B?L0FZVDA3YlNWaW1reWUxMEdBWU15eDJnTnpqRHRGV0xCOHRhdUhNcEt5d1VO?=
 =?utf-8?B?Z0FmdEljb2JjcTl1TXFLN0RiaXBrYTBVNlhXQm5PaE90ZVMvb1I4V1FFZXh5?=
 =?utf-8?B?cUJFeFpxbUYreUIyTjhHWUhldGZoc3JYVlhsdmZ0UUVBczc2L2owb3pzRklD?=
 =?utf-8?B?dFBwaExPQ1Z5bXRBdGRuTllSZDNGNWIxQWFxNEZwS2lzZnhqcit4OUxFVlJz?=
 =?utf-8?B?MG9JbkF3Z05wVVM5eVFtM2Iyd2JoV2RRVys4Qmx6YXhKaXRvZ2VVWWMxU0xF?=
 =?utf-8?B?clIxRGprcjJsckVTQWp3TUEzRzZva2Fac2Z6WEVzUm0rdmp3NXB2bnJQZDVG?=
 =?utf-8?B?TkJueDhxMk9HOTJaMmhrUDY1YkVJelNtdlM0TUpwUCt1Z252RmhyUm4wQ3RG?=
 =?utf-8?B?ZTRkSno2Wkk4aDA1cEdxUE1haC9obmFxQXpzOTQzTHdsZDJwMnozN1lGM3dl?=
 =?utf-8?B?QjdKMzIvams5VHIzMngyYkJySFBIQjV2UUF6ZUh5bXJpU0xHd00vblJPT0ty?=
 =?utf-8?B?NTR1SlBsSFF6VW9NNzd4T0ZIOEM4Vngrb1J1SFlBRlBwWm9Hc3U5eEJUYXl3?=
 =?utf-8?B?UXB3ZlJ4aGJsWUxqYkN5OUhqVHdLc2FqOUNBVGRXV1d0UzM4aHpncmtEZXZD?=
 =?utf-8?B?VDIycmRTMVZJbUFud1QzMkFLY3hTQ2NWMzNUZFQ0L09ueDlIb2hqMThuUTEw?=
 =?utf-8?B?bk5YRHBLenFkdkpIc3NHUi9vMjhhZHo3MzFDMGhYbFpLblVudWlZWmNKRisx?=
 =?utf-8?B?dXBqTUlsai9leVJodm42aG1tSjlqMmdYWEd6dlhUcVFRTHFtU3VzNHloVkVJ?=
 =?utf-8?B?cEdGU2xCYVJhTEl6VnlaUWhwWUQzeUNGZ0NyL0Y4L0NrWGtwa1hMZk9Xb1Ar?=
 =?utf-8?B?NlQ0M09hZENCcnIzTDR4TU1hTnp0eGFjS0RkcnZYblJRR1p0L2doT0VtZXFr?=
 =?utf-8?B?UDlBYURRbFZITStjMTdYZzZTdmZTS2tDcEkvUHZvQ0p6NkhUbFlabUljMi9Z?=
 =?utf-8?B?eFpPTjNzdGpIenl1Y0dWdktqS3hMRFcyZHNUR3hxeDF3R3hTak9TZDNEcUUx?=
 =?utf-8?B?RTg3M282cStENTF4U0FuUzBFcllOZEFVVjVQODRvazJGbVhMY2Q2S0ZsMUdZ?=
 =?utf-8?B?bzB1SnphalJ2eE5JMTJLaDZuRU5sTXNLeU14aGVxQmxLYkptdTc4ZUxzSVc1?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6b216ec-298c-4951-092a-08d99e6f28ad
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1501MB2064.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2021 02:10:51.2312
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fn839Qd/1Qhe1tLBpOd0w6eHsfil5LaHdSDIeerNTrVWR3RFGcKCeEqNrIOrI2oZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR15MB4451
X-OriginatorOrg: fb.com
X-Proofpoint-GUID: 5__lIsz3ovyPxqtOpjKBWMGrJXdixdmf
X-Proofpoint-ORIG-GUID: 5__lIsz3ovyPxqtOpjKBWMGrJXdixdmf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-02_13,2021-11-02_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 malwarescore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 mlxlogscore=900 clxscore=1011 spamscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111030011
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=NSu71nU7;       arc=fail
 (signature failed);       spf=pass (google.com: domain of prvs=0941585f4b=yhs@fb.com
 designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=0941585f4b=yhs@fb.com";
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



On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>
>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval,=20
>>>> __be32 *tsecr)
>>>
>>> I'm probably missing context, Is there something in this function that
>>> means you can't implement it in BPF?
>>
>> I was about to reply with some other comments but upon closer inspection
>> I ended up at the same conclusion: this helper doesn't seem to be needed
>> at all?
>=20
> After trying to put this code into BPF (replacing the underlying=20
> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues with=20
> passing the verifier.
>=20
> In addition to comparing ptr to end, I had to add checks that compare=20
> ptr to data_end, because the verifier can't deduce that end <=3D data_end=
.=20
> More branches will add a certain slowdown (not measured).
>=20
> A more serious issue is the overall program complexity. Even though the=
=20
> loop over the TCP options has an upper bound, and the pointer advances=20
> by at least one byte every iteration, I had to limit the total number of=
=20
> iterations artificially. The maximum number of iterations that makes the=
=20
> verifier happy is 10. With more iterations, I have the following error:
>=20
> BPF program is too large. Processed 1000001 insn
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 processed 1000=
001 insns (limit 1000000)=20
> max_states_per_insn 29 total_states 35489 peak_states 596 mark_read 45
>=20
> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the accumulated=
=20
> amount of instructions that the verifier can process in all branches, is=
=20
> that right? It doesn't look realistic that my program can run 1 million=
=20
> instructions in a single run, but it might be that if you take all=20
> possible flows and add up the instructions from these flows, it will=20
> exceed 1 million.
>=20
> The limitation of maximum 10 TCP options might be not enough, given that=
=20
> valid packets are permitted to include more than 10 NOPs. An alternative=
=20
> of using bpf_load_hdr_opt and calling it three times doesn't look good=20
> either, because it will be about three times slower than going over the=
=20
> options once. So maybe having a helper for that is better than trying to=
=20
> fit it into BPF?
>=20
> One more interesting fact is the time that it takes for the verifier to=
=20
> check my program. If it's limited to 10 iterations, it does it pretty=20
> fast, but if I try to increase the number to 11 iterations, it takes=20
> several minutes for the verifier to reach 1 million instructions and=20
> print the error then. I also tried grouping the NOPs in an inner loop to=
=20
> count only 10 real options, and the verifier has been running for a few=
=20
> hours without any response. Is it normal?=20

Maxim, this may expose a verifier bug. Do you have a reproducer I can=20
access? I would like to debug this to see what is the root case. Thanks!

> Commit c04c0d2b968a ("bpf:=20
> increase complexity limit and maximum program size") says it shouldn't=20
> take more than one second in any case.
>=20
> Thanks,
> Max

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/103c5154-cc29-a5ab-3c30-587fc0fbeae2%40fb.com.
