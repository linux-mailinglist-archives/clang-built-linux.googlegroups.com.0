Return-Path: <clang-built-linux+bncBCEZVMNM2MORBEEG2P6AKGQEC4RDEEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F59297F8E
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Oct 2020 02:13:06 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id w131sf2091098vkd.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Oct 2020 17:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/PHyAEZKee8x97zilj1liTq+793+EfRMqHudh8QDXus=;
        b=ow62ig1IT07C4qnXM8AXYegVu2mwUgJune5EyXUJGmA3OgauIy8GE+cUTYhusbZwv9
         YP2HOB/233qC1Sf3dDHwNTMVUe7BbhclX00JW8UmzYc94ulJTN0cwtd71GJnBo7BDvXt
         nYpWp8JOXRhGqGgt0fL/49IKf6ORTP9JwRW9Pc4wMY2QeCjQtAI5nw2AWFYcn1PzzeyO
         AU3wouSvtGULi7MIWG3z5SZbZ+LXqCAsKdJ96VRc/bk2IDTUYERyHbACBj0MP/oPb6XT
         aDVRdURFaffyycN/eF10L+FOOaAGVXPC67nMte2OS5QLGbwQBHF0wr4fnvblvGxyTfHu
         /rMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/PHyAEZKee8x97zilj1liTq+793+EfRMqHudh8QDXus=;
        b=tQcbSeFLKIwG0ZhC4SV6TyuE+CO+nnm6DC/+LwS7P+365kJKf728KZxv0fc0oIc+CX
         oQi6CZAusdfx61HzjlFTNhbHldW/OKLbIPmrKuM3ItkdQH3FwUFO8dkPQHyEFXkoSPab
         BLA87MwpQObmUfYAq75AxT6Vi3XtHYRXMCmpyzFhuwzjixNPrU910ZoBcYwQp+qRWbpj
         EfeXFXyRwt6re0Sp1TaLwJs7ZC8U6RMOkQ6XrLjomMKtYJdcbQSIwpt/rzfrQTZ0gCTT
         0Bqm0mjEtF+a5ODgvanSiq0mFgmhRWc8yutIXgglq5b0bbwIwEjG6caYb/yIGXKiPIu9
         Xaeg==
X-Gm-Message-State: AOAM531G2uTZlRSs8qyFelkATSmAg0bt+FOhesOJGVTsE60Yq62l+FZu
	R7np3wCYJExMSiIwiSRW11M=
X-Google-Smtp-Source: ABdhPJwkpRduv6YGAnywt4bpJA8gSagEx9GoBMoXY8CqCaGKNeKlw0fnU+Q55oN/GSFPYTh1nK2xxA==
X-Received: by 2002:a67:edcb:: with SMTP id e11mr11661176vsp.11.1603584785012;
        Sat, 24 Oct 2020 17:13:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3037:: with SMTP id v23ls596163vsa.11.gmail; Sat,
 24 Oct 2020 17:13:04 -0700 (PDT)
X-Received: by 2002:a67:18c5:: with SMTP id 188mr8713098vsy.30.1603584784412;
        Sat, 24 Oct 2020 17:13:04 -0700 (PDT)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id j77si294854vkj.1.2020.10.24.17.13.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2020 17:13:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=7567b7ab38=maks@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 09P09FnQ024082;
	Sat, 24 Oct 2020 17:13:00 -0700
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 34ckju9sj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 24 Oct 2020 17:12:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.230) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sat, 24 Oct 2020 17:12:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PO54v2/PN9t4MwMRWV8GLmckFkjNDYurdd0HI0Hh8XnVhsmKTIq/UnlOnQrfWfCcdkN88hoZ05VL9AaviqcPdGhggyzSXicuDsDVCdx1E8xWOXs1InKJ0KAmOCuKcLUclTfzeUsU0ivU2QCLjia07mHadhsJ+Xy4rMP5XA91W70TJDUgfh7UkwU9DZ9D59Edg0R02cfXTHwwgicO/lzKMQWdVOrubn0g8KpJF1vlpMaw8ABqjrXZLcMUzFxJ/pJwK/4PQriOzeUl84x3n2hD+jY3IGcYr6r7ILSCKRi+/gH1RH1R5ThNLGxKctiKCs9tkAdO9i+tlR6HL7e3GMdzPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5iXCOsoqTmv/dDS0W2KVeWY0p7ddMgAOcwDic1QnPZU=;
 b=a4WdqHsuhK3Dh1jbOMXeIiuhEmPa4efYeiiZh2HnwtKoqgm8pWrxrJHV29mlKr/9lQwgF1/mjXJX6nQ4O88bXBbuuuH7Bxrwg3VNNvtEGx7jNieYYwmodaqEtSGClC+KQogFihhZGrAq1U0p7eHYTEBlhkj9kaPbeje3wWNqvRsxOsnAaAcJF56PmFpydTUhnLizRDjuahZ8rTP4l590KxQPysvqI7bfOfE5wrwFkBf8Zh7e7G3MdpWhLJvFOZWmiH1iA0hxbNdg06GdNqlwU0FOkpFJiueo/QE+wtTj6ZxEsgEI0it/ikee263SSmVbLrz1N4i4zoOpP8UmCYLrow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3304.namprd15.prod.outlook.com (2603:10b6:a03:10a::16)
 by BYAPR15MB2885.namprd15.prod.outlook.com (2603:10b6:a03:f5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21; Sun, 25 Oct
 2020 00:12:44 +0000
Received: from BYAPR15MB3304.namprd15.prod.outlook.com
 ([fe80::1845:54a3:51f1:5b50]) by BYAPR15MB3304.namprd15.prod.outlook.com
 ([fe80::1845:54a3:51f1:5b50%5]) with mapi id 15.20.3477.029; Sun, 25 Oct 2020
 00:12:44 +0000
From: "'Maksim Panchenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "llvm-dev@lists.llvm.org" <llvm-dev@lists.llvm.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: Re: [llvm-dev] [RFC] BOLT: A Framework for Binary Analysis,
 Transformation, and Optimization
Thread-Topic: [llvm-dev] [RFC] BOLT: A Framework for Binary Analysis,
 Transformation, and Optimization
Thread-Index: AQHWpxBRCijWBqE+iEqJFWYbKqaOGamljWiAgAF2PIA=
Date: Sun, 25 Oct 2020 00:12:43 +0000
Message-ID: <252132EE-903E-4139-8146-019FFEBFD806@fb.com>
References: <68CFCDD3-E913-4093-A5E8-DAE88E0AF878@fb.com>
 <CAKwvOdkOso37i-sYm_M81KU49mzCTNRdF9c4Mae4f-L8GbDyNg@mail.gmail.com>
In-Reply-To: <CAKwvOdkOso37i-sYm_M81KU49mzCTNRdF9c4Mae4f-L8GbDyNg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.42.20101102
x-originating-ip: [2620:10d:c090:400::4:dc49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea158e04-9169-4653-c826-08d8787ab20e
x-ms-traffictypediagnostic: BYAPR15MB2885:
x-microsoft-antispam-prvs: <BYAPR15MB2885703DD3AE18C76A1291A8A5180@BYAPR15MB2885.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sj6y9jFntdGMI07AJIWEZI5iRgE8JWM5ne4Jc4O0gwaH42P0lpw5lVn7IbA6T+MhhQEFWj6exFWhSLtkcou1TQEqSyyRLBc0Ey50roqtEol7vQW8xDiK7K22JX6tOyTPepLLhQumkzMewE5tezUZl8sW7wwKspWQWiswhUZy/ii2kMnZzl522xmWXIci13tQTHWMFroqGfwXQNGtQEhc6oPNCvQm2GqdRsChr1hzkYeq0TSjDmG+Q/S/ZXY0KI4j5+iyPQmqt96jbKdrHZazLtKgRbrssXAVGH5fIatII80bGBgMK2kX0MWXLzZDYm2mizJ2MO0+LSVkeT41AVt73RZHhJITRvUEoZ7TDS/yOCh4DPQ32wljSeYiZxvWM+3N6z+owW3JmSyLA4ljEWajlA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB3304.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(376002)(136003)(346002)(396003)(366004)(66556008)(76116006)(45080400002)(83380400001)(66946007)(478600001)(64756008)(8936002)(316002)(66446008)(66476007)(5660300002)(4326008)(16799955002)(30864003)(6512007)(6486002)(2616005)(6916009)(186003)(36756003)(86362001)(2906002)(33656002)(71200400001)(8676002)(966005)(54906003)(53546011)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: TtnwWovGiuFuEgcqg6Jbh9Uau4CNx2je6sRP5AQ0cr4kEP71PUaRhCYF6ZLc7HjmQ1QdYIS/Vo4rY4DZdTi2c7TrETxRE1YG15uVB+I4utrhTU09MOETxhDeucsxv0paX8KJ0qkp57hDS4DGkLD+KsyU19bLgHkscQB8YctF0jANa9S/3ybH0Kigtjz2SC3CcJMcvjQFupI2lu0NoQUdVi+krMVVHoLdwn2iuRTSB+TGDK0xJH5paGCsNPMD+9azgxfU2FndfPC/AnZ3Cb9NScKC9Bff2xyjKZW0MJTofEeIeqNMiZA3mG8rMaw0NKeu2yjGfJbJ934CYbQkg6Yn5Kmf2lBk3nkoCWcIEqV1JaYaS5UmzaoCcgP1W128HHWDi7/vTGNssxHYYIIYYjjaUxbtbgpmOwbeZZ+az9uHNM0W5dxPmmsMfVzdJcb1X6zFu2DH9CLAooVe+zdNF0H+s8AGL93NWv2D3p8vh4X0G2Buyl5GY8aOP7iOgl/JXlXzVhs3fXLDl00eNX1mremxBisy7cumGRLSMEJSQLCuUSHdF7h4kaAtlRsyk0CvRks07wEF7SW4HJNl2uRUClEWDYkhNQgjh1VQsSe9UWRAYt/1PzYs5hHjS/qnMV5O8KYRZFZu53Mdl+OyPXEXo3fwkN2kpsR3zBP3UZqyedxBpODMFttrUQEghrblWnoNoDFY
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <F85D7E5428E05C4ABC5B6CCFF8918FA5@namprd15.prod.outlook.com>
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB3304.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea158e04-9169-4653-c826-08d8787ab20e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2020 00:12:44.0402
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LDJmd3MiUsPCOvL04bJz100MnTElFjebBbR+4Be2Vq51JoRFmSq86SshG+GoHTWE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2885
X-OriginatorOrg: fb.com
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 6 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.737
 definitions=2020-10-24_16:2020-10-23,2020-10-24 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 adultscore=0
 malwarescore=0 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 spamscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2010240187
X-FB-Internal: deliver
X-Original-Sender: maks@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=fzzBrLdw;       dkim=neutral
 (body hash did not verify) header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=DhwwC2pz;       arc=fail (body hash mismatch);       spf=pass
 (google.com: domain of prvs=7567b7ab38=maks@fb.com designates 67.231.145.42
 as permitted sender) smtp.mailfrom="prvs=7567b7ab38=maks@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
X-Original-From: Maksim Panchenko <maks@fb.com>
Reply-To: Maksim Panchenko <maks@fb.com>
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

Hi Nick,

Re-writing the kernel binary proved to be quite a challenge considering the=
 number of techniques
used for code patching/modification at startup and runtime. We think we ide=
ntified most of the
special ELF sections involved and started prototyping the support. It's goi=
ng to be a fun journey.
I'd be happy to discuss the collaboration.

Maksim

=EF=BB=BFOn 10/23/20, 11:53 AM, "Nick Desaulniers" <ndesaulniers@google.com=
> wrote:

    On Tue, Oct 20, 2020 at 11:39 AM Maksim Panchenko via llvm-dev
    <llvm-dev@lists.llvm.org> wrote:
    >
    > Hi All,
    >
    >
    >
    > Please find below an RFC for adding a binary optimization framework t=
o LLVM.
    >
    >
    >
    > Thanks for the feedback,
    >
    > Maksim & BOLT Team
    >
    >
    >
    > [RFC] BOLT: A Framework for Binary Analysis, Transformation, and Opti=
mization
    >
    >
    >
    > 1. Background and Motivation
    >
    >
    >
    > BOLT is a static post-link binary optimizer successfully used inside =
and outside of Facebook for code optimizations that complement traditional =
compiler whole-program and link-time optimizations [1]. Last year Google re=
ported that BOLT accelerates their key workloads by 2% to 6% [2]. Additiona=
lly, BOLT is used in academia as a framework for program instrumentation, t=
ransformation, and binary analysis [3].
    >
    >
    >
    > We believe that including BOLT in the LLVM project will benefit the c=
ommunity in several ways [4]. First, BOLT is useful as a binary optimizer. =
It has been used at Facebook to accelerate the top services, and we would l=
ove to see more people benefit from the performance boost that BOLT brings.=
 We would also love to see our partners adopt BOLT's new use-cases, such as=
 optimizing mobile and embedded applications. Beyond the binary optimizer, =
BOLT is an impressive infrastructure that enables research in the following=
 areas:
    >
    > Advanced disassembly
    > Low-level program instrumentation
    > Static analysis
    >
    >
    >
    > 2. Overview
    >
    >
    >
    > While BOLT uses several LLVM libraries [5], it is currently a separat=
e project based on an out-of-tree version of LLVM [6]. Most of the code liv=
es under separate tools/llvm-bolt directory, and required changes to LLVM a=
re included in the supplied patch [7]. The patch mainly consists of backpor=
ted fixes and minor extensions of the existing interfaces to update debug i=
nfo, frame information, and ORC.
    >
    >
    >
    > BOLT has no external build dependencies outside of LLVM. For profile =
collection, we recommend using sampling with a Linux perf tool [8]. LBR (la=
st branch records) feature [9] is recommended as it improves profile qualit=
y dramatically. BOLT can be supplied perf.data profile directly, but in gen=
eral, we advise converting the profile first using the supplied perf2bolt u=
tility. In case the sampling profiling is unavailable, e.g., while running =
under a hypervisor locally or in the cloud, BOLT provides a builtin instrum=
entation.
    >
    >
    >
    > BOLT supports x86-64 ELF as the primary platform. We have also implem=
ented the initial support for Aarch64, and the support for MachO is in the =
works.
    >
    >
    >
    > 3. USE CASES
    >
    >
    >
    > 3.1 Link-time and binary transformations and optimizations
    >
    >
    >
    > Static profile-driven post-link optimization of an application was ou=
r primary goal when creating BOLT. The convenience and expandability that t=
he model offers perhaps could only be exceeded by a dynamic binary optimiza=
tion approach. E.g., to optimize a binary using a perf-generated profile, t=
he user has to execute a single command:
    >
    >
    >
    > $ llvm-bolt a.out -data perf.data -o a.out.bolt <optimization opts>
    >
    >
    >
    > No recompilation of a.out is needed (*), but we ask to link with "--e=
mit-relocs" for maximum performance gains. However, the latter is not a str=
ict requirement, and the command works even on stripped binaries.
    >
    >
    >
    > We have worked on reducing BOLT processing time and memory consumptio=
n. Overall, BOLT efficiency has been improved by over 3X during that proces=
s. It takes less than a minute to optimize HHVM [10] production binary with=
 over 100 MB of code and less than 3 minutes to optimize another multi-giga=
byte production binary with 500 MB of code. BOLT memory consumption is unde=
r 5 GB for HHVM and under 13 GB for the large binary (**).
    >
    >
    >
    > Fast turn-around times for optimizing an application with BOLT withou=
t the need for source code allow us to design a system that automatically m=
anages binary profiling and optimization. This is one of the most exciting =
directions in application optimization we are currently pursuing.
    >
    >
    >
    > We thought it would be interesting to perform a fresh comparison of B=
OLT overhead to Propeller [11]. Sadly, Propeller relies on a custom version=
 of an external create-llvm-prof tool that we could not build in our setup,=
 and using a GitHub-hosted binary version of that tool in the virtual envir=
onment produced a profile that caused a performance regression of the optim=
ized application. Using "-fbasic-block-sections=3Dall" Propeller option wit=
hout a profile resulted in fast linking times but also caused a performance=
 regression.
    >
    >
    >
    > Although code reordering is the primary optimization in BOLT and the =
source of most performance gains, it is not the only optimization in BOLT. =
The full list of optimizations includes late inlining, indirect call promot=
ion, frame optimizations, and others. The convenience of adding new optimiz=
ations in whole-program post-link mode is one of the main advantages that t=
he BOLT framework offers, be it for research or practical purposes.
    >
    >
    >
    > Additionally, BOLT can add new code to a linked ELF binary. We have r=
ecently used that capability to allocate frequently-executed code on huge p=
ages automatically. Even legacy applications can now use 2MB pages for code=
 on x86-64 Linux systems to reduce the number of iTLB misses.
    >
    >
    >
    > BOLT's ability to process and optimize binary code without source cod=
e, such as legacy/distributed binaries, or code from third-party and assemb=
ly-written code, provides another advantage over a pure compiler-based appr=
oach. This advantage could or could not be important for optimizations depe=
nding on the user scenario. However, the visibility into the code mentioned=
 above could be critical for other code re-writing cases such as vulnerabil=
ity mitigations, instrumentation, and static analysis.
    >
    >
    >
    > *) Support for input with split functions is in the works. Before it =
is completed, we ask not to use "-freorder-blocks-and-partition" compiler o=
ption during the build. A similar or better result will be achieved by runn=
ing the BOLT function splitting pass.
    >
    >
    >
    > **) while running BOLT with "-reorder-blocks=3Dcache+ -reorder-functi=
ons=3Dhfsort -split-functions=3D1 -split-eh" optimization options. DWARF up=
date takes extra time and memory.
    >
    >
    >
    > 3.2 Advanced Disassembly
    >
    >
    >
    > Internally, BOLT identifies code in the binary, breaks it into functi=
ons, disassembles, and uses static analysis to build a control flow graph. =
This functionality could complement a traditional disassembler, as it adds =
the ability to display possible targets for indirect jumps/calls, providing=
 a better understanding of the control flow in a function.
    >
    >
    >
    > Additionally, for performance analysis, the disassembly is annotated =
with execution counts, including those for indirect branch targets within a=
 function (jump tables) and across functions (indirect and virtual function=
 calls). E.g.:
    >
    >
    >
    >   <Basic Block> .LFT35985
    >
    >   Exec Count : 42
    >
    >   Predecessors: .Ltmp935657
    >
    >       00003c8b: leaq "JUMP_TABLE/foo/1.14"(%rip), %rcx
    >
    >       00003c92: movslq (%rcx,%rax,4), %rax
    >
    >       00003c96: addq %rcx, %rax
    >
    >       00003c99: jmpq *%rax # JUMPTABLE @0x6e0f94
    >
    >   Successors: .Ltmp935702 (count: 0, mispreds: 0),
    >
    >               .Ltmp935705 (count: 41, mispreds: 26),
    >
    >               .Ltmp935703 (count: 0, mispreds: 0),
    >
    >               .Ltmp935704 (count: 1, mispreds: 0)
    >
    > ....
    >
    >   <BasicBlock>.LFT43 (9 instructions, align : 1)
    >
    >   Exec Count : 8
    >
    >   Predecessors: .LBB01191
    >
    >       00000028: movq %rdx, %rbx
    >
    >       0000002b: leaq 0x20(%rsp), %rdi
    >
    >       00000030: movl $0x2, %edx
    >
    >       00000035: movq %rbx, %rsi
    >
    >       00000038: callq *%rax # CallProfile: 8 (8 mispreds) :
    >
    >               { f1: 3 (3 mispreds) },
    >
    >               { f2: 1 (1 mispreds) },
    >
    >               { f3: 4 (4 mispreds) }
    >
    >       0000003a: movdqu 0x10(%rbx), %xmm0
    >
    >       0000003f: movdqu %xmm0, 0x30(%rsp)
    >
    >       00000045: movq %xmm0, %rcx
    >
    >       0000004a: jmp .Ltmp26968
    >
    >   Successors: .Ltmp26968 (count: 8, mispreds: 0)
    >
    >
    >
    > With LLVM integration, the advanced disassembler can be added as a ne=
w standalone tool or as an extra feature to existing tools such as llvm-obj=
dump.
    >
    >
    >
    > 3.3 Low-Level Program Instrumentation
    >
    >
    >
    > Tools, such as memory sanitizers, rely on compiler-generated memory i=
nstrumentation to detect application errors at runtime. Suppose part of the=
 application is written in assembly or comes from a library with no sources=
. In that case, such code could become a source of false positives and fals=
e negatives depending on the memory access types missed by the instrumentat=
ion. Since BOLT can instrument arbitrary code, independent of the source, i=
t can complement compiler-based instrumentation and fill in the missing par=
ts leading to a higher quality signal from the tool.
    >
    >
    >
    > 3.4 Static Analysis
    >
    >
    >
    > BOLT offers an intuitive API to perform compiler-level analyses direc=
tly on machine code. Because BOLT reconstructs the control-flow graph of th=
e program, it allows pass writers to extract arbitrary information beyond t=
he scope of a single basic block with data-flow analyses. As an example, we=
 can perform shrink wrapping by checking how stack-accessing instructions a=
re using the frame in a given function and validating opportunities to move=
 memory accesses in hot basic blocks to colder areas.
    >
    >
    >
    > While this framework provides the optimization writer with greater re=
ach over previously opaque external third-party binary code linked in the b=
inary, perhaps the greatest value of this is in this code being visible at =
all. With static analysis, users can write passes to draw conclusions on sa=
fety concerns as well, such as checking if system or library calls are bein=
g used in a suspicious way without the need to execute the binary.
    >
    >
    >
    > 4. Plans
    >
    >
    >
    > BOLT is a mature project that has been used in production for years, =
but we continue to develop BOLT and invest in new use-cases and optimizatio=
ns. Below is a shortlist of areas that are currently under development:
    >
    > Automatic profile collection and optimization
    > MachO support
    > LLD integration
    > Optimizing Linux kernel

    Hi Maksim, you already know I'm a big fan of BOLT.  Specifically for
    the area under development of optimizing the Linux kernel, I think
    BOLT could be a huge competitive advantage for LLVM.  Any way we could
    discuss/collaborate more on that?  I look forward to seeing patches
    upstreamed.

    >
    >
    >
    > --
    >
    > BOLT Team
    >
    >
    >
    > References
    >
    > [1] Maksim Panchenko, Rafael Auler, Bill Nell, and Guilherme Ottoni. =
2019. BOLT: a practical binary optimizer for data centers and beyond. In "P=
roceedings of the 2019 IEEE/ACM International Symposium on Code Generation =
and Optimization" (CGO 2019). IEEE Press, 2=E2=80=9314. https://research.fb=
.com/publications/bolt-a-practical-binary-optimizer-for-data-centers-and-be=
yond/
    >
    > [2] https://lists.llvm.org/pipermail/llvm-dev/2019-September/135393.h=
tml=20
    >
    > [3] Joe Savage and Timothy M. Jones. 2020. HALO: post-link heap-layou=
t optimisation. In "Proceedings of the 18th ACM/IEEE International Symposiu=
m on Code Generation and Optimization" (CGO 2020). Association for Computin=
g Machinery, New York, NY, USA, 94=E2=80=93106. DOI:https://doi.org/10.1145=
/3368826.3377914=20
    >
    > [4] https://github.com/facebookincubator/BOLT/issues/46
    >
    > [5] Maksim Panchenko. 2016. Building Binary Optimizer with LLVM. 2016=
 European LLVM Developers' Meeting. https://llvm.org/devmtg/2016-03/#presen=
tation7=20
    >
    > [6] https://github.com/facebookincubator/BOLT
    >
    > [7] https://github.com/facebookincubator/BOLT/blob/master/llvm.patch
    >
    > [8] perf: Linux profiling with performance counters. https://perf.wik=
i.kernel.org/index.php/Main_Page.
    >
    > [9] Runtime Performance Optimization Blueprint: Intel=C2=AE Architect=
ure Optimizations with LBR. https://software.intel.com/content/www/us/en/de=
velop/articles/runtime-optimization-blueprint-IA-optimization-with-last-bra=
nch-record.html=20
    >
    > [10] The HipHop Virtual Machine. https://hhvm.com/
    >
    > [11] Propeller RFC. https://github.com/google/llvm-propeller/blob/plo=
-dev/Propeller_RFC.pdf. Updated performance results: https://lists.llvm.org=
/pipermail/llvm-dev/2019-October/136030.html=20
    >
    >
    >
    >
    >
    > _______________________________________________
    > LLVM Developers mailing list
    > llvm-dev@lists.llvm.org
    > https://lists.llvm.org/cgi-bin/mailman/listinfo/llvm-dev=20



    --=20
    Thanks,
    ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/252132EE-903E-4139-8146-019FFEBFD806%40fb.com.
