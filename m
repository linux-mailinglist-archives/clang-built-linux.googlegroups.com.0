Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBF6V7T7QKGQEZNS35CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 786D42F50C1
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:15:04 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id m9sf1692251pji.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:15:04 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610558103; cv=pass;
        d=google.com; s=arc-20160816;
        b=NQqAzsRjzpifJkvWzgOxJHxATjioAZuDjGAV/99HfRClgh3R7tNUdHVBQKZzvm8+d3
         PbHqd2uAopuYd+my2c4NI025p9Pc2sAj+5AQejlsF3GcFOvr2jmIJ43soIjY05mTApav
         QVaxYvGB5RJsOfZtTLwDBknxrD0yDTYCpLPMMboCqZ6H156wKVRkTZaaA9SfsJpjxVM3
         nhbbrG/1R6F/9Az85c6hQWgJZ+LXaXiUP2YkWRIf1PdadLJg5Q3PDSOxeadlaW3Pjo8w
         k1t66EDv8FV0Zpc1zsVXe7YsGtvyR3N1Jp8rcaiQtq3Tt0sXe2hY0bJtYxz5qhqFd3QM
         f/5Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=A4AUqpCRltef3VqxsjXO8BuA3sJYajDE9CiiayrvzBU=;
        b=Rgbx34Cff2cQgPRr7rpLruT5Fot36xSO3VmALPOdtk00TuuSJLShDpmU4QZdCzEl2y
         V5zrkl3gZQ92FCeC6ensZOeolGXK7GiSE9bzrnpLsH/dGK1jo79lE/RZdeKbgWXWcnUR
         nN4jc76Z6mXlg+MVhnrlCY1ARyf/9wNJdWFJ8wiXcUDfnbB/s3DiiaP5ke8yzR+0vkN+
         jOjowYkxPoObae7roclu8lK/lxVBrfWpAupJD1P9NpKpz+H6updd+/IzARdghSgQb9mI
         6tj1j/djjonceImBepPdCvQUjnaDnFM29Mlgtq6i3HgyOsE9zYmQ4kgb+4zcxHxx7Vqp
         v4+Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="GrF/4GTi";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=SfazGhJL;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=06473a7dfa=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=A4AUqpCRltef3VqxsjXO8BuA3sJYajDE9CiiayrvzBU=;
        b=U3ablwYgWd8Hf4Rcy/ohJkp6M3vLHAlh4GTIMYaiN0eE6e5kwtaMaWzzoyz7i6oZDC
         spjERG0lqUao3wEwn+EL3S4SMznEBE0jvkXLpDqwQEyKoZuebqDNWKxgpOnZNghk05FF
         CW/CeWOGj1DKkJKa6TxR66Mkl/HeYKeVDY4ZSdhxuw/jLCPNjyRcnf1ReJkfDtlSh4T3
         poK+VzkFBFlMoQ54UXKpwQWGvlB84r9WqYT6TjkB2w/SAOhyVx6Bp8zLBrGt9U6NKPej
         t25tQ1tgfDCkqH9ve7AmUVN9kEkIeRlcBCwLA6o8usDS677OgVRYNNUJcVZ/wlX/i0as
         8Ckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A4AUqpCRltef3VqxsjXO8BuA3sJYajDE9CiiayrvzBU=;
        b=HyUQtbKul0BDkqPRSViMr1OouQ01ZLGTjvw2afoX/FGbjT4KB1qIqa14RWAkAEwGgx
         6D5yhCZkZwJMQCUXurvfZv87renGx1/dBc6Tq8T73LzaOAdZ1UzHyfRVFnQzkYXo/vgk
         +m7g2lj/VFpvEZ8qub4VqKJ3XJqAtFi6SlMI3spSbAdqDhMY8LAmxZ6E005rSwHBZs4N
         Ayu8dnRVkZPOPD7M5ARteMHP6CvgEb9RXWEpjpKzP5JvbyQ8dIkB0tcc7DDTbX7uW56K
         H7V66uOEBToCtQAozINjdUdu+96A5hrtogqkg2Pj4GKwiGW9aua1kmLgOBd3sjVBzdXK
         irLA==
X-Gm-Message-State: AOAM5330BK1pnUsMN1KRh+AeihGzm/yhjB27AMe/EUYcY7q0c8212Y5S
	jw9YYIQxTWZvHLfyP+nOtRE=
X-Google-Smtp-Source: ABdhPJw/7rDueIa3JkZ+eVnFii5SJ/6KeT50fsZPwv/+NXAOsPdcW/qXrVtNvkXCrRpJKqDKhqyBaA==
X-Received: by 2002:a17:902:c583:b029:da:b32c:cf9f with SMTP id p3-20020a170902c583b02900dab32ccf9fmr3225819plx.44.1610558103251;
        Wed, 13 Jan 2021 09:15:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls1076571pgc.8.gmail; Wed, 13 Jan
 2021 09:15:02 -0800 (PST)
X-Received: by 2002:a62:ea17:0:b029:1ad:4788:7815 with SMTP id t23-20020a62ea170000b02901ad47887815mr3140962pfh.1.1610558102568;
        Wed, 13 Jan 2021 09:15:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610558102; cv=pass;
        d=google.com; s=arc-20160816;
        b=oewucYhF8vNOwiLXtyYLAMGTB89fLsJDFJ6rdf40UC6EWgHKpasIYQNOZfpLbd6Vwv
         cdvypFTRyBhlnx9xwaDyksi0nuyV91z5zYrjiazwqt26ecY87HH9AkGPCl52U+LIDm+q
         kmxbjJXpwmpBdK0VERPVP6lSwnIdQPf0SQVWUTuKF8jOmOzcRD7u24MlkPGLQBpzv9cP
         qhbUx7ad6Cs3hTynWudReBQ1h7sRi5kQpsfozxDDBbSKjC7+Lbh5zYKHg8BxaTaVX5X+
         9xWKi6F7ivjNowkRijgM/uz77gXcMtLkmh/bk99kqzUlTltUCqDASBzrdWJ4Ky6P/pcM
         VpJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=QT5aHI96lETRbjD4P5/zctV1fOoqBQGEbAYdVcvVk9U=;
        b=IeMK8qEiOj1dJIqYlzZwpFqauT+lo4aDOZ4XOXuTLSSTgOAogkDkt4DejStGwCTXPW
         etBnwlRKQCTpRoHzr2xANYi2ThpotDPDqCHPN7HF8oEZS6KjC1EKvR+nSh45Gxr7b2u0
         y/Ys3PrSAsApcjuZk7sWZ8F+cofaEhSjAwrA8gyN0lcWltaW8n9MxDy4iFOG+C82ZWIG
         bVIznMbtMLkMTpxkh/WrwIO/enNBsa3Ab4qX0gwmlgTaSei1JmnrerIGzl+YUUMOGURj
         YbSEQhPhyK5xM/mP5FBmgJpa3Bnhmm243AIxU83MtUfJ03SeiXVisKX3KQyZmtUBZZT4
         1gWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="GrF/4GTi";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=SfazGhJL;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=06473a7dfa=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id ce15si225396pjb.3.2021.01.13.09.15.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:15:02 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
	by m0089730.ppops.net (8.16.0.43/8.16.0.43) with SMTP id 10DH2f7f020552;
	Wed, 13 Jan 2021 09:14:59 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by m0089730.ppops.net with ESMTP id 361fpqp872-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 13 Jan 2021 09:14:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 13 Jan 2021 09:14:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGXTaEum8QYd2m7vrGJ6y3nCXFXUuFHcitf5ejXl8m/so0rPgxtt2wwTk3TzpjQFsXq8c2jcXUnBoH88olwQeH7mdEMvUz5SQDx47lzpK4iz7Lzse1M018TfaIlNvVkVh9MgNGDXwI2w4M0hXkGXCZpETAK1XMMIT/ZwNK1g42yOQJOZxgaYQbAo0B4s3CKCAQitwosrbOh2P5V8agroSChmjVTkGTMoP56W0iMniRtLuVwO3pU7S79Jk6/UcxGEg2e8zMAqYKZ7/9BmesKunjhIJ1hKA6osVQEJKe8aCUYhjlAQE7i/9i4ZhpOutgKCRQ6ePfLKjy5j7akWly/xxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QT5aHI96lETRbjD4P5/zctV1fOoqBQGEbAYdVcvVk9U=;
 b=ax5rBb6nu+Chlph+iw1QoZHCEe6ktkhz/XLgzZqBrz0LYozTC3k+efIYIG4yLIzL4G0a8GsyyxWnW2zBFjNJK+sHm9gMhydGwNB67ZuehkYgiXkuqNl+QLemVq9hlHTre4G7V7t+xxiVFxUn/QEUOeUCUW65dbCH8LEe4o1K4vn0nVNy8ZhWTmhsliuNKnAoC5E4ZXt+hRyjuGmOhT4N7DQn/8k5w5RZVa9YxhjKZeYY7MYvQPsCbypLaN/xGSQTFjZM5ESmv6GbTNtunyYQs1BvH62suXLhEFlsIDuS15s3T1pxhrtMnTtCTzzPDe8G7UTlXYaQYJ8/9kM7w+jBIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by SJ0PR15MB4204.namprd15.prod.outlook.com (2603:10b6:a03:2c8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Wed, 13 Jan
 2021 17:14:51 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3742.012; Wed, 13 Jan 2021
 17:14:51 +0000
Subject: Re: [PATCH 2/2] compiler.h: Include asm/rwonce.h under ARM64 and
 ALPHA to fix build errors
To: Tiezhu Yang <yangtiezhu@loongson.cn>,
        Luc Van Oostenryck
	<luc.vanoostenryck@gmail.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel
 Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin
 KaFai Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>,
        Nathan Chancellor
	<natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>
CC: <linux-sparse@vger.kernel.org>, <netdev@vger.kernel.org>,
        <bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>,
        <linux-mips@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Xuefeng Li
	<lixuefeng@loongson.cn>
References: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
 <1610535453-2352-3-git-send-email-yangtiezhu@loongson.cn>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <33050fcc-a4a0-af2e-6fba-dca248f5f23b@fb.com>
Date: Wed, 13 Jan 2021 09:14:47 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <1610535453-2352-3-git-send-email-yangtiezhu@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:e777]
X-ClientProxiedBy: MW4PR04CA0439.namprd04.prod.outlook.com
 (2603:10b6:303:8b::24) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e1::13f6] (2620:10d:c090:400::5:e777) by MW4PR04CA0439.namprd04.prod.outlook.com (2603:10b6:303:8b::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10 via Frontend Transport; Wed, 13 Jan 2021 17:14:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7b45e420-af04-4a05-4f80-08d8b7e6bcfb
X-MS-TrafficTypeDiagnostic: SJ0PR15MB4204:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SJ0PR15MB42048A3A54505C89F4A4F5DFD3A90@SJ0PR15MB4204.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jovECfrSPHpmYSEJMp+W+mk3Wt+qkCIx4TviaoxDu2axMG+AvU6HDDbuW8DomdBonxbNFnWyYWVnXYNUBxiB9FmvYL7HzeYNGhzaGwlnsB3u4oQRGQuOq4aYAGjJc1+bIDpbylCkb5RNkEheoeRHQp/bIcxOT57DeU2cjOjrO37tFA42XaBrEnSc9on9g7HMh61lDqXoPdCKg/lTSu0pUv/Xk8d6Yz5aoOUSE62b81PwTn53gnmjNEciCJy4J5j2DYo04qyvkLFNR/xHxWbMvGGwp3SA7CdrD0E1q6nLtPLB4pwt9xQnKj/evAgbsaHB2b9NkHkoViku9ITB6juCZU6CeVajCXTLG8dF6lFCWisoGkibH1fn7mLUmhAeKq7SAwy+t0ZRF4GhY6ws1RVvWQQMd2yPNAclSxXAIa1fBcSztjc82pnmSEi/HMgfGzPtL7BYT/uEUTeiVj/q+y+PHb6o1VfxXtU9SIg5/YNbpRd3+uYEofdvRUpavlZxhq0S
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(376002)(366004)(136003)(346002)(39860400002)(6486002)(2906002)(921005)(53546011)(86362001)(316002)(4326008)(16526019)(8676002)(31696002)(2616005)(66476007)(52116002)(66556008)(66946007)(110136005)(8936002)(31686004)(36756003)(7416002)(5660300002)(186003)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?YnEzeDMwc3hDU1JCTFhlTnVCTVllbk9weU5uYWx0bnZid1VyelJCOUlJcW5L?=
 =?utf-8?B?VWU0ZzhHOUYrWWZxZm51ZTVYbE10RXRyNEtuZU4zQnE4OFpiRWQwUGgraVly?=
 =?utf-8?B?ZG1FUEJuQ3N2NWs4ekpKck1HRUlsTUNVTFFwK0ltamlOY1dlaG05bmJZVUdS?=
 =?utf-8?B?U1JtZVJnbEx4cEwrbkROUm5FZ0UrSXd6MkVYeWFqaWtuUEJ6QURVMU9sNXZi?=
 =?utf-8?B?dzNwVG9QQjBEa3RKK2pxcGdOaTVZdTRJa1BDUW5ramh3V3ZWSEVnK3BDNVRG?=
 =?utf-8?B?KzcyMm1xNHp6a0pQYW5VVjU2OER0S1NQU2FuVnlzcXplbUpwRTl0ZUZKZGNY?=
 =?utf-8?B?L2pIY1NreFIwd0lCWWhtYXlMMkpUNHdTUkdUNVNnZVM3cnhVU256TVZwNDhr?=
 =?utf-8?B?cmhTZUdZSHY2L2t0cjlJQjhmY0xuWm9KZlRwRTBmVVRkNWorTHA2Z2kwdE1S?=
 =?utf-8?B?QkYxRFJEZXFPU0haVDdqZnJWVHV5UFZjUVJVS0JsQ2tJRmtBSktJcnJBNk1G?=
 =?utf-8?B?VUhicVdWTERDa29SYkJ1SWswQWpSVGxNUDB1Q1N1U0lEMEh3SmhRcUNPN1Zv?=
 =?utf-8?B?NGorOW4rdUhxSU1zTytQTzdXN3lrdnpXN050VHpGMGdoa3M4bkdxeUhHWkdr?=
 =?utf-8?B?TU1EeVFKVlA0WlRUUUgxVURUQU95aXo4QW9kZTZzSWk0RkhLNmhtRG9VdWlp?=
 =?utf-8?B?elFxVzlXQzd1NWJHTThFaDdTMWdDa29DNUFCY0gzNys4bkhobkl0c0FBcmhV?=
 =?utf-8?B?c3psQ2RJSlJpd2E1R0k4R3dUb01VRHgyWCtjSU94Yy9NckI0WmlLSUNTYmJI?=
 =?utf-8?B?UjQxVVpaOTJHcDJ4N0IweDcrR2MrZDBDL21HL0RaNXNZNDBQQ2pCVk56UHM0?=
 =?utf-8?B?NzJrOXBtMDFkVmxHc2RFMWhMZVE3OWJyWWwvcEd6MFkzcFArVEdSREt5Z2RX?=
 =?utf-8?B?bVd2VjI5SHQ1cFh0dTVTOGNQSUdNcHN3eGpuN0lCRFZ0TGtOaHA3NDY1V2Nj?=
 =?utf-8?B?QmdqUkFsQVdiTW9rQ0xJZTRKT0UwV1JUeFV3TDRNakIzYlJ0OW95UTU1d3B5?=
 =?utf-8?B?RkFKU0FEM2s1ckJPVjE0dkZ4eEo5TXdybFZPSEljamNYcTJ1SDE2NWRlT3Jv?=
 =?utf-8?B?VSt5a1cxUmVraFdXbVU3a2xBWXZqcjlBaGRSak1Dc0ZFWnhIeEkwaVdEaFA3?=
 =?utf-8?B?N3FjZmVSbmxxbGlmTE5rS0h6VjVTTjcxT0hVMXJIOFcwVXVPSDVGVkU4N0Fx?=
 =?utf-8?B?b29qNnNUWm5UOUJnTnViV2JoYlFmbWJNUGZVNmdjZW9GZE1GZGZXbWphdmRN?=
 =?utf-8?B?b1REZ1RMeWR0dVhESzBYcy9vN1UwVm5HdExZb2V6OW5CWU9DNXE4MnFrdUFS?=
 =?utf-8?B?TXl1ekVqZFhhT1E9PQ==?=
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 17:14:50.7816
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b45e420-af04-4a05-4f80-08d8b7e6bcfb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XPLHhCvxMm22NPSvBhqEHh68eMFFpRp8SlBupLuWPdHAye7QatVYGn/pPYbYiawM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR15MB4204
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-13_09:2021-01-13,2021-01-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0
 mlxlogscore=999 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101130103
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b="GrF/4GTi";       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=SfazGhJL;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=06473a7dfa=yhs@fb.com";       dmarc=pass
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



On 1/13/21 2:57 AM, Tiezhu Yang wrote:
> When make M=samples/bpf on the Loongson 3A3000 platform which
> belongs to MIPS arch, there exists many similar build errors
> about 'asm/rwonce.h' file not found, so include it only under
> CONFIG_ARM64 and CONFIG_ALPHA due to it exists only in arm64
> and alpha arch.
> 
>    CLANG-bpf  samples/bpf/xdpsock_kern.o
> In file included from samples/bpf/xdpsock_kern.c:2:
> In file included from ./include/linux/bpf.h:9:
> In file included from ./include/linux/workqueue.h:9:
> In file included from ./include/linux/timer.h:5:
> In file included from ./include/linux/list.h:9:
> In file included from ./include/linux/kernel.h:10:
> ./include/linux/compiler.h:246:10: fatal error: 'asm/rwonce.h' file not found
>           ^~~~~~~~~~~~~~
> 1 error generated.
> 
> $ find . -name rwonce.h
> ./include/asm-generic/rwonce.h
> ./arch/arm64/include/asm/rwonce.h
> ./arch/alpha/include/asm/rwonce.h
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> ---
>   include/linux/compiler.h | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index b8fe0c2..bdbe759 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -243,6 +243,12 @@ static inline void *offset_to_ptr(const int *off)
>    */
>   #define prevent_tail_call_optimization()	mb()
>   
> +#ifdef CONFIG_ARM64
>   #include <asm/rwonce.h>
> +#endif
> +
> +#ifdef CONFIG_ALPHA
> +#include <asm/rwonce.h>
> +#endif

I do not think this fix is correct. x86 does not define its own
rwonce.h and still compiles fine.

As noted in the above, we have include/asm-generic/rwonce.h.
Once you do a proper build, you will have rwonce.h in arch
generated directory like

-bash-4.4$ find . -name rwonce.h
./include/asm-generic/rwonce.h
./arch/alpha/include/asm/rwonce.h
./arch/arm64/include/asm/rwonce.h
./arch/x86/include/generated/asm/rwonce.h

for mips, it should generated in 
arch/mips/include/generated/asm/rwonce.h. Please double check why this 
does not happen.

>   
>   #endif /* __LINUX_COMPILER_H */
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/33050fcc-a4a0-af2e-6fba-dca248f5f23b%40fb.com.
