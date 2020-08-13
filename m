Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJXV2X4QKGQELWD3B5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C663243E6B
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 19:38:48 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id bg5sf4401133plb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 10:38:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597340326; cv=pass;
        d=google.com; s=arc-20160816;
        b=oKIZCzBAgTuNk1CxyC1N7a5uwvMWhz/vOqgCqnVgYpKeiOzWO3OkXxe2B2urPkW2XW
         UBvvdeG3Wp1/EyfAiCW741eGzPDd30DJT1534WodSs9A68QqB9xHTkOYk87OH+pvcs61
         T+iGbYda+CsOGUVimw/YXg6tkLjSSAUZHvN/qBPaNHzKgnbjEuXz5DYDQVoXMug4knGO
         kOOMYwQlaZ2FQbVxpStR/5TZf7/yAxxnUqvKfUx9DXF6qfmWHrxgz7bKUdNfQOjGeSQR
         qN3Q6IUIIJTx4G/ZQmSv10CEUXkTcNUPQ8noFwrxTyxPJ11yZb39n5LlkVMH8NfppijJ
         YJdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m7frClKnGsWrOwlznupRsuxatC8znAao6iERQBvzcO0=;
        b=vsD0pB7gyUjC5g8hWohELZa5XeMF5pZIGQdLX+R/mmlhf7/IMWJtuXEAM3qiZ2qUGC
         HfJ5Z6ddwFXoGUXPmXA7tMJkige1SgEhdp+VJ69TY6SZbY4QuLQ+ACWOik5x6xAw1onM
         Jxy3RyF+eCftNCB5VnjBedStvRUf7pAUu5ltUdlzPXHUJfDISbALKdilmS6GSpDXfe+h
         vDhn8y4VhcGrlYe2LVHKXdNtC1Zw1C/g2uDtX07InYhCAx1s1NVaEBXj7/tdAc8kG8lA
         uzI5KQrnehhR+P/Vqh8ErDfiqzDov8yXNHOJzIyZGZDP8vz6LgcwZt0v78H41RidyL3L
         zpcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Recxz7+j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7frClKnGsWrOwlznupRsuxatC8znAao6iERQBvzcO0=;
        b=aey4Lj453R+EMTC2/MjOeL8IDqgOeqRGgBoPVYlqbtUIC7eFW3amErfg1iyjiIAZCE
         xWVqwtyrwwaTUPPDhjnO4ymNu4EUxSIRumoNNkYbJcYta0bXVHTbIQhwiyiiF7REfzfl
         QHekSuLtP2LPY6nQJ0NXnqFrVuflVxrr+6nR/H4YJ71/D6O/W2XeTnrJVygHqjkoHvpy
         VW+ZebQeRghzymMPDdzNFBAgkjtDcO+mQPhjmrGdegLwQwFbQAd4aq6V/k6ZTmQvnm/Z
         gv7SZO4F+gQPZDXGJzdaa/6BJyd2V/A2Ojtt5oCFEVnmYdxdrsily8S8OeIiS2Hwj+J0
         RbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7frClKnGsWrOwlznupRsuxatC8znAao6iERQBvzcO0=;
        b=huLILQE9ODl9Oxj8BCafTlZuMTv822umajjpou5nUgXqt+SWfJh22/DrKWeHzDvCPr
         zEREsrPmJjueYO8wu0FjlqbIm8W45pluSn9ABEgDITDqT7ewzGxfPBUJDoMZ7oFOGrRy
         ElNc+W7MU4uzce2Y8nggK/2KHiVXVxOyS5zR6soJe/Cjdmxc7kJrWZWiFTxx+u3wh2if
         Pf72telryovxMx7cPyogXfvPhbWCK8o0sNVQmi7rNszrvUKheUVtfGQf+yDwShxjYuZo
         ZDBB8TMiuVht6TQkMql95scmIMZJHPTQMaR1wT1C8RvzwL/MDkzCRrx3q4bzHiV6a5KD
         43lA==
X-Gm-Message-State: AOAM532VhqnYT1FoDRaQeS4QuFntxlHOS7F2Qj1TIyAzYsL0+5eEPqmy
	EBkhtgUJV0I0DAnEhqJRZ/U=
X-Google-Smtp-Source: ABdhPJw5UNf77+9l911Rq+LXRM61CSweESxKuj2P3aN1N11vvFDgmJd7lOUe5vrCDAuldVHynFiX8w==
X-Received: by 2002:a17:902:c111:: with SMTP id 17mr4801975pli.265.1597340326357;
        Thu, 13 Aug 2020 10:38:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls2209164pfs.9.gmail; Thu, 13 Aug
 2020 10:38:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:44:: with SMTP id i4mr5658915pfk.276.1597340325891;
        Thu, 13 Aug 2020 10:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597340325; cv=none;
        d=google.com; s=arc-20160816;
        b=mBuoVPSEUxVLUS2KlqurdsVSwd7spWLhRmOgq0YVrUTsKnsnLVd0faBDXbtRY8EF3F
         +tSkqdJ/6mDg0K+xyziAOFK0iRWl2yaFEv+GZvVV7QCzFEnvpIVRa5NyzW9mXDDkacNU
         JsRNJbYBdW7txX0dkoduksmq3xUc63E8bwZIX6lkO9MPVSP6uIp8JjTmeF1E8WbFiqbH
         5j7q6Nb8EOl7AsmtlmeJDUnez+xMDJ8AXzHz0O179G9z+itCM5B5jDkhOM2pHLbWZk3A
         LNmjD8hu9GY2XSHYqZSJA6cK3EvwRHJJvNZBzUJlOKOgQ7zL9EblkZC0/mLzX0jk+m/W
         T7gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f4xhipOnsXQL7qfZbVN0pp54kjf2Q32OAzaHf8Ov8ZU=;
        b=uMMWGARlvreswhugyJ3f6MGl0jS7FjDu1WMuf/wul1f0QmM9GO5JNzasQ0yl51vy3P
         mRGKQlGV+sahp2z+0fTQLtD12yqRxaASeDto30a9W3MDO/YwCDYs9GW43d5Lg6OuPSmP
         GNmTXYoXQLGW/LW1wEk5w2z70IaPY887CYieyljVvtuHfou1ybQVr5VqALAYKJM44EQo
         0XEUR4qYmcGyGVer8fn8vggKHMD2oQjzc9VSwBiP6xFuuZFxqhRYftDpQW1phzfGKE8t
         /lgfgQcX7d83XvYbEUSjghEluCoTpV8xj6l71qaGIbfq2NPgWSRiIDHAgC1q33eM+eW2
         Rs/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Recxz7+j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h41si737554pje.0.2020.08.13.10.38.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 10:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id g33so3165796pgb.4
        for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 10:38:45 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr4663756pgf.10.1597340325237;
 Thu, 13 Aug 2020 10:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
In-Reply-To: <OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 13 Aug 2020 10:38:34 -0700
Message-ID: <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
Subject: Re: buildroot on s390x
To: Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>, Ilya Leoshkevich <iii@linux.ibm.com>, 
	Stefan Schulze Frielinghaus <Stefan.Schulze.Frielinghaus@ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Recxz7+j;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Aug 13, 2020 at 6:20 AM Ulrich Weigand
<Ulrich.Weigand@de.ibm.com> wrote:
>
> Hi Nick,
>
> we were talking about buildroot yesterday -- I just learned from a member of our compiler team (Stefan, on CC) that current buildroot *does* work on s390x, as long as you configure it to use glibc instead of uclibc.
>
> BR2_TOOLCHAIN_USES_GLIBC=y
> BR2_TOOLCHAIN_BUILDROOT_GLIBC=y
> BR2_TOOLCHAIN_BUILDROOT_LIBC="glibc"
>
> Or simply select glibc via "make menuconfig" under
> Toolchain -> C library
>
> With this, a buildroot build completes successfully.

Thanks for the tip, indeed, that works for me!  I've wired up support
into our virtualized testing with such an image.
https://github.com/ClangBuiltLinux/boot-utils/pull/24/commits/98f1805e2d91b4e87e98b91d5830ef1866dacabe

I do hit an exception almost immediately (in the link).  Vasily, I'm
not sure how best to start debugging this?  The kernel was built via:

$ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71 defconfig
$ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71

just a build of mainline against ToT LLVM.  QEMU command line used was:

$ qemu-system-s390x -M s390-ccw-virtio -display none -initrd
/android1/boot-utils/images/s390/rootfs.cpio -kernel
/android0/kernel-all/arch/s390/boot/bzImage -m 512m -nodefaults
-serial mon:stdio

I can send the rootfs, but I suspect we'd trigger the exception before
even getting to the point where we'd try to mount it.

From our scripts, it's pretty easy for us to attach gdb:
$ /boot-utils/boot-qemu.sh -a s390 -k . -g
(gdb)

Though from the dump of the GPRs, I'm not sure which value to
interpret as an address of a program counter/instruction pointer
equivalent.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmmUFVRG53w68B2YaS22MMO1k%2B2yyaxO7QGqJnqEDKxug%40mail.gmail.com.
