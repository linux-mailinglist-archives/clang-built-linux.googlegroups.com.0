Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBS5OU2AAMGQEUTOPWRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 729542FEDD5
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 16:01:32 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id a3sf1144075oon.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 07:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jJJio+wvbylNvG3RDDL8oa5G3P6ioxGn3HbbB4LRZxo=;
        b=gKnudpwCKYqdPz3kl5MZ35T123kKXo3+SUNAfWZuPPPi8+/C6OrX72p9S61JVIZlSl
         ucYG/M6NnmLh3PBNHoN69MoBNxTsAZ17Fvm2q456uR9STQ0P8/arwtLYgdc0t3cxlGxs
         NOm58fVjoXtKW76IcqL+agsL1sDngj+G8tAOlkp4AhMrPi6eHs28e2FsthXKIx9B855T
         1+wo5/g6QKW39RtnEDF55ney94PL3z/iKh8jrR60IG0pHEjX5YbZnA2PqsgVD2i0o5GC
         F4hbm60Py5rxflyUFvCTSnLZroX8p3ynrB/Nwft885N5y9iZJc9+xfhC9eQ5NHX6mBWi
         qSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jJJio+wvbylNvG3RDDL8oa5G3P6ioxGn3HbbB4LRZxo=;
        b=WWwB0lI/nHoHgnJBf0k70khBF1EQhM6AQCewanHjX9rK52a6lfLR+RZSiIh0LMpBjN
         vinW4CPV2GBlxmGhmm1k9tUu3NkPH6YhCARmzH2j6GOozi/SvALBb7pUqgtouBEsBGoz
         YyRUabP9AArFHgXJPY3LrkAftv2WsFag9jnrAVhvBXkoDEDVvZxQPwWg0be5LKr4XeTU
         c3B2te8YCbfqNzyDJk2XPPL12dFNP06qeVucqk9IKf3XNnPoTpV5vkcKhhsW6fUQikcn
         m8fjrP7AQd+K3dAWweA86nNzBwjNpCWG1B72khl76Ji4y63MqLBWD2Lzf8tCxvAiWHc3
         I/3Q==
X-Gm-Message-State: AOAM53099IqLyqtoOg0dGLFpKMWq7tzCH0DQL9GMPknskvCqgHWBKvXa
	5SW0E/j0plJf7KGshtbRMY8=
X-Google-Smtp-Source: ABdhPJw9NlmBnPyajQ4XkZAZBE4CzMEkMUcTBT+LWjTz8Ddi03C2+VfsnNx44iTxq5E/oMkcYoMfXg==
X-Received: by 2002:a9d:69cf:: with SMTP id v15mr11134145oto.122.1611241291252;
        Thu, 21 Jan 2021 07:01:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1614:: with SMTP id g20ls623181otr.1.gmail; Thu, 21
 Jan 2021 07:01:29 -0800 (PST)
X-Received: by 2002:a9d:66d1:: with SMTP id t17mr10419188otm.163.1611241289346;
        Thu, 21 Jan 2021 07:01:29 -0800 (PST)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id s126si288017ooa.0.2021.01.21.07.01.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 07:01:29 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=0655336d9a=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10LErrUj011491;
	Thu, 21 Jan 2021 07:01:26 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 3674tdj1qk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 21 Jan 2021 07:01:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 21 Jan 2021 07:01:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N5Ob9nXEkokwA03VeyYEGxlZVJtMZAnkY+e2W2OPKpN29WfVKYNRD3j2DimP16mmjLiHKXqFHI0C5hmms5tPsYxREY7NTahTzP/OytuTHBwPxQNVIlNXlZr6GoT0R9gOnv/XcPWR5Iq3GkObQmFj8TTXFPFyXvzmHRNWPmcVJp08Eo/jeB8qAHrVbl1j+H0EZyqeNKDNMz8k0oKv0Hrf91epcJdvexQ24n/KLTJqLARo0yGHIuBpkYVgkpw7TScUfszQRcbwFAK+MLXV26ex23vLb/4WkiG9b+oFAKcUcLANJ9SMKGt4hMB5uDZgQEujwR/uyqQSTYbHmwBpJI5Fsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jlEnBMp/eIvptI3z57vgikTQ5O1Q5Fa3tIc0rdRqmJY=;
 b=BAEx2GEGz+ux+A3abMn+r7OF5CUoGW2I2/A0ABlc6bgQI48aPsIAVQiSCxiCKZ/pQGn+mi2/YoBNC81xgHD7wS3p6u6WS5w/MJaw0nqx+YeoacShjlZJ/rvyOlJsSVtYWUfQXMqRogHWrS6Y/aXQnScodefmmK4P2kNi3voO6c7Yq+dFYqAyKfUdWVNuX3NxMFMDc5xPXBCI6fwaOhqd2/j1Pvyj4ix3uxErakY6VNgaPeh3CI6UAR5yt9DbvdSMFoihX8dryW4Pnl7R+Rhi0CORbYxXy0i9DdfjQ1Ry30YIBsmaY9kal/RfLRd9S7+uzB52bakt1UBCxCKaYrSWMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB3192.namprd15.prod.outlook.com (2603:10b6:a03:10f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Thu, 21 Jan
 2021 15:01:23 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::61d6:781d:e0:ada5]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::61d6:781d:e0:ada5%5]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 15:01:22 +0000
Subject: Re: [PATCH bpf-next v3] samples/bpf: Update build procedure for
 manually compiling LLVM and Clang
To: Nathan Chancellor <natechancellor@gmail.com>,
        Andrii Nakryiko
	<andrii.nakryiko@gmail.com>
CC: Tiezhu Yang <yangtiezhu@loongson.cn>, Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>,
        John
 Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>,
        Nick
 Desaulniers <ndesaulniers@google.com>,
        Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>,
        open list
	<linux-kernel@vger.kernel.org>,
        Xuefeng Li <lixuefeng@loongson.cn>, Fangrui
 Song <maskray@google.com>
References: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn>
 <20210121053627.GA1680146@ubuntu-m3-large-x86>
 <CAEf4BzbZxuy8LRmngRzLZ3VTnrDw=Rf70Ghkbu1a5+fNpQud5Q@mail.gmail.com>
 <20210121142303.GA3346833@ubuntu-m3-large-x86>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <c472e39c-e1b8-0f9f-de31-0091206e7e8b@fb.com>
Date: Thu, 21 Jan 2021 07:01:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <20210121142303.GA3346833@ubuntu-m3-large-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:4191]
X-ClientProxiedBy: MWHPR19CA0014.namprd19.prod.outlook.com
 (2603:10b6:300:d4::24) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e1::1196] (2620:10d:c090:400::5:4191) by MWHPR19CA0014.namprd19.prod.outlook.com (2603:10b6:300:d4::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12 via Frontend Transport; Thu, 21 Jan 2021 15:01:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 798e5bf2-fe06-4a99-ed1e-08d8be1d6a51
X-MS-TrafficTypeDiagnostic: BYAPR15MB3192:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB3192ACE28E4E63F8FA50B188D3A19@BYAPR15MB3192.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9b8wfmBifdsKHNznIOmrzm3MI22fjNS8Z5iZ0go7pnEhhl6DcpfqolQnl/i/jDxgh2abACaSqSMxx8Vto+XldEaumRtSppcb+oMP5bAqpes9L9qQ6pmlsW/Z/FgDxk9XDxGtaX2CxS3xxhPpRHpO3PqPny8+djQMDPyEG/NLHMY92ux/2pfxabNx1He/ulgDy6ft4WWSb8AG3xTTcFYo4Den8F3zUq0npiTjnyDleLS4TXOftb5s+FnJ8+ElcsntOas6lzgjPvVn5dapDaaVv53LlD8t5a1ZeRi8KngP8z/WmP+jQ3c5HqEzC4c1etUogug8+jTGRnmpSSR2Kx8DbDebZ+MMgpF1HMnGJjeqehlemcP9iK9Oam1XdmdtMEY5bCUfqk8zE7XHNZUVDc7DpB5j7ZJUEdU37sYh9W6u6vUME6rtLgYRUeMJzEpWTxTnKzvdOoj2i5Eu0WwWsZV2wSuXVMVuvmPYDWS5jcByg4LHfal2DRfFJ/qYiw2k5QzZxJU3KvJCNXZ2mpXxhuVyINIGDvXKkyCt87azh0B7rcSYDaZoMgXidR191dBkYskx
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(376002)(396003)(366004)(346002)(39860400002)(8676002)(66946007)(66556008)(66476007)(7416002)(52116002)(53546011)(6486002)(4326008)(36756003)(15650500001)(86362001)(31696002)(2906002)(8936002)(5660300002)(478600001)(966005)(83380400001)(31686004)(316002)(2616005)(110136005)(186003)(16526019)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?eEMxVW5FR0MxeXJzaGxkYU94SEFIMTl6N09DN1U5UjJzOWZuWEI5SERMNFB3?=
 =?utf-8?B?U3owSm1JY2Vxd0RsK2xYNjVqUU5RMnJSa0UxVnRHMitXeTdvZnRwcU4vMkpG?=
 =?utf-8?B?Smkwb01QUWJ1enhRTjk2R0NYeWFrZGNUbk9jeWMrNW16T0ZVQnVTdzljdER1?=
 =?utf-8?B?b2VrTVU1dTVISFh1UVhVSFlNZ05pYlNhVU1uQm1SOW1OY1VrWWpjVG5kNEps?=
 =?utf-8?B?RjYwWHZCRGFnRDBKdUs3aGtWbXVZdndHRnBYWkVFUmRXOHYxNE42dFBQajNH?=
 =?utf-8?B?ZzZDVFJRa3FHREx4TlBjRnRCTEtmRDFDb3cva2FsbDd6K05hc1UwcG5HSm5K?=
 =?utf-8?B?dEdtWTQvNkZEWDlIQzFKU0x1RndNVkt4Q0VIMWl5RkVWY2d2NUptemZTeHQy?=
 =?utf-8?B?Q3ZwbnhsbzJEekp3WTFDUFZBamVFVDkxWldrSk1zMGNqbyt5TElhSFRpTXpF?=
 =?utf-8?B?VStzRDNDaWtoNE5IYTQ5RGxXR3dMdVF4KzRDczljODhQREFyVzFXYmo3TmxC?=
 =?utf-8?B?S3ZmZ3dyR0c4Nm55eU1NT1g2WFo4dW1lQzZ3VEdFVzJRVnl4aEpjQnhuZVQ5?=
 =?utf-8?B?TUMrNldDNzRmYzdvR2NpMHZiaUJtZjJPZkIvRzYrdzNjTGx3ZHhxQjBKSTl3?=
 =?utf-8?B?QXBtT01oQi9QMXptekdUV3lBTjkvb3RqbGZnbFA3UzgySHJqeTM4bjBuY3Q5?=
 =?utf-8?B?MkxJTDcrWlNsVEFEOWxLMHY5ZXBTbExQWE9rQWZ5a2RLMyt1MkhrVmFiTkhv?=
 =?utf-8?B?RkxvMzhEblBydnYzcjd3NXgrUHZvdWszTy91UjJDVXNPcERKUVJBb3BNRXN3?=
 =?utf-8?B?akpoSmZNOVVOY2U0clNzVHNPcHRGOE95R09DV2pYT3crN3ZxdjVZYVNrTSt2?=
 =?utf-8?B?d0czenNSejNZbTVXc05aK0g5Rld0c0NjbTUxVGtxNEoyRG9WeU5oUUxyOUpi?=
 =?utf-8?B?eVBEMld5dHc3VDRrL3pQaXkwcWhoajd0dkQraGN2NkMvdHd3ZW44WDRYU29a?=
 =?utf-8?B?Qm4zdGhhUGxKZVUyTGo3bXpzVFRmaGhtRklFN0E3WkJyRTlSdW9jT2M2bkdt?=
 =?utf-8?B?NTRwQ3RJUTI5WnpCRFlMc2czTWhqUmFPU0Z2YkdaMW9VSWorYWpBUisyU0Ni?=
 =?utf-8?B?dlBSUjc4bDkxdVRGcUJNT2V2L21LOEExYmpsOHRRaVBuMDdOR01pR3hUYmZp?=
 =?utf-8?B?US81OFNaR1p2YlhzMXFEaGljU09rZGQ4UGZuQlNnbTFaZ1RIVjlzYWVkN0Rj?=
 =?utf-8?B?aHdLUEpqQmVjc1ZLbXhKaG5lazd6QTFhT0E3NDdLOS9iUU15NmZQeVE4MTE5?=
 =?utf-8?B?bDdnd2xVdDZIdFVqR3E1V1J5OFNXajN3MXVUKzl4bVB2clFhNTRLZTJrL21Q?=
 =?utf-8?B?T0R4SG5zdHZVbVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 798e5bf2-fe06-4a99-ed1e-08d8be1d6a51
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2021 15:01:22.8253
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yn5/ei5XBM4sfx7fyGlO0nGPHjRlGyquUSR/m8thpwBZeXwOSION+iLsq7SONxQ9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3192
X-OriginatorOrg: fb.com
X-Proofpoint-UnRewURL: 8 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-21_08:2021-01-21,2021-01-21 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 mlxlogscore=999 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101210084
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=N+0yTH24;       dkim=neutral
 (body hash did not verify) header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=Bd+wobM+;       arc=fail (body hash mismatch);       spf=pass
 (google.com: domain of prvs=0655336d9a=yhs@fb.com designates 67.231.153.30 as
 permitted sender) smtp.mailfrom="prvs=0655336d9a=yhs@fb.com";
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



On 1/21/21 6:23 AM, Nathan Chancellor wrote:
> On Thu, Jan 21, 2021 at 12:08:31AM -0800, Andrii Nakryiko wrote:
>> On Wed, Jan 20, 2021 at 9:36 PM Nathan Chancellor
>> <natechancellor@gmail.com> wrote:
>>>
>>> On Thu, Jan 21, 2021 at 01:27:35PM +0800, Tiezhu Yang wrote:
>>>> The current LLVM and Clang build procedure in samples/bpf/README.rst is
>>>> out of date. See below that the links are not accessible any more.
>>>>
>>>> $ git clone http://llvm.org/git/llvm.git
>>>> Cloning into 'llvm'...
>>>> fatal: unable to access 'http://llvm.org/git/llvm.git/ ': Maximum (20) redirects followed
>>>> $ git clone --depth 1 http://llvm.org/git/clang.git
>>>> Cloning into 'clang'...
>>>> fatal: unable to access 'http://llvm.org/git/clang.git/ ': Maximum (20) redirects followed
>>>>
>>>> The LLVM community has adopted new ways to build the compiler. There are
>>>> different ways to build LLVM and Clang, the Clang Getting Started page [1]
>>>> has one way. As Yonghong said, it is better to copy the build procedure
>>>> in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
>>>>
>>>> I verified the procedure and it is proved to be feasible, so we should
>>>> update README.rst to reflect the reality. At the same time, update the
>>>> related comment in Makefile.
>>>>
>>>> Additionally, as Fangrui said, the dir llvm-project/llvm/build/install is
>>>> not used, BUILD_SHARED_LIBS=OFF is the default option [2], so also change
>>>> Documentation/bpf/bpf_devel_QA.rst together.
>>>>
>>>> [1] https://clang.llvm.org/get_started.html
>>>> [2] https://www.llvm.org/docs/CMake.html
>>>>
>>>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>>>> Acked-by: Yonghong Song <yhs@fb.com>
>>>
>>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>>>
>>> Small comment below.
>>>
>>>> ---
>>>>
>>>> v2: Update the commit message suggested by Yonghong,
>>>>      thank you very much.
>>>>
>>>> v3: Remove the default option BUILD_SHARED_LIBS=OFF
>>>>      and just mkdir llvm-project/llvm/build suggested
>>>>      by Fangrui.
>>>>
>>>>   Documentation/bpf/bpf_devel_QA.rst |  3 +--
>>>>   samples/bpf/Makefile               |  2 +-
>>>>   samples/bpf/README.rst             | 16 +++++++++-------
>>>>   3 files changed, 11 insertions(+), 10 deletions(-)
>>>>
>>>> diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
>>>> index 5b613d2..18788bb 100644
>>>> --- a/Documentation/bpf/bpf_devel_QA.rst
>>>> +++ b/Documentation/bpf/bpf_devel_QA.rst
>>>> @@ -506,11 +506,10 @@ that set up, proceed with building the latest LLVM and clang version
>>>>   from the git repositories::
>>>>
>>>>        $ git clone https://github.com/llvm/llvm-project.git
>>>> -     $ mkdir -p llvm-project/llvm/build/install
>>>> +     $ mkdir -p llvm-project/llvm/build
>>>>        $ cd llvm-project/llvm/build
>>>>        $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
>>>>                   -DLLVM_ENABLE_PROJECTS="clang"    \
>>>> -                -DBUILD_SHARED_LIBS=OFF           \
>>>>                   -DCMAKE_BUILD_TYPE=Release        \
>>>>                   -DLLVM_BUILD_RUNTIME=OFF
>>>>        $ ninja
>>>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>>>> index 26fc96c..d061446 100644
>>>> --- a/samples/bpf/Makefile
>>>> +++ b/samples/bpf/Makefile
>>>> @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock               += -pthread -lcap
>>>>   TPROGLDLIBS_xsk_fwd          += -pthread
>>>>
>>>>   # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>>>> -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>>>> +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>>>>   LLC ?= llc
>>>>   CLANG ?= clang
>>>>   OPT ?= opt
>>>> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
>>>> index dd34b2d..23006cb 100644
>>>> --- a/samples/bpf/README.rst
>>>> +++ b/samples/bpf/README.rst
>>>> @@ -65,17 +65,19 @@ To generate a smaller llc binary one can use::
>>>>   Quick sniplet for manually compiling LLVM and clang
>>>>   (build dependencies are cmake and gcc-c++)::
>>>
>>> Technically, ninja is now a build dependency as well, it might be worth
>>> mentioning that here (usually the package is ninja or ninja-build).
>>
>> it's possible to generate Makefile by passing `-g "Unix Makefiles"`,
>> which would avoid dependency on ninja, no?
> 
> Yes, although I am fairly certain that building with ninja is quicker so
> I would recommend keeping it. One small extra dependency never killed
> anyone plus ninja is becoming more common nowadays :)

Agree. Let us use 'ninja' here, which is widely used in llvm community
for llvm-project build compared to other alternatives.

> 
>>> Regardless of whether that is addressed or not (because it is small),
>>> feel free to carry forward my tag in any future revisions unless they
>>> drastically change.
>>>
>>>> - $ git clone http://llvm.org/git/llvm.git
>>>> - $ cd llvm/tools
>>>> - $ git clone --depth 1 http://llvm.org/git/clang.git
>>>> - $ cd ..; mkdir build; cd build
>>>> - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
>>>> - $ make -j $(getconf _NPROCESSORS_ONLN)
>>>> + $ git clone https://github.com/llvm/llvm-project.git
>>>> + $ mkdir -p llvm-project/llvm/build
>>>> + $ cd llvm-project/llvm/build
>>>> + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
>>>> +            -DLLVM_ENABLE_PROJECTS="clang"    \
>>>> +            -DCMAKE_BUILD_TYPE=Release        \
>>>> +            -DLLVM_BUILD_RUNTIME=OFF
>>>> + $ ninja
>>>>
>>>>   It is also possible to point make to the newly compiled 'llc' or
>>>>   'clang' command via redefining LLC or CLANG on the make command line::
>>>>
>>>> - make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>>>> + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>>>>
>>>>   Cross compiling samples
>>>>   -----------------------
>>>> --
>>>> 2.1.0
>>>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c472e39c-e1b8-0f9f-de31-0091206e7e8b%40fb.com.
