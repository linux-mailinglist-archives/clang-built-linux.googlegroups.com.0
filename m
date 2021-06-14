Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB3NVTSDAMGQEMFEOHDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id F11B83A5EB9
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 11:01:33 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id m11-20020a2e580b0000b0290152246e1297sf3709798ljb.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 02:01:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623661293; cv=pass;
        d=google.com; s=arc-20160816;
        b=NEEy1zONa5mI9XGTaDoxVW9y1zRgrOACMeSiNGn5CpWdvVOiBpwrNa28icERbOPsYu
         Vw88d7osiatO9LxvfZfN1dJqJR0fqTWJGe4aoCwuh6+kTHK0VHyayRf3Q8xwYe5SRC1l
         CljDtTO2luuryx9zvAmTe4hzmBVoR2sTCu2EXLvWNBVf1Y1/5hgsAjPpu/O389dBA7iW
         TqivoaIMH+7BO3XkvoRgi1p6T/7tRKlg6KcsMLiXMc4d+pAF1L0viTCYsTkg0QG+HsNs
         1f91+zalqB2CFNNQnz+QhE529a0Vf6VXPVrg6q+FqxO7qoqG6RrAsJ58/zT92aAG6ITR
         7Frg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R2U8fk2JwvBHgwP5VQ1xYIz2MafUlpliYSzjdrMQrbs=;
        b=o3Bt0r48ocQue4QJnr+LcyCvSV8Bzx1sEh1UvwuXvgn1ACRs+Zb6ntFvzCRA26wbzR
         0lDSwMELmN1hX4UlfKwD4ZJvxy3U5QXEgSCMJpe0nodqLGDW7O3d8y1i7b+PybzAgK27
         SvOB+eZogBaz7RTEkrj4a15WyRsvxg6WpwfxGQSBU7MfYhCUDGbGxUqLLBojdEjg10JF
         h/d8dfQZHjnZMcLcy10BsSdgK2gEKjC4nimqknMpXbcC5ek+K9Hxi+iP3Nc+Qvsq/r/C
         ej2TdDNyl9JYH1b4nfp139RrcfkCKdtfLiMIkrYXwDj44FVmdXKYD2ZqFg7YzKGP4qe9
         ljrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=XoM1gHYx;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R2U8fk2JwvBHgwP5VQ1xYIz2MafUlpliYSzjdrMQrbs=;
        b=SKX0NzUe2bxmoYHVe/VA1YFdB//XJjtqCN/MLspkrKf/PU2b0Y/WFxhSGh8X+x33Mx
         WmwOPsmdPU6PET/OrDccLLQmFtgEnmFg3IHtvvA2JfSCJYxktzNJpOqiuV/WeT9FmGzU
         qa+DtnUamMo3QvPwCd4gn14Z6Xjrpo5PAoL1PfcphPeEuxO6Lp9R5vD+oQnmoxtL4ZMC
         3M3EdqJrQWDHA0L4eFOZCi4w2wEDAdNmiAdFSawdwqmrjyJHjV9qLCSfQNaKPYmGeFAi
         hsTxfLH5/w8RJqXrdSAqnJczmW+I3nNtScHK5WEwieeY/kKBEkLCKvtiSgZEt15j8X9i
         g40g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R2U8fk2JwvBHgwP5VQ1xYIz2MafUlpliYSzjdrMQrbs=;
        b=cdR2E082IGZO571gSCWi3r2uO55IDk8RN6occE3dzOGZnrBQ/EH9pOkyUOogYTnSku
         DUAIFxdg9x/fYgLyOM/EzUQ3ak6cyQh91KZ1aDSa/FDnq7dtsdb800cN9g86Twc/tGxq
         5YIojGeemLL4wn3tFkt6LAiujHmP/8E8pBaOjhjd9kRtgB2XJLV/000aONm1q6WVo+4j
         hQ7P+Zy/h4Xl344YfzEW4x1G2jhmy+oDowRoo+e3iIWQ/T/B7Tx82X3iflFAOMswvKW6
         PxAXC1N1X+pS5P48J3hwgHFYPiD/IUHFLFXRsmsDq7kUhzsREO2SOovlb6iROWuR695E
         jgxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qIkn+lVwGuqerit3xDdo/XbPz5SwYSd+v5JaRKnp65PY/Ufzp
	1WBEOM1XorN8lFQkEC8LqtE=
X-Google-Smtp-Source: ABdhPJyybitGaNUFkqxGj/JGnKvjojLGN1Sv1sAPU89ZykWaf+s2s6XGeojhpEgvBEyvBnEghwOj6Q==
X-Received: by 2002:ac2:54a7:: with SMTP id w7mr12117284lfk.415.1623661293588;
        Mon, 14 Jun 2021 02:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls2780878lfv.2.gmail; Mon,
 14 Jun 2021 02:01:32 -0700 (PDT)
X-Received: by 2002:a05:6512:39ca:: with SMTP id k10mr11537087lfu.473.1623661292306;
        Mon, 14 Jun 2021 02:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623661292; cv=none;
        d=google.com; s=arc-20160816;
        b=joDFXWpf5rrn+gsVNxz8yavywNEGtkCmw10XijRFToaE5TjTGFp0C2JBci5WKAs+Qc
         q/DJlxrQNZZEL9sX6aRZOFTnQ6isuIPfMB7Ycqf+5byX1SERJZ7eEXeTMAmSLn3MpobN
         haniv6XW7wDXh0+SeQKNKPrZHEyG9l1cJvCVIDn9Or7ikVq5dcGxWD495c7frBwslVuy
         6CqFCYMJyqsDoPaSgZsrFlpyJlfcm7+5OshLUQsS86ZHyblYrG82Jn2xU42MSyDIjB0d
         tDuCLNZ5wdHihoe2fimx28IwMdzr8GnXWPRG9QHUDWGCYSgwAoy38VkUqPJN4KuEzjTg
         fdkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gvQrFSkw5++aiUZW2ki8ogkV2fD43cfF9pJvBzEa8wU=;
        b=H+QQ/ejUnbb4A9cUFb+RVw+CXRpoHzbGeW7+ynOwv20EDYUhe9XN7OU7+IzO4iVcPZ
         xQpX9PFa7xKBDto/DggladoV/KEJA6nA3JM9qDtTdhbLWSWbRnFri/MHBqFyQVsaQaMw
         ymsQyOQMgiKcugCv9jttmpIPqQWdTdBClFqeEJk1p5HluwLEo3dCDUt93O96FA2+IdbD
         waFMK9zzheMTxdgq6/eXmoLnfTlyHaK9lL+lgEVAuG9gQGG3NsrG4QyaEMUbaX7ARi8h
         73eDUv8YbGWI8B35l3tqETyiRIhqfztvD4xCE4aTotY3RpNwuM6Mi0gxwhn5PytbjmeD
         MjRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=XoM1gHYx;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f6si496222ljo.1.2021.06.14.02.01.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 02:01:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lsiT5-005BXk-BI; Mon, 14 Jun 2021 09:01:17 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 08C5A300252;
	Mon, 14 Jun 2021 11:01:14 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E0E572026A646; Mon, 14 Jun 2021 11:01:13 +0200 (CEST)
Date: Mon, 14 Jun 2021 11:01:13 +0200
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
	johannes.berg@intel.com, oberpar@linux.vnet.ibm.com
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=XoM1gHYx;
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

On Sat, Jun 12, 2021 at 01:56:41PM -0700, Bill Wendling wrote:
> On Sat, Jun 12, 2021 at 1:25 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > On Sat, Jun 12, 2021 at 12:10:03PM -0700, Bill Wendling wrote:
> > Yes it is, but is that sufficient in this case? It very much isn't for
> > KASAN, UBSAN, and a whole host of other instrumentation crud. They all
> > needed their own 'bugger-off' attributes.
> >
> > > > We've got KCOV and GCOV support already. Coverage is also not an
> > > > argument mentioned anywhere else. Coverage can go pound sand, we really
> > > > don't need a third means of getting that.
> > > >
> > > Those aren't useful for clang-based implementations. And I like to
> > > look forward to potential improvements.
> >
> > I look forward to less things doing the same over and over. The obvious
> > solution if of course to make clang use what we have, not the other way
> > around.
> >
> That is not the obvious "solution".

Because having GCOV, KCOV and PGO all do essentially the same thing
differently, makes heaps of sense?

I understand that the compilers actually generates radically different
instrumentation for the various cases, but essentially they're all
collecting (function/branch) arcs.

I'm thinking it might be about time to build _one_ infrastructure for
that and define a kernel arc format and call it a day.

Note that if your compiler does arcs with functions (like gcc, unlike
clang) we can also trivially augment the arcs with PMU counter data. I
once did that for userspace.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMca2aa%2Bt%2B3VrpN9%40hirez.programming.kicks-ass.net.
