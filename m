Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNFZVKEQMGQEKBYZOBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD733FA787
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 22:29:45 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id d25-20020a056402517900b003c7225c36c2sf4923682ede.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 13:29:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630182580; cv=pass;
        d=google.com; s=arc-20160816;
        b=O0gyWuT515f2xYewu6rvnTgzPGkDnMN95RFLKrLEFQjU0pIFHb9liDzTgAq2g7oZ+t
         Heon7deTaYy5PiexGGLXEcnnqQGhL1+080WDNmfRXbtDdx4WfzOid7+ymOJE7jB1vO63
         AajQbVFmdos++y3FooFIdauZ9Yv0Mvf67IJeBOqwrGde/FhVBI/hjfeE3lENuAInNlw3
         rFQtZfAfqCdMqJq/kzCrexBzvbQH6PoYJeciCQsP+YO6xI/xfAA5DjXhRuBKwzjvMhB/
         1Nv2fMiCeEgsYFph3PzCPscQv9wcnzeUA2njDGgD82gqCFAyy/tHCEoLl4OSDroMqCLg
         +A3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=abCaiFuRzJGwKQCtMOZDfHU+GaSwlKRSVUDdBXt+4Zg=;
        b=OxhGsZhUDmir1ewgVXR9tT/8HzAnxAudHcOf8KEQqOMXDZkblonwqcRRwLANrdgPwY
         d/o7pO/jS8eJt6zeSvnYnE5mdd/sZOA2JolvvWVVGPp36rb256Q6npNo1DXvrGv+wjNS
         bNtEykztn6D8djjggKEUeGecmv8Cx6T/HQuDtovaMolZoNvz2Rjnzwjaog33Jj4biSyS
         nX67h3X+6geSxpO23+vPauOBLd7jsOjFeAkstg4k9iChOTFyXIRMJ5JZ5bH2m+pNseD+
         O5VB7dLvWXXVJQ5Q/rmcM4yKXYKG/FAH8SXXT6ecXr0JhLAJDh52q8HKdEZcFtbfssix
         qgyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pj0wbr+X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=abCaiFuRzJGwKQCtMOZDfHU+GaSwlKRSVUDdBXt+4Zg=;
        b=et6xvcseLMUAAskcHS27UBeQxgFt7oITnhNGgCFsVerBNkTr0kOctLbLHAT9IPE6tD
         dlKydByEJ3+hrU6M2D5JhFwVcqaItpTnvayF9AHoZpptS6KLS3/R/mzKD5d5obvIssaE
         akenHa1LNyzRZwtO4gV82kiPTq9ctzS7W6TT8eIeOFxJC/oYGKUoymxV9dppY5HeZ0+r
         OklsZokoalFAUjKJGybyilg2iBJUsSY5sd3iwWBZ8sZzdc5BTRchoDyu4WFppj0sWe14
         NKOs9ds7BZnRvzuDWjvzLrOb3RHAibOGHoMu31Ni8WNjXRlxomqBXkHt3WdbOzJItft6
         kpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=abCaiFuRzJGwKQCtMOZDfHU+GaSwlKRSVUDdBXt+4Zg=;
        b=INGxm8u7B/QDK5zBNdJsSulcduB9/UsZ1HHiIB2eY3DJm8DTuCuasPCMk+UcbS8SR2
         Mi15NcPDIn1W67v3+z4Z0BjpA2yi7e+QLEwpYgkS6c8ZJXj+BBgW9iafT5byuTmxLBtw
         yUnZmSXlttPXamaOBMyavQr9rUVAqrqIo71fKveO+FKF2Clst9rH7ubEV4npXZ8fskfG
         lqF2S4uW5KnFnsRNEVzCDlQ5wO4PUG+mM/v0DqdNmjX5YWqdNEhFGofVMLL8/vEqgyFm
         vbLvVmgk2ZTjui9p4J3w5Jn4x6M0C7TS+ZMSzs8+aciE8LMoK7lL2ykLOm1wyEhqU8mC
         O5Dw==
X-Gm-Message-State: AOAM5334/6UpaR1ZDjzaw/qRDN3U+pSbstX+McujDEOwl0HSlomRlTau
	xUYWyGuziGUyddS2kUFajW8=
X-Google-Smtp-Source: ABdhPJxUAOqN+DJ9wNvfxDn4CeFm3cU3WhLDaq3rBtt958Ph4tI/2SiXSnAP1phQMa52yZRcgxFWkg==
X-Received: by 2002:a17:906:1c41:: with SMTP id l1mr6014181ejg.13.1630182580305;
        Sat, 28 Aug 2021 13:29:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:254d:: with SMTP id l13ls3183319edb.3.gmail; Sat,
 28 Aug 2021 13:29:39 -0700 (PDT)
X-Received: by 2002:aa7:c514:: with SMTP id o20mr8389627edq.318.1630182579464;
        Sat, 28 Aug 2021 13:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630182579; cv=none;
        d=google.com; s=arc-20160816;
        b=mgNLJrx/Go+UywQCqUgJrdIukWHtcAJDs3be2JnGoIyuzmPrTZAv4QxBjYM2oMD/74
         NGzRcZ+otWrDLXjj1+7u93i19ntMxw9H9l+uFTfaPLz8uQpnC1MbxXTgQJgH8lQNqmbl
         jXgmxmVkFHStKl4KggGCSVHSregEJhmvl1H45byo60Lp+W12vVciIJZQY1YazASvNn3b
         JL0raxUlWIZowUsGJsQEsN2xIzqm8MAwSyN4qov/UstN/MQWPP4wryWIOSdw3s1NKQ60
         DCKsGZa60FtinigU8iZAgfypPaDgxYC1UJRe8KezOQf89/BBrJZDDcf90KQK/mInmuUt
         118g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i6qnYlAI6hZNF0EMhOq5iMfxRpQk+atB6ePpX8g/OPc=;
        b=h46cBsoTeiX55rPeTOrUz94zFLokxcVlcG5tPe7m5lHYZyCzeDF+ZPWRr2Qze/W82k
         wOfEj4nM+3rX5vUBDjVD3Mm+0SRaqcvoYUk0wxmACEV2dWGetjsH9J/zosO/1mJXEsa0
         0BC84V4aigaVHbcmVGF2zXn788/HjHRfSNx7VUWj0Xqt/uBq+FVxQ4JXf8L9OkxfuE4V
         IPT00vUPYjs9wepuWd0nF1d2IXT9NQgEmeYp5Mla48bSteMFvBTdISlqQbPymTauR68X
         3T5TVy70iHofIEA6LP/ZKJBxpo8zf580NAllcms7Ix2qOimnEwWNxGGBWDMKzoo47mxU
         8nbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pj0wbr+X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id e20si227841eds.4.2021.08.28.13.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 13:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id c8so9560662lfi.3
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 13:29:39 -0700 (PDT)
X-Received: by 2002:a05:6512:228a:: with SMTP id f10mr3715776lfu.547.1630182578641;
 Sat, 28 Aug 2021 13:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
In-Reply-To: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 28 Aug 2021 13:29:27 -0700
Message-ID: <CAKwvOdnbiLk4N6Qqdz=RT9nsjYQv41XnXK71azYte7h0JqoohQ@mail.gmail.com>
Subject: Re: Nasty clang loop unrolling..
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	craig.topper@sifive.com, Philip Reames <philip@switchbackcompilers.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Pj0wbr+X;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

(We're moving from clang-built-linux@googlegroups.com to
llvm@lists.linux.dev; sorry for the churn, but we think this will make
for more accessible archival and access from lore.kernel.org)

On Sat, Aug 28, 2021 at 11:29 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> So it turns out that s390 had a bug due to its own private 'strncpy()'
> being broken and not doing the insane thing that strncpy() is defined
> to do.

Like continuing to zero the rest of the buffer up to n?

>
> Which is fine - I understand exactly how that happens, and strncpy()
> is one of my least favorite functions.
>
> Anyway, I suggested that s390 just use the generic function we have,
> instead of implementing its own version, because nobody really cares,
> and the generic function is small and simple and "good enough". See
>
>     https://lore.kernel.org/lkml/CAHk-=wjhKNB_1a6wjjPh2PvMrtjVs=DgGY5uM2jq3WBBaYMyGQ@mail.gmail.com/
>
> for details, although they don't really matter for this email.
>
> What matters for this email is that writing that thing made me go "ok,
> just how good does that generic version look, compared to the old
> legacy 32-bit historical version that uses the x86 string instructions
> just because it literally goes all the way back to my learning the
> i386 and learning gcc inline asm".
>
> Because yes, that routine *literally* exists in that exact form in
> linux-0.01 - it's moved, and it has lost a "cld" instruction since we
> now have the rule that DF is always clear in the kernel, but our old
> 32-bit x86 'strncpy()" is horrible slow garbage, but also a historical
> gem from 30 years ago.
>
> But x86-64 doesn't do that, so I just built lib/string,c with clang,
> to see what it could do.
>
> Can clang do better than complete garbage written by a clueless person
> from three decades ago?
>
> The end result is not good.
>
> Clang decides to unroll that loop four times, and in the process
> making the code 4x the size it should be, for absolutely zero gain.
>
> This is the whole function with #pragma nounroll (ie "sane"):
>
>    strncpy:
>            movq %rdi, %rax
>            testq        %rdx, %rdx
>            je   .LBB3_5
>            xorl %ecx, %ecx
>            jmp  .LBB3_2
>            .p2align     4, 0x90
>    .LBB3_4:
>            addq $1, %rcx
>            cmpq %rcx, %rdx
>            je   .LBB3_5
>    .LBB3_2:
>            movzbl       (%rsi), %edi
>            movb %dil, (%rax,%rcx)
>            testb        %dil, %dil
>            je   .LBB3_4
>            addq $1, %rsi
>            jmp  .LBB3_4
>    .LBB3_5:
>            retq
>
> and honestly, that's perfectly fine. It's very much what the code
> does. It's 44 bytes, it fits in one cacheline, it's not horrible. It's
> not what I would have done by hand, and clang seems a bit too eager to
> move the loop end test to the top of the loop, but whatever. I see
> nothing that makes me go "that's horrible".

For the loop test, I know that clang will "rotate" loops in an attempt
to have one canonical loop form. That way passes don't have to check
for multiple different forms of loops if they're all in one form.
This reduces compile time and complexity in the compiler.  Does it
always produce the most optimal loops?  Is that what is going on here?
I'm not sure.

>
> Now, admittedly it's not particularly *smart* either - you could turn
> the conditional "branch over a single constant add" into a computed
> add instead, so the
>
>            testb        %dil, %dil
>            je   .LBB3_4
>            addq $1, %rsi
>            jmp  .LBB3_4
>
> could - for example - have been done as
>
>            addb $255,%dil
>            adcq $0, %rsi
>            jmp  .LBB3_4
>
> which could avoid some branch mispredicts.  And honestly then the code

Perhaps a peephole optimization we can add? (Does the adcq - add with
carry - rely on whether the previous addb overflowed, ie. %dil was
non-zero, replacing the testb+je pair? Did I understand that
correctly?)  Though we'd have to know that %dil wasn't used after
taking the jump, since I think your transformed version modified %dil,
so perhaps that can't be a peephole opt. Hmm.

> that clang moved to the top should really have been at the bottom of
> the loop, but I don't know if it would matter. The above might look a
> bit more clever, but the data dependency might be worse if the branch
> predicts well. The branch behavior is bimodal - the loop starts out
> not taking that "je", and ends up taking it - so it has an almost
> guaranteed mispredict in the middle of the loop, but whatever. You win
> some, you lose some.
>
> ANYWAY.
>
> The above discussion is about *reasonable* code.
>
> What clang actually generates bears very little resemblance to either
> the above simple and short, or the "clever and one conditional branch
> shorter" version.
>
> What clang actually generates is this horror:
>
>    strncpy:
>            movq %rdi, %rax
>            testq        %rdx, %rdx
>            je   .LBB3_19
>            leaq -1(%rdx), %r8
>            movq %rdx, %r9
>            andq $3, %r9
>            je   .LBB3_2
>            xorl %edi, %edi
>            jmp  .LBB3_4
>            .p2align     4, 0x90
>    .LBB3_6:
>            addq $1, %rdi
>            cmpq %rdi, %r9
>            je   .LBB3_7
>    .LBB3_4:
>            movzbl       (%rsi), %ecx
>            movb %cl, (%rax,%rdi)
>            testb        %cl, %cl
>            je   .LBB3_6
>            addq $1, %rsi
>            jmp  .LBB3_6
>    .LBB3_7:
>            leaq (%rax,%rdi), %r9
>            subq %rdi, %rdx
>            cmpq $3, %r8
>            jb   .LBB3_19
>            jmp  .LBB3_9
>    .LBB3_2:
>            movq %rax, %r9
>            cmpq $3, %r8
>            jae  .LBB3_9
>    .LBB3_19:
>            retq
>    .LBB3_9:
>            xorl %edi, %edi
>            jmp  .LBB3_10
>            .p2align     4, 0x90
>    .LBB3_18:
>            addq $4, %rdi
>            cmpq %rdi, %rdx
>            je   .LBB3_19
>    .LBB3_10:
>            movzbl       (%rsi), %ecx
>            movb %cl, (%r9,%rdi)
>            testb        %cl, %cl
>            je   .LBB3_12
>            addq $1, %rsi
>    .LBB3_12:
>            movzbl       (%rsi), %ecx
>            movb %cl, 1(%r9,%rdi)
>            testb        %cl, %cl
>            je   .LBB3_14
>            addq $1, %rsi
>    .LBB3_14:
>            movzbl       (%rsi), %ecx
>            movb %cl, 2(%r9,%rdi)
>            testb        %cl, %cl
>            je   .LBB3_16
>            addq $1, %rsi
>    .LBB3_16:
>            movzbl       (%rsi), %ecx
>            movb %cl, 3(%r9,%rdi)
>            testb        %cl, %cl
>            je   .LBB3_18
>            addq $1, %rsi
>            jmp  .LBB3_18
>
> which is 170 bytes in size instead of the 44 bytes, so now it takes up
> three cachelines.
>
> Now, I don't know how common this is. Maybe this is the only place in
> the kernel where this unrolling case happens. But in general, loop
> unrolling in the kernel is a big mistake unless it's a very obvious
> case (ie small constant full unroll makes perfect sense: if you see
>
>         if (i = 0; i < 4; i++)
>                 *p++ = *q++;
>
> then you should most definitely unroll that to
>
>         *p++ = *q++;
>         *p++ = *q++;
>         *p++ = *q++;
>         *p++ = *q++;
>
> because it's simply smaller and simpler to not have any conditionals
> at all, and just do four iterations statically.
>
> But the 'strncpy()' kind of unrolling is a mistake when kernel loops
> tend to have very low loop counts.
>
> As far as I know, gcc doesn't do any unrolling at -O2.

For clang, we will do limited unrolling at -O2, and very aggressive
unrolling at -O3; if a loop can be fully unrolled, we're likely to do
so at -O3, with a much smaller or more conservative unroll at -O2.  I
think I demonstrated that in this talk, if you have the time or are
interested more in introspecting the compiler (yeah, yeah, ain't
nobody got time for that): https://youtu.be/bUTXhcf_aNc?t=1415

My hypothesis here is that LLVM may not be considering -mno-sse2 and
friends (ie. no floating at all, please) that the kernel uses when
doing its simpler unrolling.  If the monstrosity looks more compact
with none of the -mno-sse2 and friends flags set, then that would lend
itself to that hypothesis.  IIRC, the middle end does loop unrolling
in a non-machine agnostic manner; it has to know what's the basic
width of SIMD since we'd generally like to vectorize a loop after
we've unrolled it, so the pass is aware of specifics of the target
machine (this is exceptional to me; I understand why it's necessary,
but generally the middle end optimizations are machine agnostic).
Then later once we get to actual machine code generation for x86, we
discover the constraints that we can't actually use any of the SSE
registers and instead generate more verbose loop iterations using
GPRs.  Likely, the middle end unroller needs to check that -sse2
wasn't set BEFORE thinking it has the green light to unroll a loop x4.
But it's just a hypothesis; I haven't validated it yet, and I could be
wildly wrong.

>
> What is the magic to make clang not do stupid things like this? I
> obviously know about that
>
>     #pragma nounroll
>
> but I don't want to mark various unimportant functions. I'd much
> rather have the default be "don't do stupid things", and then if we
> see a case where loop unrolling really matters, and it's important, we
> can mark *that* specially.
>
> Hmm?
>
>                 Linus



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnbiLk4N6Qqdz%3DRT9nsjYQv41XnXK71azYte7h0JqoohQ%40mail.gmail.com.
