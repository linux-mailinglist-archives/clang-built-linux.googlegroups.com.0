Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBL54T2AAMGQEKODCRHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3726F2FC86A
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 04:06:25 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id b4sf1413953pji.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 19:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oIMZ4xxtWlkqt9OI+K/qCXIpu5R9xurmeP8ejYESYW4=;
        b=tVbI4nHZqmoTcv0fnREmW0lnzVcFWPJB2In8nmEEQIeqBn2vva+V8sKNZ4eB81ulvv
         fwXbJQtkDVNcptprH2xJgYe2fGdAymrKWTuIDCT/OMrq9+jtE+UGZhc5Y5IBrILL6uIT
         8caCTq+KUzGJJxFlXGBsSztoSdb6iAOgw5A99J4e/0sPAoXVpskkLRU67S2mRz8u6q4c
         +yaSWsF2KPuGQP0e0nJ7RJTX2OQou++wAR12MWe9Dch9yOJNM2fsNBQmVw4oyST0tgdE
         yBt/nhEqzYFkoXKW1E02mrS+/mhcn+CAWdnZ0pSs1n+kww6felguj5V1kioHeOqUHjvv
         3Bjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oIMZ4xxtWlkqt9OI+K/qCXIpu5R9xurmeP8ejYESYW4=;
        b=Mz9dzWfmubInkz5CXh8ZZQCEz6XnWJegtZyky3kJx8hS4SbWoob9XhzVcUmvqY0UnG
         jQZD0wuDWPeVL7HoUdvZG3eLR1efJBu8US1aaU0HNFXPjnr/Gp/E3RL8802U9BGwQjFw
         WFt1uGNZEjIp3xov5Mg7DtkxaDU99fY9bQMEM6OApVrgmhNZqJZlJuAH5H8XAA73GAHy
         AxlX6v5pMwA4gLPA+jAw3BKUFany/cHAtQsbaSD8/wtkFtgw/0WYBfikQum/9Bc4PEIp
         0EndhZg2gPmPLzfZj9419TDY9SNQwu69998gzpVO5OeUTQrBH/LGm4UW5NUygSQGLzTZ
         KVzg==
X-Gm-Message-State: AOAM5329bZ/N0TCMIS0ROWavolF2xFT9ii2+1rodmbkeNVZVrOhT1/UF
	+ElJhcEKDU8PY51aYKbegQc=
X-Google-Smtp-Source: ABdhPJz8qtgA7aloBkuSOjfXJ2/uIIeUZJT0zHxkE9R4vbR0+eAMRxEU8SdKI4VVHACPj8PX6bZlXA==
X-Received: by 2002:aa7:8159:0:b029:1a5:54e4:7cf2 with SMTP id d25-20020aa781590000b02901a554e47cf2mr7005344pfn.69.1611111983579;
        Tue, 19 Jan 2021 19:06:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7614:: with SMTP id k20ls6271809pll.5.gmail; Tue, 19
 Jan 2021 19:06:23 -0800 (PST)
X-Received: by 2002:a17:902:864a:b029:de:fe25:3e08 with SMTP id y10-20020a170902864ab02900defe253e08mr3678591plt.75.1611111982935;
        Tue, 19 Jan 2021 19:06:22 -0800 (PST)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id d1si50095pjo.1.2021.01.19.19.06.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 19:06:22 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=06544e7dca=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.0.43/8.16.0.43) with SMTP id 10K31w1Q001161;
	Tue, 19 Jan 2021 19:06:20 -0800
Received: from mail.thefacebook.com ([163.114.132.120])
	by m0001303.ppops.net with ESMTP id 3668r3s1e2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 19 Jan 2021 19:06:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 19 Jan 2021 19:06:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GYfDpYg3R1fAXVIwF2Gee3JySRcLlZpvJRa7VoLYZxmJe9IIxm9HGlEXyLm2MYhq5tM3SIER6dqlCb2DxvVbcFzJTVJRZ7S+Sla4X5iVDCaMSl/pzF2IjAOoiEEKipuLQLU8Xrsn0aqmfO4zat97/BbMHOAiW172LQ1Xe5WLllunovEGQgxOdLbDWq1lntoRga2JdSnTHRn+YFZEPVEXvrrEl9uqk6+ut2aVQLvu+UOJzRUgnrZgUXLTQm4B8oFqZi8aC49F4zq0JxURf0IBn+9jkDGzSpXxf8tXj06fdsqrzYXDVu0fggWAx58DmS0rLhxNHaikTpCpHyl9+0gzpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O4g7jp9O/5flS95hJdC3+4qUkTcfowg7Smt9B1J7rw4=;
 b=cACd+EvkK0B90uA5g0SD88LjBRG1xHWrjSDRXL7xEjUQKYNJvVOKkBZRYVkmBjzlJfMs6FcLsBLITOBI/5F6mlE0RTU4W19+SUd9uawJ2bo/gYOONun1nHlzFZ7nC1FHeJs9eIyCjm3fXAYaRRImWz14drTnoemTCuSFGtVHGFLZD0hBi+kHUcfxY33yQfBvorGPEhv9s1pttK9mTeEWtO6VmKkiWc3N+nKsUInvgCeHfgUNmF2tfdkHaKrqbQxc5RK+o/uoOCh/I6h23dv3JiOfDhc3ybhFR9mxiHeF5mPQkkMj55i+1GIygsDGH4d9NT/r1M5nh74B/h6r5OYJQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB4246.namprd15.prod.outlook.com (2603:10b6:a03:10e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Wed, 20 Jan
 2021 03:06:17 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3763.014; Wed, 20 Jan 2021
 03:06:17 +0000
Subject: Re: [PATCH bpf-next v2] samples/bpf: Update README.rst and Makefile
 for manually compiling LLVM and clang
To: Tiezhu Yang <yangtiezhu@loongson.cn>, Fangrui Song <maskray@google.com>
CC: Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann
	<daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
	<kafai@fb.com>,
        Song Liu <songliubraving@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>,
        Nathan Chancellor
	<natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>, <netdev@vger.kernel.org>,
        <bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>,
        <linux-kernel@vger.kernel.org>, Xuefeng
 Li <lixuefeng@loongson.cn>
References: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
 <20210119215815.efyerbwwq5x2o26q@google.com>
 <b526e0eb-f05f-1c3a-de8f-3d7e9bef73ee@loongson.cn>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <cda075d8-0c80-5fbb-2b5c-571098560e55@fb.com>
Date: Tue, 19 Jan 2021 19:06:11 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <b526e0eb-f05f-1c3a-de8f-3d7e9bef73ee@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:4417]
X-ClientProxiedBy: MW4PR03CA0348.namprd03.prod.outlook.com
 (2603:10b6:303:dc::23) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21c8::1290] (2620:10d:c090:400::5:4417) by MW4PR03CA0348.namprd03.prod.outlook.com (2603:10b6:303:dc::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend Transport; Wed, 20 Jan 2021 03:06:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28e7e036-80f3-46ca-ea9e-08d8bcf05a6e
X-MS-TrafficTypeDiagnostic: BYAPR15MB4246:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB42466F0A6DC045FADD8F6D85D3A20@BYAPR15MB4246.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +BhJMJUuMUrTtKcK+RJf2E4mA7qw/P6Ul5IwmS+3b8uXMKb6e/j3a75TAzbMjHAymz/NWtTusH8dNFIph3VT/VscuzRshK7aazlXQc+awURof6abwV/EY40gnMjej+2gyv/Iqmtzb30m4ZHM3aOpIWTqE3yKsblqrO476v/o5c7Yvy8JCSzFgTyeXAaak/r/7gkxcl//KST3+ic1OW3Qpg443gweuiTdSWnyVoz5ODiFpmE5FtlM2FEWhEW264HFFn32n1YGb6ETXmX+BMhHgvhbhdtP2oZmDmVzO0ZD+Nyt6fqzYMB4n91awRm0x/DK1XiSuollSM7uilnKoxnBncnRgz9vANlp0+UwM7cAyEeCUgyEXnpdjldXUWwMzJ1++31pAoKii7tW/PqQgnhjo07I7iuOh3TC652NUsBYVHvzhGWiDpjWlpy9nv6qzj5hc7qX2O7glGEX9mN/3pdDQJdvtriR5mvVOS+hmk3xfkiLgMoiS5EeER38M0iVeRqBTsYbPTsdH5eAcusRkUfPJIRqvF42ic4tuJcCvv8aZ1z+iDxM2hj8OtQhnvRgEDt8
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(39860400002)(396003)(366004)(376002)(966005)(110136005)(316002)(53546011)(86362001)(2906002)(8936002)(6486002)(31686004)(52116002)(66556008)(36756003)(83380400001)(5660300002)(186003)(54906003)(16526019)(8676002)(66476007)(478600001)(7416002)(31696002)(4326008)(15650500001)(2616005)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?VTNndEMyb0x4Zk9ma3MyeFlQdDhSZlZTTGN2UGZjR1BoeGhVdEdEdkttellm?=
 =?utf-8?B?TyswZS8wWGlwVzhaZDhWTHNYckRuZnJuRVdDcjlOb2lSMG1vUWVBcG4zYW9F?=
 =?utf-8?B?Mm5mdnZuZUFVeG5EWkgzT3ZEdGNUQzh3K1IzZEc3MjZ0S1p3WThOREdjeTRq?=
 =?utf-8?B?eHhWU3dEZzl3L1cveEpJenBjVTJMMkdtSCtia09SSWNOS3IyanM0dDluR2U0?=
 =?utf-8?B?UnRTVDA1TEd2M0M2WlhtZkdqM25yWEVjRlUrSW1SeDB5WXpJOXdZZ0l3TGlw?=
 =?utf-8?B?ZnBmU1lpbzJETDk0ZlpVSGdUWDhVbHZFSUlsb1RGMTVJOGJIWHRLR2x2VGpm?=
 =?utf-8?B?NzFPUHg0d2Ewbi9nVjM5VVl2bVk5OS9IWEo4ZGpIMEE3c1EwZTg3V1VETVNa?=
 =?utf-8?B?STBYM3VkVURWZ2ZXYWlOUllGOTlTalZMKzFWaThaTHJ3Mks5Ny85K2RkV0FI?=
 =?utf-8?B?UjhVbHg1Mjdjam12ekdaQkFvcjFNTUlDRDZFaVlXeUFjV0pIZFRVQXhvdEEw?=
 =?utf-8?B?YXhxbDBTeXlwOFpaWG5KTHhBMEpvZ1BnVERmamQ0eXA5MG1KYmtaZlJUcGZn?=
 =?utf-8?B?NXBOdXU2UVNLdjhNUTlsYzFKME5PcDJyck9ISkI4UkVEbEhZQ0ZHVG9sVkVS?=
 =?utf-8?B?UHU5V3owY2lic2x6UzdVWXRrRFVEWTlZaDVXSVNXQUNGdGxTRll6UDBOZUxR?=
 =?utf-8?B?ZnJHcUdaQm1QQTNLbWt6Z1U3ZzNkd1YrV3h4b1NleUllOVBTY0k0cEtmdXBW?=
 =?utf-8?B?bm1OM1FHeVBGZ1FtWXEyTDFERWxpZHBvcFhVcWpRNCt3aWE4R2lMOFlLWU1E?=
 =?utf-8?B?VVlIdWdSTUFvVHRoekljbk56bkxBNzk2dFVEd3pnU1cyOHZoeFAwdzA2SzQx?=
 =?utf-8?B?MzRiRzEwM2ZxTmc2bG5zWHdsN3VNMXU2VTZXaDZCYUlHeW9pek8zWDJaSHV3?=
 =?utf-8?B?NzFseEo1NlFRTUVJamlpanhyNWNNc1E5dGxVbUc4OVNOeHRyd1dwYi9WOXNR?=
 =?utf-8?B?L1hCOHdtb2xzNWJnNGR0TXZDeHFvUitiODZOY2lNRlhFU3ROQy9rNXdYL3BR?=
 =?utf-8?B?T3IwVUJwdFJFRFJncjRDWlRWMTdYaU9uaENvZkJDbWJiUk01cWJyNGZUZkxi?=
 =?utf-8?B?bXB1THNxQy90SHpGdG9OMmp0dXQ2V3VWb1h3clFycTZSdWJzUzhHaEFGZUUz?=
 =?utf-8?B?dzZRTnVLeWVkNG84R2trUjhOYjZoY1dYRFd1U0Yrc0JRcmdPSjZSU1ZMMmFh?=
 =?utf-8?B?ZXpITWoveUR2OExoWC9PS2JoUGExd0xtSE1wWUU3ck5zeEtEbEdEMGtMeDI5?=
 =?utf-8?B?TVhuRW9CSU9tVFNvSmU0bHFjbm51SjlvYXAwbDYyT3FKU0ZYY2M2d0t2anNx?=
 =?utf-8?B?WUtmUXlMZ2lFM3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28e7e036-80f3-46ca-ea9e-08d8bcf05a6e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2021 03:06:17.1624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6WgVCDE+qZg45Lja5QyDlX7YxiHwKm0Yxzajw359ZgzYKZiH4ULtW8VXNF9tfLnX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB4246
X-OriginatorOrg: fb.com
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 9 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-19_15:2021-01-18,2021-01-19 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 mlxlogscore=999 spamscore=0 adultscore=0
 suspectscore=0 mlxscore=0 phishscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101200017
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=FHOMDWdD;       dkim=neutral
 (body hash did not verify) header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=jjze7gWs;       arc=fail (body hash mismatch);       spf=pass
 (google.com: domain of prvs=06544e7dca=yhs@fb.com designates 67.231.153.30 as
 permitted sender) smtp.mailfrom="prvs=06544e7dca=yhs@fb.com";
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



On 1/19/21 6:32 PM, Tiezhu Yang wrote:
> On 01/20/2021 05:58 AM, Fangrui Song wrote:
>> On 2021-01-19, Tiezhu Yang wrote:
>>> The current llvm/clang build procedure in samples/bpf/README.rst is
>>> out of date. See below that the links are not accessible any more.
>>>
>>> $ git clone=20
>>> http://llvm.org/git/llvm.git=20
>>> Cloning into 'llvm'...
>>> fatal: unable to access=20
>>> 'http://llvm.org/git/llvm.git/=20
>>> ': Maximum (20) redirects followed
>>> $ git clone --depth 1=20
>>> http://llvm.org/git/clang.git=20
>>> Cloning into 'clang'...
>>> fatal: unable to access=20
>>> 'http://llvm.org/git/clang.git/=20
>>> ': Maximum (20) redirects followed
>>>
>>> The llvm community has adopted new ways to build the compiler. There ar=
e
>>> different ways to build llvm/clang, the Clang Getting Started page=20
>>> [1] has
>>> one way. As Yonghong said, it is better to just copy the build procedur=
e
>>> in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
>>>
>>> I verified the procedure and it is proved to be feasible, so we should
>>> update README.rst to reflect the reality. At the same time, update the
>>> related comment in Makefile.
>>>
>>> [1]=20
>>> https://clang.llvm.org/get_started.html=20
>>>
>>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>>> Acked-by: Yonghong Song <yhs@fb.com>
>>> ---
>>>
>>> v2: Update the commit message suggested by Yonghong,
>>> =C2=A0=C2=A0 thank you very much.
>>>
>>> samples/bpf/Makefile=C2=A0=C2=A0 |=C2=A0 2 +-
>>> samples/bpf/README.rst | 17 ++++++++++-------
>>> 2 files changed, 11 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>>> index 26fc96c..d061446 100644
>>> --- a/samples/bpf/Makefile
>>> +++ b/samples/bpf/Makefile
>>> @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 +=3D -pthread -lcap
>>> TPROGLDLIBS_xsk_fwd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +=3D -pth=
read
>>>
>>> # Allows pointing LLC/CLANG to a LLVM backend with bpf support,=20
>>> redefine on cmdline:
>>> -#=C2=A0 make M=3Dsamples/bpf/ LLC=3D~/git/llvm/build/bin/llc=20
>>> CLANG=3D~/git/llvm/build/bin/clang
>>> +# make M=3Dsamples/bpf LLC=3D~/git/llvm-project/llvm/build/bin/llc=20
>>> CLANG=3D~/git/llvm-project/llvm/build/bin/clang
>>> LLC ?=3D llc
>>> CLANG ?=3D clang
>>> OPT ?=3D opt
>>> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
>>> index dd34b2d..d1be438 100644
>>> --- a/samples/bpf/README.rst
>>> +++ b/samples/bpf/README.rst
>>> @@ -65,17 +65,20 @@ To generate a smaller llc binary one can use::
>>> Quick sniplet for manually compiling LLVM and clang
>>> (build dependencies are cmake and gcc-c++)::
>>>
>>> - $ git clone=20
>>> http://llvm.org/git/llvm.git=20
>>> - $ cd llvm/tools
>>> - $ git clone --depth 1=20
>>> http://llvm.org/git/clang.git=20
>>> - $ cd ..; mkdir build; cd build
>>> - $ cmake .. -DLLVM_TARGETS_TO_BUILD=3D"BPF;X86"
>>> - $ make -j $(getconf _NPROCESSORS_ONLN)
>>> + $ git clone https://github.com/llvm/llvm-project.git
>>> + $ mkdir -p llvm-project/llvm/build/install
>>
>> llvm-project/llvm/build/install is not used.
>=20
> Yes, just mkdir -p llvm-project/llvm/build is OK.
>=20
>>
>>> + $ cd llvm-project/llvm/build
>>> + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD=3D"BPF;X86" \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -DL=
LVM_ENABLE_PROJECTS=3D"clang"=C2=A0=C2=A0=C2=A0 \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -DB=
UILD_SHARED_LIBS=3DOFF=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 \
>>
>> -DBUILD_SHARED_LIBS=3DOFF is the default. It can be omitted.
>=20
> I search the related doc [1] [2], remove this option is OK for me.
>=20
> BUILD_SHARED_LIBS:BOOL
>=20
>  =C2=A0=C2=A0=C2=A0 Flag indicating if each LLVM component (e.g. Support)=
 is built as a=20
> shared library (ON) or as a static library (OFF). Its default value is OF=
F.
>=20
> [1]=20
> https://www.llvm.org/docs/CMake.html=20
> [2]=20
> https://cmake.org/cmake/help/latest/variable/BUILD_SHARED_LIBS.html=20
>=20
>>
>>> + -DCMAKE_BUILD_TYPE=3DRelease=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -DL=
LVM_BUILD_RUNTIME=3DOFF
>>
>> -DLLVM_BUILD_RUNTIME=3DOFF can be omitted if none of
>> compiler-rt/libc++/libc++abi is built.
>=20
> I am not very sure about it because the default value of
> LLVM_BUILD_RUNTIME is ON? [3]
>=20
> option(LLVM_BUILD_RUNTIME
> "Build the LLVM runtime libraries." ON)
>=20
> [3] https://github.com/llvm/llvm-project/blob/main/llvm/CMakeLists.txt
>=20
> If anyone has any more suggestions, please let me know.
> I will send v3 after waiting for other feedback.
>=20
> By the way, Documentation/bpf/bpf_devel_QA.rst maybe need a separate
> patch to remove some cmake options?

Please submit updated this patch and Documentation/bpf/bpf_devel_QA.rst
together. This way, it is easy to cross check. Thanks.

>=20
> Thanks,
> Tiezhu
>=20
[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cda075d8-0c80-5fbb-2b5c-571098560e55%40fb.com.
