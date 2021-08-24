Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW76SWEQMGQEMFMGXHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E0A3F6C29
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 01:23:09 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id om6-20020a17090b3a8600b0019319c9ed1bsf1075973pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 16:23:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629847388; cv=pass;
        d=google.com; s=arc-20160816;
        b=BZiLKwFnSwG9Hcn/n/zyW+iulGGg4oPMC81K2X4shAjBt5v+MPOoBRvwDSv64biqUv
         H9yyxQadUxSK3DLzfPSvRFRwF1Hye2kjOT0mzPZLvjVAFxVHtEEbhp8vfqRn41ngLQRA
         2+0XE5mufBhQHChlhhH3UQ8+TFbgfXocPhvmAQQECDozYshcFYoZRO8nAOudhkuQpUot
         Quqid/CksZEGqiJtg6qwKZjhVJL+g70KDOB1Eec5+FMiASheMzbqSY7Ql6AW9Xfh6RxM
         GwgQjNc4AFcseogYOZ4lFuVHNiKWr9yj++27rimrLiTzyvfAbLWatXeI+pykqb8vYsDp
         fPjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=eFxVbCh1vJVL1NrEkzerPfS5/C1zR5Pj4yTeZvSXVo8=;
        b=lDVZxkwycicOc12e2WCf0QxeKInlSSp4Ezvs+EmXjXbSYaXC83ElSTszsuD4bk/Gzj
         UuRdZjC/LJlV3SjwLM05xkaKYrM7YOOcdVg6MwmRRT4zpjn44y5lILBun8AXfrxcE+Lz
         TnyChuuOcEjFnQWhd82OoIx6XybHNOuNBPmouyyaOLl1P6AZu21WqAaYMrskLPTXKFGe
         uiMdIIkYCqpBytY8bVp7BKVfBUv7ZPnbzTkOLredNqUSNdwGsFkAtg4Oazm0T0ERtfDa
         g6rsjTFEiCEkTGT6zTGW0MyEk2PDn7ezu/GXtNjJ/SspBwBV5zi62kWJeZbKbPwnKAie
         8R8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XeCbBM0Z;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFxVbCh1vJVL1NrEkzerPfS5/C1zR5Pj4yTeZvSXVo8=;
        b=FRw6yRPNp6sW5xF5g51d7+Vqr0FVhrCMevE8We0pqHjEH3I+w+rToJGQl3iXku9M5i
         V1caLUgZICa66Hwn68Edr2QluiL2y2qQ8X6JGtZO0btBWVn/6fqU5spxIj8GLLHfhLwG
         FkGU0OwZpUTsz6CYSKX+iNdezNoIJCYCrq31blurCVlKOJBJXvf8sMuuLnfeB07Bva7L
         nvIzAS1dm1RjPzfVFl2hz/mGyLw9jm6y3l/4L3P2UvwT4iypsOxv8l6K0m8Xt3QIVx2t
         KwR0FRC+fpRT465PHx7xiPCNFmeLQ+YqsNFeWrLGX089l38/KoC8tZAppt0SA8Jt7o71
         wTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eFxVbCh1vJVL1NrEkzerPfS5/C1zR5Pj4yTeZvSXVo8=;
        b=Ltt3QDnmVGTtZLfkcZEvP6+ecDIngBiiZUOuOe+eJ5/U0rFsPGcADf6qV+BBzvb92Q
         JFkZqhY4pkedL7adrl/lyKncs1Upo04ng/mnT3sxJswaLcw2wEcmiqfexaorUYalpMAw
         yvc5WC8hlnH4pum+bM4n+s/Kp/fHgnxYOT+ijemtek/rck0u0WVYxajGGn7J8tpLT+j9
         O4jhiYypsPoGWmLOSa+Xgc8etrdiXGcLLoAff362hobTKDVyHqCBBkRug8LlPbynD8Yh
         PS5rccpR87mtisjRspMxYHoHA1f0Wd3yIBInfgHEP38eE72Kw9w/QhBGcJwD008YMVR2
         HhGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yV3m/ZDCixn8AeLU812jLklIlx32gy1+OzQwO4ZzALktpYufe
	zNInRnaDLa8zom9xUtgeKkc=
X-Google-Smtp-Source: ABdhPJwg0hMNAlwYpH7CdTKo2li0JQ8O6/09nAebyo7Wu9FS9zUnxtlW09gO0biVMKuKE+4tffaGkQ==
X-Received: by 2002:a63:eb41:: with SMTP id b1mr2559830pgk.236.1629847387945;
        Tue, 24 Aug 2021 16:23:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls112781pjh.1.gmail; Tue, 24
 Aug 2021 16:23:07 -0700 (PDT)
X-Received: by 2002:a17:90a:8b89:: with SMTP id z9mr7204761pjn.89.1629847387385;
        Tue, 24 Aug 2021 16:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629847387; cv=none;
        d=google.com; s=arc-20160816;
        b=VJ82o0dABMQ8yvXO3iHyODgx6MonDu5BpWV08ksPUp1I+V4AVQLOqmPnvac3hNojFU
         kCtE81gBXAxMg84fyXScCRf5ZTGmKaU3oTtFvZblTEMPkxOBvu9n80OiT++xeUZE4ASi
         PtrdFCwbc9jy3lpaWsiqp83VY8hGZdxFmPP/y6+2lmBgkEFRZR9u4h+OpXg/5g1LzwIK
         wB9q88CoPCcTC1A/s/jWyDJAiPBt1IYycdi5zoQa0ka0CuXrW/h/LgwoXOIcHayoQExy
         g7MHBpOPfRYzXie3NLzGTywy4EeL7IxnmlqPvamWH5/2eOJ3rAuSq//bAdUZsBxZYRwj
         iZfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JYfCUgmPJLBCFGvL267HPaymrcSHiC7JyrUDr7E94rk=;
        b=Q5dphVd1oQEvZCzxsyECJdImZsUet46JxqGD6PzJyN9Y7JhrGItGHLmQ2Log1RP7f2
         F7ikDJWTvsJ4kvytzrtNEwKwcMYMcmYVp1AiusMvGwKmEBiw9WuTPXCtCyw147/6mne9
         jU3WWMiOFOR9Qb8178k+u+eOitQVO4aZ35nBKVxkT6QRpPX/bOpYjV/T9TZrhH7uZzuZ
         HBcW1fg6zXOGji8JpumeblC0e/USoQIu0vRaOqtTowvadyirO/5buZqNYTYolmDs+hSt
         nNox3Zxwt0jjUbRefZc+rBcQOVsb/TF/WZX2uDWbCYyDrBiQY9un+t2nLVnMvReUEGsz
         onrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XeCbBM0Z;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si368362pji.0.2021.08.24.16.23.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 16:23:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 36A46610F8;
	Tue, 24 Aug 2021 23:23:05 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] drm/i915: Clean up disabled warnings
Date: Tue, 24 Aug 2021 16:22:38 -0700
Message-Id: <20210824232237.2085342-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XeCbBM0Z;       spf=pass
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

i915 enables a wider set of warnings with '-Wall -Wextra' then disables
several with cc-disable-warning. If an unknown flag gets added to
KBUILD_CFLAGS when building with clang, all subsequent calls to
cc-{disable-warning,option} will fail, meaning that all of these
warnings do not get disabled [1].

A separate series will address the root cause of the issue by not adding
these flags when building with clang [2]; however, the symptom of these
extra warnings appearing can be addressed separately by just removing
the calls to cc-disable-warning, which makes the build ever so slightly
faster because the compiler does not need to be called as much before
building.

The following warnings are supported by GCC 4.9 and clang 10.0.1, which
are the minimum supported versions of these compilers so the call to
cc-disable-warning is not necessary. Masahiro cleaned this up for the
reset of the kernel in commit 4c8dd95a723d ("kbuild: add some extra
warning flags unconditionally").

* -Wmissing-field-initializers
* -Wsign-compare
* -Wtype-limits
* -Wunused-parameter

-Wunused-but-set-variable was implemented in clang 13.0.0 and
-Wframe-address was implemented in clang 12.0.0 so the
cc-disable-warning calls are kept for these two warnings.

Lastly, -Winitializer-overrides is clang's version of -Woverride-init,
which is disabled for the specific files that are problematic. clang
added a compatibility alias in clang 8.0.0 so -Winitializer-overrides
can be removed.

[1]: https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
[2]: https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

NOTE: This is based on my series to enable -Wsometimes-initialized here:

https://lore.kernel.org/r/20210824225427.2065517-1-nathan@kernel.org/

I sent it separately as this can go into whatever release but I would
like for that series to go into 5.15.

 drivers/gpu/drm/i915/Makefile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 335ba9f43d8f..6b38547543b1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -13,13 +13,11 @@
 # will most likely get a sudden build breakage... Hopefully we will fix
 # new warnings before CI updates!
 subdir-ccflags-y := -Wall -Wextra
-subdir-ccflags-y += $(call cc-disable-warning, unused-parameter)
-subdir-ccflags-y += $(call cc-disable-warning, type-limits)
-subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
+subdir-ccflags-y += -Wno-unused-parameter
+subdir-ccflags-y += -Wno-type-limits
+subdir-ccflags-y += -Wno-missing-field-initializers
+subdir-ccflags-y += -Wno-sign-compare
 subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
-# clang warnings
-subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
-subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 

base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
prerequisite-patch-id: 31c28450ed7e8785dce967a16db6d52eff3d7d6d
prerequisite-patch-id: 372dfa0e07249f207acc1942ab0e39b13ff229b2
prerequisite-patch-id: 1a585fa6cda50c32ad1e3ac8235d3cff1b599978
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824232237.2085342-1-nathan%40kernel.org.
