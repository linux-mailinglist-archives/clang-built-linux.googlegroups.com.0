Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4VW4H4QKGQEKFHQMGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id E724624537D
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 00:02:27 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id j13sf8374383qvi.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 15:02:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597528946; cv=pass;
        d=google.com; s=arc-20160816;
        b=ApZ7j6OPlPYxQTAvGg0oil5sepxOil4uxmZX1D0BpsjDygSr+smwzXhVPJDwSMggru
         T4Udd1Q6laQ5nf7p8NHdUg/ewzfu6s22tAB4z1fWf5hDv6jlN1XHH1jaLogIyhcN3WJA
         K0ebtidbj0La3wl5/SPJi1JhUqiy7E7JKTsqBNeLt2Nr/VHqLKTaP5JoSLl2lFxQpDl7
         5RLQBvccRKpaR679YOEeHF3BwiJCIMtVffBjaTYtBYVbMUgKRcO24tqzlQbSvlycdddo
         yTVvQNk0D/hpFeuUKiHlqyW/l8EMpMkAbJppW8X0mVHRf12Bm416KRHnJdmWzJNL80yh
         +2xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=n5xXMiWbQ9tSoOraAyudii4mifS+5tdUvvtyCqgf+1Q=;
        b=AWWsjokRzL0v2srDB/erMcpnlkS3p4HWBas7R3+PVOwxukl8wUL6DIMIweQNkDWaKQ
         ZqMlKZ9IyPsKmLnQs/Q9HmG0fnp3hNTjr06SFChFMmTQRa40exhhqbQ9irMCgJtrFhg6
         Su28H72NyGhM3sH8KMAT1Vz0IJdV8rK9xhyi8I9LiVbzCwC6LsD7nA56P6I58RzP76sM
         zvBz/Qn2ALcCtUJxQPfKgV7pB1/1zjT1lff/Pzlx3qbCQLflYnPWpRqeMafKgfQmgfXU
         ZB3SeC60qKpU+AoKfSCVZ10RcX3gbHOpY/aIvx1atyGdGO6EuOvdV8VGRI7AN1yf6EJZ
         5aWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BI/xVamU";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n5xXMiWbQ9tSoOraAyudii4mifS+5tdUvvtyCqgf+1Q=;
        b=s4YzzLh+Sehof6srqiyIscYTug5dp8gZQH+Df81GnEJAnOQPqqTmmZTkIgvX//I323
         dAcitmlXNIYVQE2AVe3MVDwbLYsRzb7u7WPYPIfBm3+Kxl0Q1xln4MYdAgsDXr9yGaYO
         0K7MbPEXJoS5ALf9FOz+tYCZpJ1ZabLOQoKl5WjCYFrmJLEYUWgWQG5IGNFth4TwXu66
         T0KHTTvGLVkCRdEyeBKvefVm7u3P2LjsrA31Zz3+qIMzOmfSXt2mR5HT2FWjJibwdL5z
         r4dog0952Om14dCqyPu3erzPe/QvIQI2bN2VkOn1DTSr89Fxf5dhZTgGSDrYGlk5EivI
         3mww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n5xXMiWbQ9tSoOraAyudii4mifS+5tdUvvtyCqgf+1Q=;
        b=shFq4cT2sWTJo1M5/WgxOhmjgu/B+trLSj0D6eFSGLmC6kpcjpbFZ5q+SSC1qoUqSu
         fWfunetfZYwEdU81xya5kqfeK+zwcJ8W0d11CM5ekF4ACCg8yZON7z/uSzdqasEjNkz0
         MuZTTcO3EWhVa9BQZl5U5X4FFAqup+yzVg/Os5y0dXYk0EiFndS5G1gKWxm5K2P/jXzm
         2jhzbfBoXINH+AM1hzIhHNbBE46HMjVDeIS90iE5RjAT3MG6do2GULmq3P3lp5F2ph+i
         de76W46Rsr+od6sF8wexZCEGCzcNBCEilLQVU6pe2OmmeC/IXuMz5DtACGIGaebP5tRI
         fUWQ==
X-Gm-Message-State: AOAM5323PTC1KSNtbB59hc06Y6n7kc3NabrrXfPdXRIOvftpEY8SXRs/
	jWBG01qsC/+C0MT0Q+jVp8U=
X-Google-Smtp-Source: ABdhPJxMzaZ1kr7Xnbwbcm43O74Yig1XWEjsGSh72C95hDHLVi2h7wCdwwjAsmPHk3wTjSz4ANXQWg==
X-Received: by 2002:a37:aacb:: with SMTP id t194mr7546687qke.317.1597528946256;
        Sat, 15 Aug 2020 15:02:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b087:: with SMTP id z129ls5868890qke.0.gmail; Sat, 15
 Aug 2020 15:02:26 -0700 (PDT)
X-Received: by 2002:a05:620a:16c4:: with SMTP id a4mr7489448qkn.333.1597528945932;
        Sat, 15 Aug 2020 15:02:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597528945; cv=none;
        d=google.com; s=arc-20160816;
        b=HBUq+CB9p/mvxm6CDfXft1KW/MWnoP1IhgzMfO6zklbpinI7dedCBU/dD/UK3WAmn+
         GBrmisK6g+SBBkPEyfwAyPofKiteHeI9wx9CkI8eWo7TbYraoRP1k5NDcX1ug8Waw2uc
         09hYqQi2kWc0WQV0lk/hRQn8H7MPWl2orSw0t4iuGPOdOA8VU6cpqozZ44EZWsU5EJfU
         5XebyTXr8Yscogy0f3HE/wwrc2dyBX1w9EKAM51vIUwqWaH+hHNBkxuSmjLoxwkS6ai2
         umlsWtZ5jkL6IC2FmIPYkcSMbvCAxteNSCR77QBOtIVkRDJ+9Qs7PHw69cnfZ2FOmB+e
         DA2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KLEbK4JSt+c9uAadb/xo7Fadf6oEEKWWrVyC1ob0110=;
        b=OnQkzIMmKuxmvLYtjfc+L2WC4KF1uKPXFZ1Yms3fs8DlSQw/yG68qgg5Mcdoh3v9Kw
         iMpL7cW2kayiXvFYlOcFeRssMFy7FW365atDgMflPTT4I+IXh9jyrg68GhUwd89bbmEB
         2Q+8Qe71WAyTV/aWjLrfdlT1EicgjIbqXIDzFD+ObETvkLcsk9s28pXgsLKL/JCAFBgA
         jwpQWGOvlMHdMGWaXNTnSDEHkS/Z0/WklD7C3o0EcKY8Fx0wQK//dApd41NArCPrfQcG
         zpZIlWyEmCi8Xi6KlqTL0fPhm+9W5uljm5UDolN2amGvCBbJVCWpA+UFz/zwHBOa4elv
         b4Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="BI/xVamU";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id f38si721058qte.4.2020.08.15.15.02.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 15:02:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t10so5679558plz.10
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 15:02:25 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr6182084ply.223.1597528944836;
 Sat, 15 Aug 2020 15:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
 <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
In-Reply-To: <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 15 Aug 2020 15:02:13 -0700
Message-ID: <CAKwvOdn+kdrXp3qn0sbpYzBG+wO0RRhS6UsM3JUMK8My08-uFg@mail.gmail.com>
Subject: Re: buildroot on s390x
To: Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>, Ilya Leoshkevich <iii@linux.ibm.com>, 
	Stefan Schulze Frielinghaus <Stefan.Schulze.Frielinghaus@ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="BI/xVamU";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Thu, Aug 13, 2020 at 10:38 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Aug 13, 2020 at 6:20 AM Ulrich Weigand
> <Ulrich.Weigand@de.ibm.com> wrote:
> >
> > Hi Nick,
> >
> > we were talking about buildroot yesterday -- I just learned from a member of our compiler team (Stefan, on CC) that current buildroot *does* work on s390x, as long as you configure it to use glibc instead of uclibc.
> >
> > BR2_TOOLCHAIN_USES_GLIBC=y
> > BR2_TOOLCHAIN_BUILDROOT_GLIBC=y
> > BR2_TOOLCHAIN_BUILDROOT_LIBC="glibc"
> >
> > Or simply select glibc via "make menuconfig" under
> > Toolchain -> C library
> >
> > With this, a buildroot build completes successfully.
>
> Thanks for the tip, indeed, that works for me!  I've wired up support
> into our virtualized testing with such an image.
> https://github.com/ClangBuiltLinux/boot-utils/pull/24/commits/98f1805e2d91b4e87e98b91d5830ef1866dacabe

Ah, sorry, I may have spoken too soon.  I manually used BR2_s390=y in
our config; buildroot ignores that then proceeds to build an image
based on my host's triple, which is not what I want.  In buildroot, if
I run `make menuconfig`, then open the first menu for target
architecture, there is no s390/SystemZ in the list of supported target
architecture.

Can you or Stefan confirm that the resulting image you were able to
produce via buildroot was targeting s390/SystemZ and in fact,
bootable?

>
> I do hit an exception almost immediately (in the link).  Vasily, I'm
> not sure how best to start debugging this?  The kernel was built via:
>
> $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71 defconfig
> $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71
>
> just a build of mainline against ToT LLVM.  QEMU command line used was:
>
> $ qemu-system-s390x -M s390-ccw-virtio -display none -initrd
> /android1/boot-utils/images/s390/rootfs.cpio -kernel
> /android0/kernel-all/arch/s390/boot/bzImage -m 512m -nodefaults
> -serial mon:stdio
>
> I can send the rootfs, but I suspect we'd trigger the exception before
> even getting to the point where we'd try to mount it.
>
> From our scripts, it's pretty easy for us to attach gdb:
> $ /boot-utils/boot-qemu.sh -a s390 -k . -g
> (gdb)
>
> Though from the dump of the GPRs, I'm not sure which value to
> interpret as an address of a program counter/instruction pointer
> equivalent.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%2BkdrXp3qn0sbpYzBG%2BwO0RRhS6UsM3JUMK8My08-uFg%40mail.gmail.com.
