Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2GA5CBQMGQEXPN2KQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 8542B362BF0
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 01:40:25 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id r123-20020a378f810000b029028244d5f023sf18618qkd.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 16:40:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618616424; cv=pass;
        d=google.com; s=arc-20160816;
        b=AamAfmweTP3pjgdx2v/5gtd9Mm7VUeAMsRVwVqeSKJhtIpQ2Ay/LUnsaQtdVwJwZ/v
         9osW/D20opzZnj99nblsSHqBQ4xSyOIcI/WYjyEFM2C799uZw9bCFZTCalp445kMyyTS
         nmFL5bvsed3PwLVIEzNKmY7HYfRAc7riTnGZtKrzGk+FH8uNy7IeLncxqkoV0BMDeQLu
         07dqEDloOT8vkcVwdqcMHXL5IhICIVfSNHflUlrXEkbdn166SgZQL48N8sCcsrCLPPQP
         sGM5l4K2Cw9EwHVaUSjVTVbOdSNJqG7zogOBvD5v28ylWmjW8CfFIorCsyjXVt7ollfG
         7qoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wIwyNQ79q3e7+NdiVTv/unMI75CgPYKLDJ/adWEgow4=;
        b=XZUIGQzAEhb7YTieqCJkGx5bdbiEZPQBHMziETyxYscE6maLJbqE5oEfyoDFlRZBsK
         2vIIDPBAruqqd80G2ZGUcsGAS22QhBS1MNMQAwzaSmcKWrozYN7yJzTSEbZOxs2yOsL5
         SZr/GmSS5PypriT8yOvl43z2FDIOl+eAjmDFOowkMC8/P4nUwQwksdDp46OkH963zLwN
         PjAJ77pPDCvt3/doWsIeGCUGPT5yv1BFo0CK+Q5DPjWleQ4vDaLkTb3Uvv8/skhiRic1
         46R4YIHiR13m6N1MY4Ps8j1xRzB0CZ5iJ/9Jkp+yCBG5N2pluKC4X9aQM0DofPDSaJ6+
         Tf9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fNj3+t9w;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wIwyNQ79q3e7+NdiVTv/unMI75CgPYKLDJ/adWEgow4=;
        b=ek0oGx31PwZwM5CF7zpsWUrPMGp5O4DVz9GnoBfQsC+eG+/6cqP3ApYtxv3raAY8a+
         Czmbsk7e16TbgIGOUPPCBdE757jAqxopjoKWfI+wAFQQKBp59XmwqIPQIT2/osyuT/MT
         fmH1dc0LQeCgqnLfLyTaRy+JhpWj0hNkquocVpA+y9aH6kOa28qz/7YYXeCPi8HjCw59
         Y3E3wd8Yd6Kan5VavC9Vo2fqyWyqVrFc1RI8GE4ANVawmYQlbC1gk5yQPNSxLTClyU1N
         sI2dM9+ceqXUHDVbMgFYF/NKEehgaMO0/ipAj8cWY1iurPKy9jz8iW6EuHc4UT1NRShd
         MgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wIwyNQ79q3e7+NdiVTv/unMI75CgPYKLDJ/adWEgow4=;
        b=caljvkCZU5fTZeyTKKBRZLg8ERYFJmVQVi6WSpZyZNaAHNAd7HxdocVf5vgRi8/z+M
         sf9CJVaeslorF7X2cfvxVDE1IQE5pfvm5TMd4uLQFTmMtR3iZjJlmgkEjxKEMJumfQq+
         iKLZu12Q3h/EChtsAlX1zCW4GZpmeKKThFGuXxp2+xERzzgEiflVuTlyMzELNeXKDUfW
         1YgAoHzhrdudZxbUsWLxpd5r0xLqHej9UUEwWqWp+DdeVlN93zRovLGn1eC6jx6mhBy2
         kh0KnTvDTVbaJKRy/rH9fsYc3uR3TFjAbtTnkUorke7beFyy3WVkq3I/riqY20NbX6j5
         cHiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hqk8MmJDBCKAzeioP6BT92EiydXoYhMZB2nHIf+WeyjId9O96
	W5sXxTZYvcXxSeBtvAWGUYQ=
X-Google-Smtp-Source: ABdhPJxsESxuDy9dCfsY6DAgISCZkGPuIRC7D055xMtM11KqENttOpkb7FyIEzLGpKNKv9t3GBObRw==
X-Received: by 2002:a37:8905:: with SMTP id l5mr1768691qkd.321.1618616424647;
        Fri, 16 Apr 2021 16:40:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6d03:: with SMTP id o3ls2839964qtt.0.gmail; Fri, 16 Apr
 2021 16:40:24 -0700 (PDT)
X-Received: by 2002:ac8:5210:: with SMTP id r16mr1528206qtn.106.1618616424197;
        Fri, 16 Apr 2021 16:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618616424; cv=none;
        d=google.com; s=arc-20160816;
        b=wU4O1h5/xPKtHx3XBtKy/mmwN6yQEsZSCG3PQ+mhGNb7mctf70ymAf1u/C41JzvP4Y
         5JgWN0naPgHFoqmBZnuVfE35w3ErVUhRBXmteKa89zSgNyR8tRpKLRh42AFw6kbbr4Uq
         eaquYaA31QIRBAl5Gd/udS7K9++Ru88nrKJ0UiatkrmP0DVHMzeew4/DAAZgicnKPMiB
         8ys2hjIXzCL87PeakEHtNfgUu7nezyybanjJEKHvM/OZsP5zDmh2oytMeiUKwGTp4iXM
         HRwVbXAWJdJRjTJ5vLGLYUetcocUu+fpUW+ajBsXhBrOIJoGaSyvY6rJ8LKAFoX5e/Gh
         6FYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q/HF9zm2yknbU18v/xjP0mndiiqfo5zeMGWyKBs/FEE=;
        b=DEUOH4NJWt2BKwjrFdgMRdBfoDjKLqhhjG/eIxOLh13ndG65NOWxcn5NIeXXM6ybiX
         fh1o0NACKuhyx3u4JLSu/1+vrJNc1Q38p5ZPa6Go3g8NBUBG59CjNN9RQRYQ27uIqECq
         aB6JnT/6+PrjSezyKQYgv0xbplhKMcUsjwfo2muJ71xzoApKXzUVOfcXLhhEV9YcQtAV
         C1xa4Gsz4wSMCTc2OoWiq0KOe/uA6WV4hVk9M456pL3kONMT4TlxMp3ERDqtYP9eWMs/
         UjOZ95NJsQLpwb98qFTaFFlOOJiVepgSEbF5iPFv/sQHRo4SkyQBxZDAky404HQyp+vb
         aPhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fNj3+t9w;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id r26si752682qtf.3.2021.04.16.16.40.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 16:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id w10so20214319pgh.5
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 16:40:24 -0700 (PDT)
X-Received: by 2002:a63:ee49:: with SMTP id n9mr1293583pgk.3.1618616423721;
        Fri, 16 Apr 2021 16:40:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o18sm6435771pji.10.2021.04.16.16.40.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 16:40:23 -0700 (PDT)
Date: Fri, 16 Apr 2021 16:40:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
	X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <202104161601.CFB2CCF84F@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
 <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fNj3+t9w;       spf=pass
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

On Fri, Apr 16, 2021 at 03:52:44PM -0700, Andy Lutomirski wrote:
> Maybe ABI is the wrong word, or maybe I'm not fully clued in.  But, if I do:
> 
> extern void call_it(void (*ptr)(void));
> 
> and I define call_it in one translation unit and call it from another,
> the ABI effectively changed, right?  Because ptr is (depending on the
> "canonical" mode) no longer a regular function pointer.

Right, I was thinking maybe "calling convention", or really, "the
ability to still use 'ptr' as if it were a function". Which is true,
yes. It's just that 'ptr' is aimed at a jump table that jumps to the
"true" function body.

> 1. I defined a function in asm.  I want to tell clang that this
> function is defined in asm, and for clang to behave accordingly:
> 
> .globl func
> func:
>  ; do stuff
> 
> later:
> 
> extern void func(void) [something here];
> 
> There really should be a way to write this correctly such that it
> works regardless of the setting of
> -fsanitize-cfi-canonical-jump-tables.  This should not bypass CFI.  It
> should *work*, with CFI enforced.  If I read all the various things
> you linked correctly, this would be something like __cfi_noncanonical,
> and I reserve the right to think that this is a horrible name.

Yes, I find the name confusing too. Without noncanonical, we'd need
C call wrappers for every single .S function that had its address
taken. This is very common in crypto, for example. That level of extra
code seemed like a total non-starter. Instead, we just get a few places
we have to mark.

> 2. I need a raw function pointer, thank you very much.  I would like
> to be honest about it, and I don't really want to bypass CFI, but I
> need the actual bits in the actual symbol.
> 
> translation unit 1 defines func.  Maybe it's C with
> -fsanitize-cfi-canonical-jump-tables, maybe it's C with
> -fno-sanitize-cfi-canonical-jump-tables or however it's spelled, and
> maybe it's plain asm.  Now translation unit 2 does:
> 
> 2a. Uses a literal symbol, because it's going to modify function text
> or poke an MSR or whatever:
> 
> wrmsrl(MSR_WHATEVER, func);
> 
> clang needs to give us *some* way to have a correct declaration of
> func such that we can, without resorting to inline asm kludges, get
> the actual bit pattern of the actual symbol.

We don't want version of a global symbol alias of func that points to
the function body, though; it's only very specific cases where this
should be stripped (MSR, ftrace, etc).

So, if there were some Clang-specific syntax for this, it would still be
used on a case-by-case basis. It would still be something like:

wrmsrl(MSR_WAT, __builtin_gimme_body_p(func));

Which is basically what already exists, just with a different name.

> 2b. Maybe optional: convert from function pointer to bit pattern of
> actual symbol.
> 
> If someone gives me a real, correctly typed C pointer representing a
> function pointer, I want a way to find the address of the body of the
> function.  Then we can use it for things that aren't *calling* it per
> se, e.g. disassembling it.  This is not necessarily a fully formed
> thought right now, but I think something along these lines might be
> needed.
> 
> The reverse of 2b (converting from actual symbol to function pointer)
> might be equivalent to 1, or it might not.  I suppose there are some
> subtleties here.
> 
> Be that as it may, it sounds like right now clang has some issues
> interoperating with asm when CFI is enabled.  If so, clang needs to be
> improved.
> 
> (The unsigned long hack is not necessarily good enough.  I should be able to do:
> 
> .global func
> func:
>  ; C ABI compliant code here
> 
> extern void func(void) [attribute as in 1]
> 
> unsigned long actual_address = [something clang actually understands](func);
> 
> If this thing refuses to work when fed a nonconstant function pointer
> because of some genuinely good reason, fine.  But, if 'func' is an
> actual literal symbol name, this thing needs to be compile-time
> constant expression.

Okay, you're saying you want __builtin_gimme_body_p() to be a constant
expression for the compiler, not inline asm?

Given the very few places this is expected to be used, and the fact that
it works as-is already, why is this additional requirement useful?

> > So, instead of a cast, a wrapper is used to bypass instrumentation in
> > the very few cases its needed.
> 
> NAK.  The compiler needs to cooperate IMO.

It's trying very hard. ;)

> > But note that this shouldn't turn into a discussion of "maybe Clang could
> > do CFI differently"; this is what Clang has.
> >
> > https://clang.llvm.org/docs/ControlFlowIntegrity.html
> 
> If this is what Clang has, and Clang won't improve, then we can just
> not apply these patches...

I'm not saying Clang can't change -- I'm saying redesigning the entire
implementation of Clang's CFI isn't feasible, and I want to avoid having
that become the requirement because that's unreasonable. Clang's current
CFI works for many other projects, it's supported, it's what Android
has been using on its kernels 3 years now. The twist, obviously, is that
other projects don't use asm the way the kernel does, so that's where
things get weird, and where we've already been getting help from LLVM
folks to improve the situation.

If the solution is a new Clang builtin, okay, but I'd just like to
understand why that's justified compared to the existing solution
(especially since the resulting machine code is likely to be nearly
identical in the current uses).

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104161601.CFB2CCF84F%40keescook.
