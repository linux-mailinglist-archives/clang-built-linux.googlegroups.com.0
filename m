Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBSNIQSGQMGQEYWU2JHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D72845F29B
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Nov 2021 18:07:22 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id f3-20020a9d6c03000000b0055c9d337de8sf4613035otq.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Nov 2021 09:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GTquvNCBxlJcBcI1mAl8Wfwt/h9MG9WyJJOSirkbsUE=;
        b=quB93S5lP5aM8Jp9B65SUitzgg+YcbGI9WlYEytCOlGBUzkmnJ3Ay2YjzECtNdtF/N
         yZAMiq5O0OfXQfrMoFmkK7xA1IaCUbXUDkCW+gbWAlDBWmdIJsK2PTkx+Z9/4rs4Jmdi
         mMFBJkRYFPMnsTh/g2Q9z/rWSfQ+gX/uV336Sdz4T9o3GcN+ufmjcqK0g5nWeRud6Xqo
         XHDdooLAFB4XFERt2UQv5xv2+bIqFQRTKBf/BBxRp/cG4sI9pqYlHtq9aTERZlJcCjTg
         Hp1DxWnwphig4ArAW+tBrDj+7xyckoLwkqD3MVOPIke7SGekms6lLSDTvON3xB54KpxL
         pHyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GTquvNCBxlJcBcI1mAl8Wfwt/h9MG9WyJJOSirkbsUE=;
        b=UqmFxavu1VrfJ3hEUEM8Z9aOu9UTyB0zc4bJTusH1Jsk3THZ0fz5ULFESbrUZf3uBn
         /Oq7vTW0u2AnPQaN8lzM+zMqWsmrsIAN8wes/oHly/wAjpcw2//VMfKHn5Zkt1RvnabT
         vvZCaqeT0f03CmRFma3r7+3SJnGD+uH3tdvttedO+5293KMJ4pDAGz7+0c0w1r+zUZMT
         mf6ndhzvhjSuCYdo6nB1++5l/x7vyJsQ+8pWm2ewr4ARs+gvrCA9kh5ZqXpbFzfy0Zu0
         HIoHEvXnGq+lha76TBmjQgesSOzNMGZCsMf9McvefxJ2uH3TLk/AbOBcnngXkEQzR7Sa
         q+xA==
X-Gm-Message-State: AOAM5316KyABWfSQyPwiVtxIz6thRbQgEO/FPXfDNLpgoPma2eF14DV+
	rZCSWthcufaIq/XKWB75v2M=
X-Google-Smtp-Source: ABdhPJxp464KeVb+/skHRY8ymh4MlWAd2+TXgQSISoJwGh+6cPcVkn4dHdkGIjTFE0a7uYKba9GZiw==
X-Received: by 2002:a9d:137:: with SMTP id 52mr28675934otu.260.1637946441161;
        Fri, 26 Nov 2021 09:07:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:8881:: with SMTP id j1ls455036ooa.4.gmail; Fri, 26 Nov
 2021 09:07:20 -0800 (PST)
X-Received: by 2002:a4a:b20c:: with SMTP id d12mr3141120ooo.87.1637946440717;
        Fri, 26 Nov 2021 09:07:20 -0800 (PST)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id ay24si1000907oob.1.2021.11.26.09.07.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Nov 2021 09:07:20 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=096484b02e=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AQC7kK4000482;
	Fri, 26 Nov 2021 09:07:15 -0800
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 3cjyab9pd3-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 26 Nov 2021 09:07:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 26 Nov 2021 09:07:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0iyJaNCqhYL6tTRrAFWZMlRMZ40XsnlK0pmi67yqkFeZXL5RAHHdj2m0xDG9+SuInFQ8+xAwOVfGZSEidwXIt5ASdvUCJUyhYNZbiJzYOP+SolU217TZRmqr3misI+yzZcinrgXoVsRCZi3a3cy6lUh7cCj5nJDvpPRiXxWiOdf6yfuX+aIJTq8qALE1LXuHAjMEY0e/K/JadL21GAPUCulGIlO0xWRq5rWtDOH+WObRiXttSsgk8HRy7iCPZWPAZavu4N2nIIkW9mtxkDI8EBJXwCaecmR9si/21ZmjiAdcc7mRVA5dkXbktvsyyZpIyL7TdSUsWue2PIjRSbaeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OmCEtcUDIZDPXusEy4RJ0MZpLlwu396RRXpsjiYxQtM=;
 b=Gr2Rjuduh2Utb4NmoqfsLjma63W1GXYnQTn+i2hmQpmmyYYIXIHs2nh1k+ikuqFf4FOQQ1eJxgZ9OXyAcKPRPAMAEWPRaMNNGt7P2EZKmjblyTWepJxJL6Cs68ASX46soAiqRi+QX0dhSUQPpeA8kqR41Yva4EATyJBSLA1sqZ+yLdbx3YK/CcT0j2XEa18JXuNcudO9HXv+rSOsafZ4fS9BLNOnY3wp0jxLG2EH7wY2jrtlCoLTgkrBMIAtOT6cknC2QZUjuLuJ6IAAbHDmRHEwNlFw9G398S5Pn2sA+m8D38ce++32BRAGhwWnT8sG8qiK16aV+amwxa5/HShxeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com (2603:10b6:805:d::27)
 by SA1PR15MB4869.namprd15.prod.outlook.com (2603:10b6:806:1d0::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Fri, 26 Nov
 2021 17:07:11 +0000
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::a91b:fba1:b79c:812c]) by SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::a91b:fba1:b79c:812c%5]) with mapi id 15.20.4713.027; Fri, 26 Nov 2021
 17:07:11 +0000
Message-ID: <ce2d9407-b141-6647-939f-0f679157fdf7@fb.com>
Date: Fri, 26 Nov 2021 09:07:06 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.2
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
Content-Language: en-US
To: Maxim Mikityanskiy <maximmi@nvidia.com>
CC: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
        Lorenz
 Bauer <lmb@cloudflare.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel
 Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>, Martin
 KaFai Lau <kafai@fb.com>,
        Song Liu <songliubraving@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Eric Dumazet
	<edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub
 Kicinski <kuba@kernel.org>,
        Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
        David Ahern <dsahern@kernel.org>,
        Jesper Dangaard Brouer <hawk@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers
	<ndesaulniers@google.com>,
        Brendan Jackman <jackmanb@google.com>,
        Florent
 Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>,
        Tariq Toukan
	<tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>,
        bpf
	<bpf@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk> <1901a631-25c0-158d-b37f-df6d23d8e8ab@nvidia.com>
 <103c5154-cc29-a5ab-3c30-587fc0fbeae2@fb.com>
 <1b9b3c40-f933-59c3-09e6-aa6c3dda438f@nvidia.com>
 <68a63a77-f856-1690-cb60-327fc753b476@fb.com>
 <3e673e1a-2711-320b-f0be-2432cf4bbe9c@nvidia.com>
 <f08fa9aa-8b0d-8217-1823-2830b2b2587c@fb.com>
 <cbd2e655-8113-e719-4b9d-b3987c398b04@nvidia.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <cbd2e655-8113-e719-4b9d-b3987c398b04@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: MW4PR04CA0045.namprd04.prod.outlook.com
 (2603:10b6:303:6a::20) To SN6PR1501MB2064.namprd15.prod.outlook.com
 (2603:10b6:805:d::27)
MIME-Version: 1.0
Received: from [IPV6:2620:10d:c085:21e8::1060] (2620:10d:c090:400::5:d753) by MW4PR04CA0045.namprd04.prod.outlook.com (2603:10b6:303:6a::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22 via Frontend Transport; Fri, 26 Nov 2021 17:07:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cce5b431-cca3-4974-2823-08d9b0ff2f8a
X-MS-TrafficTypeDiagnostic: SA1PR15MB4869:
X-Microsoft-Antispam-PRVS: <SA1PR15MB4869095305589315FC99F275D3639@SA1PR15MB4869.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e3dIRdCXh/NhS1VpDX/tEimp34yIr/FWu1OGgED2ytGyJRfdpVdmlM4ws4yTJ08V+Xgs703/USoTeMGpN3nwj9NUdY6pcuS2KcAq6XwDC/lwJIdTkoKWgP3sqvVUKQjIJb3AV7sWQNMHj6odO5cbPqDHCpzfpS7lPzQ3KpeKRsi+Kh8vat69M3nGvAr2z2a2YZzgxgbJpbeo5BEwmIlmuvauePAVPOTsr3utkQrzMt29ro7bOtYxY5+qsLRtL5s0+Ti2ocaZzMha8abha5JT24gm7rRXbKB50TCLLFrG9EOXMFUyKoEy3VieauqiQ0N9DYlFaMXBoi8J+CxeZYSHizowXYvEIpZ8y5oqSUZgqRNrrkNTYevUrQ2xpWg93/CZLoLzI3iOpJSXln+jLoTfE0ReF3GKC2ZMnYwfffz5H4bl9ZMHBexO5tfG3vTsWEpYXEb/sHyPs5B82V6+unT9HEA7ZpNBXbl20BkG+KjPG/GmUyk+g9z6LAFd/8q88/89utBp4o2EUIXR1KWjsOE9FmB7XSVcaSYKiSMHzV9URWcAZlEeNuau72avLfnXmom0IPW+3lGQqkTm9kj8MTUxs6kuSzj7vxYBStyk7n4wMpmTMxksanzVuZ4BSzebrkFfM+UQAwkom6hu2lis3o7at8KO9/rVuLSPCTAVnKTKRuQeMPVGq3gVxMtkwksU07wWtpveh8/6+i972bZrMLOGEVAf/34wZCIg5NK5cjApIzk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR1501MB2064.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(54906003)(86362001)(2906002)(31686004)(186003)(36756003)(6486002)(6916009)(5660300002)(31696002)(4326008)(38100700002)(316002)(4001150100001)(2616005)(66556008)(66476007)(66946007)(508600001)(8676002)(53546011)(7416002)(83380400001)(52116002)(66574015)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTY2b2pMZE9RZUNSTVNrS2dkUkVocGEzdnRkZHRSdEg1S0xKWmFISFFoaS9F?=
 =?utf-8?B?ayt5bEEreVRJU25CSjJJRHBmdndWa3o5c3lXNjZqdUFJeXF2OTZOMTVSRnBS?=
 =?utf-8?B?U3QrMHhlNGlCbiszSHhZUjdBY3YweXE4QUp2T0EvVG1TUUV0WnlNMnNMNUFo?=
 =?utf-8?B?cVFjbVhQbWRYL3U3K21ZalpJMTk2WEwxMXBBaDR6bHFmMnVxaFBXeUZxWWpT?=
 =?utf-8?B?RXdYL3ZEY2E0LzQwc29rbDFDaXd0cGx3YlJxb2N1MDdTTDE2WUJ4NzVnOUFP?=
 =?utf-8?B?ZnNySlhvSmo3cjhTZHdmU1dMajRQKy9GTkRtZXFoek1EancyY1U1cDY3TnBK?=
 =?utf-8?B?Z0g3dlJ1RnJKZld5YzROWlJLZDk2MFJ6czBPSWRVdnA2Mk5sbldsWUJCMytT?=
 =?utf-8?B?MFRTdHRrdS9vcGtFTVNFRmdsbElBR1RmVjFiYTgvSjVSNnMyaWNDdXY0WHQz?=
 =?utf-8?B?VGUvMVQ0eFhaVXJON3dpWldyeG9OamtvYkwxZTlKMEd2TWpyeS90ZEdOSStv?=
 =?utf-8?B?OWZ3blZMUnVraXBBY2RCamUvcXNHL0ZGeEFkZ2tHY2NMUWNGeTVEbHVtZUR1?=
 =?utf-8?B?V1ZkRTVXVlMrbS9MdVRTMmVZbTF4VlZTS1JGK2pQUHVwcllXVG9LQW5pVlN6?=
 =?utf-8?B?N3JHaVpjZFBhcXlrcEd3VkpTREVLZlg4VWNBRGxHelEycVpVTElxZDZCMlFK?=
 =?utf-8?B?SEFzRVhIL2dJdGVYVEpOV0tGYllEVDQ5c2VzOTAzSkw3OUVaaFY0dlhBMFIw?=
 =?utf-8?B?ck1GcUMxdjgyL0RrbXhUcUZFNi81OFRFWVhUWXJMSTlVSWRsTDVkMytWb3Bo?=
 =?utf-8?B?ZXYzSnhKN05CZDhabkFZVkRzRGpTQ21lRC9NNjlMcTB4cUVmUGhUcE5vRzlO?=
 =?utf-8?B?QU01aExNS2JEZUp3aS9lQjF1TXMxTWs3UzZIeXU4WWdsNmo2UzJLakQ5QlNi?=
 =?utf-8?B?cXl5YUF4MklaLzJVOXlGMHpLQjN3VVJOUldTM1h5eU1jK0N1RzRsLzdiSk9G?=
 =?utf-8?B?RlZjTUY5dFJsOXp1S1I5TUs3azVqK1VYemlFUHdCSEdSQ0p4cnJiZHViVm8y?=
 =?utf-8?B?R3N0VE9BV2twMjhWMFF2bFQ1ZkRtL1hUVEFMVEp4cXB0TXk1a3U0R3M0aDYv?=
 =?utf-8?B?MnpCcjk3QnIxMllzV0J6K0Y3c3lneWhzM0l5WGNhUjlvVnVucjQrTnJ4aFls?=
 =?utf-8?B?NFhtcU02RldIQTZvbk5jQ0lSWUhBVitIOGc5ZmNVS3NCYWlDaklGVk5rTXho?=
 =?utf-8?B?Q0xldEp0ZENnWXBsZGx5S1lML0ZtTGpSeUNzakt3N1VNYnBiZDBTUVZiT21r?=
 =?utf-8?B?SGgxS0RsczVnTENPWDdqT21HWTYxYjZoUkNaM1k3WEJWT2lCWG9vYWM0bnQ3?=
 =?utf-8?B?TCtlcW9nWW9vNGxtRytBK2hTSFZjUHk1SGR0SnpuY2cyZU9DeXlCcCtZbmVI?=
 =?utf-8?B?ZkxWaFZBejRRNnVSVVMrTndlNFJvWVpqK3Rjbzh6RkR3WUhaRFoyRk5tNTVr?=
 =?utf-8?B?M2Q1SkVjVkJwb1NUL2xxdFpwVDZVYXU0RG9mdnlvcGtlVGt2QktEZmc0NEl3?=
 =?utf-8?B?RlRFYjBLdEpnWVAyd0NGbXRhSGlkYVMyWDk4bVRGOW9vTnVjMmx3UU0zNWJB?=
 =?utf-8?B?b0dNRDhtTDFLdHhlZ0lyZjhvSmkwSjd6Ky9EbnBKeHQ2YXA0RUpiSVBoTlNu?=
 =?utf-8?B?NHdyRk4ycHgxNElaNHpJeUJKbzRFS1FpL2JZakZlRmFsTHhGNm5oeFJJK0FC?=
 =?utf-8?B?YnFGR0xBdlVES0JqZnpWYWloU0F6eEZ2RHduZVVCUnBpdzdUZUNlSVpFd2o0?=
 =?utf-8?B?bzlWN3g1RkRaNTZMS2ZtZHE2ZVdPbDBsaWxHTVF1S1lhMnlqQ3BUY2R5R2VE?=
 =?utf-8?B?dlh2TjRsR3o3cy83OTBPbnZuek5VWGtKcmFMVlNIaUJ2YnpMckxvd3lGTUow?=
 =?utf-8?B?VDQwdWQrNEdGN1FGYVl3OUx0amZsYlFSMGI3QTJGZnNUT2VBb0gwLytzdjNq?=
 =?utf-8?B?SXA4R0lTRlZRWldleDFUbVU2ZDYrSVpiMDRrS0h2MnlZdFdGdjlzNzcyMTRn?=
 =?utf-8?B?QkdSb2VDcUdjWGJabkpYRHorT1JMYUtiOHA3YUhvSEtWaGRxc0U5eWpHMm1r?=
 =?utf-8?Q?cM/WfmHCBadf9WCwhh60StxYS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cce5b431-cca3-4974-2823-08d9b0ff2f8a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1501MB2064.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2021 17:07:11.2447
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WowHZReLmgfjcpMR9/cJDUzA9zWkeRtL4qH8GOfKVwrdOue/PQsznc9Jt+cfl+Vu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR15MB4869
X-OriginatorOrg: fb.com
X-Proofpoint-GUID: LIPK_fu0ydRwc1QnRRhuWSnVR8PfcivQ
X-Proofpoint-ORIG-GUID: LIPK_fu0ydRwc1QnRRhuWSnVR8PfcivQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-26_04,2021-11-25_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 impostorscore=0
 bulkscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 clxscore=1015 suspectscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111260099
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=OJGUXSWc;       arc=fail
 (signature failed);       spf=pass (google.com: domain of prvs=096484b02e=yhs@fb.com
 designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=096484b02e=yhs@fb.com";
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



On 11/26/21 8:50 AM, Maxim Mikityanskiy wrote:
> On 2021-11-26 07:43, Yonghong Song wrote:
>>
>>
>> On 11/25/21 6:34 AM, Maxim Mikityanskiy wrote:
>>> On 2021-11-09 09:11, Yonghong Song wrote:
>>>>
>>>>
>>>> On 11/3/21 7:02 AM, Maxim Mikityanskiy wrote:
>>>>> On 2021-11-03 04:10, Yonghong Song wrote:
>>>>>>
>>>>>>
>>>>>> On 11/1/21 4:14 AM, Maxim Mikityanskiy wrote:
>>>>>>> On 2021-10-20 19:16, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>>>>>>>> Lorenz Bauer <lmb@cloudflare.com> writes:
>>>>>>>>
>>>>>>>>>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32=20
>>>>>>>>>> *tsval, __be32 *tsecr)
>>>>>>>>>
>>>>>>>>> I'm probably missing context, Is there something in this=20
>>>>>>>>> function that
>>>>>>>>> means you can't implement it in BPF?
>>>>>>>>
>>>>>>>> I was about to reply with some other comments but upon closer=20
>>>>>>>> inspection
>>>>>>>> I ended up at the same conclusion: this helper doesn't seem to=20
>>>>>>>> be needed
>>>>>>>> at all?
>>>>>>>
>>>>>>> After trying to put this code into BPF (replacing the underlying=20
>>>>>>> ktime_get_ns with ktime_get_mono_fast_ns), I experienced issues=20
>>>>>>> with passing the verifier.
>>>>>>>
>>>>>>> In addition to comparing ptr to end, I had to add checks that=20
>>>>>>> compare ptr to data_end, because the verifier can't deduce that=20
>>>>>>> end <=3D data_end. More branches will add a certain slowdown (not=
=20
>>>>>>> measured).
>>>>>>>
>>>>>>> A more serious issue is the overall program complexity. Even=20
>>>>>>> though the loop over the TCP options has an upper bound, and the=20
>>>>>>> pointer advances by at least one byte every iteration, I had to=20
>>>>>>> limit the total number of iterations artificially. The maximum=20
>>>>>>> number of iterations that makes the verifier happy is 10. With=20
>>>>>>> more iterations, I have the following error:
>>>>>>>
>>>>>>> BPF program is too large. Processed 1000001 insn
>>>>>>>
>>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr=
ocessed 1000001 insns (limit 1000000)=20
>>>>>>> max_states_per_insn 29 total_states 35489 peak_states 596=20
>>>>>>> mark_read 45
>>>>>>>
>>>>>>> I assume that BPF_COMPLEXITY_LIMIT_INSNS (1 million) is the=20
>>>>>>> accumulated amount of instructions that the verifier can process=20
>>>>>>> in all branches, is that right? It doesn't look realistic that my=
=20
>>>>>>> program can run 1 million instructions in a single run, but it=20
>>>>>>> might be that if you take all possible flows and add up the=20
>>>>>>> instructions from these flows, it will exceed 1 million.
>>>>>>>
>>>>>>> The limitation of maximum 10 TCP options might be not enough,=20
>>>>>>> given that valid packets are permitted to include more than 10=20
>>>>>>> NOPs. An alternative of using bpf_load_hdr_opt and calling it=20
>>>>>>> three times doesn't look good either, because it will be about=20
>>>>>>> three times slower than going over the options once. So maybe=20
>>>>>>> having a helper for that is better than trying to fit it into BPF?
>>>>>>>
>>>>>>> One more interesting fact is the time that it takes for the=20
>>>>>>> verifier to check my program. If it's limited to 10 iterations,=20
>>>>>>> it does it pretty fast, but if I try to increase the number to 11=
=20
>>>>>>> iterations, it takes several minutes for the verifier to reach 1=20
>>>>>>> million instructions and print the error then. I also tried=20
>>>>>>> grouping the NOPs in an inner loop to count only 10 real options,=
=20
>>>>>>> and the verifier has been running for a few hours without any=20
>>>>>>> response. Is it normal?=20
>>>>>>
>>>>>> Maxim, this may expose a verifier bug. Do you have a reproducer I=20
>>>>>> can access? I would like to debug this to see what is the root=20
>>>>>> case. Thanks!
>>>>>
>>>>> Thanks, I appreciate your help in debugging it. The reproducer is=20
>>>>> based on the modified XDP program from patch 10 in this series.=20
>>>>> You'll need to apply at least patches 6, 7, 8 from this series to=20
>>>>> get new BPF helpers needed for the XDP program (tell me if that's a=
=20
>>>>> problem, I can try to remove usage of new helpers, but it will=20
>>>>> affect the program length and may produce different results in the=20
>>>>> verifier).
>>>>>
>>>>> See the C code of the program that passes the verifier (compiled=20
>>>>> with clang version 12.0.0-1ubuntu1) in the bottom of this email. If=
=20
>>>>> you increase the loop boundary from 10 to at least 11 in=20
>>>>> cookie_init_timestamp_raw(), it fails the verifier after a few=20
>>>>> minutes.=20
>>>>
>>>> I tried to reproduce with latest llvm (llvm-project repo),
>>>> loop boundary 10 is okay and 11 exceeds the 1M complexity limit. For=
=20
>>>> 10,
>>>> the number of verified instructions is 563626 (more than 0.5M) so it i=
s
>>>> totally possible that one more iteration just blows past the limit.
>>>
>>> So, does it mean that the verifying complexity grows exponentially=20
>>> with increasing the number of loop iterations (options parsed)?
>>
>> Depending on verification time pruning results, it is possible=20
>> slightly increase number of branches could result quite some (2x, 4x,=20
>> etc.) of
>> to-be-verified dynamic instructions.
>=20
> Is it at least theoretically possible to make this coefficient below 2x?=
=20
> I.e. write a loop, so that adding another iteration will not double the=
=20
> number of verified instructions, but will have a smaller increase?
>=20
> If that's not possible, then it looks like BPF can't have loops bigger=20
> than ~19 iterations (2^20 > 1M), and this function is not implementable=
=20
> in BPF.

This is the worst case. As I mentioned pruning plays a huge role in=20
verification. Effective pruning can add little increase of dynamic=20
instructions say from 19 iterations to 20 iterations. But we have
to look at verifier log to find out whether pruning is less effective or
something else... Based on my experience, in most cases, pruning is
quite effective. But occasionally it is not... You can look at
verifier.c file to roughly understand how pruning work.

Not sure whether in this case it is due to less effective pruning or=20
inherently we just have to go through all these dynamic instructions for=20
verification.

>=20
>>>
>>> Is it a good enough reason to keep this code as a BPF helper, rather=20
>>> than trying to fit it into the BPF program?
>>
>> Another option is to use global function, which is verified separately
>> from the main bpf program.
>=20
> Simply removing __always_inline didn't change anything. Do I need to=20
> make any other changes? Will it make sense to call a global function in=
=20
> a loop, i.e. will it increase chances to pass the verifier?

global function cannot be static function. You can try
either global function inside the loop or global function
containing the loop. It probably more effective to put loops
inside the global function. You have to do some experiments
to see which one is better.

>=20
>>>
>>>>
>>>>> If you apply this tiny change, it fails the verifier after about 3=20
>>>>> hours:
>>>>>
>> [...]
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ce2d9407-b141-6647-939f-0f679157fdf7%40fb.com.
