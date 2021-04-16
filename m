Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBSVK5CBQMGQEULFDTOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4A1362BA2
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:52:59 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id o9-20020a5e8a490000b02903e6e5e5c905sf5329505iom.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:52:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618613578; cv=pass;
        d=google.com; s=arc-20160816;
        b=sk9GVV67AFWhN+eQSJz65hK7diirN/cmx9vlXbCzVme1a6SxS1zr3nCIhYwa6zgf8y
         zi0+bGY36m+HCHk14hjrYAdigZ31yRb+a64zeeGlXlEovB2P86shyWX8d9EQWMMRorRD
         eaqWrC/ali0XqIPeC9VGlfT8uCJ9JHkVWrnKqgf6dctDAMTrdMwP8fL9XpsNu5vTMAHr
         tfstj9sdeVOOew8dZ+c/1e74qPS2q/Eevmv0XHE+KDqiqu86vEg0hKu7b//RLp5/tOfH
         3l8p3sZRAC7TT9/SstwD/xnZTnD7Cm2rMOkAZZm7RY8pi76vslkk2yRlZQv2yR5jdOkb
         ClFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Sf1XIL3aEoeggBFK6M6bQOqRiwhx9g5kyh8BtHHi99Y=;
        b=VhtLc4OTwx+mU1pL2VzhV0qVLIv1eXmMajZHayjLk/Uv+TOLRNA78rWFU1sU6J9/Ow
         iRNs4xMM4kSDvKXFqUiZ00WV1lEIFr/n3C6TC+p9nGR9NnVlj46BAFkTWOJImPkw1nNa
         DmxzYFHVeHDqXI/uODqgaHlQqx5YMr++bgw3xNQ9b0oWmwd5xcuFOmIk76cihTRIiMj9
         8eJ9meN9XaG8V/6lTdgo50zu0Uk1nz7WmDw9tO6lz4xTsFPqaMuBcn9fTophm+Kji1J7
         sF5qBzMKSA8agLufhAcs1pZsoRJhxOl0V6HoU8iCbyT7e0LrD+yn9cgn08brmWstYXcy
         vwiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fslg4x88;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sf1XIL3aEoeggBFK6M6bQOqRiwhx9g5kyh8BtHHi99Y=;
        b=ObwX77MtFC/UuKIFFIRbcDUmZ9jWCaPx/X3wpWXa46ARQw8EU6ouniWmFj43t2+4q7
         ZX5CiCtel455UVMgSNPWKFH6p5jIRK8+BdOfubiXtSqKUxEqR0qdUvqWu7CgmMjXXTJ0
         9foEru3fiGkyYXpLP07S2Bvg/A28oolhlYgIvjaBjQYa5FmKoA5QLGBK5Im0A38CDn8j
         aqYqVGt5V+hf5bycMZbFyVt6v1Uf5Y91PtWnX/rkZqz3RY+/KjHUAc6laVAUH4qJK+bQ
         Mrf8s6ikBWVJ/dO+5/ycfNm8LT9c7vKTIrXEhrj2eh/SJ1gtWAn89hVCD36i1pPpZSr1
         o/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sf1XIL3aEoeggBFK6M6bQOqRiwhx9g5kyh8BtHHi99Y=;
        b=SGlv0bqz4PPMNb3Zkd2vNKjildyIlXIBcYhwID3APLn7PpraJElAttsmUwJukGwkMm
         Xu051VzdHSG5aywMquCAcCu2mneyDvS6HhxdXTTMBuo89YzBTWjat143fzkFdgDGjpno
         2eCfnu5kXWRBcgKj1biE4QXIMDUk6lxVkJsKOEASN7tH9FuYPiPZD9iwflKKdIJ0eRdO
         QxqczZ2EXk6vfzVq++xD89UO1GuR1vZ/XGCxBDnVFSWyBUN5RWbM282XjXNHkqLP8CFq
         ydoB9pJeEBCNBsZ42vicRlQiA2e8T2YMEuUSi33YSe8dV7n1/0B1q3Z/ohvWrAErS09z
         KRaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PH4O+VA+a4cPscwMnR5XcspFI/jB2CqoBzWTQJda3n9KjkOql
	FEkayqguFLWAanCK8nDLqzo=
X-Google-Smtp-Source: ABdhPJwvuBZbqu/azFJHS9BUYw/wQ3PYMkGrimmY8x1sG6V0dMQwvKkmHgfFMz3+y3JlpkIg+q6SbA==
X-Received: by 2002:a05:6e02:1d16:: with SMTP id i22mr8727043ila.164.1618613578545;
        Fri, 16 Apr 2021 15:52:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:107:: with SMTP id s7ls1897121iot.2.gmail; Fri, 16
 Apr 2021 15:52:58 -0700 (PDT)
X-Received: by 2002:a05:6602:2bcc:: with SMTP id s12mr1375244iov.183.1618613578155;
        Fri, 16 Apr 2021 15:52:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618613578; cv=none;
        d=google.com; s=arc-20160816;
        b=XetAIaMSjEh6AH02DOSHgkqwflbDIq0hMVcaL/b5jFj6ePzD6TKnALqitqWFjmO+rs
         ZDUkoCCOKhBh+QEGY/5iOPjBXN5zywUUkHhA6gridsfYPiATaZLuNnnY3+00k+K6xvEN
         Hg+ZrJ+u+Xx84ry3CCZE5+DFNn0s3sa0VO94Tz7WmToEzLo91+Bh1KM45tDV02BjdgwW
         mOf4QkdmCDnLnT7xoolAykPe33j4J8FBp8bJzzw1IJcyCnkQQpWh1GvSWOJhIPbUdejg
         8kW4nw6qcJpBCGP39tnLJ6LQcfRkwp1D/33T8JKaLRNOrIseXAwOkpasVz1hnlrEn0/O
         JgoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WiJrIM8nhHQwH+PZxGueXKdC6EEh9H2HinOOF/AhrBk=;
        b=fozEEHwu4fTkeOMOXvCS8lmnUmtJfBePxQKxOMJATjhZrabUlyByXCebLt2Ey8H8Jv
         yPM0pSxyHZNrcCFH0L9vVz2koj+5URaWxcYOzJI+qjgZQ65AJCIxgf8w176HF8yyMwpy
         XhAkdTA47SMM7Ox0ULNpTjPJkZo0y9fbn4NnZAsLFlcIPScKyunOp6FGwfwcCb+4hW7d
         4p2gqJjFSVN947KQNGKm0+CRP3AAesjrteNpa/BZ2Cbi8yDhmsaFLcAcuSShcnS16pnq
         nLjAacxn6fe+e4Ht8i7X4o4CokOapEnWxIJJ4H/9o3gLhJJ8r/TDIvmd1KDP49etwYjU
         +pdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fslg4x88;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c1si473142iot.4.2021.04.16.15.52.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:52:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 735B7610A7
	for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 22:52:57 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id u21so44316453ejo.13
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 15:52:57 -0700 (PDT)
X-Received: by 2002:a17:906:35ca:: with SMTP id p10mr10739772ejb.199.1618613576049;
 Fri, 16 Apr 2021 15:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
In-Reply-To: <202104161519.1D37B6D26@keescook>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 16 Apr 2021 15:52:44 -0700
X-Gmail-Original-Message-ID: <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
Message-ID: <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Kees Cook <keescook@chromium.org>
Cc: Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, 
	Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Fslg4x88;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Apr 16, 2021 at 3:28 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:
> > On Fri, Apr 16, 2021 at 3:03 PM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> > > > __nocfi only disables CFI checking in a function, the compiler still
> > > > changes function addresses to point to the CFI jump table, which is
> > > > why we need function_nocfi().
> > >
> > > So call it __func_addr() or get_function_addr() or so, so that at least
> > > it is clear what this does.
> > >
> >
> > This seems backwards to me.  If I do:
> >
> > extern void foo(some signature);
> >
> > then I would, perhaps naively, expect foo to be the actual symbol that
> > gets called
>
> Yes.
>
> > and for the ABI to be changed to do the CFI checks.
>
> Uh, no? There's no ABI change -- indirect calls are changed to do the
> checking.

Maybe ABI is the wrong word, or maybe I'm not fully clued in.  But, if I do:

extern void call_it(void (*ptr)(void));

and I define call_it in one translation unit and call it from another,
the ABI effectively changed, right?  Because ptr is (depending on the
"canonical" mode) no longer a regular function pointer.

> > char entry_whatever[];
> > wrmsrl(..., (unsigned long)entry_whatever);
>
> This is just casting. It'll still resolve to the jump table entry.

How?  As far as clang is concerned, entry_whatever isn't a function at
all.  What jump table entry?

>
> > or, alternatively,
> >
> > extern void func() __attribute__((nocfi));
>
> __nocfi says func() should not perform checking of correct jump table
> membership for indirect calls.
>
> But we don't want a global marking for a function to be ignored by CFI;
> we don't want functions to escape CFI -- we want specific _users_ to
> either not check CFI for indirect calls (__nocfi) or we want specific
> passed addresses to avoid going through the jump table
> (function_nocfi()).

Maybe I spelled it badly, and I maybe I requested the wrong thing.
Here are actual required use cases.

1. I defined a function in asm.  I want to tell clang that this
function is defined in asm, and for clang to behave accordingly:

.globl func
func:
 ; do stuff

later:

extern void func(void) [something here];

There really should be a way to write this correctly such that it
works regardless of the setting of
-fsanitize-cfi-canonical-jump-tables.  This should not bypass CFI.  It
should *work*, with CFI enforced.  If I read all the various things
you linked correctly, this would be something like __cfi_noncanonical,
and I reserve the right to think that this is a horrible name.

2. I need a raw function pointer, thank you very much.  I would like
to be honest about it, and I don't really want to bypass CFI, but I
need the actual bits in the actual symbol.

translation unit 1 defines func.  Maybe it's C with
-fsanitize-cfi-canonical-jump-tables, maybe it's C with
-fno-sanitize-cfi-canonical-jump-tables or however it's spelled, and
maybe it's plain asm.  Now translation unit 2 does:

2a. Uses a literal symbol, because it's going to modify function text
or poke an MSR or whatever:

wrmsrl(MSR_WHATEVER, func);

clang needs to give us *some* way to have a correct declaration of
func such that we can, without resorting to inline asm kludges, get
the actual bit pattern of the actual symbol.

2b. Maybe optional: convert from function pointer to bit pattern of
actual symbol.

If someone gives me a real, correctly typed C pointer representing a
function pointer, I want a way to find the address of the body of the
function.  Then we can use it for things that aren't *calling* it per
se, e.g. disassembling it.  This is not necessarily a fully formed
thought right now, but I think something along these lines might be
needed.

The reverse of 2b (converting from actual symbol to function pointer)
might be equivalent to 1, or it might not.  I suppose there are some
subtleties here.

Be that as it may, it sounds like right now clang has some issues
interoperating with asm when CFI is enabled.  If so, clang needs to be
improved.

(The unsigned long hack is not necessarily good enough.  I should be able to do:

.global func
func:
 ; C ABI compliant code here

extern void func(void) [attribute as in 1]

unsigned long actual_address = [something clang actually understands](func);

If this thing refuses to work when fed a nonconstant function pointer
because of some genuinely good reason, fine.  But, if 'func' is an
actual literal symbol name, this thing needs to be compile-time
constant expression.

>
> So, instead of a cast, a wrapper is used to bypass instrumentation in
> the very few cases its needed.

NAK.  The compiler needs to cooperate IMO.

>
> (Note that such a wrapper is no-op without CFI enabled.)

> But note that this shouldn't turn into a discussion of "maybe Clang could
> do CFI differently"; this is what Clang has.
>
> https://clang.llvm.org/docs/ControlFlowIntegrity.html

If this is what Clang has, and Clang won't improve, then we can just
not apply these patches...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrV6WYx7dt56aCuUYsrrFya%3D%3DzYR%2Bp-YZnaATptnaO7w2A%40mail.gmail.com.
