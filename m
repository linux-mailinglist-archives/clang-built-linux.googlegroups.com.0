Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBYPR7L4QKGQEX4Y2FPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id F22FE24C4DF
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 19:54:42 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id g13sf685748pju.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 10:54:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1597946081; cv=pass;
        d=google.com; s=arc-20160816;
        b=r6uAeO++u6Rp7F9UMG+B4B/s+HBJz+NdHrN4YiVwgbjAGiPCrrucXBl562FZDK5jYl
         q0AECz5L/BWmM+mJ5IE2ml356iNtOdKBq+zUWi0cLH9YFMtaLcw3XqrQGWQ7Wf3AZlzd
         4BABXFl6R1g4v4WoRFpNWE+7FW6IROXl4hidYhQOU4ite+9fe/JX86Bp9TXL2yxD6jm5
         4AqhA98biEFeLhjb8G/xa3Xq3nqbBTs772fgTLmFh/gsnzm85JbwDkyNJU+Eo8LB1MXt
         M0kBc9cBpB59ENj2YFVeRq/cboyouLujaBzY96TLIlltEfOB5VtSjuTKAdc7Fq59DKlv
         L/ew==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=sBMWzoyy6OQijvf7sTRZgYT9w+X+RDRp+lz5iBqtBO8=;
        b=d9JEkWo2XwesIfj/f55RSOovyR0rUiMxSYkpp1ZoMjPDPZWJMsXXVvXqK0e0z+3lVz
         iQq7F9Vkk+nGNomDwOhUru0LcicB4uWybmIILMJL17quMQt90M5Yo5zbTTta1eSoip2d
         HdK+u1/zXKlaAz0FF+zxeI+YBZ0Ytl0j4XO1IbCvBR4L9NqpH+kiUb31Xblrk/IBG86K
         VGQTRH1h6dnCCI7sssznUlIVBXdzRtZIWhxHaVM8R8M9IenNiHekPuQl/2Ji7LUPuD9Z
         ela36qEXBh1ZtHf00wcd2UGhBIJl1pVFWNzmwKge9+uQbVmUtCQMHz11xtyCdv8jAWtl
         4ycw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=arTd6ucn;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=ZkX3YNtz;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sBMWzoyy6OQijvf7sTRZgYT9w+X+RDRp+lz5iBqtBO8=;
        b=r5zeJcEK0YRdxWbJnsiKo9Qn5Tw6OAeOtiyx+owG4S9dnsnXRhWLN9+qHT4LgIx50h
         NarCQZW0gYGzfffRPJhcAthB0y1/mjuAUgtdjT0cZUcrzDJjykqmOLTMGXPaFMIORjjF
         2Q4nvt0w9al1Zp7Wc/+yA5iyO/ZsDVNnYXvTfqpqCCLFM5VlMH6qi4flzRy9IZZNxm05
         0TmJn12zaJUy+IHcpzApV0Jjf4+5OvOI5N17Bw3RerR7LReb4HXF4c/jlV015QyR+VJS
         aeueWuNRydr8DLf/x05E33Y4rmPEjR5RuTfCxL7k6Mb3lBaliL3VnOXLkHY61eTfPkGp
         M4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sBMWzoyy6OQijvf7sTRZgYT9w+X+RDRp+lz5iBqtBO8=;
        b=QmLA7BqZgOryKdQ8+3NZgCB0qdwDlMPyMJdjLiw1vVljnu5MwkfmPESmFDT4o1NEGO
         mjg/It3ctKcN/bHV+q8K3F2YR952g1NG5vXLL7wU7wDQDqDW3bPqv8KLVm9gBvT8L25u
         RQCHHEfQ5LAez1kL0syzbm3gfKNGxl5qu56JxkS3G7sAE0CTrThyaxf98EB7qMviVbRM
         S/7lOeoVlQ5v4pslL4d/MWzG8G+lYDEb2VqxX/wVrl0rvTv75YUh8wPjzElEe5wThSYu
         znfMqdiF/ZKo8UautAXG0A8iDAzAVuPCk5/nHt3E/71oG20T25GOejYoivKgCJiMQrma
         GpwA==
X-Gm-Message-State: AOAM533B9IrN/Cl0SnttOzSOd/7ymjI/K35k7kSyt3pg2Y5i1CHGc2Et
	K+i2Rl+xPHcZh9CP9ovybvc=
X-Google-Smtp-Source: ABdhPJweE5n/U/JzmWAC+xl8OTER6wQrOU8a4CVZkPFDoqFxhjCkgIcsHLNWV447jdpcWKUzND5+zg==
X-Received: by 2002:a63:4144:: with SMTP id o65mr10106pga.8.1597946081381;
        Thu, 20 Aug 2020 10:54:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bf04:: with SMTP id c4ls1132833pjs.3.gmail; Thu, 20
 Aug 2020 10:54:40 -0700 (PDT)
X-Received: by 2002:a17:90a:890b:: with SMTP id u11mr3276952pjn.114.1597946080914;
        Thu, 20 Aug 2020 10:54:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597946080; cv=pass;
        d=google.com; s=arc-20160816;
        b=n2IKGsTCYi8kxcc14HjJczEZkIuBatkYAHBof8dw/3nocueOwAZqjCwVxRCTPwJ2aU
         Eq28E2m95qHcMKX32fRYXH5jGXIEikqLIHond8hVGc4qpijtbHDAQpsqro8f2dmXXV+B
         BlGhmJx29AecrcIZosYXZ/wmwg9c1FwVUuP1EFpa6Ro1Kdj1KF+FHtUG081sv3pejYbL
         B1YxmOMRN1ovH+4EPQtpm+o8n8baa8Mb/sP7TbCaXBJo6H2WVpafGPLbh1EYhMVRWZZ4
         bEAwlKXsXa3NxCBSugdajbZw/OsVtAlWgRquBk7ZBCOPanti3aVLNREKCts86/OND4N4
         KkNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=fwHgBjCe+QJOYINpQnLQdOuHsRc69Kt/wHePFOb7hco=;
        b=D1vcx1nSnl5qmUM1IOy19+zVOAnxzNsiBN0nbQPSqqB8e5pWewPOLLngadb0sdrPtb
         9l0L8GeIifk/7xYFKxEWhrp27PCICEPwcSrizwJOcI/YZmXtXVi4AwK7zABJV242xIGL
         k7QDHXMfzz5l5INMuAe5QymCjtBQPa1Ab33ZOoL6aJbF3DTcf48AMWewNDMrKhssS4ps
         YGy9rkBYTyKqRnphYE7dixcAYDDjP6GJx8Iav8Wajm4WAyBOXzg2A4xn4zx5TNQjDz8W
         eo4ppfEsQsfM6SmxGpbji6lPgA6TJ94+YMea07xOOGbZhYCwbRm50jU3cIOmSIbUzn8B
         LjYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=arTd6ucn;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=ZkX3YNtz;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id a24si163417pfk.6.2020.08.20.10.54.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 10:54:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.42/8.16.0.42) with SMTP id 07KHqV9N028593;
	Thu, 20 Aug 2020 10:54:38 -0700
Received: from mail.thefacebook.com ([163.114.132.120])
	by m0001303.ppops.net with ESMTP id 3304jjfm5q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 20 Aug 2020 10:54:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.199) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 20 Aug 2020 10:54:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hOsJQVJWK2ipEi4mbooeAQPqOISJKNrq+GLV85WOpiHzlKLe3RFrUuGczaCnybcez+r46kHPKwyOmPH5cjG0lzDf4th+jEpmyi4zd1YlBh1vd76mr4N/pslcV7xJnB//MvkLEtT1BnSFA0z4T4sTkHusppBtIXTCYZ94Me9ZxQr2wuGLTARyAM2/M4GgTQPNNmsdDhkBaza7e/CLsDIndqqW1Lw/tEMJr/U5xmKOTQevWvEWh63ww8RK5mzTM8sxWHPjoHioZcKpG0l/WGS4Eqw4QB35Rua3f7IwgW6hSsIgLLzcQCjP3JXe6TFWYllShSHqkRgVd/G2BMTmrKV9DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fwHgBjCe+QJOYINpQnLQdOuHsRc69Kt/wHePFOb7hco=;
 b=Rg9Co6/e/Iqea1NyxL30wgUmXyVxO/t79RSuZVXwYBhX+uVLAab+uLe32M5evMeTaLm2ViXOrJX1CskgItyMWABZhjLQFrSAI58Uac7VtvgQxkjMCG6yEOYRIAqPZCGiuWNKYE/tPyFISqh+MXGoxkN1gCVU/epEBR3wUNKzxlb8oJ9SnVzMPXw9q/6nWCV8GKQFU4aAK6CAqzY06ElV6IbS9fkg1H99nyofmnfXcc5fvPyFVcMV6U9kuiI1SVaqfB+ZKRJvW9vn7tVxc9LEt7MV5TWB3NEIbCUe0lz4kCFoMiEgg0oGkkmV/KPPxlsrot8aGQ1rSukIrvNo9scHug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2198.namprd15.prod.outlook.com (2603:10b6:a02:8d::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Thu, 20 Aug
 2020 17:54:35 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80%7]) with mapi id 15.20.3305.026; Thu, 20 Aug 2020
 17:54:35 +0000
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong
 alignment
To: Mark Wielaard <mark@klomp.org>,
        =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?=
	<maskray@google.com>,
        Jiri Olsa <jolsa@kernel.org>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        Alexei Starovoitov
	<ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Nick Clifton
	<nickc@redhat.com>,
        Jesper Dangaard Brouer <brouer@redhat.com>,
        Network
 Development <netdev@vger.kernel.org>,
        bpf <bpf@vger.kernel.org>, Martin KaFai
 Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>, Andrii Nakryiko
	<andriin@fb.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh
	<kpsingh@chromium.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>
References: <20200819092342.259004-1-jolsa@kernel.org>
 <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com> <20200819173618.GH177896@krava>
 <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
 <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
 <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
 <5ef90a283aa2f68018763258999fa66cd34cb3bb.camel@klomp.org>
 <7029ff8f-77d3-584b-2e7e-388c001cd648@fb.com>
 <a6f1d7be73ca5d9f767a746927e7872ddcf18244.camel@klomp.org>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <35b05eda-f76a-a071-d69e-9ba8c6f48382@fb.com>
Date: Thu, 20 Aug 2020 10:54:29 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
In-Reply-To: <a6f1d7be73ca5d9f767a746927e7872ddcf18244.camel@klomp.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: MN2PR16CA0032.namprd16.prod.outlook.com
 (2603:10b6:208:134::45) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by MN2PR16CA0032.namprd16.prod.outlook.com (2603:10b6:208:134::45) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend Transport; Thu, 20 Aug 2020 17:54:32 +0000
X-Originating-IP: [2620:10d:c091:480::1:7ec1]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1244b5aa-96c1-4bc2-f481-08d84532198d
X-MS-TrafficTypeDiagnostic: BYAPR15MB2198:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB219850F9ACB5D9264839C39ED35A0@BYAPR15MB2198.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cgAu6J9JpMXuczsKb4UXs4UUIshfBQBeHJcgLZHxeSpJSUtA+FqvBsUbw6k6VEks0Im11Qt/PDaeG6Cimg/YMhv014IH4CTTKVf00xTU+Qv+2CpqEEpJLWjNTlc34xJ0vYyMDXU/nS7HXWeBRI7kwX7PsKqwW/DiKkgFHnpCoO76boToByiJqUTXNxbE3DqrntqO/8hE0NzhSfj4sgPVOs2vEVoTdM5xTzNvyWnQlARXNdSydCZo99qk0Wc7jwMkqDKjn/J5FtO3FT92mQtni8mglyt+t4PvTUbKg5kMM3fFRF9BXkW6wAP6Iw14Cc5+K3Xf7ehp26RVsNC/zWLKPw7fNKFTK6p/s7yNpGr9SR/Nki21wCWs73Iz18g3LX+TGlo8IJLb9QTZN93HEkqTC8ZRWDMGOKFoqqjYfBS/OaU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(39860400002)(396003)(346002)(366004)(136003)(31696002)(478600001)(316002)(110136005)(956004)(86362001)(2616005)(36756003)(54906003)(6486002)(52116002)(6666004)(186003)(16576012)(31686004)(53546011)(7416002)(66476007)(8676002)(8936002)(5660300002)(66946007)(2906002)(110011004)(66556008)(83380400001)(4326008)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 1LdVivFZ1kFMO+3omR8w20eqI+Pc8DBEn9TEzr/kNNdCaXB+0vro/8YiiVCzAgNR5ficQZkNvFMId6RuAtoGcnspLdyI28Z9iP7hzLzT1z98QJ88NuhgYbQSWBrI6vYDb9ZIyn72jakz+8WwUxCI2Ez17sc9KttScArqn+uFp/hY+CFkEDfF6M9chHhe5DNZHaOWbBpSkGUJWSByNoonxBVVEyF4tmQNKtbfB/uGnVrdsJCR85SOxxLQTuqsKOqEK/ijHh89HE94DdzSibKjz2bB4CstRSuIbJkBt0maKXPV8cr0haSf8yIJp6U3cPnH3dhLo4vA7mPzuAEbkgg5PewyKkULrDEqElfu8FWu2gtj3SVsyUo6Ap2DXpd4iZxHLbYXw5QcGXeoSIrb+rdivJTabnveHu6UceNrGSn3cNoBZPgFAtjbEmSlDf5xJarC0KlT14/4A+hDq/vmtoSxN8eZGefiMR82NwRFmaNQoCk8qUjIHKQAZ7aniDlOIV77g7TPW9Wjlp9HDQxyTlkU9esUwFcUs5Hb9zK7tzV/b0chLMGddvtmA7fLDMI0Lx5sUwQMf186FG1ZH075fkruGNtseMflcyjusUieP2eYOS0IMVppTEThe4A9zYjjsbg4UsODghWgElNsYvQ6UoD4EAZMVO2pRycyATf5oUs0BWE=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1244b5aa-96c1-4bc2-f481-08d84532198d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2020 17:54:35.4898
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ojzU6FNsC5rLeQi63O+QOllswYClNza7AVrCFbHeuXvv/bJFOXoQjrZ8t1uTN6Su
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2198
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-20_03:2020-08-19,2020-08-20 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 impostorscore=0 bulkscore=0 mlxlogscore=999 phishscore=0 mlxscore=0
 clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008200145
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=arTd6ucn;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=ZkX3YNtz;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=5501885a99=yhs@fb.com designates 67.231.153.30 as permitted
 sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";       dmarc=pass
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



On 8/20/20 10:36 AM, Mark Wielaard wrote:
> Hi
> 
> On Thu, 2020-08-20 at 08:51 -0700, Yonghong Song wrote:
>>>> Do you think we could skip these .debug_* sections somehow in elf
>>>> parsing in resolve_btfids? resolve_btfids does not need to read
>>>> these sections. This way, no need to change their alignment
>>>> either.
>>>
>>> The issue is that elfutils libelf will not allow writing out the
>>> section when it notices the sh_addralign field is setup wrongly.
>>
>> Maybe resolve_btfids can temporarily change sh_addralign to 4/8
>> before elf manipulation (elf_write) to make libelf happy.
>> After all elf_write is done, change back to whatever the
>> original value (1). Does this work?
> 
> Unfortunately no, because there is no elf_write, elf_update is how you
> write out the ELF image to disc.
> 
> Since the code is using ELF_F_LAYOUT this will not change the actual
> layout of the ELF image if that is what you are worried about.
> 
> And the workaround to set sh_addralign correctly before calling
> elf_update is precisely what the fix in elfutils libelf will do itself
> in the next release. Also binutils ld has been fixed to setup
> sh_addralign to 4/8 as appropriate now (in git).

Sounds good then.
Thanks for fixing the issue in upstream, both libelf and binutils!

> 
> Cheers,
> 
> Mark
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/35b05eda-f76a-a071-d69e-9ba8c6f48382%40fb.com.
