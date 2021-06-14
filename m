Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBBG2TSDAMGQEUZTUVSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8BA3A5FD9
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 12:18:45 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id h6-20020a2e85c60000b029014fcff4ccdcsf4332224ljj.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 03:18:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623665925; cv=pass;
        d=google.com; s=arc-20160816;
        b=t2s4QxqxWOdeRpoyUT22OKJZrDpVjAyHyWHAHwao0UtmKUjChO0T3dYwDcnf76f9MB
         /5DUTiDv4rLwqZFUsxfwXaGaALgWOnq+258ei3pfsVYtomKmPw/6M+HppQwbygj52Pk7
         r851TC9LZE7rL6jatQ/kf2og/AZeM2mbRQf0vJt2X08gaJjV01poJsZIlF/snPvRNz4q
         QJxlb4j/Lm2p9PslfHsOsC1UmgOl3iSHr85FXQQHsuZ9Gq6Q2V075cdiJ824+ZDoWuI0
         bGzf1juFGy85HODyO8Jttkenz/44eoU70YwdXTIHKO8topOPlY4HtXT+gp1t90EPhUzn
         sjbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6itvI2FC2VzwGmRTru7LeEzE4Qer0RadKiS54paG53o=;
        b=EAVw18QHxi8E4myTxocNaD0HRXC6KKol+a2OMZJ/W8qU4yaeM8notogiFOWN0eZi+k
         3CwiCljB7TLhe5QpIKme69ArSkJyxwdiHAr68zRBgiRhD4Tp2M+eAiODf614N67m0zYs
         YG+IMOFdQZhid69+bOgxS9VYd/uGqKm+4IGfp0eQ9wPa0SZY2URQyuI6bP/v/GJ3jWHV
         iLaYfAuWI7LDzCP4FHbiCd7t7rYsYuIMR3/qj2sfB0hmhG6KmvuFoQbiQWQmxBtqgGmU
         nTOMVQ1jN+i2kD936Fw9BnO8HLn9BasVGPG5jl1kESikumbl9Es/PzJHmRNcA+mhXTXH
         lbIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=CaSvsj9J;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6itvI2FC2VzwGmRTru7LeEzE4Qer0RadKiS54paG53o=;
        b=F4TIXWsHpojQT2Va5Y9w5TLHjPn+Fj0VOIAUt8T3kLhjIzcGIeEx0jc3YLjpsr6eao
         nTYceNQz/zP7pfTzBxxWQXqnVeQT6oX2vRzxJAFCnXXAE42ie8Km0EGTfCvc5x8y6kDF
         5HiTJH3du7A7vbFh+rKJpdkLetHvhIZnPwSinJa9BHMP4b8LvP4vnVcKfjdA0ewUTi86
         Pl0dE3N2BurBxREBnIR5DRaTzYUZUmdGspMYeVF/qE2MViHPxvRi7rZk2pCZT4hZHfhO
         P96vpkv8durZ4L1HvqCK0twevKzDVMUvkRLLtcqJgv4NUy7MrrvBHu86XOv2KSNeesKI
         uO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6itvI2FC2VzwGmRTru7LeEzE4Qer0RadKiS54paG53o=;
        b=ca6KRrZHif6WiXOzu9B5q47iz9+Da3h3iZXOuOes0ony79WGvogndJbKstKqs9lpb5
         zvULMHZ0TXOm3j1Rd+BKIfOnH4uCSTdMUJhOI5RiISeIDquZeA3HI4+kgV7QvfaHyFZ7
         KVPT5ZdDn3IYmatufWYl/r2D+x0td1ur/uQiDIB99obQ9tlwljhFeIHJso6lL3+ZAMOt
         VaFSwRKXQ+YOkMW7IwZFlXVgSfq78yNIAUsFjhu64iIefE10aMz0NLE1gMw0h80Y2GB8
         j+EIpjIohyJtj4TiDVrEZNU2ITrZwzoDPAuw78c0lSKP+jelX31ej/Omx59lg2dsCxqB
         bc3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fiSuoZdSMHa/GuDy0CrOfOQhkRFBdq/MqKp9KESy6SjAy+fjW
	NFNbm4pWDkxvO0EqaEdbWsA=
X-Google-Smtp-Source: ABdhPJw5i9DhRHULvlXZym14FJh3M/IbRrT7orVuuig5vg2oaKuo3/V0C0Vi2SVD8nynAO+rLXPJ3A==
X-Received: by 2002:a2e:9d87:: with SMTP id c7mr11097308ljj.84.1623665925020;
        Mon, 14 Jun 2021 03:18:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b09:: with SMTP id u9ls3084167lji.9.gmail; Mon, 14 Jun
 2021 03:18:44 -0700 (PDT)
X-Received: by 2002:a2e:7f16:: with SMTP id a22mr13384709ljd.360.1623665924000;
        Mon, 14 Jun 2021 03:18:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623665923; cv=none;
        d=google.com; s=arc-20160816;
        b=iTd1lCXWTAf4QUmw0L0iqu0fezUDXl4hcJO3fs5dmDHdqhCzHplRymrk6Yi6kxhAKd
         n9CYVp/ELbFIj+IM3kimXPwtsApjkCp8imSzb3kW3b3yUNmiyBDWFY8jhqRv+NPoIsX6
         dl/tRsExdm8/1bPn9ZicVHWElT0Pj2/VZCyksGrqOiZTUZ7BQTVgo6gQ1AG2lo5ImZe4
         Q+wj9VOTDFGtrrwP9HVyE3cbwYnGr78zS+Cqyktdszd8UvRZaZtZjTXZ1VH/qSJIzl1y
         Ka5EGZ0YPUq5DjQ57rf3XGyDnF1Me0vhdAxcVMpcVqcCuHTZUw+uTJuy3aiQYUi4PNg2
         SMOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NhIEo9sT28glTkM4CxprF+qgzCzmmeIS6U+43P+3xf0=;
        b=QOgdkWEYfQi9jZowhM6J1Q+h18mT3HRncJ43SV4wPlArH1Kvuc8HR+e0fXHLilN+BX
         HDwhCdUTenqWzaJ5VT0cowXWG7eX9Bqzc1xXLHHyvbLWHXx88Fr6jr14RTHtZXrCYJzL
         Kq29n3MzJCG8TFHayreMhn/vKeKiHyeEN5E671LTmzLJvAcrKYs8JXRBTFzxdxyeswpO
         UVOJl5n/Szad1r2htHMB1kc1OKUKZRyH1ldxFDHkje6jANgfhsQdC2wCRYNdXbBhBdpD
         TQQH/owqGFP4wWV7uBt1z3Us/zp6utqGUFjLjoyLz0jCwyDMBlymNOOmqxkWwQTjrkxU
         ZrRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=CaSvsj9J;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id h22si619067lja.5.2021.06.14.03.18.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 03:18:43 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsjfs-00706g-Mx; Mon, 14 Jun 2021 10:18:39 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5A7C73001E3;
	Mon, 14 Jun 2021 12:18:38 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 43BBA2C5DAE9B; Mon, 14 Jun 2021 12:18:38 +0200 (CEST)
Date: Mon, 14 Jun 2021 12:18:38 +0200
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
Message-ID: <YMcs/kOcylwvaSr3@hirez.programming.kicks-ass.net>
References: <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <CAGG=3QUFRM85bpyjdokO93=Nem_w7-784-_qihP1P_CJMOsdqg@mail.gmail.com>
 <CAGG=3QUrhVi37sYtybTUAZMpCDjB_pw+1OdkbZKvL6+UQrbMbQ@mail.gmail.com>
 <YMcksKbnVGyi6jHy@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YMcksKbnVGyi6jHy@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=CaSvsj9J;
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

On Mon, Jun 14, 2021 at 11:43:12AM +0200, Peter Zijlstra wrote:
> On Sun, Jun 13, 2021 at 11:07:26AM -0700, Bill Wendling wrote:
> 
> > > > Now, for the "nointr" issue. I'll see if we need an additional change for that.
> > > >
> > > The GCOV implementation disables profiling in those directories where
> > > instrumentation would fail. We do the same. Both clang and gcc seem to
> > > treat the no_instrument_function attribute similarly.
> 
> Both seem to emit instrumentation, so they're both, simliarly, *broken*.
> 
> noinstr *MUST* disable all compiler generated instrumentation. Also see:
> 
>   https://lkml.kernel.org/r/20210527194448.3470080-1-elver@google.com
> 
> I'll go mark GCOV support as BROKEN for x86.

https://lkml.kernel.org/r/YMcssV/n5IBGv4f0@hirez.programming.kicks-ass.net

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMcs/kOcylwvaSr3%40hirez.programming.kicks-ass.net.
