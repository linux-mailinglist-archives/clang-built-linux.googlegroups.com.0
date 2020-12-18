Return-Path: <clang-built-linux+bncBDG6PF6SSYDRBHOC6H7AKGQEETEXIDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC512DDF4B
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 08:58:21 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id r8sf784908wro.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 23:58:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608278301; cv=pass;
        d=google.com; s=arc-20160816;
        b=N1hJmf/DyZKs02r8peF1UsXecAJM3WxVvcvagYn3TsYdJhc8mIQHht4QFVmrkcHXSL
         oQAfDQ4v1XPrrAfOEN9UPHZbDYTSZQT4enPM6oFtreaNh1Jspkr6aKVCpz6zhvF+f9rd
         Og+OxyT6uOB6Dou3R2ix6Fpyw6J6XM7pBGcqTj4UrZGsBG3mpikHcuTqSUbyAyRxWA6B
         4vxDL2IPARBkRlaYmI3SDHTH7IcLAUaF9+IuHS4frzsaPOkG1JkPxVmzLv6l1C3H9fB6
         R8YtKbOnn2qbMKEh6V/y5SF+0JsejU1/neHWXSEsVOjKeUQcVl+tuURc5g4FC2jG9SFh
         RYJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:cms-type
         :content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:to:subject:dkim-filter:sender
         :dkim-signature;
        bh=+KgNLfa/34IQPd26jxoS6PDtpz0OL6S5BNtAEUxJx+A=;
        b=yw/RHga74q7mZZgZM1dtqZ+mUhJE3ewbECZRGQfRsVwjk7LsZMaE1vFGIAMQVmZ5vE
         6RBVNDVvQ3fy91+tqwXpyLrNRL5IhisQPijyDumZneG6ZUaknaIV57qYl6zy1K2dplCp
         HTnr9jIYTTvOMAV25u1csQOF8QiWonwhcwta+qm7D5aCWDkfYdgIfNZB6M8JjdFzA9pC
         KD4WUzwZlHmIveaBaJSyVNNt/e7CdqADhliVkDSSEIknBbBfzr1PTCPcTxlF4zopxJx0
         /c2ljM1QZGR21emiMKFRQNrYm9EcSiePNrqETIUqerNVHjMqKF6bZjdyj3+z5LPoQVDu
         e32g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=u6iDmFyc;
       spf=pass (google.com: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :cms-type:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+KgNLfa/34IQPd26jxoS6PDtpz0OL6S5BNtAEUxJx+A=;
        b=C7WrGHRtRzOI6UoKhnnOV2H05giUUzhpFK/aaOOUrkq3/Azgby5b0VtnzDp4E01pYu
         FBClZCGe7RMseaeMeKN/Jrq3Q8OJCXUykCz+6IuvtX9+YSmt4+nMSuH25pEJkrhUrHHM
         ZG7pXykT4NgqvvLouIqltV4s/tEJNRDhcHcGE6i87YqgwVrt74AuFX0G+Y97cgC26Oli
         Pn76yq7uPgt5MFJyoJR0aDkYe1aO7kMcGdUaCIXFdsM2gtRTJm5ofOfYaNXBB+r+r0+K
         hnvhZeEB9B89wBjXMebE8esTHd8XEy7pjEBuz+gqZQ5nz4Fdqy5S8v+Bibt0SbcJzqj/
         7oiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:cms-type:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+KgNLfa/34IQPd26jxoS6PDtpz0OL6S5BNtAEUxJx+A=;
        b=PGe4v75jEc7w5upT37MKgNu3gSrmPXgD+3BFzH4sQZRquEIYY5JFd1DHSPCrNWRSMe
         uiEic23Vblxmh+9zxMNTvVoCF+rkrPgd1Nkz9QSPhPIMuFOpsjrM4CMrJnzZPRPzTvxZ
         /X6HPaeWFt777ewcBck7h06eQ6EP+sZJgTSQRpkXA/0fo5dkgiyAjekCSgSkQgoCYceP
         Kz83WO2B7UOn0631TnVO1/Gh1pmjIgmMQngVQTQo1HN7ptzg8T1x+CpqYOPYkKMoehhe
         MLYJGURQffpGVsOpeJTzy+fbdtf9g7FBKdwMNEWRRztGdlLr7jgGIz7gteKvlro3JygQ
         LYog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IxKD83WeBhcOoB0gGRy4zf1h58DZuJoudleLT2JlfGwFjTbMV
	dSL5KosTQeIAYiM+1EwF7WY=
X-Google-Smtp-Source: ABdhPJzY6j8wmTHV6KZ+PijBoBy20Kaola63gmf9LRURxGZLU/Zh6zOmB4eN4tbP52U5Mcw+xMcwMg==
X-Received: by 2002:a5d:5917:: with SMTP id v23mr173812wrd.308.1608278301211;
        Thu, 17 Dec 2020 23:58:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls3176003wrn.2.gmail; Thu, 17 Dec
 2020 23:58:20 -0800 (PST)
X-Received: by 2002:a5d:604a:: with SMTP id j10mr2933721wrt.290.1608278300441;
        Thu, 17 Dec 2020 23:58:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608278300; cv=none;
        d=google.com; s=arc-20160816;
        b=ByDMCDcOyZ94gxXNEnQWCKqbI8Vgn8tFiGFYKghuCjWObQkP4kJKaRUZAXWWPwp7J6
         JM+M1nfwc+C1OQWVrm7eOwPJygfh1BU4UDvxJeOX/4p13PxoqXi53kDZZzAz2lHG6CG9
         yIm7gBzxBTnAR0EnazedPFYP4obqd1Pxo9G3J8NHHvcFImUVmkLoKsm4BNOJZpooGpQf
         cj8A3EIQqn14Hg1gF/0czXMPZ6Svmamd2DFlJRQ2XB4ocDyxUq1Gt6ed73WLKXY+OG5C
         jc338AgA1ppHnPKuv8hXIvugL8CLQ903BgOV/i6pyM5Pu0n3p/P2uSCJyJHuDnfZsiX3
         nExw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:cms-type:content-language:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:cc:to
         :subject:dkim-signature:dkim-filter;
        bh=WVgo2j4yEAz/CQJbmxUOMmEfrN6rEAfENZPr5nFB8f8=;
        b=BR3lqnR04oF1DzDWMXhTIcgW2TkUtg1jrbX7sAl8SvcX3jnmGa+kP83eOJbDG476MH
         Jl2nwY5k0wXhVRmVeUpN+IYgxwBvKA1IpVOS5zcHQfDcdADTGJdj58SPkpnhk+QtqbDG
         gjBNOMjNDPR6oHmTqip3ituCrT90knCypvBcWRnUwOvEpalfjQ0oypUwHjJF2fBDDmXw
         9vBHCkBzUpMhTWM3vMTy7DhjSaJ6XXWOPTozyrdSuqRPpm8Z9ngDMI5kjw4PZR494ij2
         94FIvZKbT3B3rcel8MYe/RZb676I4cTHWYNnd0V9nMQl8ICBOtmnBFCsCUEphdBwq1kI
         mEwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=u6iDmFyc;
       spf=pass (google.com: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com. [210.118.77.11])
        by gmr-mx.google.com with ESMTPS id y1si380505wrl.4.2020.12.17.23.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Dec 2020 23:58:20 -0800 (PST)
Received-SPF: pass (google.com: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) client-ip=210.118.77.11;
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20201218075759euoutp01a66e9e83901e556608a6ec41c46a6bd8~RwJLrqxTI2191121911euoutp01q
	for <clang-built-linux@googlegroups.com>; Fri, 18 Dec 2020 07:57:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20201218075759euoutp01a66e9e83901e556608a6ec41c46a6bd8~RwJLrqxTI2191121911euoutp01q
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20201218075759eucas1p13b53bd2334e1df2d8764b58f721fbc02~RwJLlJyBe0410204102eucas1p1J;
	Fri, 18 Dec 2020 07:57:59 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id 5A.C3.44805.6016CDF5; Fri, 18
	Dec 2020 07:57:58 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a~RwJK3PiXF0420804208eucas1p16;
	Fri, 18 Dec 2020 07:57:58 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20201218075758eusmtrp23d5093d1b90924d296e171355affbd34~RwJK2kyj71476614766eusmtrp29;
	Fri, 18 Dec 2020 07:57:58 +0000 (GMT)
X-AuditID: cbfec7f4-b37ff7000000af05-d5-5fdc6106d1e4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id C4.3C.21957.6016CDF5; Fri, 18
	Dec 2020 07:57:58 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20201218075757eusmtip1489b8cf5f0d2309e97745745cc18b3a3~RwJKQg_d81315313153eusmtip1X;
	Fri, 18 Dec 2020 07:57:57 +0000 (GMT)
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
	Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
	linux-hardening@vger.kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <b9b17126-9af5-2f73-526e-91bb9fd27f71@samsung.com>
Date: Fri, 18 Dec 2020 08:57:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0)
	Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201203125700.161354-1-masahiroy@kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djP87rsiXfiDbrkLR68mc1mcaY712Le
	+p+MFn927WCyuLxrDpvFwwc3WC0+vC2x+DDhP5PFu9NA8Ud9b9kduDxmN1xk8dg56y67x4JN
	pR57Jp5k89i0qpPN48SM3ywenzfJBbBHcdmkpOZklqUW6dslcGWc3XmZuaBNtuLg5TamBsYT
	El2MnBwSAiYSd67vYe1i5OIQEljBKHH16E12COcLo8Se5bsYIZzPjBKNq56yw7Q8uzsTqmo5
	o8TsHVtZQRJCAh8ZJR7eiQGxhQU8JU59XglWJCKwiVFi9dOVLCAOs8AlRolHq54wg1SxCRhK
	dL3tYuti5ODgFbCT2NmtBRJmEVCVeDVtAthQUYEkifVdP9hAbF4BQYmTM5+wgNicAtYSi6+9
	AxvDLCAv0bx1NpQtLnHryXwmkF0SAv85JGas72KGONtF4vPU11AvCEu8Or4FypaR+L8TpqEZ
	6INza9khnB5GictNMxghqqwl7pz7BXYps4CmxPpd+hBhR4mlO2cygYQlBPgkbrwVhDiCT2LS
	tunMEGFeiY42IYhqNYlZx9fBrT144RLzBEalWUhem4XknVlI3pmFsHcBI8sqRvHU0uLc9NRi
	o7zUcr3ixNzi0rx0veT83E2MwIR1+t/xLzsYl7/6qHeIkYmD8RCjBAezkghv6IPb8UK8KYmV
	ValF+fFFpTmpxYcYpTlYlMR5k7asiRcSSE8sSc1OTS1ILYLJMnFwSjUwMfluPLFNnnlznfM2
	g68//LxtTebZZvUUNy04GZzx5lGxRMTVJXJneIPlXtRrMiyrnHbyCXeMlOmF6Wujzuze67Jz
	V9uVI9GKPM6JCy7K+L/k0ZRdzTGtkFfSVylIYG+577mPX6M039yUuvFhw8HMcta9Osbm5leP
	C/7ind7PMT3u81f+tQERovfeVGibtTmpCP9//89AOJl50grDWG+Hacoz1X80TTg5tynCJlLC
	8LVwbXKlu8OrRf5b9K/P2sz59/B3bYbvK/oCdwf8YXbcHVn34VJm2hf1I+47XNYbFoZPO5X4
	7tqKZm3T7KXBehUaLoIb9vKbXMq4oHlfrMPVIuHs6v0BS0VF1TiX/69SYinOSDTUYi4qTgQA
	HqRQSMcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsVy+t/xu7psiXfiDe594rZ48GY2m8WZ7lyL
	eet/Mlr82bWDyeLyrjlsFg8f3GC1+PC2xOLDhP9MFu9OA8Uf9b1ld+DymN1wkcVj56y77B4L
	NpV67Jl4ks1j06pONo8TM36zeHzeJBfAHqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
	bB5rZWSqpG9nk5Kak1mWWqRvl6CXcXbnZeaCNtmKg5fbmBoYT0h0MXJySAiYSDy7O5O9i5GL
	Q0hgKaPE9L1bmSASMhInpzWwQtjCEn+udbFBFL1nlFi+/BlYkbCAp8SpzyvBukUENjFKLGm8
	zAjiMAtcYZToWb0DrEpIwEri6fbHYKPYBAwlut6CjOLg4BWwk9jZrQUSZhFQlXg1bQIrSFhU
	IEni7GlBkDCvgKDEyZlPWEBsTgFricXX3jGD2MwCZhLzNj+EsuUlmrfOhrLFJW49mc80gVFo
	FpL2WUhaZiFpmYWkZQEjyypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzACN127OfmHYzzXn3U
	O8TIxMF4iFGCg1lJhDf0we14Id6UxMqq1KL8+KLSnNTiQ4ymQO9MZJYSTc4Hpoi8knhDMwNT
	QxMzSwNTSzNjJXHerXPXxAsJpCeWpGanphakFsH0MXFwSjUwneA+G7e/qm3ycRXlF8u1fvw9
	vKuxYEP0fZPVc1k1RJQX8835L92byLc3eem0Va/6khkL0148Us9o+Z9x5j3H88fJJk9OlErl
	vfq0T1zpQ/HK4mkbY2dq5jU0sjjm2q2xD1EJPTE17POGewu+JjYfuavpnXFwMiN7tsc3nUep
	0xTtpe69YVzB5zV/Y9/lX+7TLDtKL/PPl+XeILmxpGPxs0/xB3rtrafE3vNdfP+JcV75tgsr
	rqieeJwnxnX5NF+g/4+9rl+meiwRjJutEXhgssGqj1e1Tipvjr8U7qL25GekBGth4wYfdr7l
	JW3Z+gVNmxbpp5dJT+NODOyTeXv18qv2rltis3R/Fn6ukNj3W4mlOCPRUIu5qDgRADVmgClZ
	AwAA
X-CMS-MailID: 20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
X-RootMTR: 20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a
References: <20201203125700.161354-1-masahiroy@kernel.org>
	<CGME20201218075758eucas1p1605768803a5c9edce4fbe54b3e3b859a@eucas1p1.samsung.com>
X-Original-Sender: m.szyprowski@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=u6iDmFyc;       spf=pass
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

Hi,

On 03.12.2020 13:57, Masahiro Yamada wrote:
> Linus pointed out a third of the time in the Kconfig parse stage comes
> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
> and directly testing plugin-version.h for existence cuts down the
> overhead a lot. [2]
>
> This commit takes one step further to kill the build test entirely.
>
> The small piece of code was probably intended to test the C++ designated
> initializer, which was not supported until C++20.
>
> In fact, with -pedantic option given, both GCC and Clang emit a warning.
>
> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' | g++=
 -x c++ -pedantic - -fsyntax-only
> <stdin>:1:43: warning: C++ designated initializers only available with '-=
std=3Dc++2a' or '-std=3Dgnu++2a' [-Wpedantic]
> $ echo 'class test { public: int test; } test =3D { .test =3D 1 };' | cla=
ng++ -x c++ -pedantic - -fsyntax-only
> <stdin>:1:43: warning: designated initializers are a C++20 extension [-Wc=
++20-designator]
> class test { public: int test; } test =3D { .test =3D 1 };
>                                            ^
> 1 warning generated.
>
> Otherwise, modern C++ compilers should be able to build the code, and
> hopefully skipping this test should not make any practical problem.
>
> Checking the existence of plugin-version.h is still needed to ensure
> the plugin-dev package is installed. The test code is now small enough
> to be embedded in scripts/gcc-plugins/Kconfig.
>
> [1] https://lore.kernel.org/lkml/CAHk-=3DwjU4DCuwQ4pXshRbwDCUQB31ScaeuDo1=
tjoZ0_PjhLHzQ@mail.gmail.com/
> [2] https://lore.kernel.org/lkml/CAHk-=3DwhK0aQxs6Q5ijJmYF1n2ch8cVFSUzU5y=
UM_HOjig=3D+vnw@mail.gmail.com/
>
> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

This patch landed in linux next-20201217 as commit 1e860048c53e=20
("gcc-plugins: simplify GCC plugin-dev capability test").

It causes a build break with my tests setup, but I'm not sure weather it=20
is really an issue of this commit or a toolchain I use. However I've=20
checked various versions of the gcc cross-compilers released by Linaro=20
at https://releases.linaro.org/components/toolchain/binaries/ and all=20
fails with the same error:

$ make ARCH=3Darm=20
CROSS_COMPILE=3D../../cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/a=
rm-none-eabi-=20
zImage
 =C2=A0 HOSTCXX scripts/gcc-plugins/arm_ssp_per_task_plugin.so
In file included from=20
/home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/../l=
ib/gcc/arm-none-eabi/10.2.1/plugin/include/gcc-plugin.h:28:0,
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 from scripts/gcc-plugins/gcc-common.h:7,
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 from scripts/gcc-plugins/arm_ssp_per_task_plugin.c=
:3:
/home/mszyprow/dev/cross/gcc-arm-10.2-2020.11-x86_64-arm-none-eabi/bin/../l=
ib/gcc/arm-none-eabi/10.2.1/plugin/include/system.h:687:10:=20
fatal error: gmp.h: No such file or directory
 =C2=A0#include <gmp.h>
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~
compilation terminated.
scripts/gcc-plugins/Makefile:47: recipe for target=20
'scripts/gcc-plugins/arm_ssp_per_task_plugin.so' failed
make[2]: *** [scripts/gcc-plugins/arm_ssp_per_task_plugin.so] Error 1
scripts/Makefile.build:496: recipe for target 'scripts/gcc-plugins' failed
make[1]: *** [scripts/gcc-plugins] Error 2
Makefile:1190: recipe for target 'scripts' failed
make: *** [scripts] Error 2

Compilation works if I use the cross-gcc provided by=20
gcc-7-arm-linux-gnueabi/gcc-arm-linux-gnueabi Ubuntu packages, which is:

$ arm-linux-gnueabi-gcc --version
arm-linux-gnueabi-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0

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
clang-built-linux/b9b17126-9af5-2f73-526e-91bb9fd27f71%40samsung.com.
