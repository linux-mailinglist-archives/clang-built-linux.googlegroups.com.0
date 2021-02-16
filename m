Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6PSWCAQMGQELUU42TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9B731D212
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 22:30:34 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id w134sf6587110oif.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 13:30:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613511033; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVIrrCAz7iioII++gJJgNdUuUIuetvXzU4tMLm4Tyon5vdcigO3BubLcCa+PeMcqQ0
         rzgppEEcZryFN1WimRX3fJnfrlrpLcbvfT4hf5qzNdgZEqTsRXSVUa2HN8Zm8HAvX7ft
         KCM65bNlbuI7VMXoJPGjiOJZbwXjo/HWfBiDmuU1hRwGVSltViUDPqB+/Pimd7rWwwMX
         N280k6E0GVLwQGUYGMP+cTMOFp8JetQZr+ivr4IVnIKfA3m8y2MOs3SfA5XgTwQKtu0x
         T/tiStcaVSRr5tS4dS/21i4PEyewxG88T9JVaALpsrSAwmLRUHc1HkYPx5Cyd4W3Of35
         zcdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nD7ZXHZLhejaToEAHzERNmAk7jdbpcLFvGM7kbjQzd0=;
        b=CaNaQ9sBqpZIQiCq4X//yUgeN/gPFuo8F9bAiihNWs/PeKv0gc3P1FdscgPVJ4T235
         6gKkm1Ji5XhBUqbmVGq2UlgMfjogroWBohB83XPU11/4UcizqGCRnu9tywCcL3BQUpAk
         fj5dsY1EmDbw/FGjp5r/DGNEjG0b0k3k+sZvhLdXjXAPI6wasmsYiMoTwG3zbQYwbFwk
         EwmZTeql/yo64GftrJ/1JHpxfLAFujeDqgpHIjKNHRoLiV2JVnV1bgBZx/KNT5idFi6g
         qZyGIrEmAKn3HsuOrLngXVu7HsIS4U1pdkPhFxo2N8c3uObTkTgEvaQDzc6apYTCuWTm
         y9iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Ru/chHN9";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nD7ZXHZLhejaToEAHzERNmAk7jdbpcLFvGM7kbjQzd0=;
        b=HqFCekHApp53AMFa3UlFMbWWQGBvPRGAfMuzDKVqPBdRvQCczJILQT4cxIKQYS6VTO
         89MxSP3Ac7nmmisGyhKU2YN2X3iMvreQyGobwNWdZMcf7SCXbMSMc9LNmVjkyyDsdY8y
         6GoNLlYIB+gx4Nep61JYdvElDiVh2PcGQy4PHR2WOru3ovIwE5GNmDL0itUdz1RtgX6X
         /CrL3fc2DYI+gWrx0SKq/vR+Me+v++3wQwNso2OmDewFKz/qs1HaFY9DIQlEAJ3tZ1Rp
         ulOenmakzjDuqxSVoP+AYPjuwoJKpuPBdR6nazogw/DQza4NTs6gYPntPjDeCcZrGOFf
         gupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nD7ZXHZLhejaToEAHzERNmAk7jdbpcLFvGM7kbjQzd0=;
        b=ZpxaQPA7mDnOXpebxKDDeKwZb583YZkNj43UMXWM7ayHU3xcd9Dp+tsHazcQTSIWh1
         nv4UdIOfd1JAtu+bSqqeCIb/hp0mQ8aU9MnlA6UHsWQTMTzRpZUCLax6UykV2/q5QoK9
         LcGoMazgujL2xQn4JTdkNcMp98YR+wdHiZEqjYHAK2SXDilE2fdaLk5TdMMWBVTtOcmC
         rl9uwmkIUnN7K+yQ8lhaDt527HOojDMl3XW5K1ndYqbgiaxl9zCMmr4SiYc8ACUeCFWK
         zY7mvgTE4YpUcQiGf81ekKqB+5Mff9imp3cRTlPx6iBGMzDWQQqNVvjNtyh/P9oicZM1
         RzAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jpdCXPsAKVzjO8pKgxTLdnereXHTZXVA+WFtuhcKILAml0ghj
	MwOSh3pnKMrt8hPiyPKUCIk=
X-Google-Smtp-Source: ABdhPJwWjUuaeMbhSvrHAOKhnZgQdxNBjK43ohTZ2V4se2SzCCVl2UdNLgBA2XZl0yxTq5AoS7Tzqg==
X-Received: by 2002:aca:fc0c:: with SMTP id a12mr3620633oii.5.1613511033596;
        Tue, 16 Feb 2021 13:30:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d19:: with SMTP id v25ls36998otn.4.gmail; Tue, 16 Feb
 2021 13:30:33 -0800 (PST)
X-Received: by 2002:a9d:812:: with SMTP id 18mr15553004oty.335.1613511033272;
        Tue, 16 Feb 2021 13:30:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613511033; cv=none;
        d=google.com; s=arc-20160816;
        b=y1TFlBy/2V+F/bEU+0SYLLVzpNepTROwdpT3WoS0nMAIZhW7Ljmf/nJqPTcgeLXV7e
         DGqzWZweg1gql+WcyJQimGty6frnMNq2rOY38ktL+YPWs38Wj6/BNOEbIJN1FKpqeGgZ
         DwUx2mr5pSz5ASODIiWmyLWp+sUSzvpt3zNdOkaN7r8N2OIC+7Lw2MDgl2uQSgbT0lCg
         ZtzyxNRR6kiRUw27X4In3LS/txbyjoksJJ/I9otb3QtfBHn19gSbZQ8rJHnqVdy3uzVV
         J+GcMkGu95Azj/axrYIwGUGJJ+Nz6L5i/vyppi/MTLFHCE5Hgwk2U3+XFUJlYyuZfCjU
         53/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=cSq2izbMni/XKti+HwO566EHqEegU5pYPkQsy8CyutI=;
        b=NDh7J6cxyx7D827Mpz9i5PSKYvnsRJ/VZ4drRbVpm0yvBY3touwpx3JTLnT8+SwxL/
         OOE0sv9vW8hfaEkylAwUrXtPXX4W4ihisRvoZGaF0OmmATi/0vNt1kguCkbCZFi2Udh+
         9RcyQ7g7H8SrLA5XTDuwVjmB/Ns/f6Asre3nxI3GS8RoQnQ6mlAk84qSE8WwxgPFY5Ff
         5RWJWATXhda4+GQE4/3sr4LlgsMIjP6oVoMqWTeknGXCjRe0D0JkAlZBaMrdY9pe7EYI
         RbNP0+Csth6dfctxYqUWv2fwmjkBUB5uiyS6W2Kqbyqj5fz0JXtkXdPt/KM5MlD4mprC
         uxFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Ru/chHN9";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b11si8388otq.0.2021.02.16.13.30.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 13:30:33 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F211264D99;
	Tue, 16 Feb 2021 21:30:30 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] drm/i915: Enable -Wuninitialized
Date: Tue, 16 Feb 2021 14:29:54 -0700
Message-Id: <20210216212953.24458-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Ru/chHN9";       spf=pass
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

-Wunintialized was disabled in commit c5627461490e ("drm/i915: Disable
-Wuninitialized") because there were two warnings that were false
positives. The first was due to DECLARE_WAIT_QUEUE_HEAD_ONSTACK, which
was fixed in LLVM 9.0.0. The second was in busywait_stop, which was
fixed in LLVM 10.0.0 (issue 415). The kernel's minimum version for LLVM
is 10.0.1 so this warning can be safely enabled, where it has already
caught a couple bugs.

Link: https://github.com/ClangBuiltLinux/linux/issues/220
Link: https://github.com/ClangBuiltLinux/linux/issues/415
Link: https://github.com/ClangBuiltLinux/linux/issues/499
Link: https://github.com/llvm/llvm-project/commit/2e040398f8d691cc378c1abb098824ff49f3f28f
Link: https://github.com/llvm/llvm-project/commit/c667cdc850c2aa821ffeedbc08c24bc985c59edd
Fixes: c5627461490e ("drm/i915: Disable -Wuninitialized")
References: 2ea4a7ba9bf6 ("drm/i915/gt: Avoid uninitialized use of rpcurupei in frequency_show")
References: 2034c2129bc4 ("drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state")
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6d9e81ea67f4..60b60204004f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -21,7 +21,6 @@ subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
 subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
 subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
 subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
-subdir-ccflags-y += $(call cc-disable-warning, uninitialized)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 

base-commit: f40ddce88593482919761f74910f42f4b84c004b
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210216212953.24458-1-nathan%40kernel.org.
