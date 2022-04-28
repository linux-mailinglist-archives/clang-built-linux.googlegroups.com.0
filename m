Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBB6AVGJQMGQETW3F63I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D25512F74
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 11:36:08 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id y7-20020a2e95c7000000b0024f29bcd594sf1564118ljh.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 02:36:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651138567; cv=pass;
        d=google.com; s=arc-20160816;
        b=iyUUXb+HtVXjEggQP1q4laC5/J79tgfoLmz/eU0VY9afNbx4cYjfb0vFTs8M1c/bpZ
         L5ouP4IhwUZRjzRE2Et8FJafLo58f5TUktQJsWusQKU8V0PHfOJ6Pc/VX4WtirbpHxuv
         7MaFrNMK0bYCtnGHYwhinkIa7LWoVvA85icFqWdsZSIBtlpxfhjnzj0jItPCrhdTannI
         NF0yCrwSr1ddxx7GqtZVfQ5Z8fl47eivF+2liKNEkKPrS9v/sExJ8RJZVw9JxszQR4Ka
         kJMSNOzT3h24CRV5S73YMup219qOeGC5qzwa2swXA0PbZavIW1AANBGvkVbZO6wW+8QP
         8tiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0ZDs230iXwGBPFSLVPBd8uzSG1zissLZmKgp2AaMYM8=;
        b=0KD2Q/LavnRO9BSG1dVHwyAggNcURCek+7Njh8dHdqCDiZmD0k7J4iygtqKeSAdLOh
         eGjXQNQFqTdn9rfcyfvS1E0fFFk2ezAbziYfi0THVH70qKjQWzJuexN4lGW0mDCJjISF
         rS+EnkuGZQqH0jabSNLO9uWWwF7tMi3rgL5/3f+nnPr5vbOBoIXjIkQK01z98T7SjaVJ
         8Sm7grQZbctLaf1Ddg4gkU9Ch7hKokx6U78gwX8qoB4FnJk2YA4l8vXY+sn5D7NLrlof
         MdhxebXKGeTJvocNMS+04GEN84SJkuz/L5l0k8sShBaMswaqNJVbXBRoBzhkayFIR8m3
         c1bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hIzQdLCu;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0ZDs230iXwGBPFSLVPBd8uzSG1zissLZmKgp2AaMYM8=;
        b=Y5EoKe69r3GvuW8gnmIsR/wZ4+dUjepbb1WmS1QHhCJLJdgBlzQ6sFj5787tgwVjYe
         bOCeRh8jTFEjlrlHV6gASDJ50VK5OiWKzDA9sbMqUtNCgGTSw5tBTDGJILikr7M4U58k
         RkfxGmbcffotx1m7lPDF76nBakdlLGeM1h8ODxCfcjqg30cCvVkg5Ac/d+cMRwZpw6vh
         VXQnd5ujOYpDlmodAUW7vmxfUR+p+yZcA9SHxMuVnZcntKC9w13y+HPtnNJ52kQiUgR5
         smoDNJ622D2QCLg5x1u//TAYQCtL+COBPpgEDyFHPHicJLdSYKOFiE+zLoCWL0RVkxy1
         wITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0ZDs230iXwGBPFSLVPBd8uzSG1zissLZmKgp2AaMYM8=;
        b=EnWx6IlozvMSyd5zS8isZdih5MjX/HzwlIAanQzT/QSejjN/53k2fs6U1E3w3pU2Td
         6bi61CGzbVToO2M0Ea1yqwxtUXcaXSIwdgGGbddHHtwVcIhQ0LL5W5052EOwPKI9eQFN
         C8M+5lBnhDdz3a00pL+dhW0ElRm5JByLxtcVUpAocxWl3AYH4rznGCaWVfak+fatOhK/
         MWrlqj7AIrYjfpdgH8dWW4z8sZyhejuceM7RZDJywVF4mT+GEeY73H/5sp3ZkjAXk09p
         sqGULgDHaGtlsEGWJT42FDaYSsAmOW2x9VUPnfLqjo57Di9OuqrcL6UE6fAJFpgZCsAg
         9nNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530j6ZS75K9wECdsyJZkcgELileQhzotx/QsdSrh1C920rLCXkbJ
	4yuNzptQu4id91d0JcaisDw=
X-Google-Smtp-Source: ABdhPJxHKOnj2BvrNvgkbZJDs+7ygnU4gnRihb6OQ7Tpuch8a34rTTKXsIk3IsCpXWCLuBGVMidbWw==
X-Received: by 2002:a05:6512:3a89:b0:471:c6ba:c522 with SMTP id q9-20020a0565123a8900b00471c6bac522mr23549612lfu.371.1651138567427;
        Thu, 28 Apr 2022 02:36:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:17a4:b0:24d:5627:cbb7 with SMTP id
 bn36-20020a05651c17a400b0024d5627cbb7ls3303093ljb.0.gmail; Thu, 28 Apr 2022
 02:36:06 -0700 (PDT)
X-Received: by 2002:a2e:b8d4:0:b0:24f:2cc3:2c51 with SMTP id s20-20020a2eb8d4000000b0024f2cc32c51mr4025920ljp.176.1651138565950;
        Thu, 28 Apr 2022 02:36:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651138565; cv=none;
        d=google.com; s=arc-20160816;
        b=d15ybOa95JWl3a5mRMFPjB+pz7T6QJFALDIuf7VFVRKeaWD/zhmYCwMThYFo534+DD
         oGpFURbJ99Rc4S3IsXxEEzRvDJgLGBdQvxa9iw24KIpWh19IQKIMvTqtQCC+i1sdjFu9
         3f/ecUF+1PPuRhlcWAXue+pcBvpYva/dTbwBffP2h5mzMkkCf9GMmsI2fbn6dZ6a7Pz2
         fsrPcjnZ+n1owj7yFAa6hFnywrtxbXLEaq4sC9YJcQ2tM9Gu3YOUPJNGRhnN64bD1s7j
         8PtYWot+n+0lT81szRmtiACI9dcadrl1yHZGiGCkelJjUYyjmjRmE/mMMA90Qw7nFIlH
         8TIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mIxJh6HC32Qj4+RO7RN2rYFTQUHtaSd4FdLgpRZPNm0=;
        b=MR9OV25CI3pWksbSp4lq/1vcRsZaTwx/GZpIVipLH0s+1oyi5HccjaNazWCh6VNekq
         4kPd9ywzNine9a/VZYNIbNxpPB6/m1oTe/WFPOCG6Sr/FFjXl7JmwEx63MBtmmcBsPbV
         za0KfjLQQytDsGagsHkINSVsrq6sI7GK0cWpga3Tw1pgWS3bnPRR8BNDB1SfoEbUhM+K
         LhcaCHoQhngF/YrI8ZvQRPmmK6GDfkfPATNYWw3ABAWFh56RlnfnpOjBAsGZlUuiQRrt
         UCeukvU8ibg2FTv+ulimN0OHfO0wxQ7eRRAdWpIYA0mL6u5ITsHswsIHALqIjSUX6jmf
         Hurw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hIzQdLCu;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id bp23-20020a056512159700b00470f8f82ce4si195926lfb.1.2022.04.28.02.36.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Apr 2022 02:36:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6F642B82B2B
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 09:36:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B058C385AE
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 09:36:04 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id i11-20020a9d4a8b000000b005cda3b9754aso2759443otf.12
        for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 02:36:04 -0700 (PDT)
X-Received: by 2002:a05:6830:33eb:b0:5f8:d36d:3831 with SMTP id
 i11-20020a05683033eb00b005f8d36d3831mr11451226otu.265.1651138563294; Thu, 28
 Apr 2022 02:36:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-2-ardb@kernel.org>
 <CAKwvOdkzrTRK9y6zmGqqmZM8RvTktomDkUh7CMop0+fAr1Y8hg@mail.gmail.com> <CAMj1kXGVE-TJ9Sg1+wQ_e1cN=fkfeBADo7zyUkFc3Kkr6Okhcg@mail.gmail.com>
In-Reply-To: <CAMj1kXGVE-TJ9Sg1+wQ_e1cN=fkfeBADo7zyUkFc3Kkr6Okhcg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 28 Apr 2022 11:35:51 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF4RfC8fqbhM61w4uVoy5=Do=XYT=JjrG5Mr49Oo6r1kA@mail.gmail.com>
Message-ID: <CAMj1kXF4RfC8fqbhM61w4uVoy5=Do=XYT=JjrG5Mr49Oo6r1kA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] arm64: jump_label: use more precise asm constraints
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hIzQdLCu;       spf=pass
 (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, 27 Apr 2022 at 23:50, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Hi Nick,
>
> On Wed, 27 Apr 2022 at 20:59, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Apr 27, 2022 at 10:13 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > In order to set bit #0 of the struct static_key pointer in the the jump
> > > label struct, we currently cast the pointer to char[], and take the
> > > address of either the 0th or 1st array member, depending on the value of
> > > 'branch'. This works but creates problems with -fpie code generation:
> > > GCC complains about the constraint being unsatisfiable, and Clang
> > > miscompiles the code in a way that causes stability issues (immediate
> > > panic on 'attempt to kill init')
> >
> > Any more info on the "miscompile?" Perhaps worth an upstream bug report?
> >
>
> I made very little progress trying to narrow it down: a segfault in
> user space caused by who knows what. I'd file a bug if I knew how to
> reproduce it.
>

... and now, I cannot even reproduce it anymore, so I'll drop this
mention altogether.

> > >
> > > So instead, pass the struct static_key reference and the 'branch'
> > > immediate individually, in a way that satisfies both GCC and Clang (GCC
> > > wants the 'S' constraint, whereas Clang wants the 'i' constraint for
> > > argument %0)
> >
> > Anything we can do to improve Clang's handling of S constraints?
> > https://gcc.gnu.org/onlinedocs/gcc/Machine-Constraints.html#Machine-Constraints
> > >> An absolute symbolic address or a label reference
> >
>
> "S" seems more appropriate than "i" for a symbol reference, and GCC
> rejects "i" when using -fpie. But the actual literal being emitted is
> a relative reference, not an absolute one. This likely needs more
> discussion, but using "i" in the way we do now is definitely dodgy.
>

I have tried to create a reproducer for this issue, but the code
below, which does essentially the same thing as jump_label.h, works
fine with Clang and GCC with or without -fpie.

extern struct s {
  struct { } m;
} ss;

static inline __attribute__((always_inline)) int inner(struct s *s) {
  asm goto("adrp xzr, %c0" : : "S"(&s->m) : : l);

  return 0;
l:return 1;
}

int outer(void) {
  return inner(&ss);
}

So what's tricky here is that arch_static_branch() [like inner()
above] does not refer to the global directly, which is either struct
static_key_true or struct static_key_false, but to its 'key' member,
which is the first member of either former type. However, Clang does
not seem to care in case of this example, but when building the
kernel, it errors out with

/home/ard/linux/arch/arm64/include/asm/jump_label.h:22:3: error:
invalid operand for inline asm constraint 'S'

Another thing I hate about this code is that it needs optimizations
enabled, or it won't compile.

> > >
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > ---
> > >  arch/arm64/include/asm/jump_label.h | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/jump_label.h b/arch/arm64/include/asm/jump_label.h
> > > index cea441b6aa5d..f741bbacf175 100644
> > > --- a/arch/arm64/include/asm/jump_label.h
> > > +++ b/arch/arm64/include/asm/jump_label.h
> > > @@ -23,9 +23,9 @@ static __always_inline bool arch_static_branch(struct static_key *key,
> > >                  "      .pushsection    __jump_table, \"aw\"    \n\t"
> > >                  "      .align          3                       \n\t"
> > >                  "      .long           1b - ., %l[l_yes] - .   \n\t"
> > > -                "      .quad           %c0 - .                 \n\t"
> > > +                "      .quad           %c0 - . + %1            \n\t"
> >
> > If %1 is "i" constrained, then I think we can use the %c output
> > template for it as well?
> > https://gcc.gnu.org/onlinedocs/gccint/Output-Template.html
> >
>
> Is %c what prevents the leading # from being emitted? I'm not sure
> whether that matters here, as AArch64 asm does not require it (and the
> code builds fine with either compiler). But if it reflects the use
> more precisely, I agree we should add it.
>
> > Is the expression clearer if we keep the `- .` at the end of each expression?
> >
>
> I don't think so. The add sets the enabled bit, so I'd even be
> inclined to write this as (%c0 - .) + %c1 to emphasize that this is a
> relative reference with bit #0 set separately.
>
> > >                  "      .popsection                             \n\t"
> > > -                :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> > > +                :  :  "Si"(key), "i"(branch) :  : l_yes);
> > >
> > >         return false;
> > >  l_yes:
> > > @@ -40,9 +40,9 @@ static __always_inline bool arch_static_branch_jump(struct static_key *key,
> > >                  "      .pushsection    __jump_table, \"aw\"    \n\t"
> > >                  "      .align          3                       \n\t"
> > >                  "      .long           1b - ., %l[l_yes] - .   \n\t"
> > > -                "      .quad           %c0 - .                 \n\t"
> > > +                "      .quad           %c0 - . + %1            \n\t"
> > >                  "      .popsection                             \n\t"
> > > -                :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> > > +                :  :  "Si"(key), "i"(branch) :  : l_yes);
> > >
> > >         return false;
> > >  l_yes:
> > > --
> > > 2.30.2
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXF4RfC8fqbhM61w4uVoy5%3DDo%3DXYT%3DJjrG5Mr49Oo6r1kA%40mail.gmail.com.
