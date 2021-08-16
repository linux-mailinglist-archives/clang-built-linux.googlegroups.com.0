Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQUR5OEAMGQEGYF74OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B1E3EDE86
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:21:23 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id 97-20020ab000ea000000b002abd0907127sf1772549uaj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:21:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629145283; cv=pass;
        d=google.com; s=arc-20160816;
        b=X3AE2/ZlUpT3McZXxEogWfWLK2IwE4akeZ6Jaoo4hnd1hy8E+m+DRP76M6C13Z1u1t
         DApMzGaSzFN43iZbfCbjPOqgpBz07NiKBU0BLPvsdFCoTTCUl56B33QR+0SbJiNieNFR
         LL7iXAxrK8wYnuJV8NkA4swK8sCGFyT37xZSJe1Zw9+704R3SOjFE7IhHH1dAPeZcohX
         LhWm2PkTdPWIPDMWbsRvy6LlS7P9lMGtPRLildf5O4GX9gcJT+L9MwWaH37Jd9sku/Gq
         GZ2e7J5WjnE/ig6jxvMAoitw6SXQlr8S0a/iN9oJwfrPKRbT+Loa5qOeJ4LjEy6jcJs7
         KMvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=tickMXlPfxT92sIyTWP/qqUTbQPVpNH3ezdyj+NBs+0=;
        b=0U6qdjl9vRCImMXRBefHcmfaRDj/szRWvlCv51KnwdN5HsqtcX2A4nYmrRvL2t0GaV
         gN+6c4E0OzhwUvfnpTszfvldrlaKOmFLskRXBv/nuBTHDqdEjfKlU7vtUnuiGjRONwJz
         kIb59nnoqQzY0q2jVKZW/BAqjobsRo529eYCQ5KM0sGDjaAcUM6egkE3b61FqL4DxqHc
         VWMAJZJSqi9xUn6ipzOJ1RaHTqGLpq2J4tkp/uZ0RSddp52MJWSTCfWJg7Y/QxqFjA6E
         PtUTPG53khdI0kknm7QoiVKFBl4OCsL/+0QPo556vjeTK5EC4TvgMAFAs2h9oZ9AkG5H
         SKTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YvNzK5lm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tickMXlPfxT92sIyTWP/qqUTbQPVpNH3ezdyj+NBs+0=;
        b=bbV55/TpkBuHzIJxtibJFDXtdAuLW8+Gejb6n9H16FVq2FOFBW1VrgZB0dKi2SUKFO
         6VhBRWGXuRNK2zX7Rjq3BLhwiaaSL9gP4mZ5uBIbfrw0uUnDEzw560TEpBHN1DzKwcfU
         zbxOFoEagJn4PDAGEiVC052L7ro9hmpSjGVtEWnKz2K6NHvBgI0PRbE2K+S0Gqidprp+
         AV8dTZ4fVlJxvzppa0xkyeQXaFghqhiI+zTSAWoPvpLFkKxUu6Nvjbl3gqNaULeMxL86
         I5gPodmR3fPhxlDBM0J/H+u9F4+5A/8NXzm1dGbu6iJyeDdD4b1j8SkywIfTbD6PXGWD
         sAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tickMXlPfxT92sIyTWP/qqUTbQPVpNH3ezdyj+NBs+0=;
        b=gArCSy9Nb2Ph9VV0OQUZS00pZVuqrupghPV6fVFZdTnE9TIn6FfG5vdEm4bqnnPjg2
         oRvdTnZEYkWxUhHnIcsnjk9W+EtmQD1gQgBwZN137j4K7RDBivlLVRqtycXos0ztH4HV
         En7SIGHtees2Rf/rHJW12hIsTtie8z11aPejMot6izQ1ZYaVkSqCPJV4oCd6oVkjeXu/
         AWARDL5x8YCo52Uf25RbZpYpCZ254VdC8G+9KSn323pN7DfrLKObNdofvRONTEW4sfSE
         G5VkHxIXFxwmLuSITaj6X3yxnH4EehU5ZnP2h1HSoaS6kz7CgJJNG/8VQrf3m07Z+AHM
         qxxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303i2Tu3B8oSnUzrfijs/jGxgcbuexF3dg29QtUdmknzYYMrbs2
	YhKJ7Myk/7BT5t75Orb3em4=
X-Google-Smtp-Source: ABdhPJy75icA0CRN3VCIH7NYBsAfTlFDGjB9ZZMw/bn9sFC4RwoV8NCT4IuCN5S4ubD0DDBbcfctYw==
X-Received: by 2002:a67:79c8:: with SMTP id u191mr119760vsc.35.1629145283044;
        Mon, 16 Aug 2021 13:21:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ac0b:: with SMTP id v11ls21476vse.6.gmail; Mon, 16 Aug
 2021 13:21:22 -0700 (PDT)
X-Received: by 2002:a67:c009:: with SMTP id v9mr122738vsi.47.1629145282538;
        Mon, 16 Aug 2021 13:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629145282; cv=none;
        d=google.com; s=arc-20160816;
        b=mWIWP5xp2IAAx8tZOQYKfkXVgEVTguR890P2TMAPB/frdPkKzt2qu/3i4FH7qznH1z
         O2mzYk8uNXJ/pNojYibI2qlNyCHE5SD7w95ePpdsmu/iaYyLswYjK8R8R6QyYh8Rdz6n
         mMNHqi7ihIrchwZMtlztpWXOxeWJB1DcgGrIoZppsvqi7Uck9DRX7fqfGqr7D7ukF9GX
         KbvNV+8QTKmMwDkjEyJmgdBKPXWMlP4MOppzWg1jXAuJTUpI7IHW0/Zq0SubhVc9eMmY
         Kuvn1YF69WBcXiTI11xTWrY5pwG/N9YaS95iey1Rua5fBef93PpJjWsGHCXHOX1WFJEu
         L+kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QfpsL79zK63c39978IvuXla6NyzAjmLIGdvAtd7qJg0=;
        b=wMpupTm3CCCmjcY4ClR51I3AhymFAMgkkwqrCyDeCq5UM9GRVqdXW02XwYSeUVHR2j
         cRfZdib+xrxGFyHPRswyLEtFY+zrEOcKcxRgm8lZIc3HjqVPoVv/JzaEpuSYuG0u/NVl
         +AhrQmsN+A6eLWWYUEGcy7ZYtOL5BkD6UXueXRIRH5ntPFWRzjQazhU8qcWs5SkW2ggS
         +6GJlDUkF4DLmmfj5fKJOhy2QUQ+zeO0wAMl3EYshDl6SLNyg43p8zt9Wpc9bjwHo+wu
         0CYIARY+JB3VvV4vKAoeeQ+e7bB17CoK7ubzie1Zy7gSYM+aQ3hlHxJTG1+s7MJ8JwWQ
         z7Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YvNzK5lm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si2256vkp.2.2021.08.16.13.21.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3938960F22;
	Mon, 16 Aug 2021 20:21:20 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/3] kbuild: Remove -Wno-format-invalid-specifier from clang block
Date: Mon, 16 Aug 2021 13:20:54 -0700
Message-Id: <20210816202056.4586-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YvNzK5lm;       spf=pass
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

Turning on -Wformat does not reveal any instances of this warning across
several different builds so remove this line to keep the number of
disabled warnings as slim as possible.

This has been disabled since commit 61163efae020 ("kbuild: LLVMLinux:
Add Kbuild support for building kernel with Clang"), which does not
explain exactly why it was turned off but since it was so long ago in
terms of both the kernel and LLVM so it is possible that some bug got
fixed along the way.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Makefile b/Makefile
index 891866af0787..3900f5824721 100644
--- a/Makefile
+++ b/Makefile
@@ -777,7 +777,6 @@ KBUILD_CFLAGS += $(stackp-flags-y)
 
 ifdef CONFIG_CC_IS_CLANG
 KBUILD_CPPFLAGS += -Qunused-arguments
-KBUILD_CFLAGS += -Wno-format-invalid-specifier
 KBUILD_CFLAGS += -Wno-gnu
 # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.

base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816202056.4586-1-nathan%40kernel.org.
