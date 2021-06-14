Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBSXGTSDAMGQEC6ZA6CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4808D3A6169
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 12:45:31 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id df3-20020a05640230a3b029039179c0f290sf18308826edb.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 03:45:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623667531; cv=pass;
        d=google.com; s=arc-20160816;
        b=nqbengGL2pGAAkc8QdpjdlJSe8DUOwhr+tmCI/jJ917c61jpiMBM0Kb82CGwpKQpQx
         VBIR8oVgHxkZFByZ9IpriErUYv7ZvmN7sTMJk/n8DNNXZbaCVOdWRBeJ0iKs8WPJInSX
         SQRNztGng7FeLSZjfNC1UV5nr5w1f1ChtC2Tg1u0kF0CXD7QaNphsLMmikIMbZFPXKmy
         AFj26KP+uQDq4JPBlVLiloEFHF7hI12WYKHo/dNeKaq1ljKfE3aSF0NJjATrzUHTdqwG
         HrOLxp12XCD8tcAc807pAwDfmL0TchUW+igikqU6lm6/nVGuvMB5zVw5sBg7+bZqW3Ke
         4svQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=d6+S0WR+cbUOh0KCKpMSxxORZ6dky/DXBywoCzPvL80=;
        b=VPFYHEQOECTlXQLHxJigy6wPCsNjVQkZATmlPQWMN1OgbToX6pqUDsjuu7qo3ChmZH
         9gPaKzghj/wbNdiVBb3mNRw+NZS7JxWJvc8vD4E5lHRtjaujFzzFrecnT469RHLURx/R
         +pR3VhE5EoDFKyygEuERkK1Re3wfd9wk5Yg28YYYQU/FwTt0/93srzJ7nq97qsmqGuaa
         rOze/UYKoQP/nedpuoq5qMvQxPe6/G6umL7poIr0oPX4CaO/QitfJ+QVUGHHiwohh5dZ
         TGJDwvZEWoVaq+874nAOy8n/sq1l4tPGLhdohyr7SshNQvdvT6LDfONIp684toWMS0BJ
         xx7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ehBof3aM;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d6+S0WR+cbUOh0KCKpMSxxORZ6dky/DXBywoCzPvL80=;
        b=junetHacDtISyioLkiGEpI88vxzLtCRJmOfFWnHMSluD/7mea97A37jHpwojqD/SWF
         P9YFtkRotBXYbcw2SsHOE0n52IrSPIjGKc7VCq9OrmLjkU1CAzbfsou0iiQMIxUVTfnS
         INwaBFTSL3VDDpA5yTz80YJ5zABZ5ku7N7dtKFWsvFrCR5rOq5XLNdM7E3sUtjwqb0HZ
         drhF7a3XVAIxy6MJkfRw0ZziiEYWvWwLD1yMrYafgvr2OEYbuEzjlD8i6GL+L9JLYwGi
         RJpFrSVTdPHV3T0Dcisyy00DcyEq3F1ksGmxnq3hD/2vMThpQYsPy/f01c8cf1PLQe/n
         tB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d6+S0WR+cbUOh0KCKpMSxxORZ6dky/DXBywoCzPvL80=;
        b=RTBiyH10cnMNAOB5Z/B4AIuJbOZGppnV79JVydo1JJpPm9bFie62vZsq2GB+ZlbPZ0
         uL2pR5jb1/BJKyKBB0O5Ue9oKKBbxNLQKTYRBgxaTlKZ8Oi7fxkTgpQoB49+OM+BkO9k
         3b6nTXLBJ6/EdX+JMbYJRTS/lAtbJCfY8nEOH4s4gY+NZDqKhMD4xgmPzJYnwxRADvx6
         FTML+ZEw5X+IgkcjUbzVk+HNd/JfgB+x6xsta4WefmSiWZdBbqVR1XU+zlzqv0iLl9FA
         WoIi2R46cBEEkfLer6qUd4MjUARXug9nfEfcud99S1i7ELV6v6U/7e79FxgMVAHbTYYM
         PETA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bop2Hb1H7xPh5h1DA060vyk19aBs0Wa5WSpNGsmfryeJ2h+lt
	YCHgJIsBVydGVYNtj61clYE=
X-Google-Smtp-Source: ABdhPJzBWaooa2UFrBDiS8SP4wJHtnyKPFfeV6MJMPiahZem+alf3kpLEDZ/RIowW3+/fvLBqRwSpA==
X-Received: by 2002:a05:6402:268f:: with SMTP id w15mr13679548edd.228.1623667531046;
        Mon, 14 Jun 2021 03:45:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8152:: with SMTP id z18ls3645127ejw.4.gmail; Mon, 14
 Jun 2021 03:45:30 -0700 (PDT)
X-Received: by 2002:a17:906:39d7:: with SMTP id i23mr14494510eje.121.1623667530069;
        Mon, 14 Jun 2021 03:45:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623667530; cv=none;
        d=google.com; s=arc-20160816;
        b=uSDSMhVFa9nxEf7sL3wsvUNSfWHKcGkuZhJkAv2VKy1rjimMpTCARUzFIRPeLjSqla
         RYAB6RJPOdymKVqXkwfEmKzLt1XcPxjvc/Cpi3jAFeoxUmVrpZNOJB+dPg86RnztzOQM
         j/R7rLwIQl8TuggDvWWA8JiM5ElI40ETqzN8HhLhIcAG6G73PkYGf/iKgqIujSFlg1CB
         M1hIdPH4J6LEBT9IwszdZqY3XZLfIWjZP4EVP+awc5stpTDo0BCwbYDeneG1FsxC23Y2
         7qhqQj63LJTqlrjBcLPbsl55Wz3JyfBAVEUcJyRjEnDRLmKjtA7q2o2j9XhaLNKvrJye
         c57g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BT1NtYIux4JLaeybPfCOT8uueCBZvOTndG6fM411rmw=;
        b=UpNbkMOnxWiIDWgx6hp5hC+1FkS1X3wmQp9Dp+ZB9HhXn//VNsLzoZMBaKHRzdXE8o
         YBEI5o0spcdwHIRRZFMVvLj9Z2+FQFAJksfxe1X+G1ag5tU8Luh0DhKydKJZ/Ab5u36d
         CIqj5muOj0MZeTnK1mnvTMVYum+qhPqDOJDyWo5bBNIk9uInJxIhCrt/aFZXvESMh1Se
         3ZKng7JdSm43G5U7ZXsOOopuh2XdfsgPzsV+wY3919sPgWalY83d6dBBYisUK7IL0wI7
         pp8v7NiBdgCkB9y+WxQOzV38l4dLik27H7CBg9NOmifJC+oBjlwrTVnE+uoq+kUhZ0Tk
         3+3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ehBof3aM;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id w2si856810edi.2.2021.06.14.03.45.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 03:45:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lsk5N-005HsH-Ok; Mon, 14 Jun 2021 10:44:57 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E35923001E3;
	Mon, 14 Jun 2021 12:44:52 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C7B322C178C03; Mon, 14 Jun 2021 12:44:52 +0200 (CEST)
Date: Mon, 14 Jun 2021 12:44:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Bill Wendling <morbo@google.com>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	andreyknvl@gmail.com, dvyukov@google.com, elver@google.com,
	johannes.berg@intel.com, oberpar@linux.vnet.ibm.com,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
 <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ehBof3aM;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 14, 2021 at 02:39:41AM -0700, Bill Wendling wrote:
> On Mon, Jun 14, 2021 at 2:01 AM Peter Zijlstra <peterz@infradead.org> wrote:

> > Because having GCOV, KCOV and PGO all do essentially the same thing
> > differently, makes heaps of sense?
> >
> It does when you're dealing with one toolchain without access to another.

Here's a sekrit, don't tell anyone, but you can get a free copy of GCC
right here:

  https://gcc.gnu.org/

We also have this linux-toolchains list (Cc'ed now) that contains folks
from both sides.

> > I understand that the compilers actually generates radically different
> > instrumentation for the various cases, but essentially they're all
> > collecting (function/branch) arcs.
> >
> That's true, but there's no one format for profiling data that's
> usable between all compilers. I'm not even sure there's a good way to
> translate between, say, gcov and llvm's format. To make matters more
> complicated, each compiler's format is tightly coupled to a specific
> version of that compiler. And depending on *how* the data is collected
> (e.g. sampling or instrumentation), it may not give us the full
> benefit of FDO/PGO.

I'm thinking that something simple like:

struct arc {
	u64	from;
	u64	to;
	u64	nr;
	u64	cntrs[0];
};

goes a very long way. Stick a header on that says how large cntrs[] is,
and some other data (like load offset and whatnot) and you should be
good.

Combine that with the executable image (say /proc/kcore) to recover
what's @from (call, jmp or conditional branch) and I'm thinking one
ought to be able to construct lots of useful data.

I've also been led to believe that the KCOV data format is not in fact
dependent on which toolchain is used.

> > I'm thinking it might be about time to build _one_ infrastructure for
> > that and define a kernel arc format and call it a day.
> >
> That may be nice, but it's a rather large request.

Given GCOV just died, perhaps you can look at what KCOV does and see if
that can be extended to do as you want. KCOV is actively used and
we actually tripped over all the fun little noinstr bugs at the time.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMczJGPsxSWNgJMG%40hirez.programming.kicks-ass.net.
