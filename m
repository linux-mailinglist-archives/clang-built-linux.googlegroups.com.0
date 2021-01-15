Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBHWIRCAAMGQEZKYUB2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 821442F8955
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 00:24:15 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id m7sf7011422pjr.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 15:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Yd8ip/hOW7lTQWfQhNoCb6GgUMNshWlAdjZm8YniodY=;
        b=OambFaM2v8rg3353r/KJYfg4mTbGFqdhCOMrQER0oPewv87yTDa3LyyKsugWbZq4oj
         /dIjze0vFVuiNJadHeUYOWLkrgT+PP5VcQy3cDt9Ta8eW7vVt4ETTr+BtM/s+UStpghV
         9NS5BVK7LORPZYNm+VqmlfAEiw1yt3jTLR1FxUWj3G/p0+6KhE3PCbE3FNn+53uBXM3T
         VtKsuKNhpz82v4dkX1NOXu1uDEu4o62tgiTbicFwtLMuQgZ5/LOi1YycAxfLZtl8gvue
         cypMlg7zhtHWHxyZt9cq676/Ued99DwtzLcWLQFY7x9H4zXfdKZ9Ybt9/7561o/AnqK7
         Jaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yd8ip/hOW7lTQWfQhNoCb6GgUMNshWlAdjZm8YniodY=;
        b=LhBitIT/Gur+nxbG2x7QYSt0Atvyr4Vw+brAoFDo7cysIFEzmNkkiCI0xNL+Y1gopf
         uBY1cO/kdH1QpcMxK+jpGXpsinp9cdSGt4VuSrIKzmDKaRXwHYXqQsaBIVtNop2cmfW2
         fF9984X10u5J69LMpvMSig5ZMf5yaUA7AMajJ0cJf3Fwu5zN8mSn5ShJhQw6T67RICW5
         dYTRtYfWhuocE5CL5x2SY4eb0+UjrLtBAL4sZ5OE+nagkBSZ96/deTDlELILHpkLqhqE
         c07PBxzArK0giY12XpZ82v4ghbf8YjNNEpu+IhxExfgK4XvaAHijTtQHryZsqQQRgFbm
         2O4A==
X-Gm-Message-State: AOAM531EM0y/a6JOJlgWTBHOgapNSZF47h72Mv+fkzLsJRQKqtDSlAUC
	EDyEX+5q4U1i1ucdQPhN87w=
X-Google-Smtp-Source: ABdhPJxixpn643TpUcctbvlJW7zYE80kb96hILG4LzzMAqTradj5wi9/Zo6pxMRkZTVrxqldt5SMHw==
X-Received: by 2002:a17:90a:8817:: with SMTP id s23mr13233002pjn.67.1610753054270;
        Fri, 15 Jan 2021 15:24:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2c94:: with SMTP id s142ls4013309pgs.9.gmail; Fri, 15
 Jan 2021 15:24:13 -0800 (PST)
X-Received: by 2002:a63:5843:: with SMTP id i3mr14903362pgm.209.1610753053534;
        Fri, 15 Jan 2021 15:24:13 -0800 (PST)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id q15si806147pfs.1.2021.01.15.15.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 15:24:13 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=0649b8e27a=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10FNOBpT010506;
	Fri, 15 Jan 2021 15:24:11 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 3631caw3qe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 15 Jan 2021 15:24:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 15 Jan 2021 15:24:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oUwRUvS0oqGKmbFCmfQHuqwyFAqG0ZIZsxZDKRyxEt8GKdriYVaI72zm/QcXiDLIsKsDInBUy8f8ezainLuIDtc4RFRBCMLtyCVyR2KxLeqQyU+I3hn5qs/lJVQwp5o+rKXY751me/r7JJlr0UAImyWj8UGZIfPKesL9dFyyyFfUrtXv0gZ9MvCO3JlOHRpHx2qLjhvosx/q/U1qTq0w9QJCw5eRN5QzJOGJsYuxntcm+bMBIlmxmiO2136+hW/eGksXrGd+rvmLk2rvtHmmcoALJkhtQDllbHThyl3M73CZjRAuMOjIkms7fdJPPdO3Qvu5Cp4xxxw64T2GRTSuCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lwhc5r4PzWuFWkLztzfyeWuH8g5vcBKFCvf2BJClvXg=;
 b=kHWHI2j1IlhKFeMMSoP0ctHXL50TW446kLPTUesVwbWfaeRpc9jBaZrRBc4LAkQOQWKTtVcjTilLYyuvnVTPw465C/I0I+0zbl5Hlh/6H62SgSa7q95dRl+Pb7vjFBdhBFfmC/v+7lEUkbxnbbZwmSDxGbAFp/RT9SfiqDdaTlvXCO+8hzteMCLwOl/E3xvLd1wAiOY6JYWUSYxP5+wF9qTcYyk4e/21083+nmQeuN28UGni59kbHeA6KsZ2NiT3utRCbmrzI4caTZV8pHdPC/rxgH0b+ZFiXMm0Evuh5q6cYYNcv253TZVjs2D2ZzRv7eNp1lYY38ZqSP8gSDA7Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB4247.namprd15.prod.outlook.com (2603:10b6:a03:102::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Fri, 15 Jan
 2021 23:24:09 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3763.011; Fri, 15 Jan 2021
 23:24:08 +0000
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: <sedat.dilek@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
CC: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor
	<natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML
	<clang-built-linux@googlegroups.com>,
        <linux-kbuild@vger.kernel.org>, <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song
	<maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton
	<nickc@redhat.com>,
        Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko
	<andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com>
Date: Fri, 15 Jan 2021 15:24:05 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:bb30]
X-ClientProxiedBy: MWHPR02CA0014.namprd02.prod.outlook.com
 (2603:10b6:300:4b::24) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21c8::1366] (2620:10d:c090:400::5:bb30) by MWHPR02CA0014.namprd02.prod.outlook.com (2603:10b6:300:4b::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Fri, 15 Jan 2021 23:24:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d70b55cf-d52c-403a-9d74-08d8b9aca8a3
X-MS-TrafficTypeDiagnostic: BYAPR15MB4247:
X-Microsoft-Antispam-PRVS: <BYAPR15MB424787F460FD032B7CC017C3D3A70@BYAPR15MB4247.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kyR0N9n+tpK5GZ0lJFeINLlFZhs0JCpC6f429mnfy1+vT60W35Fqx0mOKJSUF/NpkTwSsu3vSrFmSlbPvpyW0weg04pqEOH6zANnOJC4Dm1e4tZXFFErGszh/FeuSxVYr3BrRu+2c5woY6/ZcCxw9c4/iA0a20MJTdpUhkVyNuhWcSmxacxlCuxFoYfxZfH8K84ktF9RKjAI7pRbHRRtgGT5q8YY+R6SRsjNE6mm2jIHFPAiB+S5Jx9nijabn5Mks3yLXaWJBU33AHOn171S98anp4l8WKiIp9PvqcbgZTeXn7GFghK6KXfmWtBU5yP6ZNc/F2/wYh8gObfe73dQLPz2iUSwfYhClvRxSd8V/Zbvc8dKOPV53GI3XpwZCd28llDheZHWab4TJL1RLA9SzVIkUmcRqmWcOTPfEfitqLRrCGmrJEt7yArNLRmmUKyJnrvII9l0bBqc9Be1ORcbbDg9f7p6HI8ZAbWqh/HgN+kYclwAzoiWVJYhks5B6fR4dvKk96DOsIVv2dr9kpiFI5KK0Bfnt4zE3QCSVcTXMbrZSn+GUn4iFcISwpmZzpor
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(346002)(39860400002)(396003)(376002)(136003)(8936002)(478600001)(54906003)(316002)(16526019)(6916009)(186003)(5660300002)(2906002)(7416002)(31696002)(86362001)(4326008)(8676002)(6486002)(53546011)(66476007)(83380400001)(966005)(52116002)(31686004)(66556008)(2616005)(36756003)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?UEdJUEZHSnVtVWhLNFNVSFZRU1cyL25OcTUvbEJxUTJFVVJ2ck5Oa3MveWpu?=
 =?utf-8?B?QTFxU1VhYk8zRVc2eEF2VGtaOFROeHVPS24xcldrcXluZ0JtaEorNEMvbDZJ?=
 =?utf-8?B?MUNFaEhobnY4andsQTY5SGdGMkVpSDI1eW50ZjdGckdnbWZrZzFQbVVCOHc3?=
 =?utf-8?B?eGJUbDVRSWhCT3V5NEtIWkZ3dmNuS3FPVWdNYnJ3eEtyUlcxNzVGWXJuNEl3?=
 =?utf-8?B?MTlLRSswQW1Jc3JZYjk4ZXFST2lYc3JxZDRKU2R1V3ZBcDR5SkV4T2kyMzN4?=
 =?utf-8?B?MWJXcTV2SENld2dJYmNEN1p3UFJGaUppVVpLMWUrb0xnOFdsQ2hYK2ZRWFY0?=
 =?utf-8?B?aVg1ZDdFMW5PT3d5M0ROMWM5bVNENFhWYU1Ydmg1M1d2enpZc29iRXZTeWtT?=
 =?utf-8?B?UjV1QWM3MXAwOFp0c3liS0ZtalpoaVJtUFMwUHFnd3FvdmVQMHhndHMvZUN0?=
 =?utf-8?B?c3pOQ2pZQUhCMVhHYmcrZ2U0Uldzb2xlMHdqVUwrUjFpaUNldDk0WkZpcTY1?=
 =?utf-8?B?Vk5UZGZUNTIxV0Q0UlVVNDVkYjFFY1Z2dlhxekwxbmxWZDRjNWMxWk56YS9h?=
 =?utf-8?B?Y2JRSGd5QUZJU0tybUhPY0ljOEVUMFZzajdoNVpPSm9WRkRpZ0ZjUU5qeE5H?=
 =?utf-8?B?d0wxcDJXUm5RdmZvQkdaUkkrM1puR1VqRW90VkNqbGkrTzNNc2pTU2Y1UXlw?=
 =?utf-8?B?U21QTFdVcnpXVjdsUXRKcHFQVEZFT2xxYzB2bklFY2VBa0dMQ2RuS056aFg1?=
 =?utf-8?B?akpKU0VpdWNEVzM4Zm1NSHFlZHd0QmJPb2R1UWNoNWpZaE9uMStzTnFWVVc3?=
 =?utf-8?B?TzMzV3ZLR1FYZ3psVVhHaW1sbjM4bDNtNCs1QVl5bVZkNHBYOENnNFo1VGZL?=
 =?utf-8?B?L3pBWml3ZTdMRG9IRlYza2xtNE9YclJKU3VHQm5XY1RiWmdvZGFLSW1qRlBo?=
 =?utf-8?B?RmZtOW1GT2NORHVWSGkwVjRWWk00Q3hNdUlRdHplYmV5R25ac3YyQ2xhSjZ6?=
 =?utf-8?B?UlRLY0grcGs2V0owamhGQU8raG5PMnJORC9FSVlERFZoL1FLRkxwb296Znlv?=
 =?utf-8?B?Y05IVTZmdzJNcnpVaERzZmw2dU9lT0ZGQU9wMmhUQU9tanNMbnVocXUyeGt5?=
 =?utf-8?B?VjNDb1cza2ZodUhqSk9GY01JWFNkWTRjSVhlc3B0N2daSWtLdDRuVTQwUjMv?=
 =?utf-8?B?YnJ1WE1kaXVHdlRCSjBRR1A1MUdFYlFSeThrZHJLQlgybWZXTnVXd1QzVURj?=
 =?utf-8?B?QWtVQ05BeDR3OVg2QUZQRkNDU0RManVmZ1JNdXpLc1BoTmMzeXMyMkR6RzRn?=
 =?utf-8?B?VzZlWU9vMXVhdHZpLzR5UW90WGUxNG8vTDBiWE5XbzRXbUFhWHp3cC9XaG42?=
 =?utf-8?B?cVRYT28vREV0VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d70b55cf-d52c-403a-9d74-08d8b9aca8a3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2021 23:24:08.8613
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xyJQNNNpeAr5II+dUWX/qUwwdNwRQqjL4jINwYjxKp8ont9HaOTnloMMpIG5oIxu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB4247
X-OriginatorOrg: fb.com
X-Proofpoint-UnRewURL: 1 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-15_15:2021-01-15,2021-01-15 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 mlxlogscore=999
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 mlxscore=0
 clxscore=1011 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101150142
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=l5vFcsAh;       dkim=neutral
 (body hash did not verify) header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=N70qOpcM;       arc=fail (body hash mismatch);       spf=pass
 (google.com: domain of prvs=0649b8e27a=yhs@fb.com designates 67.231.153.30 as
 permitted sender) smtp.mailfrom="prvs=0649b8e27a=yhs@fb.com";
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



On 1/15/21 1:53 PM, Sedat Dilek wrote:
> On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> DWARF v5 is the latest standard of the DWARF debug info format.
>>
>> DWARF5 wins significantly in terms of size when mixed with compression
>> (CONFIG_DEBUG_INFO_COMPRESSED).
>>
>> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>>
>> Patch 1 is a cleanup from Masahiro and isn't DWARF v5 specific.
>> Patch 2 is a cleanup that lays the ground work and isn't DWARF
>> v5 specific.
>> Patch 3 implements Kconfig and Kbuild support for DWARFv5.
>>
>> Changes from v4:
>> * drop set -e from script as per Nathan.
>> * add dependency on !CONFIG_DEBUG_INFO_BTF for DWARF v5 as per Sedat.
>> * Move LLVM_IAS=1 complexity from patch 2 to patch 3 as per Arvind and
>>    Masahiro. Sorry it took me a few tries to understand the point (I
>>    might still not), but it looks much cleaner this way. Sorry Nathan, I
>>    did not carry forward your previous reviews as a result, but I would
>>    appreciate if you could look again.
>> * Add Nathan's reviewed by tag to patch 1.
>> * Reword commit message for patch 3 to mention LLVM_IAS=1 and -gdwarf-5
>>    binutils addition later, and BTF issue.
>> * I still happen to see a pahole related error spew for the combination
>>    of:
>>    * LLVM=1
>>    * LLVM_IAS=1
>>    * CONFIG_DEBUG_INFO_DWARF4
>>    * CONFIG_DEBUG_INFO_BTF
>>    Though they're non-fatal to the build. I'm not sure yet why removing
>>    any one of the above prevents the warning spew. Maybe we'll need a v6.
>>
> 
> En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> CONFIG_DEBUG_INFO_DWARF4.
> So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.

I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
It is not there before and adding this may suddenly break some users.

If certain combination of gcc/llvm does not work for 
CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
should fix.

> 
> I had some other small nits commented in the single patches.
> 
> As requested in your previous patch-series, feel free to add my:
> 
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> 
> - Sedat -
> 
>> Changes from v3:
>>
>> Changes as per Arvind:
>> * only add -Wa,-gdwarf-5 for (LLVM=1|CC=clang)+LLVM_IAS=0 builds.
>> * add -gdwarf-5 to Kconfig shell script.
>> * only run Kconfig shell script for Clang.
>>
>> Apologies to Sedat and Nathan; I appreciate previous testing/review, but
>> I did no carry forward your Tested-by and Reviewed-by tags, as the
>> patches have changed too much IMO.
>>
>> Changes from v2:
>> * Drop two of the earlier patches that have been accepted already.
>> * Add measurements with GCC 10.2 to commit message.
>> * Update help text as per Arvind with help from Caroline.
>> * Improve case/wording between DWARF Versions as per Masahiro.
>>
>> Changes from the RFC:
>> * split patch in 3 patch series, include Fangrui's patch, too.
>> * prefer `DWARF vX` format, as per Fangrui.
>> * use spaces between assignment in Makefile as per Masahiro.
>> * simplify setting dwarf-version-y as per Masahiro.
>> * indent `prompt` in Kconfig change as per Masahiro.
>> * remove explicit default in Kconfig as per Masahiro.
>> * add comments to test_dwarf5_support.sh.
>> * change echo in test_dwarf5_support.sh as per Masahiro.
>> * remove -u from test_dwarf5_support.sh as per Masahiro.
>> * add a -gdwarf-5 cc-option check to Kconfig as per Jakub.
>>
>> *** BLURB HERE ***
>>
>> Masahiro Yamada (1):
>>    Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
>>
>> Nick Desaulniers (2):
>>    Kbuild: make DWARF version a choice
>>    Kbuild: implement support for DWARF v5
>>
>>   Makefile                          | 13 +++++++---
>>   include/asm-generic/vmlinux.lds.h |  6 ++++-
>>   lib/Kconfig.debug                 | 42 +++++++++++++++++++++++++------
>>   scripts/test_dwarf5_support.sh    |  8 ++++++
>>   4 files changed, 57 insertions(+), 12 deletions(-)
>>   create mode 100755 scripts/test_dwarf5_support.sh
>>
>> --
>> 2.30.0.284.gd98b1dd5eaa7-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7354583d-de40-b6b9-6534-a4f4c038230f%40fb.com.
