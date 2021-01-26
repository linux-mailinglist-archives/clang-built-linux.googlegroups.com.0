Return-Path: <clang-built-linux+bncBDYJPJO25UGBB76DYGAAMGQEDFUMBHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1D130469C
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 19:40:01 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id n23sf3567869oot.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 10:40:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611686399; cv=pass;
        d=google.com; s=arc-20160816;
        b=ue0I+bRzRsogpaWfsZK/IDcXsc+8rXcr/7Qw/srpC/NscDRP2Te45aaFh4kqyrbPlR
         N4+D2zqE5bqW6NhTPS3Cr51aflgQPoAB00pV192dREKMTY0PdoS+rmddGIQns+iM31u/
         I29+o2XyCJrRLQEwS9wxBrgK14QcURxWNALTtFLjXL7F96679ZTbV/ZnrZhfuJ3a+Pse
         CMPm8hC5lbxMo2HVrodCoNHniKB33sDwI+TH9+qYegAHFEu+sr9uGe+kk0CYGoESn0Eb
         Lx69b5GOhE1sDyRqZevw0QdrG7DeOcQBsRl5xVuu/7LzLZz09MAueThB8zikQ8v3SF+U
         9c9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=c3tKIOv8KoC/vnse6s1OJelrACszZbjdzZLC8ihNbwc=;
        b=gy/lU15qQKk8VWBkNladO0nG3HHoT3fwEl3q9sipPpLNXy4+yrkMgQ4srcQkoahBn1
         UEp5xawWOHrAjP1W+e80IzQKUeNUvecquVv/dRq6YZ7UFOHwvjBwa1gtEZRqPKkOW5Vu
         70AHycRFvEqkssWgNC2l/ALfQPDsRTvzxaDRYecei8ycqLBD/qIQYmU9hDxPjVpISt9v
         xjxy+hbERx4oH3h/tOISH2tuP4WafOb/lzcnFYOuCTWzOF9e2M0fNzTZGWgpBUuFx7sL
         seV3pvezNU7jC2GWHt6xF1oOGKRqd5MsS7IJDtHssjJpXhX66JoJK0j8EI2zKgmB8j7I
         Wz5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CEt7mCei;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3tKIOv8KoC/vnse6s1OJelrACszZbjdzZLC8ihNbwc=;
        b=rHpqL7h5Ifq2d512kWvPIn06gPP9V5wOhGDD95qF/2j6EKfJrSDCEmzZcM4DdKczAw
         KWHYySQwZgrD7tbDIoCnqNGQQLB63/dFXeKYVlF7bgp8SJshrnHEVD4jQ/Pycuufwk8y
         qFZQ5ebCpGiHzCDNJaxqq+cqK1n3HaHDZ1J0bw/mw67AsjY/pOlHfyCqXUt9K9mVw2wm
         PkWjAJp5ocrgKwao5b0E/nanuh0TbOrVglU7Pi/hAu/TbKrAZtOSBPV71sG5DlmTOUxU
         eud04exJiwjk+GCm2Q/qf0SttylAXB9/IEQpruP6bQA7sDXPKGPel/bQSZdP3WPyLTWg
         bJAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3tKIOv8KoC/vnse6s1OJelrACszZbjdzZLC8ihNbwc=;
        b=a8WSJloRBgdOBe6R8nyq6uyUK10qTq0NCpN2lP7gNBgnjAsuyef6AvoAuY/6HXJW0v
         VFRQBJjgoO4lRYmztAee143rIwxQJZMCbdB+xzyiSkGeYKzAUvvw3wx5HDr9fvXOUNlc
         bl/6KN4p4vXIWX1nNdiPD+dYF864/22knIMRdzxyqV7tcvNh68MsvQAWGylVgSmBxXd1
         kUXnSV28ETtOllp011ukcsXHPXZlvKxg54iaaHgM4CcwT5onuwW1axGJiWQEgmN4PmFA
         fb7nK3XSZlKqo9HVrUnkLHkXelklBjpbeVrN03KUbTGxxSKcvzU77u84ZPlNU3Q/rlNx
         utVQ==
X-Gm-Message-State: AOAM533kbIZQ9VrzTns0eK6IlM7tC9PLUeYQ3888mF2m0kSfdiCB2ju4
	4kUEd2gpK9hx2Drr8NLrAbI=
X-Google-Smtp-Source: ABdhPJw/lMOicOEzipfzIorD4Hj8KQJBeJDhmKMSTPKWhbuyKrwq44SBmAS5y9MYic9qwnzy4u7LWQ==
X-Received: by 2002:aca:4257:: with SMTP id p84mr682543oia.176.1611686399742;
        Tue, 26 Jan 2021 10:39:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:7a41:: with SMTP id a62ls1088073ooc.9.gmail; Tue, 26 Jan
 2021 10:39:59 -0800 (PST)
X-Received: by 2002:a4a:8353:: with SMTP id q19mr4947492oog.40.1611686399309;
        Tue, 26 Jan 2021 10:39:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611686399; cv=none;
        d=google.com; s=arc-20160816;
        b=WxatxhBBjcRAqo4Bn4wkOazFsSjbEkFOceQMV+bswjBgvdR/Wx9bpxqeP4vpAqhDty
         DFW3Bip1noZb4l44rBrtdbhP3xV0fJClzXVF2rPMwHRJ6drocLSTze61RHmWDV1KPyyP
         uYG72gi8Ul34Byr+73+UrtQTDiA4CX22Gc6AkmYQ/ZnHV9VQfE1dS52SLpanTOlIfR/V
         7EralTmivS2odxQNJbXpndunItrjX8b2qAGSS8uFecbggEMfCjd1hSj/UQOot5CoNFPq
         RcuoB/QhH7Lt4+DQm92nwfZbxy4Q9IDtjvGt9A6TBmoFYWyuH6qkANKpgstkp2VGVbx7
         dAwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pq+s6dEQUgSYdxEfo0/WglB3ePAr5IXU1Ijx0MlkxVQ=;
        b=bwTPbnEuKOVIx4mbM4nAZcBar49KACLhldWHWIe4hnRQWEDLJ0TyQX+YnqvPHrR08H
         VDvBfTpEl+dcN52p4fbRShChFePvWwzH/KhMBvfxWsgVYX9b4DLQ5lIcLldmUec3doLa
         A7/RQctYp7PdmdRRKf180mex94phOFFb8EPUudqsqH4vyy5vipRTEYtq1f3muGd4WfAd
         u2fvKRfmC/8aa2fRx359yxs3R6HoHUiGhzgpPX33irXmSnmZ6uXoXNuhsyyvCN08tVqZ
         9nRvmKzh+KWMfOOsKEZbtlXjwz/q5xgpQEuX/lcehBzwDhjoUd+KQ4AV1UfzXY+YZXIN
         PkZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CEt7mCei;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id b124si1319841oii.4.2021.01.26.10.39.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 10:39:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id n10so11990851pgl.10
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 10:39:59 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr6980839pgc.263.1611686398650;
 Tue, 26 Jan 2021 10:39:58 -0800 (PST)
MIME-Version: 1.0
References: <20210125085622.2322-1-candlesea@gmail.com> <97d1f36a3b534b7fbd3790a0277ccaf5@AcuMS.aculab.com>
 <CAPnx3XPRnpPQyW7UO_TTmQrHwitDw+_i3ESVkaGq+JyiY9Pu0w@mail.gmail.com>
In-Reply-To: <CAPnx3XPRnpPQyW7UO_TTmQrHwitDw+_i3ESVkaGq+JyiY9Pu0w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 Jan 2021 10:39:47 -0800
Message-ID: <CAKwvOdnH8kXt+jAutjqsL_5H5PzswLGEZOieaGru2SDn13pj+w@mail.gmail.com>
Subject: Re: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
To: Candle Sun <candlesea@gmail.com>
Cc: David Laight <David.Laight@aculab.com>, 
	"keescook@chromium.org" <keescook@chromium.org>, "arnd@arndb.de" <arnd@arndb.de>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"natechancellor@gmail.com" <natechancellor@gmail.com>, "candle.sun@unisoc.com" <candle.sun@unisoc.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CEt7mCei;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

On Tue, Jan 26, 2021 at 6:13 AM Candle Sun <candlesea@gmail.com> wrote:
>
> On Mon, Jan 25, 2021 at 6:37 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Candle Sun
> > > Sent: 25 January 2021 08:56
> > >
> > > From: Candle Sun <candle.sun@unisoc.com>
> > >
> > > Though do_overwritten() follows do_nothing() in source code, the final
> > > memory address order is determined by compiler. We can't always assume
> > > address of do_overwritten() is bigger than do_nothing(). At least the
> > > Clang we are using places do_overwritten() before do_nothing() in the
> > > object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
> > > big and WRITE_KERN test on ARM32 arch will fail.
> > >
> > > Compare the address order before doing the subtraction.
> >
> > It isn't clear that helps.
> > Compile with -ffunction-sections and/or do LTO an there
> > is no reason at all why the functions should be together.
> >
> > Even without that lkdtm_WRITE_KERN() could easily be between them.
> >
> > You need to get the size of the 'empty function' from the
> > symbol table.
> >
> >         David
>
> Thanks David.
>
> I think using abs() by Nick's advice would be better. But could you
> point out which kernel function can get function size?

The Elf symbol table should contain this info, IIUC.

Given a string literal of a symbol (such as a function identifier),
kallsyms_lookup_name() can be used to return its address.

From there we'd want to fetch the Elf_Sym for the address which should
contain a st_size field which I think corresponds to the size in bytes
of the function.  (At least, from playing with `llvm-readelf -s`)
Probably would want to validate it's an STT_FUNC symbol type, too.  We
basically want something like kexec_purgatory_find_symbol(), but that
knows about the entire kernel image, and not the purgatory image used
during kexec.  I don't see any such function currently in the
kernel...but it's a large codebase to search through.

>
> Regards,
> Candle
>
>
> >
> > >
> > > Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> > > ---
> > >  drivers/misc/lkdtm/perms.c | 19 +++++++++----------
> > >  1 file changed, 9 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> > > index 2dede2ef658f..fbfbdf89d668 100644
> > > --- a/drivers/misc/lkdtm/perms.c
> > > +++ b/drivers/misc/lkdtm/perms.c
> > > @@ -31,13 +31,13 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
> > >   * This just returns to the caller. It is designed to be copied into
> > >   * non-executable memory regions.
> > >   */
> > > -static void do_nothing(void)
> > > +static noinline void do_nothing(void)
> > >  {
> > >       return;
> > >  }
> > >
> > >  /* Must immediately follow do_nothing for size calculuations to work out. */
> > > -static void do_overwritten(void)
> > > +static noinline void do_overwritten(void)
> > >  {
> > >       pr_info("do_overwritten wasn't overwritten!\n");
> > >       return;
> > > @@ -110,15 +110,14 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
> > >
> > >  void lkdtm_WRITE_KERN(void)
> > >  {
> > > -     size_t size;
> > > -     volatile unsigned char *ptr;
> > > +     unsigned long value_dow = (unsigned long)do_overwritten;
> > > +     unsigned long value_do =  (unsigned long)do_nothing;
> > > +     size_t size = (size_t)(value_dow > value_do ?
> > > +                     value_dow - value_do : value_do - value_dow);
> > >
> > > -     size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
> > > -     ptr = (unsigned char *)do_overwritten;
> > > -
> > > -     pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> > > -     memcpy((void *)ptr, (unsigned char *)do_nothing, size);
> > > -     flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
> > > +     pr_info("attempting bad %zu byte write at %px\n", size, do_overwritten);
> > > +     memcpy((void *)value_dow, (void *)value_do, size);
> > > +     flush_icache_range(value_dow, value_dow + (unsigned long)size);
> > >       pr_err("FAIL: survived bad write\n");
> > >
> > >       do_overwritten();
> > > --
> > > 2.17.0
> >
> > -
> > Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> > Registration No: 1397386 (Wales)
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnH8kXt%2BjAutjqsL_5H5PzswLGEZOieaGru2SDn13pj%2Bw%40mail.gmail.com.
