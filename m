Return-Path: <clang-built-linux+bncBAABBNW272DAMGQEMQFICEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id C79D53BA662
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Jul 2021 02:20:06 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id z18-20020a2e96520000b0290178006de192sf4788572ljh.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 17:20:06 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1625271606; cv=pass;
        d=google.com; s=arc-20160816;
        b=cb4Ym44leN8zGbWwP6fPkLS6hb4zRsa7tSwrYnYbl1QdGkL8EMqa4tQpVVG+evgfTX
         icE74vGUYny/lbqKz/AnqHJ68I7vV6ubYHGJQX6JLNzPn8TrgppHR7MT0DRTpElT5dL1
         autNqKMxBEBrladTF9COC/uAAd01KSPOCEBqkJOH/iWdsNLt2MXpTog5z6+KiAgycZ0h
         47GmPC+rrNoAjr8mgYKPeVAm/HFFPiHHfzmX/rrBpro4RlBnA6b2kjkbp+S2NhRAHuXr
         ExXZt69jGJeK7Z8f4Ew4BBp8fxg3YipIDzGD3KQI3hsZe63HGjhuFnQdPMHe6dDTDAKK
         /uJg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=CWgIGAevu31tNFu5Hh05DA/g6G2VjsoyMMMk2e2bUDQ=;
        b=OHLw4OZTC8GYuFN/BcC/sLjQ2BvkxxPsocg5lrz4d1/BNl17gGK+uW45nIm3wEokcD
         XO8NYjq2YmeTBvMAuo6zjjm617ps/OF1KhXO2ME1FAN53bX23uE5NYJW7XZVpZLoJWvk
         ImAWlV3IckQyXu6xNQpy7u98hQSvDWJorRSDawcZGbuL0oMTk0wZstjWfetyIi6NU7ZG
         tNsd9QNrWbbeq6PNhL4Z17MuU30hUfztFXenk+9FMtUSdgk6QjXn9noysS3ta2p6OXYE
         zsvnXNtSYLzdjl1Twx1zJWD0wvmDDQ5v+CWVZfRC1QLpN79lnEVpIdfi3+itMbluzXBO
         J52w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="e4/TF/om";
       arc=pass (i=1);
       spf=pass (google.com: domain of xinliang.li@outlook.com designates 40.92.41.35 as permitted sender) smtp.mailfrom=xinliang.li@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CWgIGAevu31tNFu5Hh05DA/g6G2VjsoyMMMk2e2bUDQ=;
        b=bLUu47OSg/4CrxBdhlstZe8MTC+e6s7pCBEoLIMIdU6WlcYDawH5EHwwiYPasyQz2a
         MBRij7LtpWwXk28RLcttzi6SH1U3gQpBqnf1EUum46xG40SfN3NSMQ4VIMnxEfTctYvL
         pIRqnoX5a0WRzjOY4fGhRR1I1GxkzqShyHknzREwpgb4vgnKgjZfhgDs3kTHFPDi66jL
         0jSTiKu09LRqe468DFU+kTBFM0RzB9cz9PCp+704+Cq5RZXCH83iwnSlJNNXJAuA/vPi
         KvapM0lfVBoz3QW9hKT2Peq+tiZc5kybgcfg0HHVd64Upmp0osm8gdvlqMVXqVxEt7mY
         xg1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CWgIGAevu31tNFu5Hh05DA/g6G2VjsoyMMMk2e2bUDQ=;
        b=sReir3o3IwCkrBhUpXSeG/Ew//kS0KgJ9deAOseMnI7R7gqnQUO7B/i4b1H77W0TC+
         ttnnbMUkGjuJHJlVh4eK1NyypMkO9JG901j9rOglYzQr+yW4dAnY0gCvSeUeYImukGKu
         G9GVQ+trkwV0BJhXTUy50tc6jOSormsHAsQT0GoYR/42gXsTlgQuQA15BZAKeJ0Gb0++
         rNrGEzsTB0E9leu8F7SFJAxRwv3dUPZkeZeRj/2FOzGGJetb8K2F2HfFs0/+hdKU+9w3
         po8dGoZkik11f+w7nC68YdF7/+SsvmfqpRU+Wkcnd0sCdszkwounJt+kCNiQlSxOYg/M
         upEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SqitNxveAADVOpf84DwHiD8vOqHZ6yl08hiO/MYQ/BGoAzfZK
	QmUbCc/HqMoeO7xZQTxepFo=
X-Google-Smtp-Source: ABdhPJwGLDaRiRwS5PEpniXuJlA3SG4j24gpbEtSiP6CkXXO3Q2ZCVJuaZqZA0hBwlWHrseTnPMowA==
X-Received: by 2002:a2e:97d6:: with SMTP id m22mr1539243ljj.15.1625271606268;
        Fri, 02 Jul 2021 17:20:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:a04:: with SMTP id k4ls2134786ljq.8.gmail; Fri, 02
 Jul 2021 17:20:05 -0700 (PDT)
X-Received: by 2002:a2e:b702:: with SMTP id j2mr1564764ljo.365.1625271605404;
        Fri, 02 Jul 2021 17:20:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625271605; cv=pass;
        d=google.com; s=arc-20160816;
        b=KTdRsWaqqvi6VTosN/hhWkPmiowsLvAlBZssJQG6TbRV6lz0OnwmtmnWIlQ/4JfyUV
         0W4lA6FiURzk8lnTQQPDLmp3UUX6eoLKnnGtMQp4t50DNOH8bqGGhJVjU6FyxBrwfO6T
         +337dvXAunlS/YTKG9zKm1A1UNuLaztJ6pZ0B314itAs3ukx6HF1mjOU5tp5OpELsfrO
         DrUsnvURRylFSEUVeckZgG1xAn492kentN5AI5TdjhEvvs1HOpGLgef35k95devMawPk
         S8lkkH503MzZcaWH92t8Ih/MKhFQBzANjaJsltatDemPwbyi6rcytIEGyNe0AP1UOSM3
         rffA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=JUV4M1/9dKPJ1lRgeyy3M8johgsbd87xO5O12oiH6ZQ=;
        b=rCMj4S/Emc3SQ02f8tXa4DhgRrXGvRBTLcve5EgQyxaCuaHYhgr7dbwrRL+xHIC9Gv
         99v9NSUGoQmD/BZv6jf+Pvtux3t1xTKitCVQM95IASnPlC8HUX2NIAQUrkX64b7Mm8w+
         3u7kn5ZrCQ1bhkjD+HLQtZTkpf2pa98pj3ADj9nzhMT6VkyQTC01by2VZu98KeGy5WkG
         BDw6XsGAscJr37hf+YClcEoro8P76i3Iu/7tcgJOJOe1xKU/t6+CkrNsyjJdDpatgKRB
         LQpI9weBvXS5tfWd0HW1TgMv9B7X/rETbUVT1KQs+nOnzI8cHVV4BZbP6lMTIorZpE9Y
         xfhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="e4/TF/om";
       arc=pass (i=1);
       spf=pass (google.com: domain of xinliang.li@outlook.com designates 40.92.41.35 as permitted sender) smtp.mailfrom=xinliang.li@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10olkn2035.outbound.protection.outlook.com. [40.92.41.35])
        by gmr-mx.google.com with ESMTPS id 14si69365lfm.5.2021.07.02.17.20.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Jul 2021 17:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of xinliang.li@outlook.com designates 40.92.41.35 as permitted sender) client-ip=40.92.41.35;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bjqz/8WVvSylCQRdCyzqMNWjo+zVGb4vbY5kz9LtDoWbgyl+dINXsHct3pxsEdp6RPb1TZZtghVfNqMhwqbz6W6SrEKnRaa6MKmOXj0IWJJDDRbkY37OSQyS4g3m2ThSQ6sr8B09kC2zvn+5FNObGuNce2NIJ31W+6dE5C/jmVAK6Aegzi10pQMnHU5Ee7DmYTBhf+4WOkyVHtsrLBFrMYV8gPMs12yNjhFNm2DC6a/SohnyK8L6BRva3gZ55rO456HUd7OpRLSEp+vV1IcJk41e+xNXzcJKaguP/2bniw1yXLI2Vj6fFBwo8EftbmSZlXbEXabOavSz6q+Y9SMkWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JUV4M1/9dKPJ1lRgeyy3M8johgsbd87xO5O12oiH6ZQ=;
 b=mIsaAnOwCifoRQx76e/2/a89r9eKNXbdkOaWSc5WtxEwTq6+/yTIiw7Zic1pvUcjXkGY59bPlZbA4kda4G0O5XanKqgeg5Z2CFNPgxPG7Dzwf9ujebc7YO4AI3IzSP54fC4gzEDEIR9nx2Nh5gQvj2Io5GNpv5G1FIrhgGVUomrwIk5wRax2vLgpU50SXsRoBeoBV9ZFrp5g7C5qmQjduboMzVRVS2Hcgb3npbQgKiGJrQjjWS47QRNlGu4ila82KE2bdvwWKJZibaSfWgBwWQSDS+CXzEqCK7gZs/VwX042YpxSHbDsNP+y/Eee2JES85L2OBGiSbUQn0n2/SrUUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW2NAM10FT004.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e87::50) by
 MW2NAM10HT111.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e87::323)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Sat, 3 Jul
 2021 00:20:02 +0000
Received: from SJ0PR06MB6958.namprd06.prod.outlook.com
 (2a01:111:e400:7e87::4b) by MW2NAM10FT004.mail.protection.outlook.com
 (2a01:111:e400:7e87::428) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Sat, 3 Jul 2021 00:20:02 +0000
Received: from SJ0PR06MB6958.namprd06.prod.outlook.com
 ([fe80::1412:9f48:2f5f:bb4]) by SJ0PR06MB6958.namprd06.prod.outlook.com
 ([fe80::1412:9f48:2f5f:bb4%5]) with mapi id 15.20.4287.023; Sat, 3 Jul 2021
 00:20:02 +0000
From: David Li <xinliang.li@outlook.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
CC: Kees Cook <keescook@chromium.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, Bill Wendling <morbo@google.com>, Bill
 Wendling <wcw@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song
	<maskray@google.com>, Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto
	<jarmo.tiitto@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark
 Rutland <mark.rutland@arm.com>, Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, Peter Oberparleiter
	<oberpar@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen
	<samitolvanen@google.com>, Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
Thread-Topic: [GIT PULL] Clang feature updates for v5.14-rc1
Thread-Index: AQHXb6CnUa4dBunZ2kq2JtACGSTGwg==
Date: Sat, 3 Jul 2021 00:20:02 +0000
Message-ID: <2E27EA45-9FBB-4630-A824-0CF0245D3B90@outlook.com>
References: <202106281231.E99B92BB13@keescook>
 <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook>
 <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
In-Reply-To: <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F71CE794B8AE1FB1CDEE80834B94422247726AD352C39CF8616F81A426512B4F;UpperCasedChecksum:BC9B535943981403C7C64411A133598FCF768B5C3B8226F5A84A288D58CDF0DE;SizeAsReceived:7727;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [fyX9euSZ5oYmIK9iA3yjjE6mk/Us7K1i]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 87dcce5d-be63-4128-6cbe-08d93db84d0e
x-ms-traffictypediagnostic: MW2NAM10HT111:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yoc+xFjyWRKHlDSAnazF7EHZczJ6SC+H70XMHXv9DrtHltaZ7k+fz58dNR2tYn199X2hYmvH46u/8IALI5zXZbZEpYmktQkmZoJzwi26AUTUDNxnMWk6DG6ibPTCwZqHDT4EigU4WsE1xyYO45Yle5PAIFz+V8z5qB3QenrjgeKyI/88sxDHMCmwBPWA4mxqdj/3ZFdj5hxh9HI83rKyMFQJbHn5F5uChDHHLucpMqjFL5+w6AK3MyvUN8lLcLR6I+/QGFLM9j6GEWTuMghyJnN92kyWSwRbtQ/MHHFohvaFLzitdSbPHgPiTvrEaLj986zTqvxkSFzyjwXIlDzhscCXbgsw/9rl4+30nxxAHF95BnO2fpyu2a54iSXB+/f4YflUrarD38G5eV9TMB8rSAGY/HAt3MKZctgSPrwcw4c/DHOTdT887vbwq/AY0bEb
x-ms-exchange-antispam-messagedata: Lv/Dz5W6GXQPVa8NpEVif6Dng2eyLp0LVvQpoO3mnI1q9VZVqLgbdMrkDWlCQa2gLV9t6OJxD3aGXalC3tXIlyLQRXXzFGUgRdDuk9O1jg16tYWPWTtSlhGFgPDessHkPz1uLS2Hs74s++7o9IpHew==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A76F38B6AC550A4587AC15905877A96C@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT004.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 87dcce5d-be63-4128-6cbe-08d93db84d0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2021 00:20:02.4459
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM10HT111
X-Original-Sender: xinliang.li@outlook.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@outlook.com header.s=selector1 header.b="e4/TF/om";       arc=pass
 (i=1);       spf=pass (google.com: domain of xinliang.li@outlook.com
 designates 40.92.41.35 as permitted sender) smtp.mailfrom=xinliang.li@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
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

(Sorry for the second post as the first one got bounced)

> On Jun 29, 2021, at 2:03 PM, Linus Torvalds <torvalds@linux-foundation.or=
g> wrote:
>=20
> On Tue, Jun 29, 2021 at 1:44 PM Kees Cook <keescook@chromium.org> wrote:
>>>=20
>>> And it causes the kernel to be bigger and run slower.
>>=20
>> Right -- that's expected. It's not designed to be the final kernel
>> someone uses. :)
>=20
> Well, from what I've seen, you actually want to run real loads in
> production environments for PGO to actually be anything but a bogus
> "performance benchmarks only" kind of thing.

For application PGO build, the training data is usually from real workloads=
 via log replay (by the load generator). The load generator can be configur=
ed to mimic different production environments, but the most common config i=
s to simulate the peak loads with long tail latencies.

For kernel PGO build, the training data include real world applications tha=
t spends lots of cycles in kernel. The input loads are the same as the  app=
lication  PGO build.

>=20
> Of course, "performance benchmarks only" is very traditional, and
> we've seen that used over and over in the past in this industry. That
> doesn't make it _right_, though.
>=20

Synthetic benchmarks are rarely used in kernel running in server environmen=
t. As far as I know, Google=E2=80=99s production kernel has been optimized =
with PGO for > 10 years. It was using GCC and later switched to Clang.

> And if you actually want to have it usable in production environments,
> you really should strive to run code as closely as possible to a
> production kernel too.

True.

>=20
> You'd want to run something that you can sample over time, and in
> production, not something that you have to build a special kernels for
> that then gets used for a benchmark run, but can't be kept in
> production because it performs so much worse.

t is true that instrumentation based PGO requires curation of the training =
profile data (e.g, collecting/refreshing live data and adjust load generato=
r), it is also  true for the sampling based method.   This is because we us=
ually do not care about the average behavior of a program,  but the critica=
l paths running under large stress.

>=20
> Real proper profiles will tell you what *really* matters - and if you
> don't have enough samples to give you good information, then that
> particular code clearly is not important enough to waste PGO on.

True. See above discussions.

>=20
> This is not all that dissimilar to using gprof information for
> traditional - manual - optimizations.
>=20
> Sure, instrumented gprof output is better than nothing, but it is
> *hugely* worse than actual proper sampled profiles that actually show
> what matters for performance (as opposed to what runs a lot - the two
> are not necessarily all that closely correlated, with cache misses
> being a thing).

Yes, there are mechanism in instrumentation based PGO to allow collecting p=
rofiles for only code regions you care about and merge them (both online an=
d offline merging). Offline merging also support weighting.

>=20
> And I really hate how pretty much all of the PGO support seems to be
> just about this inferior method of getting the data.
>=20

We recognize the strength of both Instrumentation and Sample PGOs, that is =
why they are both widely used. The advantages of the instrumentation based =
PGO include 1) it provides more precise profile data 2) it provides more ty=
pes of profile data including CFG edge profiling and various types of value=
 profiling (indirect calls, memOPs etc). There are also more in the work su=
ch as dynamic type profiling (not relevant to C code), heap data locality r=
elated profiling etc.

The downside of it is the slowness. It has not been a major concern so not =
much effort was spent to improve it for Clang. In fact we had something in =
GCC (kind of like downsampling the counter update) before that can signific=
antly reduce the instrumentation overhead.

Regards,

David

>                Linus
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2E27EA45-9FBB-4630-A824-0CF0245D3B90%40outlook.com.
