Return-Path: <clang-built-linux+bncBDZ3F5UE24FRB44QX32QKGQELHOWZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEEB1C316A
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 05:13:56 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id b19sf4535792otq.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 03 May 2020 20:13:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588562035; cv=pass;
        d=google.com; s=arc-20160816;
        b=no/sk+6e/3OaJg7h9QkQHk0lkZnCh00A54cca9hLqF8slb8vXKc+OEl8i/jebJtDZr
         TQ+pncFohSe9Z/DYpCAnuMe7HCLcjzyXJG/UTqfDxrXZaYq49J4qVcMp1b5AW9+7FiTC
         GXk/J4HvW+zVVSb6i2u3EbTIC2oSV+mjm/HVK6XMuzAw8LWr+Vx0QFGidIFdQ2LYD8+8
         hDOdclYBUaTeDr1hqwLpJheRuftsynR2eIwEsyIx5xBuU8Z2V9CsmTyufcPHYq4iXcSu
         goioAwPIpskAjx2uu7Azuc1c0VPCy5m0od0mHAOnaWMolhcQGJgiHhIz5n16z30PawLw
         ahkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=IdvBmgFgK15VB/INz/u002vmJD05fpNoqgTr/N9G+iE=;
        b=m4dpcFgC06ZCu4uqMTfHRW76tv1pt4cUMvtwSQHB5O9UdTcUzJchTxd+fRGeuEhQQk
         K273Ntm6YS6Ai49PHV77jeZbccQKaw518SrlaGjc1Ci/8p/E3dL9jIwu0JMuIOldganq
         MJV1jDsYzdoko621hhBOXleVBmco2W1H34i/ixuDvlTMZ2JvPqu9inwVuy1Z038r7rz7
         d4uPsp+Y0CivzhXYGPGdMAJekU4qd+Fz/te1g9Dz0d35Ei+/lhP4W91YMyrN0RJrinvQ
         8btujFUyS1vtNvevXJSa8X5yHgnmMIarS2IvKbghWtoykYsSloYrg7Iz4/WtHbZL09tH
         jacw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dpDGMeyJ;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IdvBmgFgK15VB/INz/u002vmJD05fpNoqgTr/N9G+iE=;
        b=H/yHW9d+xhYKMx6nR36Knd48+g3AyN3fU2jPr74r8EiZwGJvi4sBrCGxFy08ESRcvv
         jWfiIxpY4S/31EDc90C6stObn4Nan8JOlHG9Xu0c7PdNpxDD4DSrGS0iG5+qWqynslAn
         KPgtbOpshjn5r8/oX13T32rVqwuwEB1TH+fj8L7MhQ7ulNhPhIpQnVBa9+cZVTZciVTX
         uhv4Wz8Jy+r2H8nMSHeY+/gDDFwuWejuElCthFC+WEeQSSnOFrs1lu40W5haRGUF2pGN
         lGsqWypQPWaM96scG1RD41UgI78HqGWZBov9lgCzT1w2L5KoDrwBtUIYcU25ilaG3Rf9
         CCbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IdvBmgFgK15VB/INz/u002vmJD05fpNoqgTr/N9G+iE=;
        b=qjMnGfcbabW4tJNIYRZ8SYJ/fTWjXstbKDc8E+824k2UJhhs+0RvYAmJtb/pbq6cRS
         FRiZH3NAjTcmn0SyP/9T0jDcmeBO10LV8LocbSLIe5ny7Iu6Ib86rVPSWaMC9UJETTpk
         WzfAoRLcnG2WzgJj0VvS9U1aSLlDe+5RFNQVbEizq8qfo0ixEEDz1jbm/guEClGJ14d6
         mRIFnsRTRJYIeSFrQcZWkplq5cDO3SEByFR77q5IfMmjVcyDTUCdfQ7GbtLWaxQS2DRv
         xqlx57qa5Rtw4d7LcWIk7mgW3ehGhMIAgnyDtgf5BfobTPvpXdb1aWvJGWmT79sS/oP8
         bd8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IdvBmgFgK15VB/INz/u002vmJD05fpNoqgTr/N9G+iE=;
        b=WXPmP10jyUz5g3ErC20nhDzWn45owmCihUSjYnmXf3jfreMTBti5cZPbc8FvyPIs4r
         855qlX5k/9Am54chZRTlj5h6u5sN84iejeqIjnc1UH6Gl0u7BUehS2yNf1UOf6ECh0ml
         9AEQicJjWQaXGabDJg8scYnV0ft6ErEn3t/LqdX/vaJl6COYqa0ziT3dTebympWEaBs8
         /PjDOsB2z/iejXXRWw8HrJT+mSXoi1IWVt27ezuH0iIuRjS0BShIhhMtGPPw3YOSCpg/
         lETmYQR4Cg1MSSEz0S/wwNIfbi9KgY71C6zVitM10V95BYy/zF1QCgRZikAbyoNxb9Tv
         9ozA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuadY7UFWFN+T+4o+HKcwNgp/GHCjEZdcsVrBz7hOpqvtHVR/QeF
	ZX+T/CR97BXFKIb7saAkdwo=
X-Google-Smtp-Source: APiQypJq7Dy8ZKl07UFk6I/28D/MK4qkTBAaNXXKowqgMCjUrwbcBzDtiYqmQt206Hv6La8XLR3dqw==
X-Received: by 2002:a4a:1445:: with SMTP id 66mr10442584ood.87.1588562035502;
        Sun, 03 May 2020 20:13:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ad16:: with SMTP id w22ls2617398oie.8.gmail; Sun, 03 May
 2020 20:13:55 -0700 (PDT)
X-Received: by 2002:aca:fc0a:: with SMTP id a10mr7752259oii.77.1588562035027;
        Sun, 03 May 2020 20:13:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588562035; cv=none;
        d=google.com; s=arc-20160816;
        b=gLeTaffxe6nSU5VlSNX31xXsp91os7RnfruPriXGfE3J/1ZHcmGVVhFLZfAZCXDZgx
         n4d3k/k5HtK27Kd0otFMo7OvgmzuJHx6ToVWo/fF9KBGx3BJIlwVy7Q8nAEMA+1PX7k0
         c0jb0NRbZ845Mm6Sgqb+P7e7LQNkLrA7B5HWgUnGtQhYVQOouCLgNDCiQEY4qRgj+eoi
         g7Wn468Ln+qijb4vf+9hPJxwDG/FTkw+eRY0aePO9xUUpo4UVbKyo57t5SplFChgZGEU
         h5l33vowUNv+oZereJZvW5A5dy7Mi45tfmmN/S1SVMEicGgOssanZmV7Q1ZcM6GLkxot
         C6EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=QnqKa4NQZ9uOHOh6AZE0XOBDXfa05SAZBiRq2Vs574w=;
        b=pBBnNPiaBFc11oZTMPLx/V9RqGRPAan+5X6JylQF+yltFUpL0VmRlEcEAaMDvPQYQ+
         ZSmqXBus2gPOmzpQK18pnwC451KQZ+U5nGjt5DfcB/JNY2tZtLjmrJobeYW3RLml6KMZ
         gx7byqPu29nH+9UafdxHh+tm+8PoXr5vr6sKJfGYVktXb4wV12zPDm2hpVrjKhyerKc9
         E/0Tp8AGRlKGmekMnno+ZW0/snwvRNN4cY74XtQ//gWiaIBGtGVHzgRvVCw25qWF2v8I
         Ly3Dc/tOj1Gl3HISklA3F0j+ZdMOeKkE6QSCVd50DQlwdYwVg3sXbPu+nVK2OijkjTL4
         zsjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dpDGMeyJ;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w11si628477ooc.0.2020.05.03.20.13.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 May 2020 20:13:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id v63so4883500pfb.10
        for <clang-built-linux@googlegroups.com>; Sun, 03 May 2020 20:13:54 -0700 (PDT)
X-Received: by 2002:a63:d06:: with SMTP id c6mr7068285pgl.2.1588562034241;
        Sun, 03 May 2020 20:13:54 -0700 (PDT)
Received: from localhost.localdomain (23-121-157-107.lightspeed.sntcca.sbcglobal.net. [23.121.157.107])
        by smtp.googlemail.com with ESMTPSA id p62sm7400376pfb.93.2020.05.03.20.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 May 2020 20:13:53 -0700 (PDT)
From: Nick Desaulniers <nick.desaulniers@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changbin Du <changbin.du@intel.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] Makefile: support compressed debug info
Date: Sun,  3 May 2020 20:13:39 -0700
Message-Id: <20200504031340.7103-1-nick.desaulniers@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: Nick.Desaulniers@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dpDGMeyJ;       spf=pass
 (google.com: domain of nick.desaulniers@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
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

Suggested-by: David Blaikie <blakie@google.com>
Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
---
 Makefile          | 5 +++++
 lib/Kconfig.debug | 9 +++++++++
 2 files changed, 14 insertions(+)

diff --git a/Makefile b/Makefile
index 981eb902384b..313a054e5dc6 100644
--- a/Makefile
+++ b/Makefile
@@ -825,6 +825,11 @@ ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
 		   $(call cc-option,-fno-var-tracking)
 endif
+
+ifdef CONFIG_DEBUG_INFO_COMPRESSED
+DEBUG_CFLAGS	+= -gz=zlib
+KBUILD_LDFLAGS	+= --compress-debug-sections=zlib
+endif
 endif
 
 KBUILD_CFLAGS += $(DEBUG_CFLAGS)
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index f6f9a039f736..1f4a47ba6c1b 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -213,6 +213,15 @@ config DEBUG_INFO_REDUCED
 	  DEBUG_INFO build and compile times are reduced too.
 	  Only works with newer gcc versions.
 
+config DEBUG_INFO_COMPRESSED
+	bool "Compressed debugging information"
+	depends on DEBUG_INFO
+	depends on $(cc-option,-gz=zlib)
+	depends on $(ld-option,--compress-debug-sections=zlib)
+	help
+	  Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
+	  5.0+.
+
 config DEBUG_INFO_SPLIT
 	bool "Produce split debuginfo in .dwo files"
 	depends on DEBUG_INFO
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504031340.7103-1-nick.desaulniers%40gmail.com.
