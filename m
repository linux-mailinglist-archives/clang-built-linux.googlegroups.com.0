Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTENS33AKGQEJTRSY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7211D1DBE0D
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 21:36:45 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 126sf3364534pfd.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 12:36:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590003404; cv=pass;
        d=google.com; s=arc-20160816;
        b=FHN0gXjopgc98+RRt6Nlz44BIqTGoLFo8U4JPJn7j++WQ61jt7jCH92NxgFQZuFZwz
         mZ9Rxtac43WyouV8Q+Wr8kgC1uugnu2seF//Ui/9TJkQNVYpoms9GpW2HzaH2ApHJa4u
         VOncNiRisZ9+ibyPcJdmdPgT65tEWa7Yt3zkRRKpu429e8Wt+8F60V8xfoNJsSB9b5/j
         KVEFlAU1/kv0YRNi8mS9jy9N9wEpivLwO/lChFlRT0gU4sKCr1XQy9k+fb55AqjGqIl1
         9eD54NT7rDPE0LUa7NOVt+IU8eA0NPa980DEQstmaeVWLkedNqGBJ6tUj7bJ2B1AL3sN
         UBhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=OQZvumey/qcsIuMYHiNBbBBBp5ZFhQ+H+p4/49/D7F4=;
        b=x6w4TR+uBmQ2hr3hI68aLAyExbQe8ij4SR+XynaVm4D68ftn41k60RPnyl993sJBAx
         FORnsR5XjKpe7CdpkcUx3LBks+lt3yCW0Q/1nO5zeFzC+E+lerTkiBfEO+ABwSaHd/vQ
         MFt5j+5c/xBOy+dbLXiGNzrBQOMQdJ24Tqvzr352djVK+I1iVyhiO0+jMjLJI5xt1NoJ
         mYh1riEqlnP7aVNko/CvVqj3ieprzF+b6JEG/M/Vh1rm7Yg0w9Mc110QoOeDtGvZ+tfW
         QhuEok5z89EgZg3+IwDhnILibg0SOYQW/zsWiyNWVLvc6lRy3qUaMBgaSck8PqjaO4+3
         HbOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NLqxSrFn;
       spf=pass (google.com: domain of 3yobfxgwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yobFXgwKAOkYOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OQZvumey/qcsIuMYHiNBbBBBp5ZFhQ+H+p4/49/D7F4=;
        b=SaKxNPjmJvg6DTLdZEDYAjqAZjL85pBU+9wBkvX675JMKy+xH6eoTJX/mPWvFuiuTc
         A2DWQEgh2LU4tZrVM/BYmWJkeveuFE6LQMiCHqYDN8B2JiSSgnC5fJQIXb0sYyZjWH6s
         H3gEItD54YbEyoRrbvbjjLnjX7Pi67XbMo8SKpUPStCERg7qu7dyogZXjAcDunDgVbNg
         T/KmQAJNXLII2OWHUJwlcnidGugRKbKoE4mrNOIJDRtELlzWgxF7pvaGAM/Xcm+QE8nf
         Cb+zjIRgATdnPZOtzJx5ZaAi5RVHi8oZYLuvHbTTBGqD9O8ZLw4Fm9sy7dmPt+zqXD0R
         /8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OQZvumey/qcsIuMYHiNBbBBBp5ZFhQ+H+p4/49/D7F4=;
        b=kMUGNR8HzNp8ZBWYLpowNqV/gJ9RNY/vUvOBMXo5bFdZZ8cJky8Cf+84GQeAFEMJEI
         GTrOoBg3i3jCK+hWuqIZBACnFT/H2T6R1FMv5MaNa5ZMQsBl2hyhzC+2AT3qV/IR/opD
         qidfJlu4/sAIHAZ7lywUzzbZl+V03siU+E4HurlcrgrhHCGulbgwqo9YsXSF7NNRMgTg
         +rjbeNr2262OUhLDk8FfucFDeJz5b5ppbejtz/8eo2/nVpERMibWpd4CSy/gfE2i3ara
         cCyF2wIR2GB4ZBRE1hZQhA5Ic+WtJFUzTfBE++qRWIQ9n4jyaL/k17di/qvx6RDeaCSW
         7cQg==
X-Gm-Message-State: AOAM5327S37nXgnpmhGeQ4eZepNOthkQVbHcfZUuZPGnZlD/f5HU18wU
	3rUsU+l4J4rh1Gms+9kguIc=
X-Google-Smtp-Source: ABdhPJxUUMej/YS6a2CDTfikl0akWHTwqQzO7Cap88Bljx19yhi2XqxCwMV8apmp7buQAkjSj4ix+g==
X-Received: by 2002:a63:6704:: with SMTP id b4mr1833281pgc.419.1590003404140;
        Wed, 20 May 2020 12:36:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5a03:: with SMTP id o3ls728037pgb.1.gmail; Wed, 20 May
 2020 12:36:43 -0700 (PDT)
X-Received: by 2002:a62:2f45:: with SMTP id v66mr6165876pfv.45.1590003403717;
        Wed, 20 May 2020 12:36:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590003403; cv=none;
        d=google.com; s=arc-20160816;
        b=xlANA8xdVcR8YSdqt4Wv5/89q3wSEmB0cD/MPcj4fqCw0L5IjIf6xH8ubyeODsvIY4
         wFPq3FZn9+IKt3DcDWr8Wu73bF4c3gd4Uoh/lM14wfEsl4PsWx7k5dqG/LIoFms21ZiS
         3TKhbsVcdqvVhHH968JiNI1wM4KvIbhzMk+st4ZEthMnPXO/USmIjyHjoeEOH69qKaf7
         FxLmp5AyoCdnOFuuejgXbJB1fuTNcvF7cNE9LKNYDn+SI0Kn6Dd57twDxSaFXkITOagn
         6kgE6N3Nv+9M2IbP9s43PJ2ozxr8wdN9shEkbK4xKgW4RH1qLnaLslJFeE9tOJRqEnui
         XwaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=AVVfiQR/7pisBCGTKoQl1KucA/6VNUwh3DKASPprRvc=;
        b=H6H9VhmduQK8p45qS6rUaEGSc9d1O1Tu1QCKI/rC5xkumNvS+66dlMzTNK3Odr9p6X
         U69fwnb0l3ZiCWaq6c6OxYcxiNdmGU2QmvjjvSAwnN1IhHXLaDQhx10AgltdDhayf4dI
         Kw/4yCo8BEU5nst7U2+Nbobam8sbOc5W46GxJlxsSOnPcPscrwTwj2xSxp+C8ECRvbIa
         vPzSdzHxVeHMK2PPyuUscuOXNEPofQ/SkSVdq7JrUurbUTjYW8xOGfOiiAkzRxzDzPEB
         0TcMr3rGPCTD6L6XxAp7kzyCvYhGsH6xo7v6Lb+SIUj3D2kZ2ki24E4Gs4ZBZA+zhXR8
         nlrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NLqxSrFn;
       spf=pass (google.com: domain of 3yobfxgwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yobFXgwKAOkYOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y7si293899pjv.0.2020.05.20.12.36.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 12:36:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yobfxgwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id d7so2829992ybp.12
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 12:36:43 -0700 (PDT)
X-Received: by 2002:a25:73d2:: with SMTP id o201mr8570814ybc.490.1590003402844;
 Wed, 20 May 2020 12:36:42 -0700 (PDT)
Date: Wed, 20 May 2020 12:36:36 -0700
In-Reply-To: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
Message-Id: <20200520193637.6015-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH v2] Makefile: support compressed debug info
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	David Blaikie <blakie@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NLqxSrFn;       spf=pass
 (google.com: domain of 3yobfxgwkaokyopdlfwytpcdrzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yobFXgwKAOkYOPdLfWYTPcdRZZRWP.NZX@flex--ndesaulniers.bounces.google.com;
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

Suggested-by: David Blaikie <blakie@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Nick Clifton <nickc@redhat.com>
Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* rebase on linux-next.
* Add assembler flags as per Fangrui.
* Add note about KDEB_COMPRESS+scripts/package/builddeb
  as per Sedat and Masahiro.
* Add note about bintutils version requirements as per Nick C.
* Add note about measured increased build time and max RSS.

 Makefile          |  6 ++++++
 lib/Kconfig.debug | 15 +++++++++++++++
 2 files changed, 21 insertions(+)

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
 
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index b8f023e054b9..5a423cbfaea4 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -225,6 +225,21 @@ config DEBUG_INFO_REDUCED
 	  DEBUG_INFO build and compile times are reduced too.
 	  Only works with newer gcc versions.
 
+config DEBUG_INFO_COMPRESSED
+	bool "Compressed debugging information"
+	depends on DEBUG_INFO
+	depends on $(cc-option,-gz=zlib)
+	depends on $(as-option,-Wa,--compress-debug-sections=zlib)
+	depends on $(ld-option,--compress-debug-sections=zlib)
+	help
+	  Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
+	  5.0+, binutils 2.26+, and zlib.
+
+	  Users of dpkg-deb via scripts/package/builddeb may
+	  wish to set the $KDEB_COMPRESS env var to "none" to avoid recompressing
+	  the debug info again with a different compression scheme, which can
+	  result in larger binaries.
+
 config DEBUG_INFO_SPLIT
 	bool "Produce split debuginfo in .dwo files"
 	depends on DEBUG_INFO
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520193637.6015-1-ndesaulniers%40google.com.
