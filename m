Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPPCZL3QKGQEKOY4XRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 747B72069B2
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:50 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id w18sf616878qvd.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963389; cv=pass;
        d=google.com; s=arc-20160816;
        b=ctfDTP0fkK8+Bgni3GlCUPIe1Nv90iEm7gvpsQFJGOu4TE0g5IC/3zVp8qKy89S1YV
         ZyyVjI0qSpjSLodfKMmqJkx92DcrLnp9fCXDUhFIuGYo+LoSERLX4v9JctRIMG2cac1K
         1fkyXHyUCgF/TPAKlUvb7kT48zT5LT6DRA4C6uqFOqlXtj2y7NAMJN8t6rdsCbW9ZLOX
         kBdcZya3OnJXNezqQok7uzU93Kz7nhOxHZv+gqCeYF3MNbeBZ6ZZc+DV3NFiL851hoWf
         44cvv/PrvGa5khXQrFjKrg6/jVK/krdy/p2rCehA+vuRd3Wt9EabhH+FV64nHzN9dJBC
         1Jdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=hPl+arsZGm2JyqtV9f0nLrbo1SZqt0Y/Y5Ffe1Qayaw=;
        b=iSF7EGY5s4NaYsZVeIg9gIvdVNVw6znkXPT68riUCdXG8MxuWTDtI9/8y5bXkiEBc8
         97UK0XvOPQcyRPPMmXvqWG5KaDkeZ/ldxQ/+oCPkhskoxipW4fGrMxa8MCqgH2+qcGN9
         5F1EO9zrqPpoVpDwxcCpjYyIZ1np+0Z0FZgHyl/oVsjUhvK1TQcDdRp8owYP2lS1I4op
         ziciwcioRVCIUr63yAt5EzdyTuJ5/tgTXTh1FdY+KRf86frbT8hM7jgJdyu4qEL/J59c
         Ejj55cZfAOXTiYtc5rJ2kvDhu9lighsAubKTp1g8HSCXa1Xj8IT+IzKTtIU+aQEGxU/E
         2r0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CIDABal4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hPl+arsZGm2JyqtV9f0nLrbo1SZqt0Y/Y5Ffe1Qayaw=;
        b=VihPsDCW/ShvD5MKN2wL4zeZpr56yfFK3he2uSOCXTyZTAdY0Il3ky3wPxmhbKn9Ks
         l7zsqLodTYzu2d16b0e2Bj8zpu9TrESnwEJgVNylcD8st60z2Xe7NKswUlkqGynYY8Cf
         zfS78jrjVN3VowxPe4P5UxGhMbM3WogQu0K9ZxmumNQB/eeWSEUEgHhZi2YErwx7yana
         89QfIRfbbTaCa9IeRLSW1x/KACWpv7lav/wMqhuGBU+CQAYUR03Y3lOvV/dabTRYfBWP
         gKt2XL/JAAp9J/5XQD4tzpy+n/qopyrCGL1zZ0iMkXild1zuPdd10bUNXSpoF6R9kkTN
         2RxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hPl+arsZGm2JyqtV9f0nLrbo1SZqt0Y/Y5Ffe1Qayaw=;
        b=tStX7h+HfOpHI0iFLi2sh3e4GDrb9yXhO1K62znTXJMkRv0cUDDNWycrwGpxiukvIq
         YoU6K6cOLTYC78WEdf6u9cyAy6WgdAjHFkywEexyyHeHIh7xRrr++dCNjM5f4M1aWzOw
         vKo7gnSzKvj7kgLi6k82phNxqSZdwFHJUSoD/4mVfKjNQ4Z63sI2mVg7Xbe7MGOMV2ny
         ehCe61tEoXZYvE/q76puR/wJNA/L0Pi56pZG09XzmqI4Ta5MR7KOmdJjz55zVfGVMOSk
         Zwq5oD6mmfE8/wfSN6ieGSIHeNIpxRtyb+7D+zuDXxVqc3C2hZB4Msg8c7qq3IYoi8/q
         fF0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p4zeYvswGeIVNOBG81t2cn7/LHVUbTTLtY680GYgtJY1pOuGo
	Q9b/vkRSHEIHQDg4GBDaapA=
X-Google-Smtp-Source: ABdhPJzgzMrY1ZmYV4279DD0VdBOfo+Anx31kuCxAyBFuuteXZXqkCWkB5sYXPou8OmKgUvdtmT1Eg==
X-Received: by 2002:a37:887:: with SMTP id 129mr23037346qki.52.1592963389133;
        Tue, 23 Jun 2020 18:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f4cd:: with SMTP id o13ls96541qvm.6.gmail; Tue, 23 Jun
 2020 18:49:48 -0700 (PDT)
X-Received: by 2002:a0c:d444:: with SMTP id r4mr29202720qvh.67.1592963388849;
        Tue, 23 Jun 2020 18:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963388; cv=none;
        d=google.com; s=arc-20160816;
        b=RZysjVI4S1Prk6VbVYyzKeJX9Zdf2xrbj43Le8NCInzWfo8tOul0uB63bpqje8WUq1
         W3h91sNa2nQFDKYzRRrw+NFOeIzsv+vBM1fjXbkxJxrM5s48syYLdEkwqgXyys52synr
         8KI6a446sYXZjPuU7RrkTqykudT8GkB66xpdqS4bSYTAImpY/6+dSNY//y54XaBDBMoL
         YTNArab1ZAO5IQ1tWsAdlw1tKn3yKEaLjx8gj97gFYvZgZ+7qnDc0OysMuhMklGU5s/q
         Q383NXrKpYTP8GHJlEz8z4bX2SFD9bYwcH7hGu5OjVp0t6UxIwwts/Jm1fo50QeSKIyv
         XAuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XRX+a9QElrykJZmLdxem4I40g6I/9leCnrUb/OjtOMI=;
        b=vkc1+BvQsNH/W/3GtHV9rTyDPFyriQm7ozLlXktpwJ+Z+XQ3It1j6L40Un/kxR4/Ep
         q0Fhqf9T/+ooYqDVCF1zsq+Cp0/52Ilyzv2UGt5uGO0+BuDoiE7KvN4j/x3xzDbcUEHP
         FJvsYdxfWrL5QMs0UKLoim2Ib4ABrzDJbnHDLXNJkJ3881wpDMsfIkIQngzWG/kYcSrj
         cKYt/RPUyhKduwj6ZwVUhQrorzSI7httIx+EmCn/DwONaq3HhW701WfahNWHUHA2Dvqo
         ZosrUd5LxcqYypZhhU2Y8A8LC4dmtMfjT5n0dwtqrqMfv4fcts9bbCqIESXK3Eter3zl
         p5ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CIDABal4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x78si1003868qka.4.2020.06.23.18.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d12so345147ply.1
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:48 -0700 (PDT)
X-Received: by 2002:a17:90a:d186:: with SMTP id fu6mr4433095pjb.185.1592963388068;
        Tue, 23 Jun 2020 18:49:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id nl11sm3230884pjb.0.2020.06.23.18.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] Warn on orphan section placement
Date: Tue, 23 Jun 2020 18:49:31 -0700
Message-Id: <20200624014940.1204448-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CIDABal4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

v3:
- merge series back together (I tried to make it separable, but no luck)
- remove unwanted sections in libstub
- remove unwanted .eh_frame sections for both .c and .S
- handle sections seen during allnoconfig builds
- handle synthetic and double-quoted sections reported by Clang
- add reviewed-bys
v2: https://lore.kernel.org/lkml/20200622205815.2988115-1-keescook@chromium.org/
v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/

A recent bug[1] was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similarly, the recent FGKASLR series brough up orphan
section handling too[2]. In both cases, it would have been nice if the
linker was running with --orphan-handling=warn so that surprise sections
wouldn't silently get mapped into the kernel image at locations up to the
whim of the linker's orphan handling logic. Instead, all desired sections
should be explicitly identified in the linker script (to be either kept or
discarded) with any orphans throwing a warning. The powerpc architecture
actually already does this, so this series extends coverage to x86, arm,
and arm64.

All three architectures depend on the first two commits (to
vmlinux.lds.h), and x86 and arm64 depend on the third patch (to
libstub). As such, I'd like to land this series as a whole. Given that
two thirds of it is in the arm universe, perhaps this can land via the
arm64 tree? If x86 -tip is preferred, that works too. Or I could just
carry this myself in -next. In all cases, I would really appreciate
reviews/acks/etc. :)

Thanks!

-Kees

This series is here:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/warn/v3

[1] https://github.com/ClangBuiltLinux/linux/issues/282
[2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/

Kees Cook (9):
  vmlinux.lds.h: Add .gnu.version* to DISCARDS
  vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to STABS_DEBUG
  efi/libstub: Remove .note.gnu.property
  x86/build: Warn on orphan section placement
  x86/boot: Warn on orphan section placement
  arm/build: Warn on orphan section placement
  arm/boot: Warn on orphan section placement
  arm64/build: Use common DISCARDS in linker script
  arm64/build: Warn on orphan section placement

 arch/arm/Makefile                             |  4 ++++
 arch/arm/boot/compressed/Makefile             |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
 .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
 arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
 arch/arm64/Makefile                           |  9 +++++++-
 arch/arm64/kernel/smccc-call.S                |  2 --
 arch/arm64/kernel/vmlinux.lds.S               | 16 ++++++++++----
 arch/arm64/mm/mmu.c                           |  2 +-
 arch/x86/Makefile                             |  4 ++++
 arch/x86/boot/compressed/Makefile             |  3 ++-
 arch/x86/boot/compressed/vmlinux.lds.S        | 11 ++++++++++
 arch/x86/include/asm/asm.h                    |  6 ++++-
 arch/x86/kernel/vmlinux.lds.S                 |  6 +++++
 drivers/firmware/efi/libstub/Makefile         |  3 +++
 include/asm-generic/vmlinux.lds.h             |  7 +++++-
 17 files changed, 92 insertions(+), 32 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-1-keescook%40chromium.org.
