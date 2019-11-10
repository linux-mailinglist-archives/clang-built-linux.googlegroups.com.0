Return-Path: <clang-built-linux+bncBDB63H54RYOBBZG2UDXAKGQETHQBWKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C38EFF69B1
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 16:31:48 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id k14sf25418ljh.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 07:31:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573399908; cv=pass;
        d=google.com; s=arc-20160816;
        b=h9P8fuyEB7xym0KJ4MrqlJHB0Cc6IbjsIyi4q7WwuIvsG7T4N1fCIoz08hraekkH9m
         QP1uJ3QRpE3Cv+rXyK4193YdSmRR7FuazwR+2sIlToamm1u7Ky33Hmuud8gAPWL8HFDL
         i2B56552UXLHR7bNCo7EPpr77wnQaCcQG4nxEUTwwwX8yL88hKev4AG8tZt+XsBXyeOK
         Ktq0t15edTBwRfP9NrzRNYfZqWVVsXaYO2/hp18XU/TfcRQgBxZ0EP39kQblvO9LoKLx
         AiGEDclle/qHNFteR59Q2uCQbjVQODlGobyIJpS+QawP49lD3rhkDvq9NHAIr13oFpHl
         oPLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nHCoxx/G9NEQG5Rd9gqCDcg17aVpAjYSz0eouzA8feI=;
        b=QHRfib6yy8TWBAEWDBVaXEgafizpzm2WaRbxuuhDcNA0+qSoMFuLNoOcOWGvTnKmmZ
         WqH3LKpVyi56VXWzpTPEMj3X5VAg0BIfTFgGd0E0C9LZ+GrnlsR4cRLvjwSL3OKDBSWE
         eU5O7Ti8d5g/Ti79i8hlGeZ0eNRZEWP1tYvvAI7oY01NrjxhIgMkyyO4GpKUwIrRhekM
         mLDWleDGLHVcYEBtdlRVmucbGe6Hd4sMX45+5Dqn8Z2L0dXwLCaJnKN6hWjR4gLfYfZ8
         lkc00wHMRg3xiVx+E1xZbmYIC3iV7e+OUdgeRX577ESBUXKxaBlUCuPgDDmKixMzIXPw
         oxyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=ucwdZ079;
       spf=pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as permitted sender) smtp.mailfrom=dima@golovin.in
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nHCoxx/G9NEQG5Rd9gqCDcg17aVpAjYSz0eouzA8feI=;
        b=c7CkfjF/go/Zyjww5FZCDyiSQiVcVJAYv+DsRfMl7m/xK6xy++KK/MXAPAJVagr97C
         vo79BbRgo87in2lZ94HYwyAggVR4MGiCEpp/cGetNWS4MzdJTKW3F5vdTYda8Y1OTo+s
         2pa2+Op4Kdk643091pkj3vY0bkQYgt5dKLpTkQcWROayt424/h7YpIvbO4afS9loyVCK
         atKIYUJSDY9ud0yggaIG9tOhrflb0/QLO9hSrwvOf55bNvx2PjK9CdA30+c9Bk2QjeZz
         y/NxdtudbJd+aSWW/loxW5RITC9HoT1sB81Ebh09ZhrZKEeokqOXUnjeskSLVeK56fCE
         ZuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nHCoxx/G9NEQG5Rd9gqCDcg17aVpAjYSz0eouzA8feI=;
        b=dfXJGsx01sDXY0PH3SytLBdxOZ15WTFZ7QACFo1EuomOFYMRz9vnBXDTHAxfzvyxWI
         pMrUeX2Lz4nUv0AinSfdEl0jr6Ts+D3o7RBrsZci0JlN5Wpj4ABxjy3Iy6MsvGRyeEU1
         OFhkc2I35k+Lu0iOFJVg5xox7iLb+WwpPoydzk1CBjIwTTaMSQ/SiK35v7o4d+oJC9K6
         X1q+WBg2LBYL9N5cnDiaWjr63McuTOtdonmhdbKQMzPZgDomUpZ8wNJAQOkcNnYvVWqt
         tsenh2gTuxYi95XjQIdb74+D3pW0rYkOfK+tqdaI1CQg500ULhSHkxeSmGze+zzQeETQ
         CG7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjUoJIDep9Owkpj+muNuCSOOz39QDLYId8aBrUUWBzhPaQA8NW
	Vy2Ejh9iEgu2ixb4EL4F7lE=
X-Google-Smtp-Source: APXvYqyiMjZp8YS4nApAcl/ganHb1NhPBHP7AO+Th7cuNEHWr/6Ttdy62Ot2qS6dNkBUOncz2JlRrQ==
X-Received: by 2002:ac2:4302:: with SMTP id l2mr7622620lfh.116.1573399908337;
        Sun, 10 Nov 2019 07:31:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:40d7:: with SMTP id n206ls520924lfa.10.gmail; Sun, 10
 Nov 2019 07:31:47 -0800 (PST)
X-Received: by 2002:ac2:55a3:: with SMTP id y3mr12738132lfg.108.1573399907814;
        Sun, 10 Nov 2019 07:31:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573399907; cv=none;
        d=google.com; s=arc-20160816;
        b=MWhiKaNXRhby8STnN00yNeRAx3ZZnDBX+C9DpEla7y3Zdtt4zLKYHSdE1K9dfpRQPV
         iDwAG8YQksP+SnG/qdxuqqLvRddalxdz01YdiY91Kkt3jlYgjeNglyQmB/LWjifnITGf
         Gvvs3ipwY5mBKRblT1MNF9i2YuFi4s0e4n1ISOi3tnBFBci+DCRGbLEyaMbkWAFaPdNB
         Gxnfm11LFbXSIptlJQi1ULySQ+9H+hp+zL6lT0im1rSjY2yEm5WK/wzM/tmo8RXpPR7m
         V8ehZiUkW3DgTnaN3+UieTKMS5vu9e7dcGdfJQlGXOfxIXk+6hkebWI3oGQLVent/5G5
         VALg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=J9gGtCi1bqhoTbjtK0ZLFDb2RPEmtebHwiHCJTTfQV4=;
        b=wkQpldxS6lkX1nl+/RYD4jpU16l3z8tIUToDziS8M2+aSr8lNzVrbO5kU9F4wrJU4E
         NzUGlQtmDkDHFqCfumRjYToEu0BpxhztZ3vrojJPDiNu4pQZqG+p07bp5Yo6roLILpRA
         VHbbyRBHydJBfK+qx1oo7QsxTE+UgUWZ/g644jtY+DEb3eCsxAvJXouKpdnCFU8g649g
         hxCmePPWmCFr1nHCZGz3D9p3MirWbziDDWL1I/gc0Rb91hE++Y7moLm8Lc/iie/E31qF
         pNwzgsOB6DZeRbrxrqcwS555Dm9Hif55Y+oLnRFTkkLpNXmnzuvClwWN0oW3LweUy3yy
         eNsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=ucwdZ079;
       spf=pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as permitted sender) smtp.mailfrom=dima@golovin.in
Received: from forward104j.mail.yandex.net (forward104j.mail.yandex.net. [2a02:6b8:0:801:2::107])
        by gmr-mx.google.com with ESMTPS id x23si826471lfq.0.2019.11.10.07.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Nov 2019 07:31:47 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as permitted sender) client-ip=2a02:6b8:0:801:2::107;
Received: from forward103q.mail.yandex.net (forward103q.mail.yandex.net [IPv6:2a02:6b8:c0e:50:0:640:b21c:d009])
	by forward104j.mail.yandex.net (Yandex) with ESMTP id 5D05A4A11C7;
	Sun, 10 Nov 2019 18:31:47 +0300 (MSK)
Received: from mxback7q.mail.yandex.net (mxback7q.mail.yandex.net [IPv6:2a02:6b8:c0e:41:0:640:cbbf:d618])
	by forward103q.mail.yandex.net (Yandex) with ESMTP id 5572161E0005;
	Sun, 10 Nov 2019 18:31:47 +0300 (MSK)
Received: from vla5-9cb0c276d29e.qloud-c.yandex.net (vla5-9cb0c276d29e.qloud-c.yandex.net [2a02:6b8:c18:3588:0:640:9cb0:c276])
	by mxback7q.mail.yandex.net (mxback/Yandex) with ESMTP id FSAetauLC0-VkeGYqD8;
	Sun, 10 Nov 2019 18:31:47 +0300
Received: by vla5-9cb0c276d29e.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA id 5WwNymo0nq-Vi0mgFID;
	Sun, 10 Nov 2019 18:31:45 +0300
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client certificate not present)
From: Dmitry Golovin <dima@golovin.in>
To: 
Cc: Dmitry Golovin <dima@golovin.in>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Matthias Maennich <maennich@google.com>,
	Russell King <linux@armlinux.org.uk>,
	Nicolas Pitre <nico@fluxnic.net>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Stefan Agner <stefan@agner.ch>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ARM: kbuild: use correct nm executable
Date: Sun, 10 Nov 2019 17:30:39 +0200
Message-Id: <20191110153043.111710-1-dima@golovin.in>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Original-Sender: dima@golovin.in
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@golovin.in header.s=mail header.b=ucwdZ079;       spf=pass
 (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as
 permitted sender) smtp.mailfrom=dima@golovin.in
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

Since $(NM) variable can be easily overridden for the whole build, it's
better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
prefixed variables where their calculated equivalents can be used is
incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.

Link: https://github.com/ClangBuiltLinux/linux/issues/766
Signed-off-by: Dmitry Golovin <dima@golovin.in>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: Matthias Maennich <maennich@google.com>
---
 arch/arm/boot/compressed/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 9219389bbe61..a1e883c5e5c4 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -121,7 +121,7 @@ ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
 asflags-y := -DZIMAGE
 
 # Supply kernel BSS size to the decompressor via a linker symbol.
-KBSS_SZ = $(shell echo $$(($$($(CROSS_COMPILE)nm $(obj)/../../../../vmlinux | \
+KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
 		sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
 		       -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
 LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
@@ -165,7 +165,7 @@ $(obj)/bswapsdi2.S: $(srctree)/arch/$(SRCARCH)/lib/bswapsdi2.S
 # The .data section is already discarded by the linker script so no need
 # to bother about it here.
 check_for_bad_syms = \
-bad_syms=$$($(CROSS_COMPILE)nm $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
+bad_syms=$$($(NM) $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
 [ -z "$$bad_syms" ] || \
   ( echo "following symbols must have non local/private scope:" >&2; \
     echo "$$bad_syms" >&2; false )
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110153043.111710-1-dima%40golovin.in.
