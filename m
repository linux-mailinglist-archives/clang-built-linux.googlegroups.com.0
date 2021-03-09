Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTWDT6BAMGQELGGWZHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 34403333063
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 21:59:59 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id i65sf4370417vkg.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 12:59:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615323598; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qqh+jFo0KrgZ5Mqi+a6f2mWjs1auu6pLxia2W5ZO6jT63JIiE2LnwtKHRwcRCikaNI
         ZD7lba+0E5oAl6QPA0B4Q2b/EiNxbu4FlUWd0XUCRJ/O27vgkb17MKOnFq6wdbNr+aTb
         u5XW5t06OMu77/GHvkORFlPbzoG9yyANpSUdEorsfqMJgQLE97mLUqBmVFyeMO8pC3cG
         WZbddAK1eMKAwK9y/tABLtRY9qCDUJ09dJf4thGGfgdV/OyuNe1aI63KqfDhLre1ijSl
         zjBSLkOcQw6XHFt2tivCjmFoCU8BeY2YZKKZIp8D6PYGUO2O2x41n+ky216AG83gnxiQ
         +ndQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w6RE85Jh1bcHPOk47kNd3DRt05G9QDMotCNiAku7mGI=;
        b=XwJKUYoms/Y2c6HIawAiqM2AbY7eEORhC1/tR4ZC9Ih+0w5eTRoHiY80QmGxIxy0+r
         M+/+/ZT7icPjjl8Kh8rQZjsdtJK2wHCvPHWtohUsDGFndI0uR+to5kfVYmrdEIiBl/O8
         Kmd4BrNrFq+ikaPhdL0x+NmEdRINmrc99IqMs5RrDZ8quaWsDjJ1tvxFg8mqabJT2xM0
         qle4P9YEt8SMmWnos4Ed3WydrRu3mGngVcGf+gdXj+xF2/wS9WDbe8O9iu1y8Dm6DmDT
         kxzfQ2UyMg4ZNfKxSjv1R4dDi6TmRa24EyV9zaOZOt9dOcczWt//+jdeGSZrmDlsQTaC
         4gPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Lkve6UV0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6RE85Jh1bcHPOk47kNd3DRt05G9QDMotCNiAku7mGI=;
        b=DXB+eyZrPXTx88KcraTfACalhLXMaQz4QbddHkP7vTnTrEOZ0xp2VP63t+pPUj4WMV
         WGLhFVYyV4miemoLAww+fipf1YdrSGmNAkD3/nZlWBqHsgpx1uNMeygazrdHMIEw+EXS
         ujH2V8zEr2DRIU4J0fahulwgN/0FNY7Xqt5kXJxoulqeeNT4F2TbfPulKvfmipS3RqYc
         77tI/ybkxJnZSUFSZTbWLh9HrnQ6DXg+NWTHPtQNxORxXps+xWjlkWS7aJ/17RfAVQvX
         aGdpfyomSVZnm6MTM0BwZOoNZ7kgpoffcrIML0es50wgMPvAjAzTEGZeP5UW5NBMCt7i
         IorA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6RE85Jh1bcHPOk47kNd3DRt05G9QDMotCNiAku7mGI=;
        b=Ws3DrOcaOTB/muMQ3MkIISARAdlaOCIg/QBvkH4QrHPoW70CF4BwMaSVuNoxGJOg7t
         IggoaTMQtnu4gf/3++MJFRMbksd1yiLpvATzU5w6TC067u5w8eM5KsJTRNk8TLiHoTpy
         UkUy8yvwF7h4bgk9M8QP2H1Rt4n3gIwg8iL3vOp4cCVPPrzP5Kntsl5mtDbpZNsFew0D
         QcEh7ZMnMw8b5jvFzXD+J++S6uIrPBM5e1XbxNjCXxxWzs9+dNOpX4jNeMn3NCOah880
         F2b/gqlbDTNSa2ybwPGod11EZTsV76rO+etagNWJp7yYKlA6XeMmT4OcOo97w252Sd4F
         K2dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325tJoVnwEuyZ8nq4N0alYEdvvh/serYQg3heoFMozv7EwkqcKV
	yT1Ta5IZIEFApXzu6lYWdBs=
X-Google-Smtp-Source: ABdhPJwzEMr/F2RimNbay4go8JhLkKIc+ZL3FEZJiv4NE70Ajzf1SMeesxO8HOJtij4OvpCBkBVfYQ==
X-Received: by 2002:a9f:3b02:: with SMTP id i2mr12153776uah.56.1615323598113;
        Tue, 09 Mar 2021 12:59:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e295:: with SMTP id g21ls2759759vsf.10.gmail; Tue, 09
 Mar 2021 12:59:57 -0800 (PST)
X-Received: by 2002:a67:541:: with SMTP id 62mr15053vsf.39.1615323597589;
        Tue, 09 Mar 2021 12:59:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615323597; cv=none;
        d=google.com; s=arc-20160816;
        b=VGne9NNqOwWjffNcltsEWSql4F87yDZdR1YKwgoZCb4RNrHLVPnnO4Yh+O6lejBvkZ
         234n0NL/H3pZIzEKblJ+RN4qNiaA83dS2TesddAkpNuNHP8qSf++ITW1m/b1CIZWD+p/
         VFusGbZyyi/QLmxDknANRt1IzIVJaQjoWTzdJ+d2RGeFT5S9ytGuD/obV7rr1x/aVTFX
         +v2EfM9FW1D5t2HcchuVEYAuYk2rTejZ3dCKk9xAUnEYRZdpGUAroAghslsjjiH+8wUf
         yqyUSOO+4shENBUzcws6lYULF/wKqbAqCP4Geb/YRkL5CXcIV7zhuCyIu5v8T7gE5qCr
         5isA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5iunwUeXzNh3ltDA2CZSa04ySzGoyAlKoNwzjiGgDFI=;
        b=xDJgEjX+W2l8zzvrkaO0ISOMgHzBrjCnLN4jaGCY8yGn1+vgyrVpGK96l/B9+f/+cT
         TkxPOORosc6rRbfdU2aaswKmnjY7RDUClNk26/TaOZhb2jdMFz+OI8cfvLrDxvwqHnLu
         etGyl1YBgBB05TJhj4LX4Ixv5JW6sSFVKZxKrXlu2kGvBUtQUZ5/AItAZ3prm9zjhoUK
         53Yki+hniZ+hcjQW5ZkqfXpCZj+ae/sZfmmOS4yamt+HnLASNBQ6rGBCF42TeeNvNOHF
         tOobFGAx0T+0URgzMCN80ffmrHoDTk4YzV9mO2DfTLUt506SWMI+5r6WOA0PtD4yGQ56
         f/UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Lkve6UV0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i8si703334vko.4.2021.03.09.12.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 12:59:57 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A643365244;
	Tue,  9 Mar 2021 20:59:54 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2 2/2] Makefile: Only specify '--prefix=' when building with clang + GNU as
Date: Tue,  9 Mar 2021 13:59:15 -0700
Message-Id: <20210309205915.2340265-2-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0.rc1
In-Reply-To: <20210309205915.2340265-1-nathan@kernel.org>
References: <20210302210646.3044738-1-nathan@kernel.org>
 <20210309205915.2340265-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Lkve6UV0;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

When building with LLVM_IAS=1, there is no point to specifying
'--prefix=' because that flag is only used to find GNU cross tools,
which will not be used indirectly when using the integrated assembler.
All of the tools are invoked directly from PATH or a full path specified
via the command line, which does not depend on the value of '--prefix='.

Sharing commands to reproduce issues becomes a little bit easier without
a '--prefix=' value because that '--prefix=' value is specific to a
user's machine due to it being an absolute path.

Some further notes from Fangrui Song:

  clang can spawn GNU as (if -f?no-integrated-as is specified) and GNU
  objcopy (-f?no-integrated-as and -gsplit-dwarf and -g[123]).
  objcopy is only used for GNU as assembled object files.
  With integrated assembler, the object file streamer creates .o and
  .dwo simultaneously.
  With GNU as, two objcopy commands are needed to extract .debug*.dwo to
  .dwo files && another command to remove .debug*.dwo sections.

A small consequence of this change (to keep things simple) is that
'--prefix=' will always be specified now, even with a native build, when
it was not before. This should not be an issue due to the way that the
Makefile searches for the prefix (based on elfedit's location). This
ends up improving the experience for host builds because PATH is better
respected and matches GCC's behavior more closely. See the below thread
for more details:

https://lore.kernel.org/r/20210205213651.GA16907@Ryzen-5-4500U.localdomain/

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Fix position of -no-integrated-as flag to fix native build (thanks to
  Masahiro for catching it and sorry for the breakage).

* Add Fangrui's comments about what GNU binaries clang can spawn at
  Masahiro's request.

* Reword commit message.

I did not carry tags forward so that people could re-review and test.

 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 182e93d91198..15292a6d63f5 100644
--- a/Makefile
+++ b/Makefile
@@ -566,11 +566,11 @@ CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1 | sed 's/\#//g
 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
-CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
 endif
 ifneq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -no-integrated-as
+GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
+CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
-- 
2.31.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210309205915.2340265-2-nathan%40kernel.org.
