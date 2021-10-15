Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2VFU6FQMGQEJCZ7OLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B742FBCE
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 21:13:48 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id i1-20020a056512340100b003fdd5b951e0sf496811lfr.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 12:13:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634325227; cv=pass;
        d=google.com; s=arc-20160816;
        b=E21/FWGd2/Kn2zF3D19QFLBAuLNJvT2pzz6282jaYhhDWYE2z76kBfBPiVSsKkVRuF
         vXx4LkfVtcrpzDO6JMr7CKIIJfQ1GS23lyw41VwRUr4PxkEyWSIYjHqJxEURToHtRDuU
         l49vElATDbiLb8s9KBQwF+yEtmTSmtYgJCVeCa+pHVKusKxvwhrjbQ49U7+BKbjeOvX/
         7SBeKYzYcd1BNaxaBj0fSZG8L/yH0Yb1H5PyuP3pTW7Y2UlKuuki8NpQpEUiSnLIbaDc
         WUmaCFMe0dgq8NvRtu1QM8VtHzqltLfljZ+ihFgwL2UU3QPx4q0aQ1UYsfiImZThm77z
         cZ3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1M7YudBkEe7OJ4bvBlfaCmeo6t21XNv9TSWaEH2Fuqs=;
        b=K0RoHQN+U0Ms8TCOptvUFSnNYPs+L5Bnkg2bb6sIOFlr2zZ2WgAw7TLtcShPzUo1yN
         KnkyOWzLGV0yUcmsO0zrwxHDPmHqrtBn0kEWplxUMlHw0VGf9gpeBJbty6Bdg3RHRNZ+
         O7DniHPgSuM1NPRsmRulOtk5vCddt4Pzeq8hTXiVtoZCLMXOO5s2uHjMvDKOPMIPriSh
         T0YtJOQfb72AmhgoL9a85vIC+BMeetBZmjskKGOAvOE2PbBgyiaZnJqZXTUAY0Zlgp17
         7K1i2IS5z7qLPprKGn74KlAPgr9VjH9eR/m/Rp9ApDMLv2SjfdvK/JA97GgEgwQldIrS
         JmnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="BA/5lSdu";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1M7YudBkEe7OJ4bvBlfaCmeo6t21XNv9TSWaEH2Fuqs=;
        b=oUEf4MDMdWjK6naZCvqWblTHkPtauY9iBhnfBiazkAUdzg0J2dZxAiVCEJuDwW5q8k
         53lauWQeXMrf3V083sSXvIm2uKpU98bJg+CqFCXR5OiK5IVP5DPOOnMbXDT3DTqjoFCi
         P0hfgTQ4aAjRIhrmV6n5rYHUCOdUawybNiRmG3TtQtOFWgGok8AOgSGM1WrCRQ7MoHqs
         y0qXMdtNEf+sfQKJ4IRsX6D/FaHweKBuZTW+sbBYsZzn0Awjq7Q4MyuqBk3uUUBvytXx
         hVRlhNMghBCBV0buGMEqIzzoeTJOidodBoNMexdT7HOcb0BerlSOcYyT0LeRO0d/gxbb
         ytWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1M7YudBkEe7OJ4bvBlfaCmeo6t21XNv9TSWaEH2Fuqs=;
        b=gUUmyloslhfRv+uGPmoZDX3lQotCGdNEBpj5g443opU9zJxWmC3H7DC5zrn4uWzrFK
         jYR868TULldv3sxuI4zVTxVJJh6JExc/+TFCygcfjW2j4OzEzvz+XagEYG11nUjK1VS+
         dlK90TgpQbakRpHQlstkU1kke6QolMFJCfZW62rCDziGnJWlSXmAx2qcBkEOdhUxDoG6
         jWXgN0Ii/kdlgifo6Zlihp8W6/zsMYTy0/4vZaEBSVBII9saj0XnC8uHXmzNBhknW3XG
         I3sSuAJhC8KLkd1IxHiYxO3MT/Ij1EmSzF1d2nK2MOg1BFJ86N43bt8QY1G3OlNdYEj5
         AM4w==
X-Gm-Message-State: AOAM5302EcMhGQd+R4cPBHgJCQSltiPuV5FJJxpxRKQBAHe4en4bU2d+
	f9ETVEzipNR6Mrq3H1q5wGg=
X-Google-Smtp-Source: ABdhPJwAua/fKwRtRX0ZVOVjctMRMz3Pe4NBWKMwlpJpFQQig5FL1bO0jcbBzBGdxj9LfAyKUG1RPA==
X-Received: by 2002:a05:6512:30f:: with SMTP id t15mr12304530lfp.64.1634325226420;
        Fri, 15 Oct 2021 12:13:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls545856lfr.0.gmail; Fri, 15
 Oct 2021 12:13:45 -0700 (PDT)
X-Received: by 2002:a05:6512:3181:: with SMTP id i1mr13983299lfe.29.1634325225153;
        Fri, 15 Oct 2021 12:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634325225; cv=none;
        d=google.com; s=arc-20160816;
        b=lHC23qkzY9ezJFkx/aTyoK6Ab2W86Sj5I5sNFtIUJ43I11eB22oPDP/DttgF3MiXeb
         hiAy/e1k+8akFCTqU/0NpgIBqZbj16ianUSHDpidibIZNd/DaS+yBXJ11cuVUWy1R+E5
         by0ONrB1XTVMsDp+APpDN4ABnu37beAEDcn+Olt8QE2kGynJN5zQyt98b+03/V1u8Fj7
         DgQWSYzEwOZzC39BaDGvHULY1WfEurOI8G/SjtLYIOUb/A7w9a/seMb3tVyiwQS6pkLV
         ISALKSHGKLHHC3vRF+IZcFe98AW8pbCkK2ZIezIojicKwB2wRxLeVG1GYDDLPBAqiGel
         by5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HBzr0B3tGGPW4EBa2LvZed6scqvnq5Oml+sl03YQDio=;
        b=0NFv9tvBHwJJfKXlByEcIgd0lDl+LC4z1U9Gkq3cXaWRgReu7WR78kO9UzH1/EPYhN
         g8SmMiyjbm0JGZSWU81tI7XqsM5rdN2Qy3dmjxzrfeyvvcGwzhXYnHX0tMkkoaq6ZnPm
         QeV2oZdM9RV7h9tAOzaDSk1L0C8qBGZAP7KjAOasH1eUEFIwY9PavV5PbJQdNF6tG7BD
         Lklv/96vnChICKuYk/OhtphwegyusbhcGmq2EvQqdCk4GGkvfwvmNi7aJmy2GwbrOYm+
         AwwLdJRVInSVKDLPzMkzrVCF7bjo7Ej0PZW52w0Ae5q6vagwz1W3+JuR1wt0RVcTx9Qy
         5IyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="BA/5lSdu";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id c35si420784lfv.4.2021.10.15.12.13.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 12:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id z11so44414536lfj.4
        for <clang-built-linux@googlegroups.com>; Fri, 15 Oct 2021 12:13:45 -0700 (PDT)
X-Received: by 2002:a05:6512:3ba3:: with SMTP id g35mr13415925lfv.651.1634325224740;
 Fri, 15 Oct 2021 12:13:44 -0700 (PDT)
MIME-Version: 1.0
References: <1634167668-60198-1-git-send-email-ashimida@linux.alibaba.com>
 <CAKwvOdkv70XDdK-k3n4ycFQsz+h7V-sTiH8RuxxaLofp-okweQ@mail.gmail.com> <722d9662-e27c-2efb-e8cf-d505b6950475@linux.alibaba.com>
In-Reply-To: <722d9662-e27c-2efb-e8cf-d505b6950475@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Oct 2021 12:13:33 -0700
Message-ID: <CAKwvOdnMvBP-1=YbXTpYOgWqCBy44tUvWdtMXp8p485bYnPYNQ@mail.gmail.com>
Subject: Re: [PATCH] [PATCH V4]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, catalin.marinas@arm.com, 
	will@kernel.org, keescook@chromium.org, nathan@kernel.org, tglx@linutronix.de, 
	akpm@linux-foundation.org, samitolvanen@google.com, frederic@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, yifeifz2@illinois.edu, 
	rostedt@goodmis.org, viresh.kumar@linaro.org, andreyknvl@gmail.com, 
	colin.king@canonical.com, ojeda@kernel.org, luc.vanoostenryck@gmail.com, 
	elver@google.com, nivedita@alum.mit.edu, ardb@kernel.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="BA/5lSdu";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Fri, Oct 15, 2021 at 11:29 AM Dan Li <ashimida@linux.alibaba.com> wrote:
>
>
>
> On 10/15/21 2:44 AM, Nick Desaulniers wrote:
> >   On Wed, Oct 13, 2021 at 4:28 PM Dan Li <ashimida@linux.alibaba.com> wrote:
> >> --- a/include/linux/compiler-gcc.h
> >> +++ b/include/linux/compiler-gcc.h
> >> @@ -50,6 +50,10 @@
> >>   #define __latent_entropy __attribute__((latent_entropy))
> >>   #endif
> >>
> >> +#if defined(SHADOW_CALL_STACK_PLUGIN) && !defined(__CHECKER__)
> >> +#define __noscs __attribute__((no_shadow_call_stack))
> >> +#endif
> >
> > Cool this is a nice addition, and something I don't think that clang
> > has.  For any new feature, having a function attribute to disable it
> > at the function granularity is nice, and plays better with LTO than -f
> > group flags.  Though that begs the question: what happens if a __noscs
> > callee is inlined into a non-__noscs caller, or vice versa?
> Thanks Nick,
>
> According to my understanding, all inline optimizations in gcc should
> happen before inserting scs insns (scs and paciasp/autiasp use the
> same insertion point). Therefore, the check for the __noscs attribute
> will also occur after all inlining is completed.
>
> As in the following example:
> - Since __noscs attribute is specified, scs_test1 does not insert scs insns
> - Since normal functions scs_test2/3 uses x30, it needs to insert scs insns
> - Since __noscs attribute is specified, scs_test4 after inlining does not
> need to insert scs insns
>
> __always_inline __noscs void scs_test1(void)
> {
>      asm volatile("mov x1, x1\n\t":::"x30");
> }
>
> //scs insns inserted after function inline
> void scs_test2(void)
> {
>      scs_test1();
> }

That may be surprising to developers.  Perhaps __always_inline on
scs_test1 is distracting this test case, but I suspect it may not make
a difference.  This particular issue comes up time and again with
stack protectors; ie. the callee is marked no stack protector, then
gets inlined into a caller and suddenly gets a stack protector.

>
> __always_inline void scs_test3(void)
> {
>      asm volatile("mov x3, x3\n\t":::"x30");
> }
>
> //no scs insns inserted
> __noscs void scs_test4(void)
> {
>      scs_test3();
> }
>
> ffff800010012900 <scs_test1>:
> ffff800010012900:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010012904:       910003fd        mov     x29, sp
> ffff800010012908:       aa0103e1        mov     x1, x1
> ffff80001001290c:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010012910:       d65f03c0        ret
>
> ffff800010012914 <scs_test2>:
> ffff800010012914:       f800865e        str     x30, [x18], #8
> ffff800010012918:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff80001001291c:       910003fd        mov     x29, sp
> ffff800010012920:       aa0103e1        mov     x1, x1
> ffff800010012924:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010012928:       f85f8e5e        ldr     x30, [x18, #-8]!
> ffff80001001292c:       d65f03c0        ret
>
> ffff800010012930 <scs_test3>:
> ffff800010012930:       f800865e        str     x30, [x18], #8
> ffff800010012934:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010012938:       910003fd        mov     x29, sp
> ffff80001001293c:       aa0303e3        mov     x3, x3
> ffff800010012940:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010012944:       f85f8e5e        ldr     x30, [x18, #-8]!
> ffff800010012948:       d65f03c0        ret
> ffff80001001294c:       d503201f        nop
>
> ffff800010012950 <scs_test4>:
> ffff800010012950:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010012954:       910003fd        mov     x29, sp
> ffff800010012958:       aa0303e3        mov     x3, x3
> ffff80001001295c:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010012960:       d65f03c0        ret
> > I noticed that __noscs isn't actually applied anywhere in the kernel,
> > yet, at least in this series.  Were there any places necessary that
> > you've found thus far?
> At present, I have not found a function that must use the __noscs
> attribute in the kernel. I have only used this attribute in test cases.


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnMvBP-1%3DYbXTpYOgWqCBy44tUvWdtMXp8p485bYnPYNQ%40mail.gmail.com.
