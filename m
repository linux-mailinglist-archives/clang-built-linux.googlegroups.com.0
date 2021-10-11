Return-Path: <clang-built-linux+bncBCT6537ZTEKRBEVOR6FQMGQE222JFNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 866334286B3
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 08:17:55 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id 41-20020adf802c000000b00161123698e0sf528495wrk.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Oct 2021 23:17:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633933075; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bf6C6+bVHR/zr0fZVMiL4tTwnz1Q/IUwGJikc/dfPZ4xK1HnBvIBRRnPV7TErfB9fg
         2ovorwTpgEhyOVgyc0b9NBrSqedTHs31+NrVNx4xBtPGCPDrJlvOQ0wCMButVx6v/CVg
         g+oZC/2lkiPny3Ry/3S7rl191hfYNW5QXaKnwMCQ3RJTsO1lB/is7k+OvIDQr4aLjS6N
         F2GU2LTiYDr6EbrY+Mo6gIvh2LfobSMorJd+d8mP6cgbbfSiK4J9YPO/39SJF64ptR3t
         OCPULS5YK5p3qHCei99+9W003AMF0aNxpA8bBTlNmafUJGNrDyTtFNUPrfsxzjv/ZTEe
         5XFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=M5yBijTC/NoZv/dwfnGMA/PuaNzGiS+QgasoxpUpNJ0=;
        b=lXCr4rm0mtTpYj5A7Waajxk7Z6D5sMkwov+upfFP5AbKkSPKFkt59lDPsH3xPX0139
         j/HmNDLTr443hE30/FEtCKhcVc4kMbyblYqrJsGrPEUsGsOQKjL1nEY8WgZ1l6HPI3K+
         OP01RGItmbyQS0nB+OeppDbk0xBBKTzqrwMyJumrz+F4I8oPsKHPVbRM7NjNCidWel7h
         h9vPgzVigaRpw73TzBEP/5qJcihwa6icbLWKqYRp85rAYBEG5jh/XA9btdNqg9J25o/i
         aXR0kighHhySzwI725JeKocJseSo08t/Q39AiGq7R5Ioif1eYjfhH6vuWJ4A87S25FCA
         DQYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Wn1NP/SC";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M5yBijTC/NoZv/dwfnGMA/PuaNzGiS+QgasoxpUpNJ0=;
        b=cts5lMcxO99ToroGxkOP8GlVxXMUqCIY6jC6mDC+4X1dcwUsr1bCMLTn1kbw+fSM6W
         ao3XUneBYx50hI6HQaOk1VxlgRpSOfQL6Vdpobgga4qqfYaRR+wYC37vTqTn7fU9ywVi
         OkhJXl/xPK12VYyxCdrjzRVUbQ0rNTZ3k+DvALC5FblMvPxjTiBFZUMkRzBLzPmbTNSp
         UNiEL9Fk9fZ2PpDH8PmbHCz+bxFAHS4x31TnWnYFJT/WlBbDcfe9Omdc+P0y4o2SjxDV
         lOJf+1iBCCc7YDwSTwr99Hv9P2WUYsA4/AD9Io1HGxQE21U5MEGirAXmwUMDvRbn5bAS
         yfqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M5yBijTC/NoZv/dwfnGMA/PuaNzGiS+QgasoxpUpNJ0=;
        b=4+Uj9AyxrsmmeM58MKY20uwbDTKcOjMZL5Kv1VDP1FPZNC3Xi0qiDjsS1JgRPoJrcS
         2mebXJl7ujHQ6Uu8Fm+8tMeqxcpxhCmhQTTEPfO3UTSNwltF0CZ0WRMmp5e0D6xLqLaP
         N49lLuSU/AOCz/SSb20QIJdPzj16iI7Dgw0GN8VnTABd5PForeM5ntswoeUmVXLm9Kdg
         SdXTJA8G203SIdyqpVEh8jui1GQbqpVN4JUcLDyVv61W59EgkigeZ/MdiOUWv98Ber/m
         WPxLs2ynxciukjci6CsNHRoHDOy0W7DZ+1rxfQD6LD6GHD7p83zPKGte4Ztt1yt045N+
         Vk+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315mLRPH6tj6j8KyYM2UoJi/bARY+yWVtAMz4Lqrq7fbriVFtnZ
	iD5vQAkI+5My8W5f6y2It2w=
X-Google-Smtp-Source: ABdhPJwYRdblZrgoWgnBqhCV8/k4S9qdEK3JnJYcUwfHELs7+nijf6fA7g/f3VT4XKgD50DLRj66pg==
X-Received: by 2002:a1c:790e:: with SMTP id l14mr19273999wme.99.1633933075207;
        Sun, 10 Oct 2021 23:17:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6141:: with SMTP id y1ls2291278wrt.3.gmail; Sun, 10 Oct
 2021 23:17:54 -0700 (PDT)
X-Received: by 2002:a5d:6d81:: with SMTP id l1mr9073826wrs.198.1633933074205;
        Sun, 10 Oct 2021 23:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633933074; cv=none;
        d=google.com; s=arc-20160816;
        b=wf39z0Dlocm/BnN82C1AehEAR9er5KVbRq4zaPC3H2GdkptqbqWhcUGC/WmRRYcfY8
         NmfGKGHPjv3RxqgANvJ+FtbcBx8EOMtsXydZR7YrFRUYnh98/3PkENkTVB1HoEEMh5bB
         247nh3jyerUzOGKueYvoa8QSyLZvVsd3ZwWVDNZ2eK8M0j7hfbTYOfndfL2nynES2Ucd
         1bxty7717e6OQfWPvSufEQPJNhxOBNy1cORWb4Ukk0qwVvuTBY/QVbclf3seQkNwuLxC
         YJjbHmHuY/yDbE9YRy9zQqxapR/sdsfLOYarvY24g6eJegH47+U0+nKfwPeL7awJM1N1
         esxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JgZFL1gbaLa9EwP6bgcRPQEmNK/hbPIe9fBJ0qz2WNE=;
        b=j4M6JBOSTpv0KUQGkh1dd/e6u1W0Tmr1EpGmnR6RXjNlyVrGirWnIytwQGMQMT78ll
         M4q24m+0xmnrMVRIRPoNWOSIBmc3G0nrQxXfOxv/0iD8PxdzbhFVtOtTp5nDv3EoIQiN
         TgM1sNsJ+uLaGptyrL1Q9Gnea/tJ4Nchcr7akFCKMrmpsOyXs6zXZLLUPOjBo05v2Ez6
         jWHKGRkB0xuaB3g6grxFrq7OOxqBTAXzx458MUeITpfFALLXbQqrgm4TOtFxdlA/faLH
         SjfDxBd5Q1yKhVYs9rHjBlOHvLnkwCKUADWXC5MC2yVpSGn3a91W4HnkmuTg6cp9dG3m
         MKfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Wn1NP/SC";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id g81si69801wmg.0.2021.10.10.23.17.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 23:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id t16so41456378eds.9
        for <clang-built-linux@googlegroups.com>; Sun, 10 Oct 2021 23:17:54 -0700 (PDT)
X-Received: by 2002:a17:906:c302:: with SMTP id s2mr22596326ejz.499.1633933073798;
 Sun, 10 Oct 2021 23:17:53 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 11 Oct 2021 11:47:42 +0530
Message-ID: <CA+G9fYuqwJD5bFO74vG6Mvbbt1G8rxzd_NDHg-gtOZ6rPjeu3A@mail.gmail.com>
Subject: clang-13: s390/kernel/head64.S:24:17: error: invalid operand for instruction
To: llvm@lists.linux.dev, linux-s390@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Alexander Egorenkov <egorenar@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Wn1NP/SC";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

[Please ignore this email if it is already reported ]

Following s390 builds failed due to warnings / errors.

metadata:
    git_describe: v5.15-rc5
    git_repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
    git_short_log: 64570fbc14f8 (\"Linux 5.15-rc5\")
    target_arch: s390
    toolchain: clang-13


Fail (2861 errors) s390 (tinyconfig) with clang-nightly
  @ https://builds.tuxbuild.com/1zL35IUSGhDGeVuyIrAp7eyzEUi/
Fail (2861 errors) s390 (tinyconfig) with clang-13
  @ https://builds.tuxbuild.com/1zL35Hn7wjErKsLDM6zAgh27BYJ/
Fail (4112 errors) s390 (allnoconfig) with clang-13
  @ https://builds.tuxbuild.com/1zL35HR60hSFvBmAcYJvKHm8Lko/
Fail (4112 errors) s390 (allnoconfig) with clang-nightly
  @ https://builds.tuxbuild.com/1zL35DTlrX9qRGCtGqgtmmMDjnQ/
Fail (23048 errors) s390 (defconfig) with clang-13
  @ https://builds.tuxbuild.com/1zL35DE2KWQUPxbbXeTbwIJaWXS/
Fail (23045 errors) s390 (defconfig) with clang-nightly
  @ https://builds.tuxbuild.com/1zL35EgeQfWQDXDupp4itkUO5At/


Build errors log:
----------------
arch/s390/kernel/head64.S:24:17: error: invalid operand for instruction
 lctlg %c0,%c15,.Lctl-.LPG1(%r13) # load control registers
                ^
arch/s390/kernel/head64.S:40:8: error: invalid operand for instruction
 lpswe .Ldw-.(%r13) # load disabled wait psw
       ^
make[3]: *** [scripts/Makefile.build:379: arch/s390/kernel/head64.o] Error 1
In file included from kernel/sched/cputime.c:5:
In file included from kernel/sched/sched.h:5:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:94:
arch/s390/include/asm/spinlock.h:89:3: error: expected absolute expression
                ALTERNATIVE("", ".long 0xb2fa0070", 49) /* NIAI 7 */
                ^
arch/s390/include/asm/alternative.h:111:2: note: expanded from macro
'ALTERNATIVE'
        ALTINSTR_REPLACEMENT(altinstr, 1)                               \
        ^
arch/s390/include/asm/alternative.h:106:2: note: expanded from macro
'ALTINSTR_REPLACEMENT'
        INSTR_LEN_SANITY_CHECK(altinstr_len(num))
        ^
arch/s390/include/asm/alternative.h:62:3: note: expanded from macro
'INSTR_LEN_SANITY_CHECK'
        ".if " len " > 254\n"                                           \
         ^
<inline asm>:5:5: note: instantiated into assembly here
.if 6651b-6641b > 254
    ^
In file included from kernel/sched/cputime.c:5:
In file included from kernel/sched/sched.h:5:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:94:
arch/s390/include/asm/spinlock.h:89:3: error: cpu alternatives does
not support instructions blocks > 254 bytes
                ALTERNATIVE("", ".long 0xb2fa0070", 49) /* NIAI 7 */
                ^
arch/s390/include/asm/alternative.h:111:2: note: expanded from macro
'ALTERNATIVE'
        ALTINSTR_REPLACEMENT(altinstr, 1)                               \
        ^
arch/s390/include/asm/alternative.h:106:2: note: expanded from macro
'ALTINSTR_REPLACEMENT'
        INSTR_LEN_SANITY_CHECK(altinstr_len(num))
        ^
arch/s390/include/asm/alternative.h:63:3: note: expanded from macro
'INSTR_LEN_SANITY_CHECK'
        "\t.error \"cpu alternatives does not support instructions "    \
         ^
<inline asm>:6:2: note: instantiated into assembly here
        .error "cpu alternatives does not support instructions blocks
> 254 bytes"
        ^
In file included from kernel/sched/cputime.c:5:
In file included from kernel/sched/sched.h:5:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:94:
arch/s390/include/asm/spinlock.h:89:3: error: expected absolute expression
                ALTERNATIVE("", ".long 0xb2fa0070", 49) /* NIAI 7 */
                ^
arch/s390/include/asm/alternative.h:111:2: note: expanded from macro
'ALTERNATIVE'
        ALTINSTR_REPLACEMENT(altinstr, 1)                               \
        ^
arch/s390/include/asm/alternative.h:106:2: note: expanded from macro
'ALTINSTR_REPLACEMENT'
        INSTR_LEN_SANITY_CHECK(altinstr_len(num))
        ^
arch/s390/include/asm/alternative.h:66:3: note: expanded from macro
'INSTR_LEN_SANITY_CHECK'
        ".if (" len ") %% 2\n"                                          \
         ^
<inline asm>:8:5: note: instantiated into assembly here
.if (6651b-6641b) % 2
    ^
In file included from kernel/sched/cputime.c:5:
In file included from kernel/sched/sched.h:5:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:6:
In file included from include/linux/wait.h:9:
In file included from include/linux/spinlock.h:94:
arch/s390/include/asm/spinlock.h:89:3: error: cpu alternatives
instructions length is odd
                ALTERNATIVE("", ".long 0xb2fa0070", 49) /* NIAI 7 */
                ^

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

# To install tuxmake on your system globally:
# sudo pip3 install -U tuxmake
#
# See https://docs.tuxmake.org/ for complete documentation.

tuxmake --runtime podman --target-arch s390 --toolchain clang-13
--kconfig defconfig

-- 
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuqwJD5bFO74vG6Mvbbt1G8rxzd_NDHg-gtOZ6rPjeu3A%40mail.gmail.com.
