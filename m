Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBTPI573QKGQEEIHHZTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E1A210202
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 04:26:23 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id j79sf16052062qke.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 19:26:23 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1593570382; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZaPpqmy2INHKmHXhO99hNl4eWtcwR5CbLcUACSI/8rCki8Am54RkNQtnCz7aStpOj
         j8v3c1NxqUsC5wK3nFF9h64mZobRheOg5SNKrt1r2eAnrkbEtidkdrs1b016+cBDljPc
         8WekaXB6PIP/2bvJUA0i2Io33l1HBDIXKaI76hYCOtl+ZLP/Ct2qkWjSBRfkaS0OjQKa
         X6GZEsW0QI/70IJ6yGxgOt2MDiU/ePpsfsCEhdrSCXrqClAlW9SXUGThZChEJczg1OLN
         +ZImCvi0jHy70abKtJazZllP4ef17wwxIB/CQiGBYjP7rUaCZbfwChzhiRv3/Ip3scIZ
         es6A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=wnj1P9wCdzv8aZxB5lwFL2aohcsiO5CzOuNmC96lmXU=;
        b=pGa41uXZ6BTFVsy4UKWHU7If8qnTdrJFMoQ8uzC0d5a/xI5TEESKAGmRCjVLI/1ZLV
         eJZUCXbPf/lAxL5b+OBmOOEl60fqst563zkpnlAirdLkO5xkCsjWHnYvDDdAhATntkhP
         eEeZsawR0LBKVbwVaH74VcdUCR15XkuG3uorXJAnb5BZUkif1oLyyC0Kpd2g3E2sNGb+
         Q1BUqk3G7dWVrQf4MlmOC/WED2oivpMxfQjFh8v42HUflQ8nPG3aqbLRfVzWicwp7rDr
         GBtHB8V5i3cDCgGwH4fSTRa9eJ7FdNMuZUe14BkK1azV8+mpvccUmzQbr45hF/Vjh1Wp
         FbAg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=WQj71VD+;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=iAicbsmg;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=4451bd26a6=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wnj1P9wCdzv8aZxB5lwFL2aohcsiO5CzOuNmC96lmXU=;
        b=STrq9xDgl1pxmHJkJeY7YmaxBejRJHT9Z3akfV54AymzlC1xX2ITxsqLa4sE+VfRGM
         L3vOYqyWeoQasQNItDCSIo6rsgrzUmYM930imh1HfXawjaNDqkyNZnqKawPj/W2wFT2C
         dLCuxWbcHNV1ky0uapDTdbHiE2FNz3//ZNlcjqrm/8b96WFZR5uxjRiy3lQRDd+kdHpk
         csUoRJCmjyqQ7r67hlKY14K/dFD1OCIjY0WwelA/3g5b+jd9VsBsWKB5Cc8qihUOgDno
         VP6X+bVVfSoTnyqFz9VIjnKCO5HOMeKgLxegUGHG2xzAuMOrFCYtz5YOmo5+QhJh3wPp
         /bZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wnj1P9wCdzv8aZxB5lwFL2aohcsiO5CzOuNmC96lmXU=;
        b=hJbdAIQM863EfRq8shCTCJnUdpdDVpX3/mLUs3woKZWE1n4leLxY+mzZcrDXgTm0wi
         7MzUSArj3jmhJbu1Fc+wKo6P9spTHdQb6CYYKlyOgWh/pA16IBiPqz7RCTng72P4kZ+g
         CgvgoQlSNABz9oerGkniFOcIR8A75fIpggPC81xZuKmKBl96aewystEmC3d84FayBSMq
         sV43Gohb8jVjPUgPUmKijvysoyJU66dwf8KmavC3b0Q8lYcdNgK31iaJI+toNpqMzfai
         TY1WurBxF8K7H/tlF2rFXEbS0+tzkhTo9Xl2UELcJq/fXY5H3z9TDmTpOl+gmMH1Me34
         CN6g==
X-Gm-Message-State: AOAM532BsUGnjSfZGSO8DrWfUXLcJSKtjkAudjtu2kDh2sybAyeH5Stp
	hxT5QozhhhcCBc1kEFwmE3Y=
X-Google-Smtp-Source: ABdhPJxNlT+cc4hAwuLpg29Zjx4EH7B8Ufa8bmfflsr5+G1gdb5JW7wO635yqggBiaTqi3qyjmpV5g==
X-Received: by 2002:ac8:3637:: with SMTP id m52mr24385375qtb.53.1593570382032;
        Tue, 30 Jun 2020 19:26:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:df8a:: with SMTP id w10ls221208qvl.4.gmail; Tue, 30 Jun
 2020 19:26:21 -0700 (PDT)
X-Received: by 2002:a0c:e048:: with SMTP id y8mr23233553qvk.11.1593570381689;
        Tue, 30 Jun 2020 19:26:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593570381; cv=pass;
        d=google.com; s=arc-20160816;
        b=baPSHkwnXOmJWoaZT2Ld6ZM3yGaEKNw5QeK+CeNB32/+G4XTOxTui7lFnAR05ONVdW
         o3q2bxnAVQfDpID4jFXAldCYN3I2/BlkT69p8Gn+DheU7mR9aoirIKpt4je1CEEwSXD2
         27zfXqWZAkRvFLi9wVlwDPeE+rqe/Q9VT26xr0lmDS/VvLiBZCw7eb91wtnn2+6ps1bL
         w+MjdqX4w/DIxCUFHLBJPLDRdSYl/6QAloi1qPjk3jSaxWqNPsYzwColepf989mH4AbZ
         gVwzSKv7vjwF7q3uhr3F9fa4S8kJUd2Vkssil0/5Qiuqp6Km74qo/zFY1q+w0DMzsils
         JcCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=XzVwesyXppnhHor1c093K65mOOFh7rGEx8HYY3wRhes=;
        b=rVktXxWk+Pxm+r/cUAwUknmpHVCno8Oxc0XS5iJ6d5jS/pWTZjQrPbULp/iGsO3EQ6
         WhxXrTXTpte4BOWyFtfxXgxNYDhD7HCrGSYQBs50qYZBJcDmg8x6DdkGsjBrfVtPW1f7
         6zGnPRt+QcQ4W6EJUAwZ9NTgSP9f5sH+k6yM7qGoCdjnKN0j8IcqcL+E8MZsqB9MtGka
         nN1FJGe7mXg4mPq6XbEdGrFAr8wVdc7EaBYESG26W1BkFJoEYUi3n+wrb2ixdbgYLUU+
         473HcJ9bGdOp88Ly6Bg8kqiwNflOfGaV1GeKANdclBB3HcjzJ0AFtmdBLxeO+YaRAPNu
         PxAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=WQj71VD+;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=iAicbsmg;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=4451bd26a6=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id m1si130623qke.4.2020.06.30.19.26.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 19:26:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0612PgO6021112;
	Tue, 30 Jun 2020 19:26:19 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 31x3xgymmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 30 Jun 2020 19:26:19 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 30 Jun 2020 19:26:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QOa1re290sy08wHaCwUMzWqZw3wRte2ymcOm7h4fCQvVcBblxuTo+Y5clNKwx40NoMXPjlB1keDxgeBlrrVpK4w9fx90Imb1F9XsuSRb9hByD0nRj4VihDSDOC3aU3W4P/lYusACNis980ixUkzpgIp7DiFcHl2/cr0xGJOdIKJEI6tCA0ihcKGrrdXzvs8uWrokD9BTe9bEoG2tWk28EYCGP0wwDII1wVRBJ5vp2jjnu7yqZM5mteHtcIl9uwG5yKqO00L+G6yaoLMTqlNstzhlWMMmgJA1YjTAqVUrnVHOJnE/YzIJvbGNfsFhs2Sxg5BPHNearkX7DcMRBMtBAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XzVwesyXppnhHor1c093K65mOOFh7rGEx8HYY3wRhes=;
 b=kctZ/lzxuR7VeEqVXKyrJtwKZODzaOlE0M8swa8yBB4GpbEdoKpXWzbQzc+Lugv7b/KgTevYoy3OzG2OOQcZj01PSqrjhtCsJcTl3oenHUy/EPXzoHBYVuAthCFlwR1d7kBtawcO8F19PiEtYh2u8hLE94drCITLlA6ZebrAD230jBVaYLjLugBZOThOi1QY7dcq4SIsVbDscGjE2W5A5iJXtTA9+7V+cCQYBvtrutuhnpj5u6DlIKxiDAGU1ZWScLBUJTeculMBp/9g1E2ZgsgCjmhiv2AkFAME/kznZPAi52/hZ2nbsgPOHlNV57L7MEljuspeqiRgQz0h2uFJhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2822.namprd15.prod.outlook.com (2603:10b6:a03:15b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Wed, 1 Jul
 2020 02:26:05 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301%7]) with mapi id 15.20.3131.027; Wed, 1 Jul 2020
 02:26:05 +0000
Subject: Re: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use
 hrtimer_range_start_ns.
To: Hao Luo <haoluo@google.com>
CC: Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>,
        <linux-kselftest@vger.kernel.org>, Stanislav Fomichev <sdf@google.com>,
        Shuah
 Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
        Andrii Nakryiko
	<andriin@fb.com>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Martin KaFai Lau
	<kafai@fb.com>, Song Liu <songliubraving@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@chromium.org>, Bill Wendling
	<morbo@google.com>
References: <20200630184922.455439-1-haoluo@google.com>
 <49df8306-ecc7-b979-d887-b023275e4842@fb.com>
 <CA+khW7iJu2tzcz36XzL6gBq4poq+5Qt0vbrmPRdYuvC-c5U4_A@mail.gmail.com>
 <CA+khW7jNqVMqq2dzf6Dy0pWCZYjHrG7Vm_sUEKKLS-L-ptzEtQ@mail.gmail.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <46fc8e13-fb3e-6464-b794-60cf90d16543@fb.com>
Date: Tue, 30 Jun 2020 19:26:02 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
In-Reply-To: <CA+khW7jNqVMqq2dzf6Dy0pWCZYjHrG7Vm_sUEKKLS-L-ptzEtQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: BYAPR01CA0048.prod.exchangelabs.com (2603:10b6:a03:94::25)
 To BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e8::15c2] (2620:10d:c090:400::5:5757) by BYAPR01CA0048.prod.exchangelabs.com (2603:10b6:a03:94::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20 via Frontend Transport; Wed, 1 Jul 2020 02:26:04 +0000
X-Originating-IP: [2620:10d:c090:400::5:5757]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fe7cf668-a757-44c5-073c-08d81d661b4a
X-MS-TrafficTypeDiagnostic: BYAPR15MB2822:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB282280E82F7163680D1DB04CD36C0@BYAPR15MB2822.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 04519BA941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ifpBzi4u4HCaEZUd7rZgVjIjbdlP1V3dXNdJP0RGQmBCWTOGXwte7a5EEGGn0SqbjFAJbwISYeoke8E5lGSdDEvF7+QNndHxAV97KEbOsq/NV4d17LuQPFjxkD6lvSgAfLRm8nUo334U0fHOxbf9uecbXqhFvhtc5T5W9DfffrbSuQDQctiKisW0zX94u44Dgp5snXeVur52DMrHBj1wLXTWfGZFBZbfOXGuLTBF2dPoshtGcOJjlhacn2FLNKCEJG2G/TeMidzeEKzAFSJDUwuph4hOo2fUsEd+aQPT7kIYEhVVoZMzwQQS+l83eRJcE+wxVEsOj9eAqanR6n9tP/Wn0hgxb0wl6QvfKtF72EXED1kDx/+x2STwu4h5PBph
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(346002)(366004)(39860400002)(136003)(396003)(376002)(6486002)(36756003)(54906003)(83380400001)(478600001)(16526019)(4326008)(7416002)(186003)(316002)(52116002)(31686004)(8676002)(66556008)(66476007)(66946007)(2906002)(53546011)(8936002)(31696002)(86362001)(6916009)(5660300002)(2616005)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: f9zp8w1hG1APb2Tl4OZ95sHtDIukIECvslDY9RLM41mySPiLtP8AREcrU8uEfeHpRvfjTG352ldBU/quW+V5rparNbXsg2VZu2C1yxlddmjzVV/rxEpDyHZnob9bcHXS3hUEWaYzMEPXktc1CHuy1aqzN8TV/nGvDBl4EzCoUYZyRhMSSAuaFrVXy0xeMHvFfsgN+ptVAg/gBFVSTSivoPcCR+DspMI90jMhtFXOgeaE6M9tfjFzafTc+Lsp9TSOGTIaHJjw/1enrQMQMry1x66KhRn0SIME0X8X7pbPHwgv6GaDntPGkrYVFMUtxRUAoZGX5hTm6XDWIvD8wREnkawlrWI5e+M59xpaKyGX6fbg14s+yb2NNVVd1OGnN88NXQUsaaBrAtF4f6oe2ARLuel9CT2M2+pMFKkjbBdi/h4Ai0Pji4AqGmbJCusrGC9/CnfauEKn/qYLtk1u5GaqjgvYoSWVyorNyJGKGNHXtf2+Z46yjVEhOCL6VTV7cmM/27xdiNF9y43hVtfHii2xoQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: fe7cf668-a757-44c5-073c-08d81d661b4a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2020 02:26:05.7609
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IxjnbgR6fAHJpXpJotXdyNxFlCrSkLlUfxSQDV34hvX6b8aakSzE3Mv5VT0nN4d6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2822
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-01_01:2020-06-30,2020-06-30 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxlogscore=999
 bulkscore=0 priorityscore=1501 mlxscore=0 impostorscore=0 spamscore=0
 clxscore=1011 cotscore=-2147483648 phishscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007010013
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=WQj71VD+;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=iAicbsmg;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=4451bd26a6=yhs@fb.com designates 67.231.153.30 as permitted
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



On 6/30/20 5:10 PM, Hao Luo wrote:
> Ok, with the help of my colleague Ian Rogers, I think we solved the
> mystery. Clang actually inlined hrtimer_nanosleep() inside
> SyS_nanosleep(), so there is no call to that function throughout the
> path of the nanosleep syscall. I've been looking at the function body
> of hrtimer_nanosleep for quite some time, but clearly overlooked the
> caller of hrtimer_nanosleep. hrtimer_nanosleep is pretty short and
> there are many constants, inlining would not be too surprising.

Oh thanks for explanation. inlining makes sense. We have many other
instances like this in the past where kprobe won't work properly.

Could you reword your commit message then?

 > causing fentry and kprobe to not hook on this function properly on a
 > Clang build kernel.

The above is a little vague on what happens. What really happens is
fentry/kprobe does hook on this function but has no effect since
its caller has inlined the function.


> Sigh...
> 
> Hao
> 
> On Tue, Jun 30, 2020 at 3:48 PM Hao Luo <haoluo@google.com> wrote:
>>
>> On Tue, Jun 30, 2020 at 1:37 PM Yonghong Song <yhs@fb.com> wrote:
>>>
>>> On 6/30/20 11:49 AM, Hao Luo wrote:
>>>> The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
>>>> programs. But it seems Clang may have done an aggressive optimization,
>>>> causing fentry and kprobe to not hook on this function properly on a
>>>> Clang build kernel.
>>>
>>> Could you explain why it does not on clang built kernel? How did you
>>> build the kernel? Did you use [thin]lto?
>>>
>>> hrtimer_nanosleep is a global function who is called in several
>>> different files. I am curious how clang optimization can make
>>> function disappear, or make its function signature change, or
>>> rename the function?
>>>
>>
>> Yonghong,
>>
>> We didn't enable LTO. It also puzzled me. But I can confirm those
>> fentry/kprobe test failures via many different experiments I've done.
>> After talking to my colleague on kernel compiling tools (Bill, cc'ed),
>> we suspected this could be because of clang's aggressive inlining. We
>> also noticed that all the callsites of hrtimer_nanosleep() are tail
>> calls.
>>
>> For a better explanation, I can reach out to the people who are more
>> familiar to clang in the compiler team to see if they have any
>> insights. This may not be of high priority for them though.
>>
>> Hao

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46fc8e13-fb3e-6464-b794-60cf90d16543%40fb.com.
