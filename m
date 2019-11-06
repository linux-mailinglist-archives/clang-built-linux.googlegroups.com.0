Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJEMRTXAKGQEYXD5P3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FF2F1CAF
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 18:43:02 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id w16sf8318017pfq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 09:43:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573062181; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4oMIHh7aNW0xVFhM49ZiLvfpjSQQZC3ovHmrT7+PDET5onCYNIh6z7+WxOE4coMcH
         l97gc57jxHJH4pfA3OJ0YpUrmZaZEp8bAnCB694WKo7x1ScyFaRcUD1AKt1SbDSA8EoU
         2xFS82If/g6D4PkTBXp7eP6LDDeYPvwkBbjSnzusxZsRHzdjEM6taaa01eTPw8vtQIvD
         Kc+2euL3AMWKQDb3zg1pZWgV/cg9IGr/dhnkA4g6lrqtVsPRhiCIWoNFSjhX5RVtDJD3
         rACA1Lp1pL1sgSjleVg6ANdRmAZ+p0Au3KHdxCXvH2fMw39p7aLEr2hGJD5/eXX/g8eK
         WyJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/gevbRJPWIF6vfI35JB6sqGE8nwFFcHmBFWT9mztpmw=;
        b=qG7whR/QZiWqsxAtPzM8LZNfesHomxYEmfWzqc0x7XFDCsHA5rkEIsvHfN671rizzB
         7czKu1EeosKzMgb6hXO/IBWTUMgr44fccZvb7qidASKuK4PZSwOArwsYdybK5OOVvlkW
         brU52o3/Apy+sqF5kVy9l1Xp5lhqogq0IKBdiSr6MHPMunh90+pK6WB7A9vi5LPPigtx
         83nYEGfc0/0Bf4jMxb6h3Ljz7dQW9qWYtr8Q9Dovq60wBCHehg8uKwh+X2G56TOl0egf
         fnE33NCwp7rxuhD0cBniZaTWrcDVlFdByy6KyIvJJEPV2OFI2Qic6ttFO3OSfitqjsc4
         Mqgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fty5f8Kk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/gevbRJPWIF6vfI35JB6sqGE8nwFFcHmBFWT9mztpmw=;
        b=pJamGwdZABg7gYiv6luIdKEGzMmxuYv5w1blLsO9ID6qRc+vsb6690ue0C9kwmm/08
         MpC7CpvRXBUckmzvke67JWIMXE6PG6PmZy1IP7xIjccjy5Lk+XNnUstgTEyTVAN3+rLv
         3N4Pg68UjXnkmW7ITKkkYPfWzTujzSTWmdSLZPj0xOf+k2B+7skx54Sgqp1dRDxbe0Yj
         sUX52P4P568my7cFJEcZ/R+pvByQuI1ikRlV9O4Mnl+EVscmQzL0snseGrQPWzXkhZ+p
         jEHztbZQ+G1UnaUFX2T2aTnAL+hil1NTT2RyghyP9inuxISFJ091/WsPop+vSKu4pf9n
         mU2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/gevbRJPWIF6vfI35JB6sqGE8nwFFcHmBFWT9mztpmw=;
        b=eknzu3dTgrio6wwKu7WpUDn1IO5ORXuMdOB2yW5X+EF3NS99ysOy1qd4SLteGu+s8W
         P8RI3iUS90c8MvnUvrEX+tFhHJuODR6owGmrhC9lVaGriKJ+jx0mnpF+mr5yBUQ1pc2J
         zObfLKhGIGDcMmrxewiZcCFNsVr1sc3M4obF0bsbanI24hVtiu+vedJfKZulny3hu+BK
         nmej6jW8HVfk6cFwhlEyEvZcF1HqfUdLY+lNInoBxl2O0hk6YWuo570UL0ati61xuLgc
         OpfWA8HcSNyBWAI47h7rt+7gxkf34HAMPVeSlsyia62YdkiHzQNAeNCkA7gRlYwXBQyK
         QcHQ==
X-Gm-Message-State: APjAAAUK/prToOJdM8ygeAuRy8Vcir0Gmj0aAs1ALKswQrprBgNypdfi
	YMOkETLqtesHOEJRBBK1k3o=
X-Google-Smtp-Source: APXvYqzRAB/gb026IZm793AmDjgMLsrRtOx4Lx4zzyBX6yUb3neAzuQNrI2eZdf9ViDGRhkLO/VRtw==
X-Received: by 2002:a65:5a02:: with SMTP id y2mr4197846pgs.104.1573062180892;
        Wed, 06 Nov 2019 09:43:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4342:: with SMTP id k2ls702155pgq.6.gmail; Wed, 06 Nov
 2019 09:43:00 -0800 (PST)
X-Received: by 2002:a63:6607:: with SMTP id a7mr4418970pgc.68.1573062180403;
        Wed, 06 Nov 2019 09:43:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573062180; cv=none;
        d=google.com; s=arc-20160816;
        b=u0Dn9/gH/Ddv5TfrUJVyuNJGlLMS/YiSw4nRRTQqTRhuIEPqBo+AWIzv7UGf5ruvaF
         Lp3qQ2vYcZcxiAxokk8IxMffABvo1p7tbgWXDQEjd6obxLfdUzF+t+2K5WdpLqVvWL9q
         5HxTrCSL7avQRUML5d8gPoNk69eE0P1qvHr0WyMF4P2I/NZPKpz2bB75XGI+SF5iYsDD
         JC7t6m5zgsLorwNqv96J51Tt+QVbzW+SW5CBdxSMkFlDZ5nwivokZzzVSzjT7Q/A99WD
         6JKb/6+qv8byIOTTUPSCRwApXNGV5x/ea/PexZqh8HwPV27OyKqf7SiNpsIIlkk4WJmR
         vh0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/UkIv3k7BKAfomm8lniRgJxC0ijapS1Y/VJiJEeJjjM=;
        b=jfL7rkTinYvH4DNjvIMgs1RMV3tyHFiwDyXUQQumQgh+QHou+evBEJvDyXlwPCmEKF
         ZrO6t34BbhyyiYLrRoutZlHk0ynvzYeeLSU4GdLe6NLEnvq0SWeaZ+dXQqo6vu2o2lkS
         q6FHBbXzEKlSD23O1xUwjhYg4h3vPSmzcbZNPTc1rwF6N4bLJ4QqE+GsP7YzZKytITEY
         993tZRqoVFzveOptn20QEJHklhv0kHRAydG47kSh6px4Bk6RGlip/sGP0zw3so7lXYc9
         cS65Vpx21UzjjHWUAProwfQykurteMM0Q9QWwwwuhjZior388/tmcJ8gwZcvs2c3KKJG
         qWuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fty5f8Kk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id ba9si26145plb.5.2019.11.06.09.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 09:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id o9so5092970plk.6
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 09:43:00 -0800 (PST)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr3831723plp.179.1573062179368;
 Wed, 06 Nov 2019 09:42:59 -0800 (PST)
MIME-Version: 1.0
References: <5dc29bd0.1c69fb81.31968.c1f6@mx.google.com>
In-Reply-To: <5dc29bd0.1c69fb81.31968.c1f6@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 Nov 2019 09:42:47 -0800
Message-ID: <CAKwvOdmLTVmn4nmM1pLc=zc1NZEH5T0xnZJai7m4zzZysU5aNA@mail.gmail.com>
Subject: Re: next/master build: 216 builds: 2 failed, 214 passed, 11 errors,
 682 warnings (next-20191106)
To: "kernelci.org bot" <bot@kernelci.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fty5f8Kk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

On Wed, Nov 6, 2019 at 2:09 AM kernelci.org bot <bot@kernelci.org> wrote:
>
> allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 48 warnings, 0 se=
ction mismatches
>
> Warnings:
>     drivers/android/binderfs.c:657:41: warning: suggest braces around ini=
tialization of subobject [-Wmissing-braces]

It seems that this is no longer a warning in clang-9.  That makes the
rest of these -Wmissing-braces suspect.  I'll have to dig in what
changed here; I'm particularly curious if the original warning was
wrong or clang has regressed.
https://github.com/ClangBuiltLinux/linux/issues/674

>     1 warning generated.
>     mm/shmem.c:2737:35: warning: variable 'shmem_falloc_waitq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/bus/fsl-mc/fsl-mc-bus.c:718:43: warning: suggest braces aroun=
d initialization of subobject [-Wmissing-braces]
>     drivers/bus/fsl-mc/fsl-mc-bus.c:719:37: warning: suggest braces aroun=
d initialization of subobject [-Wmissing-braces]
>     drivers/bus/fsl-mc/fsl-mc-bus.c:720:37: warning: suggest braces aroun=
d initialization of subobject [-Wmissing-braces]
>     3 warnings generated.
>     fs/proc/base.c:1894:35: warning: variable 'wq' is uninitialized when =
used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is uninitialized=
 when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/namei.c:1644:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     fs/namei.c:3132:34: warning: variable 'wq' is uninitialized when used=
 within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     lib/vsprintf.c:766:14: warning: unused variable 'str' [-Wunused-varia=
ble]

https://github.com/ClangBuiltLinux/linux/issues/767

>     1 warning generated.
>     fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized wh=
en used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is uniniti=
alized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/cifs/readdir.c:83:34: warning: variable 'wq' is uninitialized when=
 used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is uninitializ=
ed when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is uni=
nitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized whe=
n used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake' is=
 uninitialized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     fs/nfs/dir.c:448:34: warning: variable 'wq' is uninitialized when use=
d within its own initialization [-Wuninitialized]
>     fs/nfs/dir.c:1499:34: warning: variable 'wq' is uninitialized when us=
ed within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/net/usb/lan78xx.c:2665:34: warning: variable 'unlink_wakeup' =
is uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is uninitia=
lized when used within its own initialization [-Wuninitialized]
>     2 warnings generated.
>     drivers/scsi/lpfc/lpfc_sli.c:11878:34: warning: variable 'done_q' is =
uninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/scsi/lpfc/lpfc_scsi.c:4726:34: warning: variable 'waitq' is u=
ninitialized when used within its own initialization [-Wuninitialized]
>     1 warning generated.
>     drivers/gpu/drm/amd/amdgpu/../powerplay/renoir_ppt.c:183:26: warning:=
 suggest braces around initialization of subobject [-Wmissing-braces]
>     1 warning generated.
>
> Section mismatches:
>     WARNING: drivers/gpio/gpio-xgs-iproc.o(.data+0x50): Section mismatch =
in reference from the variable bcm_iproc_gpio_driver to the variable .init.=
rodata:bcm_iproc_gpio_of_match

https://github.com/ClangBuiltLinux/linux/issues/768

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmLTVmn4nmM1pLc%3Dzc1NZEH5T0xnZJai7m4zzZysU5aNA%40m=
ail.gmail.com.
