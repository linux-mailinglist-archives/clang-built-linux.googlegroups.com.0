Return-Path: <clang-built-linux+bncBAABBVOV5P7QKGQEM2KQSLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 358D02F06B9
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:53:58 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id r11sf6356842wrs.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:53:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279638; cv=pass;
        d=google.com; s=arc-20160816;
        b=joWZ/7mSkrsXOCb2X/SPqwDew+lhbehweeDI7VwasYMa9yOpNTSnJII076FY5bRTuf
         27MCDRoSnSjVWwJBZyvosloQLOw4gsEY85K3mneL8M7RLQNh0ZyHUduOeFAIj0T+3sWr
         /spVwHs4CCWkbjp5iaSAjsuyeT/i6PPm98VfdbBSXZcDdC5PIaXqCzpLouDcQsXkMtq6
         TWsY/AruFdqdUU5q5KLi46Mef1vMtCqKZlBkSphMIqEPJrWxu9Tcp52niBoxb3P8Yro9
         uSRm0uJMc/Vdi3V7ZQ0BMWhBH124fBQqDCkpwMW9WMy+W/oNfr61nvy0lz2JcaQop0Bw
         OIYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :reply-to:cc:from:to:date:dkim-signature;
        bh=etZSIYeezMJ6ZyAXbVm/U1AnqF4MAe+loeGB+AOPNq0=;
        b=ViLJfnMeq3iAle6mpMdcXF2oqLoD2JLLMOtPtew1Y/X80XjkABEFyLp0XQPnwg8PrR
         HylQnEIQ//poUsZLUCAkOc9riBEwfSrEJs1qb5oXuZ0V5VU4mlksCKrkYqtIMoJM7f1h
         Y4zOUDUYNWP3Xsn1RjqRAQQQwDlUQr+ZcahK27nX+ojiw4xpJqWeZZXkaJw3xfipmc5p
         XtWbMSl1962PL4wenIwJRNjFFlUWB71CyWSMOQqitGgHykA9Ro5FkqR27QHXsNwF1bL6
         mRBGww9GBePy9zaPx6ogzVJMbC4Q+jlxHFB/50fjFoP69ZBUQbBRr5lDTbVh+uOzvE/I
         KrRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=FBoH46m0;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=etZSIYeezMJ6ZyAXbVm/U1AnqF4MAe+loeGB+AOPNq0=;
        b=l+yUsJXFGJ3HrK6z0xE7qeJ6sjJY/7omc72yRXCkMC9HFyoSAJekD6J7KslxHYLNtP
         cCAQP1QfJh8l1af0Si3gnrpvCkeekHTGhMhabast3PdPkpI2mmHwn3rP9NaXoX19BVmm
         Xx9uvOkBMQgJtL98aU2S5mJUQwtmWoaGNKtCa52LKeQAT8nBW1/4cn+UwNOILG9O3Iby
         cD+s03+NfVGS63Ko4XhFYExon+omezEBJYgD+8Ndu4lfLxPpIArOjEMt3h8yRe76cY5g
         MFkmJ0423fLspyHdBN5TH4sz26IDjQqxRCrvgfVl6Vnu+aAwEwX+tjQ38RdhLteXr40e
         bDDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=etZSIYeezMJ6ZyAXbVm/U1AnqF4MAe+loeGB+AOPNq0=;
        b=TjpMy/VG7nV+5qDGnMxntQXRNEb3OQqUIylIeFKyF3RzzKBjVhw901oXAnCcao4uSn
         +4Y8pn84df54yKp6BE1i0aQRt/CmyiG8XY7iLXNCg2cacEUfZ6XfNzJx0utd2Ep+aUrf
         5vAopXYDYLCo6fQtqKHIV/ie6YNwMNUSBInnBsKc2A0I2PMCSAJuceFAn15vEUh3KGNS
         odxjYVER2Zgt82Jv8WjRb9qhOskF4M2/3/vicYo//5P7Xn/TDX4CcdGczhDz25ggx1If
         z0mwVI4GRKVHOJ4lIBsOQ/P8mTRxC+bRlV/y2viXju0DaNPIiPZe3AKarY9XXwqPeIT2
         WftQ==
X-Gm-Message-State: AOAM533M+H9PfmISTtkTRdRWNyVtKMUBEJuPpPBaKCXQTYR45iCKJGQT
	pkOq2v6ZjFjI7JmTBx3OVmE=
X-Google-Smtp-Source: ABdhPJyj4CcYf6vQgUoNOlxMwgUC0ooVzMydu08JBsQLzcN1IIjTYh4zkOB+vdo/uiNxl21Wbji8QQ==
X-Received: by 2002:a1c:e445:: with SMTP id b66mr10830854wmh.187.1610279637928;
        Sun, 10 Jan 2021 03:53:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbd5:: with SMTP id n21ls6880670wmi.3.gmail; Sun, 10 Jan
 2021 03:53:57 -0800 (PST)
X-Received: by 2002:a1c:7dd8:: with SMTP id y207mr10730850wmc.181.1610279637320;
        Sun, 10 Jan 2021 03:53:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279637; cv=none;
        d=google.com; s=arc-20160816;
        b=wiNyuuTPVDOZCVJu+cYCcyysDVhIFYsUYCpM5rsQO6VhIcAFSVoFYxlY4Tfz+B1JjI
         1GAh7YibgjM0m/QSkk4dnwkUqX4o9tO+jG6EWI7y4TWvYOjHeCYrVNKtRfZRYO0nOR8e
         /avaLg1zOVuRdBLEReYvwcvlt3mRF7ZIn5v2rLexDlWTayHE8BeYPqH3n3mpDbTkJMvj
         CZS0qP0Evt2VPh7m9ZXyv0DNSZ9Cp9EecnVHFFHBrVI/+art+/LFngLzVs7rbdxs+kEE
         QTvaQKF3vz5JHp3eR8T6tw6R7tWhN8yE7jr/n8k5elpSrB7eG1HIQbRnpvwxzMnlS2ad
         Wpuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:reply-to
         :cc:from:to:dkim-signature:date;
        bh=e+CceW4cTSMaSiEXVZcdatIqUeP8AJi4B5rdzKiTWXc=;
        b=h+uuk2ua8DarVkHXrDuhYwchCUMQA5hpmBTJ4ZhNSbOGYzKhBHfRq6y2I18UJr3uHj
         p0VT5OFvdlpujxvS0G/WAhIYqyJuW7Y5QbBKw5iXAamC1mSR/UFt42aC06CJ/yshFjck
         PkJr/TTF43OVjh16JP0HQk0fPbmQmQp2Z1qq84GPju2ewNU4RlYWS3k0/G4hPEemuON6
         RPdv31USbsqJaR4tXSe5Wcc6guU66wLH5m1cd3UWhHkMAGnuh5uP6xnea/2F5tqoD50b
         Ro0I2dtlXGbmQ+L7B1y/gm1KqeXmTOXy0X96PTKrUlHYxcOlBj6mkFKSsYiijSlT+msh
         +5Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=FBoH46m0;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch. [185.70.40.131])
        by gmr-mx.google.com with ESMTPS id q142si530258wme.2.2021.01.10.03.53.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:53:57 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Date: Sun, 10 Jan 2021 11:53:50 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 0/9] MIPS: vmlinux.lds.S sections fixes & cleanup
Message-ID: <20210110115245.30762-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=FBoH46m0;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

This series hunts the problems discovered after manual enabling of
ARCH_WANT_LD_ORPHAN_WARN. Notably:
 - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
   placement (marked for stable);
 - stops blind catching of orphan text sections with .text.*
   directive;
 - properly stops .eh_frame section generation.

Compile and runtime tested on MIPS32R2 CPS board with no issues
using two different toolkits:
 - Binutils 2.35.1, GCC 10.2.1 (with Alpine patches);
 - LLVM stack: 11.0.0 and from latest Git snapshot.

Since v4 [3]:
 - new: drop redundant .text.cps-vec creation and blind inclusion
   of orphan text sections via .text.* directive in vmlinux.lds.S;
 - don't assert SIZEOF(.rel.dyn) as it's reported that it may be not
   empty on certain machines and compilers (Thomas);
 - align GOT table like it's done for ARM64;
 - new: catch UBSAN's "unnamed data" sections in generic definitions
   when building with LD_DEAD_CODE_DATA_ELIMINATION;
 - collect Reviewed-bys (Kees, Nathan).

Since v3 [2]:
 - fix the third patch as GNU stack emits .rel.dyn into VDSO for
   some reason if .cfi_sections is specified.

Since v2 [1]:
 - stop discarding .eh_frame and just prevent it from generating
   (Kees);
 - drop redundant sections assertions (Fangrui);
 - place GOT table in .text instead of asserting as it's not empty
   when building with LLVM (Nathan);
 - catch compound literals in generic definitions when building with
   LD_DEAD_CODE_DATA_ELIMINATION (Kees);
 - collect two Reviewed-bys (Kees).

Since v1 [0]:
 - catch .got entries too as LLD may produce it (Nathan);
 - check for unwanted sections to be zero-sized instead of
   discarding (Fangrui).

[0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
[1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me
[2] https://lore.kernel.org/linux-mips/20210107115120.281008-1-alobakin@pm.me
[3] https://lore.kernel.org/linux-mips/20210107123331.354075-1-alobakin@pm.me

Alexander Lobakin (9):
  MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
  MIPS: CPS: don't create redundant .text.cps-vec section
  MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
  MIPS: properly stop .eh_frame generation
  MIPS: vmlinux.lds.S: explicitly catch .rel.dyn symbols
  MIPS: vmlinux.lds.S: explicitly declare .got table
  vmlinux.lds.h: catch compound literals into data and BSS
  vmlinux.lds.h: catch UBSAN's "unnamed data" into data
  MIPS: select ARCH_WANT_LD_ORPHAN_WARN

 arch/mips/Kconfig                 |  1 +
 arch/mips/include/asm/asm.h       | 18 ++++++++++++++++++
 arch/mips/kernel/cps-vec.S        |  1 -
 arch/mips/kernel/vmlinux.lds.S    | 11 +++++++++--
 include/asm-generic/vmlinux.lds.h |  6 +++---
 5 files changed, 31 insertions(+), 6 deletions(-)

-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115245.30762-1-alobakin%40pm.me.
