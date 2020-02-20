Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBFWXTZAKGQEGMPUL4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB20166B2E
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 00:49:26 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id z26sf88851pfr.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 15:49:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582242564; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hm1ArqZ5RSkXoil6g+7Rj0eFzpeoWRNnwYi/N69v1KTJCjcv9J+vt50lq3QGfMStt8
         WS4CbhCUsi/Kutbq/RWO56R6hsXl+2EB98vZg8k7cdrx9BE5lKXQ2vuucS68IUgi9uwc
         FYBy7GPn1WJTCGXUF6l/Twd4TRzE4QqTSknq1iKvwir5/Y6YMlxQCpxKHr76cxhKgGwi
         KBtTFUTBVjW9HgStMaTPUhCieqT/A7TxnZoO3Mp3ddvtvcVzP3VqkfC7v6le7t7rSaDj
         rCzlHL3hlivRwRmjTPVc+4aq1aK906fcLG6SgPXhKig5kPtkd88hAIXgG8mnjkw0Kd9V
         Bh1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HqXsaij8u9Yosj//kS7kAOPqSHpCrvbWcZ0fVXxZI2k=;
        b=fF0CsoKgtVJl/C90L3vaYkLL+cLXCLgvRYaGNA4M052sVN+yDTDu79I76wKJICn9QO
         ehIgbsLKAk1vdjoU/j5sLhQ5wf6qOdYVsylSsA7rrEMUYobltFF7sZkBnGzDWB3Ldju6
         2ohuvuYGsn+qFL2aSSk6bhDyMaf+LkQNbFqkLxIuKMhP16ndpbHMNmaL9pDyThNXfMwx
         RdhJSn1f4TtXxh8M3lcGYkCV6JnVNH5I0fdS8/D9vJJX0F36DTK6c18vqiN3yQWIh9e4
         WZs6Ij0oeOyxfxIMHGyV7wS0Fy2e+tK53cqWIF0pPSijmjCAldnNW7GO3f+A2VkP1jwK
         3chw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NBkfNCgC;
       spf=pass (google.com: domain of 3axtpxgwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3AxtPXgwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HqXsaij8u9Yosj//kS7kAOPqSHpCrvbWcZ0fVXxZI2k=;
        b=V6F/OGz/ftHh8yZtpdlAOn9N4pf5mnL3tP0Kz9nQBUmysFhUKg9gxFk+trKYMIkEkF
         QykGE08ao6K/xO9k936NiKTv41cSGqKq5EPA4aSWE0huCb24wmcr25pCEDP2T3O+xnV+
         v7AQY3CaUSlZ+z5m58jLUcU0YPuTa8UhSdIwxzlH0QlIzRNAkc+t2rVXCl/M7xBxhC2M
         +hetVdaN9k9HX3SL6pOzAzQsKGWDlI37VNbKy70aFzIIuDRk/3haKQVaZ2tpInygpuHj
         K0dXuUfzNoYBc0OOd3UaSP2UcF8jBwlG09oDZb7OdFZ5ruXZjDk7+KZmp6/KuLrxWimH
         cJwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HqXsaij8u9Yosj//kS7kAOPqSHpCrvbWcZ0fVXxZI2k=;
        b=H+lermgzLYDuqykQ91TxQrOTxkb+RRRxutIMGMFxNhqRDD+QCJj8aPG+E6ABFZJXPe
         eufJH/NNoT6E95YTMi7nQI8PmEt0TC9xDVQabrC2ayHFaZ6/jqpmaJcFZvzj2rG+wec3
         cOAFv/d1mCzrp3qHGiaCbBhJhSL1xbc0/JTibSdhDfDp2ynU3DeGX7q3NRhwj/gfZQeG
         STuvlrbjXWijAe/jd470HH5Ja2/SM+p0UKZoj37VTWP4O84xuY9Brqd09/IYvte9m3p0
         O2fbHa74H1zsskepxPF16ImQD8kju5Jhzr0/zLfAfdYn+7xoj81jlF+1X2beKbb9UX1D
         weAg==
X-Gm-Message-State: APjAAAXxfp2UEjYvqfsMbHRZmc0L25/w6FZodBs5a9KQlaT1X7B1j8Uh
	/35il1DO3j1Z7lPwiURDIrY=
X-Google-Smtp-Source: APXvYqzW9t/QOI38Ph8aTM6/f2LPYjBusFqTEbHJoKDBbsHfEvkq+dycPcnlKIf0wigzypUbGSyWug==
X-Received: by 2002:a63:d003:: with SMTP id z3mr34369921pgf.448.1582242564551;
        Thu, 20 Feb 2020 15:49:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8744:: with SMTP id i65ls88311pfe.11.gmail; Thu, 20 Feb
 2020 15:49:24 -0800 (PST)
X-Received: by 2002:a63:9856:: with SMTP id l22mr34368872pgo.344.1582242564094;
        Thu, 20 Feb 2020 15:49:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582242564; cv=none;
        d=google.com; s=arc-20160816;
        b=uoAaKG257f6cwXedyGPnkxiI2jcO5T9L94uu0Pr9xAf8icsUdVQec9NjN/0oj5bJa9
         RfmMmJdoVnZblGzEvCbjLzz5lzR/Gn8fOaTIyhzppQ4971zLPFrBBMGP3CIW++7SaCwp
         f/GXwV6gvR7jq0n08Gd5nztsFedqBNlW6Gi67AA8XSkdK7fFdF4WSQQTIo8htwmqU5Um
         gdxHMPaHxmqZNtgiNTzNe2XhY7OCxfwXqPz0txXj8ql3itNXdm/qZgDqc+QplwyarQoI
         BfE4i2eOaiXA1U4kauBnwlsQKWrMuOFn2dMf7JMzRH7XOp3zqrKMHBT618QfV05/xAXj
         0srQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Faj3ImEpgLduShOSPrrnV9UCkkDHliUN8mjdT9DIRp0=;
        b=sv6oHmZJ62cD3HyQdVXFDotKAO0G7ZmuMiT4bMbkHRYjGhnb2wMr9ovS7ZVWcQ/qbe
         kyaCi7I3d8Fo2PYyP2MDuEFtG7D2wOXnOCyvDkNIZmluolVno8ZK5yJ9Zt3cJTmuovuB
         ZURMRgvvD6hk0atD0Qyg8yofyhEZCaNC5SqauGs+2Z77svNikZiBwwIg1QQa93ecoqqA
         UVxg40j4T9Qjl5oKXRGMz4TQNyJN2TQ9nmcBU6m2sWfy42pjMM8wsU3xM9z3dVJ3DZq2
         S7K8DJUHq7R/JoPrR8wN2VTgGecS8kr99kVl5OUntMey48ZhhoEt5RJd/+85vTLB2y91
         OjRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NBkfNCgC;
       spf=pass (google.com: domain of 3axtpxgwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3AxtPXgwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id a4si180414pje.1.2020.02.20.15.49.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 15:49:24 -0800 (PST)
Received-SPF: pass (google.com: domain of 3axtpxgwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id t3so36381vsa.18
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 15:49:24 -0800 (PST)
X-Received: by 2002:ab0:14ea:: with SMTP id f39mr17779806uae.40.1582242563053;
 Thu, 20 Feb 2020 15:49:23 -0800 (PST)
Date: Thu, 20 Feb 2020 15:48:58 -0800
In-Reply-To: <20200220234858.145546-1-ndesaulniers@google.com>
Message-Id: <20200220234858.145546-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200220234858.145546-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [RFC 2/2] Makefile.llvm: simplify LLVM build
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: clang-built-linux@googlegroups.com
Cc: Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NBkfNCgC;       spf=pass
 (google.com: domain of 3axtpxgwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3AxtPXgwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
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

Prior to this patch, building the Linux kernel with Clang
looked like:

$ make CC=clang

or when cross compiling:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang

which got very verbose and unwieldy when using all of LLVM's substitutes
for GNU binutils:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
  LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
  HOSTLD=ld.lld

This change adds a new Makefile under scripts/ which will be included in
the top level Makefile AFTER CC and friends are set, in order to make
the use of LLVM utilities when building a Linux kernel more ergonomic.

With this patch, the above now looks like:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1

Then you can "opt out" of certain LLVM utilities explicitly:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 AS=as

will instead invoke arm-linux-gnueabihf-as in place of clang for AS.

This would make it more verbose to opt into just one tool from LLVM, but
this patch doesn't actually break the old style; just leave off LLVM=1.
Also, LLVM=1 CC=clang would wind up prefixing clang with $CROSS_COMPILE.
In that case, it's recommended to just drop LLVM=1 and use the old
style. So LLVM=1 can be thought of as default to LLVM with explicit opt
ins for GNU, vs the current case of default to GNU and opt in for LLVM.

A key part of the design of this patch is to be minimally invasive to
the top level Makefile and not break existing workflows. We could get
more aggressive, but I'd prefer to save larger refactorings for another
day.

About the script:
The pattern used in the script is in the form:

ifeq "$(origin $(CC))" "file"
$(CC) := $(clang)
else
override $(CC) := $(CROSS_COMPILE)$(CC)
endif

"Metaprogramming" (eval) is used to template the above to make it more
concise for specifying all of the substitutions.

The "origin" of a variable tracks whether a variable was explicitly set
via "command line", "environment", was defined earlier via Makefile
"file", was provided by "default", or was "undefined".

Variable assignment in GNU Make has some special and complicated rules.

If the variable was set earlier explicitly in the Makefile, we can
simply reassign a new value to it. If a variable was unspecified, then
earlier assignments were executed and change the origin to file.
Otherwise, the variable was explicitly specified.

If a variable's "origin" was "command line" or "environment",
non-"override" assignments are not executed. The "override" directive
forces the assignment regardless of "origin".

Some tips I found useful for debugging for future travelers:

$(info $$origin of $$CC is $(origin CC))

at the start of the new script for all of the variables can help you
understand "default" vs "undefined" variable origins.

$(info $$CC is [${CC}])

in the top level Makefile after including the new script, for all of the
variables can help you check that they're being set as expected.

Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile              |  4 ++++
 scripts/Makefile.llvm | 24 ++++++++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 scripts/Makefile.llvm

diff --git a/Makefile b/Makefile
index b954c304c479..8c8888ebb822 100644
--- a/Makefile
+++ b/Makefile
@@ -472,6 +472,10 @@ KBUILD_LDFLAGS :=
 GCC_PLUGINS_CFLAGS :=
 CLANG_FLAGS :=
 
+ifeq ($(LLVM),1)
+include scripts/Makefile.llvm
+endif
+
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
new file mode 100644
index 000000000000..a4401c8677dc
--- /dev/null
+++ b/scripts/Makefile.llvm
@@ -0,0 +1,24 @@
+define META_set =
+ifeq "$(origin $(1))" "file"
+$(1) := $(2)
+else
+override $(1) := $(CROSS_COMPILE)$($(1))
+endif
+endef
+
+$(eval $(call META_set,CC,clang))
+$(eval $(call META_set,AS,clang))
+$(eval $(call META_set,LD,ld.lld))
+$(eval $(call META_set,AR,llvm-ar))
+$(eval $(call META_set,NM,llvm-nm))
+$(eval $(call META_set,STRIP,llvm-strip))
+$(eval $(call META_set,OBJCOPY,llvm-objcopy))
+$(eval $(call META_set,OBJDUMP,llvm-objdump))
+$(eval $(call META_set,OBJSIZE,llvm-objsize))
+$(eval $(call META_set,READELF,llvm-readelf))
+$(eval $(call META_set,HOSTCC,clang))
+$(eval $(call META_set,HOSTCXX,clang++))
+$(eval $(call META_set,HOSTAR,llvm-ar))
+$(eval $(call META_set,HOSTLD,ld.lld))
+
+## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220234858.145546-2-ndesaulniers%40google.com.
