Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4WISL4QKGQEBNGVNNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3C4234DE3
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:36 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id i66sf14328138ile.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236915; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHR651D/4WVJqIynAbS4PhDf1LUh/jnhYD3km2L9/uyS7JU5w+anLnDf2Om1ZXuXr4
         vGqLhJpBZaXZCHT8jH1BrgsySDmI2cE94Dy5AjVewB0OYR8iDtoV27duy2QtHzRJp0ZV
         tLrseMJEuHIe50GGKgReE9mQdZtLCTho27crNKOukSnEYtg2l+qZbhr9iq+ikNh2y7we
         Uuxj/ehVWq0oW8UwKv0VvSlrPoBF3LqzMZOmlZb+nSKJftFOwI0Kn2nG6/TJloaVjy4o
         Z7fW/+GS85gqzDZ9OGDe8wgs6FmerIa2Ppa+XQp/UjDCYXxGMhvdquTYi70WPK7Mn3xR
         vzLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=vK+sYdt9VZU29l4FSqKvxXIc9huupbJ+Q7BHy4TASKM=;
        b=b5xhyNpLNOVeULjiwZF7m8UPb/O6vfwdG/SYgTFUUX+baSLpEB4HDCHHp1D5jGKEIy
         EhrU8A3WAeZrhCDY+YwWSzP4rKS7UWmbmJXzo8i/hKiRLvexBZ+VEqU/0cSD77tw+NdH
         zu1lAJpghJbgbp72FYcszitxART6leNqFs6Q+fEV1I1SpoMlDFQImsTY/JUincBq+pIk
         yhmirbQ8d37nklh+ig/39hExAQF5zwglkkyD9tYoyrt04x0Sgxn83pFSKqr3C5P5r4YK
         HY9YAJIhb27fQJlhtjnLLO/f7PPvesy3ICz63SkbZabKbv2YRgTLNMzcY/g90PZIok0x
         24vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NzZUDe7i;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vK+sYdt9VZU29l4FSqKvxXIc9huupbJ+Q7BHy4TASKM=;
        b=LGR9HbyWsiJDKXFcN5eudESA70IugaeFjrqgZkJIkMrUC2hUIT0gW/sRFgzviujxnQ
         1izFSRpeiCtEr3bw6AZGpr+tATVMB4l2qWdWYcognM95u484Vhi58Y+uieuYAizZn9qt
         1VJGsGP21G8fPjKiBBsgcHZs2cEn3Wgk/V3GbJy+AcY5mFs+EsrQPTUpnmPHQScluYOe
         StJqD7U4K2Y6xsLDmvFFpkFoqFrJeVfhLUVwPgP7usQWCknpNY09wkJnSDmvCx7+yyec
         ycFmCwq7Xh8UNLDXFdMLFUtr32lbQBdEGQ6CKKXts4yF238C+heLF3b+dbTdVMu7yiID
         L68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vK+sYdt9VZU29l4FSqKvxXIc9huupbJ+Q7BHy4TASKM=;
        b=jWYs/mWRktyStH0RxZwjmUfaQNRyWLO11VXgnkBkvh+0HKsnQGP4MnUNMkKXhokkqH
         odTnajdXdj/BAxC5gbqB/P6d5YeB/C5vU4hu3K2T1vCIciajxFzh829DBNT1OhQHkvsU
         9+kjhj4GU6KD9t8HVt96TFkTy4ZBD6ps7gHSJQzz2uCSXst3kjl8dJAyb8JShUKiuPun
         pGwlMoX2FmBNQBp2sgQYlCrfokKm7jq3zlPFSwJ11K0e0AEzkSp8Ltw9yr0T22XOSpMz
         ZqFCR5gmdBc1nh5aYpzsQurKbjufanecgunn+25hwETly/roMU2oEQpCGf2eJ3HqlDXy
         mnSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YT+FmpotYrKX8byCL+4wkZ3xrSiOdUYMCD5h+tPhdxxNuJGH6
	QmNw20rkP8PW0fVaHUA/EG0=
X-Google-Smtp-Source: ABdhPJwtWgtiFznUVhxI/SsY5fVB8euw7b/rZKpinBkfbyGRN9Yyp3sDvNLO9pBwHqBoDEe9hxMzyQ==
X-Received: by 2002:a92:980d:: with SMTP id l13mr5817756ili.217.1596236914913;
        Fri, 31 Jul 2020 16:08:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e4c:: with SMTP id s73ls2890049ilb.3.gmail; Fri, 31 Jul
 2020 16:08:34 -0700 (PDT)
X-Received: by 2002:a05:6e02:1203:: with SMTP id a3mr6042831ilq.85.1596236914615;
        Fri, 31 Jul 2020 16:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236914; cv=none;
        d=google.com; s=arc-20160816;
        b=dZgVKxbnhj/lIZXKRWI6ZSZ4/tkb/Dqda+wX8t81kp+equi1t7o5gYuPU5ryVWnWpM
         hdUTvf88IIiHZZOL52GsdeCZ/3z4WKhtz+zS+yz30ALJSbv52XuZSevuB0qJHeRnBOXn
         KUR+/L5jFHJTjdNtTPn7Y4pNi8Y/YFIF/N1UDnRG/+yj6JN/8+poyDsVUxR4SQs4AhEv
         7IG04k/KJM2AtwXl1FN5UfhlOHHiQqvhiqzLtz7/1CLj5SltLTf6M5Tq5rDKXvZPWg/9
         YQ734aSeDPGIwoI0Kwt733Lv6Fl1mmq0+ZCedPZ6Lcqqcc6UJJHB9NRkuV2WvXuVUb+5
         Cmrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gOuHhkP4k6lGlo9NwRnrjymhpQ+iLTcLVy67EHO0tLQ=;
        b=ty71dFIefk4MXvAcnrr/1c8tl8JRUJmbBX6mWilMkoRQFlC3E/RqyVEhf1Ovhh+GNE
         IWWaN+/KxN+n9C7ybmHIHF6hWGzkhICABXjKeJj71lQO6Ss+tgC2q26/592M4v9mtjzx
         d+CGW8cgEuVXCi7mqsj/lPnrzu7V11pogIUPMp7uK2ATsmA1GWcFhAG0QpNoX0hBne7s
         yZQpwUeuS2gChKnH/EvMKkskJklnNB83dNJM8PY/jRLwCgaa0KzAwpTvDzTkFZsHQJ/v
         4cQaBroyDsX6DdRRbQRZe6b6NAdhciKSsoI29/djjEwckeoeak8zElgCtyHPh0vFZ1QE
         1iRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NzZUDe7i;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id f4si28978ilh.4.2020.07.31.16.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id w17so18092794ply.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:34 -0700 (PDT)
X-Received: by 2002:a17:90a:db53:: with SMTP id u19mr6145819pjx.13.1596236913938;
        Fri, 31 Jul 2020 16:08:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b22sm9843691pju.26.2020.07.31.16.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
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
Subject: [PATCH v5 00/36] Warn on orphan section placement
Date: Fri, 31 Jul 2020 16:07:44 -0700
Message-Id: <20200731230820.1742553-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NzZUDe7i;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/warn/v5

v5:
- rebase from -rc2 to -rc7 to avoid build failures on Clang vs binutils
- include Arvind's GOT fix-up series[3], since it touches many similar areas
- add PGO/AutoFDO section patch[4]
- split up x86 and arm changes into more digestable steps
- move several sections out of DISCARD and into zero-size asserts
- introduce COMMON_DISCARDS to improve ARM's linker scripts
v4: https://lore.kernel.org/lkml/20200629061840.4065483-1-keescook@chromium.org/
v3: https://lore.kernel.org/lkml/20200624014940.1204448-1-keescook@chromium.org/
v2: https://lore.kernel.org/lkml/20200622205815.2988115-1-keescook@chromium.org/
v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/

A recent bug[1] was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similar situation have continued to recur, and it's
clear the kernel build needs to be much more explicit about linker
sections. Similarly, the recent FGKASLR series brought up orphan section
handling too[2]. In all cases, it would have been nice if the linker was
running with --orphan-handling=warn so that surprise sections wouldn't
silently get mapped into the kernel image at locations up to the whim
of the linker's orphan handling logic. Instead, all desired sections
should be explicitly identified in the linker script (to be either kept,
discarded, or verified to be zero-sized) with any orphans throwing a
warning. The powerpc architecture has actually been doing this for some
time, so this series just extends that coverage to x86, arm, and arm64.

This has gotten sucecssful build testing under the following matrix:

compiler/linker: gcc+ld.bfd, clang+ld.lld
targets: defconfig, allmodconfig
architectures: x86, i386, arm64, arm
versions: v5.8-rc7, next-20200731 (with various build fixes[7][8])

Two known-failure exceptions (unchanged by this series) being:
- clang+arm/arm64 needs CONFIG_CPU_BIG_ENDIAN=n to pass allmodconfig[5]
- clang+i386 only builds in -next, which was recently fixed[6]

All three architectures depend on the first several commits to
vmlinux.lds.h. x86 depends on Arvind's GOT series[3], so I collected it
into this version of my series, as it hadn't been taken into -tip yet.
arm64 depends on the efi/libstub patch. As such, I'd like to land this
series as a whole. Given that two thirds of it is in the arm universe,
perhaps this can land via the arm64 tree? If x86 -tip is preferred, that
works too. If I don't hear otherwise, I will just carry this myself in
-next. In all cases, I would really appreciate reviews/acks/etc. :)

Thanks!

-Kees

[1] https://github.com/ClangBuiltLinux/linux/issues/282
[2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
[3] https://lore.kernel.org/lkml/20200715004133.1430068-1-nivedita@alum.mit.edu/
[4] https://lore.kernel.org/lkml/20200625184752.73095-1-ndesaulniers@google.com/
[5] https://github.com/ClangBuiltLinux/linux/issues/1071
[6] https://github.com/ClangBuiltLinux/linux/issues/194
[7] https://lore.kernel.org/lkml/1596166744-2954-2-git-send-email-neal.liu@mediatek.com/
[8] https://lore.kernel.org/lkml/82f750c4-d423-1ed8-a158-e75153745e07@huawei.com/


Ard Biesheuvel (3):
  x86/boot/compressed: Move .got.plt entries out of the .got section
  x86/boot/compressed: Force hidden visibility for all symbol references
  x86/boot/compressed: Get rid of GOT fixup code

Arvind Sankar (4):
  x86/boot: Add .text.* to setup.ld
  x86/boot: Remove run-time relocations from .head.text code
  x86/boot: Remove run-time relocations from head_{32,64}.S
  x86/boot: Check that there are no run-time relocations

Kees Cook (28):
  vmlinux.lds.h: Create COMMON_DISCARDS
  vmlinux.lds.h: Add .gnu.version* to COMMON_DISCARDS
  vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections
  vmlinux.lds.h: Split ELF_DETAILS from STABS_DEBUG
  vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to ELF_DETAILS
  efi/libstub: Disable -mbranch-protection
  arm64/mm: Remove needless section quotes
  arm64/kernel: Remove needless Call Frame Information annotations
  arm64/build: Remove .eh_frame* sections due to unwind tables
  arm64/build: Use common DISCARDS in linker script
  arm64/build: Add missing DWARF sections
  arm64/build: Assert for unwanted sections
  arm64/build: Warn on orphan section placement
  arm/build: Refactor linker script headers
  arm/build: Explicitly keep .ARM.attributes sections
  arm/build: Add missing sections
  arm/build: Warn on orphan section placement
  arm/boot: Handle all sections explicitly
  arm/boot: Warn on orphan section placement
  x86/asm: Avoid generating unused kprobe sections
  x86/build: Enforce an empty .got.plt section
  x86/build: Assert for unwanted sections
  x86/build: Warn on orphan section placement
  x86/boot/compressed: Reorganize zero-size section asserts
  x86/boot/compressed: Remove, discard, or assert for unwanted sections
  x86/boot/compressed: Add missing debugging sections to output
  x86/boot/compressed: Warn on orphan section placement
  arm/build: Assert for unwanted sections

Nick Desaulniers (1):
  vmlinux.lds.h: add PGO and AutoFDO input sections

 arch/alpha/kernel/vmlinux.lds.S               |   1 +
 arch/arc/kernel/vmlinux.lds.S                 |   1 +
 arch/arm/Makefile                             |   4 +
 arch/arm/boot/compressed/Makefile             |   2 +
 arch/arm/boot/compressed/vmlinux.lds.S        |  20 +--
 .../arm/{kernel => include/asm}/vmlinux.lds.h |  29 ++-
 arch/arm/kernel/vmlinux-xip.lds.S             |   8 +-
 arch/arm/kernel/vmlinux.lds.S                 |   8 +-
 arch/arm64/Makefile                           |   9 +-
 arch/arm64/kernel/smccc-call.S                |   2 -
 arch/arm64/kernel/vmlinux.lds.S               |  28 ++-
 arch/arm64/mm/mmu.c                           |   2 +-
 arch/csky/kernel/vmlinux.lds.S                |   1 +
 arch/hexagon/kernel/vmlinux.lds.S             |   1 +
 arch/ia64/kernel/vmlinux.lds.S                |   1 +
 arch/mips/kernel/vmlinux.lds.S                |   1 +
 arch/nds32/kernel/vmlinux.lds.S               |   1 +
 arch/nios2/kernel/vmlinux.lds.S               |   1 +
 arch/openrisc/kernel/vmlinux.lds.S            |   1 +
 arch/parisc/boot/compressed/vmlinux.lds.S     |   1 +
 arch/parisc/kernel/vmlinux.lds.S              |   1 +
 arch/powerpc/kernel/vmlinux.lds.S             |   2 +-
 arch/riscv/kernel/vmlinux.lds.S               |   1 +
 arch/s390/kernel/vmlinux.lds.S                |   1 +
 arch/sh/kernel/vmlinux.lds.S                  |   1 +
 arch/sparc/kernel/vmlinux.lds.S               |   1 +
 arch/um/kernel/dyn.lds.S                      |   2 +-
 arch/um/kernel/uml.lds.S                      |   2 +-
 arch/unicore32/kernel/vmlinux.lds.S           |   1 +
 arch/x86/Makefile                             |   4 +
 arch/x86/boot/compressed/Makefile             |  41 +----
 arch/x86/boot/compressed/head_32.S            |  99 ++++-------
 arch/x86/boot/compressed/head_64.S            | 165 +++++++-----------
 arch/x86/boot/compressed/mkpiggy.c            |   6 +
 arch/x86/boot/compressed/vmlinux.lds.S        |  48 ++++-
 arch/x86/boot/setup.ld                        |   2 +-
 arch/x86/include/asm/asm.h                    |   6 +-
 arch/x86/kernel/vmlinux.lds.S                 |  39 ++++-
 drivers/firmware/efi/libstub/Makefile         |  11 +-
 drivers/firmware/efi/libstub/hidden.h         |   6 -
 include/asm-generic/vmlinux.lds.h             |  49 +++++-
 include/linux/hidden.h                        |  19 ++
 42 files changed, 377 insertions(+), 252 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (84%)
 delete mode 100644 drivers/firmware/efi/libstub/hidden.h
 create mode 100644 include/linux/hidden.h

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-1-keescook%40chromium.org.
