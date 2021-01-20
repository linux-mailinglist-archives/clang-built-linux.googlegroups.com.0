Return-Path: <clang-built-linux+bncBAABBCWXUGAAMGQENV5W75A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id B77982FD733
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 18:42:35 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id m15sf4125014oig.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 09:42:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611164554; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTImjaIdBTZarCjX6l/RBy9bC/jorvkuTHdRlwr6C4k17U5IcWQAZ/CJlU5V1w3sh4
         c7WeJE51t6ovd+CWMCymUXijeVbPQjMjwWUlEQlK/lVB3vI0g07OZ2Wl4oX1WKg7H5iQ
         2w0gNem5xQZTx4rJpDqOenqvKlqlkjVljMMSPUTxOe5KQkr0GQ9kaAOXN2D352TvvAR3
         zTreDQV6FaltriGFPQ+s7Jb9NUZaN3cQPP4UyMvtqS/xSnkGmgPI9uP96QjSFHvG8qif
         IwE20kI4gDqKf/CVjso1rm1vckrc3grDP2Lw8SF1m5TV/e1wQlCeOAWw+Pgy+XSgyVte
         3CrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:feedback-id:dkim-signature;
        bh=BjCeJE2/6iNb3t6PXNEB52jN5R2BKZeMLs7FsG/AaRY=;
        b=NYIKEwBFBLkhnXnRLw97coSlbyWUZbGJz6yx7AqT/VH6ZlovPLfIndSKFlBZmDvw/c
         0uierDmOwvub5cmFzF9OlkKI3xSwFU5T9IZBfaL+pl6gqDw+kEveMi8SewXWIkRNRPjB
         nukmLViHMbHYzaWRxi4V46KBhTuePkTGtBS/ejgOaoc2UbFHqdkSmSADFKNbGPzZpp+j
         j2YB+5n/bk81AwDIjaEjRzW1edzLPVKUJX83QTnyFfJY0+3W2NP4JRSCjOYCk9Me3PzV
         sDE8ca2mtcgNXykprG5qUYYr7tGQUa4/rESWZGLg12S565BUjb2nEyPvGBRyp1NybyEs
         fqiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@thezest.dev header.s=purelymail2 header.b=0vKvmSFz;
       dkim=pass header.i=@purelymail.com header.s=purelymail2 header.b=iQuChVOf;
       spf=pass (google.com: domain of lazerl0rd@thezest.dev designates 34.202.193.197 as permitted sender) smtp.mailfrom=lazerl0rd@thezest.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=thezest.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=feedback-id:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjCeJE2/6iNb3t6PXNEB52jN5R2BKZeMLs7FsG/AaRY=;
        b=O1iBj/EiedW5nWBP20LmrO0aBVR1pEBJYcte/k+jWWnYb8BVYffRGn3NcjAMZkfOJk
         4vK2HwtuXMXJ70tjrKQNZwjamnCBWmmua7m+hwKa7Bq9zdtyGXQ6BH5qP43c999pGm4Z
         zPOWQ7yK/9Gi9/MbGetNu1GicqccVkkySMPsRp4gp9tE0IC2n5XyuS14lzQ529SDU4rO
         pRid8xeClqXhw77IcbtwoHEkw7bEn/p0O7zOzMpjakF1IzmSg7UY5O8tLV5ttG6g+W4J
         dXkHDwUznJfrd4f3evDqsmpjgJKuZzuqw017JHsp5IDF774jiJ819rpZNC2Y0Pdw1xv8
         /FDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:feedback-id:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BjCeJE2/6iNb3t6PXNEB52jN5R2BKZeMLs7FsG/AaRY=;
        b=td5qAWDtvVYXHmftMNk694nQidZcBzXyMRgZs5bqAT7Jbzbkzg69vsYzfNn1QDDNXx
         jHBuOVWxICPzbeToYa/aYmsOxP/vwPqLvw2/2BYK0nPL7+7bFpHMGnMLJ0BFs9whWa5z
         aeSnhBF7/5lcKk3+9M5UHdMrvjm8THfRY3tDzSuu6WoUCAXW+EbdJS4JQUONZkITbZZY
         302FyB3rYk0FhZSI8toOo4albtapJNbr44RIzSARv8ItH+sWE7Ag3luG2Cuo6hGHPZfZ
         2AGJ1AN32l22k4iqMNOqa7U7k3JVyIxSkKV0NKlcRvG8QhzLFJ4qBSkvH6KTvmMZgWca
         5kbA==
X-Gm-Message-State: AOAM531vM1KboViuekUSzewhChTq06XNmYUEXJGYQukUIm1k4hLfVDl9
	1LBD25QF/x9wZVaZdlYGPxs=
X-Google-Smtp-Source: ABdhPJzdI7qAVyjqIP94+n0ngy6Sr1UjmpnUcyA3MMKyOsqKnnwl+q+0UNXOkTu73AEj5q3Y3hfsSA==
X-Received: by 2002:a9d:6946:: with SMTP id p6mr3110062oto.94.1611164554676;
        Wed, 20 Jan 2021 09:42:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls6587592oie.2.gmail; Wed, 20 Jan
 2021 09:42:34 -0800 (PST)
X-Received: by 2002:aca:4cc4:: with SMTP id z187mr3548581oia.116.1611164554213;
        Wed, 20 Jan 2021 09:42:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611164554; cv=none;
        d=google.com; s=arc-20160816;
        b=SE6vKVA40wxFCT+z6OnmNpz9LjElpievyY8bYFbUwihXHrIKOjteu9JbR6PtJh6iIZ
         X5jyAaZjpoutl99BBKhHE6zbAEEweCbHYizCGest2MRA84onqitZiJy9VGYNMLIDeoe5
         /QewztOZ9E71LGtphHNTtP6TnnQQOTIRSuF66EhsNaBvvtFnDKJf+jARIGzb2/zIe3gL
         LaquFxgnoeSc1kWSltHRhA3w0d8QGmUtNFLGB5I6/KVVZXhb9GjfymE+ck2Faba6SOf8
         O1hi2hZ3PISKu/sjDetoDvsKrJKaQncLy05vutnrofObY5SY3AaiB98O5GbbPMeV4HFK
         7Xtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:feedback-id:dkim-signature:dkim-signature;
        bh=Oj6jqrG2xRKQvCxP5mzVzP0Dmf+f9pAhPrvKZVO0U3g=;
        b=oSJnjMh6XfOLRNRnHq06IJkZQcJNePuAdaX6bQ7JoDNOi7CEL/llIbtZYoNJ4AE1QH
         QqouM5UDXpB+B6VjVdeYsQ2m9FAMO3PY/4XV+kUe8ArT6q4pHlQWIO4F/jOsZozbM28Y
         1HkgRWz9BTMDM+jOx6L81OD74LKJC8+QNephno4LpA7sSLFn8QecvbF9qisvuvson8I+
         VxXrKdYqZu9mvtvvsMr2bArrnVvQicWYoC20JPhvq5Jk5mZ2ngyukXXytxdmw/R/gqyc
         oTuuFAm1NxyW8/Mo8I/9f+gtwnw3ku8yHlxdrc+d2LHvHRB9/V8B7gWcZqW7n2vuDQ3K
         /fjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@thezest.dev header.s=purelymail2 header.b=0vKvmSFz;
       dkim=pass header.i=@purelymail.com header.s=purelymail2 header.b=iQuChVOf;
       spf=pass (google.com: domain of lazerl0rd@thezest.dev designates 34.202.193.197 as permitted sender) smtp.mailfrom=lazerl0rd@thezest.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=thezest.dev
Received: from sendmail.purelymail.com (sendmail.purelymail.com. [34.202.193.197])
        by gmr-mx.google.com with ESMTPS id x20si326227oot.1.2021.01.20.09.42.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 09:42:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lazerl0rd@thezest.dev designates 34.202.193.197 as permitted sender) client-ip=34.202.193.197;
Feedback-ID: 1188:367:null:purelymail
X-Pm-Original-To: clang-built-linux@googlegroups.com
Received: by ip-172-30-0-124.ec2.internal (JAMES SMTP Server ) with ESMTPA ID -1145992316;
          Wed, 20 Jan 2021 17:42:20 +0000 (UTC)
From: "'Diab Neiroukh' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: clang-built-linux@googlegroups.com
Cc: Diab Neiroukh <lazerl0rd@thezest.dev>,
	Danny Lin <danny@kdrag0n.dev>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Valentin Schneider <valentin.schneider@arm.com>,
	Nick Terrell <terrelln@fb.com>,
	Quentin Perret <qperret@google.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: Add support for Clang's polyhedral loop optimizer.
Date: Wed, 20 Jan 2021 17:41:45 +0000
Message-Id: <20210120174146.12287-1-lazerl0rd@thezest.dev>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lazerl0rd@thezest.dev
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@thezest.dev header.s=purelymail2 header.b=0vKvmSFz;       dkim=pass
 header.i=@purelymail.com header.s=purelymail2 header.b=iQuChVOf;
       spf=pass (google.com: domain of lazerl0rd@thezest.dev designates
 34.202.193.197 as permitted sender) smtp.mailfrom=lazerl0rd@thezest.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=thezest.dev
X-Original-From: Diab Neiroukh <lazerl0rd@thezest.dev>
Reply-To: Diab Neiroukh <lazerl0rd@thezest.dev>
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

Polly is able to optimize various loops throughout the kernel for cache
locality. A mathematical representation of the program, based on
polyhedra, is analysed to find opportunistic optimisations in memory
access patterns which then leads to loop transformations.

Polly is not built with LLVM by default, and requires LLVM to be compiled
with the Polly "project". This can be done by adding Polly to
-DLLVM_ENABLE_PROJECTS, for example:

-DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;polly"

Preliminary benchmarking seems to show an improvement of around two
percent across perf benchmarks:

Benchmark                         | Control    | Polly
--------------------------------------------------------
bonnie++ -x 2 -s 4096 -r 0        | 12.610s    | 12.547s
perf bench futex requeue          | 33.553s    | 33.094s
perf bench futex wake             |  1.032s    |  1.021s
perf bench futex wake-parallel    |  1.049s    |  1.025s
perf bench futex requeue          |  1.037s    |  1.020s

Furthermore, Polly does not produce a much larger image size netting it
to be a "free" optimisation. A comparison of a bzImage for a kernel with
and without Polly is shown below:

bzImage        | stat --printf="%s\n"
-------------------------------------
Control        | 9333728
Polly          | 9345792

Compile times were one percent different at best, which is well within
the range of noise. Therefore, I can say with certainty that Polly has
a minimal effect on compile times, if none.

Suggested-by: Danny Lin <danny@kdrag0n.dev>
Signed-off-by: Diab Neiroukh <lazerl0rd@thezest.dev>
---
 Makefile     | 16 ++++++++++++++++
 init/Kconfig | 13 +++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/Makefile b/Makefile
index b9d3a47c57cf..00f15bde5f8b 100644
--- a/Makefile
+++ b/Makefile
@@ -740,6 +740,22 @@ else ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
 KBUILD_CFLAGS += -Os
 endif
 
+ifdef CONFIG_POLLY_CLANG
+KBUILD_CFLAGS	+= -mllvm -polly \
+		   -mllvm -polly-ast-use-context \
+		   -mllvm -polly-invariant-load-hoisting \
+		   -mllvm -polly-opt-fusion=max \
+		   -mllvm -polly-run-inliner \
+		   -mllvm -polly-vectorizer=stripmine
+# Polly may optimise loops with dead paths beyound what the linker
+# can understand. This may negate the effect of the linker's DCE
+# so we tell Polly to perfom proven DCE on the loops it optimises
+# in order to preserve the overall effect of the linker's DCE.
+ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
+KBUILD_CFLAGS	+= -mllvm -polly-run-dce
+endif
+endif
+
 # Tell gcc to never replace conditional load with a non-conditional one
 KBUILD_CFLAGS	+= $(call cc-option,--param=allow-store-data-races=0)
 KBUILD_CFLAGS	+= $(call cc-option,-fno-allow-store-data-races)
diff --git a/init/Kconfig b/init/Kconfig
index 05131b3ad0f2..266d7d03ccd1 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -177,6 +177,19 @@ config BUILD_SALT
 	  This is mostly useful for distributions which want to ensure the
 	  build is unique between builds. It's safe to leave the default.
 
+config POLLY_CLANG
+	bool "Use Clang Polly optimizations"
+	depends on CC_IS_CLANG && $(cc-option,-mllvm -polly)
+	depends on !COMPILE_TEST
+	help
+	  This option enables Clang's polyhedral loop optimizer known as
+	  Polly. Polly is able to optimize various loops throughout the
+	  kernel for cache locality. This requires a Clang toolchain
+	  compiled with support for Polly. More information can be found
+	  from Polly's website:
+
+	    https://polly.llvm.org
+
 config HAVE_KERNEL_GZIP
 	bool
 
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120174146.12287-1-lazerl0rd%40thezest.dev.
