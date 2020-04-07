Return-Path: <clang-built-linux+bncBAABB74TWP2AKGQEEVO3VWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DA70F1A1529
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:44:16 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id s66sf3909648iod.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:44:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586285055; cv=pass;
        d=google.com; s=arc-20160816;
        b=qw1YXTnFS1bMIW8mMQ/+UJHs6v5q54YlAJkIqk6krmlMGkDIcAiS8Vi1DI5ocKrcnY
         IP8zMa+sk+9z8aAZANYuO8qyecC+JganFaQYk0lOKp+nAxOxDPIuug9HKqrgLzVgN/Ts
         V2A4v+ZKlaHfCAYLmpcdODoAN7ez/UZhrvChl/MwR5v+0rBOAhm33J5s68d1h3UOtntU
         Zd+oV3564qhA3WdymxZ7sUanWhu7tWJlBZyp9IGSeAgHeu1aaIQ9UVp6L06dV21fy82M
         ssADP5FCBfxscJZqvQMhMMQWOJIHoCAf9nWxmYDsP9FD/L7y3oPpFjKz8T/vvEHijd3o
         ZBOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=6Iu7v1eMqlmSZ3hUc95mNp0J7yWcZ0UEXIPKBXJJhYw=;
        b=sKlcro5sMroURqaXeOBsbZ35hR2zNj3EHjOf3AV6emldk3QZL3EE1hNoZJHfpV38Ez
         hUaZEZkJGnPzu6vlVdw5+UhzjUb0S2rspfodfHKQbASYj63ZcCsEpi/EOh/TOI8F6H1g
         Uli/Ew5zQzfjmW0mKpqD8KfTQVSZ/rF3QpnVFaYuYPBhn+eVSk4U/MtWS/h8OOnRSW/x
         l/vNdfzeTlq0tpeevhekdbpAoPXvDWriv761vJzJ/SZet86dDS7M9nzCkqqmOLdumdBA
         GzwaktKR8mkYCAToyraoC1yrrnuPDZbxnPGBh+q2MAalfQLModckzFLLepM5sQFV5huo
         S2bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=N1QRtUQF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Iu7v1eMqlmSZ3hUc95mNp0J7yWcZ0UEXIPKBXJJhYw=;
        b=MzA+KZ65agqOfNzjWWXfOBy5X7IcrElifUXIDcBIEvMWdx7dIGxLsER9/MOPtWf0T3
         /yi6cDoR03eEFKh8dTAvG0LkjPPzsXkQOt8pCgD+a6V4kIMFquJc2k51q/fHe219nizw
         4Hm1ejV+v8jVx2UG6DCN2Snq09tspHyYWARjXhX2wM6gpwSKbUr77IuEFl8fBxXcTOWK
         zTfXMqe7TGPkx8txnYHX1u6Gori3SYZO5Xm8fssbR8vN1KVwZQ1BzQGiUqND9iLIQMhS
         5fz0msa/ev0h36cmMQHnOgPfjThGgITapzgWy4GgGWiUUDwjEsxCQL6bPy2PWnfvKXzI
         drng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Iu7v1eMqlmSZ3hUc95mNp0J7yWcZ0UEXIPKBXJJhYw=;
        b=TGpN/iXrMDY3b2o6rq4MsOha88mobYH/XrW6mdFd+aDP8JVZeCgNHVP9ITAXsgNnpP
         Dv+YWkYoYNgYQ/w8fp4+iw72AOxswufNaLHzastDH26ktDFFfgJ1Be4YuyF26yw8dF6H
         QE4t0Z7vGn3ZD/giA9OgyE/sgCgYdUS/a3bMsIa01u8rSGGVViAO0ncPr0OkPJIhEBhq
         p5IF7Q5Prg9bv98OANXZHLla3TfVa5qceuJCkLNhuJ2QhN8tpZv56NIxwNklRSANCjYZ
         Smb2t19XUa/aIllk7UF4S/0LXt7ONYBJp4kQOePR92aiXTRJTpO9Qf4ehXRpZTAcAMIv
         ZSuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZqgtzxjKOlbWsuatrW9d1wZFHrYiiI0iGgN+s+R/iSQI3wVM4o
	qWn5sDl8Iqsp3sc9SBsUIyo=
X-Google-Smtp-Source: APiQypJLAzhpLXvB1eer6rYiL66EUnESwkLWa/68P+vFvEW9KVhUvHlF1I+dMNg7RdNjdXXnaVruAw==
X-Received: by 2002:a6b:e30d:: with SMTP id u13mr3480243ioc.128.1586285055653;
        Tue, 07 Apr 2020 11:44:15 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:778d:: with SMTP id s135ls2152732ilc.2.gmail; Tue, 07
 Apr 2020 11:44:15 -0700 (PDT)
X-Received: by 2002:a92:c912:: with SMTP id t18mr3936208ilp.214.1586285055342;
        Tue, 07 Apr 2020 11:44:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586285055; cv=none;
        d=google.com; s=arc-20160816;
        b=H+GtSGrIyfXAQjMDdvvUQOd+FXdZMzg9/IO/JrcIhLwd6u2GjHPHZk2NH3+OqO5T3b
         oiySe/I4IVeRLUTCTGdqW6DPp3cGMFI7sP4BUV4CsQB5snFrzkEoCcXUFpPmNY9fvUlT
         5kCeWoReANFYtH8WSx3I4BqRqYFM4Ol+4fK4hpzew6No14UxlH8nuCyzpLn3td9wOHVl
         cLrwY6ikV1m7EtwvCkfvMUdaHQnDd1Gbl37vssWgne3j5PUJBhcDF4cgAtySwEhoPOuV
         fv/zXci3L8ZspgsWfbQ0d2gZdU3vn+Pv9mntcmXa3RA9act/vfN4Vg1DNqrGsN27qtJ3
         m/Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=XNTE7oEt9lkQ6ho43A7OCsPjG49xbLDUJDedlD0LjAE=;
        b=ZlbD69Qe/5+Wlbt4HtvIuGgUobWeAJfHfMD8uIv9u15+4ybZFmoeQBFYNauk84y0ZI
         aJEeVQvORcy5FXFl6eErDoIAU7ED3PdYaqxlawhKF6Hz9mKHLJFXWeCOSRkeKI8ZUfKB
         yKXYmZ0fE7PShGziN93Sqp63dyB4BiIu+g/xPuhUTgqRkEW9QPXArpEvJLjJaxsr8HTs
         NTEDS9i0AJ8j/m+WE+XQw8z7oqcvqTZvfU58HjcoiwkhUmxk6wk4NHRCe9+tO+dNuhC3
         q/4psj7hpwFp3gRx1fov2yz2wXZ/oB9Ic+/5/r2v7Xr+BHu6CVg1pcP90DRQrNn6tD+w
         LDfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=N1QRtUQF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id v22si326468ioj.2.2020.04.07.11.44.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:44:15 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from grover.flets-west.jp (softbank126125134031.bbtec.net [126.125.134.31]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 037IhjLO002999;
	Wed, 8 Apr 2020 03:43:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 037IhjLO002999
X-Nifty-SrcIP: [126.125.134.31]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, Josh Poimboeuf <jpoimboe@redhat.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Peter Zijlstra <peterz@infradead.org>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] kbuild: support LLVM=1 to switch the default tools to Clang/LLVM
Date: Wed,  8 Apr 2020 03:43:36 +0900
Message-Id: <20200407184336.14612-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407184336.14612-1-masahiroy@kernel.org>
References: <20200407184336.14612-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=N1QRtUQF;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
to pass LLVM_IA=1 to use it. When the upstream kernel is ready for the
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
---

Changes in v2:
  - Switch host compilers as well as requested

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
index 2b40afa58049..81f915c02c4c 100644
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
index f9beb696d6d3..ffc1d2c618a7 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407184336.14612-2-masahiroy%40kernel.org.
