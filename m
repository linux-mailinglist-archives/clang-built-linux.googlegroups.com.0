Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPXRSWEQMGQEAXYCQKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDC53F6BF5
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 00:54:55 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id r10-20020a056830448a00b0051b9c05a2a8sf6847178otv.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 15:54:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629845694; cv=pass;
        d=google.com; s=arc-20160816;
        b=OcSSL1HRVOKtQGWsc4I1f0JYAgjsWwFuPCj7jWtMQYhC7eNQuTvBsMk6x4ll3cvnHL
         kuDnrdkyNEYRAkEmbZb4916b6izp04a6fFkHI8MXE3QQ1yw+iJ6DH/28CT9i/tNARG+K
         Xu/PFLwB4TVKedMs9dl5kGQqqHm9udL9FPm+9GWZPWPO5CoU2sVFvZT7LMxu/zTnvIp1
         thcG+phUhrHR4k9q7aiT8OnPlj4aH8Qzduc0byLdHnIO2URuIFZkYC1qdUkPK+1gd1xz
         VUq3Rpbp8+6y3rCy0PxcWb8VGkVv5a3WFi7dTfw9qszs8fRvb0ykgBn1cP2ADosMuavT
         yeig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=l+kNT09utDE8DTrxdObE4D4FFj5wfIvXEf6dqJgTnF8=;
        b=J3cYV94U11zZp7FEWHBdkoiwHUJv/yRtoKXBDnjdBUVAGY3OefsnWiPKDrkbfqYTyW
         k+UYEcQxfcesSAvMA4TORd6uLollxodmdxZ4qh6gxfS536691MvyEpKOd+/Ks/vnThZF
         pf5B1ORx9UwedB5eSZmxjZBEXashcR5x0onsSYeyAKWm9eMOcuFPpzMjp2HtCQcP/wd8
         /yIO9Mb/iP21kWguuSGnDL0yQQGH8epMZzRVXx8vt5Zqy4idT0Y+mmpKXCWb4Bp8s0Na
         U+FieS5oVj6jzGZpa6lfhWYoa/yqwyklNQJtxZ3DrXsGqvJ45ON0S7s0kwmaENrOZMUE
         smUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PDnYE3Rq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l+kNT09utDE8DTrxdObE4D4FFj5wfIvXEf6dqJgTnF8=;
        b=fM4g4tsGL7Q9Y2hpxnnr+8opQVTHROGbwNQi8vwD1gT25QAKq0oSXcWaEp4D4ai0hQ
         jhLF+Y5zaaEMGJ2YkjuLCihlVqallhfHpVaQBYrVLPO02Ir5J12RhV1fZszAkICfjXA4
         xntwpXROZGp/0v8L3RbqdKFXRftk8lDYGAydAn2RAlLufsXE7NgeBzrtErvySWgMs6Vx
         S4LLX5M5WRtkU1S6bjIOs67d9qx11D1qfVC8Qeeavcz/EcEpdp4YZgaM+93nnOYHPKZL
         piMrp51WjwUjhelkFI1byWWl3CpaqfiDaYnG+lAM6grklDtPAVbk6ejChHo/OpQ6lt0x
         3ZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l+kNT09utDE8DTrxdObE4D4FFj5wfIvXEf6dqJgTnF8=;
        b=YP7FF0WUvMx59t9s9hA4vP7VxbY9KhnCWyFcsCC1H+4bDWOQzjltgqkkqjQh8d7kfs
         szdJtqtC0Zez5FAI4BAkXhwvF9ynIWZZoP6eVh8t3vUDJBeGlZNplkznfpGeE+1FKSXr
         ccLejXZEGVOqcbd39GFLu1FEMxMhU04wfH3hVSvhLSFIk4AALE6mOjIzNieN3OyRA8E8
         FPtWFeFBidRTUHtptKomCzEYHAwQRWBK+JQywbhivqpNXVpPpIvaC0rpJeKEAejXb2sb
         QpC08qt2SnXibwQAXOPDhnX9fLuF2Mh0nMbe7kXP4JotB63s2fPU9RM/jkJok7HOMhL2
         L5cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Fgfid3NcQ3Jho6msds60rZJY+TNMGMkmTItCQIRGZdQJgXTjP
	oBsKTZzk6KCO2c+143wuhds=
X-Google-Smtp-Source: ABdhPJw5ac8v6oOprQBzslclB9SUU+gjETcJAykUBjMgvZcxreKG3X5ZeK7fQUQ8kg5P7nfS6uwn3A==
X-Received: by 2002:aca:3090:: with SMTP id w138mr4427148oiw.173.1629845694412;
        Tue, 24 Aug 2021 15:54:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2442:: with SMTP id x2ls40822otr.3.gmail; Tue, 24
 Aug 2021 15:54:54 -0700 (PDT)
X-Received: by 2002:a9d:1d26:: with SMTP id m35mr20896588otm.176.1629845694037;
        Tue, 24 Aug 2021 15:54:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629845694; cv=none;
        d=google.com; s=arc-20160816;
        b=z3R/TEwl3xVK6+2zQm8/HhNWRnQQgRstlMcMVaVBO1yntoXBhhNigF68bmdKMzlCQA
         L88YDGw1utz6IV1ysRiCEX8WLe0Umel86LbibpXRwCEoPZxhF1TFy4R7K1GgvcCiLzqy
         pPKpXidmXypl/2tmKQ0Fg6V4/IgqVilPrnqDJEdTMGIFlSmfcH3HB+wNvn6NZDs7Hg5F
         UsVOrA4RwHjdi9GRMACCtPxORWZiodK8r4Fu4pvXIdmuRj1rQyJqrFab85CWBv/MTsgj
         uRyrYc9+jmwvANlapLg685zSPEJ2oIH5L2z8wuSyBRzPRI4tHOH5qb0ckU3UQszKiDNo
         /e2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W/G4+lDZo7u7pQ7sr8BKP41YRcHUmpbZESsXcody5Vg=;
        b=nSbXpQ6P3PpGR5qicvt+PO5FJTVr+Hapv4F2oiJYxu4RpV6zwfZP5HhdAQPV/V0LIB
         emUTWwsOsWkMd6LG15lG2NVflnRx9xl7ucpWkC5o4M4OmIZrcjN5t4hcsPvu6LTMRxOc
         G3jMOwKixacyozvhxs3MbgkLof+vINgwStvC7Qwh4tlQr/7BDsmkEdW6fpHFjQNHQF0E
         D/zFZBnKqn5gyav61Dw5WOxvcFlXiR3GVGNMMAzAoziIm9sfKnGVvD2OJikK+IxigkyI
         87vJ00DXXsc2QxekCRIHiPBYivGGzU7IzgYSw+Njk9kmxAuqv/MklhWZEBSopFgS0dC4
         72vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PDnYE3Rq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s20si5922ois.4.2021.08.24.15.54.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 15:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A8F6561368;
	Tue, 24 Aug 2021 22:54:50 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Matthew Auld <matthew.auld@intel.com>,
	"Michael J. Ruhl" <michael.j.ruhl@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 3/3] drm/i915: Enable -Wsometimes-uninitialized
Date: Tue, 24 Aug 2021 15:54:27 -0700
Message-Id: <20210824225427.2065517-4-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210824225427.2065517-1-nathan@kernel.org>
References: <20210824225427.2065517-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PDnYE3Rq;       spf=pass
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

This warning helps catch uninitialized variables. It should have been
enabled at the same time as commit b2423184ac33 ("drm/i915: Enable
-Wuninitialized") but I did not realize they were disabled separately.
Enable it now that i915 is clean so that it stays that way.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 642a5b5a1b81..335ba9f43d8f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -19,7 +19,6 @@ subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
 subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
 # clang warnings
 subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
-subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
 subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824225427.2065517-4-nathan%40kernel.org.
