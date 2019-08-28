Return-Path: <clang-built-linux+bncBDYJPJO25UGBB74MTTVQKGQE5HCYPKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB79A0DD3
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:00 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id t5sf1356760qtd.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032959; cv=pass;
        d=google.com; s=arc-20160816;
        b=qW16m0VihpgGTyYux7v/hxG4T5mRDOdHFd3dBH7yuBMvYHvDBJvvU2KxEjjOb5qJlT
         pHMjJwefX8Yx2BRziKV/Z6ZWj6cWsruYzqiyavxqbgdUZfoT/Q+Id4zzSIgYRpqtwfwK
         cYPyE2NMgJ3vLhBysJYuCQmVAl/V5sDVDOV+L1SraE6Fuoh4GPy2iGu5x9nija+N6CmO
         Oq2Xn2qIY1TeVBpiUGZBd3+0MtG4TZthGa6CNrMhCLAweANoccHL+jFgQw6kHKxdVAZ/
         Zu6l+FkE09V/KrRhmFDVL49BDR2rgEpfC59iEHtxYdp2uUNBwEU7VxUBAsRTHKXjqAzx
         qTig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=IU6FnOnfnS6IY23ysnZqidbbPg/3wBOP4OYiyHbNM58=;
        b=poFM7LiwlYwvi5LWFqTLkF94mQuP00PWKwxIQf8pDMvedlr1KojvzDFiOPpIlS1fdB
         52mcIMITvly2YLAIc9rUw7L2ndDgUdyb1+STPB5wzL6/6JDghh6UeS/2YJk8CQlN6Z/+
         KfvxRoUJxr61tXb51TmkgbLSlyzuSnD7Fjd0NPrwao99fMXY4jVUcfNYuJ4RrQhj9xhd
         ExPYhZUxORcfPVXiOM6RVCRZVBsq/DQR2i2RziOHELxp/46MYrLo3gD9hv6CcZXEsBhK
         lg0xALnTzrFiqdgulVyQeOO9A7oGtZf5FAzZXmn01F4bcl5lRyrqfOGrwGVgvo0EnCZD
         qXsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HJO1nrZs;
       spf=pass (google.com: domain of 3fqznxqwkabgb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3fQZnXQwKABgB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IU6FnOnfnS6IY23ysnZqidbbPg/3wBOP4OYiyHbNM58=;
        b=fzwFD0Acuz7SBcErebYBtVVNF7H0IUleiJKZJmpwqrYosOqZv5PmXEEsIy3wkOdaTQ
         MzzOEPEkArohGTvs01/9BoHKeHVBmDKcaLqIOrhOgDOhT/5XJkzagPlcWvfz3X5sYJo6
         Lcf3PG5NWMbkILhu82ANpcH8agv2cZ5Aopse/5C+W28jIwl4IG+jNikMi3DcAXrbxC9E
         luTd0V/M8SCz7t+6UsOHzAOaYizuBwmIDFBBmHvK4Z1+7uglRnZPw80rHhGZOfRtKDno
         ztK7SjrvmBs83opw92h3b5IAbLugG78rOVuLB6nYobbIS0kw5YDOOlIeNJjmga0ucY7h
         ipWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IU6FnOnfnS6IY23ysnZqidbbPg/3wBOP4OYiyHbNM58=;
        b=Yik2LPKK2DTbqyJ+CRAfkL06tkUnMFtb2KlL+Ou2cKe+eptlvoYSVGurTwRb+ENyBC
         umQArb4e9hFDC2LL6kB6cjX0lOBCEGU2OURERMXQSmBw2Ca2sIy74p05WBIapddJf8z+
         n3W3+ExKx/maBeRfmzRqrMhX1aCuwgQnAgHL3AgMk3HLMnqnrEdT68xbQ4j7ntrZZ1Dn
         Q71QfCGpmhxy0d4TgriaOBvtfvOBOOSDcqWYvBso9OVLsRDLm/uoxylUKan2I/INNM+G
         EnbxVMgg2zhwNBaFwkt7NSEkp3aJlN48c45Lts5BDO6QW7zwUQau1kKtdy2/U5lqjJ/6
         aBPQ==
X-Gm-Message-State: APjAAAVC0ahuf3kGObn27nSqU19mtYTVDxR7ikI+q8NZg9HCzPzpfIvO
	ludC6y5ksN5XKaYVT6WXUyA=
X-Google-Smtp-Source: APXvYqxvBP43/NrFSunUJ4s/Pwziozax52r1Rvrb5VHrcxCQnNR1g0Dt+2IJOAurjegNhWk39wV4Aw==
X-Received: by 2002:ac8:134c:: with SMTP id f12mr6785599qtj.75.1567032959435;
        Wed, 28 Aug 2019 15:55:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d4f:: with SMTP id g76ls228771qke.0.gmail; Wed, 28 Aug
 2019 15:55:59 -0700 (PDT)
X-Received: by 2002:ae9:e88a:: with SMTP id a132mr4661870qkg.120.1567032959198;
        Wed, 28 Aug 2019 15:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032959; cv=none;
        d=google.com; s=arc-20160816;
        b=yloB8wPaEYCV9DD3r4kReN40OmGE6eYZWp/ShQaqLAJjvb1/wEJTlIndIz1V3g4+U/
         Oqvdyazw4nzef0T3wF+FsO1VqBzi6mMC+eb/HJCiwb4mnPnZfHKs8bfxhXOznSNMVvJp
         ybosmPc1mYd+3sDXirprX7hXioNXyqcR4uYmCFNVhZIKoCkC95ZoAqsAV+BfHISl/+5h
         wMURUFr+ZqnWfnyt/IHtTpyZ4/YOo6SOdZrxU+o7GJr+KXFzYdxehnv2RMF8ueOMGjUN
         jNBHivjtiM3pCYScsopTPG7ix7WFzgbalbMDkHGaRT6uKbNX3IOKrwznHmh1MtZIZn/o
         uWrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=vmkPJV9jMrJwQvE5Ss1xczsiHeyIxtDKHz+ul9sH194=;
        b=JQNyRX3Wx8fI3MmEyi0vWn0L0kIVLHm9evVcOmxfpyvrJUntYv4IuOqmyFGkCCS0g3
         TpbMoJEeXBxp4zkWJ2Qcgx/DlIRk43r5vk9xNgbO/rNQQviJlxyVTO+EEzw2oXiSibid
         lBxSwMtu3K4FEM25xTkmoRs4r8VW5xOaaoR6WMn9ruzDvT3C4oUS9F27Mil1QLcTR6Kc
         j3n9w+AZ5EQila+Djr496Hl5lLjsyHXR0czsClWFiQ9P0HqHf1OwRCTwuQ3uYq/DiLbR
         wSBYyTabMh7EbSpJqI9gXYCrmKDNy4ZmvFck75i9YpSVUxvaHKuPb8xsvh96l8AO1IBN
         a04A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HJO1nrZs;
       spf=pass (google.com: domain of 3fqznxqwkabgb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3fQZnXQwKABgB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id a26si31850qtp.3.2019.08.28.15.55.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:55:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fqznxqwkabgb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id g125so1635091qkd.7
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:55:59 -0700 (PDT)
X-Received: by 2002:a05:620a:15f4:: with SMTP id p20mr6111368qkm.303.1567032957837;
 Wed, 28 Aug 2019 15:55:57 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:21 -0700
Message-Id: <20190828225535.49592-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 00/14] treewide: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HJO1nrZs;       spf=pass
 (google.com: domain of 3fqznxqwkabgb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3fQZnXQwKABgB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

This fixes an Oops observed in distro's that use systemd and not
net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
https://bugs.llvm.org/show_bug.cgi?id=42950
https://marc.info/?l=linux-netdev&m=156412960619946&w=2
https://github.com/ClangBuiltLinux/linux/issues/619

Changes V2 -> V3:
* s/__attribute__((__section/__attribute__((__section__ in commit
  messages as per Joe.
Changes V1 -> V2:
* drop arm64, arc, and sh patches as they were picked up by their
  maintainers.
* Split the previous V1 hunk from include/linux that touched
  include/linux/compiler.h off into its own patch for inclusion in
  stable, as it fixes a user visible issue.
* Collect Acks and Tested by tags.

Nick Desaulniers (14):
  s390/boot: fix section name escaping
  include/linux/compiler.h: prefer __section from compiler_attributes.h
  parisc: prefer __section from compiler_attributes.h
  um: prefer __section from compiler_attributes.h
  ia64: prefer __section from compiler_attributes.h
  arm: prefer __section from compiler_attributes.h
  mips: prefer __section from compiler_attributes.h
  sparc: prefer __section from compiler_attributes.h
  powerpc: prefer __section and __printf from compiler_attributes.h
  x86: prefer __section from compiler_attributes.h
  include/asm-generic: prefer __section from compiler_attributes.h
  include/linux: prefer __section from compiler_attributes.h
  include/linux/compiler.h: remove unused KENTRY macro
  compiler_attributes.h: add note about __section

 arch/arm/include/asm/cache.h          |  2 +-
 arch/arm/include/asm/mach/arch.h      |  4 ++--
 arch/arm/include/asm/setup.h          |  2 +-
 arch/ia64/include/asm/cache.h         |  2 +-
 arch/mips/include/asm/cache.h         |  2 +-
 arch/parisc/include/asm/cache.h       |  2 +-
 arch/parisc/include/asm/ldcw.h        |  2 +-
 arch/powerpc/boot/main.c              |  3 +--
 arch/powerpc/boot/ps3.c               |  6 ++----
 arch/powerpc/include/asm/cache.h      |  2 +-
 arch/powerpc/kernel/btext.c           |  2 +-
 arch/s390/boot/startup.c              |  2 +-
 arch/sparc/include/asm/cache.h        |  2 +-
 arch/sparc/kernel/btext.c             |  2 +-
 arch/um/kernel/um_arch.c              |  6 +++---
 arch/x86/include/asm/cache.h          |  2 +-
 arch/x86/include/asm/intel-mid.h      |  2 +-
 arch/x86/include/asm/iommu_table.h    |  5 ++---
 arch/x86/include/asm/irqflags.h       |  2 +-
 arch/x86/include/asm/mem_encrypt.h    |  2 +-
 arch/x86/kernel/cpu/cpu.h             |  3 +--
 include/asm-generic/error-injection.h |  2 +-
 include/asm-generic/kprobes.h         |  5 ++---
 include/linux/cache.h                 |  6 +++---
 include/linux/compiler.h              | 31 ++++-----------------------
 include/linux/compiler_attributes.h   | 10 +++++++++
 include/linux/cpu.h                   |  2 +-
 include/linux/export.h                |  2 +-
 include/linux/init_task.h             |  4 ++--
 include/linux/interrupt.h             |  5 ++---
 include/linux/sched/debug.h           |  2 +-
 include/linux/srcutree.h              |  2 +-
 32 files changed, 54 insertions(+), 74 deletions(-)

-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-1-ndesaulniers%40google.com.
