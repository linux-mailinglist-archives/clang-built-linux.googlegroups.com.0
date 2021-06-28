Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSWH5CDAMGQEFYXHLFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD283B6924
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 21:32:27 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id a60-20020a9d26420000b0290448d2be15e6sf13807201otb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 12:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624908746; cv=pass;
        d=google.com; s=arc-20160816;
        b=ayThw8uO+uOM8IU9FESgeDSHW+0p0b0nfDrqrvVCeta3Zk5jZ84IqI+EqGO4OFOjBw
         3rq4wt6x7SXxQGtK6mr4a8Abo0vjIm7G/ZggOnhdF6KShnXEoMmKNJOARKZIfnK6ZbJz
         aBSC329HV1A2c1ieZajewsHfavXYcTN0XwQEQyTQkOczpBSPGKwVk4atfG3t916XsoaG
         EMLRxf1GD+R9Q111QWBw3Wt3z/hwuEw1tsWuzIlI2WpHtDhRn1BAJjCSMySGWGExdh2+
         YoC49M5j3ZJJB52v5DDvBXhqdBKQPDAiei6N2fPtjr+G0yrkxwZCxDwHqPwV1PLQxFp8
         IioQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=pveHaj7KhfA6bnwbCEVFWZ3z41GiIJHDr7u59mUVqNU=;
        b=DI6CfOFqoQZPjj9JidmOVJutS3w/6qSaUCiavniE63kjqxLs14bAxbNKa/dkiygU02
         P9GehRc6npLlXra/2rY8LW2avrSo8zwuuDujGUsmka8xgnm+MRVFwl5XCDiXy14CeTDc
         26UAsQFIJjTEr9UmblUigX3jIKdXt+y2aHeFZERY9BN2NK9RocDIu2OW6VIs/WortMGy
         2d1qmQdnwtgAlVUHUhk1/IqK8j6EZxuppT5XdIkRWzXmUdo0qJp8z6fyccmQysL2B9bU
         vcq7u5YxhUxASYIidhkfpADZIfJOpHTaWSu6gVhHojFtK0vuhUtFMESEiarQ9KvB9Ejz
         H4WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SSFPqsTk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pveHaj7KhfA6bnwbCEVFWZ3z41GiIJHDr7u59mUVqNU=;
        b=HrgbM5q2GRjM6grcvmq3MvFe13PQiT/sSSa7OAgCA7f1rhLBvdeE2RUoSEDa8w+Ihq
         6TUbXWWd19zPVI/Z10zvgPKdL9SFs7a8CregaP0S8rH0Pq54YILH+kkKhkC/dqp0z2+5
         KD/mVy8qYbU95gruJdvuoL8R7udJVLr6cPXf5oTRY+utoPvk9T+YglZrg8XNceBogb2J
         LAPv/w5aWKUuCY5onNi8fKKwgponvOMG+6fNHcugpFHcJIEkc77D0BaKh4lemhAVhcY8
         gqEUaD8F3fRwG2cFXpicKbBCCYMg8fMJRNuE/j8YQs4FSeT+3F2pvloR31qsY5vZgQTc
         317g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pveHaj7KhfA6bnwbCEVFWZ3z41GiIJHDr7u59mUVqNU=;
        b=dQ9lO6H2lw6J3VaAuK3EZOTeySFxudbllgPPPuLogwIizmT2OvyA4dlnHgVK9NUG3T
         9nRtk0b22FbaRYrPoBQt+lCPu/Pt9zFfgEP+jy7Hi5U7uYkJhgSJklJjshU76U10hOhx
         am33IHw+otwO9z+Z1dQ9vbuQsvGYDQP9m1TObZw7YFReO7EF/FdoGpG6iUaeGVkaTbDE
         22VrnkDiaO5k8aIAzluPy45fEIJp92vyb4z5uNYrIY6uYXdz+Cj/TMpTijPXQQdkEbzr
         4vmmialPGGxfGR8LTRK37NKUee3OFYlFie9yu+XwqS5H5A/CL/i+uUzeoNhbcUDeSkDN
         6soA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lznpFFeBiVWgw8xpHCwOz4OJNTxQaBEHKip6QKotpSIMrwzYB
	EYHFZ7HHUrvg0mlmTzBfKfE=
X-Google-Smtp-Source: ABdhPJwyRSUj4mdbgwBARs9gCDt2riF84uDiMJNpI6adJtfS5wDnmJPbM++CS4G9GVaYzEbCUlXtgQ==
X-Received: by 2002:a05:6830:1102:: with SMTP id w2mr975607otq.193.1624908746319;
        Mon, 28 Jun 2021 12:32:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls6928873oto.8.gmail; Mon, 28 Jun
 2021 12:32:25 -0700 (PDT)
X-Received: by 2002:a9d:7f03:: with SMTP id j3mr991463otq.235.1624908745919;
        Mon, 28 Jun 2021 12:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624908745; cv=none;
        d=google.com; s=arc-20160816;
        b=qHvYr/9dhaB+p2O7PY5sMa9A6N8WTKuVEZ4F47ye8DIT7EpMt0ITM4nZiHaB7J57Tg
         vag/+ORGjB5Kb0dqbuMosna11YVZjnULlX0hDFryerZ180tArLg9Cn8dGt08k9ts0Cu+
         PKTpbUcMKCdPGJrZqqqh3goKt4Awh9K3KYBQNX9kSHNlmvBNvOnCYySV2PR5bhJSNCN1
         TCEg0G823Cn8BkgcdAWi9MD2WhNzbAvrxwb6OZPnR20Mh8w7chLLFP3pzniTO/vBpYNP
         b0CVtOPnojcxtxsGdxjsmzG4p91szgoQS1fjihdrfwbcBpdHg5s2NTiLo/rHX19PYEVj
         BF7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=apmuhgU/Oe5VvddtMSF+nAIGS/WXE1w2P1HiUkwahs8=;
        b=m2jYzhObifmZN8ZLqvMzBH2cJkrhoADRBqnu5knvdDjavBL7nfL2h8g5hm6YO+rdWA
         +gPKwAsjTBixMHVbB2p0UKuxI8u46nPH9qutFsxqA43pihIjgbbHgJQFZ+u3tcF4pfBN
         5t8NbRfWFioNpUU3E+FozdxOezLfSjBZapLjXROV+T47tpL8h515fzat7JC80l5WdVu8
         vjnbAYLxMAXmhqRbv85z1KGHJJ0RTGpc/XGuxMQ+LyDKQcnz6Vui+M5ZmU2oW/QinY06
         rjq0PA2lIMqbRJgJdDTxmvTgLO5kJIlKnfkb9HRmHsyeRsI5ppBfKdTQkHv6hhQn9seG
         e6jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SSFPqsTk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id c22si1178413oiy.1.2021.06.28.12.32.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 12:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id f10so9545915plg.0
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 12:32:25 -0700 (PDT)
X-Received: by 2002:a17:90a:bb13:: with SMTP id u19mr28732587pjr.113.1624908745511;
        Mon, 28 Jun 2021 12:32:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u14sm15115116pfk.10.2021.06.28.12.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 12:32:24 -0700 (PDT)
Date: Mon, 28 Jun 2021 12:32:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, Bill Wendling <morbo@google.com>,
	Bill Wendling <wcw@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Heiko Carstens <hca@linux.ibm.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>
Subject: [GIT PULL] Clang feature updates for v5.14-rc1
Message-ID: <202106281231.E99B92BB13@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SSFPqsTk;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

Hi Linus,

Please pull these Clang feature updates for v5.14-rc1.

Thanks!

-Kees

The following changes since commit d07f6ca923ea0927a1024dfccafc5b53b61cfecc:

  Linux 5.13-rc2 (2021-05-16 15:27:44 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/clang-features-v5.14-rc1

for you to fetch changes up to 6a0544606ec7f03e4a2534c87ea989de4bac41ae:

  pgo: rectify comment to proper kernel-doc syntax (2021-06-28 12:10:31 -0700)

----------------------------------------------------------------
Clang feature updates for v5.14-rc1

The big addition for this merge window is the core support for Clang's
Profile Guided Optimization, which lets Clang build the kernel for
improved performance when running specific kernel workloads. This
currently covers only vmlinux, but module support is under active
development. (Sami Tolvanen, Bill Wendling, Kees Cook, Jarmo Tiitto,
Lukas Bulwahn)

Added CC_HAS_NO_PROFILE_FN_ATTR in preparation for PGO support in
the face of the noinstr attribute, paving the way for PGO and fixing
GCOV. (Nick Desaulniers)

x86_64 LTO coverage is expaned to 32-bit x86. (Nathan Chancellor)

Small fixes to CFI. (Mark Rutland, Nathan Chancellor)

----------------------------------------------------------------
Bill Wendling (1):
      pgo: rename the raw profile file to vmlinux.profraw

Jarmo Tiitto (2):
      pgo: Limit allocate_node() to vmlinux sections
      pgo: Fix sleep in atomic section in prf_open()

Kees Cook (2):
      MAINTAINERS: Expand and relocate PGO entry
      pgo: Clean up prf_open() error paths

Lukas Bulwahn (1):
      pgo: rectify comment to proper kernel-doc syntax

Mark Rutland (1):
      CFI: Move function_nocfi() into compiler.h

Nathan Chancellor (2):
      MAINTAINERS: Add Clang CFI section
      x86, lto: Enable Clang LTO for 32-bit as well

Nick Desaulniers (3):
      compiler_attributes.h: define __no_profile, add to noinstr
      compiler_attributes.h: cleanups for GCC 4.9+
      Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR

Sami Tolvanen (1):
      pgo: Add Clang's Profile Guided Optimization infrastructure

 Documentation/dev-tools/index.rst     |   1 +
 Documentation/dev-tools/pgo.rst       | 127 +++++++++++
 MAINTAINERS                           |  25 ++
 Makefile                              |   3 +
 arch/Kconfig                          |   8 +
 arch/arm64/Kconfig                    |   1 +
 arch/arm64/include/asm/compiler.h     |  16 ++
 arch/arm64/include/asm/memory.h       |  16 --
 arch/s390/Kconfig                     |   1 +
 arch/x86/Kconfig                      |   6 +-
 arch/x86/boot/Makefile                |   1 +
 arch/x86/boot/compressed/Makefile     |   1 +
 arch/x86/crypto/Makefile              |   3 +
 arch/x86/entry/vdso/Makefile          |   1 +
 arch/x86/kernel/Makefile              |   3 +
 arch/x86/kernel/vmlinux.lds.S         |   2 +
 arch/x86/platform/efi/Makefile        |   1 +
 arch/x86/purgatory/Makefile           |   1 +
 arch/x86/realmode/rm/Makefile         |   1 +
 arch/x86/um/vdso/Makefile             |   1 +
 drivers/firmware/efi/libstub/Makefile |   1 +
 include/asm-generic/vmlinux.lds.h     |  32 +++
 include/linux/compiler.h              |  10 +
 include/linux/compiler_attributes.h   |  19 +-
 include/linux/compiler_types.h        |   2 +-
 include/linux/mm.h                    |  10 -
 init/Kconfig                          |   3 +
 kernel/Makefile                       |   1 +
 kernel/gcov/Kconfig                   |   1 +
 kernel/pgo/Kconfig                    |  37 +++
 kernel/pgo/Makefile                   |   5 +
 kernel/pgo/fs.c                       | 413 ++++++++++++++++++++++++++++++++++
 kernel/pgo/instrument.c               | 188 ++++++++++++++++
 kernel/pgo/pgo.h                      | 211 +++++++++++++++++
 scripts/Makefile.lib                  |  10 +
 35 files changed, 1130 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/dev-tools/pgo.rst
 create mode 100644 kernel/pgo/Kconfig
 create mode 100644 kernel/pgo/Makefile
 create mode 100644 kernel/pgo/fs.c
 create mode 100644 kernel/pgo/instrument.c
 create mode 100644 kernel/pgo/pgo.h

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106281231.E99B92BB13%40keescook.
