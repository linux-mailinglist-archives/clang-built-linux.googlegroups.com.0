Return-Path: <clang-built-linux+bncBDK45E6X7MGRBBU6SOBQMGQE5VT4Q2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3CD35076C
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 21:35:35 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id v24sf1532299ota.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 12:35:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1617219334; cv=pass;
        d=google.com; s=arc-20160816;
        b=LtRZVaa+6VJsDCOveXwPRuNKRxlkeGE/I+XHGnnbVF27wBryjACYSWgiEtlt5EfZks
         Tf6SsomVwMGbSL/AXo2qTr+zo34O1LAB5z/7EIg9gK2jQhNNYzxb+u0vPwCBYpHg49VT
         o1l1iJdm+poDsN/yB5rZ+VWXBBBQAudhm8xUlz7XvahPkcR0CzEvYqDgDuUmTwEm8QcQ
         oPp4RjkhVqn/3BPMPRcm128yFECZzmSPmkpd+TW8vJozR5Y6pLR82j4DWi1TVQ+DfbBz
         sUDvqj7AkJ6vUkeuDepoi/aViwfi2TiSDpyKpvMEaEdIGe4W79Iddiehf70frW3mzmBe
         25mQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:organization:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=wyD4EY9YidUnKq5F0xRXbvCX5vcsrHjcLYEL7VCGxY8=;
        b=nphHkeLm3BA302/eHCrWMUX1AN5liYkZLIT8MR4T1XAcJCdhwX1iusD++RJScCzX8/
         +mylK/gMXpeUB06NbPU/BZ0ET6RcNjj751BhcJ9jsSItxaFo1sb5xoMhvujMEZ1LFKhw
         mfzi5RY41WkbQanJ2GaaxtnJQ+ym2oZvuXIgbEVJnlncakmTBdJkr2EIRbMXBCL7o4wh
         VjLnExzmYTK35mWad3lCr3cF502iCOSH9YAhz3pXI1tpXqT1uE1t9oH/ywg1JPGFL8a4
         y7oO4d7AJiMjA/8SDmXYIGgUc0CgmTtP05D1O81P4K2yBnEwjbfqW5+qE5cNJGL1UsoS
         3D6g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=HC3FVLIy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=rpa9FZqb;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of elena.zannoni@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=elena.zannoni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wyD4EY9YidUnKq5F0xRXbvCX5vcsrHjcLYEL7VCGxY8=;
        b=cD6bGg7c9ij41tMPEAI4Ri4tBza4kVHjGy+0gXlvN8jDIchVhy1hLU4L7cMc/mldNM
         S+Cn6f7fNihcIpU0wP9mPGarEMRpvYJI5PFc5XSpvCXBrkBWj/1pPsyH3aA4AbDndJKd
         tOYbFvMo0oSRat/wXsarheoR6f2mkhTXnnVhBhiyG75SWN1hMqQGxiUrMYhK2Z7oq0dZ
         8ndeRAG1jPlV2oxkGQP0QQs19l/EAQbxFkkvWpeHcDBS4Eigunp7lS6Hv0PjnFMVwtQt
         f5dHGrTV8rUg0m37MKfRC63wjZ0HAbnjyo87JJGim4isOcVwvnzaVkOEYGxzXuz5P9VO
         AH0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:in-reply-to
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wyD4EY9YidUnKq5F0xRXbvCX5vcsrHjcLYEL7VCGxY8=;
        b=QlFnEQHRPwcR522eL6C+Uux+lusA6aLaZ/VV4w7b1KUm740iig7n47aFyomlW83I5j
         tk6soJHM7FzIEMJSo7+1fLKT4b+tlsBdf42ImEDfk9OeGwzlIwO/ndurDd0KpBR30CFi
         dvPNe/FiUPueaAZeoNt6VGYVh2e/Q1G1ViVpgGhqS0hpJGuJirm6ZjYVJJ48tN0FHx6F
         21ww51072r/6/6ILvKRqjH0/gRwuPL8GZpwbO9qjSSVmAEKna1VDgSvrbKBjO7yHd2Rk
         UymUJXNxj3oh/l85Ltxa7npcnRoKi6RbJsbQtHSsEF9kpmG4XLao+eng9FgOCA8Xv3nx
         EkDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ybyqD+BuINlEBFNQrzSS2kyyV9OqnRnYHvuUe6h6UOojR/tHg
	iVz9/GevTWCdpvPBk4p0FxA=
X-Google-Smtp-Source: ABdhPJxoftJTka7tLLy1zOuhRBG/TyUfBRRsl+IYSo0VTghMuDnOPmEctOZ1qg1d0i8xhpcEPrnSmQ==
X-Received: by 2002:a9d:921:: with SMTP id 30mr3866724otp.49.1617219334619;
        Wed, 31 Mar 2021 12:35:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60ce:: with SMTP id b14ls803417otk.4.gmail; Wed, 31 Mar
 2021 12:35:34 -0700 (PDT)
X-Received: by 2002:a05:6830:16d3:: with SMTP id l19mr4015452otr.79.1617219334275;
        Wed, 31 Mar 2021 12:35:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617219334; cv=pass;
        d=google.com; s=arc-20160816;
        b=fF3nwi7Yich1g5mNm+BVuvqBz6Cj/mOhjveXvFp3EmOZSgG4IW2jtiDh0A2lWgLHlY
         hqrZ07ASHzj/t8h+DESggv/vdJ6Q6S1jOhn5mhnSzTrF+gHH4pyUsCoSMKvXRCGOaIWB
         bXU3QV6RBzkGeqsYNkwnKFUsuxFYp9FH6jdasU7islI0We/EwlpNglQxdS8QTpUaST6b
         SZwn2BrIAdB7n/Qe+jz4gTklXV/I0S36NB/TSSpLnrWUYaq1cyqc7NQgdBA55HqJXTBI
         Of4M5x1dMN3hSrUqGe/1si3ImTpewiNXGW99+sF0wxd3TZohV8+A6xlqc72RxdzlgWDP
         QJrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature:dkim-signature;
        bh=ccS5uq/8IJd4HJhN7MOCdRaLDGvQrCOq0OTrCiTeX3o=;
        b=YuIRaZxPX/m0LkmOXzervJsAmFsJVhvpWEDG8KdIGHVZYQytXlgbk5J3ZpKh+ZvPJW
         NlLOR7zFBEC0+kZBM48rEFrxElveW8Q8rtZnUC6hDX6fJVZ5+ioNh4YibCQ5WDGvmYns
         obptetoYw6DMReh3VmUy/FcKghqhHFxi4noHW7YPEdtWoM0DcnxfI1BStujt8XfCljFd
         1CxK2WRPaOJQjerPoov6Zlp/+G3nWyjejn5e38W3FarXWAPwSO5isKNNpMMOH345a5Jx
         BsGmtyPfS1CaiogE4KXQISLh+8puiWjqqcoo1P4pch1+wfX/mMt6WAj6oLPhwgtEVeAu
         uM6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=HC3FVLIy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=rpa9FZqb;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of elena.zannoni@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=elena.zannoni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id v12si224449otj.0.2021.03.31.12.35.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 12:35:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of elena.zannoni@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12VJYtnf033648;
	Wed, 31 Mar 2021 19:34:55 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2130.oracle.com with ESMTP id 37mafv3dvw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 31 Mar 2021 19:34:55 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12VJQemw194514;
	Wed, 31 Mar 2021 19:34:54 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2040.outbound.protection.outlook.com [104.47.56.40])
	by userp3020.oracle.com with ESMTP id 37mac5wbd8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 31 Mar 2021 19:34:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WqksoiQ3M2WbEDe9aghPQv66wF/6SGyt1mxLCNZN9jkqEOB4voHHE2Sfyj6vpFSzN9xfK4+b+gQ9xRpCgQ571cJ12jdTgr5lUmwqpOBrYcZXebzn1r50usXzLx1dLImpM2dkXtXUhbRc8I/T1we+sSV8JUZvVoCehSnwmF/tBevCRvgw5Z2UaBVIjEB/vlAE8XzHKVaLBJVTzDVgtLb8lde7QM3526pyrg6jUTWF0vEI6/mZEokCKkZQY61hL8ZGCSfV2V+wsdI6+0alQqz60SjOLgrd7fxIGOxfz2BiM7C3L8Pyhf/mls4I38Cy54SvkIHhWeQNmK8ivqgpDLaagw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ccS5uq/8IJd4HJhN7MOCdRaLDGvQrCOq0OTrCiTeX3o=;
 b=PywV3vuJ2s/T244jO15DfyKC9Yl+JF6Q3jOlwQNTe4vTBc/FcbApTB88MaX6tQp1Mbg8GXIsG5ppQCkKiXnVYpM5ftp/Sc8yaR2i4D/9v1RC2Qjrs+2d1VV4ab/uC8M0n9AnO3dLbVXWoxURBe4gRHvkXfe2adi6PjU3nVSEt0Sd9ZLlV4qK0fY8eaNvySz1MI254IDstE1SJAaPO1+ztnqKBUkTD3EVBTRaKx9fYlvxPIVxbqVpAAyvyDPYp/ZM+WRQVuzL6hqGKjNE+//oIIuB2IxwgFixpmf6fxw6yz8iAPZyd3gOmmBpxDxTNRz01sYGy4OeQ1jUESB5ge53vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB2646.namprd10.prod.outlook.com (2603:10b6:a02:aa::19)
 by BYAPR10MB3272.namprd10.prod.outlook.com (2603:10b6:a03:157::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Wed, 31 Mar
 2021 19:34:52 +0000
Received: from BYAPR10MB2646.namprd10.prod.outlook.com
 ([fe80::78b5:d2e7:4675:a122]) by BYAPR10MB2646.namprd10.prod.outlook.com
 ([fe80::78b5:d2e7:4675:a122%3]) with mapi id 15.20.3999.028; Wed, 31 Mar 2021
 19:34:52 +0000
Subject: Re: Plumbers CF MCs
To: "Jose E. Marchesi" <jemarch@gnu.org>,
        Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Kees Cook <keescook@chromium.org>, Florian Weimer <fweimer@redhat.com>,
        Christian Brauner <christian.brauner@canonical.com>,
        nick.alcock@oracle.com,
        Segher Boessenkool <segher@kernel.crashing.org>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <87o8fa3oua.fsf@gnu.org>
From: Elena Zannoni <elena.zannoni@oracle.com>
Organization: Oracle USA Inc.
Message-ID: <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
Date: Wed, 31 Mar 2021 13:34:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <87o8fa3oua.fsf@gnu.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [2606:b400:8301:1010::16c6]
X-ClientProxiedBy: SA9PR11CA0016.namprd11.prod.outlook.com
 (2603:10b6:806:6e::21) To BYAPR10MB2646.namprd10.prod.outlook.com
 (2603:10b6:a02:aa::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2606:b400:2050:24:8000::597] (2606:b400:8301:1010::16c6) by SA9PR11CA0016.namprd11.prod.outlook.com (2603:10b6:806:6e::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29 via Frontend Transport; Wed, 31 Mar 2021 19:34:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55f42264-a1cd-4353-64ea-08d8f47c0dde
X-MS-TrafficTypeDiagnostic: BYAPR10MB3272:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR10MB3272AC85D3862B335F09A0909D7C9@BYAPR10MB3272.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MnH3H+hvdcX/dILI9l2KV8BSoG50s8/VnXsZADAz+dZNvNhEDvB70Cve3slW37MsrBXud+syg/1jhJ8cTOFi7GsHBqS/KfH8pTVwNbwNBIr7S+N2Sh9aLMRKlkDiAeBkvitziKcso9etXi1bQRS6Djm5QBuX/S3njF/xfGJ81RNVZEiPrtH85rM4Mb6oEwQ/sCqcrgmPiEFD/Lrfw3JMROH76OArFmHYP3UCrHiNumjVg8jk/ZWZIllZInict9C2OG0R0RhoESvT3nNjYEEhfJJeVZnw/ynDfElJ5DIsbSSMK7kYxotqRnrWQ8ANp7lWck0CLnyDD9EBQpjf9jAJMTJW85vXsNkI0MlRnbzAdKPQGBvBLM2qJ2XeWrnh7TuNYSVGHcuaz2qS0X+vmmxFTIOS314wQiz1q7mlXsQL+XAoua6TXKMlZkvi+b8P47o31HCjKFzyN+FxsU7bjVGibmTEo0Mabtw5rDlKfD+NKNaSaZnjurVNeFl3CA05IYIWSCSp/hda28/oqACo58ivYNzSyBoEM57i9V7hq7zpZQSpawv4LdwhYtuzIBQkOQb1znzJRXdHQWOI93yXrmKFtpvCr94wWpST+QtqyTd3xmGewDFi2cjyZiNbK61GFRmLV/rNhOhiXmBCakmOvLyav+LyhjW70Pvze10gvLC/5PcV8dhZK1zMVS6aKt+iGGqtxW02hx/o/cCaI+d0Vc33KmFi4vp3+zuPuzOLdvWrYAgtHdB5tsB4uUArOD7ryVhgzrAI6l5lLYP8hxgaWP6bYMhErhKBcAGUQ7+79/v6YUY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB2646.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(39860400002)(136003)(346002)(366004)(396003)(3480700007)(7116003)(5660300002)(16526019)(36756003)(186003)(4326008)(36916002)(83380400001)(2906002)(2616005)(6486002)(6666004)(31686004)(478600001)(54906003)(8936002)(8676002)(66946007)(53546011)(31696002)(38100700001)(66476007)(66556008)(86362001)(52116002)(110136005)(44832011)(966005)(16799955002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?YXU2VUNSNjd0T01uREtHbG1tS2t6UDJZVXJZcTlQbFIySThESFdqY0dDT2dT?=
 =?utf-8?B?UmwzMGZXeSs4OHJBUGg1bUl0KzZLZ01TTzI4dzd2aDJyQmRIaUg5TU94cm16?=
 =?utf-8?B?bm5PSDZYTjdBRUFmdWoxWkV4RjBZTEZlOUxrSnJmekhBT1YzdW55WTNUS05q?=
 =?utf-8?B?NEI4WFRHNVpzUDdyYlZxdkJNcS9LTzY1QTNqYmo2UG8vVWNMS0lTWWVhbFlm?=
 =?utf-8?B?N0cxcG9ZdUZLZkJOUVZMbnVIRzZ3bWVMMktFbEt5bjdTNEJadWErdVU5bTdC?=
 =?utf-8?B?ZFZkTHdDRUd5MHNwZ245Y2d2SlpPc3kyUEJrbWVteU9hU0RsU01ZVTVKdDdS?=
 =?utf-8?B?TDBBMmJETk5lSmtMOVdYMWJnMHJJZE9OOTdrZ1c0c2dRQ3I4blcxN1EzQkND?=
 =?utf-8?B?czNzMXNkYjVLOVZhWi9NV1J3U1FXVWJFTlB1SVNNNVB0TXZsNm43blR0V0hq?=
 =?utf-8?B?c1llNndnejhUQzFrSUlGN21nc0kwYWlKVW1LWk1jZTNveEorZXJob0syUWRi?=
 =?utf-8?B?OHYwMkFLWURtNFhkbkwzaG9zYzN3eURqUTdvZTB4RnRBSzN3NXBiN2hxRUVH?=
 =?utf-8?B?SmpZSnVVaFVlandjYnpJWTFyakMwSm02UndNMmRlbzZ0NklFNGhYNWh1S1Fw?=
 =?utf-8?B?d0JiN0VQaCtBa1pKWXg1QXY2eUtWZ2xpbndLV1lBTHA2YjRXRjQyYVF2Uk5V?=
 =?utf-8?B?SEtGcEdoUmZhd1o0TWZDWEMwZW1lYzNWeEF2VTRCWmtaRWRTaDFQY09FMDBX?=
 =?utf-8?B?ZThCV0xucmh3WG5pYy9oeUgybGFnRjNWRTFNVGFLUldKSDZEOFpZQTloZmdS?=
 =?utf-8?B?MU54T0pucDlRWkhXSkxEaEt0VVhVVDliOTRrVC9pRjBwUkhxeWxSTjVpQ1NH?=
 =?utf-8?B?VlJrR0RQMlNMZFFNb3FYckpYSFV6TzJ2eGJIblpxalhqbkRCaXVISzVSQ0Fx?=
 =?utf-8?B?dVpCSkUxUnlrSGlqWWNpVnVpK1NXMngvMlRGc0k5a00yUUkzaERpQ2g3RmxG?=
 =?utf-8?B?ZjI2blkzQ0VjN1BLdGw2eUY0eVlqc0NpdDhkb1JTZDhHOWNKVHJSNDRnMXhJ?=
 =?utf-8?B?aXgrWDFrWWoxYlV2Vm5vMDhmZ1prNFpiVEhhZkNoRXR6amtiSGxRdU9jaUNO?=
 =?utf-8?B?Wm5wTjQwa1E4TWZyd0srY1ZsM2tKNnBzY3dUUm1Ec2VXQVdGbG1teUVCT0lU?=
 =?utf-8?B?YWJWeU85czRVWnpYOUtza0dyL2JFVDNrRG5ScVZ0dmMvZE9lTC9aRFdDNVVq?=
 =?utf-8?B?d3N3aXRjVVAwMlpNWERhK3g1K3orQ3E5S1BXTjh1OFZNWWtkaHdXcVp0eHRq?=
 =?utf-8?B?Nmh4ZjRsT0FpWFgwQmNyNDVJRWNqeURxUWxnUHBtd1Z6WDVZUWpFdnpBTzhE?=
 =?utf-8?B?MWp6RzVYUnhFTGJvd01OZWV6N3cyK1NoVFNIVWVRSDUxMlpmNlVtcjNaZFJO?=
 =?utf-8?B?S3UxNzJibC80VU9NN1JqbzBBS0ZtRHNPUzNheDJmd0ZEQlpNRDRYWlZVL0po?=
 =?utf-8?B?WHVmUkVPR0ptRE9CS00vckNFNHhGUkVvNFY5c2NUMU9VR05lMHBDVGR5anBs?=
 =?utf-8?B?eUdtN21ZakNCT2VSTXhLWCtWK0RQZFpBS0xPUnVMSjdyd2pReldqMDRicFYv?=
 =?utf-8?B?MlRzSUpOQ2Y0MDFzYngzZFJ3Vy9rRWVTMjJmK0tMd1RtWnBOeE85RlpoNEtE?=
 =?utf-8?B?QTcyRzhLZzQwa1htWDVmMXE4a3F3WWtDcUNObDU1VTlBeElKZW1peDVKaEdY?=
 =?utf-8?B?WGIyQnlmRWNMMVR4Umdacm1ZR09mY1JXbjNESXVXQThBUjZDM2pJbXpNYUpr?=
 =?utf-8?Q?AtP907o3ieZ0+hNM4Ibw+rImexyBi0R8Qid5I=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55f42264-a1cd-4353-64ea-08d8f47c0dde
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB2646.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2021 19:34:52.0195
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QjzIgKQenZEPUdold/qas4yz0UqDYuUMZFb0rUDTdeY2kbfq12LXkQ3hFKK8OClq9+GC2ZoB84BknJdGJ7WE6iMhD26YrGseuJlV33Htvdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3272
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9940 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999
 malwarescore=0 spamscore=0 mlxscore=0 suspectscore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103300000 definitions=main-2103310133
X-Proofpoint-ORIG-GUID: W4ZsSQYqB9aShWyTED3ZlKLhQ-qC4bhX
X-Proofpoint-GUID: W4ZsSQYqB9aShWyTED3ZlKLhQ-qC4bhX
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9940 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 adultscore=0
 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 mlxlogscore=999
 priorityscore=1501 phishscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2103300000
 definitions=main-2103310134
X-Original-Sender: elena.zannoni@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=HC3FVLIy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=rpa9FZqb;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of elena.zannoni@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=elena.zannoni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 3/22/21 2:39 PM, Jose E. Marchesi wrote:
> Hi Nick.
>
>> I saw plumbers opened call for microconferences:
>> https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
>>
>> I was going to put together a submission; do we want to do a combined
>> toolchain MC, or have distinct ones this year?
>>
>> I know in 2020 the GNU cauldron was co-located with Plumbers, as well
>> as a GNU Tools Track MC and LLVM MC.
> We are actually discussing in another thread about abusing LPC's
> hospitality for another GNU Tools Track this year...
>
> Regarding the micro-conferences, I would be ok with either combined or
> separated.  I think both approaches have their advantages.
>
> In either case I'm up for organizing the GNU part.

Hi,
yes, so, it looks like a GNU toolchain track will happen again this year
at LPC (in lieu of the Cauldron conference).
For the toolchain related MC, we should pick a better name than last
year to avoid people getting confused between the MC and the track.
Something like "toolchains and kernel intersection" or similar.

I am neutral on whether it is with LLVM or separate. I guess it all
depends on how long we want the MC to be.
If there are enough topics for a double slot, you should request that
sooner rather than towards the end, when there might be no extra slots
left.

elena

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/403153ed-7953-c42e-40a2-6ad313acd661%40oracle.com.
