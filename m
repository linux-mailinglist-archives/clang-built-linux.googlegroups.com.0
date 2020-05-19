Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBNPQRT3AKGQEH4XP6SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA701D8D2B
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 03:36:55 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y16sf10488466pfe.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 18:36:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1589852213; cv=pass;
        d=google.com; s=arc-20160816;
        b=STJl4yVHwhnzovt6E8qPnftqVDUVc/luHJhOFYRQBMP9tAzWudaLAJo1JlYPyEDG9O
         FogPdqKgveW4SDJqDXmCHQ5Pewx7PJqZpZ5gzMmw8q+LlwuXnCHZkU+iHwXNeUPm4C+z
         X0QYCRLLJEojtbMcZ56MsIN7H3SRAj2lJewZIqnqT/ohv+HvQLT0abYGC40ZMNmo5CFh
         aP5JcrNPcHlV9/+kH5/7GTC9q3HtUgJNvSWo+RGQEOlaRtRTMI8HD227rMMzjyWlRdrq
         Yb6gO9E3AtgKJUB2LCJAu63+A1xJ6StQ/fD/OggCYvNOOYHqHAvnTk1xNtFwl7jkN+Ha
         WEEQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=XjTDbYuGHeD1PoKOdGM5ygF+ra4Jl/rk6DAt2PVPnsU=;
        b=EcLmBcirgidg9DL/XeAe96vu1nR05pmkHkYlyLHwAdVNGDBn33tUfM7ryGkuJ8m3+T
         bMCMdm0rOa4x7VuLsOM0sdwcOPife7FIyCmIjPBcmBbHkvWEPFZ/wNkRrMS5KipXKE5d
         f5mnCN825UvHUKhvlwMy67Ek9+BZtoKyKcZj2VdOvqSDaR9d4OuxBlO6PVijVz6U6Rse
         Aa1rI3MHinLauTHa1CteDIigq+BBnVCIkv/PSwGgXd3eGEIrx3zpPmtamb4qlpBtmYOY
         txAcaQBibd3ZXiUp4s1gW6WLLo47sFg/PDzbhZEmnqFF7t3wPYbETZt/TONBlGZihxrn
         b6sw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=JcpiRW9t;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Ja0akDHB;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=24085befd6=yhs@fb.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XjTDbYuGHeD1PoKOdGM5ygF+ra4Jl/rk6DAt2PVPnsU=;
        b=BcfRRswVnZkrsub5UTYFpk6b5IRwtFo8HKmC0P/dVRrKsCge3b0YowW2b+9Gr1aIgl
         DoAsAweGuLqJ//jdcw8/FYKUgTtfVGfGpz8qqS4mO7vYYBRrY437O/wwnCE7SW9BI+lS
         InVmxTjsEiibci6QX0iXaaeNtEiSCA0gyv008DXcXkkCqPqC6fMIwnLgXsgA893NeFRe
         T+GXbOdWRjqKKEmJHvTA4Js92Q0/g3lJw33uuTJcw5w5BNouLpKKVMnxi3vjU1ri+JhF
         ZhjLQw0Pj8a0MwUHng12q1nypW+EW1zXhcIDbgxAj7PffrPG3zWZ4DmUCHzlMBgJCpau
         qBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XjTDbYuGHeD1PoKOdGM5ygF+ra4Jl/rk6DAt2PVPnsU=;
        b=IzNVOr3nB+tOO5L8uyu2Af7+eGVzcq8h8rCIKg0/FmR23ybNn/VS+KluYQnRdRalVF
         LfYnjaeQVs/0lNQTbC+cxXJMdqgivpWQ2VzmqttLQEkrJk2Wn+pKY3MANmPUWB5I+8rD
         Z9mUdkNSmzCTi8zUkvKXtZyKRKoOMWjhtDwF+fONHNfJRnaXG0GhM3dieMHhLozMn9QM
         VqJcWKV0C5CB/cOCyx80AxaLNWgwBkZ5EodQlT+87xk4GGKuoBGaP4q+Lc2MYhOpST0M
         38+yCCVZ5ZAac8hzX2At5zXRoAu0oIuftV2Q0+SRLk956d0iRJ8CZZo7/qNJuzC0jq6i
         uP8w==
X-Gm-Message-State: AOAM533XWHIB0sj4WT4wKtx8g+2AOLWG5sRtZS9RfzW7y5B78KaD2WXO
	oEEYKnGu4Q1I7EMBU0oMiXY=
X-Google-Smtp-Source: ABdhPJxqLJeviOHnd6BLtDK0/SSu3QD256FFO+YEo1fClJpTCbVTWkTP2FRCCFqr4Jf9BVpYuuwsxw==
X-Received: by 2002:a17:902:8f8b:: with SMTP id z11mr18717522plo.208.1589852213557;
        Mon, 18 May 2020 18:36:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7604:: with SMTP id s4ls614709pjk.1.gmail; Mon, 18
 May 2020 18:36:53 -0700 (PDT)
X-Received: by 2002:a17:90a:344c:: with SMTP id o70mr2490046pjb.23.1589852213114;
        Mon, 18 May 2020 18:36:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589852213; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDSvGp5iYEvQ3rXy1mOtzE83hdS5G/d0yID/TeQaH/cyw3rnP9XZBBbLbfGXcsFFGS
         jXA28c0HOQPnwop76oays2YOHw/W+e8d/ZyXq2z0Ulid3sP4HauiAYFw7Ipd7RafutQ9
         3o96/Hny/WimUImFQurECFQtOC1QEj1vbwiBFwsDidZwWfJbVLCl2v4w4oTFF+mhtT7+
         9DM1GkiuG/CNPnKWNLOz8MVAB0EoR/qyQhcpdEJmU36ic/mMmKRp51K/D/EMpUiE2umn
         2WzeNplDS8siLW6QJECvk/DvWw7Yx5lvrlygJb5K5b8tfX5OBPViKJC/7J9rJAJg8Q18
         sokw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=kdkDRmBRw3AOdXl0cTNhLj6sfFXjj0a9j2kQ1tXWz9w=;
        b=Wj0XjXqdGtqgReDG+uTyaNlxCVI/Hk57BY/iO5PQOXUxynN4NXbhoEl5A3ubvGQoa3
         Pbj37TgXCzJY23OTCIBt8DMz4FGOxyZiDl0XYfSWOZkRbV5gzfL1DQsK3d6+sN0O0lQW
         mD94Tdlqp8iZ6smOx5AThUJt+ZCYbfQZ0LFnPYpieMasjMNcWKZ76aP3ltSV4wKJaqqc
         F6dNRz9WQVvQOogsCGn/kcF94GsDdS2r9XJD0PhAGv+LHjkkskdDuY7AF0MZrL05a1oJ
         g+jKhTxspo8FmcVXO3VGzo87oWAlrikQqrd+9/3wV+3K7wLhaWnpaHnr/dLJtS8o7xS9
         IW/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=JcpiRW9t;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Ja0akDHB;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=24085befd6=yhs@fb.com";
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id b5si147407pjn.0.2020.05.18.18.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 18:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 04J1aprp017949;
	Mon, 18 May 2020 18:36:51 -0700
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 31305aba7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 18 May 2020 18:36:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.229) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 18 May 2020 18:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LriHpLeeaQPFeHiiPxjiHqQmKRVF0wDzxkFdbaiF98eDHdhMPBFViJ6BlgOWJ+vMDSkqfe7Bt+6TGsBDdCVdxfPKVrWcevG625X/iByj0oBJYqvaHXEJPa1fD/bISSBWXvhBBCNt/iocMZ+f9ZM8g1G8Pd26SaftVbRN8wqeeJ5UiXDUXkU2JESUVLh9UsdySfiSvWogvharYrOxuAv0pHRBOabbuFMJ2Zm4zUfRzs0mo0JoHovdRg9etuMzZOaFvg49bkBpX+SxxT/NmptcH301fpe1ZTSS1sa9RdRtZE6ioHxxf0I/QT7PGylLEzt8nBrQXkiEFTpApcngaUK44A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kdkDRmBRw3AOdXl0cTNhLj6sfFXjj0a9j2kQ1tXWz9w=;
 b=IZZzcCbJ0idLeCXRzEGe/RHdg+Llvw+qvu3m79aX82rrnYr5N2dqfFnJJ7IjPNmQXauWzTF2pj6TuyXbl53qhqU5UMB/nuKd8UXVEwJ8RlWhwW++qUGIW+7/hw/UbR2DsJ6qXXb0e4Eui/q3NQuFq6R6K48axQe2yWrJ89hYllF6M+z37/oYJI1FXEuaMeV8dPa/2/+bcBrC6CbV7v1QdheCfX1mSH/hc1Wspk53kHMj85HVRNqPI8VPuzglnm9x8KkChBHwIngsVh4u7oZprZdhTna+AxpIDseTr5fa/PObPyeT3PybHoe7GW/rYUPIZoNgBTtmcg139GUGJPbasQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB3365.namprd15.prod.outlook.com (2603:10b6:a03:111::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Tue, 19 May
 2020 01:36:28 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 01:36:28 +0000
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
CC: Qian Cai <cai@lca.pw>, Alexei Starovoitov <ast@kernel.org>,
        Daniel
 Borkmann <daniel@iogearbox.net>,
        Martin KaFai Lau <kafai@fb.com>, Song Liu
	<songliubraving@fb.com>,
        Andrii Nakryiko <andriin@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@chromium.org>,
        Linux Netdev
 List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
        Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
 <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
 <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
 <45f9ef5d-18e3-c92f-e7a9-1c6d6405e478@fb.com>
 <CAEf4Bza4++AxxU4ikMEfjeYLMiudWqc=Tk=5iTeBBNRjZjZZkQ@mail.gmail.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <f2b1ee99-6250-13b7-83ea-d6f870ecf95d@fb.com>
Date: Mon, 18 May 2020 18:36:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
In-Reply-To: <CAEf4Bza4++AxxU4ikMEfjeYLMiudWqc=Tk=5iTeBBNRjZjZZkQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: BYAPR05CA0015.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::28) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from macbook-pro-52.local.dhcp.thefacebook.com (2620:10d:c090:400::5:f205) by BYAPR05CA0015.namprd05.prod.outlook.com (2603:10b6:a03:c0::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.12 via Frontend Transport; Tue, 19 May 2020 01:36:27 +0000
X-Originating-IP: [2620:10d:c090:400::5:f205]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0239befe-64be-4502-b867-08d7fb950cf6
X-MS-TrafficTypeDiagnostic: BYAPR15MB3365:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB33658059D690B8861F9C907FD3B90@BYAPR15MB3365.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ykSyfJku/wvZ2TsI/Qrxl1Xkp2tfrnpC5YjC6/F9UNzgSnWCg5ArnWbR12oXmqZ6GDohiO4SkEOac5UUnex0+PRJDkaj9UBVJNLtU0M6zxJ/bwjsuoULCt6ie4XWM14y8lq2mtOisjmnagSgmrlc66Rt7xSiskAuo/oRsnvqS1Bs/+9G/vk5MjVwkTdUAIt4EwlVa7aRJ5ZM//XhXxpzSI+2c9y5D06OGaCYieeQ9diybk5F9U8FV5c5xuuxR/NSyQVZo+irfBNsz3+M712F0tTAwRx/drXaoP63afBhdc56Dx33R73GJDtigHDCIj5snbEQFv8m4eI2vWY3XrnRgu21wqDX7wzR49LIzzLP3YVIJWC7N+NUxIEk0EEO46k8E0+sl1qN4S5plpfzea0/17S3vji5PywiOdniwKtJX5yEyuUX/ZbmohgizjHsGURcViRi2bnZYYaGCk1PnUhM35WWcPD3XfPN/MwHXWYqQSsjSLmEAnFZyb+0ma1+bvEtAAwRbS2XnhBMOUJBB5Yex7wQuPmVwTc2C4qo9bGPBx42wDmk9CcsSXrsJyfbKNX3UGQtklgXSbjvuzfqXiaPCDBbTNqNjvPjS00dedLEI+TKAwp20wp+1rNnKph/zztPub7sqY7lnz8SWqcJr5xN2GwobdPCDkD10Ycn5+mrM/IMer3I6X38QwAsXKbTeUv0P0eH9FYn7WU6U4EErAt07pPpB0GTxBx52CgKLUX6BxI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10001)(366004)(39860400002)(376002)(346002)(396003)(136003)(6486002)(2906002)(7416002)(6512007)(52116002)(53546011)(6506007)(5660300002)(31686004)(86362001)(6916009)(66476007)(8936002)(31696002)(66556008)(8676002)(66946007)(16526019)(186003)(54906003)(36756003)(478600001)(2616005)(316002)(4326008)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: tjKWj6v8Wbcm3tgg6CGvBThzEkvru9SOHLBtvMpouCqeQnrNtIr1KW8wzCR/TXbtLuUnm+llJl7CyR8isdrK8Xm4yyLM/vutg+KW/x1ob0IQvzkhpQvuON1eQX4df6rk1W0/8ujGjsGVQbkDtm+fH6j9eXe9uocN+Tzxr72Nsg6Aie50uRgBnDSOazHqbvPNt+zQ1cQUKJGFDJhkZU0qOmY8cPZvUjboKCLxZ6mBdUNcK/XQ6T1Sa5K7NNnsqwVO+TeJKG9yd8V+05jadNfRzAcZllEWqsx9HFqswc0CX0tTcbKUBhPmkGbTV48LYLpE9CJJly3gY9FA31ulnNXEp7d1JwUE484UbTV2FnsYtGLFRCGs0WCUPYCULWXgc7Egc0iXNmIBDKmyPDRGkx9agOxEmYGvB5HBT+B5U6i8Mplq1U6fryqUEAkgpgIGYOkYI1zXMEkxZfpTuwQK23wXag2c99P/FtdVrLzIn6WPqhcDjrvXIGcUqEL4FzXGjENjnQdEGYUDftL+G4eXrADJEA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0239befe-64be-4502-b867-08d7fb950cf6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 01:36:28.4098
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SmmqETYodBihio51VHmhp2MfT16SusKiK8Z4sWvMWlVsTiJn1/667bWZSaDjqkij
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3365
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.676
 definitions=2020-05-18_11:2020-05-15,2020-05-18 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 bulkscore=0 spamscore=0 cotscore=-2147483648 clxscore=1015 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 suspectscore=27 phishscore=0 mlxscore=0
 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005190013
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=JcpiRW9t;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=Ja0akDHB;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=24085befd6=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=24085befd6=yhs@fb.com";       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=fb.com
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



On 5/18/20 6:30 PM, Andrii Nakryiko wrote:
> On Mon, May 18, 2020 at 6:00 PM Yonghong Song <yhs@fb.com> wrote:
>>
>>
>>
>> On 5/18/20 5:25 PM, Andrii Nakryiko wrote:
>>> On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
>>>>
>>>> On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
>>>> <andrii.nakryiko@gmail.com> wrote:
>>>>>
>>>>> On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
>>>>>>
>>>>>> With Clang 9.0.1,
>>>>>>
>>>>>> return array->value + array->elem_size * (index & array->index_mask);
>>>>>>
>>>>>> but array->value is,
>>>>>>
>>>>>> char value[0] __aligned(8);
>>>>>
>>>>> This, and ptrs and pptrs, should be flexible arrays. But they are in a
>>>>> union, and unions don't support flexible arrays. Putting each of them
>>>>> into anonymous struct field also doesn't work:
>>>>>
>>>>> /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
>>>>> array member in a struct with no named members
>>>>>      struct { void *ptrs[] __aligned(8); };
>>>>>
>>>>> So it probably has to stay this way. Is there a way to silence UBSAN
>>>>> for this particular case?
>>>>
>>>> I am not aware of any way to disable a particular function in UBSAN
>>>> except for the whole file in kernel/bpf/Makefile,
>>>>
>>>> UBSAN_SANITIZE_arraymap.o := n
>>>>
>>>> If there is no better way to do it, I'll send a patch for it.
>>>
>>>
>>> That's probably going to be too drastic, we still would want to
>>> validate the rest of arraymap.c code, probably. Not sure, maybe
>>> someone else has better ideas.
>>
>> Maybe something like below?
>>
>>     struct bpf_array {
>>           struct bpf_map map;
>>           u32 elem_size;
>>           u32 index_mask;
>>           struct bpf_array_aux *aux;
>>           union {
>>                   char value;
>>                   void *ptrs;
>>                   void __percpu *pptrs;
>>           } u[] __aligned(8);
> 
> That will require wider code changes, and would look quite unnatural:
> 
> array->u[whatever].pptrs
> 
> instead of current
> 
> array->pptrs[whatever]

Right. There will be a tradeoff between to make it work vs.
some code ugliness :-). BTW, I don't have a strong preference
on how to solve this particular issue.

> 
>>     };

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f2b1ee99-6250-13b7-83ea-d6f870ecf95d%40fb.com.
