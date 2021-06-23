Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW4MZ6DAMGQES42EXSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B90B83B2406
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 01:40:11 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id t7-20020a2e81470000b02901477fea061csf1217754ljg.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 16:40:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624491611; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZyCounXcBRuedzyP0UScmJ+upRtIO2Kh3c/3auGiyW26hMfpGa4KEMaGmmwzlqqtW
         kibGizGA8K7iv3YXxyDLohH5cZzXBbNeDENwkwaXUWsxn7URRj8uhryDVbY+BjX+H1LB
         eVeKEGEWSw229cjvb7iOtO6aqZgBwjeMPfSAg/XQ2jMxqBvYq32bd28qfAE3819Pzqc6
         Y4wYA2Tcoz8NzLOMxiJClvCflLbmb6ISQxdDv+cBIFU0W6LVPMa4+uPqUFlZqX+QFfXq
         d9ZxDCSjE1ZcHodcX+9aJY/VL+LYyivvJRCqzEnvJ8lUr/cWmZsikDmSOnKcWlUOwFWj
         YZaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S/BPYIcCcrlE0nZcgsBnccGbDXEWmr4jVUUy2X5h6cI=;
        b=Bgi/hcigqQhl6pzbwzsoffTMlPbHPoPyW5JWIeD/SmDQbKFnZb1B9DSUowX9KqXrE3
         cficnCUHKl5QALIlcuMk4WVUVZlAFDelm9WP4JQIeGUqq1m3Nb7INljCwtJvIeMYjlkM
         QIpDJw85+BV/VWGDN7QNYRnXTlPcCv1LdZVdGDCd8rlevzkdK9rh5Sn0xGEQiCqeagvJ
         D3b3fBwGFFbptK1vis5jz8Hu0essBC6Nnp26icax5FxE8SqTrrshEFotmoq8p4RGR3nm
         HeTVsyDzfLOIFYlesPfTQPMIuO1QIBGvKjUEgi3DIYQP47yv4t7avbDmYqneK9VN81Lu
         GF3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kYlOcxyd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/BPYIcCcrlE0nZcgsBnccGbDXEWmr4jVUUy2X5h6cI=;
        b=i8IjQD4T8SQwvRNvAB8BkuNjrLYeIUOwrtb2ZJVnhykz+DdYSzg7eDbZBAPCtKzxk+
         IQU4MKsDM8nnm0te5pu/BTkldoM0cEZWHkwsma3/SXjmdCGr0cdLFzfSf2lMPTh8l34m
         R0qfEAsP8Nsfr+lNfPjOtlFFoTzcSuU6/AsejAOynwZNbYQ54dBUWLTbbWM6p0vrPJX3
         xBsdp2zobyOOWQl9OOdJ/dSG9YrzKrYE6xgbPDizUFC8XzDLBQA0GzP9x1uSvYYPhfYR
         P1fbrA5BjmmL/Ykfl/8R/47goWHjwmGQdV1dsfv4o9czpJHrhBP/GViSBucetutXnNPx
         N8YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/BPYIcCcrlE0nZcgsBnccGbDXEWmr4jVUUy2X5h6cI=;
        b=egUtHbEMJn4u8IB5Vuybn5Ug3lrtodIXp/9JlgVRfsCB2qdhkBObgz4AzUFtUpLw+j
         C3AhjtN6EqQFLQ+ZZt+sf9H2CqI84H7l13rE0j8ygg5lMETDTKqRm+QFowc9Eq0B4Z5g
         rrTMzlNl/EWJgsD+h+nxckRYt7du5kn6JZZv6orpuld0NMqoQSsBPGMYRHub1dTgLc+C
         YzmMGc1/n5d6d6oTwlNAjCyhA5x3W5cojL1bvvgPcHlQpcJ3BSUcg3yAnnyqmnexwsFY
         cQGPOwYRV67ikzxTc1ZG4VInhyBPRivOJXhc9Pf4FgaIExrQl7vHPSyDE/Jzh6ZCjNKt
         KPKw==
X-Gm-Message-State: AOAM533kl7Kpq58I3cj7kViGfZN4Y7sGR28ZDmkR5+/oc+cF1tXP4FYS
	Q56cqrpXFT71prISV0YMqjs=
X-Google-Smtp-Source: ABdhPJzpcF2GS8eMKMMt4UA57M75mcce+HioUfqypySdJe0oEaQzbEM5LRxOwholrexHPyd6AzK3Jw==
X-Received: by 2002:a05:651c:111b:: with SMTP id d27mr1570851ljo.445.1624491611225;
        Wed, 23 Jun 2021 16:40:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1799:: with SMTP id bn25ls734219ljb.3.gmail; Wed,
 23 Jun 2021 16:40:10 -0700 (PDT)
X-Received: by 2002:a2e:9011:: with SMTP id h17mr1613951ljg.378.1624491610209;
        Wed, 23 Jun 2021 16:40:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624491610; cv=none;
        d=google.com; s=arc-20160816;
        b=xrljWg4Oax/pfv3u4k8B16U9PPb+jcbzB2EJx5szwct8PFbGEI96Ww/fyxQhWu/k0e
         dAxfTpz2l0cySK4QEX/OIaAht01GLYUPky6/xAEvzYZte/4HHLPcAl4yRdWfYe9Sg+LG
         jK2PKoPHgECt2iwSicVCn44FRhoSYuvgFbCNCBznMNAZMOzlG8AD/KWDlsW1z/A7XWnp
         l8FncyDwphyfD+wCPadMZFowF/WKFiJB15lhRiZg6XCICWEyQd70EYh6lWRgEXT9E/EN
         GBKeK/krGt+GOfaAlofSO5D18zbsWc9Bi65wIYbZZSiugD5n5BZBNTHTA9aYPmRCZM8p
         WW6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m22T5sLi5MlC7izMU83G6XELshO1TaCPD5d1ECbMfac=;
        b=HOGxSOJPy0CSPV9xXg95peOYunOKw9YxuyPoejhBploF/oBOrvEGONRB2D541HYHwT
         B5ziE1Em/rSJZjRkdkKvRLBJt4bvu7ReFH6TIIASXAc0Xp+7SX5Gd2k0+zWuHb+nWJXw
         Eif1e06EP5cGDY9jIKaoN4HME4US1Zs6ZuCh/YcRhuQj+o95JSNI3plaryq2aMi4m9jv
         SJQObZuIW8bTV+BMpjRmwIK586p28kC9Jy1JIRP31BJ/HpZdxvA/L2HLPSlxTEdJfIVB
         v3Dz1rIlraVPjqO6sJkKpU4COcVJrC6dbck5jyGTmw9Sg2sXx71ekeicIFZZPS/7onbt
         FRRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kYlOcxyd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id c10si11588lfv.7.2021.06.23.16.40.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 16:40:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id f13so5219250ljp.10
        for <clang-built-linux@googlegroups.com>; Wed, 23 Jun 2021 16:40:10 -0700 (PDT)
X-Received: by 2002:a2e:a492:: with SMTP id h18mr1567944lji.495.1624491609801;
 Wed, 23 Jun 2021 16:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
 <YMtTdU2b9fI3dnFD@casper.infradead.org> <YMuOSnJsL9qkxweY@archlinux-ax161>
 <6f3c5317-2877-9a57-0126-e9305f000269@linux.ibm.com> <YM0mrZIPM+sWTDHf@Ryzen-9-3900X.localdomain>
In-Reply-To: <YM0mrZIPM+sWTDHf@Ryzen-9-3900X.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Jun 2021 16:39:56 -0700
Message-ID: <CAKwvOd=w0iPT_LLHQ48Mq3XCZcW9dZNRTpq+0OyVEjsg-VRXOw@mail.gmail.com>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Matthew Wilcox <willy@infradead.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Linux Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, "Paul E. McKenney" <paulmck@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kYlOcxyd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

An additional report:
https://lore.kernel.org/lkml/20210623223015.GA315292@paulmck-ThinkPad-P17-Gen-1/
EOM

On Fri, Jun 18, 2021 at 4:05 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Jun 18, 2021 at 10:32:42AM +0530, Aneesh Kumar K.V wrote:
> > On 6/17/21 11:32 PM, Nathan Chancellor wrote:
> > > Rebuilt the CC list because most people were added based on the
> > > incorrect bisect result.
> > >
> > > On Thu, Jun 17, 2021 at 02:51:49PM +0100, Matthew Wilcox wrote:
> > > > On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
> > > > > On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
> > > > > > x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> > > > > > mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
> > > > >
> > > > > The git bisect pointed out the first bad commit.
> > > > >
> > > > > The first bad commit:
> > > > > commit 928cf6adc7d60c96eca760c05c1000cda061604e
> > > > > Author: Stephen Boyd <swboyd@chromium.org>
> > > > > Date:   Thu Jun 17 15:21:35 2021 +1000
> > > > >      module: add printk formats to add module build ID to stacktraces
> > > >
> > > > Your git bisect probably went astray.  There's no way that commit
> > > > caused that regression.
> > >
> > > My bisect landed on commit 83f85ac75855 ("mm/mremap: convert huge PUD
> > > move to separate helper"). flush_pud_tlb_range() evaluates to
> > > BUILD_BUG() when CONFIG_TRANSPARENT_HUGEPAGE is unset but this function
> > > is present just based on the value of
> > > CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD.
> > >
> > > $ make -skj(nproc) ARCH=x86_64 CC=clang O=build/x86_64 distclean allnoconfig mm/mremap.o
> > >
> > > $ llvm-readelf -s build/x86_64/mm/mremap.o &| rg __compiletime_assert
> > >      21: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __compiletime_assert_337
> > >
> > > $ rg TRANSPARENT_ build/x86_64/.config
> > > 450:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
> > > 451:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
> > > 562:# CONFIG_TRANSPARENT_HUGEPAGE is not set
> > >
> > > Not sure why this does not happen on newer clang versions, presumably
> > > something with inlining decisions? Still seems like a legitimate issue
> > > to me.
> > >
> >
> > gcc 10 also doesn't give a build error. I guess that is because we evaluate
> >
> >      if (pud_trans_huge(*old_pud) || pud_devmap(*old_pud)) {
> >
> >  to if (0) with CONFIG_TRANSPARENT_HUGEPAGE disabled.
> >
> > switching that to if (1) do results in BUILD_BUG triggering.
>
> Thanks for pointing that out. I think what happens with clang-10 and
> clang-11 is that move_huge_pud() gets inlined into move_pgt_entry() but
> then the compiler does not figure out that the HPAGE_PUD case is dead so
> the code sticks around, where as GCC and newer clang versions can figure
> that out and eliminate that case.
>
> > Should we fix this ?
>
> Yes, I believe that we should.
>
> > modified   mm/mremap.c
> > @@ -336,7 +336,7 @@ static inline bool move_normal_pud(struct vm_area_struct
> > *vma,
> >  }
> >  #endif
> >
> > -#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> > +#if defined(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) &&
> > defined(CONFIG_TRANSPARENT_HUGEPAGE)
> >  static bool move_huge_pud(struct vm_area_struct *vma, unsigned long
> > old_addr,
> >                         unsigned long new_addr, pud_t *old_pud, pud_t *new_pud)
> >  {
>
> That works or we could mirror what has already been done for the
> HPAGE_PMD case. No personal preference.
>
> diff --git a/mm/mremap.c b/mm/mremap.c
> index 9a7fbec31dc9..5989d3990020 100644
> --- a/mm/mremap.c
> +++ b/mm/mremap.c
> @@ -460,7 +460,8 @@ static bool move_pgt_entry(enum pgt_entry entry, struct vm_area_struct *vma,
>                                       new_entry);
>                 break;
>         case HPAGE_PUD:
> -               moved = move_huge_pud(vma, old_addr, new_addr, old_entry,
> +               moved = IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE) &&
> +                       move_huge_pud(vma, old_addr, new_addr, old_entry,
>                                       new_entry);
>                 break;
>
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dw0iPT_LLHQ48Mq3XCZcW9dZNRTpq%2B0OyVEjsg-VRXOw%40mail.gmail.com.
