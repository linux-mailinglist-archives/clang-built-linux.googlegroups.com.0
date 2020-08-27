Return-Path: <clang-built-linux+bncBCT4VV5O2QKBB7PLTX5AKGQEJNUTB7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BAD25415A
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 10:59:42 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id x13sf3613596pgf.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 01:59:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598518781; cv=pass;
        d=google.com; s=arc-20160816;
        b=f/C/fY53Z6x5cdoa1xl04bTZ5ob+dL9q/yYdpppBRi3WDk+hghw0+DBJrpGM3lKJjG
         XIIS0F9R6YSWDnE5ZKnDucTyVaqtgwS8Qdpok/f8OyyEQtL8GmABlOIZGxB54skYuOpU
         Yqw4WDXkVkYMMPLVl1vSQBtmranp9iE9zusfB5OqLQXEGpuVnVGwNrU4n/xDVhW3s2zG
         GE+tqH9iHk2E0I7HUCYVsY7+yT/Dyttr+4f5JcElH7nvRa6NA98mmuzPERfuP1sKSNfV
         shwyQBl6VdtNj3J49U1NazQ9KMgCbaNVD1Wrp8bhfyCahyS6zAObAtltHM+ajjSqmzRH
         AYLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+QQvknp7jknHowt1oWr8m7KB1m9ZRDU16GQeCPpOkUk=;
        b=siPu0f3VPxONXjFnlflpdpcvKgEsc8k0dTm531rowvGqae3YMit6iW0V7W+sQwfrLD
         JlOedWv3oYRnrV4dIsZNqFQmQqiOpfNagceuFq0N+j7ciNziHOXbYei8ejjG6XIbMHhQ
         Gs62k4KpsA8ZD2SyReu71r9DSQsVZ12yauuSETCrghPkgWvCHY8l4ALnomcsZpBo1ZDo
         hIrilzn9fXyvO+vUxDmTJYtiAM2hB+uKakRvQvhu+WcAQvghwP/GhdVfelAJ9g9O3Skr
         CBEuz/hUPS/nn1H4MavmC+59CsxGddTKd0dzLvbQu08IM7EFGK6GBOLSPdAYXhb0FcV5
         f9GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ofPoQ+wh;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+QQvknp7jknHowt1oWr8m7KB1m9ZRDU16GQeCPpOkUk=;
        b=ixRrbvOAn1T4F3GYfFIVNqiPIcNwLCYF9NxVu4cuYWZr008LWNTsrpJdnhEbhKlO+B
         aMVC7C+dpT5FT2qbOa2Y8+9FnQh41xEDidwS8diueykSGVQYQXTaCJ3M8iyhkn92kfJH
         Di8Ff5NENIBxIgWxajvPsuJ9DME0PgTqVm7IqUYAEoAI+1QaC30IQHRHxJTGPsJFiy6T
         iPq2STAPpH66TnzSbmQ3tr7v/Qj3b/dO2IWC4QIKZGaDBzD2Lm7mx7aCIuxp0DvCj62c
         0pykvixivuSqHnTJKal5TabqvxNFpozJTDKw06RV06LGFfM0bu2EBIL3X5o2E8Mp2zwt
         BwMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+QQvknp7jknHowt1oWr8m7KB1m9ZRDU16GQeCPpOkUk=;
        b=K2cEhUP74N8MPD2aNmAX167dHZAdl4+E+NnzD5iNuxk7BZAhGylAoNuOTnlzJaaE84
         nRnVYP2Fj6GUiZCkWlkdnyWgURfz6/BRwabluu3X+qYg95sSiOKk+P6Zz4iLygECtE/y
         Nvi1RI+fWAXs3YiwckjdmPzAYtxIr2PxfK94+suspKjq5mmy/fHY0qTdsF4cu7xpjXco
         1I5oUKnqNNgG5xqWr8k5Xf2rLD/B3lN21kyzsUO5Hwm5qRAK/PvwH6/HSVQqJ4vfElAj
         ZZ3oPnpfPRcpA5mGbRN/ygKczeTllVtgINOhZAHLUIbORIEYvwQcOXudPxKwtRGa03PS
         1ApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+QQvknp7jknHowt1oWr8m7KB1m9ZRDU16GQeCPpOkUk=;
        b=H/bMM+MhTu4dudVmNBa+tB9ax1fIXF/pd5oUCaWisdr9Rdckl5cRY0JRvxCMTmH/Qx
         Z6ubQ+GoHeL1zlSJzsriCd/JZ3+HmUwJUUfOp9XMjAtPkMZfquQ0fi0LWJ0iZzJ4E4m/
         OuVLowBYdzFI0ULgJzoNYHN1Rj7jps57cbJEhOUbYJScxcxH8o8cV5lESBlFugMAg1oh
         n36oIxWFEXI55rL4v41e1DyCsTyEjS023hb+lKztV07MUoEKmg3xjME8n8D1MOv1nHOh
         6XV/9uG2TThC7nQ/2IaSMneqehPR9EQa3L2YZzOWZg+dy5pJXGg+dskmYVu8dJqpHgIZ
         K/XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tSENuY3Fu7PD/X4LRp4kgiDRSFDvcR0A/sLc145zBMw2AmpY8
	M4WAOCsDja5pvD7qQc15X58=
X-Google-Smtp-Source: ABdhPJxI4H1P/dP3ozSgsvv2KzfatmcxeKiWk4RU09Wlv484zNR+qshcBJY/2ZgWrRmLwoMDKgiocw==
X-Received: by 2002:a62:5a81:: with SMTP id o123mr4857481pfb.213.1598518781360;
        Thu, 27 Aug 2020 01:59:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e64b:: with SMTP id p11ls636604pgj.10.gmail; Thu, 27 Aug
 2020 01:59:40 -0700 (PDT)
X-Received: by 2002:a63:1242:: with SMTP id 2mr13302206pgs.403.1598518780815;
        Thu, 27 Aug 2020 01:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598518780; cv=none;
        d=google.com; s=arc-20160816;
        b=ITeRdg5+cEXaUNCCNRTz9uaIybUg2h1nVCalV4sorf4EnU6wCzgPmAFNdYtQ1/dXfk
         opMbF2i3/HHjobHUjaMbY4GGesoVjDXgY3bNY+D9m0Gsr/9GN2NlaIIDDU+9fnkKcelq
         YQRTcsjQYOcIEiCFQG2MgisFdoS+1pge5wr4Y/JdLaeR5FnANEw9hQNibRTSAm988dZn
         hiPXoNBw5lg/FU1dLUPJqxjHU679hUpgYU/+I669WLmjpQRmvWvfbGw2Zn8XiQpkqflI
         yh3FvQrr/ifT+Oelp+keI9+n7EQk1r3qXhXFm/IcxUWU4D6U4QkZjA2Fat7DvKQmb1Yw
         lw2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=knuyGrcnDNfBLfuI860cvzWQlaN7tR5tqLC2/Iy3p5w=;
        b=EZ8ST8KjuwH6evr8qIgiOWUEidQnxmIudx9FeHsQMHeh17bkfbcMBw/BF7wbgUNQjg
         DcSc35wwpXAGxTps713V0au1Zk+HP65bqlfcSXQ59ggbu9aL+2aT/K+2tlAFSMm9NVit
         Q09mq/bUiCKdIU/3oepE4csv/v5FBY6Y/nlHxPc9S75XVHJr5HpsZj+CbSSnaSQx2rcS
         AXTTmTfQrLlKB93sEYlT+LzmaF2KhU8dYYnWmAQCJx3RMTaFOXXlgPbstq2d5POZeZs7
         qvja29J1RgTETJB/kGxe/MWiG0OA/2llhzeCv5c16+NvUW2R1Imufe3EPlPqZ4a5hhUj
         xNLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ofPoQ+wh;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id m15si62402pgc.5.2020.08.27.01.59.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 01:59:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id n3so2336385pjq.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 01:59:40 -0700 (PDT)
X-Received: by 2002:a17:90b:509:: with SMTP id r9mr10116299pjz.228.1598518780491;
 Thu, 27 Aug 2020 01:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com> <202008261627.7B2B02A@keescook>
In-Reply-To: <202008261627.7B2B02A@keescook>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 11:59:24 +0300
Message-ID: <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Sami Tolvanen <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ofPoQ+wh;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 27, 2020 at 2:40 AM Kees Cook <keescook@chromium.org> wrote:
> On Thu, Aug 27, 2020 at 07:59:45AM +0900, Masahiro Yamada wrote:
> > On Thu, Aug 27, 2020 at 1:58 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > On Wed, Aug 26, 2020 at 9:57 AM Joe Perches <joe@perches.com> wrote:
> > > > On Thu, 2020-08-27 at 01:49 +0900, Masahiro Yamada wrote:
> > > > > I do not have time to keep track of the discussion fully,
> > > > > but could you give me a little more context why
> > > > > the usage of stpcpy() is not recommended ?
> > > > >
> > > > > The implementation of strcpy() is almost the same.
> > > > > It is unclear to me what makes stpcpy() unsafe..
> > >
> > > https://lore.kernel.org/lkml/202008150921.B70721A359@keescook/
> > >
> > > >
> > > > It's the same thing that makes strcpy unsafe:
> > > >
> > > > Unchecked buffer lengths with no guarantee src is terminated.
> > >
> >
> >
> > OK, then stpcpy(), strcpy() and sprintf()
> > have the same level of unsafety.
>
> Yes. And even snprintf() is dangerous because its return value is how
> much it WOULD have written, which when (commonly) used as an offset for
> further pointer writes, causes OOB writes too. :(
> https://github.com/KSPP/linux/issues/105
>
> > strcpy() is used everywhere.
>
> Yes. It's very frustrating, but it's not an excuse to continue
> using it nor introducing more bad APIs.

strcpy() is not a bad API for the cases when you know what you are
doing. A problem that most of the developers do not know what they are
doing.
No need to split everything to bad and good by its name or semantics,
each API has its own pros and cons and programmers must use their
brains.

>
> $ git grep '\bstrcpy\b' | wc -l
> 2212
> $ git grep '\bstrncpy\b' | wc -l
> 751
> $ git grep '\bstrlcpy\b' | wc -l
> 1712
>
> $ git grep '\bstrscpy\b' | wc -l
> 1066
>
> https://www.kernel.org/doc/html/latest/process/deprecated.html#strcpy
> https://github.com/KSPP/linux/issues/88
>
> https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings
> https://github.com/KSPP/linux/issues/89
>
> https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> https://github.com/KSPP/linux/issues/90
>
> We have no way right now to block the addition of deprecated API usage,
> which makes ever catching up on this replacement very challenging. The
> only way we caught up with VLA removal was because of -Wvla on sfr's
> -next builds.
>
> I guess we could set up a robot to just watch -next commits and yell
> about new instances, but patches come and go -- I worry it'd be noisy...
>
> > I am not convinced why only stpcpy() should be hidden.
>
> Because nothing uses it right now. It's only the compiler suddenly now
> trying to use it directly...
>
> --
> Kees Cook



-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA%40mail.gmail.com.
