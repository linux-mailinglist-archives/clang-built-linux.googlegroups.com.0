Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHHKVX2AKGQEGGETFKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 546F919FD2C
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 20:29:49 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id g13sf620058qti.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 11:29:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586197788; cv=pass;
        d=google.com; s=arc-20160816;
        b=x1eEdTcqN/GQNiTEJhO1iwokVtV5g6CqSwrgh2nq592dZ1xAyWQwRKWOiFt9m9J7io
         ihpFmQ9rKYkRJR477GutTGWrRUGv9dk6YupOgQB18bmXhpd0ziZUaB1BE7ff/uZf7fIj
         DedO42okhmIyXl8dwt0SzOyWgN25+TOpKOyucnLoyayu6kVSa+nmy/DaNImbmkzwwQa2
         KhVmFXjGJYB6CW4nsFt5RZA7FnRq4Fm6lk2jLfDDWDJ7HIXJbLapGqsPMyCXNuDcvCUM
         wjitdzm859QryoNkOr40rb2CO+jMhF5uatWFbw6HkYI7fqYlXHbCV+8w33kSYi3ZHqS/
         wngw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1EirwAGjuZyAnY90ZYaM5PWB7JJ4/E/i81wV79+0WbQ=;
        b=ZY1cFP/llPBtrMsa6+r7tvwPVvYlpLR9B9fWxQPHeB0kpWNAMhvMGrYwhNaJ6oMVTT
         lB89tmmX5+QTFh+nN61rxqBO7wPTywSnVl78WOl874sEEbO9sKFQfVnSSMArbtpdExBQ
         GxUhb1yuOwS3vhjE11bQcgA6r5Rk45PIbtqHKdXPL/niDtQp9/YN7VQUAesKW2zS9PFh
         ynCOlFG9qj61pR7La1vI/oJlgF2j5wiXwtb/0E58TWp2uSj+NVSSPEckKVIs9fEz9jCa
         ScMzJO5EWwYNiTvTkFQop75ExlqbBauxbn/QAenErlGcGpPxafcoaHZjRXByBthqdhJF
         29fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aAOSAIrD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1EirwAGjuZyAnY90ZYaM5PWB7JJ4/E/i81wV79+0WbQ=;
        b=BgVN91AKLZi3rG2v/ELLgeRh5eLXeTG+UhME6eKdWG9MBOC9TGUCJEl8J9wfocy44q
         TbtYn1iv1KvC24b75NBXQn9TE9scB2O4EVkvCJYedW605KKQrUofmIjq+GGL7Uy7mlLI
         BhUf43OTEzdm8/Qk8Ns23KJPGkYmmk3RkF3ZQiwSW42CPkVv3X7RYCSvXJDpq2xK2v6u
         A1y+386sgrSRAGj0LdOnbC0mVTPoRnYXII6BOp1uqCuB1LA4vtkrpwSc6rEhq6CrW6IW
         BBK1xS7kMHhF+Vjgln40AypWGPJfRSSGInMhzGplaLTh+jRCEs5DFkiYptj16A5YT0ie
         d/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1EirwAGjuZyAnY90ZYaM5PWB7JJ4/E/i81wV79+0WbQ=;
        b=Qi7CsyRD/u4yEFczrvBZC6ndnYkzRq+GQuF0QYfiKIOEe/jtww0gTURlHTUN+O1DdZ
         s5/DFdIH3gKXgIYKxFSsFksS+Sx32CaGkk2BoqixBROPaiCIzvK+/eWXCv0dHBKeR/Ks
         9R426XN5QX7TW/tV9QGo3HDNH13jwn/twyFd7/Jird7nVwJVgSge8ZTZWr7ptxmUYv8r
         7HE+FOa8mCrHMm+j0kijn6UjLnz7+OqJAX7sKHM8vvwydo4R7s29mRBxSN4NGZBZnEUn
         BWyG/Z4cgMCwxXzLa0dvwuuQ7jxj2MRI4da/+Bda34KsEv+QDWRYBjQA4q7f9WDqhFEA
         +k+g==
X-Gm-Message-State: AGi0PuYo3a6PdBxdrZWauk250VI2u6PIfYV9rlmRQf1JgxJI3I1TY3eu
	43TQ/L9DnPTK6eyQGTlAZ+I=
X-Google-Smtp-Source: APiQypIxwUdEZ2YBOOzzlHFTiQe+lWCVhPfFRCcK4Df1hONWUzfnqPvzUU7ixPtlzMkOYZk93Hc+2g==
X-Received: by 2002:a05:620a:2141:: with SMTP id m1mr23191517qkm.231.1586197788342;
        Mon, 06 Apr 2020 11:29:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2354:: with SMTP id i20ls164675qtc.0.gmail; Mon, 06 Apr
 2020 11:29:47 -0700 (PDT)
X-Received: by 2002:ac8:7752:: with SMTP id g18mr837022qtu.125.1586197787873;
        Mon, 06 Apr 2020 11:29:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586197787; cv=none;
        d=google.com; s=arc-20160816;
        b=OTFbDn9vbQKRkqiyegIb/RSjodW5WMytZGDvETtT+tMLZpnbeUt23e0d8iL3E4M6lc
         l+w9rVOFi9xW899a1Q7ff/iWzSLLuB+rBl58+3hbDi8Hr1BT/o4wFzijqxA1Kw+27jRU
         aY40dSsc7c7IrrTurJSsfXqYXXLISk6/2l4Lf5W3/CjQZh8iW3JOhjm28At/n355C9o0
         EqzrCyeHH9BQ1AidomfIaF5LqsNFoVS8aYTxKmM9VK/kGk2JTcPh4JaVehehwsNpzTIO
         OGIk7PJZ5IDcUdp2tqZOF4xqOeKPA1SNzbbRuyxeN//HyIiOMMTmoF3lL2KwiadSlbvL
         q6qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bzgH14cowT5NOH2YXPfOKwZ5lmbgMroAquim/LRzAhU=;
        b=C/a7kzllmkvFQgSxuGb5W257mKx0hkriNpI7p3bLgei7X27g971esjztBD8JiP/kn4
         Nf+bKQK3KLSH0Yh61Q/6gbn12hu5N+6jYzNrz/WDxw9SexGE2bKuHaPxe2dmNdtBK40Q
         WwV8HDb7JpdSY36x2Br6Bbmq4SQxzDiBXqiE2G4j3shdUOSQRS5IOvLbU+x0eFNNg85r
         dC/VSuwur48/xwZ41FMKxOHYdCKf2R6E1Oj/3+BxElrWaAh0VotSzAEUysR7aCA1e6Bf
         Y5tLxShFzmhQ/GAyj4xD/wnAhI5diUZlvO20qDvBC23zYnw7vamkdLv3BvZtwo35krq3
         Vmdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aAOSAIrD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id z126si66265qkd.2.2020.04.06.11.29.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 11:29:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id fr8so220538pjb.1
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 11:29:47 -0700 (PDT)
X-Received: by 2002:a17:90b:3783:: with SMTP id mz3mr579681pjb.27.1586197786666;
 Mon, 06 Apr 2020 11:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200324135603.483964896@infradead.org> <20200324142245.819003994@infradead.org>
 <20200406010859.bcfouhukcgmg2on7@google.com> <20200406110438.GJ20730@hirez.programming.kicks-ass.net>
In-Reply-To: <20200406110438.GJ20730@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Apr 2020 11:29:36 -0700
Message-ID: <CAKwvOd=hjh_MXDR05A5A8W3NwYSAwzf_ALYKyiAD4nRo1caKqA@mail.gmail.com>
Subject: Re: [RESEND][PATCH v3 09/17] x86/static_call: Add out-of-line static
 call implementation
To: Peter Zijlstra <peterz@infradead.org>
Cc: Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, bristot@redhat.com, 
	Jason Baron <jbaron@akamai.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "H.J. Lu" <hjl.tools@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aAOSAIrD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Mon, Apr 6, 2020 at 4:04 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Sun, Apr 05, 2020 at 06:08:59PM -0700, Fangrui Song wrote:
> > On 2020-03-24, Peter Zijlstra wrote:
>
> > > +#define ARCH_DEFINE_STATIC_CALL_TRAMP(name, func)                  \
> > > +   asm(".pushsection .text, \"ax\"                         \n"     \
> > > +       ".align 4                                           \n"     \
> > > +       ".globl " STATIC_CALL_TRAMP_STR(name) "             \n"     \
> > > +       STATIC_CALL_TRAMP_STR(name) ":                      \n"     \
> > > +       "   jmp.d32 " #func "                               \n"     \
> > > +       ".type " STATIC_CALL_TRAMP_STR(name) ", @function   \n"     \
> > > +       ".size " STATIC_CALL_TRAMP_STR(name) ", . - " STATIC_CALL_TRAMP_STR(name) " \n" \
> > > +       ".popsection                                        \n")
> > > +
> > > +#endif /* _ASM_STATIC_CALL_H */
> >
> > Hi Peter,
> >
> > Coming here from https://github.com/ClangBuiltLinux/linux/issues/974
> >
> > jmp.d32 is not recognized by clang integrated assembler.
> > The syntax appears to be very rarely used. According to Debian Code Search,
> > u-boot is the only project using this syntax.
>
> *groan*... I was going to use it in more places :-/
>
> > In March 2017, gas added the pseudo prefix {disp32}
> > https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=86fa6981e7487e2c2df4337aa75ed2d93c32eaf2
> > which generalizes jmp.d32  ({disp32} jmp foo)
>
> That's all well and cute, but I can't use that because its too new. Not
> until we raise the minimum gcc/bintils version to something that
> includes that.

If it seems like it would be useful, let us know.  If it doesn't have
some ridiculous baggage or inconsistency or unspecified behavior,
we're generally happy to do so.  We have finite resources so knowing
where to focus our attention helps us sort the never ending TODO list.
It's not easy to predict which feature we'll need to drop everything
to implement next, so any help there would be much appreciated.

>
> > I wonder whether the instruction jmp.d32 can be replaced with the trick in
> > arch/x86/include/asm/jump_label.h for clang portability.
> >
> > % grep -A2 'jmp.d32' arch/x86/include/asm/jump_label.h
> >         /* Equivalent to "jmp.d32 \target" */
> >         .byte           0xe9
> >         .long           \target - .Lstatic_jump_after_\@
>
> Sure, but I was hoping to move away from that since all assemblers
> should now support jmp.d32. Except of course, you have to go ruin
> things.
>
> The thing is, jmp.d32 reads so much nicer than the above crap.
>
> Also, I still need a meta instruction like:
>
>         nopjmp $label
>
> what works just like 'jmp' but instead emits either a nop2 or a nop5.
> I tried various hacks to get GAS to emit that, but no luck :/
>
> The only up-side from that new syntax is that I suppose we can go write:
>
>   {disp8} push \vec
>
> without gas shitting itself and emitting a 5 byte push just because..
> Except of course we can't, for the same reason I can't go around and
> use:
>
>   {disp32} jmp
>
> in the above code.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406110438.GJ20730%40hirez.programming.kicks-ass.net.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dhjh_MXDR05A5A8W3NwYSAwzf_ALYKyiAD4nRo1caKqA%40mail.gmail.com.
