Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTUZ5CBQMGQEVL3XOMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 264EC362AE9
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:16:47 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id b34-20020ab014250000b02901eb696c5fbasf1259091uae.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:16:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618611406; cv=pass;
        d=google.com; s=arc-20160816;
        b=TNcP78D/iSB2//PlZfY3pufi/CCb8Qr8yDfPoPBrHtzVGoibPujW21eYvNyp/tS8c2
         tnLFu9qbp3GLrRA5J7f5Dxk1PhSypLS/09ldwuOp5stpAoNkJsJLZJvzqSpSinPVq40I
         MMfC0j/U2dqiN2eUgbProT2c+cfQiW82GESxpAY5JlIfTznnVqGV82utdwOwvme6V1Ht
         UxXGiVkspiINC56EW71xvvJC8IjrYTTHGdIxuVo14+UEZ2tiJ/fzzs4CLuIO2Upfxk5W
         l5zODt23ECwvVxuaSqekhGxXxE68+HZOkFufAv0CPRw8dmDgv7GZg5wts4y7gzB2ykam
         0Rbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=71G3/dzEbJfactJ2KN0pfiDzXDlkXWLL8DA6VtxOZnQ=;
        b=ll3xA3ecnXdKus7Gb39lcB2vh8zCo6z9jDPrkB10F5H6XZGE5rJBlUqCb3TaMdotCG
         3XUuh4ROnAJ5kOGjUZhtBQFZzoTJR5ctrPCuK+wTF5grCRPECnVtFN/43NKEi1ELWQCm
         bgkg6b6BVmeqEmmQ+tZEO+f2wULeyMcjZYy/1Nobv7EFtGQrqctsmAR/q8w72sqhzlGc
         n0S4RfIbLadRTGQGGVBvja+pUXqjQT5bBwwelu2zQCQlq1dQlaGlSPvPexFWwG66MKbx
         muJG6NTJ49QRMpX6klOGdF2ccMjNfzdsWivcBroaI+m4T/Qk4JzZe/OPRQJ/nHaet9G8
         zskA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lcOphGXH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=71G3/dzEbJfactJ2KN0pfiDzXDlkXWLL8DA6VtxOZnQ=;
        b=mWh9DsIp96+Ssx2NqfsiDD1wMehS4hg5SHBgcs6AJP91dTV6SV4QCdHyjrLPUamaA5
         vMT+GlzrtXJe0G6yeW/3O6ZWPjW2Geok+ONABTPYACJU4glGMwoHcq1VqqezEbyWl63B
         2uKq5twOo0vpyfnELQnv3hGwFVywocJbLt3vxFLzTSrY6ytRrh5faOxv07RbwdHIv4hn
         bYA5Qy9tQRzVITo7Eh/foJQhU0b2Wd9/6ajtQ5h1gtTjaVKrWazanGJVCxwYi8DIlYdq
         9Ta6YSyRlKHd/MQT7EcB5hi8ewHetjh8ExgukNupQndYCeXhOLeGoW/+nfJcCqqv9cP2
         sB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=71G3/dzEbJfactJ2KN0pfiDzXDlkXWLL8DA6VtxOZnQ=;
        b=IJUKh66vD2vsApUaOmwzn9YXlCbb7qKsAx38rdWt29V81t3VIl+hBMFH4ZqapdIVnQ
         toOqX7MItZBkmPrjw9jR5METKIM1RVpleTUk2wn77Wtd3cElhgIOG5v7UEZpLJC2Kh2C
         2r1OrGTO8H66Kx9WJdrVynWbKGO3vJOMy7u9i4MBQ24J8QGFbJOCfqk899H88JidgSgo
         d8tOkjjUFTFh52xDQP/JdQR8QhWeXmL+nHvSrQZCBSsEkHCswGjRrweRpBEF8eJjDxi8
         yHXy8DFPvpoiyTTXXy3m+6HQAu7h4PzB1DH3vRVcKANUwM7Malwcdx65Mt4XmrRk69qE
         3uiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323xNZzAn8UgGdL9AX/hVnvnLoZ/JYGh07vDmzyyEM/qN6EANFt
	MKDxZpwfJ8FcJ1eQHu67Fps=
X-Google-Smtp-Source: ABdhPJxUJDAtEXcFcr5Z7rLUlfbayH/BNVM1NtUTPyHNSYvuE7AQehtrwPmPheRXf4pXcJu1pKRruw==
X-Received: by 2002:a67:d88b:: with SMTP id f11mr8995768vsj.22.1618611406208;
        Fri, 16 Apr 2021 15:16:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:94c6:: with SMTP id w189ls772169vkd.0.gmail; Fri, 16 Apr
 2021 15:16:42 -0700 (PDT)
X-Received: by 2002:a05:6122:156:: with SMTP id r22mr9164202vko.25.1618611402809;
        Fri, 16 Apr 2021 15:16:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618611402; cv=none;
        d=google.com; s=arc-20160816;
        b=u4hLihYtKPs8HrCjkIju5r8e5YJp4bD7kdvSZErYpdrudph4qTWv2AMfhAtmZullD8
         czfnGr1T75UCsmhHdc/9hwzPf8qScnfGaXQjbxUNkkd0tgKgEzcQ2YMLBnCm2gwapb3y
         F6P5942hKNlvNRB26zgk4sqJ92bfMFp5ByV4zB5pTkmlCciAk9mwDiAbxtyAiricpnEG
         s0so5Mqq+KYeUByMmvYnTkdKAtl2p7GoHBBKfN1Xxgsj8v3BIoqP/Tg3RIZvBgUi1yCg
         lKXhuY81hgyK1F6L5tEbBrd5VWbTnhSHs/lUSF0R+/JCtnJxwwVR8N3XRZtMbc/MhCAm
         rqPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HqXM3kMLEn96G3/nALKZvPIkVzBlUz9VyGBmJqc5JzE=;
        b=AB6DMWrfC5qOTBe0f7r6yp1uNrpxXE6CvA2wH2L/Zkvl8JtFp5UtAfrxCwHTU3liFu
         Q/Y8B71Ga+UPvDpA9vi/BgWYo5UJ0L8Nav8n0PgNn1+gSG96crACYhd8VEDPqDYGNk14
         EQk+Ze6pPOXz4zsqJZ9CbsIcJb7XhXvJJEZ46loc0aRBysCwTRQjxSg4p/C9BEpaGg/w
         +5vf0LJEKHrhCi4Q8usfQzEslnhetB4MDGGviRlGwBkcdZndUrUlSCRko0SIWol7di1Z
         AsX74jMicyz1ETTGu4jYrolqyHDIyYoSCN9YeEc83nZrsE4xZNbMZ/O8CMW6FC9UuEoh
         ol5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lcOphGXH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id u13si654003vkl.5.2021.04.16.15.16.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:16:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id j32so5331857pgm.6
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 15:16:42 -0700 (PDT)
X-Received: by 2002:aa7:8d44:0:b029:244:a363:dd57 with SMTP id s4-20020aa78d440000b0290244a363dd57mr9504822pfe.8.1618611401923;
        Fri, 16 Apr 2021 15:16:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s6sm5697805pfw.96.2021.04.16.15.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 15:16:41 -0700 (PDT)
Date: Fri, 16 Apr 2021 15:16:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <202104161510.246509CE@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210416220251.GE22348@zn.tnic>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lcOphGXH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535
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

On Sat, Apr 17, 2021 at 12:02:51AM +0200, Borislav Petkov wrote:
> On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> > __nocfi only disables CFI checking in a function, the compiler still
> > changes function addresses to point to the CFI jump table, which is
> > why we need function_nocfi().
> 
> So call it __func_addr() or get_function_addr() or so, so that at least
> it is clear what this does.

FWIW, it's been renamed already. I'll CC Mark back into the thread.
https://lore.kernel.org/lkml/20210325101655.GB36570@C02TD0UTHF1T.local/

> Also, am I going to get a steady stream of patches adding that wrapper
> to function names or is this it? IOW, have you built an allyesconfig to
> see how many locations need touching?

Nooo. Much like __nocfi, this should be extremely rare and is only used in
places that must not be doing CFI nor working on the jump tables (e.g. the
syscall MSR). There list for arm64 in -next, for example, is short:


429d9a552e81 arm64: ftrace: use function_nocfi for ftrace_call
fbcdf27674bc arm64: add __nocfi to __apply_alternatives
f2324191e959 arm64: add __nocfi to functions that jump to a physical address
c4a384170f17 arm64: use function_nocfi with __pa_symbol
5198a15901d2 psci: use function_nocfi for cpu_resume
8e284f3ebed2 bpf: disable CFI in dispatcher functions


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104161510.246509CE%40keescook.
