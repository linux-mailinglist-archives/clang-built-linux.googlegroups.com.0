Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3EXWX3AKGQEBI3O5DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0FB1E27DC
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 19:03:42 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id 22sf17084903pgf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 10:03:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590512621; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZaSuFQ3CFUT6f7Y/7zd2THoTfGloz8+CzYAB4Aht2r8xg6bXQdS3dYisLLmfTOtlvF
         3OqDdNdIccMLSe68zNZVaxfTL/LyUytlOel2O1J9n/bliRRC1XITsZpEufrT1r759fnJ
         aOe9P4TlWM4et0/PqTbGbPi9FboNqOYBdOZbLH90HAF7Io2snvxDJvr4/u6GfSglEcAY
         ImbQFTzO8uiIcuioCEKLklnVoxnVy7WdJyG4GoIVa8SDZqwfrJte0giSMU7+HuF5ksA+
         cksTHkOybGQU3W0G5UJWQ/0bLF+TtVhwivXtUzwVwF4/Q+ZwLHeZW39/nNYO2E91lUQW
         fQYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=w9VQxfeIF0IEsPwuIbopxtlclvDxzlWcJ4aWf2jrUQc=;
        b=CEaYzF+yD9/spQP1xpO88Dr6FmSwML8uD+hrOesRDP0hVuQrfkh2Pa6W/NylghGpfP
         jdWhs878MQJNE95KJ99aq45ZZ3z+MwO0+mBnuo3ZfxEKtDO5+oj52uaGgMKeF8wL7DSs
         fJOEEf0qQyC+nyuRSW3YpaFigxHP6Onskzdkisyqw9AYrIK9FjRqNmKwAlZOiDvFZ8Bg
         OfLMslB6J/Z6lcczSqsv3iWG26oRuH9U9syTyiFQcw/at8UmmvC24yGfqvK5tbGrNLlU
         CVR5hPyMeHd3ErPNsSflG5Xiuj0EVbr9qSemeDd0tyiWCiu2J7MNF5ms6wPPkMhTtLIC
         LTVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G3Ey5fIQ;
       spf=pass (google.com: domain of 360vnxgwkalqhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=360vNXgwKALQhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w9VQxfeIF0IEsPwuIbopxtlclvDxzlWcJ4aWf2jrUQc=;
        b=HnPUd3Ns1cVdzYl6IShjzGmodtb4MLv/z0oRlomLsw0tIX8ObDdQp62ThNblY1/gxy
         LtrviWymiOSsKNQOuP5Bc9Re9uED1RmV6bSGmopydRN8LzJowEUWXOYygbS0ETzgxtjG
         i8r1P2IZEgOj4ZJOYa5IkTDdTdOjeIAUp34Sn8I6AgHrX9KCVui2IqnQwNr4e4N+i2sx
         URQ9AZ2O+SPs9fmwt/n032yZymhkeZusIvryv9RxNWyYZIhYHcqaXQUQWBjlbobJIQNG
         GvfQ1AM6c0TlKRgfmeOgN3ldfI5mPqImEpKZ5c7SnvnXOwpH0DmQrXhUEqd50jyrnFAE
         bvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w9VQxfeIF0IEsPwuIbopxtlclvDxzlWcJ4aWf2jrUQc=;
        b=ITQESm3kjGqnNuSX51Ev6OzXhElDggd5rAsRrQrb85ETZ1jHS5QRH/p2F8M7qMetNZ
         4CIHWKNoM8mY4sel3yPDXO6FjZROK7FyPLq54sSKVQi6E5BzTBcoZJ/Mmq524p9OXzq2
         z7taTQ43Dje1Yo7PFoEz/Y4FVSN+HIA8J0a50xEYq1UvpdiUJTY3Qp7lM5LB+ZccN9zY
         bMfcch5HCiZ5pt2Oq8D65FjHdGHn/CLJYcTxULu87tF4BOA1jmirrP7lD2+5KDiUqyPT
         Xlm3u8k4tONlF2UudKrR0c6dqzwVl/V2M0FzzgjOrJK9SPJs1J0M4lxqOyDXO8lADq77
         RXiw==
X-Gm-Message-State: AOAM530qznDKBDiYQrB49iAio1i2T4ycuWgI1cBMFjLbBVq0HiGFumtZ
	Hk6R6G3ACsY4BtQBNdgANMw=
X-Google-Smtp-Source: ABdhPJwgrMWs+0c65nxcoFHENScBhTaHCXYCOvCo1D+DsgZ66UNfb5AdsS1dimbZ1r93MiC5CwlFQw==
X-Received: by 2002:a63:9e12:: with SMTP id s18mr2043842pgd.333.1590512620787;
        Tue, 26 May 2020 10:03:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7697:: with SMTP id r145ls1199401pfc.1.gmail; Tue, 26
 May 2020 10:03:40 -0700 (PDT)
X-Received: by 2002:a63:e60b:: with SMTP id g11mr2105995pgh.120.1590512620350;
        Tue, 26 May 2020 10:03:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590512620; cv=none;
        d=google.com; s=arc-20160816;
        b=fbdz1nUWu+L+OWz1EtMZ8bU3oH1TA4r2T6pPn1jRzwAdPwfUYxTCKCA/bMGLTsU1jD
         d/r4AbCfxvnBe376LoWt/RePmD7AiiNAbKcYUshGohKuBfNgi3AN0sb5P4WpfSe0APhh
         u0apcK9Pcv1XlIYEJQ/zhsLIUtrUnRSctOQOuf6fXzEakz8wlxJwVtf534L2CuHzhnsJ
         05kJzHfnPfL6w+uOunXP8oK9D1mepZuu7dsmMd8Cu1Iw/SHG1AIL+zT6qxMkg2ubsvc0
         xf+R0yaWHAiz3HLSKvK4rliAsJ6B7Wl2x9aerZ1fZD4tJWgg6XiCWZQYN7sozM3cV+iO
         HObQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=sjeGTWCrYFBnhNd6ar8naLJbL00oyzfJjyGq2z7zCYM=;
        b=gg9ttGf/9CEA8s3pTV22YoqM4Gq/zKLW6q6g1Vno6EVA1Nl1Xs3GDBcMbnX3n9+w48
         JXmJGIPEymFDqD3cQMHpciQk3OIKEmz+XqTM8FHXsYAufqs93DydqYkw/o7g4gU7zM+m
         a029CAfTFk5HJwlEmtjlQkNvqxj+euuV+qSfgKa+zNLe0RTKppb8yNrcT5Y9VPMimAMX
         s2+lpPK+8cf7dqUCVHQi9s+//ku4bkYqNgDPahDyb6Gi1WF6vQzeOkwAUmtSKthaGX5R
         4wrr1BY7JfXEiBy0ZCQdYFzToG/j8E873AjXW8jFtLIqfAjlj0WPj9HTIS+rdLg7LYGe
         CNzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G3Ey5fIQ;
       spf=pass (google.com: domain of 360vnxgwkalqhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=360vNXgwKALQhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id j204si69129pfd.1.2020.05.26.10.03.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 10:03:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 360vnxgwkalqhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id u61so23056639qtd.4
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 10:03:40 -0700 (PDT)
X-Received: by 2002:a05:6214:10e4:: with SMTP id q4mr2609572qvt.83.1590512619406;
 Tue, 26 May 2020 10:03:39 -0700 (PDT)
Date: Tue, 26 May 2020 10:03:16 -0700
In-Reply-To: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
Message-Id: <20200526170321.137238-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH v4] Makefile: support compressed debug info
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	David Blaikie <blaikie@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Naohiro Aota <naohiro.aota@wdc.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Changbin Du <changbin.du@intel.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G3Ey5fIQ;       spf=pass
 (google.com: domain of 360vnxgwkalqhxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=360vNXgwKALQhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
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

As debug information gets larger and larger, it helps significantly save
the size of vmlinux images to compress the information in the debug
information sections. Note: this debug info is typically split off from
the final compressed kernel image, which is why vmlinux is what's used
in conjunction with GDB. Minimizing the debug info size should have no
impact on boot times, or final compressed kernel image size.

All of the debug sections will have a `C` flag set.
$ readelf -S <object file>

$ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
    vmlinux.gcc75.uncompressed.dwarf4

    FILE SIZE        VM SIZE
 --------------  --------------
  +0.0%     +18  [ = ]       0    [Unmapped]
 -73.3%  -114Ki  [ = ]       0    .debug_aranges
 -76.2% -2.01Mi  [ = ]       0    .debug_frame
 -73.6% -2.89Mi  [ = ]       0    .debug_str
 -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
 -82.9% -4.88Mi  [ = ]       0    .debug_ranges
 -70.5% -9.04Mi  [ = ]       0    .debug_line
 -79.3% -10.9Mi  [ = ]       0    .debug_loc
 -39.5% -88.6Mi  [ = ]       0    .debug_info
 -18.2%  -123Mi  [ = ]       0    TOTAL

$ bloaty vmlinux.clang11.compressed.dwarf4 -- \
    vmlinux.clang11.uncompressed.dwarf4

    FILE SIZE        VM SIZE
 --------------  --------------
  +0.0%     +23  [ = ]       0    [Unmapped]
 -65.6%    -871  [ = ]       0    .debug_aranges
 -77.4% -1.84Mi  [ = ]       0    .debug_frame
 -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
 -73.1% -2.43Mi  [ = ]       0    .debug_str
 -84.8% -3.07Mi  [ = ]       0    .debug_ranges
 -65.9% -8.62Mi  [ = ]       0    .debug_line
 -86.2% -40.0Mi  [ = ]       0    .debug_loc
 -42.0% -64.1Mi  [ = ]       0    .debug_info
 -22.1%  -122Mi  [ = ]       0    TOTAL

For x86_64 defconfig + LLVM=1 (before):
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:22.03
Maximum resident set size (kbytes): 43856

For x86_64 defconfig + LLVM=1 (after):
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:32.52
Maximum resident set size (kbytes): 1566776

Thanks to:
Nick Clifton helped us to provide the minimal binutils version.
Sedat Dilet found an increase in size of debug .deb package.

Cc: Nick Clifton <nickc@redhat.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: David Blaikie <blaikie@google.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V3 -> V4:
* Add thanks line to commit message as per Masahiro.
* Swap Sugguested-by to Cc for two lines in commit message, as per
  Masahiro.

Changes V2 -> V3:
* Fix blaikie@'s email addr.
* Fix Fangrui's Reviewed-by tag as per Masahiro.
* Fix help text as per Masahiro.
* Fix -Wa$(comma)foo as per Masahiro.

Changes V1 -> V2:
* rebase on linux-next.
* Add assembler flags as per Fangrui.
* Add note about KDEB_COMPRESS+scripts/package/builddeb
  as per Sedat and Masahiro.
* Add note about bintutils version requirements as per Nick C.
* Add note about measured increased build time and max RSS.

 Makefile                          |  6 ++++++
 arch/arm64/kernel/vdso32/Makefile |  2 +-
 lib/Kconfig.debug                 | 17 +++++++++++++++++
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 71687bfe1cd9..be8835296754 100644
--- a/Makefile
+++ b/Makefile
@@ -822,6 +822,12 @@ DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
 		   $(call cc-option,-fno-var-tracking)
 endif
 
+ifdef CONFIG_DEBUG_INFO_COMPRESSED
+DEBUG_CFLAGS	+= -gz=zlib
+KBUILD_AFLAGS	+= -Wa,--compress-debug-sections=zlib
+KBUILD_LDFLAGS	+= --compress-debug-sections=zlib
+endif
+
 KBUILD_CFLAGS += $(DEBUG_CFLAGS)
 export DEBUG_CFLAGS
 
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 3964738ebbde..5fd7792d03fc 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -135,7 +135,7 @@ c-obj-vdso-gettimeofday := vgettimeofday.o
 asm-obj-vdso := sigreturn.o
 
 ifneq ($(c-gettimeofday-y),)
-VDSO_CFLAGS_gettimeofday_o += -include $(c-gettimeofday-y)
+VDSO_CFLAGS_gettimeofday_o += -include $(c-gettimeofday-y) -marm
 endif
 
 VDSO_CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index b8f023e054b9..7fc82dcf814b 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -225,6 +225,23 @@ config DEBUG_INFO_REDUCED
 	  DEBUG_INFO build and compile times are reduced too.
 	  Only works with newer gcc versions.
 
+config DEBUG_INFO_COMPRESSED
+	bool "Compressed debugging information"
+	depends on DEBUG_INFO
+	depends on $(cc-option,-gz=zlib)
+	depends on $(as-option,-Wa$(comma)--compress-debug-sections=zlib)
+	depends on $(ld-option,--compress-debug-sections=zlib)
+	help
+	  Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
+	  5.0+, binutils 2.26+, and zlib.
+
+	  Users of dpkg-deb via scripts/package/builddeb may find an increase in
+	  size of their debug .deb packages with this config set, due to the
+	  debug info being compressed with zlib, then the object files being
+	  recompressed with a different compression scheme. But this is still
+	  preferable to setting $KDEB_COMPRESS to "none" which would be even
+	  larger.
+
 config DEBUG_INFO_SPLIT
 	bool "Produce split debuginfo in .dwo files"
 	depends on DEBUG_INFO
-- 
2.27.0.rc0.183.gde8f92d652-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526170321.137238-1-ndesaulniers%40google.com.
