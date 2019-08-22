Return-Path: <clang-built-linux+bncBDYJPJO25UGBB25K7PVAKGQEZETHGVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEC399E14
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 19:48:29 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id d63sf2499462oib.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 10:48:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566496107; cv=pass;
        d=google.com; s=arc-20160816;
        b=1CykzIV20FmIWiADkYiHpJ/+nI5RtPWCXM1840JMzizP2yJWa+zYfQXjuvtJ7WdiT0
         JvHEGYHuu/hOkCRL0RG3/ebd5UGg2TTuRPP6I+9Fh7+qiqS5yHzoX6Z0kRryXL2yTw7c
         O28fYH7i7nuCp4R+mP0tzWYs/a77dfUZLEd0UYMhjSovsjg5uQynL0APzYK0ieQClbJb
         2PNjcpDJfXbOpe7s4j2Ykg+JFEBG8gkapNf/B/xHK3qLZhmTpXYfktxlWMqF2Sgpqre8
         k+r6oYkwMUKyHbu0xJF1KSzYsZvu+J+/MXgld4/S12XAIHoZkiCvyyJPtw/yn/SGldvT
         qkmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5Qytp/Nt5S1DO8ztffgH0P34l2SP22pMbIv6V6RbZ2U=;
        b=rQMrG9PQcCHe/+3TFw9fUaHS6wIlL6MIZq6aX/9+M+PjFzWZ7rZ3t8id52GZmDevFi
         dwLqqWKf8mywO05xJS6k9kf1qxNSJL8tpco7CJTI4u0BP6kOembLRMfmVpMw41jb0BQS
         x+iYXTF4GdhD4J30IM5wqZ9s56j8+1XLbtBMlFFb7tTWAvTvWwCdxb65tKM6DGbP808R
         +KDFyrL8t6VLvFzdrUZssKTUwC+T5PoDJ/v4/GKhyYyVsOYKzfwHfLwvxvIuo4CgQXkP
         yBcYMqrrnvPsHBO6BkfLGZlThvLr5KlxyC+fXJDpgno2Evdh+qMmcyhyqicSvwMM8O+h
         Vx0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bTg2cCZa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5Qytp/Nt5S1DO8ztffgH0P34l2SP22pMbIv6V6RbZ2U=;
        b=mYUlPV/dTNhlvwb7ozEp1GFaWcCclSdZRBgaz/ZanyX0twq9PrwxGra0Cwt71Tun95
         RHMmNTFieezO70lvarS9lnhEy+HNlvsTszUOw7SqqyEHr/fC6qb8tPYeqtzU2KEj6EIU
         TfoVbKQGv5IjLwm0fVeJH/Ovtotn/RA3gKAFkBYm20FopSQFRseEyd/TSZp067YDqeCf
         cWQAi87+CKzUbOko3wM4QduwCYSvjGZ8M0FCkUMy5YnxWbnX3R0NAKbApdULQ5onqgB/
         0qT/XJQkPsxpOS9txE+uqyG07Nr8SBQZMFMJH3krLduM7rs/YUp1LH3ewNigMw8DMWjo
         wLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Qytp/Nt5S1DO8ztffgH0P34l2SP22pMbIv6V6RbZ2U=;
        b=Ptk5Ohl96TjVH5L6MZU9iasF/xY4C8kXeVfjcXVOQS1bjF+nHoOYqbuQ/+nDmtc4IP
         mK8ig5B93+SxyIpbPe7zPmJxVLUg0pkNGB81stDOQ0IcQaaaJkj0oq2LjDrQLkrT5X6+
         164oiR5XLvaXGbyJFgifklZqc9YQ1W5idk5jnbZve4pJmWePbf+vNZypC/e/MwgUr7iu
         vJslMN2VMhlSjYt4Myl8eUfVMNMjpIJF6ST7Fonm08Wv/e8Mk2vFdLkzCOpM+6mZr+93
         V+BgsmHY8cEZgTOROONtYtrvo+cgFYqtzkK1ywON2bi4zICPoR1H61augJuT5680Bt55
         Rihg==
X-Gm-Message-State: APjAAAUnn2se7ypkgafl8nNISzLPXTDytgHGUSYf42502tB+4kR9HcKO
	OVm5EXGlsEDKeXMI6kCKGNo=
X-Google-Smtp-Source: APXvYqylFP4mncq8dG5neaUESJ5+8zzWHjx2RZF0OsBpiAUVVnOfNlbF1YUO3qDqJSB5/vVqKi58Rg==
X-Received: by 2002:aca:d09:: with SMTP id 9mr266156oin.40.1566496107669;
        Thu, 22 Aug 2019 10:48:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:b8b:: with SMTP id 11ls650140oth.6.gmail; Thu, 22 Aug
 2019 10:48:27 -0700 (PDT)
X-Received: by 2002:a9d:70d8:: with SMTP id w24mr178692otj.176.1566496107401;
        Thu, 22 Aug 2019 10:48:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566496107; cv=none;
        d=google.com; s=arc-20160816;
        b=msLaXu6gQaRyUE6aOxbalSEezWCZf1GaS5610YYNk90h//kuzBmkr0+5PayhXmERln
         7w9CG8JherQEqc2/C/XV0R97J8Bsf79x5F3XVXuNLirdXPL9UpiWqQB/p5o6oN5z7iMI
         CY/YUq51CMZSvorKEWrpq6yQMXVRRpgxA0IOBXpGg2zI0oLUQVANFplJ2//y3n8Sw0Hr
         r2xZkzBBrNqhjsTqniuxJVEpgptYFIdCFQ9KdDEPE2QBS5BK9SeL2JO+1quvkUYddOml
         572+U6udhTKNZ3X2GIB+SE27KboWsvF0WmFyTN0Mo1zDtq4Zefze7KbNNE9k5PZ9R9Mx
         6M4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=65Syt0aD9qxqRmA8AFbt1FuhK9wh/jhvWanw7v9uikI=;
        b=xfrDzAfJaa1Jblr+m13wxkcH2mLTrqUTKyBseX2PI92HmO6kvjg4Cab3Sp8EoUQoXO
         ZUO+9UNP9GKpho9y2ZncqyBsha3lRO23SbwmZcGAXku2xUiTgtbJs5QAKH/SbdWsY8BA
         wKpaavfW+bfZ144Q1DpTp9n6ugOe1E3NHCiVeKJbS7Bmm4GM9Zfp8rHYuR8CfRMOz6LR
         s1vIVBf8P/ov42dAGZmCDKIIyOrrk1wNvZ1TdQjibtEMvBAmuVTiZlJlZLsd7VR+ctTb
         cl0KVBH86Kdvis+wF8/SC8iSEBqqqMMTE9SYgPb/R2NEX367KVmp+w7DxuRuwz3Eje1n
         ggrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bTg2cCZa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id z9si11451otq.0.2019.08.22.10.48.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2019 10:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id n4so4096194pgv.2
        for <clang-built-linux@googlegroups.com>; Thu, 22 Aug 2019 10:48:27 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr334919pgg.381.1566496106421;
 Thu, 22 Aug 2019 10:48:26 -0700 (PDT)
MIME-Version: 1.0
References: <5d5e908e.1c69fb81.1877f.79e5@mx.google.com>
In-Reply-To: <5d5e908e.1c69fb81.1877f.79e5@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Aug 2019 10:48:15 -0700
Message-ID: <CAKwvOdkiQccDnwqEBVsL9k_ZJ1vyyGj=v=yTW9FjVKmEwROWSg@mail.gmail.com>
Subject: Re: next/master build: 222 builds: 2 failed, 220 passed, 3 errors,
 799 warnings (next-20190822)
To: "kernelci.org bot" <bot@kernelci.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bTg2cCZa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

On Thu, Aug 22, 2019 at 5:54 AM kernelci.org bot <bot@kernelci.org> wrote:

> allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 80 warnings, 0 se=
ction mismatches
>
> Warnings:
>     mm/shmem.c:2734:35: warning: variable 'shmem_falloc_waitq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/namei.c:1646:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     fs/namei.c:3136:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     ./../include/trace/events/iomap.h:52:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]

https://github.com/ClangBuiltLinux/linux/issues/644

>     ./../include/trace/events/iomap.h:52:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:52:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:52:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:52:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:52:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:53:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:53:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:53:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:53:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:53:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:53:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:54:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:54:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:54:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:54:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:54:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:54:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:79:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:79:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:79:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:79:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:79:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:79:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:80:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:80:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:80:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:80:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:80:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     ./../include/trace/events/iomap.h:80:1: warning: declaration of 'stru=
ct inode' will not be visible outside of this function [-Wvisibility]
>     30 warnings generated.
>     WARNING: "ftrace_set_clr_event" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
>     WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL=
_GPL
>     fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     crypto/aegis128-neon-inner.c:58:40: warning: vector initializers are =
not compatible with NEON intrinsics in big endian mode [-Wnonportable-vecto=
r-initialization]
>     crypto/aegis128-neon-inner.c:62:38: warning: vector initializers are =
not compatible with NEON intrinsics in big endian mode [-Wnonportable-vecto=
r-initialization]
>     2 warnings generated.
>     fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized whe=
n used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when use=
d within its own initialization [-Wuninitialized]
>     fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitializ=
ed when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/net/usb/lan78xx.c:2662:34: warning: variable 'unlink_wakeup' =
is uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/soundwire/slave.c:16:12: warning: unused function 'sdw_slave_=
add' [-Wunused-function]
>     1 warning generated.
>     drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/scsi/lpfc/lpfc_sli.c:11817:34: warning: variable 'done_q' is =
uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/scsi/lpfc/lpfc_scsi.c:4803:34: warning: variable 'waitq' is u=
ninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     WARNING: "LZ4HC_setExternalDict" [lib/lz4/lz4hc_compress] is a static=
 EXPORT_SYMBOL
>     WARNING: "ahci_em_messages" [drivers/ata/libahci] is a static EXPORT_=
SYMBOL_GPL
>     WARNING: "ftrace_set_clr_event" [vmlinux] is a static EXPORT_SYMBOL_G=
PL
>     WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL=
_GPL

Not clang specific but probably simple to fix (remove `static`?).

>
> Section mismatches:
>     WARNING: vmlinux.o(.text+0xaa84d4): Section mismatch in reference fro=
m the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
>     WARNING: vmlinux.o(.text+0xaa860c): Section mismatch in reference fro=
m the function weim_probe() to the function .init.text:weim_timing_setup()

https://github.com/ClangBuiltLinux/linux/issues/645
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkiQccDnwqEBVsL9k_ZJ1vyyGj%3Dv%3DyTW9FjVKmEwROWSg%4=
0mail.gmail.com.
