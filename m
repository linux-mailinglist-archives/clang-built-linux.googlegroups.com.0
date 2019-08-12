Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTF7Y7VAKGQEXVMLBOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C78C8AA05
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:53:17 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id k1sf28202881vsq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:53:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646796; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZFQhMslqKSjy0KpiQATAmIB/DITxNmJZpgke2TcypxU/CZEgZDaFbv0Ic0cXEgyP5h
         h3Uc3q6pKuOqtUOFXBVd1PQVjuLWJSnXDJN0SR4BOA8WaiKEF50GRSt0qaRPEVFlVhk1
         xdP0NC5BtOLcAAhSAOWt5ERjzKZ+peof7H1p4/SW5F1gX93XookwKdUuZMdOrJl5q90a
         dxUAz+SKdphnC+CyQBNfPWbn8RaKHOOouqu39x874zL5LNRRuTML0X192Zpl53djLAAV
         CpM0k8qMe/iUpyKSdACUsWR6W+l4xURpkgN9QMEneq0ArQTLV5ej80bXMOpTqAjZFklw
         iiUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Po2wlnXeJv259gGobjh4Nlb1+tZYuvLLiqWOQaCmLcU=;
        b=IXCe1OnvrAKzdZeZhjRlXuDly0RCA/Pr4TLErdejQXYk7x0+rbXHB/DHOvF8bRZd47
         s22MMu6KZg8eW6qumSa60Pkd3SQJOUBqGWDw8X8zGqFq67DCL1CsJ5UUwDpYyUQBZRLT
         GD1ZZ7OMO3zQoq0U6Gz9XHDXHTfyZGdatcq7P080KMJiqhLc9wXw6cwORRB0C/aCnSTJ
         /XrUR6Q7qQZR0s6FnYlmJzvQE5B+MIETNYDtdvkWTuJYc8lQMgWvFiEzUVGLvudv95qG
         n/h/iNw0/mxZhjp0DnY90D9DEFkf53+bpYZbbZIW9eVGVsJOzUFntsQuj6rjGYDHYPgL
         M68Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hNh20e8y;
       spf=pass (google.com: domain of 3yt9rxqwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3yt9RXQwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Po2wlnXeJv259gGobjh4Nlb1+tZYuvLLiqWOQaCmLcU=;
        b=M9hclnGE7HivKx/iEs86ornaOdfSywIyqTww2rHF6UErSLcMJ6HXBOzPlDvqhojJj7
         4SknrphOlTTy3rME+HT5P5ScYdrP1XeMlppOqHHRoYBw7Ni6hNkpcivWzC2/4UvFR3FK
         hM9AzAD49pr88hA3DMMu7V2YUaeP4KfxHrh3qRuKaa2w95/wfdtAyI1FNKYMkZmYkbjj
         Fxhk4J7+kaOjcQb/czy9RkFONtXQIYPcTxulj741MzlJNARCTdZlnWVPsM2imDqptTbR
         Srnbf3sBNDRsvro/L1xXsBzp46lvIH3o2CCPCuxk8Q6yWMAn4I4VsyzDVKL+oOYd+7zt
         fuvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Po2wlnXeJv259gGobjh4Nlb1+tZYuvLLiqWOQaCmLcU=;
        b=ZGtGRsCpL6Tf83N4BaZzp8pB6ixejolqdaeTBTF2boxs3GndJgQB6anComuNVNcTQK
         Z49jDAvIawXqGmGdM1DhYb4YWulStEkFuavLh/9Ep6Yu9ZUZeZ8Fk8nOpKvqQlStnh+K
         c/2Zgn29L3GPKfXulJ5MTjlhON0g8ldo5OhSVwLY/x+0iTEuGbuv/u0Lgn1IF2bgpi5e
         +j4O/QfbwIq2RNg28/8QVaSsTp7Yw+9sELhqPpehI/+GqyanVBgV45OhLxml3JB1s2or
         +OXExwzlomE4Nw2vwaYhe5LDbITex+yfMNrBBqbiAt/h5dyoz90VGU/13NJUnZfNXZcl
         acyw==
X-Gm-Message-State: APjAAAV8xqH21bfn6kjcr94EWRHpyVFfLbtKRGtJKXDFUhZXya/WFmYJ
	Cl6I0ZArRAuSpgjoUDvlHU8=
X-Google-Smtp-Source: APXvYqwy2qyoIELqonAfAcOBRDqoFsT4Y1trQEgFFE54AkUwiMKIlycD0MQbzN6ceU1GzPqP8d/1eQ==
X-Received: by 2002:a9f:3806:: with SMTP id p6mr19334544uad.21.1565646796130;
        Mon, 12 Aug 2019 14:53:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8e47:: with SMTP id q68ls1634783vsd.10.gmail; Mon, 12
 Aug 2019 14:53:15 -0700 (PDT)
X-Received: by 2002:a67:b908:: with SMTP id q8mr14224318vsn.67.1565646795915;
        Mon, 12 Aug 2019 14:53:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646795; cv=none;
        d=google.com; s=arc-20160816;
        b=R8AybqfJe53c6DEuaO2OIgUswfmLzPlm0oxZCjIYQIVkzLmxhOqAPYw9S6nM4xTgUC
         dEaoPoT1e2kzuBN4r9GC5hwOe0psguNqTVqQCiUGXaA0PTnNDkBpKuySVA0IFaOmLbwO
         pIR5sf/7DMqzR6rn+4MWWwW2Ua8pg2O3GN7aA/VGZDfbzfZKg7YStw2JPIVWSZ0kumAY
         KT10lw8VE0bcQ446afE3egO6ze1ryEu81Eq+H/WUIBUR/0bIvpRHIfuBIGXyinhTM5FG
         gls0ONJadyBo94zYHoPowbKfaciITZXySwHSC2kSK2IcPkegYhau08gd9UyPgYet+K8N
         GSZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YgAdSQNQK5RRSuTOz4Q5BGZbFQj3edcVyfEz3s8S5aQ=;
        b=U/Gm3NWRfqsyZiBcjgb0jNcKkGJwZEq+ikX6HhGQtnxfUcgCM2ftMr4DPUP2yTrG/h
         r76+DG3AKlvBffxDbwelglXgbgMnzwYz49CMgRkQc7zfkZJMV3RWE1nDZPBez13pNEh4
         j/uBWo2tEh6ABPddzaioiSM8P3EWsvcZgovW3pNlEBmW/Nml8xEsfQHgOcbuHP17NF9h
         TLolftEPlgPiOiqaNBWNFptm5uw8qrEk4mJC38aF7R5hQu2e54rMWH0vxwb7WidHiApf
         L4qn0QvOqzFhXZiQAYrUmY4TaTbcJCILFqwtmsEYfTTb1Ryn6wOx1/+4ME2p1M49f3dB
         a8fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hNh20e8y;
       spf=pass (google.com: domain of 3yt9rxqwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3yt9RXQwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id c10si475581uao.0.2019.08.12.14.53.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:53:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yt9rxqwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id y66so67077131pfb.21
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:53:15 -0700 (PDT)
X-Received: by 2002:a63:f94c:: with SMTP id q12mr31466728pgk.10.1565646794664;
 Mon, 12 Aug 2019 14:53:14 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:50 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-17-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 00/16] treewide: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hNh20e8y;       spf=pass
 (google.com: domain of 3yt9rxqwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3yt9RXQwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
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

Nick Desaulniers (16):
  s390/boot: fix section name escaping
  arc: prefer __section from compiler_attributes.h
  parisc: prefer __section from compiler_attributes.h
  um: prefer __section from compiler_attributes.h
  sh: prefer __section from compiler_attributes.h
  ia64: prefer __section from compiler_attributes.h
  arm: prefer __section from compiler_attributes.h
  mips: prefer __section from compiler_attributes.h
  sparc: prefer __section from compiler_attributes.h
  powerpc: prefer __section and __printf from compiler_attributes.h
  x86: prefer __section from compiler_attributes.h
  arm64: prefer __section from compiler_attributes.h
  include/asm-generic: prefer __section from compiler_attributes.h
  include/linux: prefer __section from compiler_attributes.h
  include/linux/compiler.h: remove unused KENTRY macro
  compiler_attributes.h: add note about __section

 arch/arc/include/asm/linkage.h        |  8 +++----
 arch/arc/include/asm/mach_desc.h      |  3 +--
 arch/arm/include/asm/cache.h          |  2 +-
 arch/arm/include/asm/mach/arch.h      |  4 ++--
 arch/arm/include/asm/setup.h          |  2 +-
 arch/arm64/include/asm/cache.h        |  2 +-
 arch/arm64/kernel/smp_spin_table.c    |  2 +-
 arch/ia64/include/asm/cache.h         |  2 +-
 arch/mips/include/asm/cache.h         |  2 +-
 arch/parisc/include/asm/cache.h       |  2 +-
 arch/parisc/include/asm/ldcw.h        |  2 +-
 arch/powerpc/boot/main.c              |  3 +--
 arch/powerpc/boot/ps3.c               |  6 ++----
 arch/powerpc/include/asm/cache.h      |  2 +-
 arch/powerpc/kernel/btext.c           |  2 +-
 arch/s390/boot/startup.c              |  2 +-
 arch/sh/include/asm/cache.h           |  2 +-
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
 37 files changed, 62 insertions(+), 83 deletions(-)

-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-17-ndesaulniers%40google.com.
