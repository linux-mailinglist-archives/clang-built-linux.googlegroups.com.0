Return-Path: <clang-built-linux+bncBC2ORX645YPRBHONTGEQMGQE6BXCB4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFD53F796F
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 17:49:50 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id 98-20020aed316b000000b00298da0dd56bsf12876578qtg.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 08:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629906589; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJgOMiHV17/Sith/ckLreXtzpWhHw9tie1TzILTEn+MYv9x76NQcq+GkWU3nQgfEwS
         U7qC5PSe9QUAR7Bzbj0XP7WNGmBnQoxhwr6nl1cZmampoYOqXoFOKU6jVfEQvImByY6a
         2TKlOsY+cRDldt9CtGWG1vIuz3hhxMc8cLUyisT/aKdqrYyF98TS36iilLH+/2xYmpf+
         XjrT/Cw5lLcFYHcex++FT6ohuxym0X+z2mniJkT/rVWCFhq4nAgXuHWvY7P0g028CVWz
         qkYjHrAM7mAVz85B2/55dLnR+Sp95p4+1+wT8YO4vF32LJkkXBqdUQOoJxvVi0ppy/u1
         +Ypw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rgmtzaQ2v6q5N3YkBGYD3Beh9CAi3Msu2NWvU+2EwvI=;
        b=s+Yq2iGLypCCNlKkblLByMFDREGXA4nkPYVo+Bn/S75h1izcEs8V20534XYabDp+vg
         SZ6UcLKDzN94608LwR9IEz43+/tJZKCNmWeCUh4MPLOukcJ7ujrh2dTrOci8XscdmgY9
         v+XOUJ29gavzqEGNkCEPpIC0JnL0PX0GWIio7IV8R8/jTLnETdSIcGuQKWMk3rLtWqpl
         zWig2sxbUiNYSApVIrb2jMQs0bj3Xg7HUeEDEP3bu6KIXeDzkmyhcMlrD1Crt3I8g3wH
         pHqfDFdZTEocFM/JwVmcV/NwFTEPGP+kldnmO66RxPg6wl9WeW4s/ZA2o1X8LTEzcZhH
         TUSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Peytc/M3";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rgmtzaQ2v6q5N3YkBGYD3Beh9CAi3Msu2NWvU+2EwvI=;
        b=WAbMqXtagUiFVZ0W1se/N+/H6uIosBRw0p0QfEc+XYYM97gng4gVnjqbpxvwlRGqXy
         O5oefO/Sv4c5alRzFw//DuondS5PPmZl+ZgWqf8DxHNr5pUJ7eVOcSiWbUahMoCZvR0w
         sCnhhIbZtNIGf4ejCWtHFhrh13bflPHEJFnnNSXxtcWYHZQC8VFUI5KyeprvVtDVss4X
         7mEFp3JECtkk04u+le0/u8SGV7xltAVZq+D86VojJcQ8L792uXBN6tUAlKIj+SPJepfi
         a5bs1hJdVj3KPe1XobGkFzpU4hNCXWieb+BW7mIEdGXmh7bEN7tPhlYo0dJRgbXvayXx
         +Fdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rgmtzaQ2v6q5N3YkBGYD3Beh9CAi3Msu2NWvU+2EwvI=;
        b=ltcp38bNdyV2BO3KgsDzlpKegqmWfBWeCp49z0vc4mb0QCW+K0NugycUp/9YW7oaYZ
         gjnMK6HvpCGtM+YBQ3eMcDxjwAesjMExAc4oflFeNydgrfPpn8NZXbvP4UA/irqkFvX0
         GqvaXxy2vnx0yshHM61rTt4iQ6Ghge2erzaJX6hj9fjYUQcC4gd7QBXKKcY6aEmDPP5P
         3uIsgDykrjX/3FQDY+czFy48J/Abmr5XWiiBa+0KVxzQv86NUMV6zTS/8GTtWePKfa3j
         BO5VZy+iU4xosxPY4xpSXXURthEri4/HjDGIpSMmOvo6jUwOmOnQ+90LoQTDJvFFTHYz
         p2ag==
X-Gm-Message-State: AOAM531G9CufrFraGK4hB/Oq2LwCwKpdZKRkDs6WI84wA8a8kitivWM6
	iGMrbk54o6DG23dH7Ar7rlo=
X-Google-Smtp-Source: ABdhPJyzrT8eUASdLrWWl7EAMUrEnibiGhrapBZkn8l2+bdK+DZAMUhVyodnkD7iHGsxJGzzC2aCWw==
X-Received: by 2002:ae9:ebc4:: with SMTP id b187mr32425736qkg.303.1629906589507;
        Wed, 25 Aug 2021 08:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f81:: with SMTP id t123ls1411614qkb.6.gmail; Wed, 25
 Aug 2021 08:49:49 -0700 (PDT)
X-Received: by 2002:a05:620a:1210:: with SMTP id u16mr32310339qkj.390.1629906589021;
        Wed, 25 Aug 2021 08:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629906589; cv=none;
        d=google.com; s=arc-20160816;
        b=LS7bmas7HPbOj6FNFYqbcscikEcqBbM+njNNLTLKw0ckT8MVorO+4ILW/MYdlV+eau
         eyWlVKMePIn2r72dHbgndn+GVwSbq9rn0ytK1WD2/MIMyfxkBppivcJ0G/esX4uXTR68
         jMu2wU4uTKsv9ZhTyRPWcn3CF1JEp/eXq12mj4LXId3BhHRxFR9ubiFlsAwt2dJSmKaC
         KDFVcKfGvERO14B9xKtXgYJ5Jt1s1l2s2DU2k//w6uYqd0SMb0agUegiJ908KEjjXad7
         Yd8OgVbcaj4Foh5t3C35aUsJQzHOyzlTeUJUmhBuYlwKhvRvDXy3OpXFmbIo60e/T3Cj
         pFGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CmSiaPcuPj0OC9Van/3kI9pixgS7KKx7iRvuRFfLqzs=;
        b=F5VJMLuLe7ULCGUVuLiTmXC1U17CVZPkAkfEoOWvDZATpIUXptIo2hIfSGW+OYNlNy
         ZP4NEnU8WVknmiW0Mx/qtQmp3kRar4JsH9qCeX52nleMYBEidam69TPLZ4KrdHiQXA1N
         8oS9eDxAOrCnvbNQFexLZX9r3uMndv98q1dHYusI1bFZteVTz2TTd2rqKZG5ir9ADEAD
         hw5G6zKyLns0YpTuuEFgcV/iavZK/p8lAIts9g7rBIeE5Z1YX5iU2q35PXTJYZ56Pvme
         8hDaPRA6RvN7XKfnlrRifVKR1UwgilRK8kg2mK3eYbFTJTJ191wYmKpu5oP4Pkc3Od6C
         SioQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Peytc/M3";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id b1si19919qtq.3.2021.08.25.08.49.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 08:49:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Received: by mail-qk1-x735.google.com with SMTP id bk29so22069184qkb.8
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 08:49:49 -0700 (PDT)
X-Received: by 2002:a25:1c06:: with SMTP id c6mr10632452ybc.498.1629906587436;
 Wed, 25 Aug 2021 08:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com> <20210824194652.GB17784@worktop.programming.kicks-ass.net>
In-Reply-To: <20210824194652.GB17784@worktop.programming.kicks-ass.net>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 08:49:36 -0700
Message-ID: <CABCJKud6JBk0QP0aSqM3ptRqbZLfKpfsHNF0RcTq4L-rbc7+uw@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
To: Peter Zijlstra <peterz@infradead.org>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Peytc/M3";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::735
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Aug 24, 2021 at 12:47 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Mon, Aug 23, 2021 at 10:13:04AM -0700, Sami Tolvanen wrote:
> > This series adds support for Clang's Control-Flow Integrity (CFI)
> > checking to x86_64. With CFI, the compiler injects a runtime
> > check before each indirect function call to ensure the target is
> > a valid function with the correct static type. This restricts
> > possible call targets and makes it more difficult for an attacker
> > to exploit bugs that allow the modification of stored function
> > pointers. For more details, see:
>
> If I understand this right; tp_stub_func() in kernel/tracepoint.c
> violates this (as would much of the HAVE_STATIC_CALL=n code, luckily
> that is not a valid x86_64 configuration).
>
> Specifically, we assign &tp_stub_func to tracepoint_func::func, but that
> function pointer is only ever indirectly called when cast to the
> tracepoint prototype:
>
>   ((void(*)(void *, proto))(it_func))(__data, args);
>
> (see DEFINE_TRACE_FN() in linux/tracepoint.h)
>
> This means the indirect function type and the target function type
> mismatch, resulting in that runtime check you added to trigger.

Thanks for pointing this out. Yes, that would clearly trip CFI.

Any concerns about just writing a magic value to the slot instead of
pointing it to a stub function, and checking for it before the call?

> Hitting tp_stub_func() at runtime is exceedingly rare, but possible.
>
> I realize this is strictly UB per C, but realistically any CDECL ABI
> requires that any function with arbitrary signature:
>
>   void foo(...)
>   {
>   }
>
> translates to the exact same code. Specifically on x86-64, the super
> impressive:
>
> foo:
>         RET
>
> And as such this works just fine. Except now you wrecked it.

Sure. Another option is to disable CFI for the functions that perform
the call, but I would rather avoid that whenever possible.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud6JBk0QP0aSqM3ptRqbZLfKpfsHNF0RcTq4L-rbc7%2Buw%40mail.gmail.com.
