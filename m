Return-Path: <clang-built-linux+bncBDCPB2NTQEFBBQVA4H4AKGQE7QTDMPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 98892229A66
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 16:42:11 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id v13sf1153698oor.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 07:42:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595428930; cv=pass;
        d=google.com; s=arc-20160816;
        b=DseygUpctkWd7/5evK/aPr+Q1BFPaA7jJXFJjRJwlePsHmf5Qp/hPXY0gnZwgofn8y
         petZ/AMBMDVoUXzGXygxgVxs6sxSXgdNLq6YLJFk2KItBbIKtZ4278GHSDB32PuXSeG9
         d31xkztk4qRDhfwpB3jjUcL/z2AkTEYHbKvWPCmNMQCul/+lYQNvqKF9l3+vxkk1WaAU
         xW09SuRyYeQeNxjbuD3KtQ4udO2vQsVYSNr8cknVvpRHqMOeV+KQDpYYKGmgYc0T1t/1
         p1p9AJvB9Sdu7lmWoLyFsCkH21woXBtdUo1l4MNbC5FabUe0fcJkPH6+r3rkO7Wt/WbC
         90Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=iFW31JLhkng9DQxR5Z9w5CCKKMAO1IUsTsuLw3EITP0=;
        b=iU6tWGWOIfykFMFtZ4R8jbS1VuVlFvihsHxAcFxFqdnqUB9U+v1+RnYuemLFpL3dx0
         QERtmvFwZhicsS3kdFUluYf2yoqru+/vtx+DGxFjpScT0ZeDcPIHSzm3hokRVGqStCR5
         Hr/f4H21HB0qRBIxkY57UTDthTWI6Br4QdM4vpV49vtJah50tLYthOl77mgz7OcOnbud
         CK9NWevFZK29STucfgg1BowvyZ3z7dwWVwxvrJaYSu7Ui60KMnPKJdZ4hUjCt7lrcwQr
         l8lQjt9ZYSvVC+7A5nQrAADyGt0H7BdkWdn3CDYSISuhEI9HDBNdj7/8JNSlXbhVuh5t
         I79A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n/dvoijY";
       spf=pass (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=pbrobinson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFW31JLhkng9DQxR5Z9w5CCKKMAO1IUsTsuLw3EITP0=;
        b=WSSdJIebartUKBgBiRz6W4d9KN76ZIAGbbA5meOrfZQRkAG/YyZdF1505XR2AC5Y9T
         qlwe1R46k9EwnFxP+9U/cI5pzK1EafOBxAH8Yk5DV7GbE8vtnRfwvorC8AyFCJoo0fv2
         mPh4d2TOxrRmHpNcaGBhEZ7HFS0s4TGSPOxYEmq4E+ihTevcJDA0e83d7hGrSYjD1tf5
         dFKrvwpKOuAwz0da72QvWyR7fxUEVuE/JpV2BkUkcCKcHAh5UF2G5nFoc35mTMPpfWQ6
         YPhVsx7rWnQNCehw2ZRza7k9PcQ49fpkIejG7T29Fb6png4hLGHvLVMTWuEnceIy4p6+
         uLIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFW31JLhkng9DQxR5Z9w5CCKKMAO1IUsTsuLw3EITP0=;
        b=We26Gn3BxKJ/Kfk4MI9j02+vFkQutLm+GZltpfd4ZznOzkHWEKkIvNaFUE0NelIGWg
         dzErTt+3mwxiNh6NS1+0iZ4ZSBNgSrl6QPwSERY2rgj7lFQeK+BK+w1Ds8TiJteTgLQE
         csVPZvvX39AG7bZSKbMnLOsHqdpbhEENcRNjzaAHOgMS1K4KA2ueliBHvv+5yJNjP7aZ
         zm99dLYJVupxzjU+tysK28RXom9+zGG/7yceq9hCqMJp/wamDDQwvEC+8EpE28OBlqIf
         b3TvtmMQPoa/enFsI3MLGBCu+qqO+2RJ/MRUsgXhQ68ckDNN/Up6ikTGQARBiQnAo7Np
         qmEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFW31JLhkng9DQxR5Z9w5CCKKMAO1IUsTsuLw3EITP0=;
        b=avPFRDCR2Rk9aGYOEhCj+aIEhafVgLQcqbn+m5Uj0v8ftU9staIMUlUaz8H+OHbkId
         Yv7fJTjspUG5WAmOb+sRxZxqQJHTKYTikgQkgPGdlf9w9uRitTYg9L+/wm5vhEK0xDfU
         of7Tm2q0BZZOGLh/JqalzS5/ZtEQAZazZkyaZItj3xBCgouN0s3KZC9PYsuodyUyv1xe
         /A1JqX6fLLSNmqfm74z0k4Pwufi4p97XmB8FUIukeYqKGyUfaCsWileuRd5no49twHz0
         pSAHXjQg/NpMsrNFIpEgEQVDAfLDKjDG475T/ihfrdQYlM/8Fui4vCYchaniDWE55a2X
         F/lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eqVqB8pnFibuPxiNQGSAfjguNERrfh4uKkndk+tqDXrbY0cYm
	oU+7OdzSOHb+12kp6OsTjRE=
X-Google-Smtp-Source: ABdhPJywYi3RjFGlS4WZIHrtGe5K7P33RE2uacuodYjcz+Ujll6zMeX9Pm8d2QYS2Dl2IWHrD20l+A==
X-Received: by 2002:aca:4a47:: with SMTP id x68mr21379oia.24.1595428930324;
        Wed, 22 Jul 2020 07:42:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:92d0:: with SMTP id j16ls129636ooh.9.gmail; Wed, 22 Jul
 2020 07:42:10 -0700 (PDT)
X-Received: by 2002:a4a:b006:: with SMTP id f6mr289678oon.13.1595428929983;
        Wed, 22 Jul 2020 07:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595428929; cv=none;
        d=google.com; s=arc-20160816;
        b=gcm3txewm+JQkgrf0LjcN2pwv24wALyzRl+OlZPk7HziO8bCNexd4wvkm0I9PviJ7X
         F/qerR6vgn8lTHpMW2nxTZxgLo5aI71TZs84SN33j6OyDuWWefsXAZCgxxzak68bnAbY
         KUc82/ZnfSDcCJBw4TeBvMxte7LaubVoYyl1SUBh6MbpTTQR3KjvjzhwvhJW4iOXN9dT
         CT8pyYDHAcRue3oVq7mgdB92Kuue6Oa3KxJQjLd2N5gVvTg/9AZcFOvbLJP7aNYZ5c3y
         G55wRqH51gurrBppSTeK9EUU65sEJ2poaftAaj8cCt+owDMIUPMlVSh5pOWiE01HPgy6
         K9Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1n1zuy/spn56Epml7dgx5ZUHYQufAVmTVuODKEVcEKo=;
        b=vb4l5Bmj8RyHpcdvUDzJKCPdxBX5sp9FtzaHS4oK75P515aCPMGiFhS6oRWRvYRn1z
         J/fvcQ3/HO4zVsJBObWGdRGcC2gkBqhKIedHkmyYgt8+TwAwNly2l5G8/rKM34iYNOzk
         6MO6pCbeTWC7yeRL2SVsmTgYd9BAdNiLAbPNoyUF7i3yLLiazAx5tTjbfwPud5ifcOKc
         /tts6mQjFeaaUiNY09ys94F+34XJ8HO8N6qBe+RfojQGkQdB+mtXqu0VkD5PP8inI5C4
         WwksLpjRfBSoO3WXk4O07xzz8ZTEwb7KkuzExmxBN52zAUsmnAdQB7kpGcEE1jB2cFWS
         qHoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n/dvoijY";
       spf=pass (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=pbrobinson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id n25si10400otf.2.2020.07.22.07.42.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 07:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id s21so1496035ilk.5
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 07:42:09 -0700 (PDT)
X-Received: by 2002:a92:cecd:: with SMTP id z13mr252026ilq.76.1595428929589;
 Wed, 22 Jul 2020 07:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200721225724.GA1005852@ubuntu-n2-xlarge-x86> <63244277a1c8989f87906746742141eba01d8bb5.camel@suse.de>
In-Reply-To: <63244277a1c8989f87906746742141eba01d8bb5.camel@suse.de>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Wed, 22 Jul 2020 15:41:56 +0100
Message-ID: <CALeDE9NCjMzzhdwR=oMh4wYjZXf8ekTCi8t_DVq0PLw5xD+8aQ@mail.gmail.com>
Subject: Re: Issues attempting to use Raspberry Pi 4 serial console on mainline
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, linux-rpi-kernel@lists.infradead.org, 
	clang-built-linux@googlegroups.com, bcm-kernel-feedback-list@broadcom.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pbrobinson@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="n/dvoijY";       spf=pass
 (google.com: domain of pbrobinson@gmail.com designates 2607:f8b0:4864:20::144
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

On Wed, Jul 22, 2020 at 2:27 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Nathan,
>
> On Tue, 2020-07-21 at 15:57 -0700, Nathan Chancellor wrote:
> > Hi all,
> >
> > Thank you for all of the hard work that has been done on supporting
> > the
> > Raspberry Pi 4 upstream. It has been a great platform so far for
> > testing
> > various clang technologies on actual hardware.
>
> I'm glad it's useful :)
>
> > I am investigating a panic that occurs when running a guest under KVM
> > when clang's Shadow Call Stack is enabled and it would be handy to
> > grab
> > the kernel panic via serial console as the device panics and I lose
> > my
> > ssh connection. I picked up a USB to TTL cable and I am able to get
> > connected with the following config.txt options and cmdline.txt
> > options:
> >
> > $ head -n4 /boot/config.txt
> > enable_uart=1
> > kernel=Image
> > os_prefix=custom-mainline-arm64/
> >
> > upstream_kernel=1
>
> I'd say for rpi4 this property isn't necessary as you're creating a custom
> os_prefix anyway. But it should be harmless.
>
> That aside, the only thing I'm missing is:
>
> arm_64bit=1
>
> > $ cat /boot/custom-mainline-arm64/cmdline.txt
> > console=ttyS1,115200 console=tty1 root=PARTUUID=45a8dd8a-02
>
> Which device tree are you using? This is the right tty device if using the
> upstream one, if using the one provided by the RPi foundation it should be
> ttyS0.
>
> > rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait
> > plymouth.ignore-serial-consoles
>
> For reference I just booted linux-next with this setup:
>
> boot partition:
>         ...Latest firmware files taken from the RPi firmware repo [1]...
>         Image                   #Copied from linux build
>         bcm2711-rpi-4-b.dtb     #Copied from linux build
>         config.txt
>         cmdline.txt
>
> config.txt:
>         kernel=Image
>         enable_uart=1
>         arm_64bit=1
>
> cmdline.txt:
>          console=tty console=ttyS1,115200 text root=/dev/nfs
>          nfsroot=10.42.0.1:/home/nico/netboot/root,vers=3 rw ip=dhcp
> rootwait
>          elevator=deadline
>
> > However, when I connect to the serial console via PuTTY, I get
> > nothing
> > but garbage output: https://imgur.com/a/ekFlLYq
> >
> > As I understand it, that is due to the mini UART not being as good as
> > a
> > regular PL011. On the downstream kernel, one would apply
> > 'dtoverlay=disable-bt' which would free up the first PL011 to be used
> > as
> > the primary UART but the device tree overlays do not work on a
> > mainline
> > kernel. Is there an easy way to disable Bluetooth via the device
> > tree?
> > If not, is there any recommended or documented way to use the mini
> > UART
> > successfully? I have seen information around using 'core_freq=...'
> > but
> > the documentation says that does not work for the Raspberry Pi 4.
>
> The issue with the mini UART is its clock, which is derived from VPU's, which
> is itself controlled by RPi's firmware. Changes might happen behind the
> kernel's back, and the mini UART divisors will not be updated accordingly.
> This is an area the we could do better, but no one found a good solution yet.
> That said, for now, when using the upstream kernel, VPU's clock should be
> stable as we forbid the firmware from performing frequency scaling on that
> clock.

There has actually been a regression in the firmware here, prior to
mid April if the enable_uart=1 I always had clean output on the serial
console, since that date on the rpi3/3b+/4 I get a whole bunch of
junk, revert to an older firmware (I've been using April 1st ) and it
all goes back to being fine. I've not had time to actually report it
yet, and it's still a problem with the latest firmware but a quick
look it likes similar to this issue reported in late April:

https://github.com/raspberrypi/firmware/issues/1376

Peter

> In the future, once Maxime Rippards vc4/HDMI code is merged we will most
> probably hit this issue as the core clock has to be upscaled when feeding big
> screen resolutions. As you mention, a solution to this is fixing the core
> frequency in config.txt, for example I tested this successfully:
>
> core_freq=500
> core_freq_min=500
>
> Regards,
> Nicolas
>
> [1] https://github.com/raspberrypi/firmware
>
>
> _______________________________________________
> linux-rpi-kernel mailing list
> linux-rpi-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rpi-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALeDE9NCjMzzhdwR%3DoMh4wYjZXf8ekTCi8t_DVq0PLw5xD%2B8aQ%40mail.gmail.com.
