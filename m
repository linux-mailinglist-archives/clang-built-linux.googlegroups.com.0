Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWGUUWBAMGQESICWERI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7D733694C
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 01:54:49 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id r18sf5465067pjz.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 16:54:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615424088; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXwp9TGKdHlPH7IpN99sNwIqQawMMlVWG38jVaXWtB3qZLJpVet3YxMcMHzlVygs92
         2kXPt+gDET/+XzCbShI4s3U2Q7HVrZdSyCWefp+1KNg+D9g81fwnZ1RAGTUUKtDRgseP
         0Ee7JLvFLEB7N1IPhHodtyBsqriboIjf8KUhwqGcYZitjJ/RjlKyisyRH2WbNoQziKPa
         PiDcUEkHaJzjU/f3pnaLsiCv3gA0itrz04LLGXSrtX3UEzShIyUQKplQ9/UJLGOFn9UH
         47htcopKKgKKl9+C7tlzv0j/jQwwpaWM1I8VIgyStuX+DayeLMFO1pHB7dEUPKHV65dS
         uJ9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=SAv3R1UHKWOu/y5de2bqBgi4oKzyDJA9+z9gI5qdMG8=;
        b=nuTckZw1FYIAvhwKyGDjNW0ThXnMxQBkpXI96jq7vzkxowTBksafdX+qabjyAU7dMw
         FIysx4O/609ibRMyMhNdmhjKJx39edYXyzdq6OVzffi2414U6CrquTnzm1URBJM8UQWR
         ywb9lGD2mlkegRKX94BhQzglrYRYYUxQU/7FzsarP+9Z7MfVh2X6LYHXyxGfT2IS7iMZ
         HuUl+kQkyCs87NEC/YRAeEdZGs1aiuP5+Uomz/3AxNmYgCA6hhG52+zNB51oTpzbKJN9
         E37qCnDegqt8F86hrovdcKy/zko72mtP6Lu66RKHlBCIxAcWoSk/bau7Iziy7aWVZuUL
         ADXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="qOa3LL3/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SAv3R1UHKWOu/y5de2bqBgi4oKzyDJA9+z9gI5qdMG8=;
        b=NboOMaFsbTFyd2LgR5hQIF1gQI/9wUgQ+kv7aXNpfzDJgInU/wbfQZBPXC4Ry5QQIl
         SY+HNxKVqn6DL1fJZAMZcYLpoM3RulV6m0NFiL2Ki8suOQXNzYcca/RiQCD0JSSj/tB/
         wjeyPWfjMTcdWKovocSG+eq11+uzC7RgsYM2cs6uBPHP3BKwmAlyDu/x24uID2ORDLpY
         aUEovSmvXCsODpMkl49Sw79KZBjwDCRe+rgQC6astAQWY/ajzuIRj9R6qdxrs1ekS/qP
         Q60bfww1PQwMrRv+phhOQQFjIKM4oPwiP8/2oyTGBfU1CgnNKa0p4EaN9rpCYC9ouAIo
         5dLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SAv3R1UHKWOu/y5de2bqBgi4oKzyDJA9+z9gI5qdMG8=;
        b=iZQb1mW/uszRZNlM0kCDgBxQpvXbr9E4JP5ZhL4LjK+y87KufZvOu3faR6C5DgJ8Hb
         3Xe4UWP84SzMtk/NV8D4WPzVjRWowocEh+uhr2UwgguYE37P120oQ3L7oKb1VLcWJMbG
         EHogmObgsP0E3hgVlUR/bVDO5eREtfcSuQBK/mX7GDE6DdhJmFns/2GxnqTvXFZxFmp8
         ZmrXgbRcJEwO0S1/TLkRhNvVfa5jzFxCSxFt7CBxgA3K4itTFOVjPk5TyJw9CjMFff4b
         tU7J0NJns9qny8xsPhMSocWA3fVpe8+P9DzdSaMCkba3SSqnE5bVuzHva8X570XU73ZO
         asZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531A9nb7831Z29nm5lE8VSYPxTT+r9C20T1/AQ5UvNpXsuxYyHwC
	hiFuROHrbXP5FVx382tLaPY=
X-Google-Smtp-Source: ABdhPJwhOlSbcFfnWJokwR5QUm0ifJbOSjNor3zpJ24/Hmf3/z0ruBceecq3faQPqi5P+mwGZV0R9A==
X-Received: by 2002:a17:90a:a584:: with SMTP id b4mr6186665pjq.186.1615424088578;
        Wed, 10 Mar 2021 16:54:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bd8b:: with SMTP id z11ls2382340pjr.1.gmail; Wed, 10
 Mar 2021 16:54:48 -0800 (PST)
X-Received: by 2002:a17:90a:f298:: with SMTP id fs24mr496153pjb.57.1615424088064;
        Wed, 10 Mar 2021 16:54:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615424088; cv=none;
        d=google.com; s=arc-20160816;
        b=x9TryIqcBO53NexFuwCf7TThZHFEYxgZBYHJuIcWmgSta7vWBA9fXwU2JdYkAteMpI
         O0JvqRp8NkGGyEH/rbKgsR031qLmPM+gwJMYqVTL4yUO5RL+bMqh087g+91yujc5zLyX
         G0P9CH0dxcZcLxraBhDiEgnlcMyqXOv9IbA0KNBA1GxzDQ+YyNODUgHFPuBqvq/3At10
         M937EwbWXAu4QCU506kSvouri3w+JGWo1JWYkFp7zFWvYnQaIFKqqVAE3F6J2w7z+OWT
         tgaqJOhqqABX0z00HDkqytKgkEvPGpxh7yeuIBDkY2rRLlJ8YxIryoUMPNaxELSRGcii
         0hgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OfsRhEm6uqOruDoySf/fGhmK5JJ/LqWJ3U/OISEysvY=;
        b=QY4gUopoaL9cz6nP2zqSGF+0thaxmSHgMOXE2/8ZhWtbljbEv+r/jYZUOBBSZ2N3EK
         BqvqD1cphwaF+owvHRRrZtd/Py0I1yhTKA4AIptx48yD5E6j0Fdc31OymsX/Yuz2HhFg
         eT9CG2bBH9bNaj1GjSCWHlugFMCF0t3M/bBtd7CaDs2fFye2LNworQV3MmOxYgfpOyCN
         k6n44pftwB5S6Dpc4TP9UvsJQ3ach5HgfrGD/AdY+P4tUeH5QG89UarM8b3AoAvMLj97
         Kkc3MBiCl196QUNFi4cJBLBvmnexBzOeJO5fedRoA/1exssyJszMlJHzcbLys50LH2D/
         uFdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="qOa3LL3/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e8si53658pgl.0.2021.03.10.16.54.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 16:54:48 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2BB6D64FBA;
	Thu, 11 Mar 2021 00:54:45 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] ARM: Make UNWINDER_ARM depend on ld.bfd or ld.lld 11.0.0+
Date: Wed, 10 Mar 2021 17:54:18 -0700
Message-Id: <20210311005418.2207250-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="qOa3LL3/";       spf=pass
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

When linking aspeed_g5_defconfig with ld.lld 10.0.1, the following error
occurs:

ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34D98): relocation
R_ARM_PREL31 out of range: 2135538592 is not in [-1073741824,
1073741823]

This was resolved in ld.lld 11.0.0 but the minimum supported version of
ld.lld for the kernel is 10.0.1. Prevent CONFIG_UNWINDER_ARM from being
selected in this case so that the problematic sections cannot be
created.

Link: https://github.com/ClangBuiltLinux/linux/issues/732
Link: https://github.com/llvm/llvm-project/commit/48aebfc908ba7b9372aaa478a9c200789491096e
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm/Kconfig.debug | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 9e0b5e7f12af..64c1f8a46ab5 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -66,6 +66,8 @@ config UNWINDER_FRAME_POINTER
 config UNWINDER_ARM
 	bool "ARM EABI stack unwinder"
 	depends on AEABI && !FUNCTION_GRAPH_TRACER
+	# https://github.com/ClangBuiltLinux/linux/issues/732
+	depends on !LD_IS_LLD || LLD_VERSION >= 110000
 	select ARM_UNWIND
 	help
 	  This option enables stack unwinding support in the kernel

base-commit: a38fd8748464831584a19438cbb3082b5a2dab15
-- 
2.31.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311005418.2207250-1-nathan%40kernel.org.
