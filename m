Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBYPUR2BQMGQE4TIG5AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B08BE34F52C
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 01:55:14 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 81sf127129otc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 16:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5Pnw6tioL7KXyhEScebGeVEBX/BJEzU3tNZaZmo0Rdo=;
        b=BhOmPy1vHnpPY1S3O4xyRfTTEPMFUBbn0AdqePnHYy99B5Vs+kgctC3B2516fEOyDW
         ixgpYXMVj73K8YP3OonOFwJnB5sElA97ZbCU44aTwEiOiuxMHhBIFCo0p8otDre++kCx
         9JDPmJ8BzXfCyk0VQkkVE/EpccaEYVfBBtuyu8U/RY4ZW8PSLgaS8pduC1FJ39nXCdEk
         QeX0/ioK6KY9fMlWz8yCITlX3k8kyoWavUCFC+Ae9r/vzWF2Z3WeoRxgFlGYgDMGcSM4
         rwoqRuIwsd7XRkPlxQFLOhhS7AUQGE8B0xn3WoCWSCo2Cz/dIUdfyMt76GQCvAkOJKZk
         qniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Pnw6tioL7KXyhEScebGeVEBX/BJEzU3tNZaZmo0Rdo=;
        b=R3ym0lURTHCdaCfYB8NmvFsYFCoSiExvroOIxZ7KiLoFHbzBZ2nAvkQfUBSaSKcgWM
         fY8oAz/sX2TXgI3pwe/OPiwrnCG1f+0St96NrVjDJ6O4Jwh0FXYnwct0aegMDWkmSom+
         8cNw4tbqMrDlhkk8ly00FFflxVIK/N1W6p4KKJkoA09J/8DZBR0GCKfeKR7VXVusybvP
         hmksmph9aeS1T0VNDG2wZh3wc3KoaE4H3wuEvTemhajDQsX8CmYM+oFFzQVBGTywlsJS
         C+qzzxmOw8NT5EcIRsPJxE9j4M+JE6Ouelc6q5wrBDQRAm/5BpEmWx4gkn3sYA220PwT
         LKDQ==
X-Gm-Message-State: AOAM531SRTQ05SPBNJJu3w8ufJZuyoxEcfEYAF8qtOZQQc7WcfVvqXEM
	XVyS1tZ7jq2InvoiOgmx/8E=
X-Google-Smtp-Source: ABdhPJzPakL2vmGhqsJ59vsb4Ijhbb+6R2uTIy7YfZi3hSPkEwbldDBYaXbQT+24djh+KOPTWZsT3g==
X-Received: by 2002:a9d:4816:: with SMTP id c22mr315248otf.144.1617148513617;
        Tue, 30 Mar 2021 16:55:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60ce:: with SMTP id b14ls60061otk.4.gmail; Tue, 30 Mar
 2021 16:55:13 -0700 (PDT)
X-Received: by 2002:a9d:740c:: with SMTP id n12mr311754otk.21.1617148513277;
        Tue, 30 Mar 2021 16:55:13 -0700 (PDT)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id a12si28318oid.0.2021.03.30.16.55.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 16:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=3723ebdd8c=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12UNhV4O019669;
	Tue, 30 Mar 2021 16:55:08 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 37mac1s563-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 30 Mar 2021 16:55:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 30 Mar 2021 16:55:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVU6a/y0sIouWcCgc3Yt5GstH++eBeTtwC7II69anoKaWtLhn3MYAfxMJRHOKRwoUAfQLFza9X+Ohlp0zV+1E5JMp1QrIXOp+ulez49yLvqgFPdzUmLp2mriUhqcCRJBGqQdHwkdjRqr+htGUEskZSEhOL8mpwuTkbmTAMkg38ifUVGgSm1YUHctQANtBAGfEkHLqGGenardqLPwd+TvWv9xS1a6t6fudhPz9SGV6eEojXnrGMyfmnZsNY/ugvX2pd+mQJDC7Ke/4sRIKKB6DILMaRmQnVC8YzruNU7LvEnDtiwXDGRfBybHGUzOTJ+NJLjsuUtL57monBEp1tgjHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1X/D1it+bvEvk3zXTowvhM+INI90n7vytvhJWQTPdic=;
 b=JWrDzkqop4DhHT+TS4evT+QaZFNkBNNazEOb4m40CBUQuAhE3P28nlWndG1rkfu6BvmAoZiCs/S1ub71efEFCrGpvXgE/jA4SPfWGhNJDVJViGp4XcTf+tG7nbEH9cYlsQqM+F37IFml7ahNIHhEDdYGBBr+yEpsd2OlzyEJAkAh5JhU3xXQiJ9FBpBDBY5si9vh4oWnLvMAI05hG8geEPHJjUtj/ijEfrUz31p+MPO09Rg2rGMWdNJvkmYMcLaTTPR1dfkOLV1VPwt/GzrqUUkCeknPeFKg11a08giFB5NHLe41CWJwmH7No0HBy36vKp4xuIapIVsIoLGrFsrnkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com (2603:10b6:805:d::27)
 by SN6PR15MB2335.namprd15.prod.outlook.com (2603:10b6:805:24::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.26; Tue, 30 Mar
 2021 23:55:02 +0000
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::f433:fd99:f905:8912]) by SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::f433:fd99:f905:8912%3]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 23:55:02 +0000
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
To: Nick Desaulniers <ndesaulniers@google.com>
CC: <arnaldo.melo@gmail.com>, <ast@kernel.org>, <bpf@vger.kernel.org>,
        <kernel-team@fb.com>, <linux-kbuild@vger.kernel.org>,
        <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
        <clang-built-linux@googlegroups.com>, <sedat.dilek@gmail.com>,
        <morbo@google.com>
References: <20210328064121.2062927-1-yhs@fb.com>
 <20210329225235.1845295-1-ndesaulniers@google.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com>
Date: Tue, 30 Mar 2021 16:54:57 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
In-Reply-To: <20210329225235.1845295-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:52b2]
X-ClientProxiedBy: MWHPR2201CA0049.namprd22.prod.outlook.com
 (2603:10b6:301:16::23) To SN6PR1501MB2064.namprd15.prod.outlook.com
 (2603:10b6:805:d::27)
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e1::1120] (2620:10d:c090:400::5:52b2) by MWHPR2201CA0049.namprd22.prod.outlook.com (2603:10b6:301:16::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25 via Frontend Transport; Tue, 30 Mar 2021 23:55:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eb562e4f-5a4a-4364-09a5-08d8f3d73bca
X-MS-TrafficTypeDiagnostic: SN6PR15MB2335:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR15MB2335EA0BFAF75B2759A43234D37D9@SN6PR15MB2335.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1IYwi/JRblQNiuubeNVKwmE8+37qsb8bxP9UuWpowxbe+y/ZrGG6xi7QsHXxM0C+6ekHp5fCK6VZW7vLAmrwoDx75FNQkeajbjX1C80yi2tBhoV4m4xKdrDrih1NSmKrtKSBZqvZ9s2eslkcLbQc8MuvXdPgOy8J82FzUhaJ8+ybXXamzREnXiTiB27TEy9o1BFLmxvBbOcyPITAQpvXM/1NBhqFvQGxNq6oxkX79moiQE3+lF9qA3rV8YfheFxAr+jFV1dK1PEjupbx+HFGIqVPVrhC2VNU5PjuqX+3DgboCblhG7kFyRB0+UFVi+pApXL8xAPiQrObLRjUIe8SPUNsRQ3Q7myvfR8Dsd0JND/u9lY3CGlOnsHGB5G85+wAQYbcK2rpQIgstEMehKKE+ntvuls1Pgmj6LaH8DpZSta5OeWLK+mJVuZwoKTtny4oHCROmA5vbct6t5nJA0BhsM6DHmM7nxPHxazRUTC/U9NItJl6F0davSdxdHLZMFU0l/YUShhftqGqT9rwJvBfTNVGOQ3VtjlxiquTDwlzp3ETFCVKA4M+R/+Qyb+XCmgAbQvBR3vN783K0T8GVGxqKrzOSzMWBsvLlNOfk3t6GzLp6C78zm3Cru61KFWcNcJrz6oyhOcZKkCXS/UyKbiJNwzcP3KJ3owD7d/7p+hTGeBV246AcStx37YFDvf6rNsIQhz9FWVcFEkAirRi6WHepaMM2z9x0jZgCNg+8QANirU7BzbkwmzPE1aNgw9iMqv3UmMU3OTk8YUQNHQvEhpaVjuA1jef5tnTZ9mGkR1XL7WmfVuVoUME20xajcTxMALg
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR1501MB2064.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(376002)(366004)(346002)(39850400004)(396003)(66556008)(8936002)(66476007)(8676002)(36756003)(2906002)(186003)(6916009)(478600001)(2616005)(966005)(5660300002)(53546011)(6486002)(52116002)(38100700001)(6666004)(86362001)(31696002)(83380400001)(16526019)(31686004)(4326008)(66946007)(7416002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MnlDUWd5SS9LS2VOYTlsb1l0UHdvQk9sa2RtSWxlZ1RKTzRITFpLVlMwMUU4?=
 =?utf-8?B?bHEvdllmTEVpTllQVm85Z3F2dFprZ0o5SUptZEVwWU5tY0xBVjRhVnVFd1Zl?=
 =?utf-8?B?UmpaejVXOEpGSURhbjl3K0dteDlWRGNSaVpMR2NMbFZSS20zeEF4aGZDTkIr?=
 =?utf-8?B?S3dUVHhpYytYc1IwWUxWZHlCdUI3TkEvVlphQlAwaW8xbVRZUVJ2MU9McGE3?=
 =?utf-8?B?Tm9uRTc0Umtmd2ZWVGJRVFhJNnhNNXBJSWVoVVFlc3k2c2l5dmFxRm10b3d5?=
 =?utf-8?B?dnBNckJTOVNLVTdOc3FZVjhxSFFMaUNla0hpRm1BOVBJY3Irek5VM3N2M3lG?=
 =?utf-8?B?VUdmcUlGQXB0dTVnS3BoMk5zcE1jTnZpNHdVYXB0MkJidkFNbXV4Tk5hVDJM?=
 =?utf-8?B?Y1A1em1CeDcyckphZno2UUFhYXBTVWh5b29QY1RGeUxZRFE3Z2Iza2tDV3JQ?=
 =?utf-8?B?emZjOHNYVlVwT0FRQTNOQVZYSFljZ1orQXEzVkEwbDFaOUNFT2gwVnd1NDhJ?=
 =?utf-8?B?V0IvdDd0L1F4LzQvdmlvRlRxTHNUMkVNTDQxMWJKeUUvN1JVU3hsRXR6ODU1?=
 =?utf-8?B?OG1oMWJBUWZFdWx4Ykw0OUZZOE5Qd294MUVrRnZ3cVA1WFlqTXlMYkdiSysz?=
 =?utf-8?B?NUpFSjRiSHdTSVhKdmk3bEYwQnZDQ0tDZXJYODhNUFhMa2ZSd0FGT1Nlc09q?=
 =?utf-8?B?bHM4WFZHdVZUaDdQMm8zdm5UcDdtUlpFbWY0M0swc1d0cTUzdWxJWjB3YUty?=
 =?utf-8?B?TGppM05EVHpZL0RIeTVXVWtwSlhOK2I4am5OdGQzeENMR0FLRjNqQWFQb3Q3?=
 =?utf-8?B?K0xjMjFYbHc0RUpUVDBzSTl4MG1jVE1XRkNTd08yNVB5RDF1ejZZN2hSMXBh?=
 =?utf-8?B?NFlDSjRQaUFVRjV1UnNkanJTRFBBajlmZUpObUJLNUplNWhwNE5BdnJNOERn?=
 =?utf-8?B?d2oyWVRpaFBFWG42RUZGU1JsMmtBMEF2VUZHTm9TZE1CZk9NK3dwRTlBemJs?=
 =?utf-8?B?MTNxQmhDd2xEWCs0M2hmclhVMTdkbVNCRncyekhlYS9yQkVITEErMWdrVlRo?=
 =?utf-8?B?a0xKaXlXK21OQm5UMFAwSWVmdEozR0hJSkJRV09mQUZScWQvYUpVUHVuTjhK?=
 =?utf-8?B?WVpjVFR0RXUxMHFjcUlRaHNjS2VhR2tVVDJNL29Bb25NdXJsdW4xMmF4V2ls?=
 =?utf-8?B?aHJoOUYyN09ZWnhHYTNFZ1dYVDB1Nzk3VlFsenNTcEw0RFJpeWdtc25YK0VN?=
 =?utf-8?B?eFNuTEdIZ0NoSW1paDdFT3R3b05yODhSb2RVNDlwbnFyUi9tQmNSV0RZR043?=
 =?utf-8?B?OENaYVAyWkFlQStxMCtQWThQaFhsdjk2TjM1SEVlajdMcFdQZjNrT3RBb1hP?=
 =?utf-8?B?OGxPWlZ0THVGWmdqUysxUEtFK0dqWFBySlUzS3lCcng0WmlsRTRVM1NqRjhj?=
 =?utf-8?B?Qkl2eDViQkt6ZDhaRDh5R01IdUt1VVdLNzJ6MkxNay9kMVhOc2hyRDBYcEZQ?=
 =?utf-8?B?N0dHTmFsS0ZqbHY3MmtpOVErM01YNEdTZ3RjQ3VyR1VRR0xUUDdTNHo3QzNB?=
 =?utf-8?B?UTg1WVFkUWg4MHRPZTg1djRQYjVGWnM5b213WWdDTVRkckpLMHhiMTQ4c1dw?=
 =?utf-8?B?ZWloOE41OGdTemd3VHV5RUlDVWZNNzkyZ2dtUFBmZm9iY0tUUThuUW5VUFRi?=
 =?utf-8?B?UHgyTExtVmdEd0tZTkU4cjR2NjMrYVhNaEdoMFVUTHp6MFZIOGxzMzJvTHgw?=
 =?utf-8?B?YzR4eXVjRHVWNHloNSswMW5SLzZvZHRScmZDN0owOTBhT2h0cW1GbDc3cTFJ?=
 =?utf-8?Q?ZqWPJPBZafzT8bdfXLqWMgCaXrR/Yqr1At06c=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb562e4f-5a4a-4364-09a5-08d8f3d73bca
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1501MB2064.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2021 23:55:02.2348
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uoV7ahWyJrAX2ulqUNfCJrraO6DRc7xNyDqnXjEE3MdIt1E9Ol1gI1kOwMzwYCbS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR15MB2335
X-OriginatorOrg: fb.com
X-Proofpoint-GUID: MDl1rRi49FqGfuZ2-ROGJnPIQWEOFKif
X-Proofpoint-ORIG-GUID: MDl1rRi49FqGfuZ2-ROGJnPIQWEOFKif
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-30_13:2021-03-30,2021-03-30 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=427 spamscore=0 adultscore=0
 phishscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103300000 definitions=main-2103300173
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=o4YfxHEW;       arc=fail
 (signature failed);       spf=pass (google.com: domain of prvs=3723ebdd8c=yhs@fb.com
 designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3723ebdd8c=yhs@fb.com";
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



On 3/29/21 3:52 PM, Nick Desaulniers wrote:
> (replying to https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/)
> 
> Thanks for the patch!
> 
>> +# gcc emits compilation flags in dwarf DW_AT_producer by default
>> +# while clang needs explicit flag. Add this flag explicitly.
>> +ifdef CONFIG_CC_IS_CLANG
>> +DEBUG_CFLAGS	+= -grecord-gcc-switches
>> +endif
>> +
> 
> This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with clang. Do we
> want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that we don't have
> to pay that cost if that config is not set?

Since this patch is mostly motivated to detect whether the kernel is
built with clang lto or not. Let me add the flag only if lto is
enabled. My measurement shows 0.5% increase to thinlto-vmlinux.
The smaller percentage is due to larger .debug_info section
(almost double) for thinlto vs. no lto.

  ifdef CONFIG_LTO_CLANG
  DEBUG_CFLAGS   += -grecord-gcc-switches
  endif

This will make pahole with any clang built kernels, lto or non-lto.

If the maintainer wants further restriction with CONFIG_DEBUG_INFO_BTF,
I can do that in another revision.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0b8d17be-e015-83c3-88d8-7c218cd01536%40fb.com.
