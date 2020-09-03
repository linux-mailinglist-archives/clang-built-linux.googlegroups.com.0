Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3WIYX5AKGQEU5KELQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE2D25CC99
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:47:28 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id s204sf2787414pfs.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:47:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599169647; cv=pass;
        d=google.com; s=arc-20160816;
        b=zSoSwqsKTGlAQW25cRj/VZ77lwSdmcrEGW8un8mmy3ZTuzWqUQGqNd7MweCCphVP+e
         7NYkI/BLPU6TNkm61HAFmubprAk2uf2pjv/SyJRGknRJbvEW0c0DWIwGpHOzkm6LZn/9
         OQKIhIyCp1hCvlquPaNPIFN29f7cJ2e8UE/jJNvkbHfYM3G+71hRtC18lUOw0WY0LwXp
         Ko7HNWEkgY4CAwE28CbzjuFN09Lm1uq3E0r3fnM28HraafVDdIfccNLvVCq7h8JA97P9
         ZWsR3B9rOL3Kj9EROYMmTwSF84sVLNcXtiWR3HnLVG4c0Y+FmJYIeyUalv+CP1aj6j8x
         fCCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yqG51PdrCHbjzCH36YEWLTV6nunl/9eg3qhP+VJy6Xo=;
        b=fcxqWO8PFZlFnWvihd2g6qDTy0eLlk5GDVBoa1AnCEYYrxK/+Bg1En9xI7Ay39G85c
         yC09QLI3b7DwJcywuVMfJ6aMJvqeHpjk17dQV1F9VhoUHWMjPlzxoAljZqCRSDcCA+5O
         UiZcvEeG77TfrQWwwIfbKk87IiYvb9ofaJb4pif67+zOWqdV5XsBV7pet2K/EOTElcdJ
         z8G8WltTUyUz9JzWkpqkxZcXxBPzOBC+Yf6rHKbHO8fQKturcf1MD0se4UhKupiOnby5
         TIjK8l19+921UZ8RI1TJT+KfHQxDv4lScrqw7neMzmNNpLcVfYArKg9vYoKWs5fmFpma
         567A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dNJhSL8+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yqG51PdrCHbjzCH36YEWLTV6nunl/9eg3qhP+VJy6Xo=;
        b=lAudcaKf2moAIpCKNqVK/GjTKn0gS27xnEpvnCOsz9UfrXEy3U5PIllLSjiRHoPg6d
         kbTRJBmRZx7y65xBa69j5TJR0tp0rOC59UV3UazgJM0jZ33DS+Jc/HKWXhlYXHg80iTy
         jZszejetBNulqrljCJ+LDf7ZLq0p0nOZZWkahWTe+GaPOpDQn/s1UTMPrTpYV0LdAZw6
         /KbgjghQ9aZ6SCszgRdjEidHdcUZR+JQWU9PZiPd/lLRdKYOp5+hImkscWAi8pJbf6hl
         FL3L2nLD4guJSdOOgOJZuIR2syTDeowWf6pgytb7QYwixsXo1IlCAKzp6I+X/SADfJJs
         8wPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yqG51PdrCHbjzCH36YEWLTV6nunl/9eg3qhP+VJy6Xo=;
        b=K3bILuqaSnn0wXbCCLAIhqGc3HNaPEtQGV+Uizc1Z6OadHCeLutmi+Kx0qBsSqd33D
         oz/ClyOOB5bACJ9QGilzgHqHolrv4nwuLK8sQxizuJndXJih2ly4X9z0pFJ0fTtL0gpz
         11YJi4LjYBJDKP5wlrHzL18c9yedXJSw32XvzvsZmUsCRMFVQDfrHMgkEc3J7Jq7Maid
         egJqWmDa5Qa0q66JKSBx/Oq/ZrPPqlQ9OQt6ZD6jjw96UPY7ja65zTNKHhJcbbSWzfLn
         /rCucKFj9QN06MVRK4KDisSPEN2EOLqIDIYQUVDOYb58wPVtnZlqoDwVbLV8yhKWrbY3
         cG4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GrgB++Gd2qdwjSZQVDhi2DJVn+tYHrB2tcnR7J5nH/ooOQWZe
	sF/iHsKpAKZnRqk5W0jreJg=
X-Google-Smtp-Source: ABdhPJwlbv/nWrhTXDrNdqnxVt7dtFb8suoIBdktnSY1pl5S8xAKs/xsuJ9Eoxr/NgFX0mFDosXZuQ==
X-Received: by 2002:a17:902:bd43:: with SMTP id b3mr5920473plx.201.1599169647029;
        Thu, 03 Sep 2020 14:47:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls2209204pgk.4.gmail; Thu, 03 Sep
 2020 14:47:26 -0700 (PDT)
X-Received: by 2002:a63:342:: with SMTP id 63mr4784502pgd.134.1599169646521;
        Thu, 03 Sep 2020 14:47:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599169646; cv=none;
        d=google.com; s=arc-20160816;
        b=A3fLV35kif/FJU/vRD7qCIC/pY6sRNLVN4GULKAWzhQylrsy2e8+zROWpszAoU9h03
         b370xdrUUgM4CGkTdfcuijM07tlbEZyc3Amdm86dFv+HmGgQDHKN+z/qANgSwbQsurT/
         AFGqkhcToS1+wMToA3zlYlHswf4HU8yvYN+qIFG48kdlxAckfdL2X2XPhkRM049yNwgR
         C43v9CgYUWsGchqmouD4aE95gou4G2uqh7mj23m8iJmE20n1HBaUS9OUkr79BxCr9xxY
         LH3vhzky4ceuGC2boSmo0658gSOcx6gD32ORTl8fkJWpQwUlJ99HV+/CAfmDBk0X0k0K
         sgRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sW3+i9jb9GQGw/rihL3rmHov3DBg+oJBsubVzV/94sk=;
        b=fHKuCmawDMACNJukeYqPDIAU4mSxd19cKOMGCnkEMmhyUzWkaeox18c4NY0mGCQ7ok
         ihBqRyLZzT6gpZb15ljqIghAu80kDztl0DC2OLxZxFszi6mqyIw3DgfEkIYuta+mYLrV
         hnQzv45V32WmV1VA6IDDC539SbBPttQsrpmcY1MPSgJs6U4dsoPGz8PzqDRiCCNg0VVW
         TuMBKKWlDRJGDdz9G+2eBPkdHR1oam2FMt8httN977vQviKM6B+KdTCob7/JCDYMGLS7
         z6GGRcE/z8Q2Olo7d7BzShSqSdusMPidpHMKD7eUl4gbgu+F3/AyTdGOLi591ugC7nxU
         Bdcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dNJhSL8+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y204si314747pfc.3.2020.09.03.14.47.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:47:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id m5so3169485pgj.9
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:47:26 -0700 (PDT)
X-Received: by 2002:a63:e157:: with SMTP id h23mr4839131pgk.239.1599169646252;
        Thu, 03 Sep 2020 14:47:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e1sm3391485pjv.17.2020.09.03.14.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:47:25 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:47:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 03/28] lib/string.c: implement stpcpy
Message-ID: <202009031446.3865FE82B@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-4-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dNJhSL8+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 03, 2020 at 01:30:28PM -0700, Sami Tolvanen wrote:
> From: Nick Desaulniers <ndesaulniers@google.com>
> 
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.  `stpcpy` is just like `strcpy` except it
> returns the pointer to the new tail of `dest`.  This optimization was
> introduced into clang-12.
> 
> Implement this so that we don't observe linkage failures due to missing
> symbol definitions for `stpcpy`.
> 
> Similar to last year's fire drill with:
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
> 
> The kernel is somewhere between a "freestanding" environment (no full libc)
> and "hosted" environment (many symbols from libc exist with the same
> type, function signature, and semantics).
> 
> As H. Peter Anvin notes, there's not really a great way to inform the
> compiler that you're targeting a freestanding environment but would like
> to opt-in to some libcall optimizations (see pr/47280 below), rather than
> opt-out.
> 
> Arvind notes, -fno-builtin-* behaves slightly differently between GCC
> and Clang, and Clang is missing many __builtin_* definitions, which I
> consider a bug in Clang and am working on fixing.
> 
> Masahiro summarizes the subtle distinction between compilers justly:
>   To prevent transformation from foo() into bar(), there are two ways in
>   Clang to do that; -fno-builtin-foo, and -fno-builtin-bar.  There is
>   only one in GCC; -fno-buitin-foo.
> 
> (Any difference in that behavior in Clang is likely a bug from a missing
> __builtin_* definition.)
> 
> Masahiro also notes:
>   We want to disable optimization from foo() to bar(),
>   but we may still benefit from the optimization from
>   foo() into something else. If GCC implements the same transform, we
>   would run into a problem because it is not -fno-builtin-bar, but
>   -fno-builtin-foo that disables that optimization.
> 
>   In this regard, -fno-builtin-foo would be more future-proof than
>   -fno-built-bar, but -fno-builtin-foo is still potentially overkill. We
>   may want to prevent calls from foo() being optimized into calls to
>   bar(), but we still may want other optimization on calls to foo().
> 
> It seems that compilers today don't quite provide the fine grain control
> over which libcall optimizations pseudo-freestanding environments would
> prefer.
> 
> Finally, Kees notes that this interface is unsafe, so we should not
> encourage its use.  As such, I've removed the declaration from any
> header, but it still needs to be exported to avoid linkage errors in
> modules.
> 
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Suggested-by: Andy Lavr <andy.lavr@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Joe Perches <joe@perches.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

As you mentioned, this is in -next already (via -mm). I think I sent a
tag for this before, but maybe akpm missed it, so for good measure:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031446.3865FE82B%40keescook.
