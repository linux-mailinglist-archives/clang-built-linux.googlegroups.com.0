Return-Path: <clang-built-linux+bncBAABBWG6XPXQKGQEYL5JYXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 43375117CE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 02:05:30 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id s4sf2399747plp.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 17:05:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575939928; cv=pass;
        d=google.com; s=arc-20160816;
        b=PO3XHDS19jx6C+HhC8MallXXyqT2HilqFzy+j2+GE2Z0qpPGkXkog5biFeaDjzZuw2
         50mWDS0M3bp82i1fPwQ5C6EIUtOUqbugiLX0ZEBsUlyDSgOPtRjyfVopF3SNJq1enZwK
         5i4d8ecc2UTsmhiBaRcihWpAFlLMUqzoLdoWnmg8w/1UtybpirFeQbP31lQbNt2hxr3B
         etLyacxQwweUg9dybBb6RdWgOtVgosVhnsCRpNoAsZiqzNpG3i5uyX32LyRHruNm1N54
         xexKBv8tF+hIwHq/lZ4zCJMG1+jw9o+yg6k3JRkaR5bDPicqzpM85WLdBrb+7qmxDnhg
         UGwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:content-language
         :thread-index:mime-version:message-id:date:subject:in-reply-to
         :references:cc:to:from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=EY/S785kkb0SqN2zMcLjorEc9ecJkZ4gwmGOtfQ38M0=;
        b=J9XIBBEYXTHasO0m1jgXUazVe05vu0Gc/lXeuJhegJdzPGeo4vHg2dsd0eT8bechj0
         TUZVAzXCi+WVSvE7skq+Cw82vZyiHF4Vdv48z2+sa7hFiAvuguZ0zawuhpFJcICYLpnO
         5Bv18cigOnnlZ1J9A2jHYrDFxqSyqAUA/7sm8TtWtfTe4GNM9rdkfAP0d+h39PdzFcgm
         bRJH1e0EiQb8LPvTHgU3IU7YBirVkq4hDBsx7G4UPH1nwUJSnMPs4VukGA9nL8E2kjZ5
         30yKFmnI7gX06BbT0VRTHxuiCwyLfQoOgzR4N6AUoj7IJmFX2WgvITZbubbxqYXIIrkh
         DNFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=lME9dfp0;
       dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=RSbsEGRm;
       spf=pass (google.com: domain of 0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com designates 54.240.27.186 as permitted sender) smtp.mailfrom=0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:reply-to:from:to:cc:references:in-reply-to
         :subject:date:message-id:mime-version:thread-index:content-language
         :feedback-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EY/S785kkb0SqN2zMcLjorEc9ecJkZ4gwmGOtfQ38M0=;
        b=eLi8f8I1qH3YJG4xM1e4m+510xztEfyJTAu6SsELwfI2tZe2p2pojDxTMZl6Lx3DbX
         iIXsDEd16XOA7xYfUNc1ZAF0EydnHSP6QcNhfXRydcw7Z/U1CfB/FdRknSowui8/T3N9
         c6lAlhD0x2AsVfs5w6RmQvc+W3vhBEztrV8zRDuHzv7W4hTMkHWDr9hnLy2b/IgQFBRK
         rmFQ2OZo+P2QTEAejbL7HtgHd3iFkiKsVQpP0H+xv15IWKTpMIXA0YcNHCDEZLIC7xHy
         Hk/qVs3mah7+xa4SaTy6WIPqR1U3U6+biyStB+1+SUy+PY+dynLXxsyRhVa175z7C978
         4Byg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:feedback-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EY/S785kkb0SqN2zMcLjorEc9ecJkZ4gwmGOtfQ38M0=;
        b=THV8szjzECP1frY91N3QrP/5m2uV9KYUlFquKhnQv01tHsCVEGr/AsRqMM3wdbJk/y
         TGsYY1yzPV0gagHxO0do2XRvgsy+VxEgOqBOX2SMKG6hb7N1WIKS1UPztxMAEfhb0Gt3
         hoK3eUN0ewbEiXzMni+CU/V06SY5FraA97UrFtDvrP4TebBDnRv16e/lz9UkFeiMmpFm
         5QEI1uQnDUeGs+vZ/HoWk1PkHXI402AV8krN+3vIqki3XvBKPblMmJm+FgqWkiMLLVHW
         M0gtBlidb0hLSuKs+bxr4bXNfgRN6c338LRgpwT5T5GIR4AXbE42TKFT35M+31eDkYI5
         vDpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVH8GauRSPawGpwpk4tomdfGFSmdYWaGnoohz7CbnmYFupMaHcg
	8Ttuw0cZ0YNvduxfuY+9/0o=
X-Google-Smtp-Source: APXvYqxEK2zgX/dJ5nrFjesRj1yu2TDWppQdlGRZzU0nej5ghPz8IvQ/GA3wHyQN7QzoWZW1EvwpwQ==
X-Received: by 2002:a17:902:265:: with SMTP id 92mr32717709plc.42.1575939928436;
        Mon, 09 Dec 2019 17:05:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:871a:: with SMTP id b26ls168515pfo.4.gmail; Mon, 09 Dec
 2019 17:05:28 -0800 (PST)
X-Received: by 2002:a63:604:: with SMTP id 4mr22466796pgg.406.1575939928058;
        Mon, 09 Dec 2019 17:05:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575939928; cv=none;
        d=google.com; s=arc-20160816;
        b=EyWMtTb9UKRN8LNUVxy8UMSxssf7DZmh5/zoZTwF2sqhHBtqJwXu82QeD9GnmVkThf
         MyHhvMo5NzfDVyW79ooisXCYq+A2w/EFXYKrQBRswhh9lx11yGgpzw+7v7kXHmDBK/gc
         1LlzhN0Jt1Ym7nCush4eeuRqthCR+2Y5B4YnPVyl3U+ebR9gO5QO/aJIXEiezy+jWjx+
         jDJhLo5k2Xq8kBtjWJ99M6mDgkeFce9es3hcrg8B5CqylNJP1WR2YjaA7lnL3KQ5ZmR4
         vuss3pd5sm44Ug+voNqUu5Ajn9k8mXGmKhKC/6UQjjRVdGRCpxFYkTp0plnae2aSY+NU
         opDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:dkim-signature:dkim-signature;
        bh=mQu5ScOM9XNGHtpKfSN3dQP1lmA+ba8NfWkl8Ti2ngM=;
        b=zKgk6/j4YkrMsWSv4zJYzjr+SFL3FMfZ1h2yAM6LJhlCTJt2l9HOqUZaOcJbmqYO9l
         oJ7A2j/kNxRqvC3wLv/9YbX4AdF/UwPhLu1YBsWeekcY7M4ONL3iVh4NszE6QAWfE7y0
         v4bRDM1Ad+ufwXISYm5wUvx+vpXgS0WQDqG/sksT0pHbrKasKQWwIuH0kbZClrQqdOM/
         EzhJqJ/x5rE7ER9qgG07Wl9lb5XLXCEDX7oo0tvpqdR6eixI90L+7Hmy+2vodMdmmj05
         MKS/C5Akjl+zsvN6yrcJml6WUP1QWG79ntNMNjL2ohCplWFCyYijWO7qVATy2KKkUheb
         jQfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=lME9dfp0;
       dkim=pass header.i=@amazonses.com header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=RSbsEGRm;
       spf=pass (google.com: domain of 0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com designates 54.240.27.186 as permitted sender) smtp.mailfrom=0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com
Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com. [54.240.27.186])
        by gmr-mx.google.com with ESMTPS id a24si93474plm.1.2019.12.09.17.05.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Dec 2019 17:05:28 -0800 (PST)
Received-SPF: pass (google.com: domain of 0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com designates 54.240.27.186 as permitted sender) client-ip=54.240.27.186;
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 079FAC447A1
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: <lee.jones@linaro.org>,
	<andriy.shevchenko@linux.intel.com>,
	<ztuowen@gmail.com>,
	<mika.westerberg@linux.intel.com>,
	<mcgrof@kernel.org>,
	<gregkh@linuxfoundation.org>,
	<alexios.zavras@intel.com>,
	<allison@lohutok.net>,
	<will@kernel.org>,
	<rfontana@redhat.com>,
	<tglx@linutronix.de>,
	<peterz@infradead.org>,
	<boqun.feng@gmail.com>,
	<mingo@redhat.com>,
	<akpm@linux-foundation.org>,
	<geert@linux-m68k.org>,
	<linux-hexagon@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>,
	<linux-kernel@vger.kernel.org>,
	"'Sid Manning'" <sidneym@codeaurora.org>
References: <20191209222956.239798-1-ndesaulniers@google.com> <20191209222956.239798-3-ndesaulniers@google.com>
In-Reply-To: <20191209222956.239798-3-ndesaulniers@google.com>
Subject: RE: [PATCH 2/2] hexagon: parenthesize registers in asm predicates
Date: Tue, 10 Dec 2019 01:05:27 +0000
Message-ID: <0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIttLPFE8ad6Ohy6/JIQvGwI+sJfQL2CfyLpurRnTA=
Content-Language: en-us
X-SES-Outgoing: 2019.12.10-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt
 header.b=lME9dfp0;       dkim=pass header.i=@amazonses.com
 header.s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx header.b=RSbsEGRm;       spf=pass
 (google.com: domain of 0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com
 designates 54.240.27.186 as permitted sender) smtp.mailfrom=0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000@us-west-2.amazonses.com
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

> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Monday, December 9, 2019 4:30 PM
> To: bcain@codeaurora.org
> Cc: Nick Desaulniers <ndesaulniers@google.com>; lee.jones@linaro.org;
> andriy.shevchenko@linux.intel.com; ztuowen@gmail.com;
> mika.westerberg@linux.intel.com; mcgrof@kernel.org;
> gregkh@linuxfoundation.org; alexios.zavras@intel.com;
> allison@lohutok.net; will@kernel.org; rfontana@redhat.com;
> tglx@linutronix.de; peterz@infradead.org; boqun.feng@gmail.com;
> mingo@redhat.com; akpm@linux-foundation.org; geert@linux-m68k.org;
> linux-hexagon@vger.kernel.org; clang-built-linux@googlegroups.com; linux-
> kernel@vger.kernel.org; Sid Manning <sidneym@codeaurora.org>
> Subject: [PATCH 2/2] hexagon: parenthesize registers in asm predicates
> 
> Hexagon requires that register predicates in assembly be parenthesized.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/754
> Suggested-by: Sid Manning <sidneym@codeaurora.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/hexagon/include/asm/atomic.h   |  8 ++++----
>  arch/hexagon/include/asm/bitops.h   |  8 ++++----
>  arch/hexagon/include/asm/cmpxchg.h  |  2 +-
>  arch/hexagon/include/asm/futex.h    |  6 +++---
>  arch/hexagon/include/asm/spinlock.h | 20 ++++++++++----------
>  arch/hexagon/kernel/vm_entry.S      |  2 +-
>  6 files changed, 23 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/hexagon/include/asm/atomic.h
> b/arch/hexagon/include/asm/atomic.h
> index 12cd9231c4b8..0231d69c8bf2 100644
> --- a/arch/hexagon/include/asm/atomic.h
> +++ b/arch/hexagon/include/asm/atomic.h
> @@ -91,7 +91,7 @@ static inline void atomic_##op(int i, atomic_t *v)
> 		\
>  		"1:	%0 = memw_locked(%1);\n"			\
>  		"	%0 = "#op "(%0,%2);\n"
> 	\
>  		"	memw_locked(%1,P3)=%0;\n"			\
> -		"	if !P3 jump 1b;\n"				\
> +		"	if (!P3) jump 1b;\n"				\
>  		: "=&r" (output)					\
>  		: "r" (&v->counter), "r" (i)				\
>  		: "memory", "p3"					\
> @@ -107,7 +107,7 @@ static inline int atomic_##op##_return(int i, atomic_t
> *v)		\
>  		"1:	%0 = memw_locked(%1);\n"			\
>  		"	%0 = "#op "(%0,%2);\n"
> 	\
>  		"	memw_locked(%1,P3)=%0;\n"			\
> -		"	if !P3 jump 1b;\n"				\
> +		"	if (!P3) jump 1b;\n"				\
>  		: "=&r" (output)					\
>  		: "r" (&v->counter), "r" (i)				\
>  		: "memory", "p3"					\
> @@ -124,7 +124,7 @@ static inline int atomic_fetch_##op(int i, atomic_t *v)
> 			\
>  		"1:	%0 = memw_locked(%2);\n"			\
>  		"	%1 = "#op "(%0,%3);\n"
> 	\
>  		"	memw_locked(%2,P3)=%1;\n"			\
> -		"	if !P3 jump 1b;\n"				\
> +		"	if (!P3) jump 1b;\n"				\
>  		: "=&r" (output), "=&r" (val)				\
>  		: "r" (&v->counter), "r" (i)				\
>  		: "memory", "p3"					\
> @@ -173,7 +173,7 @@ static inline int atomic_fetch_add_unless(atomic_t
> *v, int a, int u)
>  		"	}"
>  		"	memw_locked(%2, p3) = %1;"
>  		"	{"
> -		"		if !p3 jump 1b;"
> +		"		if (!p3) jump 1b;"
>  		"	}"
>  		"2:"
>  		: "=&r" (__oldval), "=&r" (tmp)
> diff --git a/arch/hexagon/include/asm/bitops.h
> b/arch/hexagon/include/asm/bitops.h
> index 47384b094b94..71429f756af0 100644
> --- a/arch/hexagon/include/asm/bitops.h
> +++ b/arch/hexagon/include/asm/bitops.h
> @@ -38,7 +38,7 @@ static inline int test_and_clear_bit(int nr, volatile void
> *addr)
>  	"1:	R12 = memw_locked(R10);\n"
>  	"	{ P0 = tstbit(R12,R11); R12 = clrbit(R12,R11); }\n"
>  	"	memw_locked(R10,P1) = R12;\n"
> -	"	{if !P1 jump 1b; %0 = mux(P0,#1,#0);}\n"
> +	"	{if (!P1) jump 1b; %0 = mux(P0,#1,#0);}\n"
>  	: "=&r" (oldval)
>  	: "r" (addr), "r" (nr)
>  	: "r10", "r11", "r12", "p0", "p1", "memory"
> @@ -62,7 +62,7 @@ static inline int test_and_set_bit(int nr, volatile void
> *addr)
>  	"1:	R12 = memw_locked(R10);\n"
>  	"	{ P0 = tstbit(R12,R11); R12 = setbit(R12,R11); }\n"
>  	"	memw_locked(R10,P1) = R12;\n"
> -	"	{if !P1 jump 1b; %0 = mux(P0,#1,#0);}\n"
> +	"	{if (!P1) jump 1b; %0 = mux(P0,#1,#0);}\n"
>  	: "=&r" (oldval)
>  	: "r" (addr), "r" (nr)
>  	: "r10", "r11", "r12", "p0", "p1", "memory"
> @@ -88,7 +88,7 @@ static inline int test_and_change_bit(int nr, volatile void
> *addr)
>  	"1:	R12 = memw_locked(R10);\n"
>  	"	{ P0 = tstbit(R12,R11); R12 = togglebit(R12,R11); }\n"
>  	"	memw_locked(R10,P1) = R12;\n"
> -	"	{if !P1 jump 1b; %0 = mux(P0,#1,#0);}\n"
> +	"	{if (!P1) jump 1b; %0 = mux(P0,#1,#0);}\n"
>  	: "=&r" (oldval)
>  	: "r" (addr), "r" (nr)
>  	: "r10", "r11", "r12", "p0", "p1", "memory"
> @@ -223,7 +223,7 @@ static inline int ffs(int x)
>  	int r;
> 
>  	asm("{ P0 = cmp.eq(%1,#0); %0 = ct0(%1);}\n"
> -		"{ if P0 %0 = #0; if !P0 %0 = add(%0,#1);}\n"
> +		"{ if (P0) %0 = #0; if (!P0) %0 = add(%0,#1);}\n"
>  		: "=&r" (r)
>  		: "r" (x)
>  		: "p0");
> diff --git a/arch/hexagon/include/asm/cmpxchg.h
> b/arch/hexagon/include/asm/cmpxchg.h
> index 6091322c3af9..92b8a02e588a 100644
> --- a/arch/hexagon/include/asm/cmpxchg.h
> +++ b/arch/hexagon/include/asm/cmpxchg.h
> @@ -30,7 +30,7 @@ static inline unsigned long __xchg(unsigned long x,
> volatile void *ptr,
>  	__asm__ __volatile__ (
>  	"1:	%0 = memw_locked(%1);\n"    /*  load into retval */
>  	"	memw_locked(%1,P0) = %2;\n" /*  store into memory */
> -	"	if !P0 jump 1b;\n"
> +	"	if (!P0) jump 1b;\n"
>  	: "=&r" (retval)
>  	: "r" (ptr), "r" (x)
>  	: "memory", "p0"
> diff --git a/arch/hexagon/include/asm/futex.h
> b/arch/hexagon/include/asm/futex.h
> index cb635216a732..0191f7c7193e 100644
> --- a/arch/hexagon/include/asm/futex.h
> +++ b/arch/hexagon/include/asm/futex.h
> @@ -16,7 +16,7 @@
>  	    /* For example: %1 = %4 */ \
>  	    insn \
>  	"2: memw_locked(%3,p2) = %1;\n" \
> -	"   if !p2 jump 1b;\n" \
> +	"   if (!p2) jump 1b;\n" \
>  	"   %1 = #0;\n" \
>  	"3:\n" \
>  	".section .fixup,\"ax\"\n" \
> @@ -84,10 +84,10 @@ futex_atomic_cmpxchg_inatomic(u32 *uval, u32
> __user *uaddr, u32 oldval,
>  	"1: %1 = memw_locked(%3)\n"
>  	"   {\n"
>  	"      p2 = cmp.eq(%1,%4)\n"
> -	"      if !p2.new jump:NT 3f\n"
> +	"      if (!p2.new) jump:NT 3f\n"
>  	"   }\n"
>  	"2: memw_locked(%3,p2) = %5\n"
> -	"   if !p2 jump 1b\n"
> +	"   if (!p2) jump 1b\n"
>  	"3:\n"
>  	".section .fixup,\"ax\"\n"
>  	"4: %0 = #%6\n"
> diff --git a/arch/hexagon/include/asm/spinlock.h
> b/arch/hexagon/include/asm/spinlock.h
> index bfe07d842ff3..ef103b73bec8 100644
> --- a/arch/hexagon/include/asm/spinlock.h
> +++ b/arch/hexagon/include/asm/spinlock.h
> @@ -30,9 +30,9 @@ static inline void arch_read_lock(arch_rwlock_t *lock)
>  	__asm__ __volatile__(
>  		"1:	R6 = memw_locked(%0);\n"
>  		"	{ P3 = cmp.ge(R6,#0); R6 = add(R6,#1);}\n"
> -		"	{ if !P3 jump 1b; }\n"
> +		"	{ if (!P3) jump 1b; }\n"
>  		"	memw_locked(%0,P3) = R6;\n"
> -		"	{ if !P3 jump 1b; }\n"
> +		"	{ if (!P3) jump 1b; }\n"
>  		:
>  		: "r" (&lock->lock)
>  		: "memory", "r6", "p3"
> @@ -46,7 +46,7 @@ static inline void arch_read_unlock(arch_rwlock_t
> *lock)
>  		"1:	R6 = memw_locked(%0);\n"
>  		"	R6 = add(R6,#-1);\n"
>  		"	memw_locked(%0,P3) = R6\n"
> -		"	if !P3 jump 1b;\n"
> +		"	if (!P3) jump 1b;\n"
>  		:
>  		: "r" (&lock->lock)
>  		: "memory", "r6", "p3"
> @@ -61,7 +61,7 @@ static inline int arch_read_trylock(arch_rwlock_t *lock)
>  	__asm__ __volatile__(
>  		"	R6 = memw_locked(%1);\n"
>  		"	{ %0 = #0; P3 = cmp.ge(R6,#0); R6 = add(R6,#1);}\n"
> -		"	{ if !P3 jump 1f; }\n"
> +		"	{ if (!P3) jump 1f; }\n"
>  		"	memw_locked(%1,P3) = R6;\n"
>  		"	{ %0 = P3 }\n"
>  		"1:\n"
> @@ -78,9 +78,9 @@ static inline void arch_write_lock(arch_rwlock_t *lock)
>  	__asm__ __volatile__(
>  		"1:	R6 = memw_locked(%0)\n"
>  		"	{ P3 = cmp.eq(R6,#0);  R6 = #-1;}\n"
> -		"	{ if !P3 jump 1b; }\n"
> +		"	{ if (!P3) jump 1b; }\n"
>  		"	memw_locked(%0,P3) = R6;\n"
> -		"	{ if !P3 jump 1b; }\n"
> +		"	{ if (!P3) jump 1b; }\n"
>  		:
>  		: "r" (&lock->lock)
>  		: "memory", "r6", "p3"
> @@ -94,7 +94,7 @@ static inline int arch_write_trylock(arch_rwlock_t *lock)
>  	__asm__ __volatile__(
>  		"	R6 = memw_locked(%1)\n"
>  		"	{ %0 = #0; P3 = cmp.eq(R6,#0);  R6 = #-1;}\n"
> -		"	{ if !P3 jump 1f; }\n"
> +		"	{ if (!P3) jump 1f; }\n"
>  		"	memw_locked(%1,P3) = R6;\n"
>  		"	%0 = P3;\n"
>  		"1:\n"
> @@ -117,9 +117,9 @@ static inline void arch_spin_lock(arch_spinlock_t
> *lock)
>  	__asm__ __volatile__(
>  		"1:	R6 = memw_locked(%0);\n"
>  		"	P3 = cmp.eq(R6,#0);\n"
> -		"	{ if !P3 jump 1b; R6 = #1; }\n"
> +		"	{ if (!P3) jump 1b; R6 = #1; }\n"
>  		"	memw_locked(%0,P3) = R6;\n"
> -		"	{ if !P3 jump 1b; }\n"
> +		"	{ if (!P3) jump 1b; }\n"
>  		:
>  		: "r" (&lock->lock)
>  		: "memory", "r6", "p3"
> @@ -139,7 +139,7 @@ static inline unsigned int
> arch_spin_trylock(arch_spinlock_t *lock)
>  	__asm__ __volatile__(
>  		"	R6 = memw_locked(%1);\n"
>  		"	P3 = cmp.eq(R6,#0);\n"
> -		"	{ if !P3 jump 1f; R6 = #1; %0 = #0; }\n"
> +		"	{ if (!P3) jump 1f; R6 = #1; %0 = #0; }\n"
>  		"	memw_locked(%1,P3) = R6;\n"
>  		"	%0 = P3;\n"
>  		"1:\n"
> diff --git a/arch/hexagon/kernel/vm_entry.S
> b/arch/hexagon/kernel/vm_entry.S index 65a1ea0eed2f..554371d92bed
> 100644
> --- a/arch/hexagon/kernel/vm_entry.S
> +++ b/arch/hexagon/kernel/vm_entry.S
> @@ -369,7 +369,7 @@ ret_from_fork:
>  		R26.L = #LO(do_work_pending);
>  		R0 = #VM_INT_DISABLE;
>  	}
> -	if P0 jump check_work_pending
> +	if (P0) jump check_work_pending
>  	{
>  		R0 = R25;
>  		callr R24
> --
> 2.24.0.393.g34dc348eaf-goog

Acked-by: Brian Cain <bcain@codeaurora.org>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0101016eed56ed4c-6d40d46a-c154-448a-8c29-0b5c577d2a44-000000%40us-west-2.amazonses.com.
