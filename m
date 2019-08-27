Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNVKS3VQKGQEI2YMVSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0597B9F43F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:24 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id e18sf227856pfj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938422; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z++AaqIJYXRyKC2qwg6fYRUxue+gK5iUOsw2eidR8P9ONYXHSCcGqwrQ7nGIYA0/F5
         wAj+jtLfRotkx/BQ/K623uqDDDKfbbsJJtzy4k7xkDfmrXaPbS7d2yI7aeD3DC527oh/
         H4//Dli1PmSS+fo6d8rN0gQnQQh4x0UgtLxQEIsej6dozbdOSZcs91iuS2SwGtKGz3pP
         KpT4vTtfB8AWuPyjzSLamX2RpeZR29jMEnacTmic63YBPsm/05rdzHrtU19sAnmeOhym
         70i0nOHUERaw3mbvuWkC38jjo8OhASu6sNdKgHGdDPUSemCDr+SdTn+q+ZHP1NkE++X7
         ia5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=cXSTMpskd5gwykaZIJ263auLb5JRKwKJxly+5/v4pC4=;
        b=Cw9RTgpw+B4GY4mv9iVT3PguIu4JpuFJ3ZYtJkXIqzb2nSh8ExzTlqEambRsCe2ccr
         Q4LgJmO7Dnb5h284SVZL4xEGOGEYhlhZ9ASvOpRJT+/EYsDZmiJibfaT52jISBIjzA88
         CDsd+VFhr9OMUrXt8M0u6N03Mqs+EbS3nBD58yOEPPu/q3y4ntuYqbTjf191zrV4eN1L
         Pu30rSYzpmLP7b067hKKBPNgg639hptMigjfm/BsEHy2Eo04TH587pxXwGLKFfdK1/E2
         3HTNsEXDLEL+qYx5xl35qIu+TWG3V3221lwCy62CszuWV22k6VNqeteO0dV8IlgZDxlg
         aCTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tdNIo6KM;
       spf=pass (google.com: domain of 3nzvlxqwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3NZVlXQwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cXSTMpskd5gwykaZIJ263auLb5JRKwKJxly+5/v4pC4=;
        b=BextsLl5UGYyYNzZRqvikDmR82cKqqYJCiV+orTA5lOLzu0/nAPiWwRVVu3P6K2z1H
         REy7jVHxGLleSfDIAeL3ftuyMoYrG+3dHflHtwi53jO4mfIU7u0JyZyfKbGB2E9owjQX
         XuGgnRwf8J3MDoiul7nFeaZ8c2Qlxg0ZlcWWdVLXBXEGRecWMiazSaV3DiXjjHPiqQne
         TQM9h2NUKJ6I4Yo8KSNiW1bkCUqgD9W6JnhUc8KrdmRzYREushk3VJSznWuSjY4NR8+H
         1PGhfGwe8Y6Nu/QFMqB1O9S3sguZ3SAdGf1oePk/Y2kyBWuQ5Ap8anNZ4iaInnM1bNTB
         oS8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cXSTMpskd5gwykaZIJ263auLb5JRKwKJxly+5/v4pC4=;
        b=L9fB4DZmUfIGX4QCo4DtzSnIjSnnTrrzIlLGvRi8EpnOYGgQde4Xx/nRnrV8mtPPiz
         AY+gH5fRHHtk94CrvAUxncN/8RaqnuKKlFF329OkcqQ7uNNG3iLKcB24bwTudxCWkFCr
         7k78/a1WEowG59cuWH6Go+ktyjwTDEXf/LBPDBA2Rl10+mrC1vWwEp65DEPPwVeOF48N
         WvJbsj1sXwciE/yGueHLJe0G9HZUHYS8iE61QK2x8voVJyw92/1vQHDMfYJPAC44ufLd
         cdf30b5+6HxNBAl3rRzSuUbj2iSsLUkF2WFbjPcn7ck8yixrxruTnGWwvUV0L99UGX3D
         blCA==
X-Gm-Message-State: APjAAAXUozj8fzWMeWWxyDVnvyzdP3u6D+Z4cyOX/jS3Dc0hAd6g1uMT
	wQCEdCN+2y9IO9Q3D9Rw+yI=
X-Google-Smtp-Source: APXvYqxEZN/c3WDaTf67/qI23+CPsbcXc1dQnjcY3p3coC7od07LMdwUcAA46bXqyjzHqHBGuZWzpA==
X-Received: by 2002:a62:db43:: with SMTP id f64mr472762pfg.38.1566938422722;
        Tue, 27 Aug 2019 13:40:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8209:: with SMTP id x9ls69664pln.3.gmail; Tue, 27
 Aug 2019 13:40:22 -0700 (PDT)
X-Received: by 2002:a17:902:7d82:: with SMTP id a2mr825500plm.57.1566938422339;
        Tue, 27 Aug 2019 13:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938422; cv=none;
        d=google.com; s=arc-20160816;
        b=L9n7tq3kglbnhMYTEuOWA6iVxapJ8rxx/9aHTF2/8PGuyQUcRzflIIT3a9Mbkm/wEP
         O0l9uCGvUR12+ZKQBrqKEg4qyP1p0w9pJ2MdNFiU4BM02rLsj9AnFMY8VBPd1M914a6Z
         lUkIDwng9GAN1/Du0BuG1rlk3wtQ8fMu2mWAFmMGrp2YzzyUcQ+VDEURZfD87PvcbsMW
         3YwMzmEAMp8SdAfmUNv2BsXk+sVeh/dlrj7eREXE5hvDk3wdkv/X0HuVSWWYvyxtUlAY
         QJWnXN9Lfd9gUZ71YMg6VxrMnFxZDsxORzX49Yl30I0NG/sZFqJcKbEuRC4GCEpfX7yd
         UJfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=3W7eRAky0SO34aDoGgthEg6qM+hmUITULPqAHpZ+WVQ=;
        b=pXzo0iAFDAabQrGd0L1a6vCKYJTCMYBrrkeObvLHkQ334ApXFecwRldJyVBwpc2TNj
         xGDfxICOOXmk63ry7cNNTqMq90wdC4sfJwEJ4sE9de0AWtWSGXbjo6NQdVb5wDlb33pb
         Q7tHoyDMeQt64FqdovTGtuE7MdtNSqeM64si4sY222Eykyt4IF9CiIL8hoh4mN+tJt/e
         8YBfLRbPMqOOv33R2WLQ3OvO4euJHVF6d4WLH5q9dihymwQmYYpOKrYU5ZdceDwagHNS
         qjaU4hHToU9OA8Sqame4dhEng6jxXmDZSxltY1wO3M4Gfl5auG+C+vwo05IJcYUqZYx1
         Qjsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tdNIo6KM;
       spf=pass (google.com: domain of 3nzvlxqwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3NZVlXQwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id h14si35820plr.2.2019.08.27.13.40.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nzvlxqwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id c14so197399plo.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:22 -0700 (PDT)
X-Received: by 2002:a63:d210:: with SMTP id a16mr272406pgg.77.1566938421663;
 Tue, 27 Aug 2019 13:40:21 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:53 -0700
Message-Id: <20190827204007.201890-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 00/14] treewide: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tdNIo6KM;       spf=pass
 (google.com: domain of 3nzvlxqwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3NZVlXQwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
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
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
https://bugs.llvm.org/show_bug.cgi?id=42950
https://marc.info/?l=linux-netdev&m=156412960619946&w=2

Changes V1 -> V2:
* drop arm64, arc, and sh patches as they were picked up by their
  maintainers.
* Split the previous V1 hunk from include/linux that touched
  include/linux/compiler.h off into its own patch for inclusion in
  stable, as it fixes a user visible issue.
* Collect Acks and Tested by tags.

Nick Desaulniers (14):
  s390/boot: prefer __section from compiler_attributes.h
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-1-ndesaulniers%40google.com.
