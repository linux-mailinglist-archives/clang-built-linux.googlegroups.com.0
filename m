Return-Path: <clang-built-linux+bncBDCPB2NTQEFBBTOD4H4AKGQEN46NYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E1281229C3C
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 17:57:02 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id j18sf1720353qvk.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 08:57:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595433422; cv=pass;
        d=google.com; s=arc-20160816;
        b=aFgwLK+szxgKH8C9UX9xt+4rSBHY6dSlLoIgoO9/P/4J0BCbFnXUNzdR3t3QX0LQcH
         INgQni/55c7Zh7l08ExA9/NYwz4LQOgtB1PCS/G5S+gfWDHxxJPoUf7PH/i3KIHfx8BF
         eVw+zWxHzsM8rMpfeMpijCvWBeKbViZ65kgFQHK0VAyzQoINGsWOtLy8NJvcNayInwQi
         xBhDQG7IhaFSvakpETrIH2tMkVLa4VIUfjf1IoLf4u7H0vmvjPOQvoFFSH7oCMvvjigL
         36LJCvsmmYipnx+Ree3UX5IvHUjm0anMORC1SxourmUO2nvRA7YNwECYx9If96zxYE1K
         6iBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GnQLbyHZiSmErVCq7SVg+/QqFkk3eD8ZSU407EMY3dA=;
        b=qfFuu1Mlsuwpk/tXFXWliYzD4Zv/Y3XV6xQ6FNI0oit+WIfbY8cvieV9pG4PdUd53i
         NO48L/axaA2+Ow+/F7uwC/cJUYD7g0hxSneR0ahnfChQAGOazJkfjmOX+l+Vz1F2gvog
         s8f1KEQGsmiGKMTblaT/Iw75zsj6JUasB26Vx5Ev4+qsahuR45QVJZ6Grp99YNAezKpP
         YQq+oRRb8o5tvCs2FozUCePzTnN0VvyGMeLuKJrU494HwS2i7UKZhzA3gRka0FyDmCpH
         S99KB3SgvGkiMsmAA4/Q3TdGwd851itL992aMZySUYpjhH60Cla6W2ziEUakt+C6Fl3I
         pgwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bvp5nFAK;
       spf=pass (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=pbrobinson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GnQLbyHZiSmErVCq7SVg+/QqFkk3eD8ZSU407EMY3dA=;
        b=KDcPVxjsIYCZnse/4hU/K8M1i5wE70gUTn5tTNCHws/AX3iweZm/b3f3gbQon5nKPz
         QI3fzOaLHJZt5AFwaTBr6DTew5VBbHznCv8krKXokh8HrGqqB3bsqHPpf5CuTbLnRiSt
         1hMF+L9m8nbYqwBHJj56QPQc9rVmtbP7mle1Ku1Ep3y6rNhsRts1oPntgU/oZk5Xt2ts
         V7erljzRXv6mKvK3yL2dhZTxo1gb0Q8HAV7ISFZlzzpuhEqIDAkV/4CtNJc49EhXBr+E
         U0sqcZPaglsWArLOVGJJ/r6UHXsYmFGFo2rknPGFocRVQALKDzglug9LYx0oH4KC5IKs
         MQiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GnQLbyHZiSmErVCq7SVg+/QqFkk3eD8ZSU407EMY3dA=;
        b=ma2ubRYA91FeO+kJ7tgnLsk+TvtTUbchs6WlSxCjyib3b2fj+XTeYiJ1uDqhLi/x9B
         4Z0XH+Nwca8rNZzxmW8w+7dnJODURgMo8vDjMBK9d7c2OXJ3XWJe9Wke4JTMYFusFeFF
         RA0y0NxCd+ZyJdo7NvMPKeh6HDSgDsrrOp4ZQqyP67tfT7bEWLE0XQ1T1HPmWV8VZeaO
         r20nglU0AI3HYn0KLIZ+OpakH6O3iBt5BrDVDuYrYHvQSl/tbVGSEQcrvAHdiKPDzpjL
         tYDEf2BAQsvDevAtI6CdeUAg9U/MQNsO7PdCdZcHxKgkWF6GfA8c+bOPHO/l0jajuJm1
         8Q9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GnQLbyHZiSmErVCq7SVg+/QqFkk3eD8ZSU407EMY3dA=;
        b=MaLvsLTVmd0aeS8JvbY17REnCxEAHv1Rf7qb2H7tlKg/5Cj0qdxI+xhDnIMGOfMDr7
         VedFSmKl+TGraQqBcI7nVHVkgR5wdVMXnlklbnvr3JgRQHcUxtcmRVoSnYy4Bq9SpZpM
         Z3XTERi+71CSUbx1GFfDI4amvpjaTw3Wz9wN8LCjmz+g3Qa2P7JLvlu2ttozUdK4MJYg
         LXmn8yvg8hqC4Ic81MY9Kycf54BVZh3ErI+2HZgbjJo/fDjdpPZkbnMq1cUSGBIxhygb
         E+kMq16ux5ty7wubBj1Gw1WWN6cohETGqM70mL2uB8vrGZWoLdfvbzbfZuG49GHtBZej
         6R4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Yvug6YWyb+AVCAHqwh/Ue0vB2XQfdA2hVoIc4z/TlrdUdafF8
	kJpdLaVWT9xhn7PAnG+agxs=
X-Google-Smtp-Source: ABdhPJwv+L8FOmJW2QTcOIrj/T2/6g2/hCJ7tpMv6P0/njNL5aJdKfW/kGxRybP9SHitlbRaQfYuOg==
X-Received: by 2002:ac8:51d3:: with SMTP id d19mr880713qtn.151.1595433421841;
        Wed, 22 Jul 2020 08:57:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2343:: with SMTP id i3ls1040882qtc.8.gmail; Wed, 22 Jul
 2020 08:57:01 -0700 (PDT)
X-Received: by 2002:ac8:4301:: with SMTP id z1mr30485qtm.48.1595433421531;
        Wed, 22 Jul 2020 08:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595433421; cv=none;
        d=google.com; s=arc-20160816;
        b=RAPCTUHyzEwEcob71SA1qDPLlEd9qtgIFy2h9NfzTFqzlPa1+Anh7UG+XJKjVxorG/
         pN+JJR7+geayELdg8NKc+XoMo5CnZXepuyv2JeBR4yNnzkm9tY5D3PNhVSmAaIaHoOav
         l/aCwWCF0AMmmdrxn7HVrl9v6p9K9FqlXNK5AwKeHqaw570Nv2sdrASzIGTK4rHEjsz3
         lLTtgAqDIANzvizv0FUxNlpDRCkh1IpWnr8WiGPAK5ftWbvjpY2qhoM4P1vJ0U2Zx1DO
         Hr4U3CyYb+L4OeHhvyh/owZNi6kHTWMGpSbfkU2jmB4u29C57ie/fhu+bExMukKvGjvX
         rjww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g6ar6A3bSVxp0hdw6OsW7Ic0uXz12H4O/WECLSWS/Vs=;
        b=pf+YtMlUsqR85Fvg7hsAOhsvYC3Cw8Ufq1vSHnxPZZKf3mPGuSJTH1dBwBvq2MmSKx
         90hkz1x/trqOY2i/B9OpaWiqsZVIi+4QPZ+gmdnL5iNTxIPT7t3HkNOguWHG4K77szX+
         lPHYOdRZtUb7Msg8fgPHQ6JO5NJIVFhHKqCgmr9N1XLvlRrn7ZK6YAsmx9554OHkWkX1
         ex/vtUUAx+ZG7X2PFyczgfa5UExXydhyBqjP60QxcZ6LXvdJqiZUkJLV+lZ2K9nRmSMX
         kAXuonE379j9C86yqBadhlilWjQpak7nG9JQs9K6oemH1nM2XMJH6QIx179Gyh6ozxNV
         W3OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bvp5nFAK;
       spf=pass (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=pbrobinson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id t55si6764qtb.5.2020.07.22.08.57.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 08:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id l1so3053304ioh.5
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 08:57:01 -0700 (PDT)
X-Received: by 2002:a02:770e:: with SMTP id g14mr4701096jac.94.1595433421065;
 Wed, 22 Jul 2020 08:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200721225724.GA1005852@ubuntu-n2-xlarge-x86>
 <63244277a1c8989f87906746742141eba01d8bb5.camel@suse.de> <CALeDE9NCjMzzhdwR=oMh4wYjZXf8ekTCi8t_DVq0PLw5xD+8aQ@mail.gmail.com>
 <afe9b10adee7b6085d0e880be84bfa8446b2a6a6.camel@suse.de>
In-Reply-To: <afe9b10adee7b6085d0e880be84bfa8446b2a6a6.camel@suse.de>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Wed, 22 Jul 2020 16:56:48 +0100
Message-ID: <CALeDE9NGvJhBpppEWgs9RsuJpmLnLGSKFaXSi0KP-3jdU7huxg@mail.gmail.com>
Subject: Re: Issues attempting to use Raspberry Pi 4 serial console on mainline
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, linux-rpi-kernel@lists.infradead.org, 
	clang-built-linux@googlegroups.com, bcm-kernel-feedback-list@broadcom.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pbrobinson@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bvp5nFAK;       spf=pass
 (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=pbrobinson@gmail.com;       dmarc=pass
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

On Wed, Jul 22, 2020 at 4:46 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
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
>
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

Thanks, let me know if you need any more info from me, I would like to
get this issue solved, I've just not had nearly enough time for RPi of
late.

Peter

> Regards,
> Nicolas
>
> [1] https://github.com/raspberrypi/firmware/releases
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALeDE9NGvJhBpppEWgs9RsuJpmLnLGSKFaXSi0KP-3jdU7huxg%40mail.gmail.com.
