Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO7LSGEAMGQE64RVHAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 868403DC091
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:57:16 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id n192-20020a25dac90000b029054c59edf217sf12020536ybf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 14:57:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627682235; cv=pass;
        d=google.com; s=arc-20160816;
        b=0AKmK4kR5z7oC+Qmj8dIT5zJvu4edg49tR6j+mJ5SfosvOLqbsvwlK9GJCQEdQLrM8
         p9iiHYJ9VXCglj9kfx/P4anzofFRr7jPtAI2jV/87LikX5H0N6IjYfJPHmTanb4RqEhl
         fBCkhIM7dS7stn/B+DE2upeZcuRU56AHl48cgxTBEDPDh/9Fk+EMiHn/D7Ul6OIN81kP
         cC8u4ftpjQ9YRwSiuie1vACYm6jamXbYKg1rLgDvf8YodqDsDW/WrXkRm4eTMNJHe07r
         anjb8348ivMQi6iysObEhwbQG255vwXCKEBhdVGkUUP3XPaGd7Bi31Y20dkkSPYG2oH6
         8z6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BSNsH3FPtHJMS5caR+hRSp1IX7o2OeyVaUtn6w5wDVk=;
        b=evuk1sBH/DAYsV1AEBDXt2paL0XYNdKB5hHLynDB0eVbUkAdHb3ukqMoDVJGntEXSU
         VVMfXAIkRVsb4evYC+vgHuKdEhkXfM4+n7upCTFEJdrwvBaoJyYRzS1WJGBWrPUd9HfL
         Jx5SUriMi+v5jZ6xH9/qzwpexsUN0H0dVkenGaX9bhfsSbKGUzcmIWlSpdCsXUACRsgL
         xafXwE6cUZRwICCJg+xgQTeWjohOXG3l/DM14jFhIZagnTPahn1PDOA/QhN1nfTS6k6I
         64i+ySexPnotFFta37XJ2f1FqRJCHG++xWDiy5udG9srNwtJEOYPll1bpQb3jDioq27p
         WX9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sUGqlVu1;
       spf=pass (google.com: domain of 3unueyqwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3unUEYQwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSNsH3FPtHJMS5caR+hRSp1IX7o2OeyVaUtn6w5wDVk=;
        b=jsNsvLrGyyvcJ1cdxnPa4l2PPQQ/V5CRTKuL7BqMi2MHy/GZv+e6AMMQepL9wQtuwh
         zlcw3joQbOESL89NemF382OuB1k3fpLQqLtfVcwTIsKYtO2U7RRNGmRNjnwd4TQBoBeq
         /4rv1zjCFQuMZlrbkYDwTI/zfkNIdsW+lEtTpnjO5JrHG1m0NyPARO2j4quUEXJ18xJc
         h2t8w0AhiAqv9Bzc+IO/DFcEefXstYX6HmO1I0nmAe7/5ZsZIP4BuflTbdjDyNpPI/YP
         cONaNtfSdd1V1NdUMUb9OHgR23cwCn+tsGBWQ2Giy5MuRACKxt53ydeXf13Mu3agvTNi
         QLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSNsH3FPtHJMS5caR+hRSp1IX7o2OeyVaUtn6w5wDVk=;
        b=nuSLoD9c8kZeo85DOkEF2M30l/IDNSb+3IKPG3L3kbux87Atn1ODKMQ1NX7rTZ7LGJ
         Vju6Y0+I+tPYTDGB4g6/anZQeUk8xJzoa3k93X/irvHXr41HSdplMhg6eik241gj+pTM
         dRAZxCy/JeZ7m0S8JIsYZbMso36a7BYHMz0hMTi870eF+NY0RSDKzObSx6obouMrUo0g
         0msg2fNmLkwX++XXJghzyKtlg+On4NQR4hX2hvwlbwbEv3bqmLC20uzOZNjmaOALGQkK
         V5Gz24QKice4zlm7Iud4AUO3rk+4+kgli31EJIUAdnDa7eOIVe7F6Tvf5trNPInWj7cm
         EQwg==
X-Gm-Message-State: AOAM530rdgOdJvwTCNDW2Kx0LVhiWTw2TVSoE49d8EnuskBqSIFLf4jf
	hh3XzvkE7bkrwuGF7mD+h8c=
X-Google-Smtp-Source: ABdhPJxc05/OYW+f4+d3WD3Vfx1K5Q9ScnOpncJFShL5P0nsa7+aMP8LrMEa4XpBqFF88U4MMRJJvA==
X-Received: by 2002:a25:c9c6:: with SMTP id z189mr6084762ybf.322.1627682235601;
        Fri, 30 Jul 2021 14:57:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c70c:: with SMTP id w12ls1452183ybe.4.gmail; Fri, 30 Jul
 2021 14:57:15 -0700 (PDT)
X-Received: by 2002:a25:4188:: with SMTP id o130mr5777836yba.394.1627682235126;
        Fri, 30 Jul 2021 14:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627682235; cv=none;
        d=google.com; s=arc-20160816;
        b=HTrg0bMIQ/4eBpP7zE9xW+Zpb4/nlS9L/nMPL5UNW1c548T2y3Ho1Voow5YTq60LEG
         UCBhBnCwL/HgQmKFn4WXlVCzzTLjD9xyvA1+eisoTO/XqWpcuNZF+y2QqyIDlx/O0U0L
         xU/P/grepTMRo8Q3aB2Z0s7tAq4PKa6BnrsCSlcM7LSzY2quh9H2a4hE0B/NYWsDG4Cz
         ifSAuQpSSdKsvESLZ69LXoame6RE/IOirA3fA1gfsg2cuiBIvXJDxuT9U1qYFukPLh77
         2Z7z5dUiGzPWcmqCx4hKJ0922tCb23zQpMJMOYK1vfuRkZEeV7EFUiq6Vy1ZDIH35nNS
         6c+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mAs0sIhDHdO55jvkoLMVdL7o5FA16ak0SeaVC0asTAs=;
        b=TfE5JPT87ubWEHvOBs9kcV83dXlgPVOmmq7MVeJoRGWj0M8IOYM3Vir/hcLpDNH993
         BQcaWGoFZV7F46GWqoRoxCVTUnJGaMjwx3WaVLSf8ZY6kefBBIj9hl6s/Cy03QOnnDoB
         ZZ+BTxsovIOsH8EkSzaVUQKyRVCmA53m7BxtYMep/O4ciXjXR8LrPm5tYcOXQVkCl8hI
         LCvccHYy7AkhxtuIbGVBa/WkDvrDpChHj5HyjHRPF0uXEbBWIS9IpPcOhv9PSATXB090
         MauyVZI5jQxn/cWncZfM3dKltwYZb9V/Ri1Jrh4Z1KRlvUgMD22yiV+ZtgRqj1wtfC2u
         VxEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sUGqlVu1;
       spf=pass (google.com: domain of 3unueyqwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3unUEYQwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id t3si95197ybu.3.2021.07.30.14.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3unueyqwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id l7-20020ac848c70000b0290252173fe79cso5148744qtr.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:57:15 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:ca8b:b433:7c1d:90d])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:529e:: with SMTP id
 kj30mr5262500qvb.32.1627682234730; Fri, 30 Jul 2021 14:57:14 -0700 (PDT)
Date: Fri, 30 Jul 2021 14:57:06 -0700
In-Reply-To: <20210730215708.276437-1-ndesaulniers@google.com>
Message-Id: <20210730215708.276437-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210730215708.276437-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v5 1/3] Makefile: move initial clang flag handling into scripts/Makefile.clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sUGqlVu1;       spf=pass
 (google.com: domain of 3unueyqwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3unUEYQwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
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

With some of the changes we'd like to make to CROSS_COMPILE, the initial
block of clang flag handling which controls things like the target triple,
whether or not to use the integrated assembler and how to find GAS,
and erroring on unknown warnings is becoming unwieldy. Move it into its
own file under scripts/.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 MAINTAINERS            |  1 +
 Makefile               | 15 +--------------
 scripts/Makefile.clang | 14 ++++++++++++++
 3 files changed, 16 insertions(+), 14 deletions(-)
 create mode 100644 scripts/Makefile.clang

diff --git a/MAINTAINERS b/MAINTAINERS
index 81e1edeceae4..9c1205c258c7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4433,6 +4433,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	include/linux/compiler-clang.h
+F:	scripts/Makefile.clang
 F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
diff --git a/Makefile b/Makefile
index cbab0dc53065..010e3a4e770b 100644
--- a/Makefile
+++ b/Makefile
@@ -586,20 +586,7 @@ endif
 CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
 
 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
-ifneq ($(CROSS_COMPILE),)
-CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
-ifeq ($(LLVM_IAS),1)
-CLANG_FLAGS	+= -integrated-as
-else
-CLANG_FLAGS	+= -no-integrated-as
-GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
-CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
-endif
-CLANG_FLAGS	+= -Werror=unknown-warning-option
-KBUILD_CFLAGS	+= $(CLANG_FLAGS)
-KBUILD_AFLAGS	+= $(CLANG_FLAGS)
-export CLANG_FLAGS
+include $(srctree)/scripts/Makefile.clang
 endif
 
 # Include this also for config targets because some architectures need
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
new file mode 100644
index 000000000000..297932e973d4
--- /dev/null
+++ b/scripts/Makefile.clang
@@ -0,0 +1,14 @@
+ifneq ($(CROSS_COMPILE),)
+CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+endif
+ifeq ($(LLVM_IAS),1)
+CLANG_FLAGS	+= -integrated-as
+else
+CLANG_FLAGS	+= -no-integrated-as
+GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
+CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
+endif
+CLANG_FLAGS	+= -Werror=unknown-warning-option
+KBUILD_CFLAGS	+= $(CLANG_FLAGS)
+KBUILD_AFLAGS	+= $(CLANG_FLAGS)
+export CLANG_FLAGS
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730215708.276437-2-ndesaulniers%40google.com.
