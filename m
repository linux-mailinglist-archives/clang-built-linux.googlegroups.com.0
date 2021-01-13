Return-Path: <clang-built-linux+bncBCSPFHXUVMKBB36T7T7QKGQEY6CTJPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D262F50AE
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:12:17 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id gj22sf1684813pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:12:17 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610557935; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZwdnpG8BUUGJjcDqKt9OzMwZE5edYjbVmVFxwgVkeNb7NQC8M11pjBhbFWyH5juMO
         v1orazljnoASyoPHI1WYLukKMafsnak5zEj+ikaigZFfQwQ4M6jsapxJ8ZFH026zzdqr
         HwrPXXipLmZCzAnnEP5Xl6MameKiGMS7/UDu487Py7cBK80CVGxqjUND4uCYd1Kjyr2F
         U2M2jU/aOLDjsDrim2LsxL31pLDFesftDkrVCjozScvzlnmv45+mfMUJr+5OFzgfCL1/
         oXL4oGsdSzeqrt3OMr0qIPBvZ2GqY/jGSFEfLLs1eoJhDyaVf8PtrQjFCeJoIXCRaZKq
         xrwQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=ofrPKO5tJ2oKiXkYPi+VHz70tOzOXwAHHFBJvyIoTY0=;
        b=gwRPdu6WIRR2EZIr/LuffH7SBX4yLgvYDdg2fHnUEsgLueUwpEeUw5YpcEiVQZLtED
         9lTYSuDi5lUjmV7IaQV1GdUbqcVYs5LzdeeguoMa6su5jGE10wSeG+yUFb+K1/G+w6qZ
         p2VIORRPizwP8zXEq6DgnychqXVlIjd3WLgJxrXZrDdPYZKfPQ+Vwh/5ZSmaPnIGl8Tj
         u3Tkyv4PQISwj9T6ZTz3L+y7M7jLNaDHygUXMB4o0S7DaDbX5axsa85AL4XQoQuaVuDK
         Hn2rXji7e+mlZh8yBcCvw5GIKegzt1NGxcEVCwOVwQ1oB1Y0hsxQ9rhEu8ff+cvd1/QO
         Bh8A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=JgBkHkov;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="OtlTP1/X";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=06473a7dfa=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ofrPKO5tJ2oKiXkYPi+VHz70tOzOXwAHHFBJvyIoTY0=;
        b=dcbfa/b0+srdCLv5ZWW1jkD2rKAWpBRBDiCb53KiUg/qeSAtDMeUCF5xG6hkJjUt7S
         B6RimD888GMjouOgQm9xqLukBR+6kyeIGyFTNIQAirNyuOuBO3UudEFjYJrc922ibOux
         h5uN1pTV7aATzDmRjPX43GrdpOxjf53+MT6rvfSTe/Cx9mJiqA/LGWhe64VPy9GLxM3x
         Ai+XvENeOIZKTn/px8Ov6tvEwLUk3EDqfAGO1wzWJIS81iL13xAyGYA5Rf3qJHuhbFMs
         ZihbNzLhNpTRp94z+tL0Ppn1qIYLGkelioxUc5Ms5t1OeXlbE4heSCgmKmBO7svkY8tp
         ijYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ofrPKO5tJ2oKiXkYPi+VHz70tOzOXwAHHFBJvyIoTY0=;
        b=Ryh1aJWQFlyYnO+dP0x2CvkyBEysQi1rg3Njp2/LHmO87S3XJI47k91aXyvaDJcleB
         yy1Lu/Ez4exmzkrcto2+AtdIgTcq7dUipS03ws9/aDq9vseK+nbrnOXcN5kDvvrTLtAo
         6gHc/cic6oFq6y5eG7zCw8NcYIwgGiMOz0ZU70i1lQyDXGAD6iTTaTZlV0urMH0yzSHq
         3ohWpMU7Pd+/KweP1OqyVS9ZMJjE0TLZititAyf4+yq+d/7544odLZQqM6AbN6uJZD9t
         9Uy+2uqP2GbmGX9LWxHrf+nSaqgAKqCg+YFB1nEa+F5FQXOOrhE5qTZ/GkCFu8UKWYRe
         Sddw==
X-Gm-Message-State: AOAM533Yos+l/NKUlMtRlhHscEOvJVTZRw5hZATf5Wei3HhzCQO2dzLV
	KhYbYRW7xndpNEKMn7z/qIA=
X-Google-Smtp-Source: ABdhPJyWHvq4vKcRsi953LFERdLHNsmyEQUhfCavkX+QeNRp+UHZh0AhKove89hEoPNBt+w3QzFApg==
X-Received: by 2002:aa7:90cf:0:b029:1a3:a176:f4d0 with SMTP id k15-20020aa790cf0000b02901a3a176f4d0mr3114531pfk.8.1610557935458;
        Wed, 13 Jan 2021 09:12:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22d2:: with SMTP id y18ls1390836plg.6.gmail; Wed, 13
 Jan 2021 09:12:14 -0800 (PST)
X-Received: by 2002:a17:902:52a:b029:da:989f:6c01 with SMTP id 39-20020a170902052ab02900da989f6c01mr3101095plf.45.1610557934744;
        Wed, 13 Jan 2021 09:12:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610557934; cv=pass;
        d=google.com; s=arc-20160816;
        b=beq9tVIgUCR5JTGNqMZ8z6ogAUksEx+fx9189lY2qyZ+LkX7jBWUGUEd6QEKzrQnqL
         4MI7u0paU86qVfQGHdPUq9Fk42UWWWY2UV7UkI+MH8MzTBqAVPNmtxr2zUTcpMA9HsYb
         9JhDvel5WqxpFebmdV3WzN6d5MN0JLidifJzPCxDcYevailVHFBXwzbBf53szi+qaAUF
         ltBH5kVuHnSEpFeGdGC/Nc773CbD4uUQZsCjPNCkTPZpR+ft7aYpnlxeaoB/pnqVuX9Y
         vli0ySNRBdKOcokA0i35gp0GghIJHItZBK+INevNHs2U2KVtF9G1F1G64BA1oi9NuZJs
         mVGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=T6pNHeN3c7nS04x/FGaP18p57ZxxbBMCVZUc/tEFFXo=;
        b=bG404tuJ1I65XeVbHQV6gyPAoLt1PXHB3eI1l/XlBjozq53Dg40PP4XiobeKPO8KxA
         V9LfEUx3QTmvbqZPg1mShj/NIF7A8gNC1WFOs6KKUZNbIwFfGRpADqfzR1AbzJugWMDF
         gFkyZbcH3ueL1YPMBNtk2IEVU+xPAEgIx7dZigmcfzXYczNQSiurUGImhC+vZ6cK1AsN
         35sUmsbykmVTVTjMTW0BOOXFz/cK9zdnUoqcdQLySns7EI1fHVF2KVe4KscXYnX63WS+
         CYU8egOT98/GcbVnOySmJkVz9GG2D8rlcZt/tocO3qAMQVf+acibj/YSord+o+yQpTEn
         g4JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=JgBkHkov;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="OtlTP1/X";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=06473a7dfa=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id z9si182780pgv.2.2021.01.13.09.12.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:12:14 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10DH0fVp005845;
	Wed, 13 Jan 2021 09:12:10 -0800
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 361fpue51c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 13 Jan 2021 09:12:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.228) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 13 Jan 2021 09:12:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LF+36XqzyMx+hNkqgyDJlupsAxlUPnHM2cftAvvSaoLS6ZgxGJZgJACAzu+4Hdc+eh57aUcCTIL/X8EJthD0rgEw1qoCX3zjP2rMP33PDqlan5ERL62IeWUwIw2QyOklPc+y4QsfZB92qAYJMvtgmQVB4v3Jrr0BGqGM5SHp81Y5CfyRxJRmAXMCmaViDxm8xM7oRUvebtNw61CVJtCfu+D4SJUY1+o6Lz+BSYPwevUx0BqiqSbPlD0M5VifXtxHpX9kpOwaIjN0W7zXrnSnkuF5IWd0gatQQ6mOS8jMa04qU5miiroPPvD8FszUWnziL8iMzTRVdC5POVoTmbAcrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T6pNHeN3c7nS04x/FGaP18p57ZxxbBMCVZUc/tEFFXo=;
 b=g3Cakn2bjEODGbIw0CCv1/rGUOJV6Lsxpsvi6QpSOyytxomv+qoElJ5pLsCeKTJOxTCQHia0XSWvAnHkrFnmIa/fNRiM+OWBm+sU/b5//od9erSpO7e4FkVZsC+ZKYCqQOioOsPoH7rnXRwXpBfE6OA5RmR9ELgypMOIuAeWcfNCzqp5Znd6dWeXFBT7+iCk6WkzNn7Cw4BbaTfVoB3jU1wr5s+TtUkGyr5DSkT5TbRUMPNpNCAVw6fDRP5yMVKZ8wGIhV+Ik2dJ+Q0GCsbZdQnZsJw63VgvwWSIgU81PAobycobYk2uHm1oytvVVFJ8emJmcCXUBfwEU2arMQP/7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB3046.namprd15.prod.outlook.com (2603:10b6:a03:fa::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 13 Jan
 2021 17:12:07 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3742.012; Wed, 13 Jan 2021
 17:12:07 +0000
Subject: Re: [PATCH bpf 1/2] samples/bpf: Set flag __SANE_USERSPACE_TYPES__
 for MIPS to fix build warnings
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
 <1610535453-2352-2-git-send-email-yangtiezhu@loongson.cn>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <e3eb5919-4573-4576-e6aa-bd8ff56409ed@fb.com>
Date: Wed, 13 Jan 2021 09:12:03 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <1610535453-2352-2-git-send-email-yangtiezhu@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:e777]
X-ClientProxiedBy: MW4PR04CA0354.namprd04.prod.outlook.com
 (2603:10b6:303:8a::29) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e1::13f6] (2620:10d:c090:400::5:e777) by MW4PR04CA0354.namprd04.prod.outlook.com (2603:10b6:303:8a::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10 via Frontend Transport; Wed, 13 Jan 2021 17:12:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 59cfa8b0-1cfa-44d3-97b2-08d8b7e65b29
X-MS-TrafficTypeDiagnostic: BYAPR15MB3046:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB3046D3DFB0A6E2281A0D54B9D3A90@BYAPR15MB3046.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:843;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lpEmsJKnbjuY6+6VV1U6X7ihvUe38zMxwqpvBM7j2lMUybp21PezBn+XkqOB8gC7FHuFdt29PLD1KeGzK+UhxkqqIJDkwpJlmCYSr6mHNM701+jq6j2DAgeVzRlgIdZ6k56R6JD44mz6hDgl9F2A0jkdZHi5LGoIrgDrjlNzXYr0sF6/ckNcxsobP1GrT+xpZN55EyQVHDg8QcNN2LFJ+MzQccEar0Y7bIAnlYWDofBe1VQYZZ9JqIU09o7mwswtotikI48EUndx6ZPSLoKfqMvXIWrr1n6CyyBuSCOi9koniLvbvXldY3NA3RYMtgub+K6FKWvH0bcMLpbkl0KMN/X38abwhYS8M27Fa4LjMbJHzg23Xf2Sq0GpfvrLow8c+z2MQ3cMcdQil5mCMa0HAN/5sXWsidGWLltH5FK5qWu86YPcpSk/k63eT5BQw0yP2aE/liqS3Qx2WcJ7HHNBCc8qUl7aqq2OchdstuYQuFYhXASCeOLm4uhzyBrzk4k0
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(136003)(366004)(396003)(376002)(346002)(31686004)(478600001)(66946007)(8676002)(2616005)(53546011)(31696002)(2906002)(66556008)(66476007)(5660300002)(8936002)(921005)(52116002)(36756003)(7416002)(316002)(16526019)(4326008)(186003)(83380400001)(110136005)(6486002)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?OXpyazRPUTE4V0lCTXVWbXVkWkdPL3EwRWl5a1RwOTQrN2RyQlhRRE1QYjVB?=
 =?utf-8?B?TWQ0VTdkcEFLdUFWNFBtREJlWDRBcGVWdXVrSm55dXZTTERSdDdtaWJOTzZ3?=
 =?utf-8?B?dW5LMEJGb1hRa2JwTjlwSTRjNXYzOFgzWnJ3YlFSNXFSbUlqbDdLbjNtYnBZ?=
 =?utf-8?B?Um9zMEVjbWJzbFpLQW5TTXdRbnpnMkx2UWNIRkZLSnhFRjdxRE14U0diTHZv?=
 =?utf-8?B?cHY4dVVoR0dnYnZmaHZWNzRMbkY1emlXb2ovUTlHZjU0UVIzaGpGUG55R0JZ?=
 =?utf-8?B?MER5WjB4a1ZEV2RTc0xLWTlsNXdOSnFUMUJDQ1dnL2E3ekVDaUFlYmZZbTRk?=
 =?utf-8?B?M092YXhFbmh1bGFjcmRVNFR3RWRmOEdEbXY0SHF4MUF4RXJSKzlUTURLV2Ez?=
 =?utf-8?B?eHdiR1djT3RBVlFoZ0x2UGNxUHovZTI5UkcrQUhqOVc0S3hmdDFZa1Q3RUow?=
 =?utf-8?B?ZUdrQks0UlFCZDdxRkFDSkJpV1Zua3crTUNYR1ZXME1vbnQydlpIZTI4ZXcx?=
 =?utf-8?B?ak9mc1BzNVR3QnRMaDAxYitaZWxRN28wU0pwZlVOZUVJQUtZSFJGalNjS3la?=
 =?utf-8?B?WGl2QmhrenBHWW1TUWNUai9FSlNSZVgxa1BmaGZJdVJaQlA2TXdPYXo3Rllo?=
 =?utf-8?B?ZDBqZFM0aEplYnRZQUM3UHBMU0I4VzR1dC95VVkwVUhOb050emlaVnVqQmlu?=
 =?utf-8?B?OVhhZDV0UmVZWGxCb05vcjRubm5aWkpIOVpqQWxlK1BWSnBpTlAvSHVtdzVk?=
 =?utf-8?B?RWpBdm84REZld1NmNE1BMkFuTUNGVnVpa3pkbnh0dVpVM2xTVmpta0ZpYWhM?=
 =?utf-8?B?L25tUnc3RTZuZzlxVDBkTHZrRkMvZzh2eUxJM0l2eklNWWdLTnNkVlhGTTgr?=
 =?utf-8?B?NkgyRzh3NHVRYzFKcDdDY3VhMDNsd2pNM3lOSDkxL0hnbTFyM0hWWVNBaWJz?=
 =?utf-8?B?NXoyaER4SG9GT3NaRWxQdWU1aml3c2o5ZnpKNkliQ3NReW1QZ1FNMlgzbW1w?=
 =?utf-8?B?c2lGQ1JQSVVpeUR0MndHNDRBUGVDZE9wVE5jNGVxQlB2a1FscXJ1cHhYVTdE?=
 =?utf-8?B?Qzl1aHZsOGo4V0EwdGRneTVHQXI5WEljZlRLM0RIS1BoQkh0elhIREQ2OWdZ?=
 =?utf-8?B?Qm5NdjR5eU51eUgzS3AwUjhReGJTUERzNG1GRDJ6NUY3Snh1U0RmOUh2VXQ3?=
 =?utf-8?B?L0FWQVl2NGFoeTJmNmM0dWZrZFcrc3pmZFBlNkpVOUtZL3NIWml4c0w0REZy?=
 =?utf-8?B?ckdkZU82Qys0K2NDNFBLM0FhYjROaDZIMjhidG91LzQwTE5hbmo2V3cxNmxY?=
 =?utf-8?B?YVFJR2gyK3ljRy9IUmlpVE5SWnYyWG01VGhkMzQzSkJqdXJYY1JLSFdBSnVO?=
 =?utf-8?B?MlhSQTlpR0lnYUE9PQ==?=
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 17:12:07.1209
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-Network-Message-Id: 59cfa8b0-1cfa-44d3-97b2-08d8b7e65b29
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 65BSGNJzbtS0DB5X+2/+85TMmc94ye+wHQEHn8dOO/wSiRoaHlckW2RsWr7TUVgX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3046
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-13_07:2021-01-13,2021-01-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 clxscore=1011
 adultscore=0 lowpriorityscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 mlxscore=0 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101130103
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=JgBkHkov;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b="OtlTP1/X";       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.145.42 as permitted
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
> MIPS needs __SANE_USERSPACE_TYPES__ before <linux/types.h> to select
> 'int-ll64.h' in arch/mips/include/uapi/asm/types.h and avoid compile
> warnings when printing __u64 with %llu, %llx or %lld.

could you mention which command produces the following warning?

> 
>      printf("0x%02x : %llu\n", key, value);
>                       ~~~^          ~~~~~
>                       %lu
>     printf("%s/%llx;", sym->name, addr);
>                ~~~^               ~~~~
>                %lx
>    printf(";%s %lld\n", key->waker, count);
>                ~~~^                 ~~~~~
>                %ld
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> ---
>   samples/bpf/Makefile        | 4 ++++
>   tools/include/linux/types.h | 3 +++
>   2 files changed, 7 insertions(+)
> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 26fc96c..27de306 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -183,6 +183,10 @@ BPF_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
>   TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
>   endif
>   
> +ifeq ($(ARCH), mips)
> +TPROGS_CFLAGS += -D__SANE_USERSPACE_TYPES__
> +endif
> +

This change looks okay based on description in
arch/mips/include/uapi/asm/types.h

'''
/*
  * We don't use int-l64.h for the kernel anymore but still use it for
  * userspace to avoid code changes.
  *
  * However, some user programs (e.g. perf) may not want this. They can
  * flag __SANE_USERSPACE_TYPES__ to get int-ll64.h here.
  */
'''

>   TPROGS_CFLAGS += -Wall -O2
>   TPROGS_CFLAGS += -Wmissing-prototypes
>   TPROGS_CFLAGS += -Wstrict-prototypes
> diff --git a/tools/include/linux/types.h b/tools/include/linux/types.h
> index 154eb4e..e9c5a21 100644
> --- a/tools/include/linux/types.h
> +++ b/tools/include/linux/types.h
> @@ -6,7 +6,10 @@
>   #include <stddef.h>
>   #include <stdint.h>
>   
> +#ifndef __SANE_USERSPACE_TYPES__
>   #define __SANE_USERSPACE_TYPES__	/* For PPC64, to get LL64 types */
> +#endif

What problem this patch fixed? If this header is used, you can just
change comment from "PPC64" to "PPC64/MIPS", right?

> +
>   #include <asm/types.h>
>   #include <asm/posix_types.h>
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e3eb5919-4573-4576-e6aa-bd8ff56409ed%40fb.com.
