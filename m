Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU6VUL2QKGQEVAJSRMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDCE1BCF96
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:14:44 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id t2sf26521010ybq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 15:14:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588112083; cv=pass;
        d=google.com; s=arc-20160816;
        b=LE2OLdjlEyN58ucQddvRzKSIgTcNwVzyCsCphg4CSIHo1e+qq8YguqhPfr4tq0jPOO
         JgI1+QT4aGHrFdMVFv5jIWBQnfPsX5mBBDd5hDbmRsdO3B05dlKgDByjFR7eKnOT5A30
         k8Hw+Vt+zBI01cic0Ih2jKtV/qwMw0E344BCvCavgdHJeriUpv3PlpJd4SU75svN3bbd
         WYLdNO1WzChFBZaY+M7MQyUzxe8Z5/cvqEvyk2nTP+BYreXqgpcl62xtmwgzumSPrNk+
         KJhvr4z+ES2w4FuARLkv2FYjLkpCdoBLiDiD0nMuRamZKjbYn8L28YfvY8nvnmrMJW6W
         nSqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=j/AsUf31QA7zz7T1w7FXz9MIEJ4Oqce0LOHFAXLnb8I=;
        b=ATFQG5ZvfJpNPD8O8T0Tgzf2R6AEMSWSaly+xY9jyXGDpt5SxQm64d7fzfSoieS09O
         EL42OFLQSUj+2Q6NCghH3KrTNWCO2sf8V8obDMzNCo9K4qQOd2PBYT8DEJiP41R8Vuof
         STYpGoljP2LnSith7TFrZr779YMRP34MQTHEVeB4Y4+tdjBf3yJ3ejr3NnwuzcKV4Qn6
         ZM9Cv6Wnpy8jgbBSdXpyUamd8ZIMJXQoLcDgkfTa/ffugFvqOG7An9rj7Kb46oT4uslX
         5ECyo9VklCfjkcVNIhPi4rhmIRxxkQGSJcCzSo35qmh9avez8d+xj/FN8sC3OG3EBjm0
         fOYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l27izJS8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j/AsUf31QA7zz7T1w7FXz9MIEJ4Oqce0LOHFAXLnb8I=;
        b=nSJ68wqv5en022VIVcVxq0mHXkaG/HUupI01Xu6g2hLnLIZFR3ij2jOQ2+eGoUVd7W
         QMJv6jyBfiRWRPLSB+tndt6BJYKyZok29sxhMH6k1wPxdRkqAJAdZwOysBH5p22cL4sM
         tnOvNfalvYsKa0K5HJXyr/F/oZmSeprCdUHfRupmyYGbsiLe/UfR7Se3scGcTGYSVi9+
         fK6t9LfEsvFnDKm42OOW0aa4xGjaTBgNF1Ta4kfp6+T2NVPqctwrHW1bGTsWahsQnN25
         hCrxCTYiv+wZoc5opK3X0BVBBfmr3ZX77IelCuD8VeY2bB6LyyBUnxatb8fH7Sx/DoeN
         eZuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j/AsUf31QA7zz7T1w7FXz9MIEJ4Oqce0LOHFAXLnb8I=;
        b=UYHYtUBfzZpDBs45oD5vsMCYEpuxC6z3sb35ac+pL0/3lf3MKlxhpHsnCZn/es2AcT
         OUjjiNicdPZ+tt6yp9wsRPiseDc0GuoNyelFdxFT4r8yLw9cPnZUNM8FN1F8jiyVCj1T
         bmf87JreegA54GfUJ+lR5h8IkN4t7gLQSRsA6pyErsDm2looHZqKS9Kajdml7C1uvjDq
         xTCFkSoTQVaHfSAeibF2VBUrOlZl2pJKTPKigcykKrrxH8Nb8Q5U0bc4wrDvaa7SSIcu
         RxLgABHdTrIU1nrQW6ZcylRuinAwcf6cF56HQrmuSa4Y3PwcAPUw7qf/MsRBoC+T+E/l
         zx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j/AsUf31QA7zz7T1w7FXz9MIEJ4Oqce0LOHFAXLnb8I=;
        b=rrBEc+QsfoKYuUwGCyamkwT4F8Le2p3s6EAojIHiX1actuw5w3T3VIJIuMigvPci6r
         4gkViMMuH4brxbJR920YmxWFSIsl64tTaF7U/I6vyy/LCO0an4LKB1IqaUy0Jr3IGKGX
         t2vJ14cYP2TRnGoMzS1pc8phn236YrF84F1Jfxp8Z5rRwMFX9ora4o8Qeua5xmxEn1VL
         b7Q3Q+nVSNAinp7s20NSDOa2yPBu+TkK7PJvuz06NtdecJ2iQTuQ73E8Rdn3W98aEKC7
         g7B/NhYA0Ys+lc/To2FTn5WbOd5uJAqoRW0DLZFIqhl7xUb74SrGGvYesdEElzfsxQkp
         Mwpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubXt6yxyuXzgSrtYcJt9xoO2Q0sRrkOEH/Me9z7zrTTKowp+4zm
	ejGMahRX/ZCDRJNIi0L/Nbk=
X-Google-Smtp-Source: APiQypIqknqVvd9Slic1/Kip0GzaaFHfrIR2RsdI0A+8IN2Y3af8OAPfqe7cxTBYDZzq0JepiERrXw==
X-Received: by 2002:a25:77c9:: with SMTP id s192mr47789689ybc.482.1588112083356;
        Tue, 28 Apr 2020 15:14:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:76c9:: with SMTP id r192ls8325959ybc.11.gmail; Tue, 28
 Apr 2020 15:14:43 -0700 (PDT)
X-Received: by 2002:a25:d7c7:: with SMTP id o190mr3129912ybg.16.1588112083044;
        Tue, 28 Apr 2020 15:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588112083; cv=none;
        d=google.com; s=arc-20160816;
        b=HS4ESIfG1nUonEg8AEa2+lgBwgU10CvAmBER+4V4dXoMZfRIFnGkoPNLQ6UqahdOtt
         K0h8rIgmV6nzuOBFFt/nMg2YxOMKPI0788kLRhnUcTi62T1+58Bs8zMx+2XOvIUjX4i6
         XdvWquKHEO+Zck4/goTJ+Xh+R2aMar6D6HIAic/vjSHfd3as+wyvl7CSyWYWEFFo4q9r
         YgJYaeNgvBlpMrry6X0TEUhtzHV8UWF/ndK/5wEyMKhujW79gshLUVrv0VnCWOn5k5HS
         9Z4TKXa2+7PvX/9zCiadKnnLbM4JFzQ/8BpY+STuSRxQFvRdvjWael/9b0koZQP3BW+1
         HLzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zb1r7udqkPpghcAA099YBR0r79TnU7CL/+l6zX2FrtY=;
        b=VG9rj6uQhSg0xwPIXCqPwSiQJyBdGLKBRDmLQO/yIMexaSHYl9u4MctR1PezuCPWwF
         T42bGadHY0nqaHcFONm4EMzdKmhdZb7P0JQvs4wX8KzxSKLJJiUL1qVUQL8Au+NWvA52
         kYEj24QQYPT4r9RVH2B5EWGkuT3GJUYZ2q8u3bvtNAd7I2zwAe6n4zzhslVl5lwXCyo/
         0Z55W0dY+NeGK/8i5NcLGD5CZdO5mAghLiqLqxysXIjjqGn7tEjw0X/VWztcIpcWqeGY
         Cmq09hd2BHU97SkNNxpiuXZlkbGfYZ1xcQU1U87z3/7Y6ZCI7A9e8POn9UcieMRx1Pvd
         t5fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l27izJS8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o65si649541yba.5.2020.04.28.15.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 15:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id x10so4614698oie.1
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 15:14:43 -0700 (PDT)
X-Received: by 2002:aca:5e41:: with SMTP id s62mr4503048oib.53.1588112082531;
        Tue, 28 Apr 2020 15:14:42 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 186sm5267476ooi.30.2020.04.28.15.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 15:14:41 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v4 2/5] MIPS: VDSO: Move disabling the VDSO logic to Kconfig
Date: Tue, 28 Apr 2020 15:14:16 -0700
Message-Id: <20200428221419.2530697-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200428221419.2530697-1-natechancellor@gmail.com>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l27izJS8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

After commit 9553d16fa671 ("init/kconfig: Add LD_VERSION Kconfig"), we
have access to GNU ld's version at configuration time. As a result, we
can make it clearer under what configuration circumstances the MIPS VDSO
needs to be disabled.

This is a prerequisite for getting rid of the MIPS VDSO binutils
warning and linking the VDSO when LD is ld.lld. Wrapping the call to
ld-ifversion with CONFIG_LD_IS_LLD does not work because the config
values are wiped away during 'make clean'.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v3 -> v4:

* No changes.

v2 -> v3:

* Fix CONFIG macro in arch/mips/vdso/vdso.lds.S, thanks to Sedat for
  catching it.

v1 -> v2:

* New patch.

 arch/mips/Kconfig         |  2 ++
 arch/mips/vdso/Kconfig    | 18 ++++++++++++++++++
 arch/mips/vdso/Makefile   | 30 ++----------------------------
 arch/mips/vdso/vdso.lds.S |  2 +-
 4 files changed, 23 insertions(+), 29 deletions(-)
 create mode 100644 arch/mips/vdso/Kconfig

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 690718b3701af..45220e4b8a653 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3275,3 +3275,5 @@ endmenu
 source "drivers/firmware/Kconfig"
 
 source "arch/mips/kvm/Kconfig"
+
+source "arch/mips/vdso/Kconfig"
diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
new file mode 100644
index 0000000000000..36a52158d849b
--- /dev/null
+++ b/arch/mips/vdso/Kconfig
@@ -0,0 +1,18 @@
+# For the pre-R6 code in arch/mips/vdso/vdso.h for locating
+# the base address of VDSO, the linker will emit a R_MIPS_PC32
+# relocation in binutils > 2.25 but it will fail with older versions
+# because that relocation is not supported for that symbol. As a result
+# of which we are forced to disable the VDSO symbols when building
+# with < 2.25 binutils on pre-R6 kernels. For more references on why we
+# can't use other methods to get the base address of VDSO please refer to
+# the comments on that file.
+#
+# GCC (at least up to version 9.2) appears to emit function calls that make use
+# of the GOT when targeting microMIPS, which we can't use in the VDSO due to
+# the lack of relocations. As such, we disable the VDSO for microMIPS builds.
+
+config MIPS_LD_CAN_LINK_VDSO
+	def_bool LD_VERSION >= 225000000
+
+config MIPS_DISABLE_VDSO
+	def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index d7fe8408603e8..92b53d1df42c3 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -52,37 +52,11 @@ endif
 
 CFLAGS_REMOVE_vgettimeofday.o = -pg
 
-DISABLE_VDSO := n
-
-#
-# For the pre-R6 code in arch/mips/vdso/vdso.h for locating
-# the base address of VDSO, the linker will emit a R_MIPS_PC32
-# relocation in binutils > 2.25 but it will fail with older versions
-# because that relocation is not supported for that symbol. As a result
-# of which we are forced to disable the VDSO symbols when building
-# with < 2.25 binutils on pre-R6 kernels. For more references on why we
-# can't use other methods to get the base address of VDSO please refer to
-# the comments on that file.
-#
-ifndef CONFIG_CPU_MIPSR6
-  ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
+ifdef CONFIG_MIPS_DISABLE_VDSO
+  ifndef CONFIG_MIPS_LD_CAN_LINK_VDSO
     $(warning MIPS VDSO requires binutils >= 2.25)
-    DISABLE_VDSO := y
   endif
-endif
-
-#
-# GCC (at least up to version 9.2) appears to emit function calls that make use
-# of the GOT when targeting microMIPS, which we can't use in the VDSO due to
-# the lack of relocations. As such, we disable the VDSO for microMIPS builds.
-#
-ifdef CONFIG_CPU_MICROMIPS
-  DISABLE_VDSO := y
-endif
-
-ifeq ($(DISABLE_VDSO),y)
   obj-vdso-y := $(filter-out vgettimeofday.o, $(obj-vdso-y))
-  ccflags-vdso += -DDISABLE_MIPS_VDSO
 endif
 
 # VDSO linker flags.
diff --git a/arch/mips/vdso/vdso.lds.S b/arch/mips/vdso/vdso.lds.S
index da4627430aba4..d90b65724d78e 100644
--- a/arch/mips/vdso/vdso.lds.S
+++ b/arch/mips/vdso/vdso.lds.S
@@ -91,7 +91,7 @@ PHDRS
 VERSION
 {
 	LINUX_2.6 {
-#ifndef DISABLE_MIPS_VDSO
+#ifndef CONFIG_MIPS_DISABLE_VDSO
 	global:
 		__vdso_clock_gettime;
 		__vdso_gettimeofday;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428221419.2530697-3-natechancellor%40gmail.com.
