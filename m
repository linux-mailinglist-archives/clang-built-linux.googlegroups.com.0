Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV7F3X4AKGQE6TUSWZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DABD2228C4A
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 00:57:28 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id 131sf163660vkw.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 15:57:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595372247; cv=pass;
        d=google.com; s=arc-20160816;
        b=feLjs/1tPlHD9AuzhEcf431CVAPKrXuEx1SR0q8s4thSbfJjlrMjZjmuF9ARlFzLGG
         Toxbe3oh4YPF7Ua/Mq7X54fE+piz9nD1b7g04pvSxf/gHpKa28kzGPzE+wWKUZO4Y11t
         dMtxkaMI0Kv/9wpzMp3fgJmRYAcjQr8YeWpFhA1MWgC4Ryd6F+cIjrA2NLzgbsEKfdwA
         jqqvI4y5vValPdH3osbUx3MmaZze8lJPl1Zp984BIbKqi6Of2WjlHSd3yqVGz1n0pkij
         g179siPJviquf3lnX54QFo8ma34ZZe38o6ZOE2eYWu18qatunLzfcBW10FO3qMHLH+dB
         wRZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=ZpBRgDgEnxJX48mV7jcx5fcVwtzOEo+xsQhbYkDTrnc=;
        b=I9txpnONY9D9bcE3u63AS+GDAnhiP31dh+96sNtvpDscQfwAfu6Oqw9rL8ozRg+0fj
         fmD2bBxe9FVIM5/dkbIhJHU8K+GlJfevLXymu2HzGx5tCBH+MnGc13dPfEtS+26QPiAy
         YHrTVGGBFgShtap6vXS5XxgogqTOz4u4L1N4iFl/tSN1LH5TBjpG0qK77Ctyk9VNP4Jb
         1yUzVDWS2q0D5nGhBT8DeIlsO60l/SXpl95aN5IK5u2P5GriTIHZEzcYajnYaSFnTD/6
         mZdExyqcC+95AzsWwj3VXSB2phvpIr+0NCBA0jIehja97DVSv8WU86jipEL+2fkOmXWg
         A69Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lbEXW24I;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZpBRgDgEnxJX48mV7jcx5fcVwtzOEo+xsQhbYkDTrnc=;
        b=qA0bBiaXtn+i/aKVF5TUgtO4sFdA+Mu9OX9HIWQiMDuCAt0NtFfvplSUT52KYRJ60L
         LS4Tb8rSVXTDwRDvwxGOpSE1zDiaJ9DsSH3+taLldMOQ0ebp+Yc7T2KgdoWKCDNfj1pa
         p1UfEo64a8xvovyFAzR1y3pw6K6EeYulnM3Pp3Xz2m5OgP5F0ciz6jKmXw+wu+Yznyb7
         29ksHPoWArNbZxwszcCzjZ85qPRM46FDaf8ZS4XXGl4hYrPSfcUeHFRh+1HGl/1Wui9p
         ITcHnx1T2ENQPQeC+KzIsz8+Tm9QgK82rh7OmDyOpFROw/JF671yFGLLj0VvDAzHX2Ra
         B0kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZpBRgDgEnxJX48mV7jcx5fcVwtzOEo+xsQhbYkDTrnc=;
        b=ub6Fsl6qvciUIJxvkbk9NJKyhBQhPxiWH6LCpnOOY42rAqfmBrfoVqXMBcDbv9WrQb
         j06bQBC2qaFQTctVLkItSPldLE8QltnrqnaVCDqXVM14SgJWVUU6vw7UEWYNKxYu2RjM
         riHiHExlXnzcD9I23HrCp9FRxph5tJXWaGQQ2ooLYhLWe40YPoc4i6+l5nJoDLYoDPro
         tUNOUb9h5KIySz7n8xYHzUbX4NEXhXEHTXpL5O5++fZ1z/dji8rnWhLEEjvsUZWFcr2b
         ZM1FIKV6WYhozQ+5imW6PSLZZkqh79RblKYmfxnJPN8K9M/dVCSIgXSzAmB7OKRmPyNa
         YOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZpBRgDgEnxJX48mV7jcx5fcVwtzOEo+xsQhbYkDTrnc=;
        b=sRaTnjS5Zw/tSFx03V35Qf3VXGPoPkTcRb9aiEgqNQWyfdMHQeVz1Old93THEEOPZS
         5pv41DpTLHxKguwQ3tcTgN7iQ8OYzHOeXttjm+0wpd6UEvgZPMXTXygHPLXwuUToh77j
         Kix18wgtBeIV0QVr1iHmjoeoASffH8cl3Z7lc74WXbijyf0bj6mw41Wcz3fdSXm3rNxf
         uuBDhGvpieoHom4RBxNJyyGyTswsFhADBw0/0eZiBGkfbiBYhX3bQuo7PgrNvYve+ljl
         8oX9wirk3nHeDtbYBc2YoDXWnJShmfjNSaNyDXcYzKRFA02ya1L3siI4inbZDRsHtzFs
         W/0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kuS1dnDUa8uJmOHntdw3jzVGv7FwWV0lFpT8ozTnb4kMpIzGX
	1yNkIRAyR0qf8kdyBJ5SbNw=
X-Google-Smtp-Source: ABdhPJxRnJc4cHttdJq43HQA5/bS6liYo3K5UBvy2vOOrfXq/ZKs4GeMsIiLYQ0i8zcD8t2Zi7/qEQ==
X-Received: by 2002:a05:6102:2423:: with SMTP id l3mr20187842vsi.150.1595372247569;
        Tue, 21 Jul 2020 15:57:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d215:: with SMTP id y21ls22683vsi.7.gmail; Tue, 21 Jul
 2020 15:57:27 -0700 (PDT)
X-Received: by 2002:a05:6102:5:: with SMTP id j5mr21179010vsp.122.1595372247228;
        Tue, 21 Jul 2020 15:57:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595372247; cv=none;
        d=google.com; s=arc-20160816;
        b=gvKHRs6e36vuP5UuOO1/O334hUxjoX/piGOIaRAGTzvAAv2Zl7FjLLCyN6+Tyoowp0
         2rgAVp+JAWn2wBI9RB3+7wCrExjIQZGjXxfEdQIC3FS322k34nkkjA1ylaFnDSXFLdx6
         oaC+hI/tn7iU5ry30E4B+gif9PnaL5xdbl4hYoADQiMFqj2t4x52AQc9NY9he/IbtxNb
         VyPPBBH1U41n21s/BmEYWn41o8NAiVeJk46HpZFm1HiTVBm/khklqGvQoIFf3tj5vmv3
         09Fy9QZF870amSau8HUSiXI6rjR2Jki94oG7hI8NXQTxHrECkVutekZ3/R/7NM5j9Cky
         z09w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=8pwz9WIM5G6pY9pOuLClPiPzgHExDIdEH43EW8e5fTo=;
        b=ehKLg5BtX1XZR7z5tzhYY+Gq4/M8cj5qMJ0wHiX0rLi6LV+UtYzOpmUhNkbWqLKoYh
         Ct5QSnYT3LMdTje5jp2QYDUIESwyGHb9q0kd7pfbKsSH9GH6qb+K2VTlSi1gRTTdpJDa
         mX7ebt5DcXqreYCM6dNpFlbu/epynF4vtgBFwPaUbJ/Q2uMhpV+KQ7Tvi/A9r4a3t0US
         D6foRtq5rMQsadLGXTOj/Ssqie3Qm9DZRPAk81Wk2nRI55dZpWWWOY0AIa0zsbScSyKe
         Mk1BD532VBUGGmjFa74FekzsNHj3/nsFQms6u26SYruv1cdSEwoaxaqqbIGoqxbYPxF1
         Nj+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lbEXW24I;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id c186si1598762vke.3.2020.07.21.15.57.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 15:57:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id o2so220456qvk.6
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 15:57:27 -0700 (PDT)
X-Received: by 2002:ad4:4105:: with SMTP id i5mr28252199qvp.170.1595372246758;
        Tue, 21 Jul 2020 15:57:26 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id h15sm4156836qtr.2.2020.07.21.15.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 15:57:26 -0700 (PDT)
Date: Tue, 21 Jul 2020 15:57:24 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	linux-rpi-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org
Subject: Issues attempting to use Raspberry Pi 4 serial console on mainline
Message-ID: <20200721225724.GA1005852@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lbEXW24I;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

Thank you for all of the hard work that has been done on supporting the
Raspberry Pi 4 upstream. It has been a great platform so far for testing
various clang technologies on actual hardware.

I am investigating a panic that occurs when running a guest under KVM
when clang's Shadow Call Stack is enabled and it would be handy to grab
the kernel panic via serial console as the device panics and I lose my
ssh connection. I picked up a USB to TTL cable and I am able to get
connected with the following config.txt options and cmdline.txt options:

$ head -n4 /boot/config.txt
enable_uart=1
kernel=Image
os_prefix=custom-mainline-arm64/
upstream_kernel=1

$ cat /boot/custom-mainline-arm64/cmdline.txt
console=ttyS1,115200 console=tty1 root=PARTUUID=45a8dd8a-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait plymouth.ignore-serial-consoles

However, when I connect to the serial console via PuTTY, I get nothing
but garbage output: https://imgur.com/a/ekFlLYq

As I understand it, that is due to the mini UART not being as good as a
regular PL011. On the downstream kernel, one would apply
'dtoverlay=disable-bt' which would free up the first PL011 to be used as
the primary UART but the device tree overlays do not work on a mainline
kernel. Is there an easy way to disable Bluetooth via the device tree?
If not, is there any recommended or documented way to use the mini UART
successfully? I have seen information around using 'core_freq=...' but
the documentation says that does not work for the Raspberry Pi 4.

Any guidance or documentation that you could point me to would be much
appreciated.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721225724.GA1005852%40ubuntu-n2-xlarge-x86.
