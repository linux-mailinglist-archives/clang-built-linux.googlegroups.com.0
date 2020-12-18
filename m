Return-Path: <clang-built-linux+bncBDG6PF6SSYDRB7X56H7AKGQEBKG7RRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FB72DE0B6
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 11:05:51 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id w9sf954005wrt.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 02:05:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608285951; cv=pass;
        d=google.com; s=arc-20160816;
        b=s9HNv/qFoOAFbgZ9mJyJtTbxD+Uh1k9nEyWeWcinIiNSoe7TKlAIvbfhECl/AjW6sW
         maOpq9X/VrzIK3aLPWzVt2G4IFYkrogMrTzAaaEl4hfMQtAyEqPYfDJbwPFz6R3b0+Ef
         Q/BarVcFajHeayCxA8Mt8xrR0o+3NEZnpFvlgepeR62irjapkR+hnuAQk7JMZT/L6DI2
         JttHasR418DdKEN6+kNbQkQNRU34EqGqMHqoqdlkY7lManpTh8IDwobC92ooWO4qbaUi
         +J6/5NDD6d07GASp0l2Lwt17CBn5H2Ru5jwOQDmZ6EEcaL4FOk7aPgDNy1TffXMIx9He
         JPdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:cms-type
         :content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:to:subject:dkim-filter:sender
         :dkim-signature;
        bh=6d27gB6PEFvStwy65THQrFyHrXCHu3yzNoblGk1kVfk=;
        b=sVU2KMAGMZGGp2E/b8U0X+LDEHUzOYNKMZOOFUAzq0vFVOvfQMwQwjxNDh1W4p08ay
         S0Sh9N8O9h0Wo6ChLctz1P3P35QDPNiPLwf/tmMI/VwZIG8IUCRGYGqehK/7j7omd+DQ
         nATFnODyv+T+f/Ff0khtv10lzawA9qTxoXUDIi8jXkr7YjgOE89NsasJ1HRuDc8fd4X1
         O/QjlML+/Qx2HRgOZRslxk+M234kliRW/IfNGw52wuD0T7eNnal2qgk9AGw8PHKn7cfT
         0sb96i5uYOGxqmNsMU+byRA/TG1VNtjJVd6IA9R52jzuw+DBe2OmOdmIjsiBZ3UlJxtK
         HNCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=Af2xlqDN;
       spf=pass (google.com: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :cms-type:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6d27gB6PEFvStwy65THQrFyHrXCHu3yzNoblGk1kVfk=;
        b=RqsNKs6vUD0K8y3ndcjWPGeiQN94w5D3bmO2S9qX8ChLN6Pv8hLriFOWxq56RqHbF4
         N7+OVF/6lu4AFn1aMTtAEodOmAH8UuPNgjpPhYdgMlTtfmupiTTWPtvm/LVl+criLUOl
         9rOBXEeEnYNGXQPrqmU7wnxVV6F2j7pXxvmMGaDX4+8GGZ7qvrrjbU9kBKGGXwXA5ugM
         n07U/Ynms7DfX+1OuCaAreQ8tuNCfpYJwhlsOYiQn84OAdyi15QWgLQtN/yEn3hSs0/t
         S5fCNkWc9NEh5guZLb+NX9GjKr7tNs4XSwM2WMsEY08J5NlBAR5dv5ei3IBt29rQS3Zz
         bwrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:cms-type:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6d27gB6PEFvStwy65THQrFyHrXCHu3yzNoblGk1kVfk=;
        b=U3LhKRBjQRpX7JHFVUrtLa/IvW2Q1YcG5ImBs5q2xH6EfgdLq5oH02bh1xhF4s+S9m
         nEd951jr2SQUMioaXstj/wr2ec7/ron3N+fMGCzK6+dvBjNBTerZ1wDXzCRsoS7TlIl4
         EmxRTsnPVjvs4TibwSXwJB9wsLmXgx2kZLVRlfQ/y2NGuu6iTo0Y4RvTUOsS5z+Jb/qX
         Fde3mHapdsaF1FKGPxbMr7x5tsV1tc9hRiHgdpbl5TQpkrhVVLbLhvQq2wS4DpgNxYEx
         kDnIm7QIag4Hv+8m6E6n1F/DGccfWPZQ8MkErhcMgi/kt/0Em0JDt6s2ejKn2/anz6MQ
         E94w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XyzC8qgy6sDd9pSgnULp1JynmwD+gSA1bXYNTo44c+cSXRV01
	jzQZXwyduAzAMI31Z5jgMxc=
X-Google-Smtp-Source: ABdhPJyCzAC3SbHHwnlXkBFJGrOHX9Fj61bkMY/bKAsWy9tH4uZnzzmdsgaEsUG8EzECTClvETdg8g==
X-Received: by 2002:a1c:e902:: with SMTP id q2mr3402104wmc.143.1608285950962;
        Fri, 18 Dec 2020 02:05:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls352664wrn.2.gmail; Fri, 18 Dec
 2020 02:05:50 -0800 (PST)
X-Received: by 2002:adf:db51:: with SMTP id f17mr3514229wrj.83.1608285950122;
        Fri, 18 Dec 2020 02:05:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608285950; cv=none;
        d=google.com; s=arc-20160816;
        b=Nepc7k6+JM5fhyCIFgI1Dft6lWT3aTxtM/K2j0PNP+D/jOA+yfMTYzoLciXbWN56+U
         BSFZQdFX9Cww0uz0ly1VFOi9amCZNSRQqpn9mncf3v/d0UegZytb4a0YoV6zbWak3yHn
         LDT3bc6awZTg4YscSlKWNRgsd8saYqDfnnEofHZnsSiEOa/VOum31voQD7txTTxZlZJG
         IZ04ATJrxxP9RcOr0tW91B35zKOKJHNRPRvtcAsk/VHPklTIbCGVRAC3CDucmif3fL3D
         gZnYaJvyBn4aNUQeydN+pgoOiCBTrzRZBhrPtpZbx4luIfEzuWTtw/J+lR5Sg5taHKyV
         Gh2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:cms-type:content-language:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:cc:to
         :subject:dkim-signature:dkim-filter;
        bh=S9pk/V38+14aiE6pntomV50spJ9B875dCSkKTkEeOP4=;
        b=KiZqkUjER398oiM18B2YEzzAFkutc4ymdsG1vf98ONOJ6nsmjWTKe0lubM0/QTJ1Jr
         xLDKBI5UctEoUrxiZlPnse5nxaWec+WXIPO4SoD39/keaSbPH9rzmhGNhuX6sUREtROQ
         74jAYEFoEHu63Fo//LZGakZmCES05XF9pfxUeN1yi8ZwzZSfdtaL3CjURKHAkj+kmZZI
         hJ/Hyp0qIej6dWPEvdllj0achd/z8NEWNUyt6xxpSVlJhTJEz6RRQPhA96OOhrey9nw9
         OodDP+YibqueVcfBSs8Bmlcjq+Brjk1K/8WiHSUCqIMzv+EZGBMnUbYBSnM4KWROAKFY
         UJpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=Af2xlqDN;
       spf=pass (google.com: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com. [210.118.77.11])
        by gmr-mx.google.com with ESMTPS id x12si507173wmk.1.2020.12.18.02.05.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Dec 2020 02:05:50 -0800 (PST)
Received-SPF: pass (google.com: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) client-ip=210.118.77.11;
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20201218100528euoutp01a27d4a0af26611dcfc4af9b4c65c81e2~Rx4fbi6vt2613026130euoutp01H
	for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 10:05:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20201218100528euoutp01a27d4a0af26611dcfc4af9b4c65c81e2~Rx4fbi6vt2613026130euoutp01H
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20201218100523eucas1p2a1005fc0e7eb87baaf906068f971e1bb~Rx4akRf0O3270732707eucas1p2a;
	Fri, 18 Dec 2020 10:05:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id 54.96.45488.2EE7CDF5; Fri, 18
	Dec 2020 10:05:22 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20201218100522eucas1p1e27bcf5daf8c771afb098cb9583826bf~Rx4aJdk7b1143611436eucas1p1b;
	Fri, 18 Dec 2020 10:05:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20201218100522eusmtrp29c131ba75e4d068edee7b1f9d2180f3d~Rx4aIuhDa2025320253eusmtrp2K;
	Fri, 18 Dec 2020 10:05:22 +0000 (GMT)
X-AuditID: cbfec7f5-c5fff7000000b1b0-94-5fdc7ee24e5b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id E7.7E.16282.2EE7CDF5; Fri, 18
	Dec 2020 10:05:22 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20201218100521eusmtip1848e0a2add27f5dab494f89c90820836~Rx4ZgAbaU2048120481eusmtip1O;
	Fri, 18 Dec 2020 10:05:21 +0000 (GMT)
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Kees Cook
	<keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
	linux-hardening@vger.kernel.org, Linus Torvalds
	<torvalds@linux-foundation.org>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Linux Kernel Mailing
	List <linux-kernel@vger.kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <9f959875-1a30-b1a1-b626-3805e24a6df3@samsung.com>
Date: Fri, 18 Dec 2020 11:05:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0)
	Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djP87qP6u7EG+x4aWnx4M1sNosz3bkW
	89b/ZLT4s2sHk8XlXXPYLB4+uMFq8eFticWHCf+ZLN6dBoo/6nvL7sDlMbvhIovHzll32T0W
	bCr12DPxJJvHplWdbB4nZvxm8fi8SS6APYrLJiU1J7MstUjfLoEr4+DufsaC6+oVV56vZmxg
	PKLYxcjJISFgIjGvfzpLFyMXh5DACkaJ6183MYIkhAS+MErc75aBSHxmlJh8bCozTMeaj5uZ
	IBLLGSWa/jaxQjgfGSWW7FnHClIlLOApcerzSnYQW0RAS+LO0g6wImaBVcwSr0/uAUuwCRhK
	dL3tYgOxeQXsJJYtmQlmswioSizY+wdskKhAksT6rh9QNYISJ2c+YQGxOQUCJa6vfAUWZxaQ
	l9j+dg4zhC0ucevJfLDzJAT+c0gs/vSFHeJuF4k1rdOhfhCWeHV8C1RcRuL/TpiGZkaJh+fW
	skM4PYwSl5tmMEJUWUvcOfcLaB0H0ApNifW79CHCjhJLd85kAglLCPBJ3HgrCHEEn8SkbSC7
	QMK8Eh1tQhDVahKzjq+DW3vwwiXmCYxKs5C8NgvJO7OQvDMLYe8CRpZVjOKppcW56anFxnmp
	5XrFibnFpXnpesn5uZsYgSnr9L/jX3cwrnj1Ue8QIxMH4yFGCQ5mJRHe0Ae344V4UxIrq1KL
	8uOLSnNSiw8xSnOwKInz7tq6Jl5IID2xJDU7NbUgtQgmy8TBKdXAZNUyT2bDZu7LPWtdvz9Z
	M+eJd9m/gIUbLxbesn8yeaL8sw3b5hhb3Y67OHviqw8mKwOeVP/hWp1ap6WrfdnoqaBHfIZo
	d3mH0byDJ1azKf+/Y3r5xQOdz9usbGaLb/qp7nl63Zf7URcn7bz2J3FHz85HjbfaaorFJiVN
	1LvetiS852BxSF2am6Pb1HN37KtMbL8851u2eueeP8f7JornV6aU3tta+XdiebOlVONuqYgL
	p6z/b065cPzl0Yt1kav079oe9Tf+5W20JK9B0fz2gk+2Cz6p9y/g1GnlNHboO/mw2y3s9y/+
	V0d+MVxlYGgOrmi7tvaFZkSeQ8l/kQmxwQfjTx99NNWeocNvFtuZ10ZKLMUZiYZazEXFiQB7
	zAYByAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOIsWRmVeSWpSXmKPExsVy+t/xu7qP6u7EG2w+K2nx4M1sNosz3bkW
	89b/ZLT4s2sHk8XlXXPYLB4+uMFq8eFticWHCf+ZLN6dBoo/6nvL7sDlMbvhIovHzll32T0W
	bCr12DPxJJvHplWdbB4nZvxm8fi8SS6APUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q
	2DzWyshUSd/OJiU1J7MstUjfLkEv4+DufsaC6+oVV56vZmxgPKLYxcjJISFgIrHm42amLkYu
	DiGBpYwS//4dYYRIyEicnNbACmELS/y51sUGUfSeUaLz6gEWkISwgKfEqc8r2UFsEQEtiTtL
	O1hBipgF1jBLrLpznxGio4tJ4svvK2AdbAKGEl1vQUZxcvAK2EksWzITzGYRUJVYsPcPUDcH
	h6hAksTZ04IQJYISJ2c+AWvlFAiUuL7yFVg5s4CZxLzND5khbHmJ7W/nQNniEreezGeawCg0
	C0n7LCQts5C0zELSsoCRZRWjSGppcW56brGRXnFibnFpXrpecn7uJkZgjG479nPLDsaVrz7q
	HWJk4mA8xCjBwawkwhv64Ha8EG9KYmVValF+fFFpTmrxIUZToHcmMkuJJucDk0ReSbyhmYGp
	oYmZpYGppZmxkjivyZE18UIC6YklqdmpqQWpRTB9TBycUg1M7CcPrWUReaDr+fqRy335gCuM
	NzbHicecV9ivrjJ/pvYbj1spHkul7xX7/Vr0bXfCapvnUav3rXp0Ourg/+27tP+IGXq7cHmc
	5guwvnTLVzc/O+MGn5Hoc4Fqp4NKxUWJc3dNK7vy5f+U1490iw/ffPSy5HaVzHLmF/+NN3xa
	vLBkxqe8hft+BrNYCv+vPJNg5x7AmJcX0LKv6OTeHdfP+S0Uy95s7ZOYMLHlLfsEiV13yvps
	H/fNYBOWNS/IfvFb9bCX5gTVXrmZL7cw+mR8cj7XnHPP7/mTsAafx7OPWNQyXtaze/Tmq5hD
	n2L6SaH8Y9/E6j7sDNJs/pD2gesKA/OLK6Uv5njrXtHeJ2hcrcRSnJFoqMVcVJwIAG/xEzla
	AwAA
X-CMS-MailID: 20201218100522eucas1p1e27bcf5daf8c771afb098cb9583826bf
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
X-RootMTR: 20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a
References: <CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
	<20201203125700.161354-1-masahiroy@kernel.org>
	<b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
	<CAK7LNART2qQBY7Vc8rhMiXS_Fwty7qpWjwwfPrUegTb-gjy6sA@mail.gmail.com>
X-Original-Sender: m.szyprowski@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=Af2xlqDN;       spf=pass
 (google.com: domain of m.szyprowski@samsung.com designates 210.118.77.11 as
 permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=samsung.com
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

On 18.12.2020 10:43, Masahiro Yamada wrote:
> On Fri, Dec 18, 2020 at 4:58 PM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
>> On 03.12.2020 13:57, Masahiro Yamada wrote:
>>> Linus pointed out a third of the time in the Kconfig parse stage comes
>>> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
>>> and directly testing plugin-version.h for existence cuts down the
>>> overhead a lot. [2]
>>>
>>> This commit takes one step further to kill the build test entirely.
>>>
>>> The small piece of code was probably intended to test the C++ designate=
d
>>> initializer, which was not supported until C++20.
>>>
>>> In fact, with -pedantic option given, both GCC and Clang emit a warning=
.
>>>
>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' | g=
++ -x c++ -pedantic - -fsyntax-only
>>> <stdin>:1:43: warning: C++ designated initializers only available with =
'-std=3Dc++2a' or '-std=3Dgnu++2a' [-Wpedantic]
>>> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' | c=
lang++ -x c++ -pedantic - -fsyntax-only
>>> <stdin>:1:43: warning: designated initializers are a C++20 extension [-=
Wc++20-designator]
>>> class test { public: int test; } test =3D { .test =3D 1 };
>>>                                             ^
>>> 1 warning generated.
>>>
>>> Otherwise, modern C++ compilers should be able to build the code, and
>>> hopefully skipping this test should not make any practical problem.
>>>
>>> Checking the existence of plugin-version.h is still needed to ensure
>>> the plugin-dev package is installed. The test code is now small enough
>>> to be embedded in scripts/gcc-plugins/Kconfig.
>>>
>>> [1] https://protect2.fireeye.com/v1/url?k=3D03db90e1-5c40a828-03da1bae-=
0cc47a336fae-4cc36f5830aeb78d&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918bde=
3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwjU4DCuwQ4pXshRbwDCUQB=
31ScaeuDo1tjoZ0_PjhLHzQ%40mail.gmail.com%2F
>>> [2] https://protect2.fireeye.com/v1/url?k=3D965b670a-c9c05fc3-965aec45-=
0cc47a336fae-e34339513ff747c0&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918bde=
3&u=3Dhttps%3A%2F%2Flore.kernel.org%2Flkml%2FCAHk-%3DwhK0aQxs6Q5ijJmYF1n2ch=
8cVFSUzU5yUM_HOjig%3D%2Bvnw%40mail.gmail.com%2F
>>>
>>> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>> This patch landed in linux next-20201217 as commit 1e860048c53e
>> ("gcc-plugins: simplify GCC plugin-dev capability test").
>>
>> It causes a build break with my tests setup, but I'm not sure weather it
>> is really an issue of this commit or a toolchain I use. However I've
>> checked various versions of the gcc cross-compilers released by Linaro
>> at https://protect2.fireeye.com/v1/url?k=3D053727b6-5aac1f7f-0536acf9-0c=
c47a336fae-5bd799e7ce6b1b9b&q=3D1&e=3Ddfdc1cf9-82d6-4ca5-b35d-1782e918bde3&=
u=3Dhttps%3A%2F%2Freleases.linaro.org%2Fcomponents%2Ftoolchain%2Fbinaries%2=
F and all
>> fails with the same error:
>>
>> $ make ARCH=3Darm
>> CROSS_COMPILE=3D../../cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bi=
n/arm-none-eabi-
>> zImage
>>     HOSTCXX scripts/gcc-plugins/arm_ssp_per_task_plugin.so
>> In file included from
>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/.=
./lib/gcc/arm-none-eabi/10.2.1/plugin/include/gcc-plugin.h:28:0,
>>                    from scripts/gcc-plugins/gcc-common.h:7,
>>                    from scripts/gcc-plugins/arm_ssp_per_task_plugin.c:3:
>> /home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/.=
./lib/gcc/arm-none-eabi/10.2.1/plugin/include/system.h:687:10:
>> fatal error: gmp.h: No such file or directory
>>    #include <gmp.h>
>>             ^~~~~~~
>> compilation terminated.
>> scripts/gcc-plugins/Makefile:47: recipe for target
>> 'scripts/gcc-plugins/arm_ssp_per_task_plugin.so' failed
>> make[2]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error 1
>> scripts/Makefile.build:496: recipe for target 'scripts/gcc-plugins' fail=
ed
>> make[1]: *** [scripts/gcc-plugins] Error 2
>> Makefile:1190: recipe for target 'scripts' failed
>> make: *** [scripts] Error 2
>>
>> Compilation works if I use the cross-gcc provided by
>> gcc-7-arm-linux-gnueabi/gcc-arm-linux-gnueabi Ubuntu packages, which is:
>>
>> $ arm-linux-gnueabi-gcc --version
>> arm-linux-gnueabi-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0
>>
>
> I can compile gcc-plugins with Linaro toolchians.
>
> The version of mine is this:
>
> masahiro@oscar:~/ref/linux-next$
> ~/tools/arm-linaro-7.5/bin/arm-linux-gnueabihf-gcc --version
> arm-linux-gnueabihf-gcc (Linaro GCC 7.5-2019.12) 7.5.0
> Copyright (C) 2017 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There is N=
O
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOS=
E.
>
>
>
>
> Maybe, it depends on the host environment?
>
>
> Please try this:
>
> $ sudo apt install libgmp-dev

Indeed, it was missing on my setup. Sorry for the noise.

Best regards

--=20
Marek Szyprowski, PhD
Samsung R&D Institute Poland

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/9f959875-1a30-b1a1-b626-3805e24a6df3%40samsung.com.
