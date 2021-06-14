Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBN6JTSDAMGQEWF2MZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EC33A5F47
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 11:43:20 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id e8-20020a2ea5480000b029015b5329f488sf645563ljn.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 02:43:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623663800; cv=pass;
        d=google.com; s=arc-20160816;
        b=EqQ9kE0uDq23s+XUmL4JlvaGkHKtmWdrWqsTyQhKKC29R/Wcq3X9PwfIHb4Y0l1DQV
         rq7jXv5vmKqfA9XeXY/u2vVWIfM9mMPHxRu8aDw1koEZRZFQQSH+dYMUmc55JTI1oPSE
         H/f4vIpG6fnYI/OCSvrKD/SBL0mJMHPAa4vEeYZ6Yuk9Q7rcA7TsNVGAIXadOcY0IJ7y
         bwCG6XPaGFL/3TmTBEkj+xG90l2TaXNnFntvHM3jUHtBsegtTPo1e3q6JAiqGXkyfJCI
         1mAbgb0DnEe3vzAMWeBt1NRHITbWo2Too74Jw3EkqzIIGcKsH67QJYV5wmuOu6vexabk
         FPFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lr9q+sgMtHrqJSrmcB6IhVhTgK9MZRCRlLO4dWh/T8Q=;
        b=079lnLfNq70hCq8asGDVkpqvO+SyonzF/+zY0G7lrAuVSuwnw7yFAibaPKcz7BSnVc
         +xmU8v6e9bJLEpg8OkOJ3BaTckFNT8BYQCGdAmd40fh7QcqQXYJd3lVpVFnZ5hzA8pG+
         se3fuwIwu3S5Nqusc9oYy+7S/hO1yUoXNGIq8Z5f1kTF9sIO6lHhfS/Bc4PLCV9F+AHn
         ZWJddhWeknbiROLVCtb79plnCaaHlCoEec+n4SOgKZIpMuv5PNV3a6LPYKr55AH3bB14
         6IfT1TU/AoFiZWLgMmse9JFLCQO+4Kznt6iPLqMAwN+tbbOMrZP28nqwmbbYmDz+sG2X
         NSBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=c0LWLb5k;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lr9q+sgMtHrqJSrmcB6IhVhTgK9MZRCRlLO4dWh/T8Q=;
        b=ozgjvr7J+xUvwkuf71ekx1soj/4/xXWR3IdEsXCNLG527dPpMVrmQhHqiloTaYZuuw
         WfNzyZhdS1tCIMiAoRqCPI5eoi6/prE5GN2L3sHf97XCZqMok3cUdjnSSUwaEqzx3zTq
         0lB8r9mtOcfKaSDeiDt+ZdaMu52G22Xpi3x+08MofufSKhnEpEk8rRUlIsEViUslRx9o
         msgonHwuX4f4gDn7zfQMD9UinfGW7YLfWl9U7S7ByOGvyEjjYZkQ2a03jRSaWKG+9lci
         79pXFMrHyDo3umFilzkQC0PWpLe10mkxopsBf43R8bGSG9LRtQ001P5LX8/GjM06FmYX
         ZL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lr9q+sgMtHrqJSrmcB6IhVhTgK9MZRCRlLO4dWh/T8Q=;
        b=q/Kc+dWwOIRDvAtF2RhgOr3MTJhTIWUwGKhDLixHzVGph9bgqvr7TI3oa2TGqBO7y/
         of1En3xrD5rl5tZyK7rXUaOuqZvGxoh4IuqxYK2Ngs6V0WBaINh+EV6s9Aa8yJA81H6g
         pztrMRZqovYJNEsn1QLmWZUFTZm9uzJEUr05Pl4mykSOkyPHkCMFU76Z//kQ+fueNKoZ
         2R8dUwv7+diOeeJohhg733s9jZF1uWVYwBwj87HVI86HXr1BL19enCEooI+1d7Xog1W5
         Gt2oYjCIPGaNV0MbTvahFeRwX9PxzX15vsJ6/rzjkCxdbLbYJ3c0Zyzw8AITOAG3pepn
         54MQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VmMXgNA/rdKG+NsvFbjMUMziYA0dW9m49LqvwcXqQnj3y7NPG
	srW+fWdXNFn3peA4rECcFl4=
X-Google-Smtp-Source: ABdhPJyOsvdpa/UpQBXm9WYkvSiQEqnB+Fgvz00Qse3V5T6fJ2Ri7boTczV78mMC4cHPS2Xr4VcoXg==
X-Received: by 2002:a05:6512:c1b:: with SMTP id z27mr1754180lfu.99.1623663800039;
        Mon, 14 Jun 2021 02:43:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls2883174lfa.0.gmail; Mon,
 14 Jun 2021 02:43:19 -0700 (PDT)
X-Received: by 2002:ac2:41cf:: with SMTP id d15mr10852889lfi.574.1623663799023;
        Mon, 14 Jun 2021 02:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623663799; cv=none;
        d=google.com; s=arc-20160816;
        b=J0QEIqIgeC+tQpgbiidv7ve6Fg0EY9iHxWIJmezbERMARZIO+IEFaqogrlFMxAcypU
         AuH5GSNwS6hBtMAJZ654NE+zHUVNrNLWzXD09IaVBx4bhkLp7daZnBCr61As4QwYybe5
         6VnUDaTdI37g0e+KwlL+ybvvGxnTCGh3La0OR5TMbLs/WllBAEf2LZIfnyqsStSKlYwn
         bxXtr76zAPXwOb9oV4ZwmAJjqOBM0btZI/63Q15rAKKXtUXQOzS8yLveJ3VMDIj42jBq
         ubXPKsjFepEhjqKj9eheQUeoR2GSdBsplsjKbhbFG9c+X6fjvo4ugZXTGrdIv9pS25hm
         pGfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ETFQhOUX2dsG9gREBmqiOQps3x5gpXqUMNQJ3wfT6Yg=;
        b=ZaTpX17Y6HTOJVmXxiWLZT8o/By83BRPTSNOBUf8ahibmQPycrCLl4krXP9QXuqb1Y
         tpi6mVW0k0BTGJGg1vOQrD0iX5dM5rJPVQXipRm7CZh3Y6JQLMjNg3pDEkK1cXvHSnwS
         bMUOEUldBCNAGexwQcAaUeTkWlHrqA95O3+pECzSLeOhM1GSADO/DXTd7vnmCTg81i1P
         hfISTAFrCW8Q2QpBHNne7ojveV8hfb7GAYloVs9BbAhVnvPasju2qYb8ayKDOhpJo0bb
         nbLvsVvu74LvQ8gfPoJExjufWrG3WssxzNyacCjdaaIof4xckv3lvFswC20tSA/itUfg
         b6Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=c0LWLb5k;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id f6si499938ljo.1.2021.06.14.02.43.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 02:43:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsj7b-006zkq-64; Mon, 14 Jun 2021 09:43:14 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0E63C300252;
	Mon, 14 Jun 2021 11:43:13 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E7DAE2C08E387; Mon, 14 Jun 2021 11:43:12 +0200 (CEST)
Date: Mon, 14 Jun 2021 11:43:12 +0200
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
	johannes.berg@intel.com, oberpar@linux.vnet.ibm.com, mliska@suse.cz
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <YMcksKbnVGyi6jHy@hirez.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <CAGG=3QUFRM85bpyjdokO93=Nem_w7-784-_qihP1P_CJMOsdqg@mail.gmail.com>
 <CAGG=3QUrhVi37sYtybTUAZMpCDjB_pw+1OdkbZKvL6+UQrbMbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QUrhVi37sYtybTUAZMpCDjB_pw+1OdkbZKvL6+UQrbMbQ@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=c0LWLb5k;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sun, Jun 13, 2021 at 11:07:26AM -0700, Bill Wendling wrote:

> > > Now, for the "nointr" issue. I'll see if we need an additional change for that.
> > >
> > The GCOV implementation disables profiling in those directories where
> > instrumentation would fail. We do the same. Both clang and gcc seem to
> > treat the no_instrument_function attribute similarly.

Both seem to emit instrumentation, so they're both, simliarly, *broken*.

noinstr *MUST* disable all compiler generated instrumentation. Also see:

  https://lkml.kernel.org/r/20210527194448.3470080-1-elver@google.com

I'll go mark GCOV support as BROKEN for x86.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMcksKbnVGyi6jHy%40hirez.programming.kicks-ass.net.
