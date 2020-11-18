Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBOET2T6QKGQEUB5AWZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4232B7D01
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 12:47:05 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id 3sf480979ljq.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 03:47:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605700024; cv=pass;
        d=google.com; s=arc-20160816;
        b=JTMA8Z4R5luhvjzbSKDhlNkuJX5TaOClIZewd8EuEg0WlJqaGKGBZ+AR9F4Oc6pNMx
         MQd6a7+aTe2pp6g3g0yQrn6/B9HzUOZOZhXQllKNLlBIGoQXMbpxPpMcxs4sO/zj2g8f
         Ba0IcnwT/FQnmFz+618Z4XfZYZQ6BfwQElU7QhCtLG7A0EW/N0LM+6KKqVOAgkVIa/V1
         WrcqGhRpgo0RncT1UjknMF9fwiDfQgJj1ZIs2t6uhTRaQO3G/3gpZTTsZPwH6cejO2Z+
         V9QqfzJHqvnjIjWWDJPU0DeYI6pQS6Ftbh246iKyKhPidbmAh8aHsyMfuM2QTgc/+yJe
         kZfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=nYYfl+cuFZsA4kPc7JJA5KjThBzsk/QJPi+4bofUrLE=;
        b=PziboRC9ZJUhX5m0abRt72+PqtwpAtK5zXqh6EaF+gw+uGrsU47cUffGQun4G+Wy9c
         EkBkh4PXVC2kgkljrD75gye3uNyv6AoHEK8qaVnWGums2WTniKBcLckhtn/ssTkbkv91
         8huqvPAwVU618QUJt0eMzRdT3K99K3I+dtKHlEcpa5qNU5BcS72zvS8QX3V696j6Mw96
         s77fCMcRaUxB8u4cRhFMsNQCd5hg6w3aB7iyVwfOISg6Z1S12mxzb+psxghrCE5WKXv4
         KuUrHVAIkGdryoV+wAH2bBrLazaeHDjYKInZKeITaGjBgaBxIjUi0ZeKmmNiZZKfX/oI
         8MOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b="NUk5W/pz";
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nYYfl+cuFZsA4kPc7JJA5KjThBzsk/QJPi+4bofUrLE=;
        b=axpZew7qYGvMyq/iliueHcRf66FJzgm2OXlidkZwQowahNbKLOqAterZA12qVncTPj
         qqiSK5Fnil/6TRF57hiT6tWMg2EGblKARSJcN1qDjEHBqImGo+Z99355rOp7MRlpJzAo
         znKW/m3bg52vxpnyZIOV68lpMR1mGOs84FeOebBIr227l1nxR9YK7RDpMxtluxXu6YGv
         Cn0IzBCYK7g9XBfPE7ok3qkYsITYnRqWUtcBRyI2aQ5JAdv++oJg7cRl60JNGy/hWOHS
         gY7ED5AvNdWrVeZHJPd3Z2THwl9kY2op3ITm4NPVk2cQmeFHW6sq5aN1t+GWvNz+1VxV
         wYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nYYfl+cuFZsA4kPc7JJA5KjThBzsk/QJPi+4bofUrLE=;
        b=Mpv0Rloy2DKBp8kNSjtgz6WSagz4A7WK87+EheXbqQOaGhAnwPHkxp1eychgK325tQ
         ljarCTwc32d+m8Fn6pFfPicoJUwWHLvdb1Mflrji9WMBT1OKuZK0zb+SIiJ9K/d3e0rh
         07Ypn48ro1YnVTwnoA2fV3RyfGMtCw35GRv4nkc4qVJGaB4Zyjlp7zq0vjruVl1G9aUj
         P6E9imi/QmSdZVRlkknRaqRQsOVRR620P5wFT3CJEUQWy7tmUrznKloQnylAhGDZ37QM
         lsixZO1/7pIpIvZEDyK+yKWJ5eAIYT+/6Vtbphuhru7K/smp0MwqaHZzqrVfBgQxKGAU
         Hfpw==
X-Gm-Message-State: AOAM532SmXxzUYRAgYuD+5jUwtd5SRhrn5nhLYfMFPmkDo2B1brkAF3E
	2qAd2nKSiO/HIqXgWK0Pxv4=
X-Google-Smtp-Source: ABdhPJzICrR3SNOHKWfL78RfU/X1jkIVDPw/02jdiV8349RYt4vBON43ZBN4scE9ybeoDz//YHz2Lg==
X-Received: by 2002:a19:6a07:: with SMTP id u7mr3877052lfu.252.1605700024658;
        Wed, 18 Nov 2020 03:47:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0c1:: with SMTP id g1ls3180516ljl.5.gmail; Wed, 18 Nov
 2020 03:47:03 -0800 (PST)
X-Received: by 2002:a05:651c:c2:: with SMTP id 2mr3546399ljr.104.1605700023614;
        Wed, 18 Nov 2020 03:47:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605700023; cv=none;
        d=google.com; s=arc-20160816;
        b=YR5ISFgT2/OWYWnrC5vd1VCVDD8fCD1I769EGdVdCpGwV/jxVYXjDE1qjAHb9a5Yly
         UEnYis9eWN6hGCqwIBi0CBeX6P1VjLos1tB3jLhYG2PuUP6Gn7X3nSTAH6iE9IoGbGla
         l6OTIUYQcyj5yxEZNO5BIn0kNAwheIR7ERYoE1uKi7ySTK63CKu9d5lOe13ae9XsJh71
         y+l/sVVRnYl4HTvGFVgZ5QC4VRx767LFMCLlEEgjZhxIfyrWTpXOa1K3jUt2eM77wciJ
         PntXjHlDg6nLIf5Rrs5zoMqoJtC50u2uqhTabAfuvIduOIOSPTF0Mee5DjEdyd1itIDn
         gILw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1/ffUsnTT+J+CBsXvSJtEjzMUV3AJ8nGTkvbVm0QFzQ=;
        b=XV835W0KY9oUBlu0E+dgwZFrd+sT1walSTLw+1xx7WSw1bhw/VPpPop/AQXekw9dW3
         O4vHPZkvArj0L7RQv/ltwrULlQpsbvrw6ob/JNle6M+FX2dbwL43EtAVTsKDv7BaUCMp
         aHVLaQQGWyqv9V31vkag2vkcS3ab2QaAmVBU6xHsobughabbaK70fDk/jIUefL7oqmfB
         L+nbq+VrrzNDUGXjEPvcXJ3Wj+J1LZN+XyZy24pNKWHXrtSrzTrBl1yugFauOFxhfsy0
         QLVV7JT5EFoT27Txa8LISy/HmAS7vKyWHbogqJXOh0aKFAlZbR2AtFiVs1kzL1RyOhf+
         p8eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b="NUk5W/pz";
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id j2si549296lfe.9.2020.11.18.03.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 03:47:03 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id CDE31AD7C;
	Wed, 18 Nov 2020 11:47:02 +0000 (UTC)
Date: Wed, 18 Nov 2020 12:47:02 +0100
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Matteo Croce <mcroce@linux.microsoft.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
	Pavel Tatashin <pasha.tatashin@soleen.com>,
	Mike Rapoport <rppt@kernel.org>,
	Tyler Hicks <tyhicks@linux.microsoft.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-ID: <X7UJtlLqJ0ZljhXG@alley>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com>
 <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
 <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
 <20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
 <CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com>
 <20201112184637.de44afedf0ce0dcab36dd0ad@linux-foundation.org>
 <CAFnufp31YO9yTXVqgKNZGR9XXRKfGKM4Y4NLk+4_uXdoWa+G4w@mail.gmail.com>
 <20201113162043.GO1602@alley>
 <CAFnufp3NBHUQ8fT1TEw5BvazGQjP9KmsU3y7ioJScWQ9qGiq1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFnufp3NBHUQ8fT1TEw5BvazGQjP9KmsU3y7ioJScWQ9qGiq1A@mail.gmail.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b="NUk5W/pz";       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Fri 2020-11-13 22:28:18, Matteo Croce wrote:
> On Fri, Nov 13, 2020 at 9:06 PM Petr Mladek <pmladek@suse.com> wrote:
> >
> > On Fri 2020-11-13 03:58:49, Matteo Croce wrote:
> > > On Fri, Nov 13, 2020 at 3:46 AM Andrew Morton <akpm@linux-foundation.org> wrote:
> > > >
> > > > On Fri, 13 Nov 2020 02:38:18 +0100 Matteo Croce <mcroce@linux.microsoft.com> wrote:
> > > >
> > > > > At this point, since 'pci' enables BOOT_CF9_FORCE type and
> > > > > BOOT_CF9_SAFE is not user selectable, should I simply leave only
> > > > > 'pci'?
> > > > >
> > > > > This way, we'll have the same set of options for both sysfs and kernel cmdline.
> > > >
> > > > Well, you're the reboot expert ;)
> > > >
> > >
> > > So honored! :)
> > >
> > > > But my $0.02 is yes, let's keep the command-line and sysfs interfaces
> > > > in sync and cover it all in documentation.  It would of course be
> > > > problematic to change the existing reboot= interface.
> > > >
> > > > I assume that means doing this?
> > > >
> > > > - #define BOOT_CF9_FORCE_STR     "cf9_force"
> > > > + #define BOOT_CF9_FORCE_STR     "pci"
> > > > - #define BOOT_CF9_SAFE_STR      "cf9_safe"
> > >
> > > Either BOOT_PCI_STR or BOOT_CF9_FORCE_STR, I have no strong preference.
> > >
> > > The syntax is 'pci' while the enum BOOT_CF9_FORCE, so we can't please both.
> >
> > The question is whether we should modify/allow to set these values at
> > all.
> >
> > Anyway, we must prevent them on non-x86 architectures because
> > the reboot behavior would be undefined there. They could probably
> > make a mess even on many x86-architectures.
> >
> 
> That's right, but the same can be obtained by passing 'reboot=pci'  on
> non x86 machines: the cmdline parsing is generic and will set
> reboot_type on all arches.

Fair enough. Ah, I mixed reboot_type and reboot_mode and looked
into wrong part of reboot_setup().

> I looked at the reboot_type usage, there isn't any reference outside
> arch/x86. In fact, the parameter is just ignored:
> 
> # uname -m
> aarch64
> # cat /proc/cmdline
> console=ttyS0,115200n8 reboot=pci
> # reboot -ff
> Rebooting.
> [   43.893833] reboot: Restarting system

Good to know. Thanks for checking.

> The same applies for reboot_force, the only flags available on
> different architectures are reboot_mode and reboot_cpu.
> We could hide some handlers for some architectures. We save some
> space, and avoid letting the user set flags which do nothing.

I am fine with the current patchset after all. We could always make
it more safe when people hit it in the real life. All these
worries were because I thought that this interface allowed
to set values that were not possible before.


> > Anyway, we should get input from some x86-experts about the BOOT_CF9
> > values.
> 
> Sure, x86@kernel.org ?

Yes but I do not resist on it any longer. Just if you were going to send
another version just by chance then it would be nice to CC x86.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X7UJtlLqJ0ZljhXG%40alley.
