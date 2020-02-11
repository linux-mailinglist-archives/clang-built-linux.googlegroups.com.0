Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2EMRHZAKGQECMZ5YBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8041589EA
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 07:15:06 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id 91sf4169202plf.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 22:15:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581401705; cv=pass;
        d=google.com; s=arc-20160816;
        b=tThYP6LPRhfD1E0TdeUh2iU24TAsJMgd7yIbefuhEVjlRjemZ71yDXWscwHyh73OKd
         xDdueOraVuF57ml6FeWJkwrP1aLdcn2jx6ADpPDZTIL0JVRvdJKR3s9BqvG32f8KRP0Z
         M++HMZgB2oATO7tv3sk88q4Vh0acpIRzLMME2cP/b8KARPLS1SddWV2o6ssH3Rf9jhY5
         ld5kDp/VLalMxNBgOjFTrEgcFZpkSShfZkpjcugoUr92gnYe1P8Zqsy+JrtLIX2KyxB4
         YRXFijvIpEUKLedhvN0Bv+ovFrX6d6mNgou3NUEpxlyXNHTofXavO7iYSAucDtWUmMt0
         vYXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=vk4Cp7sd+pFw4k7B/UkoYB7fnggR1ySywKMlzKMR0oM=;
        b=jYdNIgWybqSPADVE3wDJ8VtqnD9312XTjrtW8eB371UZvfzLUL2FAjbq9x8Kih0Hqx
         PhBfmAf9+hBDFuwhAlwYzU5DZTxSCG412t3WH63fggKSJNSczUVOmnsbEuS2kGAUl5Z4
         F8Xb8r6/lgaIs5/nvJsAggVAItDGBtS82iSJ9FptracYWlIPhGX9endwK6N/kr8jzkAt
         xWYXPx9n6uiPH/HOYYTBPVYIn8sxFh5da2iVmceGQh0zq7UXao6Q1B9/XrH3i07X7Cro
         dkpG5vI22GudG45H9J6H9G3tMZ17xxwc75PetnmIyo4yt1fY08cZ5vhO/2115TPUJvQx
         vmag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PbyDuRd+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vk4Cp7sd+pFw4k7B/UkoYB7fnggR1ySywKMlzKMR0oM=;
        b=CXSCRtCgYG9/GOjLRwS7XBt5YxuUI+V27xiNW2Pe9N8xVubhnJH6USVOhEC+U+16nQ
         TihjqbJ7h/79OtkrtyWTrwBgkBCQ8voxUcmb+om43ewvw6UFDgVBVKYrehbx2OuaUcu3
         nyBQKepHp8xZ8pQS5wwizERYexkK9bAYJl9zTp4GUohflvRsBh6Gq83gWMaiAunW2lBS
         DzKGXlwhrH57ubsaq5NPZPQJZc+9nhv5y57e9fxUgXEGxvRpfylC3YRnI5capAXvLqGx
         6d132X3D0egfvgW27E3YsKw5vBOkhGvaL9cjlH0hMYcZVLltYKo0D/fZFQB+GwN5EzV5
         FQLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vk4Cp7sd+pFw4k7B/UkoYB7fnggR1ySywKMlzKMR0oM=;
        b=AdYoIFnH5ItfTbuBZBFGGi0yXsgoaIKMfkdszqeXu0gyrNKslpH76BZWsJeIa4ZX80
         5lD/NhEEsP4Gm6nMmghpMZhwqkbKS0y/wroIpfIbkTOeDno1u4l7AmKjVXlN+YUxso20
         9vNfZCZbAfax379IL7uVDQ6G23i7r/vUDTTZpM/tpSGUyyQAvH1n7VEIsZqBr+rBQoHK
         cTly6LqUEk9F/RQrrAL+1zEhj3DlGVqokYhMh0AO78IH38oN8IM1x1umrEQZoNIfQ1l6
         Vy5gcGfPYtOz8sA7q7oOKAS1pqPn6evW+W05p9NUF1L2Tn38rAieiXaYh1Pprdo1uRXD
         oIeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vk4Cp7sd+pFw4k7B/UkoYB7fnggR1ySywKMlzKMR0oM=;
        b=mgEKPafic2GFxuVANIVKGACmDGC66YcoyJBiEvlWYIwgxQefmHrTFOGB8Uymfu4aSf
         NOubQYAXcxUofVvYSGWMwWw/7iM0LcgXYUiVNoFL1r5Evms/bd7rQE3LHcGhoSMd8w8X
         PY+C/WtnSotUMSUWYWX8gpL7NgrgfB17B9Ma09eB9CrlXWy1kFzEvhBGR8nppmyK2FNc
         0/DnDAaR1Yc1odabnxsFFZSxteD+MlVRWxeuTvfuGvmPvUMGsWqTmgX5eHcg+/yRaIJn
         nbVSNeyfGgIaCSBjMtsiksWA46AiYtcES84fC6L8bWH2mYJwLyP6I1V6pLjNzOHNuucU
         u23w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4QQ5w6cVP158t35KJSay7e1bT8K4ABq39otBbQFz3SgPmQl5r
	oLCeSarvPZ2N96/ZTf3d9/g=
X-Google-Smtp-Source: APXvYqxpj69IDh28I+RlHzKgEC7Kpb9/UT+TamJEBXv2l8+Z0w108fwxrrW0nPC5yRtlebEfoH1SmQ==
X-Received: by 2002:a65:68d8:: with SMTP id k24mr5516837pgt.208.1581401704638;
        Mon, 10 Feb 2020 22:15:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3ae2:: with SMTP id b89ls1125658pjc.2.canary-gmail;
 Mon, 10 Feb 2020 22:15:04 -0800 (PST)
X-Received: by 2002:a17:902:32b:: with SMTP id 40mr16319233pld.22.1581401704093;
        Mon, 10 Feb 2020 22:15:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581401704; cv=none;
        d=google.com; s=arc-20160816;
        b=JRf32A5FwzLTj9yacsNzakWdw/7ufdXS6MEDfrE83lQmCNUqWPVBRirdkiRFQublCL
         N1kiIpifpvO002JVsezJ6d0z11DwoLJ9kbV/v2YI7w59afC0zr5UzdTkM5ciz5wbNFlq
         /ZtbAwo3lsXw9RyIXA1Uf16jmINcK2fkNGkcfOfXMpaKfFFt446tKvkkidA3YegWsIfe
         QpOhTkbGvhETsyDvExp4j/eZyYzkdRN/jr7MmWS12MxGOUhqiFAKjzQM9JZ3ZELAqnW3
         36y8r3y1JFKtMDBiV0lPsBRCzbNKVBeYvmNBisRdhZGd9ihF2czxI/RdAvmg6tmkkpQ8
         F7TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ovFJATVDu6V+ADjunhZvdZKdFIc/4GBOO/Os9uePfYE=;
        b=twG/OTJYpiKKmRif3hOo3RJS8+aRrMTlOtXWrzdM0MjuY+b4ekKAsp49gE5kgaFwNJ
         OFBb68LAZ3+HB6g8PoUxChR+U+l+PdjEVN6M/gblzyM8htL8UR7n7pbYtWg41Hreos4w
         6ACWsK1Ptdb4+XCyY4iTdX0YGQU8tvDXy0gHHqe3jrU9CeV965M3IcfrOtYb3MzOG3fY
         rjuC6YNLjlWnbhSlMUlOFutpwEdrKKbo/8Gm3irNmzMhFnMrr0XcH2Zsr+B5z2wHtYLi
         dNbqukghZQfSEyr9B3gRE5fRB055WH1WnpCzie2ZyIoT54emnE4vgAm0cvaFZT+DLI26
         Qf+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PbyDuRd+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y13si146485plp.0.2020.02.10.22.15.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 22:15:04 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id h9so8961487otj.11
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 22:15:04 -0800 (PST)
X-Received: by 2002:a05:6830:1042:: with SMTP id b2mr4001160otp.306.1581401703244;
        Mon, 10 Feb 2020 22:15:03 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v23sm898122otj.61.2020.02.10.22.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 22:15:02 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] drm/i915: Disable -Wtautological-constant-out-of-range-compare
Date: Mon, 10 Feb 2020 23:13:39 -0700
Message-Id: <20200211061338.23666-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211050808.29463-1-natechancellor@gmail.com>
References: <20200211050808.29463-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PbyDuRd+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

A recent commit in clang added -Wtautological-compare to -Wall, which is
enabled for i915 so we see the following warning:

../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
result of comparison of constant 576460752303423487 with expression of
type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (unlikely(remain > N_RELOC(ULONG_MAX)))
            ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~

This warning only happens on x86_64 but that check is relevant for
32-bit x86 so we cannot remove it. -Wtautological-compare on a whole has
good warnings but this one is not really relevant for the kernel because
of all of the different configurations that are used to build the
kernel. When -Wtautological-compare is enabled for the kernel, this
option will remain disabled so do that for i915 now.

Link: https://github.com/ClangBuiltLinux/linux/issues/778
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2: https://lore.kernel.org/lkml/20200211050808.29463-1-natechancellor@gmail.com/

* Fix patch application due to basing on a local tree that had
  -Wuninitialized turned on. Can confirm that patch applies on
  latest -next now.

 drivers/gpu/drm/i915/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b8c5f8934dbd..159355eb43a9 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -22,6 +22,7 @@ subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
 subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
 subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
 subdir-ccflags-y += $(call cc-disable-warning, uninitialized)
+subdir-ccflags-y += $(call cc-disable-warning, tautological-constant-out-of-range-compare)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 # Fine grained warnings disable
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211061338.23666-1-natechancellor%40gmail.com.
