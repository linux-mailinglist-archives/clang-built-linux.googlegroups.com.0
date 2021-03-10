Return-Path: <clang-built-linux+bncBCWJNPGY5MDRBGP4USBAMGQEEXTOK5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE98334A03
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 22:46:02 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id 73sf3181061wma.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 13:46:02 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1615412762; cv=pass;
        d=google.com; s=arc-20160816;
        b=p4DFaN7wAeVTTMmwsrlYdro33zeLgnEtmXjioJEZNoGWJi6ve4cF9nVpRwqz16yFPv
         jvtpclhcpmbNlhxFcCFATWxWF9rpYVYh20vCSQ1pSTPIMUnUP542O05aqQNO/gyDooez
         8GK0xictUtRgovpSvzJo3aOuf2SseqaM18LK2/b896ocm5qLAHCTIpqxW+KaW1wtBnrh
         Q8+q6HbXjJY8lgJjA7vxLHgbwLDr0WUS0Y8wEmG6SoH1V4pqKkxz9zAiBGSXDN151zVn
         oMQ7PicRYpuzh3E3MriG4rJSC8gBwTUWHXWJqFYviuDAaeqxZruC5ZFHOfa1BAFt8oVl
         CMHA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=AZP1YstD1hjTwu4k6eoU1gvy7Myon+URhGiwz93oTdc=;
        b=iE0A6JJkUdAgBHQAqhn6acoJ948rhgSEIDc21WXPx+E3oMnRLNDDQEApYy+2YF+Y84
         c5vxqM3KS0Ft0JA+uA92yr7kStwoLP9unsXf3BZ7jrZw68S2SEeRCUoyLUPC5Eez8Agr
         MhaaHCvSWEjkEm37rPcha7U7BblHKzXR2/+WyvVt5NxpxeZIjd+uXSbvF4L35BX/GyBt
         UcqAzHerK/cKegZVtF/dSYNZfivcKDHye2MxH3q7wwBJZuF6Lbig0UvR+I0MwHBCLKvn
         bNddaK3WJdPUN5A8lV4D232Ufpn3uYjSCzMg6NSmFiVNTBOH7H62ZX2IkCGMx7ruPej5
         NOjQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@prevas.dk header.s=selector1 header.b=eizwh3Ym;
       arc=pass (i=1 spf=pass spfdomain=prevas.dk dkim=pass dkdomain=prevas.dk dmarc=pass fromdomain=prevas.dk);
       spf=pass (google.com: domain of rasmus.villemoes@prevas.dk designates 40.107.22.117 as permitted sender) smtp.mailfrom=rasmus.villemoes@prevas.dk;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=prevas.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AZP1YstD1hjTwu4k6eoU1gvy7Myon+URhGiwz93oTdc=;
        b=AhQOAfSaxHlFxPLjWHl0grozqdpN7wDo5JCdrT+/BvNe0JWsGFxDlloCga7fifDFtR
         CWvmI67TM4OdDyk1MuuQwIM6GhKEp/m4849FKROuNwg4kIShogZbZzi1lHj7e95nXMKh
         u58VlS62KdZlkv/5YaBitaaBCVmLIQWQhOZeCS4u4ctEv5tGazEVtau8e0m7ZIsouyr5
         Sszdjo+u+xlKm7MbsIPp8ue0CZ84jR2OmzHi4oPwE2lyehWKdtmkM9OJinkcc2CI1OJK
         JPq+HHf3kQtnJRUTogNLsKg9g7pySnLKMP3UhSVEucAq5pW0r0yjKtEjfn7IfYTuMLmh
         DKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AZP1YstD1hjTwu4k6eoU1gvy7Myon+URhGiwz93oTdc=;
        b=j84j2qVogkXtmYu67cGxk/Og6y3yv8go2cV2E6gvbL29FkXoQaKG2iX+My0g4feXvH
         1qVdrWYl/+Wz8dhjvevrjZG3u0Qm2BFGAxgVwXcaOowsNHkXP8ScX7rvuTvn90JgPMIc
         EiEJtSSv6QYFVkGuoQJ0rSQ04zGn54PfluXlqBTOP6FCyXj52WhGn8KSFBCpCs/m8aUU
         5fHZvMOJBSz61CfSS5a5vDYHCNyLQkdheRrqx0gUEHKtIMdkln7FraQ90wh+Kswfn1MC
         nu/QhoWEaZ27bKz4Hhsiafz7Kr8pTdSsVImcfQN9oHTwKQ6l+bOStfPIiXq+WNoVp6C6
         WVbA==
X-Gm-Message-State: AOAM530CDqmduMBdPJaSkFHg8qeS1I5P74CbXg6trmxT7VJoV7YHnq80
	a2BBuOlv8WSeZxKMD0WCjv0=
X-Google-Smtp-Source: ABdhPJy11iFQcbAZ+uRNsiAT+obr0S9+dCTZ86R+9XRrM/auK1e4q1bt9R9CWn6nWouSJ3KeO6gqzA==
X-Received: by 2002:adf:e74a:: with SMTP id c10mr5672269wrn.409.1615412762155;
        Wed, 10 Mar 2021 13:46:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1e6:: with SMTP id g6ls3148453wrd.3.gmail; Wed, 10 Mar
 2021 13:46:01 -0800 (PST)
X-Received: by 2002:a5d:6404:: with SMTP id z4mr4081301wru.109.1615412761361;
        Wed, 10 Mar 2021 13:46:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615412761; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZrieQ6admoVPhe4vr2FkVoN3pnvFP2yAWWV70ZGhMd7UWXf6i4u1OppjeAev3499+s
         dkMn/iJibhQ/LAl/FML2USspKOqqK/r5CJsYgASDCIUuLYFFeG1oI8NpdFI26Gv6gLZV
         RaEpH4MmaNYOjmpayulidPUtCxSHgxms/3HFVLS8DyJne2nc+J62FhkYz8fJA0Dnpp2G
         6dCsNYqE44H6XKjBUJEBCQZIwiyudLAaJ7qy4xF1wsbGUl4VsMcJ/v2mCMdnKNLRa7iw
         IUZHcU5njZS3PU0/ByDOW+2KAZyXClcbha8QIpRUcHE2pbP8rcC4k5MD9jmUEzd5a+ze
         EQcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rWSR4hUuXHYBCmVp5rvknioHslHGi+e8WpZTvdiNZfU=;
        b=s6iQw5v6zMXc2zYoV9wmaHcNmZbZxGYZlr8h5YOXke+ljFnmwVsh3oi3AZp8ccFZ1M
         XKL3c3s73r/LAXT6RffF+q3EPVVYy3nBXbPdpl0h86PHagoF+UqG7fHQnOgMtk7S0Xdv
         2+OhdRw0KkAkJSamUCLCY85P9mmpDES9rTC97y33rw4n7SpEWclv2K4Qwt4Ed13jv7w2
         Sj3p2CE/cEv/abzoi+mfFLZ0uTQp4VjSSG7OAEphSumzjNMTtxQSJMqLeYf08NV7TgN4
         HUmVdUTOxkMLb/lCo/alGFvKg5WrvNf3LnbwQJmLNRUSn9xvrKkBk3M34CoXebVd2qlE
         y17g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@prevas.dk header.s=selector1 header.b=eizwh3Ym;
       arc=pass (i=1 spf=pass spfdomain=prevas.dk dkim=pass dkdomain=prevas.dk dmarc=pass fromdomain=prevas.dk);
       spf=pass (google.com: domain of rasmus.villemoes@prevas.dk designates 40.107.22.117 as permitted sender) smtp.mailfrom=rasmus.villemoes@prevas.dk;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=prevas.dk
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2117.outbound.protection.outlook.com. [40.107.22.117])
        by gmr-mx.google.com with ESMTPS id v16si320962wmh.1.2021.03.10.13.46.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:46:01 -0800 (PST)
Received-SPF: pass (google.com: domain of rasmus.villemoes@prevas.dk designates 40.107.22.117 as permitted sender) client-ip=40.107.22.117;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAvhIHZ3GRC2GeVS4+lBIGG/ygRbaaYmc/JpA1PDuA0MhWlq5pQ75jBZkUy3oRzszRukh5v8tgUtp8kgOprm/r/iE3meARMTfKE3/gO+czVrPrde5WCLqoy1KF+8La7Y5fGfJQNWKYqXrX/05AVhzkPOvaJ5GV7tphthd1ViD/z1ctSye8SF9vSqFtb7tzwk4fBgeRq4WGX15OzSwURDrpRvn2OvGRQGVuqC1/lytzMt63B4odeB0USj8ht6DnBvJS/eilCR4cCag9hEc+/CDrbESCT1tVZjKkA1cdohoP/kuP6ehxJvUxJYq72NvWCsO1feZ4Y4fkCxhml10Km7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWSR4hUuXHYBCmVp5rvknioHslHGi+e8WpZTvdiNZfU=;
 b=fcjzRa4LhcOxJKn0Dr8yeCqdK1Dd22UGmdH8LEHFC4/q8bQ9KIyh4Clq5kuplc07V8jQxyhBdQCDDmLdotjlagGAD6dUCYkmvOJsodmaaf6tRfMDqcdsw6qAeFzZrT576hiBtgp+DOJEyJgr1u++plxjV3byMSr8TRWIjGYVJK3saEOqcHpGsDaZpMMHxOQ2RSjMgPf3a4CC2YyFrAEwGTCFFKfTm9WGN5iHmZTH8PE/tAyrjFz34ORs+OZkYFzylHpzK4xX42UNDVRhGJCWnazHnsxjTOXHtxs2J2QN8iRh9/HMGWLPEVoM4r8gqCcW1y2PXm0WBf4w5yyU4MNyeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
Received: from AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:3f::10)
 by AM0PR10MB2402.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e2::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Wed, 10 Mar
 2021 21:46:00 +0000
Received: from AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::58b2:6a2a:b8f9:bc1a]) by AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::58b2:6a2a:b8f9:bc1a%3]) with mapi id 15.20.3912.030; Wed, 10 Mar 2021
 21:46:00 +0000
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Masahiro Yamada <masahiroy@kernel.org>,
 Nicholas Piggin <npiggin@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 David Brazdil <dbrazdil@google.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Ionela Voinescu <ionela.voinescu@arm.com>, Kees Cook
 <keescook@chromium.org>, Kristina Martsenko <kristina.martsenko@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon
 <will@kernel.org>, Nicolas Pitre <nico@fluxnic.net>
References: <20210225112122.2198845-1-arnd@kernel.org>
 <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
 <1614559739.p25z5x88wl.astroid@bobo.none>
 <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
From: "'Rasmus Villemoes' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <a85b5a4c-9888-8a33-4424-98140783db3e@prevas.dk>
Date: Wed, 10 Mar 2021 22:45:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [80.208.71.248]
X-ClientProxiedBy: AM6P195CA0076.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::17) To AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:3f::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.149] (80.208.71.248) by AM6P195CA0076.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend Transport; Wed, 10 Mar 2021 21:45:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a92f66a1-2833-4fd0-a129-08d8e40de500
X-MS-TrafficTypeDiagnostic: AM0PR10MB2402:
X-Microsoft-Antispam-PRVS: <AM0PR10MB2402DF9A65FAF533EFA5663093919@AM0PR10MB2402.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LBEHV4sbBlydUX7ITQNNOcUjFOK9g/Ai9Tyh5y3i6r+TdxReFc4/YbIqM5y+ZoFwXquZqslPwWnuK8D0hdfzhhEnQNC6burkt29Tk9a/89Aml7Y3EmjiAF8iEv6trGh7pusif73dBwqqTtxUp8yH75P8RcI+dea/ha4eGVf+z74SzxehAUlQYOGmZ/Dnjuoxx+g69QguROhyyPNp4EoCEFYuYMDWem+4SmBQWWYXY2ArQuQ1qgDFTcsBkXJaC9NLvjKQWkbpAyWIn5sbSpR95gpjFADIMneX9q6reO4az+qzlIUC9JVlsHrW/tb5e6YSLLf5EhTqhYqsO/zg1IWnuJZH2eJ68ZQwaICw6qQYAaprF03zSToK2u6VtCy9Ej5z/2EiqOteAQGjvGzfkhS682WYcqEuyqeZG5em+vhXMF2vIMPTo9Wgy0KbB72HLXqVtQ2SH7dYrGIEIQvQ7ZCa9dR5Glbw2GWJNxEH0iCt+66YiixAkBIbYri+LKdMJiE2Cq3EHzxTpIdRd8TmF6YTI7MVpRRAop1DMKP277H70qhjxyQWqsCbKb+E2daElAm6eKY4xmecUn7CyFHEo6XwbiZOGSlnY9pCYL7jXuIvllo=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(39840400004)(396003)(346002)(376002)(136003)(316002)(53546011)(8976002)(86362001)(8936002)(66946007)(956004)(110136005)(54906003)(16526019)(7416002)(186003)(2616005)(5660300002)(16576012)(26005)(44832011)(66476007)(8676002)(66556008)(31696002)(31686004)(2906002)(4326008)(478600001)(52116002)(6486002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?UTgvN3RtZEdzN3V5RHVkd0tKRU5pTFp1RU5MT3ZkRmJQdWtEbmdBcDc3YjQy?=
 =?utf-8?B?RVpIRUlHODdCakJSeHQ5N3RkeW54cWFxL1dFeTdhV0EreW9EclhCYWFUQnY1?=
 =?utf-8?B?cXcrb0VpaWJCQnBYclIxbjJUbXA1UlpwS3ZPaXNqbGY3UElYTk1kK1EvUFE4?=
 =?utf-8?B?SzE5RHVZTjIya0xBZENBUElqUTdPNVYwbXkwNkNlaWpBaEk1QnNoNmtjMHpl?=
 =?utf-8?B?RmQvcjZNYnV5QkxJamFXZFNtcXBlMUowUUZ2b2tTcXp2LzRtUU5tN08vZnlv?=
 =?utf-8?B?dmFqZjJvcDFyME9BM0lDK3RNY2JJZ1M0YUZ4YUFjRCs4WWpDRVB6aFhhcXZ2?=
 =?utf-8?B?MGF3TnduNkVDVVNXbzFBSUVRNm81dEhZdFBoQzJ6V011eW9IQ1lNSnBabDM3?=
 =?utf-8?B?MTVuWlY3WXBXdFozZXZ6cTltaDFaVkdtQndHMWVQaWhESWNBSHJXNE1zRWFE?=
 =?utf-8?B?ZkxoMnZBWkh1eUZraFp4aDBkZ04yb3gxSStUL2t0WkNqZitYVHhLSHc3enl3?=
 =?utf-8?B?VVh3WjMwUUxHL3NlR2txOWlCajlrNk50NVpTZkdIK05SM1ByOEdLU1BTZGJL?=
 =?utf-8?B?d3NkaDVaK0plaGg2R1h6RWpvdXZGcFYzL2RhYit0ZWVNVTBCOU9aRWsyOEhv?=
 =?utf-8?B?WEx6SkdXZU03SFQrb0pWOHFKemV5UFpmeTBjWkRMYVR1Vys1dmF4aWZtSWZX?=
 =?utf-8?B?Tk0zLy9EZTJtcW9POUhsR3JhR3NkV2ZJMHh3OGNjazRieUszOEViREFJbmNR?=
 =?utf-8?B?UVZMNGlPdnlhaEsyTDFYcU9Wa3VqdlJ6M0JUbldWQVYrQld2M2ZyM3JUYzRr?=
 =?utf-8?B?SUF0UnBGZzFOdzlHNjlCS1JnUU9icjZaQXhGTEhhQmtPUldKaEhHdmZ4ZUpE?=
 =?utf-8?B?YXZIbGVqY21nYS9FalhST0g4NUozbWFTNW5nblpBWGtEV0VmR0QrM3hIRGxj?=
 =?utf-8?B?K1BGQVArUm1wTjF6VXZ0T1hRaDZReVdyRFE4Y1pBamY1enBTR3g5RTBGNDlH?=
 =?utf-8?B?WVN4QlBvSUxCajNsZ04yc1BYbktFOS9ndDhzNElLMmlyaUZyNk9hSk1jZ1Zp?=
 =?utf-8?B?bWpBSHNya09CTGY1Zmd4aHhkcVpHS3BueGRLZTQ0ZDArYXBzNmdQYnNnMXRT?=
 =?utf-8?B?dlNmVDZyYmRMeWJJaXNWNTJ1dWJzenh1R3c2MUwrMzI3T044QlJpQml4anJ5?=
 =?utf-8?B?dFBpa3VwZlo1OVdKVmZWbjRQUFdlNnkrV3dyd3hxUjV0S2l2ek1QemcraXdX?=
 =?utf-8?B?ekorcU92RzFXa1M3S0pydDY1MVdkSDRMdXNSNTNnZVhnMzlLV01TMVBxOGhL?=
 =?utf-8?B?V0xDeFJDM1pYUXRHZFV0RmlVS1AyVCtMZVhOZkw4cWYvTk95OGIxM2Zhckd4?=
 =?utf-8?B?WGhabWcxQXYxVmFvSDN1SDB6aW9ZNU9Dc2lsSDFXeGNFRmE4bUhVcDlITU1u?=
 =?utf-8?B?TjVpMnJ5dHJxVHBDRVBRMEVtT25mcVlETzlNTHJpaTdRUC80SmdWcjRWS3dt?=
 =?utf-8?B?b1hPQlRDMzJiSXFMenR5Qkl6Q3F2bmNwNG1ZRkhXYmhHcU45YVBtQUNKaVFw?=
 =?utf-8?B?NHNKWHdPWTFKOUk3NGNSVU9PVm8wTkY3bkU5aldjNmwzOEhDNjlPU3IxZ0E3?=
 =?utf-8?B?SDNIY2crNFNWcDFIMTU0ODRUbUVwOXZseWc2bm5hYTVQUFpUeEpWUkpoVkNr?=
 =?utf-8?B?SmhqNEVuUi9zVi9xY3pQMU4zL3I3N2ZEeW40c01KdXduZVg4OXphVVJDb3R5?=
 =?utf-8?Q?8mb8NGQ1noz6E63FjTn4TxVFGwhEmx9eghUiK/5?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: a92f66a1-2833-4fd0-a129-08d8e40de500
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB1874.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2021 21:46:00.3365
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: POaH+Ik1IYOsfHjPF0EU8s6Cl4RMDvu0YDBwTNIFtcSIgrcIeVWFQMeu2b8Ac6OrGyViOR8cWZKxGCMdRtNOrrG/GcJn7veeSdlrE1CU5kY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2402
X-Original-Sender: rasmus.villemoes@prevas.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@prevas.dk header.s=selector1 header.b=eizwh3Ym;       arc=pass (i=1
 spf=pass spfdomain=prevas.dk dkim=pass dkdomain=prevas.dk dmarc=pass
 fromdomain=prevas.dk);       spf=pass (google.com: domain of
 rasmus.villemoes@prevas.dk designates 40.107.22.117 as permitted sender)
 smtp.mailfrom=rasmus.villemoes@prevas.dk;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=prevas.dk
X-Original-From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Reply-To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
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

On 10/03/2021 21.49, Masahiro Yamada wrote:
> On Mon, Mar 1, 2021 at 10:11 AM Nicholas Piggin <npiggin@gmail.com> wrote:

> 
> I tested LD_DEAD_CODE_DATA_ELIMINATION for the latest kernel.
> 
> I added an unused function, this_func_is_unused(),
> then built the ppc kernel with LD_DEAD_CODE_DATA_ELIMINATION.
> 
> It remained in vmlinux.
> 
> 
> masahiro@oscar:~/ref/linux$ echo  'void this_func_is_unused(void) {}'
>>>  kernel/cpu.c
> masahiro@oscar:~/ref/linux$ export
> CROSS_COMPILE=/home/masahiro/tools/powerpc-10.1.0/bin/powerpc-linux-
> masahiro@oscar:~/ref/linux$ make ARCH=powerpc  defconfig
> masahiro@oscar:~/ref/linux$ ./scripts/config  -e EXPERT
> masahiro@oscar:~/ref/linux$ ./scripts/config  -e LD_DEAD_CODE_DATA_ELIMINATION
> masahiro@oscar:~/ref/linux$
> ~/tools/powerpc-10.1.0/bin/powerpc-linux-nm -n  vmlinux | grep
> this_func
> c000000000170560 T .this_func_is_unused
> c000000001d8d560 D this_func_is_unused

Dunno, works just fine for my ppc32 target in v4.19 (i.e., the function
gets eliminated when enabling LD_DEAD_CODE_DATA_ELIMINATION).

But yes, I can reproduce for master ppc64 defconfig. kernel/.cpu.o.cmd
says that it wasn't even compiled with -ffunction-sections, nor does
.vmlinux.cmd mention --gc-sections.

> masahiro@oscar:~/ref/linux$ grep DEAD_CODE_ .config
> CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y

Ah, but scripts/config just blindly adds that config option - I don't
think ppc64 actually supports this, and
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y automagically vanishes from
.config when building.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a85b5a4c-9888-8a33-4424-98140783db3e%40prevas.dk.
