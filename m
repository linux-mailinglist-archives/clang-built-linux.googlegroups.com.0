Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBHE2S6AAMGQEQ4CXRSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 101612FA82B
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 19:02:06 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id ez7sf3984841pjb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 10:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yQRFQGlvnYoZU+Us0p9kyxZaFF3d7ROqp4xP+KOXAOg=;
        b=dgcP2ldpfuJkVJPcd2G91mWgj+v/apNO7z44kusISXj9cL+ktEIP1fdOhYBmV0tArr
         PjX0pOHd/r6qHOlGXRcCjbUytdVKgGnUvBxZNpynVyI7WeLM6pWRSsY4p6NQTMBrz/qC
         cFNRznN3hKC8jWaFYmkn8mYiyrHp40cYDZhCOau9fy+ut1VUfAcDULLJsASG/Jbf3rNp
         sHVnxC6H7RC4QoGr35QBcX1t8OTXn3h/kv5gNRnPoQQPZ05qvWZIQPwmSslIXf61N4AN
         Y5kmh3hRujlZPOABQAc58gDCwdMCaeuHJ5jodqqLYFS3CnQfx4V3PLf65CJsTJqYLtMq
         NYQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yQRFQGlvnYoZU+Us0p9kyxZaFF3d7ROqp4xP+KOXAOg=;
        b=ilchazN8bTuIGSGHTTURh4XQyiClZ7DwJv1ulBfJfN9ndu7zTFyWJIQT2ws/SqT+n0
         H0KJqScQfO5e+g8fo/uLVQ9pdwB10eGQf8+pI5nyp1PYTmYEFq+25coJUQIYfwih0r1h
         K4S86NlclGfozp3y+u32euvobMfPZwE3IsC0iM0GOEqYidKFwYQ0GvoLWsxHmQKwgiqP
         g19z1M+kM0ukoStakW25EwuHeN1xQ0MGZm+2P4f+ST0yHj37d2pclB3SFIDLoUgPxBt0
         hFFKczsDu695u4jUq0TYA09btHPyiuwCxjF8k9eU37gdMqz0QHpxI99KLBmO1mo0HCtA
         0iHw==
X-Gm-Message-State: AOAM5308yyuoYMWj0gzzpREUTWOrwfNOk/1jRwWhHJrJ4a95qI0dE7dj
	QGTZ5Z9pgGE9XtkDla6cAv4=
X-Google-Smtp-Source: ABdhPJzR4MlIrbHi3/bmVKSWI3oRPkacOCWD0EzDU060QteFh+RDQEAQVGlApET/oCP1jFQW7iS2/g==
X-Received: by 2002:a63:4563:: with SMTP id u35mr790121pgk.162.1610992924795;
        Mon, 18 Jan 2021 10:02:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5285:: with SMTP id w5ls15630pjh.1.experimental-gmail;
 Mon, 18 Jan 2021 10:02:04 -0800 (PST)
X-Received: by 2002:a17:90a:d3d3:: with SMTP id d19mr522460pjw.196.1610992923942;
        Mon, 18 Jan 2021 10:02:03 -0800 (PST)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id l22si64612pjt.3.2021.01.18.10.02.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 10:02:03 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=06529282b4=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10IHvfBs022123;
	Mon, 18 Jan 2021 10:02:00 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 364h2cddnf-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 18 Jan 2021 10:01:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.173) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 18 Jan 2021 10:01:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YICxPLQ47gel6+sMvfJcQP/It7W/+CQZ9IProREJu+Q32Gw6E0fLtqZkqelH+1krGVEOhc5vWW1+YGSuYEGg5+VgxI4xtc4NzF421aO8W3+w7WUnpLkKTZn2Hqvy9lG4P4cn4vTvwwUUFFZoalDU6nflwYDKAShDOujlReBmwDrWl1+3FyuEr//+C6RDAPvqezsSf1GVfNrR/aOxIhR8F0jvWhLlWwBlFfeKcR2ZyKtME0xAOAtoObFa/RiP8ApBqscU7qjm5m8FgNms4fQy7s3c/BQHxah3OC00Z1d3WUmujA4BZ8X5wcF9dc5H/0yKxVHqDHPbmnmrjPY9v0wuyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Izi1qP2HcB0EsMidqMSyL3/H41mibuQLPJKJXt+LKh0=;
 b=NLaadRBjFL1h9OP1SqqqfQA/tPXiw8UdwoCgnfq6b0b0XoFs0FieD4x6x9RN5itH8egUFWEwbU9aNPi3xnwly8VVErTBJDJQmk58GOJK8LtJv0qkgBjWKpohcV9Gm4C7NpGGMUJkC8jg4kuf2NPx4hSibazUcjqS1xB8CSh52TrlK+2N3QBPAg+fAxM4fHUUZtW63kQ8OX/1FmdobQkD5iPHYoCBhj/g79/ykx4nunnOw1YZeUc9BvFbPULJ1CR4OU890On8mYftDepwUNLTi85PjB8eTSAMSWDr5oMrtSZ/XrI2pm+C0Y9j+Xv7mf9pvt40zzYFMyTfUeX8Mm6L+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2887.namprd15.prod.outlook.com (2603:10b6:a03:f9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Mon, 18 Jan
 2021 18:01:56 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 18:01:56 +0000
Subject: Re: [PATCH bpf] samples/bpf: Update README.rst for manually compiling
 LLVM and clang
To: Tiezhu Yang <yangtiezhu@loongson.cn>, Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>,
        John
 Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>,
        Nathan
 Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers
	<ndesaulniers@google.com>
CC: <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
        <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
        Xuefeng
 Li <lixuefeng@loongson.cn>
References: <1610959982-6420-1-git-send-email-yangtiezhu@loongson.cn>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <6bd33baa-ba8c-b38d-7375-12b3775c630e@fb.com>
Date: Mon, 18 Jan 2021 10:01:53 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <1610959982-6420-1-git-send-email-yangtiezhu@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:4199]
X-ClientProxiedBy: CO2PR04CA0144.namprd04.prod.outlook.com (2603:10b6:104::22)
 To BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21d6::10cf] (2620:10d:c090:400::5:4199) by CO2PR04CA0144.namprd04.prod.outlook.com (2603:10b6:104::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Mon, 18 Jan 2021 18:01:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e06b2f9-bcc8-40b0-21f5-08d8bbdb24ef
X-MS-TrafficTypeDiagnostic: BYAPR15MB2887:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB2887679886D9F9B7363A90AAD3A40@BYAPR15MB2887.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: avkYuOR9WgN4zsr/f5NKJ53V7nbF+wYnmAeZdnlbcLNkOSvn1Dm3izuZKAleWwW43GvglitT7uwyrv9LPgoy0qO4wyE/BLFtT2PcX3DkyGUplIQ1Q/GSdVLbPK2WB8iOJN5ymosxd5YjrnoQHAAJZkrjg16sicRRsi8OTj+vN0u4sRv74D76xR7nY66NRzQVQrL6RNpJnJjJ5fU5mQs1Ie01vbHBK139d+/OR2gcmht4rCtSccZY+ufkDeDeKRpdkUJqNIOuWISnl56aT8juFjLp7o37IjjGD6bjP7fuFuM4G037i6weMHj5F86O703Ve64fQYoyaqN8Fm9GckfjLTlED7b0FdrUki1SBCaKNqCLyMT6Hz4syEViLIC15UkXutrAMAlSHsMNd7k7H0B2QXN4Sigl2t7Xb2n+J3r7g/EoQTVMifqnZGZ74m+4SvWH7lat/0NvZGz+GvdbH23M7BN6WOgh/xLirKE2UT67lzZRyUXLOCYsZJZdIqBPvKqPVMkjL2yvcWq3oA1aqps1yZzfTc0x9f4Ym3j5FjLY37lWn3sIwqEj3hpWmW/0sfW3ruQRyu/FgGGf1a4wclMC+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(136003)(366004)(39860400002)(396003)(316002)(53546011)(186003)(5660300002)(83380400001)(36756003)(31696002)(2906002)(66556008)(4326008)(66946007)(966005)(66476007)(16526019)(478600001)(31686004)(52116002)(110136005)(921005)(8676002)(7416002)(86362001)(6486002)(15650500001)(8936002)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?eWZRUytWQ3UxNzNZckZRZ2IyQ0VYREtMaUhINis2OW9teE4wanVwNm5wVjNh?=
 =?utf-8?B?OTArbTFKWWE1dmRtcTNCOGpnZEJSWTFFYUhOamQwMVFQMDRFcGNkbU9IUFBS?=
 =?utf-8?B?V1AwN0wwelcwZkQxSjlsUkp0bm1XMDVNVWE1eUhiam5JeElmWVdGcnNiRlBv?=
 =?utf-8?B?ZXNuaG9EZTN0TVluZkxCczFyUHMvWkNMUTFIY0RkRFVpcld5UEtFWUJQWVhI?=
 =?utf-8?B?K3d0djRzZnp0TVBnR1dwM0lGS0c0TysvMnNFRzJ1eU1NdDNhZXU4VTgxV2hy?=
 =?utf-8?B?VWlKdFRFN1o0VWdzbGNqUGlNcFlOdk5DdUl0cittVGxLSUxEMXlmK0M3TDAx?=
 =?utf-8?B?c05aL24zdEFhd0N2TTYrOTBRdmRLaUdXeDJxVWVwdHFpVFNVS090M3MxWVd2?=
 =?utf-8?B?dzAzbmxOVCswUU1aMmx5VDF5YXBkejZHTTZGUUZ2Rlk4T3RCM3BNeEJPejBx?=
 =?utf-8?B?eGVnQTFNK1oweFcyWVh6V0l4dUFaZnNUNFdWTUN6Vk93ZkM0aVcyZFN1WkRr?=
 =?utf-8?B?S2hKUGNtYmlaNGF2bHNoOVRQeGdtcUEvWm5CMGIwc0U5cDlMaVB5THRZR2Yx?=
 =?utf-8?B?em0wMGYxQ1VnNS9Ia1dPb0E4enpQTUs1dGhzd1N3RGJXMW5PcXV3NUZOSDBP?=
 =?utf-8?B?NXA0enNETDNzdkY4NjlKVGpyWWZvN3ZCN29PcGdOZWdqVDduL25tQ2RYVFdx?=
 =?utf-8?B?Nm9zd21TRHZQQlphMC9hY2JOeWdWVVEwZklOWHU5alNSbmRCN2FpdWNJU2Rr?=
 =?utf-8?B?REVPdUcyVjNSOHEvZS9KSjRJaU5zVEdoRXNZVXZ1Q3J3MER4NHJJakRIUkpH?=
 =?utf-8?B?b09obW14Q1pvNE11ZllxdENiYnhJeGZ6L2VVTnRlSWlzUnl6djRONFcyZitT?=
 =?utf-8?B?R2Erd0p3ZlgyRUtSS1VUL0lva3R2dTdHZXlTUFNFcUNJRnI1VGcwenprOFpV?=
 =?utf-8?B?SmdHMWRPcURKOGZJL1ROZU9ZcjZSTHZiRS9XMDloMHQ0TWNpdGpvU3lwaXpE?=
 =?utf-8?B?RVVRdFRLYWlSaCtYdGtEa2UxNnYxS212dmRaSFZwWGI5YUFBRnZ0dS83Mllk?=
 =?utf-8?B?WFNwbm1DMmZiZ1VkYW5EUlhZcWRkTTlJUFppcGZpMGpiQld5VStaMzVKazBO?=
 =?utf-8?B?L1BlYzFMSjlsck5raDlJTXJJQTFVM29PLzdrcFFVZCtHQmp4Q1pzR2pzb2U4?=
 =?utf-8?B?SEZseWpvZjRBQ3RacU5ZVjNCRCsvUmt0TktUMVRQSWs1MDZXc2RDU1kxMUV5?=
 =?utf-8?B?ZjR0K1BYOXZkUmozZzBtaEVMejlCRG9nK0w0ZW9sTmwvTHZWUHoxSkJzV1JW?=
 =?utf-8?B?bVZhY0JkSkl5VlpzMkxIVXF5QzF4Lzk3M1FXM0tjc1R2Q1dCMmZJU0ZHb01D?=
 =?utf-8?B?cHJweXFZYWg5Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e06b2f9-bcc8-40b0-21f5-08d8bbdb24ef
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2021 18:01:56.6187
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f44901l8YwrTbcy2nHqwMFRRGNoISv1eyQ6ZWwQkHllSn9yYgv/q2QmOL9Jqeahf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2887
X-OriginatorOrg: fb.com
X-Proofpoint-UnRewURL: 7 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-18_13:2021-01-18,2021-01-18 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 mlxlogscore=999
 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0 mlxscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101180109
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=alp4JoMf;       dkim=neutral
 (body hash did not verify) header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=C9SpWDYL;       arc=fail (body hash mismatch);       spf=pass
 (google.com: domain of prvs=06529282b4=yhs@fb.com designates 67.231.145.42 as
 permitted sender) smtp.mailfrom="prvs=06529282b4=yhs@fb.com";
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



On 1/18/21 12:53 AM, Tiezhu Yang wrote:
> In the current samples/bpf/README.rst, the url of llvm and clang git
> may be out of date, they are unable to access:
> 
> $ git clone http://llvm.org/git/llvm.git
> Cloning into 'llvm'...
> fatal: unable to access 'http://llvm.org/git/llvm.git/ ': Maximum (20) redirects followed
> $ git clone --depth 1 http://llvm.org/git/clang.git
> Cloning into 'clang'...
> fatal: unable to access 'http://llvm.org/git/clang.git/ ': Maximum (20) redirects followed
> 
> The Clang Getting Started page [1] might have more accurate information,
> I verified the procedure and it is proved to be feasible, so we should
> update it to reflect the reality.
> 
> [1] https://clang.llvm.org/get_started.html
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> ---
>   samples/bpf/README.rst | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
> index dd34b2d..f606c08 100644
> --- a/samples/bpf/README.rst
> +++ b/samples/bpf/README.rst
> @@ -65,11 +65,9 @@ To generate a smaller llc binary one can use::
>   Quick sniplet for manually compiling LLVM and clang
>   (build dependencies are cmake and gcc-c++)::
>   
> - $ git clone http://llvm.org/git/llvm.git
> - $ cd llvm/tools
> - $ git clone --depth 1 http://llvm.org/git/clang.git
> - $ cd ..; mkdir build; cd build
> - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
> + $ git clone https://github.com/llvm/llvm-project.git
> + $ cd llvm-project; mkdir build; cd build
> + $ cmake -DLLVM_ENABLE_PROJECTS=clang -DLLVM_TARGETS_TO_BUILD="BPF;X86" -G "Unix Makefiles" ../llvm
>    $ make -j $(getconf _NPROCESSORS_ONLN)

Thanks for the patch. Indeed llvm.org/git/llvm has been deprecated. We 
have recommended to use llvm-project at 
kernel/Documentation/bpf/bpf_devel_QA.rst.
 
https://github.com/torvalds/linux/blob/master/Documentation/bpf/bpf_devel_QA.rst#q-got-it-so-how-do-i-build-llvm-manually-anyway

Could you use the same scripts in the above link here?
There are different ways to build llvm/clang, I just want to be
consistent between bpf_devel_QA.rst and there.

I am also thinking whether we should just provide a link here to
bpf_devel_QA.rst. Looking at samples/bpf/README.rst, it all contains
direct commands for people to build/test, so copy-pasting the llvm
build scripts here should be fine.

>   
>   It is also possible to point make to the newly compiled 'llc' or
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6bd33baa-ba8c-b38d-7375-12b3775c630e%40fb.com.
