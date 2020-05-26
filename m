Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3U6WX3AKGQEBPUGEUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC961E2846
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 19:18:39 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id h26sf10142676otl.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 10:18:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590513518; cv=pass;
        d=google.com; s=arc-20160816;
        b=wZN9ehB/kbzTrTdbZg58oxHx7/75OCTRE3IBXZqaSJ9mD/BqdpTOronOBe3yj6HVJV
         zBALXTe6HGVmHU3gVe1iGsHfNOltVF7Na0c/7aAbFl8384sFYCJe6+U3BCFbzu8xaESU
         2mGI1T+5S+IMXUGtxzvGwmVW9FzTi+FWdIvjPBzLixLSFl4yYCWKt7rGZtpDsG++fRHu
         2LC2H0kWhqy+ePoBMIIS5x5MYoAtU4IK7J7AG8VTGqH7LO8LyNJikczVD4Sg8IT0l2FU
         eu39PkMRS7GpSydgNSEdnXA82/UGki/AuevfzgtXSHJrxk/8AHWhhEj3uyEju4GafGBl
         oOrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=g5oP6HGW/NAP2WLh3xPeHpMh72X88iOg6EMsSO0Lwlg=;
        b=UzJ30oDPwL58bx/nNqQL26tqJ9B8FbSmBhtyAch8A/2w9N9ELOJBeTuoEaLTPpU0VE
         W9cYnpo/jcCuRthz+cRGuLSaj7eiYJG4hncDg1UpFPT1SsLcskuZ4c1Uv9FIg9iwZuYX
         b+dtg54o2pvXNbWaea+ker63uFzXH84zMKy4r7vy4WDj9PPvwuYoq8QcXhJlMeLgdMfQ
         ZFT2J7s6iFJoAjysP+L9IMaKwMz656CHzDWCGUoKKIxjRTug4IWf+utd+hZyW6YVi+Xm
         YzglAojon7wqNEUL9m3VB5gbOb2slLrwiuBIedb1/NDU7G9CWXuoTF8jz3IX8cSpz/pL
         bqbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aV+EtZWf;
       spf=pass (google.com: domain of 3bu_nxgwkad4sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3bU_NXgwKAD4sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g5oP6HGW/NAP2WLh3xPeHpMh72X88iOg6EMsSO0Lwlg=;
        b=hByLF6xSh48QXNZmL3WB3GziZrYu1KqVZri0FuoLghZCVPDoeBagnvnzHKy5t89EJ/
         ApbW+Reh+Hk6f8H9Mo+pu5H4lbiVQizIbio5VFE/UmJFI2W2+4wHCfKLtfMZDWjhJ/ZZ
         3P1faf9IfpuD08v1qRR9bkNKWbuf2SO4Nd9NNiB1YRo8V0A3fQhMpXq/NmxzeHOggyOV
         7OzrOTmUQRvKeoJTxmGW9/CB6RpDinUbe/w4SoW8wSiuHZGN9/4Ic+1oGbALVbFTn3Rb
         GSIJ2G04Cqs6s/Wh0yzYUw15svkACzLls+sCJbpXXBrJUoHDYbR+7wyhRnMeuQn8qyD0
         AHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g5oP6HGW/NAP2WLh3xPeHpMh72X88iOg6EMsSO0Lwlg=;
        b=K0XvzbH5/gigeZXkA8jWyzQCNBQVHTDm0CvAn6mufclcUd5Pd4qV264jlLeioMwJfE
         jDXN7zzo7hNLwNkvOF8FEBjy4aABPFowIKeAuRZCipA0U6X3kDv3MDAzgWZ79ullXBXD
         0khnfneiBkL+xa3YI1MbE4NBC2528UclToFWOepPoN/kMCKNQ1WcHbB+E+1HR0KzmXdH
         sIsqyFLFFaWDEWzyl4hXLu5UcarvwwbUmbMNgufXmK1hUm24qWOJR+kErbTh+K+4//cO
         hiocEWOlPZtictACILxHmSFpPIdHe7OpkeJj0iuv9axi2BQsmZ2wXSjjvrDOQWKlejfG
         /ugA==
X-Gm-Message-State: AOAM531Tf2W9Q0+Oa2A2AlgqH49XZTUJDEGclkheeiONiZ+tVEXOrDLL
	pEsaoXzwvaab5tta5Q+ieQw=
X-Google-Smtp-Source: ABdhPJzD+oCWTss6hHHfUjHcd0FANBRdADESUqLVUWtQyLHf62id/Vy9/2SYlYIOPkStvgXrWUPKUg==
X-Received: by 2002:aca:b30a:: with SMTP id c10mr188648oif.44.1590513518182;
        Tue, 26 May 2020 10:18:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:61a:: with SMTP id w26ls2472146oti.8.gmail; Tue, 26
 May 2020 10:18:37 -0700 (PDT)
X-Received: by 2002:a9d:2ab:: with SMTP id 40mr1736738otl.230.1590513517864;
        Tue, 26 May 2020 10:18:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590513517; cv=none;
        d=google.com; s=arc-20160816;
        b=D7qiaUFaVPYTLJpUM2F786SH/7nf28kPiVj7maH6bEWeO9wMZcgKLn1NzhuyR0OMNa
         g8K0elSLEn+tuuPD7tj6U3OLI94stmYxKSJISEbC+gFuH1h2mEirfEQzR5NKq6og/JoG
         fow67tO+EsbFQME1sX3CJBTFqS013LNU6m7Pa7SSQLj6JaOFswGkuLUh+mbc036rHCXp
         HwZJQCQpHdWzhokM3QOBE8Q77pYwQUwBruTyrxWxJ2H2yMBRY2OwbNPLcOTKi5Ej0aq2
         ZCLOg99QA/tkidkBWLu6n/57slUC0s98wfbNiKcnfEBKb+PWgI5t0CTRMdw6jNI0b/G7
         q9Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qz8XL5HjRypO1RoMKqirUSXQ6SNzxq1AQO7Af1uk7eg=;
        b=CBRSTRorHU477ssUZVt3mDeOjAzJppOpXWOk7BVHTzDGfS/TDzsf+j4YVcdZeZHPyu
         ZmvaWTToptNUybTi0s+b7ULPIn0UmiYQtXkSO51nirLtYhP13DBEsMED5KsPrXM5L/VO
         T2hLOlLpg4WrhhnapEZwWMX2/TaM2yLhvesFjUZ0SOW5WxDZEZc8DZFDEG7w5xlUWMk1
         CMNR4YaW3rMRad/GaX88irtrARzghKEErvg/hPN3W+dafJZm9UBVcxRa2FNKRDHNa7an
         C9e8FNdpH1IKW8BjfyTAgytBmVbMFPoSiYrU7cAxQAnI/BVRkUq8brsGkaShI6j++XiJ
         YL8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aV+EtZWf;
       spf=pass (google.com: domain of 3bu_nxgwkad4sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3bU_NXgwKAD4sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id a62si72733oii.1.2020.05.26.10.18.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 10:18:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bu_nxgwkad4sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id d69so16989918ybc.22
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 10:18:37 -0700 (PDT)
X-Received: by 2002:a25:253:: with SMTP id 80mr3241130ybc.405.1590513517344;
 Tue, 26 May 2020 10:18:37 -0700 (PDT)
Date: Tue, 26 May 2020 10:18:29 -0700
In-Reply-To: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
Message-Id: <20200526171830.151966-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNASkcLx-K+W1va9WxfxZ=7H-w65QbyBt=88dzK1NrrM_PQ@mail.gmail.com>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH v5] Makefile: support compressed debug info
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	David Blaikie <blaikie@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aV+EtZWf;       spf=pass
 (google.com: domain of 3bu_nxgwkad4sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3bU_NXgwKAD4sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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
Changes V4 -> V5:
* Drop unrelated hunk from a dirty tree.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526171830.151966-1-ndesaulniers%40google.com.
