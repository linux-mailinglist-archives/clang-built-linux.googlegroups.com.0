Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL42VWCAMGQE6KYV6TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF9136F323
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 02:20:00 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id x10-20020adfc18a0000b029010d83c83f2asf2206122wre.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 17:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619741999; cv=pass;
        d=google.com; s=arc-20160816;
        b=og+vW8r44DhcJ/55zbRZ5ua7dJc7K6C/3xRvOKTgb2JfKS7Ul0+8XUFTMPZ8E8bUp2
         gsIlLfwJoPNj6NxE0sr9n3vixQPws1yg4EvKI9UZ2yRyWwV8wxoOJ13b+RLbp8VA/B+D
         0Rq4yh7yVZ69kUpQCgp7VLUXy3o6cJYEBkWfq9fnhC4tCREvXMz4evQGfuBEj3yxqgOr
         blP/ohQkUTHdXCa0yrCCdaWe/4C3qexe5hKnnLlsmzmAWWIDxewLZfbDOt+YRpU9g/We
         tEZwzXVkqxFR/TUtUHpdX9T6Bb9rwGDicvIAGdZerlNb+xwoeUVRbGN0Re87kUfNXWq5
         qvYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=As2OYGQDOxCvfaMXZa1Z2Y/2EGL2P16s0FG+VS7SKHM=;
        b=n93oKtTC+paDK3H7dq7pBzkfwR+Y2sPyDPRhLVI542s6L+kyn6xW+CWy/JUYhuzMJT
         kUsroY80aAUSBurK04cAptdta/151XApRlJDHQqg7+l2Ovbq+81b7lmrp0N1F6gsIqyI
         K5cuebeXwE+lvX3XrdPgc4kiAE2xszazeWKIkGfDdS80f5dmt9fxQW2lU1xyjA+74iLz
         JK+mwbLfWGizY/4Qb1g7yUsAXNrdnh3MgtbDCpDyZi/Yvq4HiKP4ziYjEKqqPj4pPOGx
         ALKOR/JwKRq/l0dQtqOJDY1AuLYSDP78OJRxvHed0cXJnl33ySbEu8VCq+3eLLTeE43J
         RvDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mb4lanW0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=As2OYGQDOxCvfaMXZa1Z2Y/2EGL2P16s0FG+VS7SKHM=;
        b=PVMmXERNS9gZOovjARe80iiiCddBthIlT2XPTBgWkZdB94R1DPwBQHgJz4yhAzrU63
         K1r9MRNczKQ6jmXkg5Z7TZRJ9zl9+lPmXuqZ0M1JiNki7dGuPK9+0S4+FO9vFXQEmc2P
         G4OKkGuGfyKAvjJGTBdyYPCdCruY+mR/ER2SW5PN5DLMNoJ0vrLgP2K6Bo7g/0i/UIwH
         JChhhRG/VUtFGgsH0D4+Ln/bssET3DX1VqzfT0hUCAJH7CqnqdG+iamc2QZH9L9lrGob
         PX+DU3Kp6i5CNLn0BDmUn1RAhjEn9h4YEyRy1FNgZBaLlQGspWnCQl/+uCCVE47k/Iaw
         IlwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=As2OYGQDOxCvfaMXZa1Z2Y/2EGL2P16s0FG+VS7SKHM=;
        b=pG1kBC2OMxv5XZDZ/4QnlFf4lFcB1qY+v7nUynrGm0ohwGfhH0SSUhnIMc8nbTeu1K
         UIoXkCkzSKwzWwhOpZCPPmwGboMAN6CGflOacZfEK/79L5y/WUG4zhD8mL5CzxoPLrPo
         NiPLJaUtsNnFLcKBgIoMt3umm1FDHaDS+J6PoFLDvxKa+RjY7ZR27fKyl/UazoKU7SWl
         1NlpuNHB+oYoDRom7BShOyVfyjWkp4YxpMAEn9y/cSpdiUR55Pl2hLKC32X2Z7MyaE6K
         V2NzWfHYw7/xpfVj5esfJ/6vfBu9xiOSsc6+sJ+gF15iNasRH7x4xZPtoaZEbRvfzKgl
         VokQ==
X-Gm-Message-State: AOAM530qkdR59CxHV04xd9W3CeSp9enQR/fZT3XUo3JPVHJREfS9PFLK
	SMaJFEWfde2ND8i3jjWBwTc=
X-Google-Smtp-Source: ABdhPJzTz0q/QDAhsIGvcto/1Yf3I21EyQm+d7GqeYwfhpaHoI6tPZo67wPY7eQP5Yf7ELJp91cPBg==
X-Received: by 2002:a5d:59a1:: with SMTP id p1mr2830296wrr.332.1619741999879;
        Thu, 29 Apr 2021 17:19:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:64c2:: with SMTP id y185ls5198153wmb.2.canary-gmail;
 Thu, 29 Apr 2021 17:19:59 -0700 (PDT)
X-Received: by 2002:a1c:e387:: with SMTP id a129mr2379781wmh.61.1619741999011;
        Thu, 29 Apr 2021 17:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619741999; cv=none;
        d=google.com; s=arc-20160816;
        b=U+w4JS4y7AHCvGgwjMHS9aUi5Q6HSKk3n47ZFUGTGgIyQl4APYLYvifZpANQe3yH8x
         EvolWIBopjv+5uYETASEZp9zjQeGyvCEJ85Fi/EEACCTlrMJIylA4RabdyMIxAr//Lb7
         LSKCUrh6KIgqM2tCI/k2zJzH+eL5fuI7bLMKbzIK1uzDe9QwSb16efvqiBbVyid87i2R
         4DLgbp/9cVBTapgZ+Jd9yMM1xTrvpLpKRUzLyDlnb0AE8MJuV3cVv6oslzG39amfIzHT
         FQH5icyUgkJQUFVuN6UtAwRqnBE4OgiDr3ZlrOfCYhS5LuUnntA53Tjsc6AjO8nMd100
         0sGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1ZbEDaYJJ2ZU3PyMfxqDqMhy1JQaRV75XScMf9TkTpI=;
        b=zhk/198OBSdotL2Q15ee0btUNnuGLxbxLAae8bp+rFnVTY8MGdj8KgLfPxYHpU5FVt
         uVLAuSeiYzzTU5cF5J3e6DkCg3cQfyEwXnZ7IAgR0kT/D6ZL11Y7r+FeLjF6C2WCMcoN
         cuWSXSymdJzt6Z5Y8GYeicgpjE7JQONgLKV8OwD15+d6Cluwme4FDurUGjCY7EJ+jkkW
         IzW1pEj2cQABhjz2dUpYA2iVS1N4Jha4zY5+Y78Z8UX8LfMYYyi+tFgkpSNHwJDPN/R5
         KEU5NsiCZQT+Iyn3e40nYH54eu0PQvOBltchVYfhWj2g6wudRGZabU5aiv4xw5/6foax
         3lEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mb4lanW0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id c9si317173wml.2.2021.04.29.17.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 17:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id 124so26503797lff.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 17:19:58 -0700 (PDT)
X-Received: by 2002:a05:6512:94d:: with SMTP id u13mr1384378lft.368.1619741998508;
 Thu, 29 Apr 2021 17:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
In-Reply-To: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 17:19:47 -0700
Message-ID: <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mb4lanW0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Thu, Apr 29, 2021 at 2:53 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> I haven't looked into why this is so slow with clang, but it really is
> painfully slow:
>
>    time make CC=clang allmodconfig
>    real 0m2.667s
>
> vs the gcc case:
>
>     time make CC=gcc allmodconfig
>     real 0m0.903s

Hmmm...I seem to only be able to reproduce such a drastic difference
between the two if I:
1. make clean
2. time make CC=<either> allmodconfig
3. time make CC=<the other> allmodconfig

without doing another `make clean` in between 2 and 3; and regardless
which toolchain I use first vs second.  Otherwise I pretty
consistently get 1.49-1.62s for clang, 1.28-1.4s for gcc; that's a
build of clang with assertions enabled, too.

Can you confirm your observations with `make clean` between runs? Can
you provide info about your clang build such as the version string,
and whether this was built locally perhaps?

>
> Yeah, yeah, three seconds may sound like "not a lot of time, but
> considering that the subsequent full build (which for me is often
> empty) doesn't take all that much longer, that config time clang waste
> is actually quite noticeable.
>
> I actually don't do allmodconfig builds with clang, but I do my
> default kernel builds with it:

:)

>
>     time make oldconfig
>     real 0m2.748s
>
>     time sh -c "make -j128 > ../makes"
>     real 0m3.546s
>
> so that "make oldconfig" really is almost as slow as the whole
> "confirm build is done" thing. Its' quite noticeable in my workflow.
>
> The gcc config isn't super-fast either, but there's a big 3x
> difference, so the clang case really is doing something extra wrong.
>
> I've not actually looked into _why_. Except I do see that "clang" gets
> invoked with small (empty?) test files several times, probably to
> check for command line flags being valid.

There's probably more we can be doing to speed up the flag checking
case; Nathan had a good idea about using -fsyntax-only to stop the
compilation pipeline after flags have been validated.  I think we
should run some testing on that to see if it makes a measurable
impact; I'd imagine that being beneficial to both compilers.

>
> Sending this to relevant parties in the hope that somebody goes "Yeah,
> that's silly" and fixes it.
>
> This is on my F34 machine:
>
>      clang version 12.0.0 (Fedora 12.0.0-0.3.rc1.fc34)
>
> in case it matters (but I don't see why it should).
>
> Many many moons ago the promise for clang was faster build speeds.
> That didn't turn out to be true, but can we please at least try to
> make them not painfully much slower?

Ack. Forwarded that request directly up the chain of command. ;)

In the interest of build speed, have you tried LLD yet? `make LLVM=1
...` or `make LD=ld.lld ...` should do it; you'll find it's much
faster than the competition, especially when there's a large number of
cores on the host. Not going to help with the allmodconfig
configuration, but would definitely help incremental rebuilds.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ%40mail.gmail.com.
