Return-Path: <clang-built-linux+bncBCG4DNXAQYPBB2F3ZGAAMGQE64PXIIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E066306DC6
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 07:47:06 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id k26sf3423711ios.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 22:47:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611816425; cv=pass;
        d=google.com; s=arc-20160816;
        b=dfNPpTV/5IlGEbPp8pwcOdeXbqE8QK2f5Y75i7JRoQVrxu7n32SOoTFg/8Y3bd36EQ
         a95jOmLqxNvK4D4F/70A9PmABwtnFsDGcTRBioqoY5TnvWcwuC09/ejS/vjKznM3fDR0
         8gQhzj4K2zhRlNe/6fP6W54HiTXtZOsDXDjUGLoW3Hct5+A7E57IMVFrsSn9+99o6sGP
         E9FMXsn0P01ZooOeNmW4NyayNiuJ//p64GG8yYJeDPJhC0kYhogT4ZOHaMzikGGxUL4V
         RhEzoIFp60XBRLT6EtLog/1yWRbVvyxAvOvXS9tE2JtwlM7MWmVn4124lErvwJzrnkjw
         pihA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+orUKSYX0B73wpejxsHcNVxY/JRwwUq6AOVDF4UNXbE=;
        b=x+0wHUtABcSgJ8yFbAoENqXYitf4bpCm9UDXn7rNj7lKB6ZVRd6YTu0fO+NIURyAEm
         UGlPnJtd4WGnLzXeAHYAL2npOc5J4cNhrrtI/HsBkGpCLlsc8YjzaI15QDusifsF5+v6
         sHczq1C16gPfK4pHgYBI1CShOGve+5TuoDya0vY3GgnxrBJMSJ9zNYeY9PGbUfPTYakp
         eAMX3vuv4KSZAxeh65QuTmDJ6cjfCFdA5jHg8gIgjhhOMbWytdIFU+U+nUjYCFJecQ6Q
         XgJK81zTVB+n9RxqH1wAvTNSUE8HHYN6vcge0m2ZtYo9NQMoYy540xEW0V3l8Z7xDPPz
         p2/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hgoerTFg;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+orUKSYX0B73wpejxsHcNVxY/JRwwUq6AOVDF4UNXbE=;
        b=cJzdj5YRsDDKd1QtyLVZj7dlqGMR1L9hSjWJzKTQDMD8WgXXqRlieRr5TH0aI/qOv6
         5fHPRkidFjl6hyHZZ5EmpkpSeBhydpExiZPHvMMGY5bfMQrjQo+/Q1nZg6zQwNC4eRFV
         Jf9iTCfE1YaIL4v0AHLQtdpV5mTlze7HUzsAgdCB9c5g/QF+yAbDlL26s3qbAgOGDgG+
         8OTRtw/EUYQ/erL87q+KI2n0ZAwrNgkN/cheMKEWthE9V8W+15d/+6sx8plwIAC3JQLH
         gB5+i5bKYRSb/KgiVAqMSlObbdX3gBSjOcXwmveW6o6XTb91sOZSJFwVXfgFyROGXtFF
         epsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+orUKSYX0B73wpejxsHcNVxY/JRwwUq6AOVDF4UNXbE=;
        b=X3A6jn0tnhPAhjCQHwpMRpQEXVQ/KvcHvXU3CB2rKsrmTaq2dmhvNl4if7d/KK2NEI
         OO1ol5CcIo1Ce2ON/T8JKURBzpSBBuYzTfTLWXsgKePBz9ijeBwbqkcIp1jEb1IeNx5i
         Y5JHmdVZ+ZAwv4StosHkUMqsNXwsr+FG+YXlB7PIPddnX5Qbgg0Y6xDv+p67zy8RfVnx
         wWuEk/2bzE/I0g65aeNAmKfMmclv1oRJzrxMrRyrgXFQQC/P/F3Ph+/foqhNHfwXerAF
         mT4HOVhvetj5EYwwkzpjNnFJlA+FFDBDYAW90LCZvNtNPazRfDH72hHCnqmgy/vhAgSx
         7mww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+orUKSYX0B73wpejxsHcNVxY/JRwwUq6AOVDF4UNXbE=;
        b=R9kUqogj27B9hKFco9QWDKRO8dLH9/3nGqbJGOVSRtrPtRXf8CP4+8O5rtMzVMLd/K
         0ii22/HCBotNQmNZ5rikQArSudyJjFdUaVV0e/vJXDKge4OgxhPR0OMmEsYbeofMGBPJ
         KnLQgzizWhlRkA/DlAtX0cfC4fAztyfPUERbKVVo1D1cIf7sdgZ7YbtrORP5DWMedNYg
         ShlXhVmZEv2bWQK8igmTpkqtMPO7BTLqzgbJXpP7B/iyadiZeAzVVK//MdC4mniRikfg
         NloWzpqh3KOPIPIaIG0kgSo5W/OToDRjpOvHvugpY3ZLVG43+mtD8itZvXtHZl0uf+4B
         0VVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530v+NRExzRi5Llh0XJ5201ia/8YMFGarzAK1VykGREZpfRZR9or
	L2gH1e9fT0rnWStRaOq1V0A=
X-Google-Smtp-Source: ABdhPJzWvvvzv//1iuNwVIuQqUd2PJOMc6viqX25FCKrCnt9eED1iLMmmgaqi0AihgwqUouHfD1UyQ==
X-Received: by 2002:a6b:8b4a:: with SMTP id n71mr10073843iod.82.1611816425119;
        Wed, 27 Jan 2021 22:47:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls1196609ily.6.gmail; Wed, 27 Jan
 2021 22:47:04 -0800 (PST)
X-Received: by 2002:a05:6e02:1d0b:: with SMTP id i11mr11293773ila.206.1611816424717;
        Wed, 27 Jan 2021 22:47:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611816424; cv=none;
        d=google.com; s=arc-20160816;
        b=gZw0cgChrkeIgy5EfPT1r5iyoDqijAeBYOow01vvdsYbFsQwCkYN2KNnmmovg2YnbD
         hFHb3pQY3PBduEFv9vE+Qr+w2u9EIS3K2j8U3P7LZv6+43FfjkAzW4NNRyNlH3jhahaO
         PxobiGiuinx1C3i7AM5ovI06v3a5KBkQK/ll9Wc/3wPX4BxzEKd310q4rnBr6AJMWa7L
         Os8sQrVCKUBzYh/pkkvI+QAnCcBz6h4ai0TFP7Q007XlF75GVchCHU9EwJO7YanxB5jd
         SwJAwCWGmLffS0csrlLtpcGDBvWgRp8uSWeY2CNX+UdvWkz/jPZ1jBhQaA3aocwAQ4nA
         jCSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Qigc4Q2zk4kidcc5fEGaK1ackCv7ueDldw+kGCII7Bw=;
        b=sWpQcGHb8eYH0Y49i5GPu0rkT3TTe07QIkf4cU973szTc3IPmK+0+uTDlVGpSzY8UF
         Sii4z/PdXTqQD1IHubYc6npzIH3VNpnxlSwmeIHQzGhVayue1kCtF8QOMYxVCoiqSxu9
         0e7tY0uRdM0XO/SoZ3zMhgK6WovyM3JyQu4I7e/xyIkgvpBT09u1A4Lz/GP2/qmEctrc
         vje7p0v6PeLh1DdGM4qc+mq+2kEc/FUotkvVj1Y0IbydjMeAFYqGO+Mnws0yql7W30mi
         kEjmN3gtBcaoNtbA8Ka87NuBg2r3sizFAnDo6KQYPX7uOI6O1gQI2XdA4L0CwxKWF4oJ
         TNqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hgoerTFg;
       spf=pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=candlesea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id c2si301097ilj.3.2021.01.27.22.47.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 22:47:04 -0800 (PST)
Received-SPF: pass (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id e67so4436542ybc.12
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 22:47:04 -0800 (PST)
X-Received: by 2002:a25:3bc5:: with SMTP id i188mr21663855yba.332.1611816424260;
 Wed, 27 Jan 2021 22:47:04 -0800 (PST)
MIME-Version: 1.0
References: <20210127110510.24492-1-candlesea@gmail.com> <CAKwvOdm4XaoW+yrtj=7C7ct5dvNuxT81zs1Wp=X0MBFceukd9g@mail.gmail.com>
In-Reply-To: <CAKwvOdm4XaoW+yrtj=7C7ct5dvNuxT81zs1Wp=X0MBFceukd9g@mail.gmail.com>
From: Candle Sun <candlesea@gmail.com>
Date: Thu, 28 Jan 2021 14:46:52 +0800
Message-ID: <CAPnx3XMEtVQVYUD5aLAC3Adp+Y0fz13nbBTHg75f6W1q1g9Usg@mail.gmail.com>
Subject: Re: [PATCH v2] lkdtm: fix memory copy size for WRITE_KERN
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg KH <gregkh@linuxfoundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Candle Sun <candle.sun@unisoc.com>, David Laight <David.Laight@aculab.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Candlesea@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hgoerTFg;       spf=pass
 (google.com: domain of candlesea@gmail.com designates 2607:f8b0:4864:20::b34
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

On Thu, Jan 28, 2021 at 1:40 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Jan 27, 2021 at 3:05 AM Candle Sun <candlesea@gmail.com> wrote:
> >
> > From: Candle Sun <candle.sun@unisoc.com>
> >
> > Though do_overwritten() follows do_nothing() in source code, the final
> > memory address order is determined by compiler. We can't always assume
>
> ^ "by the compiler."
>
> > address of do_overwritten() is bigger than do_nothing(). At least the
> > Clang we are using places do_overwritten() before do_nothing() in the
> > object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
>
> Hopefully nothing else gets placed in between the two, otherwise we're
> going to overwrite that, too.
>
> > big and WRITE_KERN test on ARM32 arch will fail.
> >
> > Get absolute value of the address substraction for memcpy() size.
>
> ^ typo: subtraction
>
> >
> > Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> > ---
> > Changes in v2:
> > - Use abs() in place of address comparison.
> > ---
> >  drivers/misc/lkdtm/perms.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> > index 2dede2ef658f..fbb7f4554054 100644
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
>
> ^ This comment is now obsolete and should be removed together with
> this patch.  That will also fix the typo in it.
>
> > -static void do_overwritten(void)
> > +static noinline void do_overwritten(void)
> >  {
> >         pr_info("do_overwritten wasn't overwritten!\n");
> >         return;
> > @@ -113,7 +113,7 @@ void lkdtm_WRITE_KERN(void)
> >         size_t size;
> >         volatile unsigned char *ptr;
> >
> > -       size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
> > +       size = (size_t)abs((uintptr_t)do_overwritten - (uintptr_t)do_nothing);
> >         ptr = (unsigned char *)do_overwritten;
> >
> >         pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> > --
> > 2.17.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

Thanks Nick. I will clean the typo and the comment line in the next patch.

Regards,
Candle

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPnx3XMEtVQVYUD5aLAC3Adp%2BY0fz13nbBTHg75f6W1q1g9Usg%40mail.gmail.com.
