Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHGRVD6AKGQEJXKJX2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F21290E01
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 01:11:25 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id l1sf2455035qvr.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 16:11:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602889884; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6TXhTV4bzGHZUcGPslaaPPSBa9bCVexon0mg5b2dX93UnbGz5xxRbXkaYVQp2c9g3
         SCmuJ1NLZHhmlpXcJaWwd/51q+sglnWbd/eWSCIFMVhPf6HNMEut3g5vbrNbq+P15aDJ
         gbXG3ksB8uWd96H6bGrsJL8LhT+Vds9SW2pLFYcohJSrL7wadq8nqsa2Cl6uei/ZjSzf
         4Hozwj2hDGOLOsN5G5yxggVujIQMQ0l3A+ztzyp1uxo8mfPLtnGFobk7wbGCqGI/TS7Q
         T0ciEuUUMmLNvbBHIsXK8KwINizWYI205xy7pK8tJHIveBLvHzvQ712eIHqx0BJCgYZZ
         2M/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=+Z0D1qdvJNM67ztzl6MTQtG0UCzGGJCMouYK6YW/C24=;
        b=r7+JtcPf8L3zQ/Y3C71P/aIlDkRBZqe8ZMfNUT8yMA3PVrAVHhnHbbBZxnt6L/GaE8
         Cyl35+23JJFPfqMbw5cbWJhhToW6B0p3AfBUXFBmQm2W6q3jRqhrQ/CauOAPpMw/jPya
         YPiUNcsIuPQOZBY4Cix9XmUv97G6hlD6RIxBwPUO4X0eYaBoEVwEasbXo9RadMvcUIIq
         qaagVgRbk32StphZafzEng1jU4ZUtrsFaN6BMLB83+de3idiYO1KV/hb7ph5VBICDZwY
         32MPlQPsq/eZT/vzrk3GtrFFYdFb+5Ep2pw3kGw5toA9uqsapL+RMV4MpWp1c/kX/cn5
         N5Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X6eLM+Ji;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+Z0D1qdvJNM67ztzl6MTQtG0UCzGGJCMouYK6YW/C24=;
        b=JddiKug2gY60q+09xUN2bhsaVxoEkl0rVwimpkRYYqjXIVOp0iMdCU9GcqGBZ6HSfg
         9qnde9jaTLW9cnW6Pl0TgVFpm+mHOz7QiIuNBACTZXn0+3IuzKp/0CwwknhsN5GGCIzW
         hVKf7WnQKRCh7y09PjxnA8XXxNh8HCO1F7RHueAMNl0acu480vMfE9f/NNZx/TzLywzC
         WmjMuDa8IfryFsIXioDc7KdRdEkih522cus6vIWQd0j+gogDVBaOcleI4SHgGZ87IK6G
         q87T3mKEGuQmY1ovHphZBdXBPcoqNl2PKpdXC74q00GT/IV13fGP3GtsX60lsKhs6gnD
         cfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Z0D1qdvJNM67ztzl6MTQtG0UCzGGJCMouYK6YW/C24=;
        b=W6FP83xZq3c+zd2gW6/4Q5BZCL3BNm+CKFUgQgj+cYjuS3U7EZFdpk8wuEzkcbxr/0
         P4alAWfcC1tIkK64NnDLMncB7XK4q/wBaaFEQFhF5kgYQhXARtraFKVennH1g+3CTktx
         0SWhH7tcQrevgsILzRK2WJW/PBV3PYE+BVfq7P1fC+lYreRIlXrDc5lFt4oPnbjM+61J
         R9YizsTpDlwaUnz2raYCKkYFjnykfEHIEh1NAVY2lKt5RUzBagTtYb7rlQt9bgf2o0QT
         2ch10TPf5L863BH5HaGJz3DAYD5vAxRBE5V8EVK4zGdVUsEjS1nhDPcR9dmA4tpyChDF
         k0Kw==
X-Gm-Message-State: AOAM532KfD1uoGF17/fFrUyBsAx5qFsrDCxEM1tvFjm2ol9TBF7TajWE
	YRI8jQkwjjJkl3oYsN0ItHc=
X-Google-Smtp-Source: ABdhPJxUZtvGJDxQewBwVPnKj3ROHmCuN8+nKxCMByn3R8nX28Mobx0Sm54H+AywHLU7RI/S4xIXEw==
X-Received: by 2002:a0c:8d82:: with SMTP id t2mr6420663qvb.62.1602889884082;
        Fri, 16 Oct 2020 16:11:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:10b2:: with SMTP id h18ls1967051qkk.0.gmail; Fri,
 16 Oct 2020 16:11:23 -0700 (PDT)
X-Received: by 2002:a37:a8a:: with SMTP id 132mr6315026qkk.199.1602889883522;
        Fri, 16 Oct 2020 16:11:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602889883; cv=none;
        d=google.com; s=arc-20160816;
        b=tXSmgtZeSRFnZf2bfbE4V6nrlkD3W4b2ThPANfN03fUgo2pZfRYcBskWIw1AFiZ/cz
         beSDrrTkeneO3bezuVFr7Lojx4+ssxSon3sSDrSgfboCtEe8ofCvgGDr8dr2PVYAUNAp
         eRbe046WJ7bj7MVz2hLmilu6r7GV7vDn4Ym2hI1GphaPEGQPIkhKI9L3sZmWOn3jWPck
         12IPS4WL1tHHmb0q8WquXuzyX/5vCdsXBGf5lCu1NuuKwGStFwX++gDEtXyFogoPEvA8
         By1oD2UShr3DmyTIQZd5j3cr6p4YaqAtd4DAcmm6qEA8I/d7EM62KEIfKrKz0X3qVgs7
         nb8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=RKmt+X8l9/t46wfk4/eTERQxia555aetWU6XwehycyQ=;
        b=Xxe/aNb7W/A4vzlzg6UzNv3EouirNDbaBLglwf0SRQIbMjxHnoGa1pRXkln+Qabt8l
         m7YSFGMlyH2NEa78e+TVxJ2fR71vpa7M9madYJGXDl0GKQNWR1Si34cOQpe6pP/iWb8k
         kFpl2j3uSyEyi7efxTVAs56MXRFSgwvyBG+wp2OniWWH1ywksdnaWGy0ej8tKpKES5Xk
         kGwZ+EZYXMklEtOo+rB1ylk+R4s7pqzBmr3UW3sm2dtakU7yZHRolqwzGKnl/vNuQ+UY
         u4ke+zoUz8yvBSfVdRyZaGuomxYv2B4zy+UeWW/AFbIobON1frrJE/KhcPRUDkLm1v75
         mjjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X6eLM+Ji;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id f6si195288qko.6.2020.10.16.16.11.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 16:11:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id g29so2304885pgl.2
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 16:11:23 -0700 (PDT)
X-Received: by 2002:a63:f74a:: with SMTP id f10mr5217818pgk.263.1602889882394;
 Fri, 16 Oct 2020 16:11:22 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 16 Oct 2020 16:11:11 -0700
Message-ID: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
Subject: s390 - buildroot + qemu
To: egorenar@linux.ibm.com, Vasily Gorbik <gor@linux.ibm.com>
Cc: Joel Stanley <joel@jms.id.au>, Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Guenter Roeck <linux@roeck-us.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X6eLM+Ji;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

Hello all,
I'm working on integrating the latest release of buildroot (2020.08.1)
into our CI for ClangBuiltLinux.

https://github.com/ClangBuiltLinux/boot-utils/pull/25
https://github.com/ClangBuiltLinux/boot-utils/pull/26
https://github.com/ClangBuiltLinux/continuous-integration/pull/327

I'm seeing the following error from QEMU:
KASLR disabled: CPU has no PRNG
Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
ilc:2
PSW : 0000200180000000 000000000001779e
      R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
      0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
      00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
      0000000000000009 0000000000000002 0000000000000008 000000000000bce0

This is via a kernel built by:
$ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71 defconfig
$ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71

The booting qemu:
$ qemu-system-s390x -M s390-ccw-virtio -append 'rdinit=/bin/sh '
-display none -initrd /android1/boot-utils/images/s390/rootfs.cpio
-kernel /android0/kernel-all/arch/s390/boot/bzImage -m 512m
-nodefaults -serial mon:stdio

Is there a preferred kernel config or additional flags to QEMU I
should be using to avoid this error?  It's also possible that there's
a bug in the kernel image, but given that it fails very early with no
other output, I am slightly suspicious of that.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw%40mail.gmail.com.
