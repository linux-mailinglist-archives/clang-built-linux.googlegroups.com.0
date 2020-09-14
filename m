Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDNW775AKGQELU34JUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D95E269761
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 23:05:19 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id q12sf810644pjg.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 14:05:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600117517; cv=pass;
        d=google.com; s=arc-20160816;
        b=woI5M8utgTdLf29ST34pgNAy6KWFlmJkIclpd3SWP0Tf3QvylI5OTb1Bl/VejmxQyb
         BXykdKAGHzJt743fhfifEhrhOHyWshBp+wcC3+jWRLjKy+hf6o2rqMlLjcyb+U6CYazM
         bQi/ymz1foXIjS9aH6kOm10wzo0EE25YyW8R4AKYZW51yr3WBBmR398HzfpR+riU9fc5
         k7nIUDuv29Y/khzCInAW047CcySGSC3gscHEIbso+omIZs8JeOl/cE0dDQJAlYJHqPXj
         GfV91lUPt8ZHmMIQiqwy4t00VXKbJ++dnkU/gEU5v62RoXL3eFf7RUUMbAeAq97jnXUp
         a8ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GZea6Y9CNnICfdu7gCsfAankSSqON9OdsgK5Vq6gfmU=;
        b=0QwGFq5I+r4qgVPMt9ee8aAgLtdcUWvG8h/NvjQm4pY18RMfYPegexKO4nW0+RxC5q
         ecl8FQJ08zNOtdl4oRBb+zx3q2I7cL3iTDWfWZdmSqiGMurLlzjtBVfbo/j9+QwOpnuA
         31PVHnlk8Gw9I2KbcS8VcosPRFmJDIl6htsTj5sWR63qQIe7LCJNi2eyWdOBginhRXlH
         AmWI3vb3wBtCQT3/YxvGjLQe+SQKPJf5HoGqeOcn/NlSQaMzYRapz41J0xB/xWBJJXh4
         IhrsT+x4T6i9DcWhI9KDnhzWAeIFI/p1v0hlPHXLpxLvVu/yDuW0f7tOQH+Ky7GjFqWz
         mDSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sulaPXBL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GZea6Y9CNnICfdu7gCsfAankSSqON9OdsgK5Vq6gfmU=;
        b=GUKYk603YcFJ7vBlmze1o+idVMkoziO8DKtQ0CFwF2I+PoosDVp1ymWdZ2OEsPBIlO
         AvsSVS58UT/l1J1PItcLcTXo01qzXNrKeRI5UNgHj04iDG10OSw8RuPy3I9fzDBK9lpv
         Pb3bsKiaoOBzAjp0rDdbwCItqvnPyBx0h1fcrwgSGeNXHFtLxS+saFfoFD+QOIIBfT2m
         g7CSMhhF7aFuAcfrjY1w9HJjheAzKKNVmfMD54VGu6ixpNk5DMYsjM+9ydBBQ1za6UHE
         Jk92Cz3pilaNZ830ihoQ3Cxtgd80ZgYmwIZ2+Zw2efhWCGrXo/gZl5Bw0RpzrNEnIGT8
         Sp9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GZea6Y9CNnICfdu7gCsfAankSSqON9OdsgK5Vq6gfmU=;
        b=tGW0Mfoeambq2GwJrOKD+Nwn2gzuG7vB1dVQbziuolhtbeayoZyqn4ZRqALAf0wlhR
         LebuxRv1xq6L9QHRipdRL7ROr6TFtctl6f3B6+A1hJpJpRFbqPF0Y+AB4cihw3avphx1
         TwK51HTBosGiAKhthTwcuEG121Cwd5tIYp4mh8IxoL4SXeqcn47/WT96XxyqMIddPLjY
         4gw/OPx72sZ3SGTS8K0yYaCgWS8zJSh9LXOnOrOArBv414r/M9+B/H+LWaiXFWqS1pZo
         fxMwO2Ao9+lCtcvrNZnFpkqb9O5dvhToJnsmT102GDmdQcWXFz/eFnrqA+zthJ2+EnS7
         UBPg==
X-Gm-Message-State: AOAM530H2hHVPgdEhAT65HqvzaFrcJJ4V+XujOp7Fte097wFlC9s30hb
	waEBV/gypcv05cEP3Qv/CoI=
X-Google-Smtp-Source: ABdhPJwEQAt8TzUhEZul7/QWa5kbEEQq3S0r+cgcSIb3ZvwAC5ZIkQSxW9iiX2S0cDw/eIw6wivVxw==
X-Received: by 2002:a05:6a00:2b1:: with SMTP id q17mr14755470pfs.74.1600117517678;
        Mon, 14 Sep 2020 14:05:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8514:: with SMTP id v20ls4179563pfn.2.gmail; Mon, 14 Sep
 2020 14:05:17 -0700 (PDT)
X-Received: by 2002:a63:6d7:: with SMTP id 206mr12576853pgg.167.1600117517133;
        Mon, 14 Sep 2020 14:05:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600117517; cv=none;
        d=google.com; s=arc-20160816;
        b=iDYkjEVAV1eYQRJNYkfKAG+WZ0PMYFZTfe0dhTIxVWU5zPZ7+2Ole8VOwzFdN9vpAJ
         Qrraok1o0YIJ0QxbWvZGmM9p0EZU9LAxyDrK/L+H5ZOQPH+dF6xcrlqqgNSIubtKyEip
         1+2y3YYcXYBHMzaEyrsF4wA8Fziuif7X5/HqOldRXOLeqpM0zLLKDpkR8FeOJ2bZgcGq
         nYWNDuriNrGYk7FsanfqksSNEGWwX9vI1yz5e8XN3NAnwbO1TysW7bY1I9pmVoR1emRe
         1l4IiSkptVvKkaGOqe1Tlv2rfpXEpku34sQDVfS7Z8HA2exZ5zPAbTPqg9xUVU9p9tH8
         pFCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E0F8AkfKQCaaK7RpO105WDYCBVLdgClr8aQ6v9XdgcE=;
        b=wddK0yRjT9CbWhwbwSgPAEJumcOAl31RlemnH6exQ5nLoN3WaaIeJOlX22QdW6B3Wk
         VW0/JeWF+TxV24Qy0qj3k8zB+y5w722XNc4AWMBn32dV1gPehkHFAFy1XQbM1UlD+dwr
         6YjhxK+Tv3FHxhOTrSqslCpFa7dEnpjF+CtTHgvYF+5SMZl1hnnL26YEyjJZshHhAUMp
         S0uS7m8g/JZMV5BeVR+sOrt9nxALddh4pAoepg91hl25zE0oJLzFVr/bfmg4w870yZxn
         sTZZyQhkGzklshovA2pGmOhjpLhmF1DxMl2FyoCV9plP92PM4BcwtEuevo7lMWMfrH3O
         /fyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sulaPXBL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 129si620606pgf.2.2020.09.14.14.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 14:05:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id c3so124638plz.5
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 14:05:17 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr1054592pjy.25.1600117516539;
 Mon, 14 Sep 2020 14:05:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200903011054.2282115-1-morbo@google.com> <20200903073435.GU1362448@hirez.programming.kicks-ass.net>
 <CAGG=3QX4wKcoPWw+5=tOqz3Y7g8ELGZuav3kdWjXRQae=ue9Mg@mail.gmail.com> <CALCETrW7B3HkF5iY=qgt0KeN1fXZLVaPZcELYGRm9bOgbirbww@mail.gmail.com>
In-Reply-To: <CALCETrW7B3HkF5iY=qgt0KeN1fXZLVaPZcELYGRm9bOgbirbww@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Sep 2020 14:05:04 -0700
Message-ID: <CAKwvOdkKqkP1qT0002xQnDrByXr_ygvqCmnzZ50vJLDsg6XWXg@mail.gmail.com>
Subject: Re: [PATCH] x86: use clang builtins to read and write eflags
To: Andy Lutomirski <luto@kernel.org>
Cc: Bill Wendling <morbo@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Greg Thelen <gthelen@google.com>, 
	John Sperbeck <jsperbeck@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sulaPXBL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

(Bill, please use `./scripts/get_maintainer.pl <patchfile>` to get the
appropriate list of folks and mailing lists to CC)

On Thu, Sep 3, 2020 at 8:06 AM Andy Lutomirski <luto@kernel.org> wrote:
>
> So with my selftests hat on, the inline asm utterly sucks.  Trying to
> use pushfq / popfq violates the redzone and requires a gross hack to
> work around.  It also messes up the DWARF annotations.  The kernel
> gets a free pass on both of these because we don't use a redzone and
> we don't use DWARF.

Sorry, I don't fully understand:
1. What's the redzone?
2. How does pushfq/popfq violate it?
3. What is the "gross hack"/"workaround?" (So that we might consider
removing it if these builtins help).
4. The kernel does use DWARF, based on configs, right?

>
> Now GCC and clang's builtins are also ugly.  But perhaps we could have
> a little wrapper that is less ugly?
>
> static __always_inline unsigned long __read_eflags(void)
> {
> #ifdef CONFIG_X86_64
>     return __builtin_ia32_readeflags_u64();
> #else
>     return __builtin_ia32_readeflags_u32();
> }

It looks like __builtin_ia32_readeflags_u32,
__builtin_ia32_readeflags_u64, __builtin_ia32_writeeflags_u64, and
__builtin_ia32_writeeflags_u32 were first available in GCC 4.9; they
weren't in GCC 4.8 or older, so we can make use of them
unconditionally.  I think it would be nice to use the above.  Could
even be:

#ifdef CONFIG_X86_64
#define __read_eflags __builtin_ia32_readeflags_u64
#define __write_eflags __builtin_i32_writeeflags_u64
#else
#define __read_eflags __builtin_ia32_readeflags_u32
#define __write_eflags __builtin_i32_writeeflags_u32
#endif

Which would be concise.  For smap_save() we can use clac() and stac()
which might be nicer than `asm goto` (kudos for using `asm goto`, but
plz no more).  :^P Also, we can probably cleanup the note about GCC <
4.9 now. :)

>
> >
> > > Why can't clang use the inline asm version?
> >
> > Clang chooses the most general constraint when multiple constraints
> > are specified. So it will use the stack when retrieving the flags.
>
> I haven't looked at clang's generated code to see if it's sensible
> from an optimization perspective, but surely the kernel code right now
> is genuinely wrong.  GCC is free to omit the frame pointer and
> generate a stack-relative access for the pop, in which case it will
> malfunction.

Sorry, this is another case I don't precisely follow, would you mind
explaining it further to me please?

Bill, it looks like Clang is forcibly emitting a frame pointer for
these: https://godbolt.org/z/GPMeKc, is that right/needed?  I thought
-O2 implied -fomit-frame-pointer, in fact I think I fixed that in
Clang for x86 most recently...

>
> IOW, we appear to have an actual bug, and clang just happens to be
> triggering it, no?

We've seen bugs in the past where "m" constraints were used with
inline asm that modified the stack pointer (commit 428b8f1d9f92 "KVM:
VMX: don't allow memory operands for inline asm that modifies SP"),
though I thought only leaving the stack imbalanced (not restoring it
to its previous value before the end of the inline asm) was
problematic.  Though commit d0a8d9378d16 ("x86/paravirt: Make
native_save_fl() extern inline") is what I'm reminded of with this
patch.  (Stack protectors continue to wind up in places that cause
trouble.  GCC folks have patches to disable them on a per function
basis via function attribute like Clang does, though they've been
sitting in code review for a long time.  Recently, they've caused some
headaches with LTO as well.  Once we have those, I plan on adding that
to compiler_attributes.h.)  I would sleep better at night if I
undid/reverted d0a8d9378d16.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkKqkP1qT0002xQnDrByXr_ygvqCmnzZ50vJLDsg6XWXg%40mail.gmail.com.
