Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZUM5OEAMGQEHUIJ4EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7816B3EDE76
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:11:19 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id s8-20020a19ad480000b02903be9e365859sf4690574lfd.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:11:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629144679; cv=pass;
        d=google.com; s=arc-20160816;
        b=WL1mJDQQaj3u/2k9S5mgenG++V2dVCJyXxSA6P+vSTn9U5ZQgrQhP0uPzeNOU4n0Ar
         yxuyJZ8cXmWdWYGKmERIxoNY2fcEvCK0O9ldlXVQiW4cNON4oAAuPVaKh52gaCm/n10D
         241mlZ/q5ICDaVfo2Kyhz2fF9IuWwtcqjqBmU3dXAlJBiemvVbTiVWi0VCcpYvqi/tat
         vWrfN5C3WD0Wo54olya/7TgJQQUe74/ORFmtQB3TGdEfHuAU0+BFM4H2uxVP2rEMC/qi
         kQ3nTGfYUAf6Kp/RydCQwgx8zPaIpNBklLnABsYL3PnsT2cLjK2bs3q/H1XvL5aGN/ph
         d3WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lh/jAtrSAE/S1uir3rwjITMJUBVx5w5a4hWEN27lygA=;
        b=yTSweu34uDDMBgvK2OBpLNiGc+wq7TbaSrsxG02zBJDwqX/Un2gxcdWRkqMlFVcWjV
         h2zAqIR0IywsAuBvwG0rSrDHWyxy2hI+WFvM/cN0PQi0x7Ag02aShR3S9/fGuuvxN3M1
         rdVzW9iCeyugUIPZimeEjs7jTLgfvTAFxKkXI0HBMNBOnfyho/eHAPnXh5gk1ZdWYLZP
         gxu0Sa2yAPHjBHN/FCj/915tBhTceOD3WaSM8jJnB6TpxLPWzzCGO0m5GlTYADDRrBeJ
         rm0mGgctpo0B5jPVK2nKYlzcdZwlTInlZ7I/wSZyo+FTNaYM5RmcUYHUrzOCIBdV7iIn
         B9Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FDEZeluL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lh/jAtrSAE/S1uir3rwjITMJUBVx5w5a4hWEN27lygA=;
        b=n4+FxIXT/etB5i1tqJR279Smge0P4aisNlY5XYrRALAm9AnSdhISgTnKgQyhzURJ3t
         bEVfIq6htuiS3Hhl9FudWC0k+xZ3KAj8Qa3QO2rbJYy5U5mp1lMpv7tw33bqWIqweRr4
         V9ieuLUKxuLP/WBHG7+Vf1Zd1LT3D+V8+PzRTy+o2R1opCNKkp1nNgWzLe/PPyEKHYp4
         kovYb6qIT9KEhlKkGsfQOkCvpKhjaMVtLhQvFsMVEgb4hfn5xamTM9IW84PUFb9GeoMn
         6/OKLaQaIbSeleLSBnlZh6B28XyROE6nuPSsDGnD8R1sVpViLTrJ/HsqfAXd3XmwOxvm
         39Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lh/jAtrSAE/S1uir3rwjITMJUBVx5w5a4hWEN27lygA=;
        b=T07WsStTHNllHfvNnnJSOmVx7QToRWK5v7OcGzK5tkGk8iABLKSx3ycqPBPvrdAXe8
         DyoRciuxkwRfipUTfXqKY4kv3dJvV+gQ16F/9i9WZgg5eButrygZ4MperK0V3oOMGxuQ
         1TvQiBOuGqP/RVicxh2nC3kmOqOaJFaaojI0TQz2UHVIHD3rOXuqmoW8E70bUcAwLodl
         vbGbaYJTTISV7rlhhSQLL81p/SAB9tAQ8SRsTlTjprkh2b56fkW5rHnNzbLYj17EpQcX
         4nf7NgLvQcTpsHwwre0AHZXoqOVk+L3SKhvee1uzp/NG2gxyON9k9kWcMtwOJcfD3Zbo
         dVWQ==
X-Gm-Message-State: AOAM532fVcUt+jbCQtkOiqe4LTMmSWaBQHoOQOxx3p5L8Z8OuY3wRLUB
	RwY0zjWWiGdle0IMAOkYdpw=
X-Google-Smtp-Source: ABdhPJygHX7T8stBdAHPwpqxq4H/7G4QwvgZP3W62PVKvMeaZQOTxvVp3y8Tb48tCMd8ProGh3/EZw==
X-Received: by 2002:a05:6512:3f15:: with SMTP id y21mr87380lfa.370.1629144678990;
        Mon, 16 Aug 2021 13:11:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls2650ljf.7.gmail; Mon, 16 Aug
 2021 13:11:18 -0700 (PDT)
X-Received: by 2002:a2e:82cf:: with SMTP id n15mr301830ljh.294.1629144678009;
        Mon, 16 Aug 2021 13:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629144678; cv=none;
        d=google.com; s=arc-20160816;
        b=Pbi66HBWa+yGgGoAxW//tcEdg4OnHa0NHPrUoYo5M20SQEx+pjyieDJJW5Ljn2CMXj
         sigV9k6QpdNAgeOj/MBCkQOtQOYCfQP6XQW3XRO5jlQoddP+ZmMeC8Tw8c4BwTOIYFjs
         Nh8ROKFccsLVrIJUxuM9k95FWEjQTx055zrv0HIV8lbsUQlfn0Ly+sgwtZb/H8vys4SO
         Sn+TY8U+nVn/bxVmYeVWGBmpsiVrul0DIR+kQ8ymwx/0JZKmiDIb4WOOjV5NLhlgfGsI
         qrCvJqypBt3mbAyuydfjCriOffeCdZYGhky/aDOMr47Z8/P9J+DGyjVJElzDl977LbD7
         CS5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=78/zU1JmXsLtOegDV7vdLvXhJXsUYGL1XAvIUm761Yo=;
        b=AwAQsyy7a45ALbrH1Y/CTDdYWF2cdkd2u3/jcdnN3SfCB8UhskjZIu6sIZ9lyjtGFq
         CijydALTCJZzcj39lO10Q9NQ0MBnbdRfJSAG4TKEFOn/ba7R4H5nDY6ROtWDg2Pyhyzo
         RYAEe4CzZCxs7ZZlPJeCJUKgM2dOtmqyvqAhRJJxqkyHBH+ueY9IE/xy5UigKmwKgtnb
         zGfVNd1qTxam6BX5+KfvSATzWO3FGKsV2H7NFK8xmcxylOHbZTdsJyvlRvH2SrTLdtv2
         z2LN0bmbKFU44Bh/YHmNYM4PKOfjTSpDYbWS3u0aB2ZZqpzpmPO0TAScebf3AshKC9ld
         p2fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FDEZeluL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id i12si17562lfc.10.2021.08.16.13.11.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:11:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id d16so10963279ljq.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 13:11:17 -0700 (PDT)
X-Received: by 2002:a2e:a784:: with SMTP id c4mr274732ljf.479.1629144677387;
 Mon, 16 Aug 2021 13:11:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com>
 <CAK7LNASotywVkNjaBC7wYke70QL+a0tMJEVEvRTPpt8dDgHE9Q@mail.gmail.com> <CAKwvOdnc-GAHOQtjrjFzc6GzCLR35rQ6uVAenLLKBkEqws9Tbw@mail.gmail.com>
In-Reply-To: <CAKwvOdnc-GAHOQtjrjFzc6GzCLR35rQ6uVAenLLKBkEqws9Tbw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 13:11:06 -0700
Message-ID: <CAKwvOdmMekTUz81ZX8qcwNpcEdfC=ab0Tnutun5UPS8GjLnq2Q@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, Vitor Massaru Iha <vitor@massaru.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Daniel Latypov <dlatypov@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FDEZeluL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Mon, Aug 16, 2021 at 1:06 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Aug 13, 2021 at 6:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Aug 11, 2021 at 5:42 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 027fdf2a14fe..3e3fb4affba1 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -798,7 +801,7 @@ include/config/auto.conf:
> > >  endif # may-sync-config
> > >  endif # need-config
> > >
> > > -KBUILD_CFLAGS  += $(call cc-option,-fno-delete-null-pointer-checks,)
> > > +KBUILD_CFLAGS  += -fno-delete-null-pointer-checks
> > >  KBUILD_CFLAGS  += $(call cc-disable-warning,frame-address,)
> > >  KBUILD_CFLAGS  += $(call cc-disable-warning, format-truncation)
> > >  KBUILD_CFLAGS  += $(call cc-disable-warning, format-overflow)
> > > @@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z
> > >  endif
> > >
> > >  # Tell gcc to never replace conditional load with a non-conditional one
> > > -KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
> > > +ifdef CONFIG_CC_IS_GCC
> >
> >
> > Can you insert a comment here?
> >
> > # GCC 10 renamed --param=allow-store-data-races=0 to --allow-store-data-races
> >
> >
> > It will remind us of dropping this conditional
> > in the (long long distant) future.
> >
> >
> >
> >
> > > +KBUILD_CFLAGS  += $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
> > >  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
> > > +endif
>
> So it looks like `-fallow-store-data-races` was also supported. Reading through
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97309
> https://gcc.gnu.org/wiki/Atomic/GCCMM/ExecutiveSummary
> it seems that the default is not to allow "store data races." So I
> should not be adding `--allow-store-data-races` or
> `-fallow-store-data-races`; so this just should be the existing test,
> with a comment that it can be removed once gcc-10+ is the minimum.
> Will update that in v2.

Ah, perhaps I should combine the following line:
KBUILD_CFLAGS  += $(call
cc-option,-fallow-store-data-races,--param=allow-store-data-races=0)

Though I don't understand the csky failure. cc-option appends to a
running list of flags; if an unsupported flag gets added to CFLAGS, it
can cause cc-option to failure subsequent checks in spooky ways.  I
usually debug those by adding print statements to cc-option to see
what the full command it's testing; then invoke the compiler manually
with those to see what went wrong.  (bookmarked and referenced often:
https://stackoverflow.com/questions/16467718/how-to-print-out-a-variable-in-makefile)

Though my distro doesn't package csky-linux-gnu-gcc...
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMekTUz81ZX8qcwNpcEdfC%3Dab0Tnutun5UPS8GjLnq2Q%40mail.gmail.com.
