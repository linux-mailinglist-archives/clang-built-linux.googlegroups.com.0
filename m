Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7NVXTZAKGQEKX2T57Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FFD166B2D
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 00:49:18 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id m29sf102223pgd.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 15:49:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582242557; cv=pass;
        d=google.com; s=arc-20160816;
        b=PP7FrBKf7GdV/DWjriYqFY+rxtsEwAu2ExOrvC8IX48ZlqVFDF8DoF6d06HbacqoZh
         vy1DTIRnwJFgI9tGzQAHrEqGfe4sc0Dx8oUenSGoH+MGs9HOwhlQNct/tYIjiOBYWCB9
         Tr9YjU36peSW+3BUbow2uqhwJdsST52BvZOEzIWocFiLPvGObtgEEn3FmlDgmb/vMzVr
         hG6NPlpKiJXidsMGxYnM8cunLgH4V5GqH64hIR9BCG/zuXwWvJ/bKuf41dbowMKfVvni
         J5Aw7dQi8ipOxDl+FhI1SEv3GO8/hWbBWC1nj5pKUegwxTuva5EMeDQ9qGX3zyjdVfxV
         Brsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=XJ0k1rFHa78E0IFdl1bnVa5WbWF8TeYhxK5t4Cc3xGQ=;
        b=YGWThSrFiX0WiWGjXz0xmUUqg6YIXJj7GCio1/orp+Hbv7jpZ1VzGTs80Gt/5RR0vy
         PBOJqFArq1tragzUvPhH+cB+py007/X26wZvYkk69hyjujkDTQM4YIPrfeQKsBOT07q+
         jPwgXQYn4awrUIxXqeF2wXhuP0VIRrKjMSrVIaLOv6oygsiyc6zVX+iOcIwWevZtbSpf
         la3+WxTf1TD0DlvhAy0bUg3y713vl1CSpc9kdQAUxEUSJZCCo166QG+Cp1Fyle+WrxKp
         3yBwgBEZi88Xt+afMkym7WwcLFiX3qA7s29oMFmyBhgbrd5F6XB9Y463Yo8sY3rebgr3
         dYxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V3eSzUQW;
       spf=pass (google.com: domain of 3_bppxgwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_BpPXgwKAGcSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XJ0k1rFHa78E0IFdl1bnVa5WbWF8TeYhxK5t4Cc3xGQ=;
        b=dxiesxw2J7LM3muqLUB/qHTYRv82KgSbApYCrWhP9OrpSBPrRWv1k5/XrWeFvjh6d8
         rOgiLk+Nl0WL8HtmQgA4tVNE2P2gVdDzyvfFTl6gn3oXgM73ZfGB9of/yyIfCU6fjeYg
         qjEiK1KgAdIVHrWEDb1lbHU/vmiPqrAi5litxY3ljBDlRRKZDv00jGQP9C7BJ6e776CW
         jWaFqjDsQx6n/JwP+0+J1FVWnf23pu0AxBA3/21am3Md11t7kb7/KPIlNX/nX75RDM0D
         Qtnj2r1PbPifVvKFui4+cDQJrlrPSxctbej7otU17x+JjIXdWBu1Cx8TX7CHbJbppgLX
         6VQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XJ0k1rFHa78E0IFdl1bnVa5WbWF8TeYhxK5t4Cc3xGQ=;
        b=YispCjyKJFrXRi3d2EO8G3Qr2TCmY2gZZ2dPAazeaupuhd5TOdn1aH6/Rwu+dsHK/P
         xLLyf/Tqp0MSayuPajqj+8hm/EKlDZ4YWdYGg5rx/uwLtfWc2n3OJNcBb4tnHKR2jEL5
         IDWbr/kDHwYyx7oU2cCeqdaiif44dvc7w0Z73UqrWQ86UCMgWPSYFVobgHhykOAl7BWI
         0v77FwtLoDwzi2aU6HkzbuNAeXy7ZfyM3Vrt4XK50KpNwpbRhmj6avCbNyvbCLrJWgc9
         +65/9rVdCjwGGtntkbbpqH87nt1kdepqz1qKjAwuL+ClQvvLqN5Tg51xlGfUu9ad/BKi
         8CAA==
X-Gm-Message-State: APjAAAU3DBcaC/O7lmFNV6lOVFuYjwl8jF7JNKlKHKOVnQIEuOb8O6HV
	EoHio2IUA0IjC5GGbwabzoU=
X-Google-Smtp-Source: APXvYqyTzaUmWfGuS+Tmt7vQM2MdnOndz5PBvM5F6QVbBPan4ZdomkdPrkqHo8/eZ8dhNMvANONkVQ==
X-Received: by 2002:a62:14e:: with SMTP id 75mr34913163pfb.54.1582242557285;
        Thu, 20 Feb 2020 15:49:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:a54d:: with SMTP id r13ls74412pgu.4.gmail; Thu, 20 Feb
 2020 15:49:16 -0800 (PST)
X-Received: by 2002:aa7:9ec9:: with SMTP id r9mr34677723pfq.85.1582242556800;
        Thu, 20 Feb 2020 15:49:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582242556; cv=none;
        d=google.com; s=arc-20160816;
        b=ufKTPjLQSBsqbs0GBn1+lyooqvQm7IQVLDBD7QoO7N5nuYrLEYRi96Z7zFw9U0tUyj
         o2qgqABRXMxnuTI8A4WZLUw2Pwge83ZTRtIX8RPR09v8JukVYljHbayYbON0kMy5x7k1
         UUamwWYfjtnGWE4b0qsOwGaMq1cZvF25RX37I9dMvio9fVtpJDEVs0DB6ch8w8ScUXXH
         GXGamR6aawmf6rkUkcgP3yWTzUsdYvX9ftmf+hlsdk0Jvl6wqYnJqUCB87Kaxvvjbiuy
         AoOaeThvMEtwvipRC8Po8rGrqw8dzWcXbJRbID0j0ZV/LrDyvmNRt5n9dcWlyVgPi0UL
         +v0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=3rI8V+Zpp97h13lrFIGbSoMsYrhmecoYe5kH1pAqfGA=;
        b=OGwYJxS9Q3oL/DEm30cZcKS0IiS08DduuKKT2t+LpNhFL48C8ANv7CZvl0YOeRHhwt
         Ic1pg3PlAr816UKr5e0TKt2m3kb+yePqyUkPpbZ0fTcuDQOC+AlrGwWKsjac9G9SxMPA
         3vNNuJYdxU+XzzuHhMiCZYOYL9HJInm6A5YLX56uu+2Yi98BVwcD17vxb785nizDUpMQ
         /3Lk5L22C4sFDeBoj2XaSrrdH7Od2dvbHqwjyNl6q8xM7ooMJIDwru+AKFLB2Emv2kNV
         6dEHHQFSsy5BMpokkEF1Qj3N4QVfvJ4N/ab01e5DqzefKmm3MFFPwSBlv9jb1LsfjokN
         3cnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V3eSzUQW;
       spf=pass (google.com: domain of 3_bppxgwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_BpPXgwKAGcSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id r18si58908pfc.2.2020.02.20.15.49.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 15:49:16 -0800 (PST)
Received-SPF: pass (google.com: domain of 3_bppxgwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id v14so75927pfm.21
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 15:49:16 -0800 (PST)
X-Received: by 2002:a63:6383:: with SMTP id x125mr32777140pgb.409.1582242556251;
 Thu, 20 Feb 2020 15:49:16 -0800 (PST)
Date: Thu, 20 Feb 2020 15:48:57 -0800
Message-Id: <20200220234858.145546-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [RFC 1/2] Documentation/llvm: add documentation on building w/ Clang/LLVM
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: clang-built-linux@googlegroups.com
Cc: Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=V3eSzUQW;       spf=pass
 (google.com: domain of 3_bppxgwkagcsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_BpPXgwKAGcSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
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

Added to kbuild documentation. Provides more official info on building
kernels with Clang and LLVM than our wiki.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Documentation/kbuild/index.rst |  1 +
 Documentation/kbuild/llvm.rst  | 59 ++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)
 create mode 100644 Documentation/kbuild/llvm.rst

diff --git a/Documentation/kbuild/index.rst b/Documentation/kbuild/index.rst
index 0f144fad99a6..3882bd5f7728 100644
--- a/Documentation/kbuild/index.rst
+++ b/Documentation/kbuild/index.rst
@@ -19,6 +19,7 @@ Kernel Build System
 
     issues
     reproducible-builds
+    llvm
 
 .. only::  subproject and html
 
diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
new file mode 100644
index 000000000000..05c9a28a5a6d
--- /dev/null
+++ b/Documentation/kbuild/llvm.rst
@@ -0,0 +1,59 @@
+==============================
+Building Linux with Clang/LLVM
+==============================
+
+This document covers how to build the Linux kernel with Clang and LLVM
+utilities.
+
+About
+-----
+
+The Linux kernel has always traditionally been compiled with GNU toolchains
+such as GCC and binutils. On going work has allowed for `Clang
+<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
+used as viable substitutes. Distributions such as Android, ChromeOS, and
+OpenMandriva use Clang built kernels.  `LLVM is a collection of toolchain
+components implemented in terms of C++ objects
+<https://www.aosabook.org/en/llvm.html>`_. Clang is a front-end to LLVM that
+supports C and the GNU C extensions required by the kernel, and is pronounced
+"klang," not "see-lang."
+
+Clang
+-----
+
+The compiler used can be swapped out via `CC=` command line argument to `make`.
+`CC=` should be set when selecting a config and during a build.
+
+	make CC=clang defconfig
+
+	make CC=clang
+
+Cross Compiling
+---------------
+
+A single Clang binary will typically contain all supported backends, which can
+help simplify cross compiling.
+
+	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
+
+LLVM Utilities
+--------------
+
+LLVM has substitutes for GNU binutils utilities. These can be invoked as
+additional parameters to `make`.
+
+	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
+	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
+	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
+	  HOSTLD=ld.lld
+
+Getting Help
+------------
+
+- `Website <https://clangbuiltlinux.github.io/>`_
+- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
+- `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
+- IRC: #clangbuiltlinux on chat.freenode.net
+- `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
+- `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
+- `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220234858.145546-1-ndesaulniers%40google.com.
