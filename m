Return-Path: <clang-built-linux+bncBCSPFHXUVMKBB36V7T7QKGQEQBP3ICA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5222F50C6
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:16:32 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id w3sf1403452oov.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:16:32 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610558191; cv=pass;
        d=google.com; s=arc-20160816;
        b=polhJjJ8ZJW0gsutjuJJvYn2XGNBMZoNMX/e+ABEZKFtupsGgIDBytiackX95rBn5z
         C93dDp98A2QldNmEEZ/Oc9/Y1mC3JPZIUae6HI/2hf4uFaVf+3LM6dPMoQnc2hHKYsC4
         HGoxMPvptT7z9ENuXYl91vZYsipL9e6D7v0jgGPqpiV/DqpOo3Ms39ndWTXgrpE58DT9
         Jdrs5/BkTGWz4p1nK+ST+Id486ifL7OErSYaRTQsNzd2jIxWk1E3sAJ5BmTQv14sA2Li
         7Upgq02+JNcfWyiQKedLGioB8Sg8SfPa/EV++wHQHjOiHvWqnldMGE/gHMYglj9+g0LB
         XDSA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=ksf8/0iEpnxIO4arTvT5j6uOR3LN5uMSMaPpApVp5q4=;
        b=yBkV1qpH2LiwBCoG7Pl/s/1y+OKR6zXDS7OOE+ziCXTopqyjXrsD4FWQ50ostScPul
         vtbSak0zaqdw5zBsRXdmyc733lsk11JhF3w2vGF2ZD0dqrYEPAZD2sEa3OvTWXD+hluY
         Hw972M/DrU4dhlNb3M3znOFz07hboGW6Jf3AsSSHtpWL6S7o2OAkKwSXgWWM7VezUmh3
         k3qikmZ8fPIF4Qq/CLe5UiqX/YNJ4Wwlpq6vg+PR9j6XPHfZ4hjQQQFIBAeX1kqXlXXg
         o/Q0swrtsNc2A6E/8QWRyg9zok+lOz6lS+buJi8ZJCW/YdJ0aX+rwzMFGhVtfXrzY6hH
         zDUg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="lAP/DKbv";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Q0r4HvFS;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=06473a7dfa=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ksf8/0iEpnxIO4arTvT5j6uOR3LN5uMSMaPpApVp5q4=;
        b=HlRXtzmPSNP3i5DUJKuE40XWFWLmI/nOtz5eGL2eE4qaatx7VT4qX/cL7ESWSDsSdx
         bCNa2X/SpdM0BirgnwdHbKxQ3dfh4W1Z1K8oI3jecNpkvsXJC59XkGR8iqldQPdhn1o8
         QojklUzSaC/QhlKb1K5orDAUq0QgVayLi/CZJ+p6wJmfzbd/khNflOZDh2bCTzxZVuiJ
         mg/xaygNW+nmz7x0AeMEHr7b8JORiJeMUjMNmsuk7s98AxdLmIJevr1tY9DFKguDX9Ge
         MTM9XplmEo0FC1tUm/spEUA6JeLB5W+yxP/fueun3Uaizp/xN5FexC2vdU3oi0gYBS0W
         wwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ksf8/0iEpnxIO4arTvT5j6uOR3LN5uMSMaPpApVp5q4=;
        b=U/2M1En6X//m7aGmYWDMFxFPxdSbkTIzhMdCGT0qX5tfK8nMWb8TvimtgDr8KUKYnO
         4++6HOLHK+M9wkJg083yYesubvXevgpqgoBpjgcwnGkSw4kkeR34wUubxatWk2CoROzj
         dzxpE+4fHPh17pk4EKSqzSqqp7Kh0ow4rCFJ2gBgb2iFY2IRtCynvs9vpn8mBFEgqyXl
         8zcvbs5LdhnbMpf9Ne0bk2WkRFb8xC4w4Wb9Q8w0vTdkxY0iwB6DrFM4wYjECBsu4TQ1
         tQWpL2EiuqMSQrHyCf7DoUKAcbstnoafw9SULr3JmICcdgCWT49ptytmPwfB1oNiY7Ua
         34Ww==
X-Gm-Message-State: AOAM533kPdc+VH/V0bVsP/IbhFuInc98gPsE65kC35rQ6fIOmF6KrraY
	RRv1UKDxyBhRjki53WRa4sg=
X-Google-Smtp-Source: ABdhPJx1tEKbB5tRbqDexlqeXIB0njSMIIwoPmiPQREv9L/ATpdef7XTNwfNp7+EVgtJvGZmwvS40A==
X-Received: by 2002:aca:c4cd:: with SMTP id u196mr151232oif.133.1610558191777;
        Wed, 13 Jan 2021 09:16:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60cc:: with SMTP id b12ls708769otk.0.gmail; Wed, 13 Jan
 2021 09:16:31 -0800 (PST)
X-Received: by 2002:a9d:7545:: with SMTP id b5mr1851758otl.239.1610558191386;
        Wed, 13 Jan 2021 09:16:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610558191; cv=pass;
        d=google.com; s=arc-20160816;
        b=x7OaC/7o3wHfnuIhJ15El1lRQ4iXaKMFZ7uj6jrOEBUcx1LruzH+nOVzfmYt2OdMA9
         n7avJ0QUggOxJrkg857n3hhxZD0+x+F50sWXpXyWEyeCp+MTlCm3jL8aA6ECnQmOjAtO
         ULgEfaYtIPwlsh2dMr/7EwNZJB44r+j6ir/mdii2zFZr3tMH3hJioNcLpNz60XXYfrxH
         tppGoZ3syp0ARgwpQij9hooSQfqkvKIXDRYc2qDQ8je1zaveOlPTvVzTtyArljTul7kf
         hmN9Mo0OmWB00yqKe33bcDemVmxrFrWJ/H3WO0DWGnS43k4eoVbMOviuLtDSgIKPW0+w
         iQWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=gT0Z30JEx+02UCcfqvm4mb4iJ9gUDmE35HN+ehgo5Fk=;
        b=iWZJMX8oZOImZGzWI/xlRGHYAoLbUhDJXZ1CPAyGBpQm9UNN4sJDLlSRsUGW5xJiMP
         nIVmNKyZczzzmIOKk4OtejJlosSL73T+MHFNc33rY6ctJQtS4Wg4zFMfI+PENFlOYcBk
         wAE7egWUJme3vWgeSJvWsJy3GUFixrlq+FD1jtXoBUyFw3RsMMxw0ZjI1g08JGkjcjNI
         ncTvki9pW8sepxZHr3qtG3xExXvbDl9uCPVc8TfwI/bDClgDBaafX+1m0CxsQSsi/Nla
         rgbu7EZEU4S4TZwRVSQH7CdtQMZmgnZbfinUKJnV4sIQm5vx3OA8oDegnIs6qEvhRODd
         Y3JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="lAP/DKbv";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Q0r4HvFS;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=06473a7dfa=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id u25si218734oic.0.2021.01.13.09.16.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:16:31 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
	by m0089730.ppops.net (8.16.0.43/8.16.0.43) with SMTP id 10DH2gxY020568;
	Wed, 13 Jan 2021 09:16:29 -0800
Received: from maileast.thefacebook.com ([163.114.130.16])
	by m0089730.ppops.net with ESMTP id 361fpqp8es-12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 13 Jan 2021 09:16:29 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 13 Jan 2021 09:16:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UAOtHHpSM6mLoQ9NkH/abf4W0nXY3D2+pBqC8nNmdCbpXUdec1NOUirXxNuU5NX9E3hXIDrUMCYhjy6ye2ZufAh/JPVqhQn5mxApxYfKYBhF9iQjjWrIxi+nRTm6tglii6NL5GEOghzS9sBPp9lMQ76mZyOKKOYSb9kt0jkunv/jwcT/1T2T7xsawB2ZIh8gb+U0wRdmOymvI792XnFxtuuxspTEuA2ti+ZyHaTGFpsjeW8i5hTuc7HFwMcz/CNmIlNoHta2ffIpuApwTf/7VrNaF9rbJZGix1aNZV8ePvLFHDIIoVwDzSy1E/BS4D3sWogiPmrOsGgxFp4Dam1l8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gT0Z30JEx+02UCcfqvm4mb4iJ9gUDmE35HN+ehgo5Fk=;
 b=iWtLlxexf552jkhw9sUm4O97/FdpH4292HHxiutyc1FGRb/wwXRqPs/JfJnY8rwBB1NUzVkXG/xYGtMUu+bzhazdeQKtA6OSeKy89bS3lFblMBoWlT6ZLB0ryK2OO9JI6riVoO3H/XfPtKU0q8vFNo/kQsmMXHwGw//8XsYfasm4r6HcoC1cBkzKPCj4B8LBpImbKDBfwow3vPylcItL1Zi1gOiUDIKWhpJZBAEh42XgtbCtKhrCmxA6ulxFEvOENl8Q82o09kdC+LncND7Qs87PxM5gu7irADV0H3gKBVlXAdtqcX0PU9KbP1W08bogTe+m8+uzS9B2e4tsTDFmxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by SJ0PR15MB4204.namprd15.prod.outlook.com (2603:10b6:a03:2c8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Wed, 13 Jan
 2021 17:16:28 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::9ae:1628:daf9:4b03%7]) with mapi id 15.20.3742.012; Wed, 13 Jan 2021
 17:16:28 +0000
Subject: Re: [PATCH 0/2] Fix build errors and warnings when make M=samples/bpf
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
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <0a85390d-b918-ab56-cccf-e3896f0f50e9@fb.com>
Date: Wed, 13 Jan 2021 09:16:24 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
In-Reply-To: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [2620:10d:c090:400::5:e777]
X-ClientProxiedBy: MW4PR04CA0424.namprd04.prod.outlook.com
 (2603:10b6:303:8b::9) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c085:21e1::13f6] (2620:10d:c090:400::5:e777) by MW4PR04CA0424.namprd04.prod.outlook.com (2603:10b6:303:8b::9) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Wed, 13 Jan 2021 17:16:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b531cf23-35fe-43e6-60b9-08d8b7e6f69d
X-MS-TrafficTypeDiagnostic: SJ0PR15MB4204:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SJ0PR15MB42040C4D663822B7651F500ED3A90@SJ0PR15MB4204.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pu09rn1ihN2KUp4KZmdOLIUf376R/SoCcNM5STdNzOfh8Jji5mOnQZ7k2LOp4rzgQNviiDDbhlh27rqaxD6PKBJOEC0u9Zjnc3WbjDIE2+LLuncLIGQdRAB3o9/G5h5gwjSUtOh+e95+TF0gUsxslptGgVTJjE8xdkXd4RatFLJGg0NohG+kFfdJ1B6oRa0dcgEz2nBO4jBQ7pi4pdHSMMZwGQtd7CbArr7iPyMVxra4oLFX3KpC34hlH7P2ZtFBhhN5cq9gFOPoXko1SxFpQ8/I79wT+NOv19pDhntSvYKoE6FcpSAh9g5EGpVSEGU8RlQ46siwJEam4CX3kCeWELGei+IxTi4eHC2L22g2Pg9TSNogC++e8OQ+omvoEwNa1hG20yZyftddMG6EfOZ9Da4gVYyAT6/bw/YiNc7hJ1hSwVJ1z6JodnknQLnNEyXftVdZH0FE9ZnhAPK+td4ie0pue0PzrbKhSuMvRb/31bqXvIWUr11UOaJ1/oA8bUr8
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(376002)(366004)(136003)(346002)(39860400002)(6486002)(83380400001)(2906002)(921005)(4744005)(53546011)(86362001)(316002)(4326008)(16526019)(8676002)(31696002)(2616005)(66476007)(52116002)(66556008)(66946007)(110136005)(8936002)(31686004)(36756003)(7416002)(5660300002)(186003)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?S2djRGNUOURtbnhYdlpBUjdTZHp0ZnQyMEZES3B1TDgrTnVlUWtKbC8rc0ZH?=
 =?utf-8?B?MWtnOTJGVjNMaHI3TjdwaVFjalNubUxnNWNxRE9HWG5FZ3hzY3Bhcm9PTnB5?=
 =?utf-8?B?N1YwSklYNEEvRFpRM1Z2VVBYbkNveStqT0xvcW1leDUrK2V5S05QbXhRbWkz?=
 =?utf-8?B?Y25RQ1dYQ1p6TjJ5TndSek91T1FQdVMrTmpza0xKU0pLdFR0Zm9rc2RtOVd2?=
 =?utf-8?B?WjFQcVVTZERjRWtvZEhkQjJpenRNNG4wOUxUMjBCTmJjVWJVVEtOWE1qSE1u?=
 =?utf-8?B?WDZMOUUwdW91cEN3V0tQV2ludnFNREpDSmc0a1FOa3dKOFFERDRYNWVIMEQy?=
 =?utf-8?B?UytYVHloT3c0eVlMRTAwSGVKdktsaDluVkowckduR3ZDOWUwZVlIQXhhaHU0?=
 =?utf-8?B?aElIK0lZbFdzb1JqNmhZdXc3UjZobDZON0l6UWVNNkxwM2RISzc5WVFkNzFp?=
 =?utf-8?B?VVMvYWp1L1VJelNzZmFYS0hLV3RjcFFHUXRiUUlxUkgyZUJpbjJPVTBTZ0cz?=
 =?utf-8?B?U2x5eHptbUt0K3hlS1p3ZnVwMEVGY3dabXpaQmlLZjFSRVNjb00wZldnd2pX?=
 =?utf-8?B?aG5kcGFoOEtnQXJSYkU3Y1Z3UVVqL1p6MUVOUmRCamt5STBOKzFYMXJsWThj?=
 =?utf-8?B?Qk5HTktVa1dNZkcxRVhPbkljV3FQbVJCM1FGU0VQZDVkQzl5aWRnTWgvQ2Yx?=
 =?utf-8?B?eWI3K0FUY2QzTXVoeXVPTE0raHZReHRNRUM5QUV5S3gyQ1VEMERsOGZlYVdF?=
 =?utf-8?B?cWFObmowNGFncVBpRStjWG9xSzlWalovV3RNSFRFT0dpNmpHUUVUeEQvQWpw?=
 =?utf-8?B?RndOSTZVaHBwejFXWlZ6eE1rdTQydExHU0NsYk5jQ09YRi83aGxiNHIzNWFu?=
 =?utf-8?B?TWRkU20vS3RvSUxSNnBBNE1lTkc2eUNFYWNqQmNTdjhjWEhVNzlob3JQTG10?=
 =?utf-8?B?QWEreXlUQ1ZhajY3ay80OVd5VjNtOGdNWStsVG04MEp2TkhLSHh1MWhvaVB3?=
 =?utf-8?B?TCtuZHZiVXNIZDFBRnJQbjNrZWlMSmxVd0NpQ1E5UGxiaTBndUxjR3FCQ0ZZ?=
 =?utf-8?B?eXdBbXlIdkFzT0lnb0JsZGVGMDF0Y3FScVFPM0YvZFNUMTREeDdNM0pBeVlj?=
 =?utf-8?B?NWhPRG5RQlJZYzVva3JML3JIZjc2MVpJZENDcmdPOGpCeHM3cjEvVWRkelVy?=
 =?utf-8?B?QXY0UXE5cDhkUnE5WmptWDBCbm9keGhqbHpXWk94eTcyT3FOVVhwb3hLOWEz?=
 =?utf-8?B?dzE5U2RGUnhMczd6bitleTZPbmtEM0YwK1BmSDRWMTFNNVkrWE0wZEtJaVpj?=
 =?utf-8?B?RUtsZUNWbTdQakZQd0M0cXpraGFhVUFFbVpqWldLcklWbS9Wbmh1czJOUnpn?=
 =?utf-8?B?c3FScGp3ZVhQR3c9PQ==?=
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 17:16:27.9815
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-Network-Message-Id: b531cf23-35fe-43e6-60b9-08d8b7e6f69d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /O+Sbztf3KQQ7OKzSonOzRKAL9N3+hr8Atfo0ijK1nj37UdeFjbl6h/1oQMIUsNO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR15MB4204
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-13_09:2021-01-13,2021-01-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0
 mlxlogscore=999 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101130103
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b="lAP/DKbv";       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=Q0r4HvFS;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=06473a7dfa=yhs@fb.com designates 67.231.153.30 as permitted
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
> There exists many build errors and warnings when make M=samples/bpf,

both fixes in this patch related to mips, please do mention in the 
commit message that this is
mips related. x86 (and arm64 I assume) compiles just fine.

> this patch series fix some of them, I will submit some other patches
> related with MIPS later.
> 
> Tiezhu Yang (2):
>    samples/bpf: Set flag __SANE_USERSPACE_TYPES__ for MIPS to fix build
>      warnings
>    compiler.h: Include asm/rwonce.h under ARM64 and ALPHA to fix build
>      errors
> 
>   include/linux/compiler.h    | 6 ++++++
>   samples/bpf/Makefile        | 4 ++++
>   tools/include/linux/types.h | 3 +++
>   3 files changed, 13 insertions(+)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0a85390d-b918-ab56-cccf-e3896f0f50e9%40fb.com.
