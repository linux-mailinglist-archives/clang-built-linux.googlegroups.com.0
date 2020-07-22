Return-Path: <clang-built-linux+bncBAABBU744D4AKGQEV2KUFKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF3A229925
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 15:25:40 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id q20sf1095107wme.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 06:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595424340; cv=pass;
        d=google.com; s=arc-20160816;
        b=CP7JxWFkgYfHeDNX2r/gluQOQNTJbho6zrXN2+qPLqK7oFJXMebcGWbp58u3cgY0Vr
         hYDGSXBsvSaKZJJk3z4i8on7yZKOYipBX2SY0E/L+QvXwY6X2fawCfuVHzqRV++3f+1A
         ezqF7WdzQYmGoEDnuTY7xG6MIimyWwUveW8P6u+hVVQuA0nWALbmGZfVvJpCqynHcr4m
         cHk3HQRxtVNLkM6LSAmWsXLVYDHC8SutghRii/hzd3c83LEwT0GX1Uq97KpiMQnanHoL
         QXPi2tAZVD83Ow9vcG9Jwb1fYm6IBoLwChdpJ3F0ORy0u9s/1VWg9NTZLa3FIr8Di7ga
         X8GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=uwn37aQ6ArmUbQeuMEy0XWYipTQwFDueKMqXqonG/sM=;
        b=d8ZALjZCB7k+gGk3UUMgCQbwgDx+5goWhNzx7hFkJW4My+bv5pDKglGaZnb6aZdJ9i
         EFEbw4IBnsJRJYP+IMpi1fKyuac07yeb3f9u8KI/74rLYJerKi0xrC4Q9ICSTazqIe2j
         CkNUKuBa2isFSI6UCI4pb2lLRyxFvnmJO7TCVEHwNu+VDGGq7IPOyZsAruEmUQtuPArl
         /TzVy09SdxhsRad/Z0cGmWk3EyzOC6/oohYy3pJ+ESpIXgQb788uV6GmXM0T/dTOG1IM
         PqB+m71BaaiChxyeJ5aQBBeWUuuzyuA8IEpohpuXynnlkVmIziDUOETymPKDboKPPKGl
         W9TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uwn37aQ6ArmUbQeuMEy0XWYipTQwFDueKMqXqonG/sM=;
        b=UtaRLXQ6M2AZ2tQL/PEE+IL8rIACiXDWFY7swtpj0qSS+r7Ng7lV9W/taXgFO3U3yd
         3himYZ5Q+Bl0tgbPV2iYJW09UNzDbIqHErMyBMjoB9pfbzGpFNtg92ARCYYDqjRA1w0V
         4GCCn/qVmA9J+yTCOfn5xtqo+Ysu/lk/CsFrAdSa2ltfdMyBoyftG1y6cj6c595fCo1J
         hY8f5XVfv3XOHOa1EachZoUK+isGbxNVHhG33VB4adhLpy1YbjCutkP30YN0kk8wNs4d
         OHOai2jGFI9H0ieT4kOK7G0C7Xx9xXoDX01V3otbRDgK7sPb1hbjYhgJzPVaVBfW1EQj
         88iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwn37aQ6ArmUbQeuMEy0XWYipTQwFDueKMqXqonG/sM=;
        b=Pr6GLall9FMpfJllnJR1w3QBhnR9j3B38w7IXSIgn/AxPtsGT0wWe+fc0GmotBFGut
         yIptDRI9PxAV2boogDhcLs1kP1vP6Pul5oZl/hSrwUuo902fFO8t0DNIhalG+BRGcsEf
         YW/UD5LzK2QwLYcy4GjF275ovKJYsC90s9635xFLVDHv7yBouXYGIbKpIU9URFk1kD+b
         kwEFwI74MocEbZmabTyUZyAW32qGTYuVEPVBnoRUfhvmjJNLUIQ4ke5k0DnaPmWE4dQR
         YmbM6RtSZCtofauOlErEQm8Wp6KouBB+iT+QK9irmF1bEIGnH8LVoSeNERiTCEu/hy9c
         0zNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xA5LXiaAM33xmYmDHqaWV7CWhpsWd6vOKAkXB2sPc8rcWxh2D
	PEZnkCA9QCUsY/DvV4EKcmY=
X-Google-Smtp-Source: ABdhPJwXB27AENl2J+P47k8fmGGYR9kZyMZoJ2bKHvF6pMmix1HDvOuSEB/em/2HLdeBYTH51HaOLA==
X-Received: by 2002:adf:dfd0:: with SMTP id q16mr5805611wrn.60.1595424339944;
        Wed, 22 Jul 2020 06:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls2616652wru.0.gmail; Wed, 22 Jul
 2020 06:25:39 -0700 (PDT)
X-Received: by 2002:adf:dd4f:: with SMTP id u15mr6465652wrm.275.1595424339589;
        Wed, 22 Jul 2020 06:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595424339; cv=none;
        d=google.com; s=arc-20160816;
        b=HI3CR7kAkQzN4nENQfTqsn7ffoqpuR0PUaJwiBIYU5ZwNgMV76WlOfvCKXk5fKBQpC
         gZPL+HTNnFsZcwgb/rI0UUNn4BmmalXE0yUgcepgkWj5GyoarOOV9HPUm0+JdxYkLVWE
         6TW6oTTRQgS6AyN7w4dzCwuBc9XqPH94XOcNpiHp/EyJjkQ3OccDLN77ANOF1jlqEep0
         rBruaDmtIEpKc6zb9toa34e3D5fY/d6oU8RYv9qKug2a/aifDrFVelnuEOupFKtGne9V
         LIk1u8Qx0O0enr+9XsayBD/UWdmO7Cpdrs7Xndl4IiIUExDrfBzhsYu59O2Zjvk0zpmK
         vbFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=MPwuxs49TLwx0P0zIuJ8pC2GaskNnE0PRnS1GPtSHUE=;
        b=xnK5y5n9L5bEwBWqmlBlx8myvDlR3FKlJ+OJ5eS9DGIKXeFA+Xoib5pMxYFyY0/33H
         OirXPHGVYCuGDeolWE1tGQXBz6SVkQMs49MyHO1o0QYa188dqotKI2tJrlH+mX/pywjJ
         L0GJEAqFvKM72x5D4mGlQHtFhZjLU4jvni/YtsUUQgiTGn5HH4zXU9v0GZQjKBnJe/7k
         rg4x7phRWbPHgqVYqeLBCToCuVOXPhbdPjE8F4gYwJD1ZuOASXlblh9eEvdBlsoxapV7
         gVWIeXshtFiwQlG5b7CWSgflPFhTEOprA0SEacFZ2xochJANDamma6CH5NmJGVrPBEvP
         y4Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id s79si306315wme.4.2020.07.22.06.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jul 2020 06:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 9082CAC61;
	Wed, 22 Jul 2020 13:25:46 +0000 (UTC)
Message-ID: <63244277a1c8989f87906746742141eba01d8bb5.camel@suse.de>
Subject: Re: Issues attempting to use Raspberry Pi 4 serial console on
 mainline
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Nathan Chancellor <natechancellor@gmail.com>, 
	linux-rpi-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com,  linux-arm-kernel@lists.infradead.org
Date: Wed, 22 Jul 2020 15:25:37 +0200
In-Reply-To: <20200721225724.GA1005852@ubuntu-n2-xlarge-x86>
References: <20200721225724.GA1005852@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.3-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: nsaenzjulienne@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
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

Hi Nathan,

On Tue, 2020-07-21 at 15:57 -0700, Nathan Chancellor wrote:
> Hi all,
> 
> Thank you for all of the hard work that has been done on supporting
> the
> Raspberry Pi 4 upstream. It has been a great platform so far for
> testing
> various clang technologies on actual hardware.

I'm glad it's useful :)

> I am investigating a panic that occurs when running a guest under KVM
> when clang's Shadow Call Stack is enabled and it would be handy to
> grab
> the kernel panic via serial console as the device panics and I lose
> my
> ssh connection. I picked up a USB to TTL cable and I am able to get
> connected with the following config.txt options and cmdline.txt
> options:
> 
> $ head -n4 /boot/config.txt
> enable_uart=1
> kernel=Image
> os_prefix=custom-mainline-arm64/
>
> upstream_kernel=1

I'd say for rpi4 this property isn't necessary as you're creating a custom
os_prefix anyway. But it should be harmless.

That aside, the only thing I'm missing is:

arm_64bit=1

> $ cat /boot/custom-mainline-arm64/cmdline.txt
> console=ttyS1,115200 console=tty1 root=PARTUUID=45a8dd8a-02

Which device tree are you using? This is the right tty device if using the
upstream one, if using the one provided by the RPi foundation it should be
ttyS0.

> rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait
> plymouth.ignore-serial-consoles

For reference I just booted linux-next with this setup:

boot partition:
	...Latest firmware files taken from the RPi firmware repo [1]...
	Image			#Copied from linux build
	bcm2711-rpi-4-b.dtb	#Copied from linux build
	config.txt
	cmdline.txt

config.txt:
	kernel=Image
	enable_uart=1
	arm_64bit=1

cmdline.txt:
	 console=tty console=ttyS1,115200 text root=/dev/nfs
	 nfsroot=10.42.0.1:/home/nico/netboot/root,vers=3 rw ip=dhcp
rootwait
	 elevator=deadline

> However, when I connect to the serial console via PuTTY, I get
> nothing
> but garbage output: https://imgur.com/a/ekFlLYq
>
> As I understand it, that is due to the mini UART not being as good as
> a
> regular PL011. On the downstream kernel, one would apply
> 'dtoverlay=disable-bt' which would free up the first PL011 to be used
> as
> the primary UART but the device tree overlays do not work on a
> mainline
> kernel. Is there an easy way to disable Bluetooth via the device
> tree?
> If not, is there any recommended or documented way to use the mini
> UART
> successfully? I have seen information around using 'core_freq=...'
> but
> the documentation says that does not work for the Raspberry Pi 4.

The issue with the mini UART is its clock, which is derived from VPU's, which
is itself controlled by RPi's firmware. Changes might happen behind the
kernel's back, and the mini UART divisors will not be updated accordingly.
This is an area the we could do better, but no one found a good solution yet.
That said, for now, when using the upstream kernel, VPU's clock should be
stable as we forbid the firmware from performing frequency scaling on that
clock.

In the future, once Maxime Rippards vc4/HDMI code is merged we will most
probably hit this issue as the core clock has to be upscaled when feeding big
screen resolutions. As you mention, a solution to this is fixing the core
frequency in config.txt, for example I tested this successfully:

core_freq=500
core_freq_min=500

Regards,
Nicolas

[1] https://github.com/raspberrypi/firmware

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/63244277a1c8989f87906746742141eba01d8bb5.camel%40suse.de.
