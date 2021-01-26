Return-Path: <clang-built-linux+bncBCG4DNXAQYPBBEOHYCAAMGQEKOR6A6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB31303FDD
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 15:13:38 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id v16sf4874035pgl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 06:13:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611670417; cv=pass;
        d=google.com; s=arc-20160816;
        b=D7osPerqn/BAhCdcxK6qNErAFOI15n1+DFZ+Cych4df4che/bQlD2A5hZ+iudZ8tTL
         NWRsNn3y/h5SXC0MrouGXxYUJdPoxoEfBEwe+YdK5nA17ayrBhB5upTlt3+mKqBVQp8N
         niC2MljErA9ZL/tOt+xaldznHL9ZoTX/a59hYdqrR+KgtbtYrFHD5GC0YPXhOvBwediT
         B5bP9DJKracnAUK0KLTCsE8AHrYPSRRAzI5kRr60Y2ibTtCsLTAJb9faVXflcei10Vdf
         QsTsekjJU9gU6Sn4uezGwdqkoOLG+scfrx0cg133Nfks0xNJkUYvFs1xkW4xzz6mQFeY
         CQWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UqCMqy4TBS12cE/jG/w/2qNZ4Y+jKoIk3sXyFWCkP4Q=;
        b=jG265JqT59Ddk0Se9qjcZr/DK+/MX1ntzQ4xJ2zn6RV7vuuC5JdU09X1l4SrV8uKFV
         Uj0bHUNL5cr63iRsdGQlY/xQT4z5E6lE7+ck/ybclaqwxuyc6WAYyn97RaG6EZaq0Fep
         DiWEjoCYc0zI6G1vps1xDpRfNTsnW+Bu7+EtD8aOabBB76uyZ0p56q/p6iHhHxG91SSL
         kANGrxF03VuYCUBSJ8h2GxaFrRSF6SYSwyd/m4qfJuzgP2DWLJh68J52QArLexVafgeQ
         pqcIa/FaWG8nzu1oWiFacJm1AQjTegFciUXzrIbkTMhHaxsQ9e+y8HLMJ9BuFqnGhrjr
         O1Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TXO8fFxP;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UqCMqy4TBS12cE/jG/w/2qNZ4Y+jKoIk3sXyFWCkP4Q=;
        b=EtGGpYyZskJULvdaBGGEXoBRU69HcvzHwXZpeQ5Bu0zgkLPdIUOqg8LjUVuIGR6KLq
         tR0TSnVTJX6mTkRzeAwYf4U5tDtNr9g5OEJP1uKkQn/oCfdLlaAMAN0XvrB/O5RfGKCw
         fCSi+yxg3C9a7NrdCGyhJQztjI80mFsHFU6tiUV4DSw55fUhLNGz16Dbgwln3Cqj9y+e
         gk2bbGTbdm3GeCMdxkKcqhT0v0Kr4MnU63pCJkLUp8xY6G+djIUpydsqWwHqLZsobI7q
         TPAc5H4BHRhrRCd1wyhPmzrDfQ3zVvf92dEngDTIxHkdjC9Xbq+MKR/HwFNF5a5R88Z6
         EeTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UqCMqy4TBS12cE/jG/w/2qNZ4Y+jKoIk3sXyFWCkP4Q=;
        b=ZcOxudBcRbSK4xzo90ZdLal0yGiCoR2miaVMXvlG4Q3I6eL/ZX0ejhoEedCy1VBcno
         7PP3CFi0PnMITorIMjVJJ9zMrSn7ebGoq6JKLbLp7bh2lIUijAVvXhi1ElJB2qJuUbtE
         rmsA54HupvPN70fg2Eaz5UvGOvahSUJxJi070W2PsxJ9Rgb3UMAlvUnpvfV4K1nBBelk
         qItUDDjcqoeUiIxI+7Zi9qU4rd85eT92Z3zsGZF3kZR3W+H4rPqS+BqRlRpy8GLaKXDy
         k+QFeIPu7d+6jw3OmfN3Yb05XtA1uuXF+9R5d7yUh5K4wleKzSBk0Akz9pdQqkkcRO3k
         XGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UqCMqy4TBS12cE/jG/w/2qNZ4Y+jKoIk3sXyFWCkP4Q=;
        b=Savl61/RQuds8ESJYcEcpHS6+T/sMIoRv0SLJBlCRqX5BgPYx8lzYchh4Rk4+t0Dyw
         UOu5PGAQGK99osedHCAGa73c7h2/MpEgNGOaoVAiQkQkNnNoZL/EgRJsJeiZAy8eDkEl
         lPhDR1imkhZDbWZ09ovAtgg3EnYQqkO+kb3CY8ZOaZCDl4ELUycpx/3tZnTViUGzSzGZ
         uC6gRjIYqG48wK62dmzykFukXChgizw898qSSPyQbZLggZbzESorb1n/URLuuiNEr5xR
         BKnvPVz4BY62/xGF+GnIt7b3K5o0OTSOoAjhHabHM4HqvVp0LMTz7HpKMYU42gqfOjn0
         jvgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zC5yUMl0xryi+u+tB/vnaTDBeBoUQch0/Hcx4DlPxcAZaKZZH
	kZCGxiquMlCnUiZRSMEwK9M=
X-Google-Smtp-Source: ABdhPJzB/7I2V5KH1mAHc/CVL5msqtQe7/nsYDVVCgqcHvR+ZbTL+sfXaAFKCEdwTeKx841K+VZi8A==
X-Received: by 2002:a17:90b:368f:: with SMTP id mj15mr6389937pjb.201.1611670417650;
        Tue, 26 Jan 2021 06:13:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls6083004pfa.2.gmail; Tue, 26
 Jan 2021 06:13:37 -0800 (PST)
X-Received: by 2002:a63:78ca:: with SMTP id t193mr5917971pgc.391.1611670417073;
        Tue, 26 Jan 2021 06:13:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611670417; cv=none;
        d=google.com; s=arc-20160816;
        b=KkIozfxG9Ii7j9lLW/6QYrNnsvCybkyprCUEFsQDa8PjLYuz0x0w1e0rLNvbT7I08Y
         5wKzEBv9fcVQV7Pj+N+QYNJv0dmZDU8KgLKuz1L8gu+CprI0Fe9Ur3kCtVch/YyEovtt
         Ol846boUYmbHH9GRkxLWXDDNClMggn+pzSPaS6RdvP/3it0ofmFo/LQX13GzZNuy5XyZ
         iBuLB+nyxWVineJxndrT08dCkDPRHqCCKcDjzpc0axOKJsfbXW8E3O//d6swYFt+IVvn
         lekREqTgQLRwJPCmPXDy/14ltzZldegLCREqDsM7CeFReZvNHjf6tIdbfIMMKd42mXTq
         H2nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kGoosFUL0iAtgjPJ/Qryecn6FpvdivveQoTTsE0iKR0=;
        b=eRKodVDgUIjEKX6VR5xbsTD4t7h4xquK0vg28zlv0/cK/SVCn/idjrYgFxCGMihNqu
         X4c+wzSVkl41hD7mBRaJyMmgBytwPa3tJ67zfClZmAcRxgNVr7HZpBjVv3HgE7bW0b4V
         PP8IHSAXNE9L1la79gTmjaO0yB7yAlmcw2RlZkMRLyqTbPj7dRy3ZZ9z5SOqwKIozH41
         CYvwFcyeBIOklHlIxEf4UZSh74ZaDYoMNGqPo6+pcasuAU1YiRkNWfDtIWSFS7N9Z/Pp
         YlCopoNf13VuS2Z+VbFOG5tE2VqlKCL8r0wrDW9f7/xD098olvgwEsvDJLQh3hvCdtcC
         +LVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TXO8fFxP;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id a9si120484pjo.0.2021.01.26.06.13.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 06:13:37 -0800 (PST)
Received-SPF: pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id e206so4572349ybh.13
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 06:13:37 -0800 (PST)
X-Received: by 2002:a25:4c8a:: with SMTP id z132mr8921794yba.350.1611670416383;
 Tue, 26 Jan 2021 06:13:36 -0800 (PST)
MIME-Version: 1.0
References: <20210125085622.2322-1-candlesea@gmail.com> <97d1f36a3b534b7fbd3790a0277ccaf5@AcuMS.aculab.com>
In-Reply-To: <97d1f36a3b534b7fbd3790a0277ccaf5@AcuMS.aculab.com>
From: Candle Sun <candlesea@gmail.com>
Date: Tue, 26 Jan 2021 22:13:25 +0800
Message-ID: <CAPnx3XPRnpPQyW7UO_TTmQrHwitDw+_i3ESVkaGq+JyiY9Pu0w@mail.gmail.com>
Subject: Re: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
To: David Laight <David.Laight@aculab.com>
Cc: "keescook@chromium.org" <keescook@chromium.org>, "arnd@arndb.de" <arnd@arndb.de>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"natechancellor@gmail.com" <natechancellor@gmail.com>, 
	"ndesaulniers@google.com" <ndesaulniers@google.com>, "candle.sun@unisoc.com" <candle.sun@unisoc.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Candlesea@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TXO8fFxP;       spf=pass
 (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b2c
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

On Mon, Jan 25, 2021 at 6:37 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Candle Sun
> > Sent: 25 January 2021 08:56
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
>
> It isn't clear that helps.
> Compile with -ffunction-sections and/or do LTO an there
> is no reason at all why the functions should be together.
>
> Even without that lkdtm_WRITE_KERN() could easily be between them.
>
> You need to get the size of the 'empty function' from the
> symbol table.
>
>         David

Thanks David.

I think using abs() by Nick's advice would be better. But could you
point out which kernel function can get function size?

Regards,
Candle


>
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
> >       return;
> >  }
> >
> >  /* Must immediately follow do_nothing for size calculuations to work out. */
> > -static void do_overwritten(void)
> > +static noinline void do_overwritten(void)
> >  {
> >       pr_info("do_overwritten wasn't overwritten!\n");
> >       return;
> > @@ -110,15 +110,14 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
> >
> >  void lkdtm_WRITE_KERN(void)
> >  {
> > -     size_t size;
> > -     volatile unsigned char *ptr;
> > +     unsigned long value_dow = (unsigned long)do_overwritten;
> > +     unsigned long value_do =  (unsigned long)do_nothing;
> > +     size_t size = (size_t)(value_dow > value_do ?
> > +                     value_dow - value_do : value_do - value_dow);
> >
> > -     size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
> > -     ptr = (unsigned char *)do_overwritten;
> > -
> > -     pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> > -     memcpy((void *)ptr, (unsigned char *)do_nothing, size);
> > -     flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
> > +     pr_info("attempting bad %zu byte write at %px\n", size, do_overwritten);
> > +     memcpy((void *)value_dow, (void *)value_do, size);
> > +     flush_icache_range(value_dow, value_dow + (unsigned long)size);
> >       pr_err("FAIL: survived bad write\n");
> >
> >       do_overwritten();
> > --
> > 2.17.0
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPnx3XPRnpPQyW7UO_TTmQrHwitDw%2B_i3ESVkaGq%2BJyiY9Pu0w%40mail.gmail.com.
