Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEHUTP3AKGQEW4EAM6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDA11DD9CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 00:00:50 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id r11sf2400463uak.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590098449; cv=pass;
        d=google.com; s=arc-20160816;
        b=xT9VK0e3hlgY+zS7PlbNrJGGnZHwFouxdMVlbLJwGwaSoCWNu0moNXbO33cKW1FCo0
         4GVfUgUYcffcJNDGurJOZi/hgjbGwQ/8A4mWOaC2Q1gf2G7DO3N5oaaUcU+CBVcD0/D1
         xe1a1Ow7LYUW6J/uujYwMjFDUWblsWpa9c0cT6ME/+Ke3U3uJlClITgDns+rKTSgtSeO
         /k6oKlZgAfaElhdUmcQx0GIrGei/73k7Dt7coPiRGPkMp7hlo/hwl1YZ5MvP1FV4+AZj
         YWbAjwWvPtqE8kNRpUMkRqPqM1rueGoP35ImqV1pb0G2xdrtRO1756rAfv1TedqCtWIq
         JF5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=otGhew9Jga34mYfmHUdwJaZR6G7slQODdlIyIiokzvo=;
        b=MUZctu9fyV5O7hbtYf3vcWIxOlMQ/qhlfjKybIhiuL0n99ThX/arhXGxqmNPFRZzTX
         xxfkgb/htAc+dEYR/V5IuuIuI7bQs0YGwDfpYQbrNAn8WRiVdbGF3dd3FJQSpCvY1lTl
         aUzpQ6iV2OvHrC9VlFfk75WfddPIQTqmona/K/LrImZ2Kt+3LC4WLRKrYNmMYbpL0EO0
         Ec82QT7au+OCRWS5nq3rVLyoO5yEa3x7Jals744be/bvVAqdJl8NGEYISzmtupYo4AH6
         vw8vBQULTZzcn5+f1s17ElO9Y1Ww9K+8CVxxJI/rbdbMPhLBUevxew7aJXEfnJ+N++EL
         EF4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YfIck0fB;
       spf=pass (google.com: domain of 3d_rgxgwkabwf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3D_rGXgwKABwF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otGhew9Jga34mYfmHUdwJaZR6G7slQODdlIyIiokzvo=;
        b=dXdjC/XTv2HJ4I1HpIGh+StRindnOs6lgNOFlRkNHYKoJQYDeHv/6ktmSrRNmXafb3
         /P1usA9waDocWMEvqCYn/bosU/ceIXtq/eMnQEK7j6Rep5D2nIlY3iUkubrlrHMbLorT
         d/z7QCHsvRgqucplVMf4zuN/35SRY/jFGT5qGqZd3KaxV60gwQ4pez8QpZed9CwAdSHv
         7LhMYUFV6qqKczDaMSsVi+b9ea40iCUiFG0YY/gKRG7TWqzuWCUq8WUIK1yTi0/w34GD
         Kwq5F0ezQkIkhacjkNrto9RVy3f4k51r7w7iMx07vW0zulTQKHZquVMskvLpgRkE8XLm
         oMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otGhew9Jga34mYfmHUdwJaZR6G7slQODdlIyIiokzvo=;
        b=igkNSTJZPY78Tj3Xmk3vIkASooWB35pmX/s74ulxCH68MTw8K8F8ED9bQjVjke30U0
         LVPqNpXih804ltWy4rD5TZRipvc3L5i6rJaTeoiY61PD6wTyWd9RwRlmBytENALxPrIr
         0XYTqs3hT8QxgkcUqM7nKB3WEvK+njEXx3q/hFeW+FRm16OUxbIYtJpsft0oW74VvsYb
         0KH00LGJyWSAqf9SsXcFNbPZB4Hzyhwpvu2xCmArqvRjaNVpCVMuWAyNcO4+kACtbOwR
         jVD/Po4YZaDbajuf9q38oGAGxwMwzvYrAdYLh+sXxL6PH/UnGxRX4SoQPWAFEbHhh6g0
         BzDg==
X-Gm-Message-State: AOAM533c8iXaTPLYDUoze+NTLOX5G+RBgHSqK7tjQXFdCyBrRNKSfakO
	ZhthP5RfeD2HeYYVVwGS2Mk=
X-Google-Smtp-Source: ABdhPJxtyfqjUbTDTXcL2eVVt1v1tNPXBSm11hvLz9vacLflzzfF0pldN5oAJEabAm3xVMs9swji/A==
X-Received: by 2002:a1f:294c:: with SMTP id p73mr7026209vkp.24.1590098448856;
        Thu, 21 May 2020 15:00:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2462:: with SMTP id 89ls245319uaq.3.gmail; Thu, 21 May
 2020 15:00:48 -0700 (PDT)
X-Received: by 2002:a9f:24c1:: with SMTP id 59mr5811939uar.91.1590098448405;
        Thu, 21 May 2020 15:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590098448; cv=none;
        d=google.com; s=arc-20160816;
        b=n5rOGftJDtSTP//HiSfAB/F1obG5CCeZ22BPA/6650fdMtFQTmH8LjG1stQ+OjuVVA
         ZfZA5gpzK1zVD5WLln+GxgQKz3uo3PLvXgdnOzszJXtpY6+rIEa6GII4DGEArU5A5Rq8
         pspIpZv8VeSrCHiq0nNF+zULDkn+nQqJKKYRZlUeGDIaCnbbkxwV9zdb9P7KqZf17wL6
         9GReRDoFEKJLwwSGFMDdfVRYVr2gkscU2jfA2dEIjY1GT/0fqcWdcJPBR+L6eJdmJG5X
         zg1PGYxtoogTtAsF2i77o55QOjmhAxdHdLrCYQu2MMAN7QQQvb8KMHCeY5/c17ZsVusa
         4Wvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=aKUpBFPk5Djn/rrzBrR97m/tGbj33/YMXzpAfYT/Utg=;
        b=hU0mttl29+waVqnT6wjAlUjVgOu68ji0EyBQyiIsfF6UJKP4HfxBivW2WHMZs7XT25
         q533cBXzUuwxTh5RbO1DmxGLjoSAPrKvKkRJSNxT6ra+Gyo2diMmD2TCh8XEvCq31Ld9
         qXAGbQqMrq75pIMw53fKYGFj44BBfW27ZMbs57lBk1EeMyuhxUQOQeIpQ9hGuFiWi4kE
         IHbfe69DmDo/L+UGLuZllPD9zMQhIP81OAK5S631qHslkEOI7yA3lhnv2OAIo4peEpfa
         81AofUhp3TrmOQu61KMnf6uFC+BpXZ5BcIKSAV1vOewwdjEwJeAqRlo9qhT4POqf/Lg0
         RKNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YfIck0fB;
       spf=pass (google.com: domain of 3d_rgxgwkabwf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3D_rGXgwKABwF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b10si491917vso.1.2020.05.21.15.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 15:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3d_rgxgwkabwf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d69so2763218ybc.22
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 15:00:48 -0700 (PDT)
X-Received: by 2002:a25:4207:: with SMTP id p7mr17146898yba.424.1590098447910;
 Thu, 21 May 2020 15:00:47 -0700 (PDT)
Date: Thu, 21 May 2020 15:00:40 -0700
In-Reply-To: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
Message-Id: <20200521220041.87368-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH v3] Makefile: support compressed debug info
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	David Blaikie <blaikie@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YfIck0fB;       spf=pass
 (google.com: domain of 3d_rgxgwkabwf56k2mdfa6jk8gg8d6.4ge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3D_rGXgwKABwF56K2MDFA6JK8GG8D6.4GE@flex--ndesaulniers.bounces.google.com;
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

Suggested-by: David Blaikie <blaikie@google.com>
Suggested-by: Nick Clifton <nickc@redhat.com>
Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
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
 Makefile          |  6 ++++++
 lib/Kconfig.debug | 17 +++++++++++++++++
 2 files changed, 23 insertions(+)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521220041.87368-1-ndesaulniers%40google.com.
