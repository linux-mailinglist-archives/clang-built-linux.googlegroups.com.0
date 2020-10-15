Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWESUL6AKGQE4MXTFWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C8D28F7B5
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 19:39:38 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id a1sf1219255otb.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 10:39:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602783577; cv=pass;
        d=google.com; s=arc-20160816;
        b=IExcdDLyjiF2s4JXPzX6C4xlslGxlBOFXtnNLXHVx9XAGnB/40wlD8vOUD/8pnF9/e
         N3sqsIt8158Wad387p746cJd2GSr5UcyAakIJLeeSWg74jTowS15uinr6CjjMTpx3Awy
         RYTCwQnQjCI7SQrOd1X7ChT64RubTS5XM9EjceOjACM+3eheBsVr+ktXmWpp0GlQwG35
         Yj6UDUSoVSKlxwtbpvtXqGiVy8P0GMyur1hZYUtBhoGQsoyilhAFOnqpheSm1Vp0DL9y
         iju5u7uMlH2Whl6OqoUsUzf1VmDfF5VTcWdkuOfpzvSExCCIgfXV49YEm36cHLRwIBUs
         bDrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lqXdmwUgMsvW0QIbtcxY6YU3KnNKtRjJWIBvKz5IQJQ=;
        b=K8Hv1TTfxUI/14JS3vzx+Zs0Xn07MoN2zGW1nrEYBH1wXXenrqxx9lgoAKMB/Mipi1
         aJVKLQwwJbz/BfncrKODO4f2Hu5s/TVt6nT1QSKo6CbwRv2pZlVbONrmO/V0DC6GBHqf
         A+iZVxGkJIY8FFbRccW632T+VthtBlPum6zjjDqnk9CsFfuqSGKWrVUcEFT/uqId1lJS
         7hx8J+dSTKAyeWIe4Ycymvsxr6qP3G38DGnLLoF8NAdCLcj0+8HWzU9iThFsHRLDcMDZ
         G4oePcQwguTbTHrVlo+wHC9jdmgHb3YMP1OdruUSYA8gZm6kyxIpXr+tkvOjNupcf2uf
         QuvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aXzsuv9H;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqXdmwUgMsvW0QIbtcxY6YU3KnNKtRjJWIBvKz5IQJQ=;
        b=sbLUMboUU2i2N4/Y3AMmfYJLL+4webhf9b/iOmlBqccoTl9asala/gWLhPxmODTRWB
         blFZrWfqtdj5usv+4VnSPccdlGOHzWUkFEu7/ToobvG62L3AkpnqprC2fw4xUiITsftY
         XdYBUQMLwvXJPyrwYEt7sBPSHgxwoelVBmEHkQXwTds3ucp7H31uX1MOHG0Xz/fpGPWD
         oQkgO746dV1xmo4rR7yqtt9FT3hgrU/lS25Sg4wLhfrEntQpBW6omcXg8y0UfmuIrFg5
         M2FiFkZHYfb9whOLq9Z+zv9mU42GZg1tBIfP6+2m7Tf9bXXq+250aRon6kD1BxkbvUdQ
         GtfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqXdmwUgMsvW0QIbtcxY6YU3KnNKtRjJWIBvKz5IQJQ=;
        b=L4RHwwmqfY0T3LqCqbpufYgkNEfGcdihYU0downGqiqcnftHWBS9CzInS08KzEXC94
         imWur4r2AksIQjMJhzmjscjUkjNNoPJwKzQubir8F8j7Uu50DcC/JxYmPJit1acaiF6Y
         CqpSZqm4Md0wPjM5Ad7v0B+n/DsvknmxQm9PHNqyU0EeTKRh0p980Y4SUMX/LBzs98It
         W2Y2syZCEGuCd/U1SdGyu9KpeB4TktVF/7Sf+A0qQYl42/WOXAx5i8t4cLm9P7y8yHZ1
         EpqBkk3Z7vRbXJ9F6D1WOq5hFhde2A7cIMFSFegyVCTxdGcJ9sG0xui27s4uHIguwvcQ
         zs9w==
X-Gm-Message-State: AOAM533sZvzegyrWrDlIq5JpO6fl0Fv83Mq7XsS+FMOYMNOQayILCfwx
	Fnw9BtLaJq3cI0ObJll0WBU=
X-Google-Smtp-Source: ABdhPJweEpp272ADO+WpXI54Fif5MY4c418QDRioYjWzjNMSAG6hiAlVw9dIPRTHjDEFNtfVz5m9zw==
X-Received: by 2002:a4a:ba82:: with SMTP id d2mr3193076oop.43.1602783576814;
        Thu, 15 Oct 2020 10:39:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e85:: with SMTP id b5ls875672otc.1.gmail; Thu, 15 Oct
 2020 10:39:36 -0700 (PDT)
X-Received: by 2002:a05:6830:1dc3:: with SMTP id a3mr3631383otj.292.1602783576384;
        Thu, 15 Oct 2020 10:39:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602783576; cv=none;
        d=google.com; s=arc-20160816;
        b=JI3JKDImqY6vilvyzYNk/kkSeUgCOFGg9j+0cz0I1ypEoJ6I2pSjn1O77pxfgfMsJ5
         4v6J3O8oHYBUJI9gSNmlgeJaittZmxSrADgPDql+peen08rM2iyFLtV8v0aoTeZbGtQU
         4eyDcelKP3VnSV5yJUZa78dqVLd0QHNgr3PAFz3YVfvUgkiQmuxIus2gLfXutAufkiBi
         LJUDvRPYqlu/3z/N2Nlx2UZCjnSk9dnsQGZvFi2JdcPDBFDqhEH4FbUnq5S1elP2xcIh
         rRA3hQvobr9462+0e7Vl2GW/Z4YewN+0FHr9l2Aa4reOlK9NUX5NufyEj59bRjxDzvdy
         H6HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KtfuI7EmqU/w7shjq+GdWDQYgGINxwQeMULph0gZRsc=;
        b=FMwbWOD8Ukx8YryljeipE2GjODpnU2og6oQtzIetLZpLmSA7+J0C1UfGDANKEPnicY
         QhBmaGapdHNq005Zc/e9ikia1E5ewpmtP8HQUGS7KMWz6TB5zOADWEcjpb0XhCh0S3Qc
         ZqX4yw8fBY9QdEHSn3OwmcQPHw4doFWUWr/SiOFK9hsRR/QGGmH0/CRdao4bjXeo2Luz
         Rh6UB2Oe4PItrGtb5s83TWPnNYKNB57na/orFe669Ku7AZbuE3Z33kmduToFUZLY0/PW
         G+HD6nHS4b15nCACjsI3ar7faljgAfdbNQb2TfyBbxwjjsU+qRwuiM0qDULDWm4Ukb+P
         zdBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aXzsuv9H;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q10si247457oov.2.2020.10.15.10.39.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 10:39:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id g29so2365611pgl.2
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 10:39:36 -0700 (PDT)
X-Received: by 2002:a63:f74a:: with SMTP id f10mr4361736pgk.263.1602783575287;
 Thu, 15 Oct 2020 10:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
 <1653ace9164c4a3a8be50b3d2c9ff816@AcuMS.aculab.com> <20201015144515.GA572410@rani.riverdale.lan>
 <4a8c47b5eeb44b789abbb617f0a95993@AcuMS.aculab.com> <20201015153901.GA593731@rani.riverdale.lan>
In-Reply-To: <20201015153901.GA593731@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Oct 2020 10:39:23 -0700
Message-ID: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: David Laight <David.Laight@aculab.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aXzsuv9H;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Thu, Oct 15, 2020 at 8:39 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Oct 15, 2020 at 03:24:09PM +0000, David Laight wrote:
> > > I think the comment is unclear now that you bring it up, but the problem
> > > it actually addresses is not that the data is held in registers: in the
> > > sha256_transform() case mentioned in the commit message, for example,
> > > the data is in fact in memory even before this change (it's a 256-byte
> > > array), and that together with the memory clobber is enough for gcc to
> > > assume that the asm might use it. But with clang, if the address of that
> > > data has never escaped -- in this case the data is a local variable
> > > whose address was never passed out of the function -- the compiler
> > > assumes that the asm cannot possibly depend on that memory, because it
> > > has no way of getting its address.
> >
> > Ok, slightly different from what i thought.
> > But the current comment is just wrong.
>
> Should I fix up the comment in the same commit, or do a second one after
> moving the macro?

I would prefer undoing the mistake from 815f0ddb346c and getting that
backported to stable, then rewriting comments or the trick to retain
the memset separately.

>
> > > i.e. something like:
> > >     static inline void barrier_data(void *ptr, size_t size)
> > >     {
> > >             asm volatile("" : "+m"(*(char (*)[size])ptr));
> >
> > I think it has to be a struct with an array member?
>
> I don't think so, this is actually an example in gcc's documentation:
>
>   An x86 example where the string memory argument is of unknown length.
>
>         asm("repne scasb"
>         : "=c" (count), "+D" (p)
>         : "m" (*(const char (*)[]) p), "0" (-1), "a" (0));
>
>   If you know the above will only be reading a ten byte array then you
>   could instead use a memory input like: "m" (*(const char (*)[10]) p).
>
> >
> > >     }
> > > plus some magic to disable the VLA warning, otherwise it causes a build
> > > error.
> >
> > It shouldn't if the size is a compile time constant.
> > And given this is an instruction to the compiler it better be.
>
> Ah right. I saw the warning when playing with something else where size
> could be constant or variable depending on the call.
>
> > >
> > > With a memory clobber, the compiler has to keep x and y at different
> > > addresses, since the first barrier_data() might have saved the address
> > > of x.
> >
> > Maybe "+m"(*ptr) : "r"(ptr) would work.
>
> Nothing that can only modify what ptr points to could avoid this, since
> that storage is dead after the barrier.
>
> > OTOH a "memory" clobber at the bottom of a function isn't going to
> > cause bloat.
> >
> > The explicit ranged memory access (without "memory") probably has its
> > uses - but only if the full "memory" clobber causes grief.
> >
> >       David
> >
> > -
> > Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> > Registration No: 1397386 (Wales)



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA%40mail.gmail.com.
