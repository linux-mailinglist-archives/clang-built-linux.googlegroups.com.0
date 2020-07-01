Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBJVA6P3QKGQE44SEPVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC5421124C
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 20:04:23 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id r62sf4815456oif.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 11:04:23 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1593626662; cv=pass;
        d=google.com; s=arc-20160816;
        b=CB7xdKl5eqPPyq7mPwF9AFtHU2goXgkggWFO4yOjZ5kxpMRey053NI+R30Krdmnmvv
         dMPXyD5gn09912hEYNIduQA3K0pFQUc14K454uIpEzA05jGwcKGDRzMRoDq7fgPszLq2
         7Mut0OGJ5FuTaHylIji4cTUN33mCpHtLsoYx9+Hxbf20bNs92MHniVYWpA9/ESleNeYI
         NhtTLyuH0B7D7THExtcEOaYY7pAofbN6tG8hCtbSllz+du6021FV7YZyc563oJMA59Yy
         30ykS3Wvn1wJU/6LpPegGmCMbhoamXqWTvXYbKPwadzT+DNzvIUBxUXNzEvYWHU6dm0/
         ET9g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=tQMAZXOf3+5CDgJXJUlZmeiqKXUk5pRW2e7cXjFaVVc=;
        b=sMFgcAuPAOMdZNeevU6FyDqbmd9FD2yTRBY3KhEnSGMrZfHVcc2jL2+JWmqPQnmN9x
         St0sgknIFQClEfKHtCuIuBzrMWJOu97ofL2Wk7UVXE7NzHRHfQUT0+zw2JiF46q4uaO/
         /iqGF/DP1zaSMVBNTckdinehi9Tbt1iF0hTNHjU2UIbI9rx+TthmLAmRQKtuBzIXLc9P
         lUrtpoyKLH4vmKCYeZMQUkQ+cncHcZC0KsNyeSlsiACxppnvu+f0hXDMabxoKaNkLceS
         XFZSJCOobsTOZ2AkslndLundW1DpnZ4A60HsfwqkBrq4fiB9NU7wcszYqbbN9P87rGCr
         WXRg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=AFmflDHI;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=aGJ6Njmj;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=4451bd26a6=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tQMAZXOf3+5CDgJXJUlZmeiqKXUk5pRW2e7cXjFaVVc=;
        b=QAo0IX56IuEsEKFwjl3bKwM+EaKVxJWdhGU+lAtHPjk0TT9P10n00B66JufjzmOFIY
         D5nZ1owWtXMMreRWLqkaSu77yxDsjsNebGYQ9l4pw9rnE3kAaNq6A/tFpcD8M6bgHNxc
         Fn9Z2R4HZ/qTB9neqZDRo+/SjP4BrSJMQ6b6ZmEikiXPl4bNeCSm+pHJpW2aSRYFRONr
         cIIU4KE8XkDniP4keQjZ0HZJyI3cy8r+PCMO7OY+cvzqnMzf58DlNejLrp0dFNGH+LYb
         RYowtghly4gofhmxVsWfeBr4ywM4oIxZfrDCb7UtxLTat7UQ3+PWJ7DdrHUvCQAl6bn+
         eHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tQMAZXOf3+5CDgJXJUlZmeiqKXUk5pRW2e7cXjFaVVc=;
        b=Eb7KLhn9sn+QavUFt9xUJ29P4g7Nm++6w7Ei0dIZW9I7rZRx/vidbPbVuFQjY0xAyg
         r1KUwbA6fGcD4R99A+8DHTC+oFEdqgc2APJPyZur9KsQaH2SYZyXMn87J008NdE0TRVf
         RlUmAEhZz+wGcEYUpS7765CQGG3RqwTnYfw2mtQp0CX7zRKRN3by3lSo1yNq3EeQ0Pbd
         3p/WjD0Gy7xFByuv+zlem3EvkuJ/9QXQgEXsyTmw/EKZDn3jKKj5tOzwseUevWlvKVxn
         biYUemWHJwvjoCFJXKboe3JjnL0f9VXkeADzVmwXKkpGpRvpKV71eFEvar5NFUwqJpzd
         qGNg==
X-Gm-Message-State: AOAM532ytBtUhGlC5DB+hgxQPvVIfwmQh9n4tjYo7zFbfjx7nHDSsvL0
	64KEuCFP7Qz7UHmIKwm6V84=
X-Google-Smtp-Source: ABdhPJz4K16GjGfSYEzUMAvUAbhan2Xl1iAEvn61IrliwR31tU8OkUIe+CZ3Q3bxDbG0hSTK73D7ng==
X-Received: by 2002:a05:6830:1bd3:: with SMTP id v19mr21066888ota.91.1593626662412;
        Wed, 01 Jul 2020 11:04:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:55cb:: with SMTP id e194ls171118oob.6.gmail; Wed, 01 Jul
 2020 11:04:22 -0700 (PDT)
X-Received: by 2002:a4a:d74d:: with SMTP id h13mr2828907oot.56.1593626662054;
        Wed, 01 Jul 2020 11:04:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593626662; cv=pass;
        d=google.com; s=arc-20160816;
        b=CbZar6bumIr7WF73lFGV+1H2YJphchQgawzddFOIXUitdL8mimITsP50x45AGlfA6y
         bJ9Rk1jrGEqTMMaGXxn2RrRhZmGm8ZJrSdUx1801cgRbysKRoTmd1I2XmsDOfINQWjw+
         IUQzm0fdQh5WMyo3BJUUAmBLfeeRfHBIVW/GSpITn0X0S8tWsKRP91x1etPsywJvHdVo
         N/79pnEAk6nH4t/yG/J7sSjpQchFnBKciOsM1u0t2RK3l2gzFSWhkAIKyPXTzd+yT3Yu
         /hGljWV4qdOeW2LSxAFq0gWjQLJgbCbz82fSSMcR886ObAxlHZqUnSa1t3ThQ/aq3HXU
         w8mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=6LXUzLJurRwr+FOPo13jP7kTsJVM+YjntIBgTOAZIYw=;
        b=jiV0/2I/1SxTYOtL8jpPpsda+zJTDo0OwnH7AkwqOdGAZaVSkWl7O2/kbMT7aSwkB4
         +Wjmt9v+Na/EPIx/BD0HINMWvCG7Ys5+jq9b2JsCZoBLEsg4MX5/uwWyojzL55oxYuXr
         vXwZDY2wTZxkQwB4wzvxQUUIkhFudXp07Mc8rPIYHcMlazfb/fILNJNj1cgz3VSox7KL
         EtN/wvr6JWJWsYcxmefhP7C9Hlzd/yMNCszssN1ltejnwhZZ8EqX4BJslgAbUxCvH07M
         nGrYymUWX86Hb0QX0btvgR6hREkPGRlt1JaQF3GHbJBeOfz9bxHtkUC9RZwrqP5/gK9h
         rQZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=AFmflDHI;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=aGJ6Njmj;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=4451bd26a6=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id n26si255802otk.5.2020.07.01.11.04.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 11:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 061I41ci026087;
	Wed, 1 Jul 2020 11:04:17 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 31xp3rrqpb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 01 Jul 2020 11:04:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 1 Jul 2020 11:04:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mzubM6vEKCtajmgAFEx10xGeN/2VVTUoNWjQt4UHxOjYBmqUPkzNfp4ZIGmwp4FsWsPfmE/G40HQnctpBj2dp7DZZVkS2fta3ESTZPi3hraK/Or+DYyKddsLjmb/Jcw88iBwbiKwsUmIIo6Fi6ROAHynSfX5EZclb56IQ/C2nzViyYlkB0KHHtoa00GjowmxUZ0U62atZmIHOq6srLiPnTysIpTywFW6EM+CXuaykXKv4ySLigc25zRwqWVzPVXQtsNNv0FK5+C0YQ6k5TrGVG6GVF0ZegC4upDkUNzTzzKVO2QiKKGRXekluTkvis5wzmmgaaZ/z5H3v1E8reZJ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6LXUzLJurRwr+FOPo13jP7kTsJVM+YjntIBgTOAZIYw=;
 b=WZgrp34asfVx7MmHXDiY75VpeW8T94hnuiP6qqWovNwINpZtxuyKlDNdsllIc5rhB6C25Pp0UAkDryu0Apj0e/aZaQVjyFdWmYjGQcFyblcuU27MigkSFQMpdgpjwekP9iCNBaZWrcnO5tb3dKqCZbaK2oSm8fK3AukqY6MQmJTeVGI02/tr+sWTSA/VdqOVZS7w+8A58tGshOsHNunrP/2eLlUQZa8KXLiqa5bb5XI7MNvjpDBgamGCbH995qv1PWXew5SOIMq08v4/2Dlnfs0pi41FLMzqmL6wD91bOlC89fy/33mEmAB8pHTIG0iF1Xqiop6+2FTdLn2kEtrFyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB3045.namprd15.prod.outlook.com (2603:10b6:a03:f9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Wed, 1 Jul
 2020 18:04:14 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301%7]) with mapi id 15.20.3131.027; Wed, 1 Jul 2020
 18:04:14 +0000
Subject: Re: [PATCH bpf-next v2] selftests/bpf: Switch test_vmlinux to use
 hrtimer_range_start_ns.
To: Hao Luo <haoluo@google.com>, <netdev@vger.kernel.org>,
        <bpf@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <clang-built-linux@googlegroups.com>
CC: <sdf@google.com>, Shuah Khan <shuah@kernel.org>,
        Alexei Starovoitov
	<ast@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
        Daniel Borkmann
	<daniel@iogearbox.net>,
        Martin KaFai Lau <kafai@fb.com>, Song Liu
	<songliubraving@fb.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh
	<kpsingh@chromium.org>, <linux-kselftest@vger.kernel.org>
References: <20200701175315.1161242-1-haoluo@google.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <aab03e4b-2779-3b71-44ea-735a7b92a70f@fb.com>
Date: Wed, 1 Jul 2020 11:04:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
In-Reply-To: <20200701175315.1161242-1-haoluo@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: BYAPR21CA0015.namprd21.prod.outlook.com
 (2603:10b6:a03:114::25) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e8::15c2] (2620:10d:c090:400::5:3953) by BYAPR21CA0015.namprd21.prod.outlook.com (2603:10b6:a03:114::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.1 via Frontend Transport; Wed, 1 Jul 2020 18:04:13 +0000
X-Originating-IP: [2620:10d:c090:400::5:3953]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3c08f14d-f1de-4733-2683-08d81de929fb
X-MS-TrafficTypeDiagnostic: BYAPR15MB3045:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB3045848847851C9C3D45FBF7D36C0@BYAPR15MB3045.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 04519BA941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NCjBXFQQRscZOptB/yu4D+30RYjgP63GiRgBVX09mkBE0NSVmOXnbErXAfIV7zY9sip8CuwTKyTxOoTi0qHoc+NFR6GY332MEsBjY9/PKtLVnHezh/p+f/RBkdBtUhLVsXhFbz5Aaa0Pq+Cl74YrHOHRdZ/jXPku4VWukMipoz5P2wreXGzvIgruPPEYYr6UVW0vKNa/EYo8jwikfIGShXRKbKYYIP2PGP2HNizv3AUjRKeRG5iJUGswAPAdl02CDHqfmvpyqllij/dn9YPWlDQjAHrgd/azVfxHe007CJxOhwuokVCHGjUx3HBGwYzZRzSvBcduxGSMcFv5JVeuAH6SVoKx4rdHVpm3D19qJVwNp6wkN0pcUvTG1KbXOgHm
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39860400002)(396003)(136003)(376002)(366004)(346002)(7416002)(31686004)(2616005)(36756003)(5660300002)(6486002)(4326008)(53546011)(66946007)(8936002)(83380400001)(52116002)(31696002)(54906003)(16526019)(8676002)(66476007)(186003)(2906002)(66556008)(316002)(86362001)(478600001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 54EfXZSgT0aC2vBmvzqIEcq+9ULGliM9PXtxhjH7gMfE11BHCYt8A91xzpZWV6m4HkQl4ci5ZbUxkJbdXzcgPsqSA4inexIWUTmZU46rcR4fc8ddDCSXicbtgYGFwdCcW35XA2fUSrgpnwmRFpoBAkkCw5n2emCyuZW5OvcB3nqpMqPTDYT/3lQlSaiEXYZbdMx1gOpSIktMCnmeCiasQwMzhbmQpIz3A1gCAANYYLhe2//kvRneNWjF6FsdPnek3bLKTAAe6hyqNiE5Vd5QsrMXP3in5GH6zGAiwhkP1uGX/9UDsxzJ7jsI2JoYDMfpOl9gBAWN8ePa9N/ta9697fH0l85+jnOHRAY2SMzf28I6slF/LMWFqZUopnBSadOv16QZlCAlKal6njyBLiAa3gWkJX5FE5QHxX9tIj3d/faygBPHzsX4Y58spP6UrNTGoXqG3AeFwY2E6KJSy4fPF1QED5oEwfZGRY8wWlmXbzYnOWSKHaxxwODoT1Y8MLmv+Dqq6q2B8sdAjZEEaXpuDQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c08f14d-f1de-4733-2683-08d81de929fb
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2020 18:04:14.4414
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j6PfvP7ipTstu2h8+W1cPfwG7izugmqW7YsZJK/vvdxuQXnbeLlY78qNbQ++qFth
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3045
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-01_09:2020-07-01,2020-07-01 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 mlxlogscore=999
 adultscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0 bulkscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 cotscore=-2147483648 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2007010127
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=AFmflDHI;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=aGJ6Njmj;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=4451bd26a6=yhs@fb.com";       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
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



On 7/1/20 10:53 AM, Hao Luo wrote:
> The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
> programs. But in a kernel built by clang, which performs more aggresive
> inlining, that function gets inlined into its caller SyS_nanosleep.
> Therefore, even though fentry and kprobe do hook on the function,
> they aren't triggered by the call to nanosleep in the test.
> 
> A possible fix is switching to use a function that is less likely to
> be inlined, such as hrtimer_range_start_ns. The EXPORT_SYMBOL functions
> shouldn't be inlined based on the description of [1], therefore safe
> to use for this test. Also the arguments of this function include the
> duration of sleep, therefore suitable for test verification.
> 
> [1] af3b56289be1 time: don't inline EXPORT_SYMBOL functions
> 
> Tested:
>   In a clang build kernel, before this change, the test fails:
> 
>   test_vmlinux:PASS:skel_open 0 nsec
>   test_vmlinux:PASS:skel_attach 0 nsec
>   test_vmlinux:PASS:tp 0 nsec
>   test_vmlinux:PASS:raw_tp 0 nsec
>   test_vmlinux:PASS:tp_btf 0 nsec
>   test_vmlinux:FAIL:kprobe not called
>   test_vmlinux:FAIL:fentry not called
> 
>   After switching to hrtimer_range_start_ns, the test passes:
> 
>   test_vmlinux:PASS:skel_open 0 nsec
>   test_vmlinux:PASS:skel_attach 0 nsec
>   test_vmlinux:PASS:tp 0 nsec
>   test_vmlinux:PASS:raw_tp 0 nsec
>   test_vmlinux:PASS:tp_btf 0 nsec
>   test_vmlinux:PASS:kprobe 0 nsec
>   test_vmlinux:PASS:fentry 0 nsec
> 
> Signed-off-by: Hao Luo <haoluo@google.com>
> Acked-by: Andrii Nakryiko <andriin@fb.com>

Thanks!
Acked-by: Yonghong Song <yhs@fb.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aab03e4b-2779-3b71-44ea-735a7b92a70f%40fb.com.
