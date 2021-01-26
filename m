Return-Path: <clang-built-linux+bncBCG4DNXAQYPBBAOJYCAAMGQEAWOUAOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAD8303FFA
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 15:17:39 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id ep24sf1890593pjb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 06:17:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611670658; cv=pass;
        d=google.com; s=arc-20160816;
        b=k/GcTQlqPgzuI/Vx2AOYwJc/m3HLK4zahENIo+N19A8wvNEggTmJd7cQ2zK5LXtSkF
         zfmrdzO50KATMhbCpg5yFK1fU4uOmPWR+Fak/OTCeBhHQd7bJj8iB4RNN0JKmvsSTGhg
         6d4lS0DCGFq69RgL1bZmEHRxhCSqC2w11BA+/evUFl0rcv+UwadV+nA0Xhc0yDwT12yj
         yJVgugpq+SapoCR55WuoYj1QlCNb6Dw4JoQh5ucCXrXltetFxRaUzVUL7I7B9S+w2MMg
         A5pOTgREpbTFusi1OHJxqIXBsq+Q4sc5Cn0GheEG4ZxGWlg6FfzrbAa+CRGHBBIWU+qf
         wYtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=VmPbRZUtGBjLkex9KRcfOIPFoA4hKmwcB/DEL2Ec3a0=;
        b=KaSKBbqVGn46EgNoYeIoB0+U5lTtYqe8nFszCOD3ccmkylaqzmDaCDJwjbUdDJcLkn
         uXsQX/Kgtf/c4a+CGL9NqCW0Eq3l9ZMfrpbGkCN9xJD1yMc46IVMYYQlUzmlQYanpIK2
         LzwMhP2idUSLJOMByIVQAZAuPrwXaxFi9aQLU95XBtNktqZcHCYsCPcgWK/ETeqKmPfs
         BmSBMVkV2edgFxfH/f9OgTvl/QtQTI6l/BXhYhaLl7+RcPxCf0/43ET/ZutYdDnerKjd
         Tkdr7mAFVtq/qIUziPdGQXbW0mr0JlV173GJAyxuC2SfTDImxvRHnCuA0n+b8MVyg72B
         5+iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HGnNuROY;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmPbRZUtGBjLkex9KRcfOIPFoA4hKmwcB/DEL2Ec3a0=;
        b=jnLzr9iN+I9u+KtbtdkfZhX1Sh1jx9kLddpIw3h9tebZx4FO+K2aL2JqGzgxOhwl5j
         Rhrj0FSp5k9AhpqEMXCTgD1dtsKeC7eaAo/MHYXaYlNktI6JmhK/lify71Dz/+PnFr5B
         82MLAUw0cFSAhl3dIhwKlQLE3J3MPRBEA9VecIRRVHixwtRuOdHRK+nYOarDBb+JkIVn
         CAjiM8iWI8zZZXNsuKIjBKgQJLa3sX5Fza35YH0O8+Z7d9cPGLU84SfWmZRQ08xCKqKE
         8oQEmjCgznyJopmOwW3LM3CfLrAQ8hUGnauagVBmzkSLdSrg+6ZhESnEmZ4fFD1mN0X1
         NURQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmPbRZUtGBjLkex9KRcfOIPFoA4hKmwcB/DEL2Ec3a0=;
        b=LadpxDpiGOAtyCCXhzkootbZeK1YTpVtRKJ92HDjMFQqVdnNjI2+6YDwIHe5X6nFvb
         8b4qQQXYa5y8tlW88BMvfteCa2I0EiKrUwC7YVH/ZTUImJPYYTBFKXyeF0w3MZ9R4pWA
         E3qZh8zCghyn0F0j/TExezuGqXmri/j3BnuiTyQ8dACt2hcXj7zUyIg/IU7qXAHQjV4d
         EtDMPbz92wGs6XInkG77vDwbKCPATSPUmGTaytnoIoPOob0unXDO28Pq7ACXUg2Pmdhq
         fvvc+xkWh5eYTPQCnYQ7jFTHiAknHK4LHrawlMBXom+S67/WvU5nOU6CCbthin4kp2Ih
         hDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmPbRZUtGBjLkex9KRcfOIPFoA4hKmwcB/DEL2Ec3a0=;
        b=j2qOtfcrjBD7EyrOohas5z2zZikB8MVoAMOB1t4YHUiOag2oF97E87SvHm6mH18Se5
         F48rYRacL0YO5UbJ5KSICICe4yDf2KvrhpM+I6sO7CtVKDkvdNzeiUDd/fyndKMso7Ug
         DsKq5TlQjNqDDBn6OAfdEAYIR6B7VguYhaD2VUnj4Z4bvqfeBryFAoUa3AEulnipYMF4
         ZdVQPo7s5csKAMKc6SPPwqLQ7n/CXS/D0uWrk8vcLN20opUBzto+NTkwTlShqcH67bul
         OaUdBbRXDy6dJEo0Uft7kSjqnJQ8xbneiDXU5txJsRcINVSZQQTE1zADxtjdz3m3vtYD
         eFmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Vx6mbHLFp7WiG/hjnrF+O7qT4GkwFYiffbIgf0+7perc0YroQ
	4oefMUU7Y27+zqoy6FvyoBM=
X-Google-Smtp-Source: ABdhPJyu4SCT1mYDEtSzhQsioxXQ9QlzGXiLvgNIuxwQDfDrcX4aLlukzUOzanaSeg1FDOyQQ2Uy0A==
X-Received: by 2002:a62:c312:0:b029:1a9:19c7:a8e with SMTP id v18-20020a62c3120000b02901a919c70a8emr5597157pfg.74.1611670658098;
        Tue, 26 Jan 2021 06:17:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9386:: with SMTP id t6ls6088021pfe.1.gmail; Tue, 26 Jan
 2021 06:17:37 -0800 (PST)
X-Received: by 2002:a63:4346:: with SMTP id q67mr5785860pga.223.1611670657594;
        Tue, 26 Jan 2021 06:17:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611670657; cv=none;
        d=google.com; s=arc-20160816;
        b=LR0rp/tCyyXYDkffVQr/tJ+rrTBBsovvmgYPH9LZz8rALvvgUYT8I19178HIidBshr
         f1snMUEk+pSviyrqEXQeb/4CbhcZGcO1+a/lMKdGTWu7nu5mpfZ6Mcy8Gn7LjGpCtz/T
         iMxujKSDd9Cp5iPSBk5S3K92hZ7kdN2a1/XLz+7e8gkU6LbjhsyilOzcjYf6EAfIkjf6
         9xSx8DDWfv2NBKie8ob03766W8U1qozMps5vnH2UvpPdzjuRNyjeq9g/Lu+YPNQdYMzf
         xOfQGM/k21apJmD0F+emySovqcnN0CxQdffDWsLIBloaRnaEAtPefeFaHAGfyzl/oqLs
         rnTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AS/PqSCLXPUX5/0cv/D32Ab1nbbd5GInwJYzei8iock=;
        b=jpVwN6Lk6ZXsQKq3uXZz/7VS3F1AJeQJuvWHjMGKNnwYHqZ/VBzbAhT9gC5s3CwIrZ
         sPq28Lcb+1efWAvd8R+ZXO3RlQyXFG+Hkbcn/IqUeUK3Kb1wnbPde+cf0ssE/ODNkahJ
         7g7LcWWbo/MFadiSm/WFUfzEBAfSuvotlBlGxSGhoj0vdjPHuA91pYaRkMmi+Y3cW/iO
         epvesSBtSYaA2iaHUzT4b+E1XtL4zfCtWiByV9m3nI6uSoMjVCrT36n8bHjG1BsygeRx
         5CFq9EERLCG11fxU116kp1yh7GFkHSny2uTUdjg8p1niYw3YoQ+l0SpDkGst1Il4k+Lx
         Y+xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HGnNuROY;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id x14si266426pgx.2.2021.01.26.06.17.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 06:17:37 -0800 (PST)
Received-SPF: pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id b11so16839076ybj.9
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 06:17:37 -0800 (PST)
X-Received: by 2002:a25:2a56:: with SMTP id q83mr8430303ybq.144.1611670656827;
 Tue, 26 Jan 2021 06:17:36 -0800 (PST)
MIME-Version: 1.0
References: <20210125085622.2322-1-candlesea@gmail.com> <CAKwvOd=b+ku7cd24KTYpNecYAUHxR5aBmrC1q+BL67+1YBHjzA@mail.gmail.com>
In-Reply-To: <CAKwvOd=b+ku7cd24KTYpNecYAUHxR5aBmrC1q+BL67+1YBHjzA@mail.gmail.com>
From: Candle Sun <candlesea@gmail.com>
Date: Tue, 26 Jan 2021 22:17:25 +0800
Message-ID: <CAPnx3XOMpHV96aF=A3978LAapV1dXU3YvFrqU=F-Oet8xpQYpA@mail.gmail.com>
Subject: Re: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg KH <gregkh@linuxfoundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Candle Sun <candle.sun@unisoc.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Candlesea@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HGnNuROY;       spf=pass
 (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b35
 as permitted sender) smtp.mailfrom=candlesea@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 26, 2021 at 5:16 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jan 25, 2021 at 12:56 AM Candle Sun <candlesea@gmail.com> wrote:
> >
> > From: Candle Sun <candle.sun@unisoc.com>
> >
> > Though do_overwritten() follows do_nothing() in source code, the final
> > memory address order is determined by compiler. We can't always assume
> > address of do_overwritten() is bigger than do_nothing(). At least the
> > Clang we are using places do_overwritten() before do_nothing() in the
> > object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
> > big and WRITE_KERN test on ARM32 arch will fail.
> >
> > Compare the address order before doing the subtraction.
> >
> > Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> > ---
> >  drivers/misc/lkdtm/perms.c | 19 +++++++++----------
> >  1 file changed, 9 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> > index 2dede2ef658f..fbfbdf89d668 100644
> > --- a/drivers/misc/lkdtm/perms.c
> > +++ b/drivers/misc/lkdtm/perms.c
> > @@ -31,13 +31,13 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
> >   * This just returns to the caller. It is designed to be copied into
> >   * non-executable memory regions.
> >   */
> > -static void do_nothing(void)
> > +static noinline void do_nothing(void)
> >  {
> >         return;
> >  }
> >
> >  /* Must immediately follow do_nothing for size calculuations to work out. */
> > -static void do_overwritten(void)
> > +static noinline void do_overwritten(void)
> >  {
> >         pr_info("do_overwritten wasn't overwritten!\n");
> >         return;
> > @@ -110,15 +110,14 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
> >
> >  void lkdtm_WRITE_KERN(void)
> >  {
> > -       size_t size;
> > -       volatile unsigned char *ptr;
> > +       unsigned long value_dow = (unsigned long)do_overwritten;
> > +       unsigned long value_do =  (unsigned long)do_nothing;
> > +       size_t size = (size_t)(value_dow > value_do ?
> > +                       value_dow - value_do : value_do - value_dow);
> >
> > -       size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
>
> Thanks for the patch! Might it be simpler to do:
>
> size = abs((uintptr_t)do_overwritten - (uintptr_t)do_nothing));
>
> Then I don't think much of this function needs to be changed.
>

Thanks Nick.

abs() is better, I will check the patch.

Regards,
Candle


> > -       ptr = (unsigned char *)do_overwritten;
> > -
> > -       pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> > -       memcpy((void *)ptr, (unsigned char *)do_nothing, size);
> > -       flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
> > +       pr_info("attempting bad %zu byte write at %px\n", size, do_overwritten);
> > +       memcpy((void *)value_dow, (void *)value_do, size);
> > +       flush_icache_range(value_dow, value_dow + (unsigned long)size);
> >         pr_err("FAIL: survived bad write\n");
> >
> >         do_overwritten();
> > --
> > 2.17.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPnx3XOMpHV96aF%3DA3978LAapV1dXU3YvFrqU%3DF-Oet8xpQYpA%40mail.gmail.com.
