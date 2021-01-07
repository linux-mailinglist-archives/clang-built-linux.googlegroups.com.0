Return-Path: <clang-built-linux+bncBAABBKH73P7QKGQEIENAETY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC052ECFD8
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 13:33:44 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id 4sf2604145wrb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 04:33:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610022824; cv=pass;
        d=google.com; s=arc-20160816;
        b=rnxGBx0nhNzDpL9dU4q0Zq1ewOoE8lrANG/JB1K+qiH+L2OCCoCSLqhsefpQRpizum
         hW8x/osHo2hpO4pM54I9L7GwQd7VEQp0MC6HbrEzbAP/ya0G4wgEMg+hPTWUFcbBMYZ+
         lhwzhya0bwbBl6f0EChaDR2Nnt4I8BiC9tL3Uj2OGwgbw2e0oM9h6lHUvBCg5Ypvrszg
         BV1kP3nnvlcLKkLVeUWtpgcdZhe7RNmO3/jBJCi1TSNoXceKKiPsju5SNW2+8BmpSrfp
         GgDGH75qEnIeXl9C2oN4yJiHN5Dtguumq2KxmS7Gsm77X3pSvLkG29x7KiIs+eZuwka1
         K4ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :reply-to:cc:from:to:date:dkim-signature;
        bh=17UFWmoXGQv4/jVa644ZQNhJkRCTqXBUrUNZF2m8fP8=;
        b=kr2L1k+BxoLeq5PCIFwU43VdBQUHdBlwEN1OEWZXDXhZYOnO0DMUylAFh68ZYLB9nr
         6r4dgNQjHlhQutxSzJyOifbgP3BoM6s1tPurOAgVHWMMCWWzdy4fmgIqgxIVAcpAszbN
         u2WbuGMrVb/Ige6YcF+aQos1n7dCZftfVckdQpjBgy1/rgx6OECiRhkPiw4Ma78g8gGD
         kjYtPNkBI+Gb6sC/WQCpbQinYOrvu+RpgMgrg3LNoeclcGa9SOa72ef27tjNd2D404WB
         PQVnFb8Efos13WU0iT0SMoWJHvjXXZ67I2VE1wVDwsu8sXSYiDXwbpw/HmYusc8eNRE7
         frlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=g46HgMEo;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=17UFWmoXGQv4/jVa644ZQNhJkRCTqXBUrUNZF2m8fP8=;
        b=p+Al+9+CbAR9lwRUNByJtCTO4TmU7mfkbELO8Zi18vrf3JWc0nhVovfznMz1Cok0yT
         +4cicdDS1qgSb0jERDCOtchlS9KrIrT7w1r6+liQvMcvBZ9juawKsNYJF/uE5O+yME1m
         0+uQ7WHc5EREBWTJaJqIS75wibzKpTRbunfc1yAEHNvRuSQHWg1IDRhu+bwKrDvh+JyH
         LYhiu/wDW7jnzlWTqCTZz1DTwqqN9euNGLNC1nqPP5/Vuw/JEZ+WZChscLxa2LMVgetE
         7jyQthYEyWi8mUztgyUH7N24eCdqvXvfSfz2OjYdZafshFaL6CuN5EUYdmlTnLGFEcZ3
         1j5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=17UFWmoXGQv4/jVa644ZQNhJkRCTqXBUrUNZF2m8fP8=;
        b=ov7DYKq/MsCrwllkB55QGRb1sG17nwRwWs/5/s239Y9faat/9YiPy+50ITAKZ37Ett
         fH5g1C3DKN/jLB+AWgZt9OZH6MT0NHDGsektZ19T7bLF986RDBeszzsAk8rj2E0MLtgs
         ybZGrhj1rrUiXhGKkbolx1WATFYIfQAlDWxWz5/O5zAEeC/uid4yfD8zOcgueDwFyvBV
         7UmOcXsR76IQ3gEcZmuujwgvbQ/58Xuv8/5dwgntR4sxuirVpJpuJrk6Gkp0Z9dFBMoJ
         xcRNxAUDmWx5clJW5QaERKBbMWtYQXnOsKVGRHAQlV7V4e47V9m2Jc3rYLBqvD5LlChf
         mmsA==
X-Gm-Message-State: AOAM530vx1I/VwAxKkkPYmsx5v7CnykLGd+YnpuBXNc0XDk1VgLUrG9J
	wbOSvt6sR5nu5MdBEH1zEE0=
X-Google-Smtp-Source: ABdhPJwIt0EEUsAUHbeYEWOxMh/jzTfHaGVFoxGAwq6g9xbxmsUXb7b3Fxv0B9o18UWxYNGIZ58xKg==
X-Received: by 2002:adf:eac7:: with SMTP id o7mr8939166wrn.23.1610022824556;
        Thu, 07 Jan 2021 04:33:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls7162494wrn.2.gmail; Thu, 07 Jan
 2021 04:33:44 -0800 (PST)
X-Received: by 2002:a5d:6206:: with SMTP id y6mr9073381wru.413.1610022823906;
        Thu, 07 Jan 2021 04:33:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610022823; cv=none;
        d=google.com; s=arc-20160816;
        b=VLeh3USyt+2A7YLpfwkVpoLRb4LM3iC8xWzCOBKVCPS19dLv9Qy3faWiivYo+i2hEU
         x2IRGp9KoP4ANjPyfu9aq8oyOlq2JMLvGfXZQRoSC3TRNzKDYSoubyEozxzZgksm7vPY
         e6ys9qdRvvu3owoUrPfv803gVln87attUnHfWspchsb9olmndXqHI4Pkc8Qb09ynsyyd
         wrgkuMRNripOx6i5Nea9wgMeJ0g5KrLJz5mQGRtZJF5ur3EWncRtbTqAR3A+CM0P5LmP
         rYKDbQfep5LHnjl0Yr5FoxIGAVWedc9HK7+BUqFkS5gRiu8MOs7usX3oyCvipyBRxl3j
         sDVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:reply-to
         :cc:from:to:dkim-signature:date;
        bh=cGGCdvWu4PwKRz1S12Mzu82QSX0n1m3RhliddwWOBIo=;
        b=sntIvyFDczgUhB348pd9xZ9JVp20fBb6JJe+6vKGy1tqdP/jPHk2hXCIGCkSx42knV
         2s2owkisSozIXyFokeRB1EpK1eljY+CtqNfcmqo3ExirSpZNZcS6cj+aKPeAiybHI5ot
         q40NT7S3rPyf7eA785xkFVxP3/O27u/zSASNqNBgqB8XaCKsAZuqGDFN2BBrHF+SYhdk
         TgKLDOqw6g0MxRcLL7gxMlsxYS+MefOYdE6KTYRppBNAGrxdTaP/KX7aVnKabfE8EP/T
         JkO2WRXroWZGV5ARgI2UcS7YLG4kmHyBidFpQR/l6l25vcBHPYI1gx4tjOy1aEtk/tM0
         R+yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=g46HgMEo;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id o85si289769wme.0.2021.01.07.04.33.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 04:33:43 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Thu, 07 Jan 2021 12:33:38 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 0/7] MIPS: vmlinux.lds.S sections fixes & cleanup
Message-ID: <20210107123331.354075-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=g46HgMEo;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
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
 - properly stops .eh_frame section generation.

Compile and runtime tested on MIPS32R2 CPS board with no issues
using two different toolkits:
 - Binutils 2.35.1, GCC 10.2.0;
 - LLVM stack 11.0.0.

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

Alexander Lobakin (7):
  MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
  MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
  MIPS: properly stop .eh_frame generation
  MIPS: vmlinux.lds.S: catch bad .rel.dyn at link time
  MIPS: vmlinux.lds.S: explicitly declare .got table
  vmlinux.lds.h: catch compound literals into data and BSS
  MIPS: select ARCH_WANT_LD_ORPHAN_WARN

 arch/mips/Kconfig                 |  1 +
 arch/mips/include/asm/asm.h       | 18 ++++++++++++++++++
 arch/mips/kernel/vmlinux.lds.S    | 15 ++++++++++++++-
 include/asm-generic/vmlinux.lds.h |  6 +++---
 4 files changed, 36 insertions(+), 4 deletions(-)

-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107123331.354075-1-alobakin%40pm.me.
