Return-Path: <clang-built-linux+bncBAABBT6VWT2AKGQEEZTPTHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EDB1A199B
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 03:37:20 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id 191sf3830467ilb.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 18:37:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586309840; cv=pass;
        d=google.com; s=arc-20160816;
        b=REBlus5KJIlrsRCj9JbIgqroCTHB7FXhy1pDK7SIblnA/QoOxsj6JrQLHOpKQiqmJY
         T/SKKd3twRfUfFcukIj9q5MmUcRPcO8nPVYih7gFOFmtHRA2cmnrYbA06ciA8jwzsSu6
         Ihlg52qbV2PvncvGnbZawwbbq+OJLNRBEY3jpTY/WINnPNBJgJX8hgWGD+u3nZvSlPJ9
         hlA/oY/okdsHW8AI8dVYoes/BF6UWg0QiV+d0g7rpfBZ+2FTgwmj/mpr7mN4vihN8+8Z
         AeOLMYBB8fU2WstKZEGSJkZz/0TIujElqlad+kS59eW/5Vja9wtSSjTD3DoWsSZjn+27
         Ar6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=PLKSYdLpjtXGVcZYruruBtY+8PG0SdAqc8zj/cCCl4I=;
        b=EwBi/7qDf6HQ73KOAq1YEH6U5cdL2d7YItnOYGS9HRFIjkMjvJFECsPi+MLof7Bn+r
         UglBR6pvT5beKoM3F+dMWCbDIYAIG1quS3upd6W1xp5U8k225SIfUnlcrQeUP3oEhk5k
         EqUfY2Z2xZpn72TX1AKJNVRZfUXdeFlFIHHvro1tZrKbcu4hGXS78piSqtjoxJSz7Duo
         H+k9/pVyAeKDfXzryDKxdacRsQwzfyrjXSrhy22BHW/YwLdPP1RCAiU/tn3Aw4Rk8+5A
         IciYJEwVtfiTOHDn+KmKgy6jN1NzM1K9wFiZvDsr7WU+0ghYl+eQ4SDvk9JhFg0B9+R+
         9d/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=eUsvDlbQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PLKSYdLpjtXGVcZYruruBtY+8PG0SdAqc8zj/cCCl4I=;
        b=Ak/0DD1T/ZvArhHj1rRh6Gip2V4joieV4V5ZXZ+LhY1GfJZn1ic59E+hsyyd7ngpk6
         EKTa8YbFBLA1v7fow2TM/UUqC3K9TBBrIrFLa67pL/WBLSBj3yCiV4GuHEHT+tyHrwWR
         GU7iU7dKuGU/FANldv182cqraUjBwf6l6iPhjyvekG4AmQkZvgzmyXnqWRfTEkx4f75V
         4yz/2elPCuptp6d/vTEATF7y/ww7bqkGzifipsuYutoxl4S9jx4hYeDWg5hccuwvOB7O
         4M3SMsxo4mHbdqeXZzHWTxuV/gW1GrNo/IX/dszskay8Z98ASbe56DMZO/Y4H78aR5c6
         Gd9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLKSYdLpjtXGVcZYruruBtY+8PG0SdAqc8zj/cCCl4I=;
        b=qGAaSmdZRJOqB5+pCEFCe3dl6P4qqs/nIg+E48FfUKIDQgH72n7jWFUwfL7iHQ6hYS
         HTmx5suNNCY0G6dsgJUlYg63PftYCKknwe5khYN/XWzrq3GSHXWtjcAeLLD1+aurMSzC
         iTefyLHOx79ndfbw3zF877z8MhP5YkcPgCsI5SLRbIJP+VD05nYu8YoXXw8ekpnIkIF8
         Ofauenni9rzMyldz/JiK9vH9xlfOkV8oz/rqvcZD/B0QCfRCTA347grH4rYSqTCiRvcM
         c0uIpyn0PorAvmh/K32sld6VkyHYEJjRYhZOpWf/iSaFeDy6/q367Xlc2db6zrLVMVOJ
         qZjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubBG1p6DH9T+QyLaVG2Y5uJSACAeg+t+tvcJ7lqPk61253VF7Ul
	0NffyPM3CLsOCQEiQjl9WS8=
X-Google-Smtp-Source: APiQypKHceMU2ifwmiEIhxNHoGhvQ+22YmzTM+MFpezK456OmNZ9Y/zRUPUsrcv87kKzipMHyxel3g==
X-Received: by 2002:a92:8183:: with SMTP id q3mr5594530ilk.43.1586309839712;
        Tue, 07 Apr 2020 18:37:19 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:778d:: with SMTP id s135ls2834390ilc.2.gmail; Tue, 07
 Apr 2020 18:37:19 -0700 (PDT)
X-Received: by 2002:a92:9edc:: with SMTP id s89mr5763364ilk.229.1586309839356;
        Tue, 07 Apr 2020 18:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586309839; cv=none;
        d=google.com; s=arc-20160816;
        b=zk+SYbuRMPhk07hoBE1qLMyZGmj05Avj9blb6Y19Nln+U701rVDCbCIqYnnIGJSV1v
         PUGtyLi0nHvAAvRo7iU3l4zoxmnB+v1s6J/TyJ8uTTjH8iwmPb8Q4pBg5jMVhtXZw5sG
         0GdxV++ZWH9Iu7iIVGMCQ6QoRQs5+ZD4u/rl9E5g3/yNL1mDFCca4yvqkkWYijQUtZKk
         2ywH1s72sKh78vKSf/9grTj3FIxkIcupllC5jCcNAfULLGDwQu9xwwNR0H6kFdSj9Qcx
         +KzqR4r89XcbybHHcaJGbzpu6LDCgZmQY1aKm98igp9RYhPqOo41/FloTqTd4b6C0kn/
         a6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=VX8um7le6Uy6ER5XPnM1U84P87XfhXDwxlFRA+5ZbG0=;
        b=Ro9xmeSYkshT7YZswMmZiLTsgJ/HdQyesFdc7Dyn+U3YS3yHI2LRngcIusLILuvAvY
         Uip+8FNEbShuVNayTo3Nryc6yYryR7SCTBpIRF/Q8kKwKV7rG5Tv6vzJVA5QTc5NLOyx
         gQvsMrejYycWezB/ML6cKDHjvF9bG3gv4ChZX4DjyEOfzCHtuF+6ysYnyUAPxbpUAf+A
         UOhEfpw6sQrDDiAeEArfBA3ISJv4UDxnskC36gAIsTK11A6G2ElVw1YqJX7TjLj7SHYo
         ff0zitLHij44Y5VIdsnBHKSUhD+sp3w6W8fJRiTzHqc+AEZQQF1+2i+WqmaU/946YtLp
         Xuqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=eUsvDlbQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id s201si362331ilc.0.2020.04.07.18.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 18:37:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126125134031.bbtec.net [126.125.134.31]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 0381aPHk015816;
	Wed, 8 Apr 2020 10:36:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 0381aPHk015816
X-Nifty-SrcIP: [126.125.134.31]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, Josh Poimboeuf <jpoimboe@redhat.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Peter Zijlstra <peterz@infradead.org>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] kbuild: support LLVM=1 to switch the default tools to Clang/LLVM
Date: Wed,  8 Apr 2020 10:36:23 +0900
Message-Id: <20200408013623.31974-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200408013623.31974-1-masahiroy@kernel.org>
References: <20200408013623.31974-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=eUsvDlbQ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

As Documentation/kbuild/llvm.rst implies, building the kernel with a
full set of LLVM tools gets very verbose and unwieldy.

Provide a single switch LLVM=1 to use Clang and LLVM tools instead
of GCC and Binutils. You can pass it from the command line or as an
environment variable.

Please note LLVM=1 does not turn on the integrated assembler. You need
to pass LLVM_IAS=1 to use it. When the upstream kernel is ready for the
integrated assembler, I think we can make it default.

We discussed what we need, and we agreed to go with a simple boolean
flag that switches both target and host tools:

  https://lkml.org/lkml/2020/3/28/494
  https://lkml.org/lkml/2020/4/3/43

Some items discussed, but not adopted:

- LLVM_DIR

  When multiple versions of LLVM are installed, I just thought supporting
  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.

  CC      = $(LLVM_DIR)clang
  LD      = $(LLVM_DIR)ld.lld
    ...

  However, we can handle this by modifying PATH. So, we decided to not do
  this.

- LLVM_SUFFIX

  Some distributions (e.g. Debian) package specific versions of LLVM with
  naming conventions that use the version as a suffix.

  CC      = clang$(LLVM_SUFFIX)
  LD      = ld.lld(LLVM_SUFFIX)
    ...

  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
  but the suffixed versions in /usr/bin/ are symlinks to binaries in
  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v3: None
Changes in v2:
  - Switch host compilers as well, as requested by Nick and Nathan

 Documentation/kbuild/kbuild.rst |  5 +++++
 Documentation/kbuild/llvm.rst   |  8 ++++++--
 Makefile                        | 29 +++++++++++++++++++++++------
 tools/objtool/Makefile          |  6 ++++++
 4 files changed, 40 insertions(+), 8 deletions(-)

diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
index 510f38d7e78a..2d1fc03d346e 100644
--- a/Documentation/kbuild/kbuild.rst
+++ b/Documentation/kbuild/kbuild.rst
@@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
 These two variables allow to override the user@host string displayed during
 boot and in /proc/version. The default value is the output of the commands
 whoami and host, respectively.
+
+LLVM
+----
+If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
+of GCC and GNU binutils to build the kernel.
diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index 0fefdf1737e9..c0a98c20e34c 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -47,8 +47,12 @@ example:
 LLVM Utilities
 --------------
 
-LLVM has substitutes for GNU binutils utilities. These can be invoked as
-additional parameters to `make`.
+LLVM has substitutes for GNU binutils utilities. Kbuild supports `LLVM=1`
+to enable them.
+
+	make LLVM=1
+
+They can be enabled individually. The full list of the parameters:
 
 	make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
 	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
diff --git a/Makefile b/Makefile
index a2aadcf8a36c..d5c907c0beb8 100644
--- a/Makefile
+++ b/Makefile
@@ -399,8 +399,13 @@ HOST_LFS_CFLAGS := $(shell getconf LFS_CFLAGS 2>/dev/null)
 HOST_LFS_LDFLAGS := $(shell getconf LFS_LDFLAGS 2>/dev/null)
 HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
 
-HOSTCC       = gcc
-HOSTCXX      = g++
+ifneq ($(LLVM),)
+HOSTCC	= clang
+HOSTCXX	= clang++
+else
+HOSTCC	= gcc
+HOSTCXX	= g++
+endif
 KBUILD_HOSTCFLAGS   := -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 \
 		-fomit-frame-pointer -std=gnu89 $(HOST_LFS_CFLAGS) \
 		$(HOSTCFLAGS)
@@ -409,16 +414,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Make variables (CC, etc...)
-LD		= $(CROSS_COMPILE)ld
-CC		= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
+ifneq ($(LLVM),)
+CC		= clang
+LD		= ld.lld
+AR		= llvm-ar
+NM		= llvm-nm
+OBJCOPY		= llvm-objcopy
+OBJDUMP		= llvm-objdump
+READELF		= llvm-readelf
+OBJSIZE		= llvm-size
+STRIP		= llvm-strip
+else
+CC		= $(CROSS_COMPILE)gcc
+LD		= $(CROSS_COMPILE)ld
 AR		= $(CROSS_COMPILE)ar
 NM		= $(CROSS_COMPILE)nm
-STRIP		= $(CROSS_COMPILE)strip
 OBJCOPY		= $(CROSS_COMPILE)objcopy
 OBJDUMP		= $(CROSS_COMPILE)objdump
-OBJSIZE		= $(CROSS_COMPILE)size
 READELF		= $(CROSS_COMPILE)readelf
+OBJSIZE		= $(CROSS_COMPILE)size
+STRIP		= $(CROSS_COMPILE)strip
+endif
 PAHOLE		= pahole
 LEX		= flex
 YACC		= bison
diff --git a/tools/objtool/Makefile b/tools/objtool/Makefile
index ee08aeff30a1..f591c4d1b6fe 100644
--- a/tools/objtool/Makefile
+++ b/tools/objtool/Makefile
@@ -3,9 +3,15 @@ include ../scripts/Makefile.include
 include ../scripts/Makefile.arch
 
 # always use the host compiler
+ifneq ($(LLVM),)
+HOSTAR	?= llvm-ar
+HOSTCC	?= clang
+HOSTLD	?= ld.lld
+else
 HOSTAR	?= ar
 HOSTCC	?= gcc
 HOSTLD	?= ld
+endif
 AR	 = $(HOSTAR)
 CC	 = $(HOSTCC)
 LD	 = $(HOSTLD)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200408013623.31974-2-masahiroy%40kernel.org.
