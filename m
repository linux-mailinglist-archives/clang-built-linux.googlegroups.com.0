Return-Path: <clang-built-linux+bncBDYJPJO25UGBB27BWWEAMGQELHR334A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF8C3E2EDB
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 19:27:08 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id p7-20020a6b63070000b02904f58bb90366sf6239701iog.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 10:27:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628270827; cv=pass;
        d=google.com; s=arc-20160816;
        b=M93j9T4nB0epMgqCJSmqWEZf3hPus1hG0j7/4m2zfM02PfRhKq60ZYNUIx6cUlcklR
         sfBsYgOGDQZv+lL2Lf0YNgC/WejsIFnXi0GTFb92uCaMTc6uyrQy3lWqMYv3zW9Pk6N1
         k34JLNEGdERFD3yjLjt6NmBAc64RscMRlk17K91HxEu6GyBUO88Z1CjERh/++TVhept+
         0v0zf25+cUMfpe+lHCHCBFIUupLttpCEduk734iLBvRFm+C28ZDPDyhhYURjv8m6qwfN
         O85k0XN7R6JzyBgAUfd9X8erZvyRiuFSLTEUsNwR4xRbNbkSNH6xD5b5SByWN6V1F7Ld
         U0NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=62VA4Uhb9d02aKFcXePRNagheAup89WaowxtA74c9Zs=;
        b=xn1OFe6KgjQr/Ht5RC08qgDFNvVTIgBQTVOc1ylSCwzf4jrvNVpmAmMlkFp5ZVP2IB
         c9M9ZwvlPSeUZHUInxOfGLzOQez0blF+2VHSgJ5gxPo4RU3Wz+22hUVG6pvfXN58zPHV
         UdkvnbyojjfqIiANHdZlohd7KVl31LoN4x63Xk/q9B6IiD4VDBPPoG8TZJKdNLytJSg0
         7PeWimPt59yaB1osJd97iFtcKTO74LVL2WTtCSD7yr7tbUjI7ZMv/c6TMiqFds1CIooZ
         kpGvRMqtabUyKeTvtxhONCG3R0Yl2k33uxPT9PAgoWVFJoKWsX5/dtDRJGEl+H8Ex80J
         dS3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SLKP8QT3;
       spf=pass (google.com: domain of 36nanyqwkabe4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=36nANYQwKABE4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=62VA4Uhb9d02aKFcXePRNagheAup89WaowxtA74c9Zs=;
        b=nuaLZ4XXhalWs+Nwxiq0fhKJuQ46d5H/iLwYHboVrmm3pUhdaQ/f7IM7Vl2Z0JOX2g
         lt7eEQ1k9nlyOFUz4YwAzhcvle3X4qkZeBoObz6EL4tn1IwI0C4Cw7VwsHiZnbi4L7My
         os05W2WvXAgfSm771VXVfKO3OLOfFINq1AevocnLPsvyHqHSGkYxrarVzjaRVqsYvWmu
         /1Cz5TrGZRirPIlbVnZmNRmLLTcmkelPHmtgYQlXnx30SNHmGGjvyulnZtfl4yjmUsbO
         u4mGEkMfBsL4DpmP9s6+J+tHYAg4XHLM4CGzusOUoEW8NHP09VMrMbr4nen1Y0Cno47i
         0mUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=62VA4Uhb9d02aKFcXePRNagheAup89WaowxtA74c9Zs=;
        b=bgaAyL5SIz0p9jvy6/+OdHXFlJ8UVBPDlw+atMy/ON0iYNVHoNpNkjbpnY1o7SsWb5
         qNk7+RYA/YL+jgX5SLg4oD779DJvfOyWvTw+dNxE0W9hG/fXk8i9D8qFnuY39siBL7tx
         eey1NFf7KRhNNrKpzj3q+D6oh5m8j0kmUWfmfyMJ4DfRpGSpJPbN6SgqHHjNLF72z4RH
         IoqbVjLwLk3mvqWX+ZK1SfrOFc26CQ++ZZQSc+XCpnm75eGWopfltUKIsdL4pEYUJkXo
         EcGz+DA/rMTsrmlPJDG0L5dbibv5s7DIRZwxlXRV77hN2JPxmCP3ezNVEydxvsAAkA/o
         CenQ==
X-Gm-Message-State: AOAM533L8gYKyhUoRlAlcUeK+STTsh+ltOJxaaXN4NICOgfntHSd6LZP
	zwK8Jr0+/FROufMmrqqPqxo=
X-Google-Smtp-Source: ABdhPJxNgrZhRUmvgsqpSQJ4BuohTBjlkS+RlZy+pPCxweNJNinv8Gvis29LnWff9O1MqMAh0V/VGA==
X-Received: by 2002:a92:d9cf:: with SMTP id n15mr109631ilq.307.1628270827445;
        Fri, 06 Aug 2021 10:27:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:178a:: with SMTP id y10ls2113653ilu.7.gmail; Fri,
 06 Aug 2021 10:27:07 -0700 (PDT)
X-Received: by 2002:a05:6e02:b4b:: with SMTP id f11mr724754ilu.130.1628270827056;
        Fri, 06 Aug 2021 10:27:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628270827; cv=none;
        d=google.com; s=arc-20160816;
        b=YwmosBTYSE3kqLteEo5ynhdkrbSvmf2djm4usMaR6dC473/W6pZrwUbuOqdYSQfOjQ
         0fCJPr8otZreCh6Gw66LRNJudgn23qaWn87EvXfDFpxawoeHKvrqJXTWcBUPs5kWsSWK
         TLwRhcW95VKvX5gg5zLaLI8oYHvOxtg5NwZX3EplPfJuk25hdq15rvy2x13lDL6jMxga
         8E+9Aa7vX5lnvAArvdjj7zHjs7jnW9uVYIqoURFv3+MyaSK2wWrhyL48Catmh6QhCs/n
         GkpqI7L1zg6+gcwbWx9Bi0yNdvtQ6rN1hO1qPEcFXQf1ny+0Wh3a1qcBwwSqBbn3MX8J
         C81w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=DsQFy/CzTnQXNoNOJwZLuGXsmdWykdOYnmIA1IAJYnI=;
        b=iLK/Duv3l3HtB37FKHjKcWLIyfODrjQN0Fg/9oyBvgcX6XbKzTiJt0eWzlIZiRT6br
         itfBeAe9gAzQcc8wanosFZAZQeKoJqPpanLffrQAx5uWgQlhfsJxihcJwWhDK0ypY1jY
         MBqJCV1Ru5zChKXUygMcaYOGJXH0iZd4U4clI/U9AESgCBqcRxgZaNSmhcFWxDyuNEMf
         MJJwMWF/XfTlscvcGYtjQRyTru9nQCzqNhJwTdrko5JpBUYDE+L0wUS0LYtUGnYMwYU0
         iiwSuBCrQiT9MoavS1QdBztM7I8NGrNzeHczvOzSLBcWwOcPHvXtw0eHUVqJ8vCiQcWu
         ucdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SLKP8QT3;
       spf=pass (google.com: domain of 36nanyqwkabe4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=36nANYQwKABE4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id o6si403180ilu.0.2021.08.06.10.27.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 10:27:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36nanyqwkabe4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id h186-20020a37b7c30000b02903b914d9e335so6639612qkf.17
        for <clang-built-linux@googlegroups.com>; Fri, 06 Aug 2021 10:27:07 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:d20b:bb87:51cd:edc3])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:27e4:: with SMTP id
 jt4mr1006501qvb.45.1628270826503; Fri, 06 Aug 2021 10:27:06 -0700 (PDT)
Date: Fri,  6 Aug 2021 10:27:01 -0700
Message-Id: <20210806172701.3993843-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
Subject: [PATCH v2] scripts/Makefile.clang: default to LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>
Cc: Khem Raj <raj.khem@gmail.com>, Matthew Wilcox <willy@infradead.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SLKP8QT3;       spf=pass
 (google.com: domain of 36nanyqwkabe4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=36nANYQwKABE4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
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

LLVM_IAS=1 controls enabling clang's integrated assembler via
-integrated-as. This was an explicit opt in until we could enable
assembler support in Clang for more architecures. Now we have support
and CI coverage of LLVM_IAS=1 for all architecures except a few more
bugs affecting s390 and powerpc.

This commit flips the default from opt in via LLVM_IAS=1 to opt out via
LLVM_IAS=0.  CI systems or developers that were previously doing builds
with CC=clang or LLVM=1 without explicitly setting LLVM_IAS must now
explicitly opt out via LLVM_IAS=0, otherwise they will be implicitly
opted-in.

This finally shortens the command line invocation when cross compiling
with LLVM to simply:

$ make ARCH=arm64 LLVM=1

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* Drop "Currently" from Documentation/, as per Matthew.
* Drop Makefile and riscv Makefile, rebase on
  https://lore.kernel.org/lkml/20210805150102.131008-1-masahiroy@kernel.org/
  as per Masahiro.
* Base is kbuild/for-next, plus
  https://lore.kernel.org/lkml/20210802183910.1802120-1-ndesaulniers@google.com/
  https://lore.kernel.org/lkml/20210805150102.131008-1-masahiroy@kernel.org/.

 Documentation/kbuild/llvm.rst | 14 ++++++++------
 scripts/Makefile.clang        |  6 +++---
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index f8a360958f4c..e87ed5479963 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -60,17 +60,14 @@ They can be enabled individually. The full list of the parameters: ::
 	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
 	  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
 
-Currently, the integrated assembler is disabled by default. You can pass
-``LLVM_IAS=1`` to enable it.
+The integrated assembler is enabled by default. You can pass ``LLVM_IAS=0`` to
+disable it.
 
 Omitting CROSS_COMPILE
 ----------------------
 
 As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
 
-Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
-``--prefix=<path>`` to search for the GNU assembler and linker.
-
 If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
 from ``ARCH``.
 
@@ -78,7 +75,12 @@ That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
 
 For example, to cross-compile the arm64 kernel::
 
-	make ARCH=arm64 LLVM=1 LLVM_IAS=1
+	make ARCH=arm64 LLVM=1
+
+If ``LLVM_IAS=0`` is specified, ``CROSS_COMPILE`` is also used to derive
+``--prefix=<path>`` to search for the GNU assembler and linker. ::
+
+	make ARCH=arm64 LLVM=1 LLVM_IAS=0 CROSS_COMPILE=aarch64-linux-gnu-
 
 Supported Architectures
 -----------------------
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 1f4e3eb70f88..3ae63bd35582 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -22,12 +22,12 @@ else
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif # CROSS_COMPILE
 
-ifeq ($(LLVM_IAS),1)
-CLANG_FLAGS	+= -integrated-as
-else
+ifeq ($(LLVM_IAS),0)
 CLANG_FLAGS	+= -no-integrated-as
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
+else
+CLANG_FLAGS	+= -integrated-as
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)

base-commit: d7a86429dbc691bf540688fcc8542cc20246a85b
prerequisite-patch-id: 0d3072ecb5fd06ff6fd6ea81fe601f6c54c23910
prerequisite-patch-id: 2654829756eb8a094a0ffad1679caa75a4d86619
prerequisite-patch-id: a51e7885ca2376d008bbf146a5589da247806f7b
prerequisite-patch-id: 6a0342755115ec459610657edac1075f069faa3d
-- 
2.32.0.605.g8dce9f2422-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210806172701.3993843-1-ndesaulniers%40google.com.
