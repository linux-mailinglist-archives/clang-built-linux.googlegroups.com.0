Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBOGZ674QKGQEU2VCLIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 108FE24AD41
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 05:23:38 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id z10sf482643qvm.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 20:23:38 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1597893817; cv=pass;
        d=google.com; s=arc-20160816;
        b=VwGZQKLJ7HZ8b0YSfSo6So0t1ZqoNhQBlsA0TiRifgfUboqsAo+Rodbvoe7n7OyCv1
         idv3COPzDMIkrGSY8yJLJHsSBc9g6slDOidezi7I265WY4mUseZraQrro0WsZMYz85QF
         WQhDNuLcIPnQt0Ydkb+8ftuVpgyRrOTpE78rpVgQOOY5ShKT+EiXN62RdLJ7XfVWDhIs
         gdAXpxBOe9VD8zbfo4b2jXfVrNmWVjXpO0DPERuqFinm/Hr/aY+7lRxtSELpSNGcD6kt
         SOOKZoGjsMQtUnH2a2eCW+0dFFg66sgRfX8xDeYIkxnln0GkcdaATB9uOaIpOJcuIn1P
         om/Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:in-reply-to:user-agent
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=z8VxLwnYa2liRY81js5opKZ6QvLCTrWtCg4LrHZ2BHs=;
        b=NjzbAPG9h23wA2pV/FYLehqYjQmONdJIXsAjjnH7Qw6D1SPIEXWznS08VIkDq9WiE4
         BUD13GRcofecDKH8VxyWoQvXeZtCznOXfdO+q8Kqe7l5oex6b9JWm/OKPVQ8Eo+avVwV
         3Ke16isKJjFdY1fYh58r9LA6ZcekDbF4Q3VmBQDiuNzCdKAm2W79hdDWZgY2jSA3+Dp7
         NfoeA/Aq/JBfMOBY5zjfGG8BtalZwodMYt2u1+6LbdPBbnG8PCwx6n0T69FMXnS38+ww
         Nvp9/Goe5kY8oWrEej4yg1HzT2ritMhXaOEJLF+gPDPaIy1k+fkfNpr3mCioPBxUGnVy
         dabA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=WUi2swl2;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="a/qZMVuI";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z8VxLwnYa2liRY81js5opKZ6QvLCTrWtCg4LrHZ2BHs=;
        b=U+08MFW5NQYmae8b1yE3YpLX1Vt7efsmY0ZcPT8HteEq2/KMqg5uREIhhhQsXqAxoT
         NSLhaKg2eM2X7hIziIY4w+TqNl3OpaCVaAZ12jiCSPwffQXh4lzcGU7u09jGnll9P+/y
         5YYXdoWUvHU/GqSICITlo16RNKbwVuAJcqOeiqtLXmFrzUKZuMzCb+ew5sEcc3TUejtu
         586Wlsw91XaMNbYMeCl1JEObTLkEJemT6xo2vYK5RysWNRr3/KuIco6DzlqXwQICaHtB
         m4cW2VlRp8gQOqaH/hszsTjqtJZCB8iC/9oN//zblSlVPYp7c3PpGBCJIle+Q8ZrH+HJ
         TQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z8VxLwnYa2liRY81js5opKZ6QvLCTrWtCg4LrHZ2BHs=;
        b=TVrewifa7JT8lqcJPzbvNZrMuGZ9LfrySpbbiZIky/ysq+QPjAJ3AQdSvNSl85tigV
         RkM0P8MLyaxzwPQfvUFwRnZFw6cVaRRavU/DcJ7FfPUbxEYZdp9mjOHLUvWp7fetQ7hj
         fjry/j7kgBpsslNG1YMNj4SBoslvf66dxmQ8CqpZJjhelfQnvjHsdsXUSUICSiIumOSF
         /6FjEoAZxBMWhwSLlh54FWB2BHKIPcR1OayR4jBYEE9P+7oQApZrSXsGW3dMdiZ9cqIJ
         hk2bRxQOLuVfke8H0kS+CInPWl4a1aSjaBUSyr1B2TKD9JIumaTzYxblg14jhC/6+4sv
         5V6A==
X-Gm-Message-State: AOAM530BI6WjHlUyPHuBC7XitRz/p5OlDRPnpvrBjY3zlBltEXDde+wm
	YoofKh7O8doh31IO52WPL8I=
X-Google-Smtp-Source: ABdhPJzP1r/I6OSxbZaXwAUaQrJPeVyduXNVj8f87zCuz6jPeA7fmftoKRrp606eBDVgiqC8jkwwtQ==
X-Received: by 2002:a0c:f74a:: with SMTP id e10mr1388353qvo.128.1597893816820;
        Wed, 19 Aug 2020 20:23:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4c12:: with SMTP id bz18ls231079qvb.0.gmail; Wed, 19 Aug
 2020 20:23:36 -0700 (PDT)
X-Received: by 2002:a0c:f4cb:: with SMTP id o11mr1328551qvm.3.1597893816496;
        Wed, 19 Aug 2020 20:23:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597893816; cv=pass;
        d=google.com; s=arc-20160816;
        b=WlhMZPWl9s4K5SuLWS0ty/1PNvd9lTKs3ef4CBdZcYjv+ZFfBuJWx9MmECCKjAbbrN
         B/LdTXsTNuOCWfgfjrk6B8BVU/k+i1pT1K5q8ns6Dj5u3LQlIc+MPMLTzx4aqrQbu8ms
         Jv8f7hdp4/5jmvTEtix5Nqj2C5N4+UhqOq+OefJB6PyVJeB3uT1McdngMnKEH2MEym9W
         kqNzVV7tSr9AYg5J+Fl6+Bvh6iayE4seFGL12+Q0E/zYcWVTLS4S+kY5AQrboKSXBLEp
         OmyPaw2rddapa7BwAaI13SvacsR7jOKL0vXPiLJp/zmb3saxip9CoJ0g7WvOGqTcMz0a
         pstw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=XV6tVGQlmZvyp7GHZCVJuhF1YtgYJcv7KMEx5n0J5k0=;
        b=HppkO5YbE+DBGpOytlos5QJH4nDiol+kkEYygclOxbs1m9Y5PwBjy6fpXaNnYNhgkZ
         BdAZkq0lTKChYDTMttf/M3K6+++duCUfwQaHQYOA5o9AHtLLDfbr5gzG8Vh/zaBYWa+R
         oGmILgsDpKDuI3XrUNdV/qLe4KFIZ6cP4jErwsBz2/64d5N8dlwnrBwKgc3pwe7jn5K1
         K6GF/8e67Rw3Hp0twYqPuxeVaefI/q/9oB9gqN9c+bT5hjonnjx6oVzoCak0MRHJM+f+
         c8wAj8HBso7Zuc10GWKVFXMcfel1VxnXbNOWyNXL2z6Q5eByPGzFFqJZZczvglRaElQb
         8kQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=WUi2swl2;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="a/qZMVuI";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id b1si49366qto.3.2020.08.19.20.23.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 20:23:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=5501885a99=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 07K3NT83010673;
	Wed, 19 Aug 2020 20:23:31 -0700
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 331crb8y8a-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 19 Aug 2020 20:23:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 19 Aug 2020 20:23:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Osc9Wg3qO1VjtJ5iiXsx7JEmAnTwUzVqZ/jIeH7pZR9gbQD5++l7IvfQRef6MCxsNQiXSM4tJDLo+nl2KW3c6r/G/i1Xg5N1ePJX52z5LzD6r9It3k/JoMHIkQAFnEA9uavXjVZvNSIHCftV4OAype0BAM+OXDOQN17pCz1yzfD77PBw0SekZsKlSBOor3b631DXOu6QzuCq0rEP3xheRMVcxtgCC8Wi2jkfv9zQ3LlgdDmxFtBKcgcOF3RH7vBGkbakN/1xA0o+tul7cb1YOnxI9+Ww2teFudg/N8m0pDlLZ3r3s2BYHIiZt7cOESaZtCEcCPs0zQ9bhtmNV+2wFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XV6tVGQlmZvyp7GHZCVJuhF1YtgYJcv7KMEx5n0J5k0=;
 b=YnK1+H0S+WL11pGhr/3OzenS0/M/1+fnkVrvf9ItN8NZmrH7JZwlY+tvIml2r+8PPigy6be/T5WMxCfT3hWiZISLawDZcnjxgqey5Hxi3laBnTZqdU/IZrip2woKyTJEtHnuFyw43PpBImSugcl1vBMr4IIrzIGdGM2am5+4drxhuhRIzre2oSUTx30r0f5m02BLpbfQD+pa8jFscg9RLYBKnQreSlJja7cdAAChtC0AXM6n/yc2pylM1v12l3f3d4vhXeR4KUJDJRF1pjuTeWSqMUBOx8uPMt0uJVdwUEHOExb1sYWxNDZ7pes66pNf9KylDc7EK/hb71aRYXxsvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB3253.namprd15.prod.outlook.com (2603:10b6:a03:104::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.18; Thu, 20 Aug
 2020 03:23:16 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::56b:2925:8762:2d80%7]) with mapi id 15.20.3283.028; Thu, 20 Aug 2020
 03:23:16 +0000
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong
 alignment
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
        Jiri Olsa
	<jolsa@kernel.org>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        Alexei Starovoitov
	<ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Mark Wielaard
	<mjw@redhat.com>, Nick Clifton <nickc@redhat.com>,
        Jesper Dangaard Brouer
	<brouer@redhat.com>,
        Network Development <netdev@vger.kernel.org>,
        bpf
	<bpf@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Song Liu
	<songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@chromium.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200819092342.259004-1-jolsa@kernel.org>
 <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com> <20200819173618.GH177896@krava>
 <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
 <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
From: "'Yonghong Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
Date: Wed, 19 Aug 2020 20:23:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
In-Reply-To: <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: MN2PR15CA0060.namprd15.prod.outlook.com
 (2603:10b6:208:237::29) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2620:10d:c0a8:11e8::10d3] (2620:10d:c091:480::1:1330) by MN2PR15CA0060.namprd15.prod.outlook.com (2603:10b6:208:237::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend Transport; Thu, 20 Aug 2020 03:23:13 +0000
X-Originating-IP: [2620:10d:c091:480::1:1330]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c333d8bd-bb2f-4339-ac17-08d844b860db
X-MS-TrafficTypeDiagnostic: BYAPR15MB3253:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR15MB32536C61FF362D3FAF276D1DD35A0@BYAPR15MB3253.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uh2OXCieiz8me0wwlIj55QMp2DsyR+bXnHOy5pHfhN1bT7dqKc0+9lxbqpCwwXkQD7l7f/z4iIVau4SFbmgLyprQmA+Si4LZYuQSvrrEBl8kq08wfW4yTO6x/lpjtRSwD3JG99ae36vsq0VvDh+dUzWcnKOqAeRFPAT5RA1ucyvysjj845KVWqANZHfHig1q4+1tDXkshJDZ/u3JJ/woc2m1Oaemj7m+Bt8NIulz7sWW6ETJo5j8zKYCi/W2Brm61S9xC0lUvLjZNieYgWXPFBJ4p7IXeENro7q7FjJtOszuU9xFYPXp+qgeTlaykzjbDqatuRegA831LklxbC9Pti4lkEhroE6M5tP+5AoD1Fwa5g9tnmW6ectnrI0j5vPU
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB4088.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(376002)(136003)(396003)(39860400002)(346002)(6486002)(2906002)(31696002)(66574015)(16526019)(186003)(7416002)(52116002)(5660300002)(53546011)(478600001)(2616005)(83380400001)(31686004)(8936002)(54906003)(66556008)(36756003)(66476007)(66946007)(86362001)(316002)(110136005)(8676002)(4326008)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 9deZNCZOwqnEoQ7JUNOi9DjwXzFBoWgKmtxGhE/dx4mo6Dzff8vVpJDPd0yCxZDPbaz/ISZSAe45CmoglvsWAHZJfVFFWgcaGfTmYX2kBN/GfOI9He6VaYbjK7OxhwABjKRiZTxmBggiEicQVrlF3CDrX7M2kkwLU/c/C4O9C4yp7jTyAYSkuoCrWjupYSPxNtcEqsDSnIt3AjwLvd+4cc4Y+xoY2lEVy7Lu5iKgvzYkEfmYKyM8bEJFdqNb29XuYnTLAz4Pu4rhELy7OuOPnFZsAT+gBmuit9WVfJNkQvQcV8QFCGRs6J2e1tKQwb0aZC91lAuY34ezT+A4gsLSlteWF4Bv+RXN4rjo9kXiCPW3VT9oCIk+OOb1o1l/y2F9AzM4/+Ki0miW+Y51N+5r6NrZNZXi2cW2famUMECCM5UhdifBECZI9BligStE0+STyG6X7goOD4rO1x2yPy8cNeQWXMe4DLk2Xv3We9WzOD4psFmJL4lAjiTWZBdvMVNwwWlMxYiQjsK/euU+QBriqAD++1h+/mTHtdETdqjWbT4XkbCUh7DhFDyoFUD1nHzE6sJWO8WC4zS6nsxD/FgTA1bU9GRBE/iypiAgXpWYqm0OOOx6QqGVVjBBoy7R9BamH5BHX6+SnMU8NTMMZI75bBuBhwaAjh0NnblUM/SR5aQ=
X-MS-Exchange-CrossTenant-Network-Message-Id: c333d8bd-bb2f-4339-ac17-08d844b860db
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB4088.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2020 03:23:16.5503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dgvEc8zhduT88y35IU/+bZoSdiKfJNxtzX1TmxflN1I2PPQ/booMo4trOhYsZ4tH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3253
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-19_13:2020-08-19,2020-08-19 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 spamscore=0
 clxscore=1015 bulkscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008200028
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=WUi2swl2;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b="a/qZMVuI";       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=5501885a99=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=5501885a99=yhs@fb.com";       dmarc=pass
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



On 8/19/20 7:27 PM, F=C4=81ng-ru=C3=AC S=C3=B2ng wrote:
>>>>     section(36) .comment, size 44, link 0, flags 30, type=3D1
>>>>     section(37) .debug_aranges, size 45684, link 0, flags 800, type=3D=
1
>>>>      - fixing wrong alignment sh_addralign 16, expected 8
>>>>     section(38) .debug_info, size 129104957, link 0, flags 800, type=
=3D1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(39) .debug_abbrev, size 1152583, link 0, flags 800, type=
=3D1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(40) .debug_line, size 7374522, link 0, flags 800, type=3D1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(41) .debug_frame, size 702463, link 0, flags 800, type=3D1
>>>>     section(42) .debug_str, size 1017571, link 0, flags 830, type=3D1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(43) .debug_loc, size 3019453, link 0, flags 800, type=3D1
>>>>      - fixing wrong alignment sh_addralign 1, expected 8
>>>>     section(44) .debug_ranges, size 1744583, link 0, flags 800, type=
=3D1
>>>>      - fixing wrong alignment sh_addralign 16, expected 8
>>>>     section(45) .symtab, size 2955888, link 46, flags 0, type=3D2
>>>>     section(46) .strtab, size 2613072, link 0, flags 0, type=3D3
>=20
> I think this is resolve_btfids's bug. GNU ld and LLD are innocent.
> These .debug_* sections work fine if their sh_addralign is 1.
> When the section flag SHF_COMPRESSED is set, the meaningful alignment
> is Elf64_Chdr::ch_addralign, after the header is uncompressed.
>=20
> On Wed, Aug 19, 2020 at 2:30 PM Yonghong Song <yhs@fb.com> wrote:
>>
>>
>>
>> On 8/19/20 11:16 AM, Nick Desaulniers wrote:
>>> On Wed, Aug 19, 2020 at 10:36 AM Jiri Olsa <jolsa@redhat.com> wrote:
>>>>
>>>> On Wed, Aug 19, 2020 at 08:31:51AM -0700, Yonghong Song wrote:
>>>>>
>>>>>
>>>>> On 8/19/20 2:23 AM, Jiri Olsa wrote:
>>>>>> The data of compressed section should be aligned to 4
>>>>>> (for 32bit) or 8 (for 64 bit) bytes.
>>>>>>
>>>>>> The binutils ld sets sh_addralign to 1, which makes libelf
>>>>>> fail with misaligned section error during the update as
>>>>>> reported by Jesper:
>>>>>>
>>>>>>       FAILED elf_update(WRITE): invalid section alignment

Jiri,

Since Fangrui mentioned this is not a ld/lld bug, then changing
alighment from 1 to 4 might have some adverse effect for the binary,
I guess.

Do you think we could skip these .debug_* sections somehow in elf=20
parsing in resolve_btfids? resolve_btfids does not need to read
these sections. This way, no need to change their alignment either.

Yonghong

>>>>>>
>>>>>> While waiting for ld fix, we can fix compressed sections
>>>>>> sh_addralign value manually.
>>>
>>> Is there a bug filed against GNU ld? Link?
>>>
>>>>>>
>>>>>> Adding warning in -vv mode when the fix is triggered:
>>>>>>
>>>>>>      $ ./tools/bpf/resolve_btfids/resolve_btfids -vv vmlinux
>>>>>>      ...
>>>>>>      section(36) .comment, size 44, link 0, flags 30, type=3D1
>>>>>>      section(37) .debug_aranges, size 45684, link 0, flags 800, type=
=3D1
>>>>>>       - fixing wrong alignment sh_addralign 16, expected 8
>>>>>>      section(38) .debug_info, size 129104957, link 0, flags 800, typ=
e=3D1
>>>>>>       - fixing wrong alignment sh_addralign 1, expected 8
>>>>>>      section(39) .debug_abbrev, size 1152583, link 0, flags 800, typ=
e=3D1
>>>>>>       - fixing wrong alignment sh_addralign 1, expected 8
>>>>>>      section(40) .debug_line, size 7374522, link 0, flags 800, type=
=3D1
>>>>>>       - fixing wrong alignment sh_addralign 1, expected 8
>>>>>>      section(41) .debug_frame, size 702463, link 0, flags 800, type=
=3D1
>>>>>>      section(42) .debug_str, size 1017571, link 0, flags 830, type=
=3D1
>>>>>>       - fixing wrong alignment sh_addralign 1, expected 8
>>>>>>      section(43) .debug_loc, size 3019453, link 0, flags 800, type=
=3D1
>>>>>>       - fixing wrong alignment sh_addralign 1, expected 8
>>>>>>      section(44) .debug_ranges, size 1744583, link 0, flags 800, typ=
e=3D1
>>>>>>       - fixing wrong alignment sh_addralign 16, expected 8
>>>>>>      section(45) .symtab, size 2955888, link 46, flags 0, type=3D2
>>>>>>      section(46) .strtab, size 2613072, link 0, flags 0, type=3D3
>>>>>>      ...
>>>>>>      update ok for vmlinux
>>>>>>
>>>>>> Another workaround is to disable compressed debug info data
>>>>>> CONFIG_DEBUG_INFO_COMPRESSED kernel option.
>>>>>
>>>>> So CONFIG_DEBUG_INFO_COMPRESSED is required to reproduce the bug, rig=
ht?
>>>>
>>>> correct
>>>>
>>>>>
>>>>> I turned on CONFIG_DEBUG_INFO_COMPRESSED in my config and got a bunch=
 of
>>>>> build failures.
>>>>>
>>>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>>>> decompress status for section .debug_info
>>>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>>>> decompress status for section .debug_info
>>>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>>>> decompress status for section .debug_info
>>>>> ld: drivers/crypto/virtio/virtio_crypto_algs.o: unable to initialize
>>>>> decompress status for section .debug_info
>>>>> drivers/crypto/virtio/virtio_crypto_algs.o: file not recognized: File=
 format
>>>>> not recognized
>>>>>
>>>>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
>>>>> .debug_info
>>>>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
>>>>> .debug_info
>>>>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
>>>>> .debug_info
>>>>> ld: net/llc/llc_core.o: unable to initialize decompress status for se=
ction
>>>>> .debug_info
>>>>> net/llc/llc_core.o: file not recognized: File format not recognized
>>>>>
>>>>> ...
>>>>>
>>>>> The 'ld' in my system:
>>>>>
>>>>> $ ld -V
>>>>> GNU ld version 2.30-74.el8
>>>>>     Supported emulations:
>>>>>      elf_x86_64
>>>>>      elf32_x86_64
>>>>>      elf_i386
>>>>>      elf_iamcu
>>>>>      i386linux
>>>>>      elf_l1om
>>>>>      elf_k1om
>>>>>      i386pep
>>>>>      i386pe
>>>
>>> According to Documentation/process/changes.rst, the minimum supported
>>> version of GNU binutils for the kernels is 2.23.  Can you upgrade to
>>> that and confirm that you still observe the issue?  I don't want to
>>> spend time chasing bugs in old, unsupported versions of GNU binutils,
>>> especially as Jiri notes, 2.26 is required for
>>> CONFIG_DEBUG_INFO_COMPRESSED.  We can always strengthen the Kconfig
>>> check for it.  Otherwise, I'm not familiar with the observed error
>>> message.
>>
>> I built a "ld" with latest binutils-gdb repo and I can reproduced
>> the issue. Indeed applying the patch here fixed the issue. So
>> I think there is no need to investigate since upstream exhibits
>> the exact issue described here.
>>
>>>
>>>>> $
>>>>>
>>>>> Do you know what is the issue here?
>>>>
>>>> mine's: GNU ld version 2.32-31.fc31
>>>>
>>>> there's version info in commit:
>>>>     10e68b02c861 Makefile: support compressed debug info
>>>>
>>>>     Compress the debug information using zlib.  Requires GCC 5.0+ or C=
lang
>>>>     5.0+, binutils 2.26+, and zlib.
>>>>
>>>> cc-ing Nick Desaulniers, author of that patch.. any idea about the err=
or above?
>>>>
>>>> thanks,
>>>> jirka
>>>>
>>>
>>>
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa%40fb.com.
