Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDGG4H4AKGQELCXF6CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1AC229CA6
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 18:02:22 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id a52sf1638373qtk.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 09:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595433741; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVENHkp4Cmjty7Vm1tb5cSjI/kfxIUQZHnS2TIOZEFKvsotKTMJ1G+mruHoc5CJ1Cg
         fAd5xIg4LVfaKN5YnXQ5ZDe1LADBAYZPQHKwnb9WJu/RNuA26m9ZB0peBLy4wp/gdpWQ
         qKtAkqNyYncpduhNcIC4nwhbVtXTOlqlEEulpI3r/HQbcs2HHrnQG8Dlg+gx/SZjFvgM
         6vO9QtV2c1RHw8AMnjlq8NI88Ai6NlS4HtwJbhBmTJbPMG3gJ2fP3INQ+nQO1rT7eZq/
         Cle/zeAz40D00nbv3/bakkbIw9n8m0KNSICZ2zy0VNaeJpcDmqXV4UVMVOWAYht8MjIz
         tuZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=RJedUR0Amk0FbPvTvmdbpnB3CMOAmRMRds35Clvql30=;
        b=m6cEKh1AtTHvyKLGMrLqhrqTZkUiphLFwpuJVaoDKpG+aIbyV/awnic14mze69C7dB
         gAygY45pY0iTzeK4cvOZE3AnODmPyJpsJ0e63XDKpFy+U2D2T8xLEGEYI0DoqRyJ4nkJ
         eiAPW9bMSlqsJyYdlnyrW5mVVueWtket9CBAlYAnbOwnvJkLmUSIdK20rwwPTmDLOlog
         mXCDwMYEtzLQA2n5iZZrz5E25rhSaJ5KZvSSjcvoJu1wngvvt/CwIYazijeIdE0X8nsv
         oknU0+KKM68q/83UkUWmKItEN0wKD8Ep0jFJ2FinlJOaJDeI77Ym5vyhGS1/vzg4OZKN
         CauA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NxFwb6bR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RJedUR0Amk0FbPvTvmdbpnB3CMOAmRMRds35Clvql30=;
        b=XVD/MauD0O7AnTf8MRa30IRBCfdj3EMoYBnWQg4KOEtbVZ+x7/pCxEaip4icpBDK70
         vFNHDTQ2yHsjjZVr/iMkob3n+UtWZWMv7f7ufNb2Nrfr34fQ5tCfdvGnduHrRxFbMOY5
         6dUQus9c48VdCliYd2ExvO+n98YhU9zR2b/I3MnHDSPGGBhMw226mlRcZHHsHZ9QOMm2
         kdYCksQiXCr4xdGA9GUuHguNjzDO5qaJ/0hdtXtEIW7Zg9AcG2SNDP2Up3pmW2pHGgXj
         pMiGQb7bvtSeyvDHRyUUfI8phjx28z8U8LUqiydOX23Td4ud/SiDZ58kPX/z0iVWf2iw
         Z00w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RJedUR0Amk0FbPvTvmdbpnB3CMOAmRMRds35Clvql30=;
        b=j5GZFaUeZMSjwfxUu1ArMKzOkxqm9d2Ttdy9NgBDAjb1i5S+yH2JpbuvOV/BE+bvLT
         pz/BaF7rGnv/S7VQ+OXAzISjXyruXR68zzyYvthePdLL5Ka/shoX3ktXtgAn8aSxaii1
         tno8jNMGC+DGs36eTATHbrYBwck5OOYHut1dQXEdePHKIgMr/eyzZ1h35Jcz0SbsAF9W
         r4S1jZp93OVKcsF111L4SZaovkGnBpYrB1j5e15f+XGdtO14PrdynXxq3URlNzsuaAvA
         Tt1gV8M5S997GYfTq4bd7IkbJLi8yGNUlSZdZmEGQhrF/yG5dZ1vHeGeZWiEqTZrpisf
         Ohmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RJedUR0Amk0FbPvTvmdbpnB3CMOAmRMRds35Clvql30=;
        b=C7lZlZX8g7VivXjPiR/h2XqWU4vN5aKdc1vNIvVbhkzVeDylxtLiCVw7RoadPP0aTp
         eYk3+1B1eqFe632c48vrK370PbaiiFR2fwsGwtanrKEvYf8Vi0+IUp7MeSVm0n40vLca
         X9TWTXdpsBkCqKvQ8Wi8YwQdoLFDfljH6TINpR0Y31/2HRh9ol0pZkX/A/2yEz7ZJAZz
         6dnu6mIbCo8L+ZFgKvaun5R9YhC3h5uqtOJOGIPR6WODs1pGnVVXKDpUhQyuLXt/Y0FP
         Yu55inF0ZwiinfN7Upaie4SquUEHbZGUM40RFwIkPfaB+gqCiH1AZ5qyFfnvC1LGpjyB
         A0sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lU2ynsPZ45khMTdiicqKy0pTZlGcZwt18pDzkgdgUeu8J5gvC
	nmSQUjfD7ZXqAEHEv9wOpzk=
X-Google-Smtp-Source: ABdhPJyvnRFibq7eZO+Ti+bmCv1gZ6iBB4m4ChNOcgfe3FVGSDH/9HXql/QYS7NoA7wpREr/gM1mAQ==
X-Received: by 2002:a37:a906:: with SMTP id s6mr659231qke.320.1595433740975;
        Wed, 22 Jul 2020 09:02:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e4b:: with SMTP id e11ls997125qtw.4.gmail; Wed, 22 Jul
 2020 09:02:20 -0700 (PDT)
X-Received: by 2002:aed:20e5:: with SMTP id 92mr15435qtb.388.1595433740499;
        Wed, 22 Jul 2020 09:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595433740; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgoMuU16E3lOKk27NJBs9++lpWgQeyuhJNgFLo6W2gpp+JT7m8O5cC2zBBMew6CFUs
         KMKgWJ8wthzLtH9Nm1Oztc7P2wmrck2KL5CQ9Jm3Exm9wiV5iqaPKcIXGzG4lu+dIXGQ
         s5FCq+IigNNNsmYR56TUqoomJbP4cuj/98uSHofDsbbgKGNy3hi+jEgF+LyRtY1M2F5k
         23qZzvNlXpRDBuG+P0IBeJOS9hCFqFgdhzhhWEZOsW8b4w3tsPHXljQ1Rt/coQJ3uQpP
         e0+pMzEuAF6R4PV/ONFW0fn2wrhQUdNrZ6ClYCrfV7b30lQM7qWemdHITABScwt/G5Jr
         qAqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cQAs5qWYH5tvFyAjJQPeK6Pr6MnPPzszHXb7DwOUV/Q=;
        b=WzhYxVNYwoTwfbKjcEZaMeCxCM9K1NgWw7Ibx1UM7kqbJ5rc0ZQ3ugQxEV/iLgvyus
         MYNHCKNQt+OiVscqnX8Aj0oFNdD2M9wMUhgL6vmqxgJprNRUlBFNMEXSehNJLfVaK4Wh
         hdE1YQ6faTQOzdsWUpbOsGtfMF7QskdZ2hcRsb0kzguAT+GZufyoDYSrHTKQNkqCA0QW
         uH4ubOw9Le6VoPqA+bLeibCfieFznQNrKhSD/WltiSQ+oy5dHqhiTwfEonlLY0IPwFu0
         h0+3Tk5Dhp2ZoboT4/dz4s4xLyalQ9Vxt66XmGUQVQHTNwzH0ODPumgJ/xpGxcThePYC
         BirA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NxFwb6bR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id q14si7554qtn.4.2020.07.22.09.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 09:02:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id e13so2460465qkg.5
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 09:02:20 -0700 (PDT)
X-Received: by 2002:a37:66d7:: with SMTP id a206mr603185qkc.495.1595433740138;
        Wed, 22 Jul 2020 09:02:20 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id z60sm80601qtc.30.2020.07.22.09.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 09:02:19 -0700 (PDT)
Date: Wed, 22 Jul 2020 09:02:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Peter Robinson <pbrobinson@gmail.com>,
	linux-rpi-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: Issues attempting to use Raspberry Pi 4 serial console on
 mainline
Message-ID: <20200722160218.GA1016797@ubuntu-n2-xlarge-x86>
References: <20200721225724.GA1005852@ubuntu-n2-xlarge-x86>
 <63244277a1c8989f87906746742141eba01d8bb5.camel@suse.de>
 <CALeDE9NCjMzzhdwR=oMh4wYjZXf8ekTCi8t_DVq0PLw5xD+8aQ@mail.gmail.com>
 <afe9b10adee7b6085d0e880be84bfa8446b2a6a6.camel@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <afe9b10adee7b6085d0e880be84bfa8446b2a6a6.camel@suse.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NxFwb6bR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jul 22, 2020 at 05:46:22PM +0200, Nicolas Saenz Julienne wrote:
> Hi Nathan, Peter,
> 
> On Wed, 2020-07-22 at 15:41 +0100, Peter Robinson wrote:
> 
> [...]
> 
> > On Wed, Jul 22, 2020 at 2:27 PM Nicolas Saenz Julienne
> > > For reference I just booted linux-next with this setup:
> > > 
> > > boot partition:
> > >         ...Latest firmware files taken from the RPi firmware repo [1]...
> 
> Natan, it seems I lied here and been using an outdated firmware version. I've
> just validated what Peter comments below, and the last working firmware release
> with this setup is Feb12[1]. Given your use case I'd just use that and forget
> about it.

Excellent, that worked perfectly with the settings that I had initially.

> > >         Image                   #Copied from linux build
> > >         bcm2711-rpi-4-b.dtb     #Copied from linux build
> > >         config.txt
> > >         cmdline.txt
> > > 
> > > config.txt:
> > >         kernel=Image
> > >         enable_uart=1
> > >         arm_64bit=1
> > > 
> > > cmdline.txt:
> > >          console=tty console=ttyS1,115200 text root=/dev/nfs
> > >          nfsroot=10.42.0.1:/home/nico/netboot/root,vers=3 rw ip=dhcp
> > > rootwait
> > >          elevator=deadline
> > > 
> 
> [...]
> 
> > > 
> > > The issue with the mini UART is its clock, which is derived from VPU's, which
> > > is itself controlled by RPi's firmware. Changes might happen behind the
> > > kernel's back, and the mini UART divisors will not be updated accordingly.
> > > This is an area the we could do better, but no one found a good solution yet.
> > > That said, for now, when using the upstream kernel, VPU's clock should be
> > > stable as we forbid the firmware from performing frequency scaling on that
> > > clock.
> > 
> > There has actually been a regression in the firmware here, prior to
> > mid April if the enable_uart=1 I always had clean output on the serial
> > console, since that date on the rpi3/3b+/4 I get a whole bunch of
> > junk, revert to an older firmware (I've been using April 1st ) and it
> > all goes back to being fine. I've not had time to actually report it
> > yet, and it's still a problem with the latest firmware but a quick
> > look it likes similar to this issue reported in late April:
> > 
> > https://github.com/raspberrypi/firmware/issues/1376
> 
> Thanks for pointing it out! I missed that bug report. I'll try to get the gist
> of it.
> 
> Regards,
> Nicolas
> 
> [1] https://github.com/raspberrypi/firmware/releases
> 

Same goes for me as Peter, let me know if you need any information or
debugging info.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722160218.GA1016797%40ubuntu-n2-xlarge-x86.
