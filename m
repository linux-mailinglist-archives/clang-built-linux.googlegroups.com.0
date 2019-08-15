Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWGD27VAKGQEFLSZNTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BBA8F737
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 00:51:05 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id g18sf2133774plj.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 15:51:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565909464; cv=pass;
        d=google.com; s=arc-20160816;
        b=cxkKZmEMwzs2XickoQ5FpgBhihiBF345vP7QSYaK+WqrRkFfOYorLD/iVeXlvd6iQD
         ZdRYIQwWhtvTlNdIXo9iQC130S3nRpmNNywYW2i/bEUEonwqVxOOHxEp2r6i/HW7+lGm
         HlpuKaTodf5uVPxoxscNnMWNkRkQWwE5SNiiBqj2hFeUIYrGq+EnkGSg7CIR4sG86Zlo
         7r/rQCIIPbA90UmSwfY7OBITzLTyKaRkJpesShWwSKsoRv9BjvcwxWy0EPl3aTGFzrP6
         r5pl3HE/SL8P7p58srtfgpA3CA8DyAnnJqXOIs9YmIBHoASI//W9cSVi+VjgOyI5D3Z7
         tO8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cEpwoP3BrXj9rJMyWJ/XB9qwr9fNOGnBbIDRFfo5cb0=;
        b=A0YWL5jjt+ECBd8ekN9NS6dlmz6kO+wrsisHeHY157SkqTx8VWTQ80+jSiqxqNfKBG
         rNbfdMtub/bWe+QPExrFEYNrXYL/3tzPDYxacz/0OJZsPObHlGKZXFAEX2CBBjADbWoZ
         FaCkvQoVHWQ3HOGumxNN8+3/lrxGNSCknyWLqLO1DmOs+e3J9lZwsaeJ0OVFH7AvSaf0
         CBij8CXbcW/NW+6gF5Y0asAxkRQ/HasRY1aYqUUhQhFAnX+aJik9RWEqhkEke2o/20kM
         CaTY7MkRWZfXTk/2WiTBJJBd7fw4HBn82OS4AMzR9yfRoE+9cUIrz9uYLdkQVoaRDz4a
         UXrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZhpZ9v79;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cEpwoP3BrXj9rJMyWJ/XB9qwr9fNOGnBbIDRFfo5cb0=;
        b=TBp8HjEuKpat9F5HxQbz5Bb7SKZb02GSXihPFWZlCugANUihCui/ZH9tNd3ms9E1d4
         HyWDsepsWE6SSlTpTtbRjd9QVhVifBQutqYrs0qHPfQJaMZLqjC43EtLZChxCB/MOyYI
         Sr5o9OapeM0gq0iDmPHSvnFW+1+H+v0R5Tgr+Ie8O7ZiMfr3vTrgDWCS9djAlgkhEqwJ
         uV8r+2uV3LTdZkOcCpVRk9yU/DvRubZA41kDuJ+VOTdiUkbIp1Ztj1bBNuBFb++4OOym
         TF/t9+XTQZhIbp9PNV8X28d8qQMhzy5GeGsRxWr/Qr1GBliA6TiC3kKmT7f8fc1cPbk4
         IqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cEpwoP3BrXj9rJMyWJ/XB9qwr9fNOGnBbIDRFfo5cb0=;
        b=Xp71dD4uj1ozPtswODGVJYsil+KlD8cS1/bDBcssUlYWcyIQXczcx9AG/imF8t28wN
         oyYLtTljhFyO+6ipWtniQvpC/mYk/Tbs0WKmAmdcciQrAZlefvb7l+egCQ5+hz1JT1gz
         qqR/4xjH/7yHQzzIQlZ9AJoQQKkLNfgRyDVVcz5enT1ZyfpYSSsLNrIX58q92Bs7ZSr4
         VcWxMTy6F9cPCh82ytebkSc5T5/UzE8JHKxt8GYRXL7KetiHJ+v6eltgZPpuW/ldbCQc
         x7DQ+LQCYxGnEJR17ZdTjCbmMn6e2TYKHcMa+ZjKjXGsY/q+od4lrHbEaRbcJl5xJqwx
         ZwtQ==
X-Gm-Message-State: APjAAAW1VftgnpUVA3pjYzfqnAS9WqT4cpzk+u/Fd0+CZiYIgR1roSxP
	1UkPT2AY70gyhibC0Ctz1qo=
X-Google-Smtp-Source: APXvYqxMN/G+8SO1iV+WkpxAlEFkr3E5UWf3UUCVb5Wm3vf62v9P4Tqo/eiLugAPEiI/DoJXtfnwBA==
X-Received: by 2002:aa7:8b11:: with SMTP id f17mr7726235pfd.19.1565909464520;
        Thu, 15 Aug 2019 15:51:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f208:: with SMTP id gn8ls1559112plb.2.gmail; Thu, 15
 Aug 2019 15:51:04 -0700 (PDT)
X-Received: by 2002:a17:90a:9b08:: with SMTP id f8mr4333327pjp.103.1565909464166;
        Thu, 15 Aug 2019 15:51:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565909464; cv=none;
        d=google.com; s=arc-20160816;
        b=uOSJvUUzT/x5qbCcfyper3bPRixlHW+82RFKSAzIaVGyewfECH+WUlR+W1bT+FAwJ7
         sQ8+mfuQ8OFwURuIfNTJ2nanbmyW8Voh7Y+3IY2xE8RgKqoZm25zKbnhZrkMGwj26eOk
         XIs23FV5QKkwOUhA3AcV0im1JtZreBFcuFOo9yVC/n6q713+kPWEQ7d5/oogKyZsa7yE
         knETDhnwc0/3rPDbyzmSx67Bmx0n1klhcyatb7HHIYC+8MYXpwi+1MPROXLiMI+qFJjf
         l8iX/Wcnlr29ENHE2YN/H1WQEuP+xnhQp/krv9diOheuRzTYGTz4mmW9g71ryp14ikFc
         Sbuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/v3iWh/+wCNK2FG7LH7UyEMlyFu2SkyD9UW+AeAr0AY=;
        b=0yEUiPepIyL8pfFNrWPXHxGDpTZgVIacvA2QzPPpC1m1xMEwimm+UB9lyl4b+I7XNg
         B4FnlCsgfCv4fjEB7LyG4zVWfI4BX53ckEtH9dQqd1mzSvLJO90Ooc6ExxLXeFTlViSw
         BZqnLQFGhA5r3cMqZnQzU7ELA+4JPrF5riwxafcSwunyaHFinObQxjevobptNL2pi2XM
         Y5OjDIRDpcozxBCbyVDfcZ6mkCoMIAzy9itdBLppqyRmmIuFlLd+/kvCSU/dFemnSffu
         8rx5e/LSgsMwrSkHQvocTgWfZ1BivzVHcqs+zjFXiCxiptAT7Qxowbe+k+Cq3+Q0BTMT
         sqBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZhpZ9v79;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w72si269567pfd.2.2019.08.15.15.51.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 15:51:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t14so1603377plr.11
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 15:51:04 -0700 (PDT)
X-Received: by 2002:a17:902:a9c3:: with SMTP id b3mr6292093plr.179.1565909463409;
 Thu, 15 Aug 2019 15:51:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190815182029.197604-1-nhuck@google.com> <20190815204529.GA69414@archlinux-threadripper>
In-Reply-To: <20190815204529.GA69414@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Aug 2019 15:50:52 -0700
Message-ID: <CAKwvOdk+NQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z=nw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Michal Marek <michal.lkml@markovi.net>, Joe Perches <joe@perches.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZhpZ9v79;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Thu, Aug 15, 2019 at 1:45 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Aug 15, 2019 at 11:20:29AM -0700, 'Nathan Huckleberry' via Clang Built Linux wrote:
> > Clang is updating to support -Wimplicit-fallthrough on C
> > https://reviews.llvm.org/D64838. Since clang does not
> > support the comment version of fallthrough annotations
> > this update causes an additional 50k warnings. Most
> > of these warnings (>49k) are duplicates from header files.
> >
> > This patch is intended to be reverted after the warnings
> > have been cleaned up.
> >
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >  Makefile                   | 4 ++++
> >  scripts/Makefile.extrawarn | 3 +++
> >  2 files changed, 7 insertions(+)
> >
> > diff --git a/Makefile b/Makefile
> > index 1b23f95db176..93b9744e66a2 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -846,7 +846,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
> >  KBUILD_CFLAGS += -Wdeclaration-after-statement
> >
> >  # Warn about unmarked fall-throughs in switch statement.
> > +# If the compiler is clang, this warning is only enabled if W=1 in
> > +# Makefile.extrawarn
> > +ifndef CONFIG_CC_IS_CLANG
> >  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> > +endif
> >
> >  # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
> >  KBUILD_CFLAGS += -Wvla
> > diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> > index a74ce2e3c33e..e12359d69bb7 100644
> > --- a/scripts/Makefile.extrawarn
> > +++ b/scripts/Makefile.extrawarn
> > @@ -30,6 +30,9 @@ warning-1 += $(call cc-option, -Wunused-but-set-variable)
> >  warning-1 += $(call cc-option, -Wunused-const-variable)
> >  warning-1 += $(call cc-option, -Wpacked-not-aligned)
> >  warning-1 += $(call cc-option, -Wstringop-truncation)
> > +ifdef CONFIG_CC_IS_CLANG
> > +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
>
> Shouldn't this be warning-1?

+1

>
> > +endif
> >  # The following turn off the warnings enabled by -Wextra
> >  warning-1 += -Wno-missing-field-initializers
> >  warning-1 += -Wno-sign-compare
> > --
> > 2.23.0.rc1.153.gdeed80330f-goog
> >
>
> I am still not a huge fan of the CONFIG_CC_IS_CLANG ifdefs but I don't
> really see a much cleaner way to get around this. Some that come to
> mind:
>
> * Leave Makefile alone and add
>
> KBUILD_CFLAGS += -Wno-implicit-fallthrough
>
> in the CONFIG_CC_IS_CLANG section of scripts/Makefile.extrawarn

Yeah, I think this might be cleaner.  -Wimplicit-fallthrough
-Wno-implicit-fallthrough will be passed to Clang, but "last one
wins."  A smaller patch makes it more likely to be revertable without
potentially having to resolve any conflicts.  Would you mind sending a
V2 with that change? You can include Nathan's Suggested-by tag.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BNQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z%3Dnw%40mail.gmail.com.
