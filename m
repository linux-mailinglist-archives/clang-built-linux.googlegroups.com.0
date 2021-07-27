Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBZOUQCEAMGQE6X5PS6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 558563D7A17
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:46:47 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id j16-20020a05683015d0b02904d6c4f8a8a3sf5359040otr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 08:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:in-reply-to
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NGpafZTf1m8YzAl/91//xf0H9u23YW6WkQL1gJmspF4=;
        b=DexaLRxs4xXSCpq90YODKuSJRie5jbcpqJUCy9baMcwT6haH3wvF6K3l2Vp3DQ3NBS
         c38KqJaNWXVhPa3S1GR1n6lu3L12e/dyWZH22XG5sAp0L4vkaFaX4g2wF12KLDPbARBG
         qkJ7JHhffj5y1mSs8bCD+qOow+f7ctVcPzBbd4zTzX9sJEXb5OhZPPNSjK4VQLkzA1d1
         m3b4UMbrnyVhwEol2UqWgoK3SWGKi9kYsqVfb9MqK6BDNbfhVgFHVe5oqd22JogduGu9
         Q8/2roD/02XsRm5+mbrclicIHydjsq4irULpW4o00mZCYLQ5BvsMF9m7N5blivVGfzDL
         RsSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NGpafZTf1m8YzAl/91//xf0H9u23YW6WkQL1gJmspF4=;
        b=XHdNPGqM17jmUdJp1pBbXWYFkHm2d2hJOpsaTRfcsjCa3hXACUQ1r8E8vooi5Y3Ise
         jVBeGRVcDZqQNb7WTKzS0L+5B7sVij9tAMXjZ7nk0wcUMXoCMfCQrfux5nApWSC1BISp
         maFhPzQkBMbZwSZnjTO7svl8lcohHS2fweW6t/r+e1fzC9Odc524M3Tze+qIJOcwED8e
         DoFlKiFihxaz9Pi+9zApGkLl0S/NlwF11P2EHkf36XhLHkhnRNj3mzZ8rHw1qRvJFjkl
         NVWw3SI2nGfB1B8KppUree6TzZ8wO08W0Hj78RWqsdKwmJ4D0v8cs0iwP4YXM2JjCOk1
         HRjQ==
X-Gm-Message-State: AOAM530t9TkKT9+7eMvQU14dTnX3sSw63v8IeXkhje5rh5BGroN2r79T
	lTd1eY9C8EqprYDsaHeS8/M=
X-Google-Smtp-Source: ABdhPJwVKY71jYfL14odkM/0UOh4l21j661IP9/krtcIGjYcXLvJIN5WHKeN6yHiJHFC0NjL22LlCw==
X-Received: by 2002:a05:6808:2d2:: with SMTP id a18mr3457512oid.106.1627400805974;
        Tue, 27 Jul 2021 08:46:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5e42:: with SMTP id s63ls6539303oib.10.gmail; Tue, 27
 Jul 2021 08:46:45 -0700 (PDT)
X-Received: by 2002:a05:6808:1448:: with SMTP id x8mr3340757oiv.57.1627400805648;
        Tue, 27 Jul 2021 08:46:45 -0700 (PDT)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id b9si361587ooq.1.2021.07.27.08.46.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 08:46:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=684254ee38=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16RFiRol006191;
	Tue, 27 Jul 2021 08:46:34 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 3a2bfc3d8a-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 27 Jul 2021 08:46:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 27 Jul 2021 08:46:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HNKsaLPbv91q1AZFQrZFvmYAAeLda9vISX5+yvQJrcpicsXfCnByKVRU4JWUcoXOGkdfjQpk3b8UY2+fQhgYPj9pdlANrVwY1PEBPYdbS2F2vxFpK6UUg71SYtzi2mUm57SbtCQ/ge5XQxKgtx1omtUbJvoDP1foumCMjU3miGPOV6sMS1X1VuH2O0HrQkrzlqNgadrpb5HAWbs7Q+6OhkA7MhFSVGDfVC9dsq8KJprfNw5XgQLys2flylLbvMET2ptorvdCcVQv/Er4n0i/zHbW5jIfIQHWZ8aM1wJWuEUR4/q6kn7KwofdQbT49Vt0SZwDGhGauWIvRp/U59/Gbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pn5GGVogEhi5odJ9sKw+8sInrHAd/N7e4nJ6L2NkyQg=;
 b=XBGoHGZpdEEqrqtCenPPl4pp0Pw7RFvVdRIHwVXq3cjzRriJt9euE4zNuAYnGFvc1JAYo9SqnZzR01VwuODg4P4qKTwo7zA/C0AcvHRpzisX7QYAAIcoEy0HQm3lvrQO4UfSBqaj+uh9mnkrVx+PturVRQX4+WsZzWOIhBlZC0ILQqZdu84J0QYRNAJNQKezB0UIXFK7ryU/AKTX/2mNtCj+OUj0rJvcCHQXD5kqX52hqv/zEBx9Qovn5NF7/jkg/OefgH/W8lN25zT/BJdzoZiCBHTHWmRLjoQ8oq2EuviGeh6UB7pW0rghk1fi9vmupc+UjDuh2S13l3zOdnwZ5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com (2603:10b6:805:d::27)
 by SN7PR15MB4176.namprd15.prod.outlook.com (2603:10b6:806:10c::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.17; Tue, 27 Jul
 2021 15:46:27 +0000
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::c143:fac2:85b4:14cb]) by SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::c143:fac2:85b4:14cb%7]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 15:46:27 +0000
Subject: Re: [PATCH 1/3] arm: include: asm: swab: mask rev16 instruction for
 clang
To: Pavo Banicevic <pavo.banicevic@sartura.hr>, <linux@armlinux.org.uk>,
        <ast@kernel.org>, <daniel@iogearbox.net>, <andrii@kernel.org>,
        <kafai@fb.com>, <songliubraving@fb.com>, <john.fastabend@gmail.com>,
        <kpsingh@kernel.org>, <nathan@kernel.org>, <ndesaulniers@google.com>,
        <ivan.khoronzhuk@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
        <bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>,
        <matt.redfearn@mips.com>, <mingo@kernel.org>, <dvlasenk@redhat.com>,
        <juraj.vijtiuk@sartura.hr>, <robert.marko@sartura.hr>,
        <luka.perkov@sartura.hr>, <jakov.petrina@sartura.hr>
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
 <20210727141119.19812-2-pavo.banicevic@sartura.hr>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <424add3f-d79a-79dd-2e6a-dbb966bf7349@fb.com>
Date: Tue, 27 Jul 2021 08:46:23 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
In-Reply-To: <20210727141119.19812-2-pavo.banicevic@sartura.hr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: SJ0PR03CA0257.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::22) To SN6PR1501MB2064.namprd15.prod.outlook.com
 (2603:10b6:805:d::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21c8::1398] (2620:10d:c090:400::5:4698) by SJ0PR03CA0257.namprd03.prod.outlook.com (2603:10b6:a03:3a0::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26 via Frontend Transport; Tue, 27 Jul 2021 15:46:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed5593dd-066b-41f8-5ad6-08d95115b1c4
X-MS-TrafficTypeDiagnostic: SN7PR15MB4176:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN7PR15MB4176A8B0D22E0801863756F9D3E99@SN7PR15MB4176.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NlPjqn1lJQBv7831THrxCOxijGP98oiPWbHatTiWQlY4k+RlaKFNrlLUXpng65+Szhj5XjWSU/LxaAV6YVudxL+N+E0nhd5nC7ZLwEIbwa2MZ7NIVGaw8k5Xu+sia31ccoir5sGZ1Ab6MZIhswoVHfWqRkK3ntan4r3mNZMBvL9L69ojgR7+EDpsPrOSoGCbl62v9biZuQ9BNPkI7ZVk04uYQIVLiMZdhldzpookoDOCkfqa7A4+Imfh5aXXxVOjti2Er+0vgHvzpnimdrDH76ZK8G9jOASTcRe1YAcWs93sLFqCIwWJuNLOtVZHtWzG1bodoT9G8nRnuY6dRziEgxV53SGTxQ4ckcAJWhIR63KT8Zm6rTcQHqPDlaG7EkbJC9z36FbrCjvuPp6FBRtEJPKxsdMRHu/tQ1A5fDhxL/aFAILie0mGXNKboHrPURbeV7gDKen9V5b52j7/Nx8NUYCeXUzZ9S7JgKE2P7tJuRTBZy8+TYbzMKAkg+4bssLD1rNbdIjMwFHt6r9WpwRY74rZFv7mZOqfEJ/ObMUJJveSCvCUWNwhiTRowuUVQqWH9bOmt5IKIUudvQ4x1Rco0p2en0msi65Lz0+sN9oUXGPakdBaTf1Iqbk/FBx8d2yP5b7ykwzPq/EC9nq3LPQLRe877HxREay+DFbuLbYT6OI1bIwC0uyB8XqGTbQ4nGPqBz/vDHpEqC2ki+AgSwRwS1yViM7sr/bwG5p4ksDVPsXy3CoRiMEh/ikIe8P8cWvP
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR1501MB2064.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(2616005)(36756003)(53546011)(2906002)(86362001)(6486002)(186003)(8676002)(478600001)(66946007)(66476007)(52116002)(66556008)(8936002)(7416002)(921005)(31686004)(31696002)(5660300002)(38100700002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MCtJeUluc3JzTmp4K1RyNTU3V1R5RHUwOUtmZkF4UGYzcUNRWkoyL1JtdjlC?=
 =?utf-8?B?Q2tucnFzZmdwdElJZERub0pjQnJTS1lqc0EyUnZtb3Y1R1hBcEFlZUUzNTVh?=
 =?utf-8?B?UU5Sb2J6NzZrUEFzZzRvdG8zTDVTSTdkeVJ0V2tDN21IVjVBZDlBd0NBVlJq?=
 =?utf-8?B?ZzJIbWtSMityQ1ZZKzBQSEs3QnZldVlTSkNYM2kyMG0xdlRnbmVMdFVheEFu?=
 =?utf-8?B?b2I2cTVNLzgzdU02U2pKb0RsR3dtUGVCUEp4RFRsSDdkWUlVWWRtb0k2b0NX?=
 =?utf-8?B?cXp5TzZUQVhnNDhoaldCSXUwS0xGaGdxZEE5bnI2Y3o3bjQ3UkxMbmE5aEk1?=
 =?utf-8?B?allkY0dzbXdNRlphTXBBTnVJbGp0Yy9Zd1FUT3NnTHZFaDMzNW5IMTdxMTYy?=
 =?utf-8?B?bk1aRmFKMzgwM1orNVpGay9DRFJGcHgxbmRXOUgyUzF6d0ZGWGMrT2JaS25O?=
 =?utf-8?B?Q2JOdFJURUp4Y3JTclYrZnVjYjBFbzlYNlB5dy9mcmZHb2RsMkpUQUY0VHBQ?=
 =?utf-8?B?NjdkS2JaeVZoUVhZdS90eCtQSmlGbGxmWGhVK0hFbXJoV215RDFxZWF6Z0xo?=
 =?utf-8?B?eUVCUFRwZ3lXTnJyV1FyUmxYdDhubTlORk1IcjVVNEFndjRQc0lCNjliczZP?=
 =?utf-8?B?MWxXTkUyaTRRTnFabDJFZXd3M24zU2NFSjA5NXNtWWhIUmpPTFhGUnRzQm5V?=
 =?utf-8?B?R1k2TmJZenM3WUg0YlJaTGxHZVVpY0lXWEpGQ2xWUTBTL3V0N1VxeGVCemQ2?=
 =?utf-8?B?ZGI1KzNqTnhTRWVCbVRQZVVTdEkzN2ZKcm13RlYzcGMzaTZ3MmpSQklMNmRM?=
 =?utf-8?B?dHpRUDE4V2dkczNGeU1ZSFJhVzNBT1E4VlpDaEY5b3I3U2hFaFhhVkRrYzho?=
 =?utf-8?B?UWtVbUNEVVRvVWpYTGNaMjBrU1RqSWxPNlFPQklTOFprWTNURVo4RHJqOSsx?=
 =?utf-8?B?Q3RjTXBIYkcwSEtPc1RERVNYdkFWZjN0UjZLcFpGWEc2NkVNdVZIeEw4NGlt?=
 =?utf-8?B?WVAxeXp5ZE9SWVdQQUw3T3pXU0RJekNLNS8vY1hwL25nYVJ6ZVFieU1tNnpr?=
 =?utf-8?B?YmVNN1ppQjZLQXF3Wit3VHZPTUNJdkI4SW9Sd25JanVjU2ZpbFlieDZaQWpn?=
 =?utf-8?B?MTVPWGJkQnE1eER2Y1JEV3AyWXNZV0c4eU81RG9yUHo1QnBtVU44TDdocmdr?=
 =?utf-8?B?VDNmeTh6YmpleEFsT0toUVM2MW5mZ2U0UlBYeWVYSEZ4djRyVGwrQ2FocTBB?=
 =?utf-8?B?aFNMNFlROUNaRTVIVjY5TEhRdC9hL0t5SnRsRmVuVkQxU3p5bDdoNFFZd2RT?=
 =?utf-8?B?QmdKZVZkdThvMExFcHE4cHpjMGFaZ0lLckw3Zk9ZOHFRZDJOdFpFUS9mUkpD?=
 =?utf-8?B?Wnd0dDA5eG5QMlpvMVdGZEFuS04weXYwT3NrRnNLRlpOdnJldUplNlNrcHRi?=
 =?utf-8?B?K3F2dlp0QVBFVlp4T1VsMDdsbCthbkZXWFd1VjVSWVBCZWpGOWZHYlowQytZ?=
 =?utf-8?B?bTRyM3hxODA4eDVjN2hKZG1EZ3RsWEJzSFdqOUx4Y2wxMmdCUWlrT3A4bWZ3?=
 =?utf-8?B?cytRenNWaTZyTWJZWmdSYVVzY1NqTm56OWhIWGk2TGhhMktOd3VYUm4wcDAx?=
 =?utf-8?B?eXZqU3RCeG92QkRlMlplbzU4UStJN3V5cjlLdExVYU9TbXZhd252YnRGU2tN?=
 =?utf-8?B?SUFNREtJbVQreUdHa0VhZkxHb2ppVkpTT2drQTF5MmhuVGpaQVpMWlVaK0JO?=
 =?utf-8?B?bnNzOHBYSHZSUXVWVWZlMFJBbzc2Y3doallmQzlMWUQwem5Va2RuN01xeCtl?=
 =?utf-8?B?U2dmSTAxcDM0Y1UwTytvQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed5593dd-066b-41f8-5ad6-08d95115b1c4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1501MB2064.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2021 15:46:26.9993
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1kFwau23EySKr4z1jFZY+IKsypC3+MADhunEWMNRM1hKrZX2vPVrmhyGTNgKZr30
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR15MB4176
X-OriginatorOrg: fb.com
X-Proofpoint-GUID: pe_1I5CukfauFBJHpx04hDyv0lUAcAgo
X-Proofpoint-ORIG-GUID: pe_1I5CukfauFBJHpx04hDyv0lUAcAgo
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-27_10:2021-07-27,2021-07-27 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 mlxlogscore=999
 malwarescore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1011 mlxscore=0 bulkscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2107140000 definitions=main-2107270094
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=lQZY4IDO;       arc=fail
 (signature failed);       spf=pass (google.com: domain of prvs=684254ee38=yhs@fb.com
 designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=684254ee38=yhs@fb.com";
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



On 7/27/21 7:11 AM, Pavo Banicevic wrote:
> From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> 
> The samples/bpf with clang -emit-llvm reuses linux headers to build
> bpf samples, and this w/a only for samples (samples/bpf/Makefile
> CLANG-bpf).
> 
> It allows to build samples/bpf for arm bpf using clang.
> In another way clang -emit-llvm generates errors like:
> 
> CLANG-bpf  samples/bpf/tc_l2_redirect_kern.o
> <inline asm>:1:2: error: invalid register/token name
> rev16 r3, r0
> 
> This decision is arguable, probably there is another way, but
> it doesn't have impact on samples/bpf, so it's easier just ignore
> it for clang, at least for now.
> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>   arch/arm/include/asm/swab.h | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
> index c6051823048b..a9fd9cd33d5e 100644
> --- a/arch/arm/include/asm/swab.h
> +++ b/arch/arm/include/asm/swab.h
> @@ -25,8 +25,11 @@ static inline __attribute_const__ __u32 __arch_swahb32(__u32 x)
>   	__asm__ ("rev16 %0, %1" : "=r" (x) : "r" (x));
>   	return x;
>   }
> +
> +#ifndef __clang__
>   #define __arch_swahb32 __arch_swahb32
>   #define __arch_swab16(x) ((__u16)__arch_swahb32(x))
> +#endif

What if the kernel is compiled with clang compiler?
Does this still work?

To workaround samples/bpf issue, I think you can use
__BPF_TRACING__ macro.

>   
>   static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
>   {
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/424add3f-d79a-79dd-2e6a-dbb966bf7349%40fb.com.
