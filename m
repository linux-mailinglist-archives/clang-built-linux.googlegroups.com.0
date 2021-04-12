Return-Path: <clang-built-linux+bncBDBLP5PQSQLRBC5X2OBQMGQEVWPUYTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3254B35D417
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 01:45:17 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id d18sf8818215iof.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 16:45:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618271116; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2d5CkEzHdCUWRUze+tEKdowYoghL6O2PAQ38e92FKSGy84H0VY2BxRgV3oEy+8w61
         ksXtwgnQZtKFcyFXenoslGuuwM1u5l59ro1kTFxmEGMiYiemXLahPgCAix+m9a+kj883
         tcBzh0HhcixZYwOsPDkA03WB0Xlqzcc+NuoDZnBmvCBAuhOedXNH59u/O9Byzikp7njP
         3I5M5dN0+ot6HRZ3BcCQRZDOWc0j1ol173aSEc0CqqUIx9OjZllDLw3fiVMpIFuZlHXg
         1AqO/kjkHkctBPux0Qc07SaJNVxfxE8FWaWPJps9tTn2LuBEa/S3PMF9Rk6uZcZkQ4rw
         PFqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SFJkrRdvPGWwgj6/lxLW6DjdRkifkLlUWaVUy0Wh/EM=;
        b=x5CogzZ2BaGnMkkm9AeItDirwtwxtZGSWYqax3ThNhluur9rx7Wv1vnZ6xPC1O2qCk
         FjzY46w6gDstqNAl9opyyqq88fnKkWTVzE7Lszdbq16SclImcfTLVRRNK9My1gq2sMa8
         c/1rXJk2ScyGk9QG8e1wA8O9ENA/dBhcJoGYFnwqtZQEr5XLvzmHHKfK/VeISvBzIwvI
         H//3uMFcfM1N7sKE+KgxU4HVOq6g0fxKIFiK3HKf/t+bIWPXJT3M4QIsMyW4NCj0UWNS
         OulO3HBkG4brDrTYOmBq7mVU7T/G6pTUWWeD1WB53Y/qCDziWL244LLuXSW72QOqDMdR
         LnyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HR2eqOSk;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SFJkrRdvPGWwgj6/lxLW6DjdRkifkLlUWaVUy0Wh/EM=;
        b=Jh+dBrV9uBfJFyA1YADHbyfQLmP8oKoXqmOoeTE//mscM7sE6JF51RTcnj2iEt+yt/
         v+vsswpJoSNT5FcfFdqPYAraS/CsbluimfXecAFAt4h63PQli3o5IFmi/lTP4tiW5xH4
         6F2oOud3wlUu5FWVj5hm1b2B7VSImOBAyTRnaToEoiRfbEGqkfdPq548WxHKHLiSnA7t
         64zhUYD+/u/hjaG70XdYJF6GnevwOm1oxJHA6rLTtP8N28HGrZRsuwsUbmoUSBoSSKo1
         LFADK38bp3BmM/kCEC/8eZGCKBMCNKafVtolq4tyQ/6IrhejhK7rWfFIIwmDavFBCZEF
         eMkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SFJkrRdvPGWwgj6/lxLW6DjdRkifkLlUWaVUy0Wh/EM=;
        b=TGWeJOK3Lt8ogqt3arA3WW8V03kMD2WJ8ngReyXouT6fmZj4zm2Rby0mURMHgmE4dh
         1EvjCuTPQ1oMYQXKqb6USr1dAsYJ+zNlUqC9c4VCkkM+pEx+OFQg63x837jHaD4QzJNY
         uFLds2CRHPlVGfFnVjVJH/fEmEc0A8ad6hCobI4AGXk8pyKUXIUv70ivMGv0FdpNihlH
         It7nI7epdT40fRhH7LValeoe5ITIinV486iHxNnN0WM6xBfbeaxLIX6CYcGNa61/pjgR
         rBb3cnoDYKsM8xXl+dU2oXMtK4qYCauT57St/5CV0EXV3WeyuyA58HkXn1MDB/IoX6/6
         fyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SFJkrRdvPGWwgj6/lxLW6DjdRkifkLlUWaVUy0Wh/EM=;
        b=dwOVFbejtr146JeHqQUMmPVvoNhNTV7lIBBRfq+qLlU2EvO1FqVtCBlEC87aK5da4d
         HeGau4wxQFP897oHmBhJWPheAwvAxJ9iAxTFiNxSHbiffsfTodMz0NHUeRVnYxeHph3z
         n0qrYnEYT5gR+Vu2XT/oyQqFL8CwcTz2QqPcpsL6Wosx1dcjAZKgGE03eCMwZ7SWFC+i
         6ypW7FvFMk6a7gw+uqYEBa81p6IpdpmFqhl1CfYb+UVLeAGrxf9Zhu6p2MSDtnPney8o
         mxKugwyGeOrj42d9YCsDKxNRFu0M7ofC134qkCZN4nJg1rqSdU8x1pEYZJwuspe0jEWS
         Z1CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300iXfX06+PJKnQoI7vwMRDfBO8J28bnwMLIX2KViJ81xPDM02B
	qjOwN6TLt/Sqglf+ZV1J4wg=
X-Google-Smtp-Source: ABdhPJxII46v4BNG/IujDWRQTg75HqAmGSl2w0k3xFx5Vm3zHwlPO+pMI7JBnWdmY9UVUeBV3itXGA==
X-Received: by 2002:a05:6602:242c:: with SMTP id g12mr11823946iob.147.1618271115941;
        Mon, 12 Apr 2021 16:45:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f02:: with SMTP id x2ls2356653ilj.6.gmail; Mon, 12
 Apr 2021 16:45:15 -0700 (PDT)
X-Received: by 2002:a92:de05:: with SMTP id x5mr10163775ilm.156.1618271115550;
        Mon, 12 Apr 2021 16:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618271115; cv=none;
        d=google.com; s=arc-20160816;
        b=llrb3r1tDjfQSzjY7nXXSjsWFysJ775eWHbbxEH1xFauc8D7bRk6/9F3+q9SCMYxdU
         rZaKDCCL3GEBQYMjotPkS7fPqomyCtBNBhu7nNsePq35z26ESIScoe9RXfjnQI5AYkcf
         o331O66df9BN0uLUrOshIdJ9dSg5WOvm+awIMUuo6Q8CH0KRIsATrg04fRwpyIT2D4kO
         QhFfy1t9srDqIY0qbYC5niIBz0CYYCTwY9YK94Zz2tkWSC5opbef2ftNeWuhgynLkRj9
         2ccfuT5c99ShLj9LlAwQua4CcaqZXLaTUY+zfdrGD2F6C2CxVdstQxVpCjQGkQOv/7ZY
         pCaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C9NHfRlVevF4M8K/rHQEyVi0J60392z2vn7IG56hY1E=;
        b=dZs7pZD2dC6Lm7sXxhl5bB+qOkBTyBZ/W2uWQqMopLvM2RNsqZw/ITpU3LIBGOlywm
         VHO8OYTQadHn6QBefBXM1/sHaguvhEWxR3Yc4oZON4SewnIv+OwbGjztEJ7SpVu+5bYk
         F62M4/gD4Lp/Kbe1eid1wKwvdTufJioIE5lwpVfwiACk+5uVd6mT3e5TNUT9jNXfqRNq
         HHe9CM5GSxzik4uIIPyp7NcwuOey/hA6Xz0pcgyxxZ3+qWHwsicJNhLm6owhwXfsTIhr
         h/o94tBM9esCz7GPYgn4lkpkRWt/fFstuAb48YD97resMQ4+WJlSgHs9BmIapVetGiMI
         T0+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HR2eqOSk;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id 12si723963ilz.1.2021.04.12.16.45.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 16:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id b17so12574954ilh.6
        for <clang-built-linux@googlegroups.com>; Mon, 12 Apr 2021 16:45:15 -0700 (PDT)
X-Received: by 2002:a05:6e02:672:: with SMTP id l18mr24345668ilt.271.1618271115374;
 Mon, 12 Apr 2021 16:45:15 -0700 (PDT)
MIME-Version: 1.0
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
 <YHRGPpQ03XgBMkiy@hovoldconsulting.com> <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
In-Reply-To: <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Tue, 13 Apr 2021 07:44:39 +0800
Message-ID: <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com>
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
To: Johan Hovold <johan@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
	kernel test robot <lkp@intel.com>, linux-serial@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Gerald Baeza <gerald.baeza@foss.st.com>, 
	Erwan Le Ray <erwan.leray@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dillon.minfei@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HR2eqOSk;       spf=pass
 (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::131
 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;       dmarc=pass
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

Hi Johan, Erwan

It seems still a bit of a problem in the current version, not deadlock
but access register at the same time.

For driver , we should consider it running under smp, let's think
about it for this case:

static void stm32_usart_console_write(struct console *co, const char *s,
                                      unsigned int cnt)
{
         .....
         local_irq_save(flags);
         if (port->sysrq)
                    locked = 0;
         .....
         access register cr1, tdr, isr
         .....

         local_irq_restore(flags);
}

if port->sysrq is 1, stm32_usart_console_write() just disable local
irq response by local_irq_save(), at the time of access register cr1,
tdr, isr. an TXE interrupt raised, for other cores(I know stm32
mpu/mcu do not have multi cores, just assume it has), it still has a
chance to handle interrupt.  Then there is no lock to protect the uart
register.

changes to below, should be more safe:

.....
if (port->sysrq || oops_in_progress)
      locked = spin_trylock_irqsave(&port->lock, flags);
else
      spin_lock_irqsave(&port->lock, flags);

....

if (locked)
     spin_unlock_irqrestore(&port->lock, flags);

For current stm32 soc, it shouldn't happen. just a reminder for future.

Thanks.

Dillon

On Mon, Apr 12, 2021 at 10:04 PM dillon min <dillon.minfei@gmail.com> wrote:
>
> Hi Johan,
>
> Yes, there is no deadlock. my fault.
> I forget the local_irq_save() plus spin_lock() is spin_lock_irqsave().
>
> Thanks for your review. please ignore this patch.
>
> Best regards
>
> Dillon
>
> On Mon, Apr 12, 2021 at 9:08 PM Johan Hovold <johan@kernel.org> wrote:
> >
> > On Mon, Apr 12, 2021 at 05:31:38PM +0800, dillon.minfei@gmail.com wrote:
> > > From: dillon min <dillon.minfei@gmail.com>
> > >
> > > To avoid potential deadlock in spin_lock usage, use spin_lock_irqsave,
> > > spin_trylock_irqsave(), spin_unlock_irqrestore() in process context.
> >
> > This doesn't make much sense as console_write can be called in any
> > context. And where's the deadlock you claim to be fixing here?
> >
> > > remove unused local_irq_save/restore call.
> > >
> > > Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> > > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > > Cc: Gerald Baeza <gerald.baeza@foss.st.com>
> > > Cc: Erwan Le Ray <erwan.leray@foss.st.com>
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Signed-off-by: dillon min <dillon.minfei@gmail.com>
> > > ---
> > > v2: remove unused code from stm32_usart_threaded_interrupt() according from
> > >     Greg's review.
> > >
> > >  drivers/tty/serial/stm32-usart.c | 8 +++-----
> > >  1 file changed, 3 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
> > > index b3675cf25a69..b1ba5e36e36e 100644
> > > --- a/drivers/tty/serial/stm32-usart.c
> > > +++ b/drivers/tty/serial/stm32-usart.c
> > > @@ -1354,13 +1354,12 @@ static void stm32_usart_console_write(struct console *co, const char *s,
> > >       u32 old_cr1, new_cr1;
> > >       int locked = 1;
> > >
> > > -     local_irq_save(flags);
> > >       if (port->sysrq)
> > >               locked = 0;
> > >       else if (oops_in_progress)
> > > -             locked = spin_trylock(&port->lock);
> > > +             locked = spin_trylock_irqsave(&port->lock, flags);
> > >       else
> > > -             spin_lock(&port->lock);
> > > +             spin_lock_irqsave(&port->lock, flags);
> > >
> > >       /* Save and disable interrupts, enable the transmitter */
> > >       old_cr1 = readl_relaxed(port->membase + ofs->cr1);
> > > @@ -1374,8 +1373,7 @@ static void stm32_usart_console_write(struct console *co, const char *s,
> > >       writel_relaxed(old_cr1, port->membase + ofs->cr1);
> > >
> > >       if (locked)
> > > -             spin_unlock(&port->lock);
> > > -     local_irq_restore(flags);
> > > +             spin_unlock_irqrestore(&port->lock, flags);
> > >  }
> > >
> > >  static int stm32_usart_console_setup(struct console *co, char *options)
> >
> > Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ%40mail.gmail.com.
