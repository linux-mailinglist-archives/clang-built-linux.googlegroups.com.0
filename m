Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXMB5LVQKGQEWATEDBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 85220B13C4
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 19:31:11 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id z13sf18880982pfr.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 10:31:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568309470; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVdc9Mae0C2B+mNf1IV9vWOpkm19klUF18fH8AmW50u6RgyFJ5BYJy9kZFWnYOtFKE
         p6/gwKLuo5e5afqbEuJ1xPdG+x81q1Nb4Aui+4zItaBFDtVV7DbnWbtIz1vlrF8Qtmj/
         KYgLLJs0gC7cgB8c01hXXEnoqOW4Xcq9/XcdWb0S7BCDR6IHXOaSoXumFiQodfYr9y/J
         QGny1D3SShQeLzYvUvopHYNygsBdhZcI7+pRt1EObn7nkXr9uUXpQ947EKS4e0Ggmxb5
         ueiipCUBk1azS1C1wYbGSmibOEm6zR0Xi9Iwy+U0H5navfHe4NJTg/sldnTlI79w0ikC
         P4kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qX+QYvHIPsLdNJJeDeHaX0RgPAbsw5qcXHiWY8AFniI=;
        b=VLNmKTy0QGtuSRyysmzVhHf6mlhs7U0K1o5YspyOz//GFTQ4ufKd0DQOQtlLUMM/xa
         yMsYcd3/QGmAhASbK8yjKT4BVzxJ/qdtsVkNREBDulF4KBd+JO9+aK7Kz2Dmt8M6tntc
         zgD/2ZO0y6MkZB4jH57VJBq7lbJn7saWL/0Hpaoko2c8+Q+44QpsSfeZAcH0BypizgNm
         LhCUri8DsoTGg5uaqRRDHO+DbLHHTdPsXboIq9JpgNQjYTG1zaa6z+KgJH936K0lLoqe
         GFsJzBveZrnIlTKPv+mTRn5pMN9RIQHfZZp1aVVJSKJLQUkGw0hSfnMdHNkt+vDsXdcU
         AY1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vFOuHT8q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qX+QYvHIPsLdNJJeDeHaX0RgPAbsw5qcXHiWY8AFniI=;
        b=qj4NDpEevtZkTeBrXVwC6HrWfw9O/ekSl2mlUAUY1TOCJ1e7AflCC5Ou+J7PlWZaYP
         kMVGnPtzldgLsWe5gxRtJFv2cEIvT8EXc3PpHTvhz5+7JeQGlJca+hIrphOXLxR3lFj8
         szuA+8f46nvbTH9VZSgYaQm8pusEWTTPGjvRKjM+E0h5y3Jhp7my0hMFQXmN7kkoIYX4
         i59exkmh0jm3oj39YeGbXwwczaOBH68bU9Te/3rdbFBgiBfyd9jBwgdD6RlnL8nlFSBb
         4+tLvKWY3AdZHGszx9rZfzaO3Pyq39zhvW/5/88jArASbQ0NMGkIKV0qdaC809r9FcEG
         MFTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qX+QYvHIPsLdNJJeDeHaX0RgPAbsw5qcXHiWY8AFniI=;
        b=AFQpkrdq1oqtrpq75PuyyQBESZUgr/mSup+7nF8JsIWa4yG0BV3ZVAKE6dHw2NhQoV
         BikrbzwPgu0/SK8iVC4VovFjl67GaVst5x3AAu0IL2A5E0byOpBGO6dAlcp67TcU2c6D
         fRfqcp2L//cxpgcnHNlvo7HzlTS+FvQvyoOJ7h6qn8UlzbLmZanm2W/OLhJUWWos+E/R
         bA/Mk1VVVJ13Q33qLXYEQZK1Rjb1FJMctlPQ36VC+PUX7z2ZLLuOHGy3K8+7yHMKkqbS
         1iU2IQkiRi6wf4i+Tm8i61xvh9hgJizN6OrdncWlRnMCgxcZpbbWagte5DCwHavXKd8J
         JeZA==
X-Gm-Message-State: APjAAAUaw55p9inxE6I1L/axguTnyD7i6/ehPdEnvVZqAIiOJtcuIyOv
	0F373WWvI1/usMH6twDyVas=
X-Google-Smtp-Source: APXvYqxCCq5YczsA/Pd7rcFh315q9HVHjsJpWIXQd/THJh7YPa9mPh7CADoei2sXBe9xZKiOidfw7A==
X-Received: by 2002:a62:4e0f:: with SMTP id c15mr36288490pfb.42.1568309469916;
        Thu, 12 Sep 2019 10:31:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8e86:: with SMTP id bg6ls5986718plb.5.gmail; Thu, 12
 Sep 2019 10:31:09 -0700 (PDT)
X-Received: by 2002:a17:90a:fc89:: with SMTP id ci9mr1440313pjb.48.1568309469607;
        Thu, 12 Sep 2019 10:31:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568309469; cv=none;
        d=google.com; s=arc-20160816;
        b=VwIBepWlRLL2a6UijKhEGOzfmIMuiTKOoo75BSTT1H+w2HINdrTxuRhJdGCgHUhPp9
         QuIHqNcT/YGnzpT7bL5iwytN8w6AVTlk3ebgGfiBoCpXCzj+d99G3vbA71ug8uJtzt1z
         oS37tkw5LVMUGAOxsbHf5pg9RuywiLyGqaWBtZTV3IgkX0TjMxB6KMbPCviy+/uLWLa4
         Xgd0U6yLtpH/PhXv6VmEWTRdDh+1u6HPdiikMJfa+6hfTqnrS4qIhforMW2br1y6/UOH
         ZSGOHBigPOFLXVk7vke7MCeXJleJTW6L9IWO2F0LXHQiyLuRqG0WpQjXQQ8ZW3YbBZE5
         /wqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mOVlpD6BMnbKiv36TkrT6fFnE/GEkfURpkH4h7Nmx9A=;
        b=M5OYE9x1J2v2gUhlcLZIHJranWOvd6Rmx0lvbeMjmrjdmBAM4brLu9/QCusIh54aqX
         ZUFSALWlj8bPqY4IqgdNUDmiHWBzQ7bdaYl73A4/3tCMpLJywxkeCpNgZiSydoLOhkcJ
         H9RQd/1eAyuPkAM8w+t2ltLFyILmd1MXR0wue6y5HwW6k0ZgFxBCd0LzrTbo8fJ/pV/W
         7pRhPGOZub1obLhpn4EwO7YP/LWBHJljagnqRjKSeQ32sV/Gp7m418syDbnscDiK+TQx
         wlzlogHihq0V4b+UEFBraUVarR7YWk7cDMdhAx662kyvNRTfvVEBTFy3++0E246+D1nO
         NZLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vFOuHT8q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 85si1395159pgb.2.2019.09.12.10.31.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 10:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id m3so13802748pgv.13
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 10:31:09 -0700 (PDT)
X-Received: by 2002:a63:7153:: with SMTP id b19mr3009136pgn.10.1568309468835;
 Thu, 12 Sep 2019 10:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20190911182049.77853-4-natechancellor@gmail.com> <CAKwvOdnh+YoACaX4Oxk7ZiEQAQ2VgA6W=Dtbk7gzK5yJduFvGQ@mail.gmail.com>
 <20190912054304.GA103826@archlinux-threadripper>
In-Reply-To: <20190912054304.GA103826@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Sep 2019 10:30:57 -0700
Message-ID: <CAKwvOdmc-1BrXG01d0PzjqhJsVbgwUMm6mxR4BcTqZ9WKtS6HA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] powerpc/prom_init: Use -ffreestanding to avoid a
 reference to bcmp
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vFOuHT8q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Wed, Sep 11, 2019 at 10:43 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Sep 11, 2019 at 02:01:59PM -0700, Nick Desaulniers wrote:
> > On Wed, Sep 11, 2019 at 11:21 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > r370454 gives LLVM the ability to convert certain loops into a reference
> > > to bcmp as an optimization; this breaks prom_init_check.sh:
> > >
> > >   CALL    arch/powerpc/kernel/prom_init_check.sh
> > > Error: External symbol 'bcmp' referenced from prom_init.c
> > > make[2]: *** [arch/powerpc/kernel/Makefile:196: prom_init_check] Error 1
> > >
> > > bcmp is defined in lib/string.c as a wrapper for memcmp so this could be
> > > added to the whitelist. However, commit 450e7dd4001f ("powerpc/prom_init:
> > > don't use string functions from lib/") copied memcmp as prom_memcmp to
> > > avoid KASAN instrumentation so having bcmp be resolved to regular memcmp
> > > would break that assumption. Furthermore, because the compiler is the
> > > one that inserted bcmp, we cannot provide something like prom_bcmp.
> > >
> > > To prevent LLVM from being clever with optimizations like this, use
> > > -ffreestanding to tell LLVM we are not hosted so it is not free to make
> > > transformations like this.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/647
> > > Link: https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e002
> >
> > The above link doesn't work for me (HTTP 404).  PEBKAC?
> > https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e002
>
> Not really sure how an extra 2 got added on the end of that... Must have
> screwed up in vim somehow.
>
> Link: https://github.com/llvm/llvm-project/commit/5c9f3cfec78f9e9ae013de9a0d092a68e3e79e00

That looks better.  Assuming Michael doesn't mind amending the link
when applying:
Reviewed-by: Nick Desaulneris <ndesaulniers@google.com>

>
> I can resend unless the maintainer is able to fix that up when it gets
> applied.
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmc-1BrXG01d0PzjqhJsVbgwUMm6mxR4BcTqZ9WKtS6HA%40mail.gmail.com.
