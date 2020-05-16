Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFFD7X2QKGQENBZYDWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BE61D5DEF
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 04:36:05 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id 141sf3743271iou.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 19:36:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589596564; cv=pass;
        d=google.com; s=arc-20160816;
        b=mI4hkzNjvEJwAd/nR91oJZkqAIdHGUnftHrZrM6z0MoFCHxAZz77yWglZm/XZsYkFw
         dWnvvO3r6U7FsbBsVg1LMHMJqhcneftLcwM/KbqvPvO3ByV3/M7o3NrqTlD7hsHKkDox
         vGGpBMCckDJyggc8jgspczBR0atUOYc9dP2FC74S+BqyBV5HdQWqr6bL9kaWrh29En0C
         aNcXmPSNgjpuRfoNzb4EELrHXb+RO/cp6FxpN0PoB/+SHrDyJvf7RhO8heM6O261athN
         YYO9NtbRK2qgSBx9C90a314wTZ8m3rwdFjwV9QJlsuEHIjdCAoJD2fJ3htNzrVcVWZ/t
         ZJ/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=VOsn9DrdQifTJ4WoB3EtsrK5ktBgNT+0J6sOQwP/6Q4=;
        b=uu3RBfVSH7Lf6At90fFMCdrrpD+42iWGIx5HGs/s3LKXF5esqWmKiabAdrErN5/bmS
         zFOTUz3kdclcQnLwO6PabxPtqMJtBQ7UTCx9vUCPf75+8bo/1B8Qfu6o7UH/YjCC8EbO
         tlqwX8zT6Lf3acuLlUfXwO7uAwvQjJcZudo1L8po8r4i4QhVjlGD0w9jBlrg6o5nKsCf
         fZJvJHILtFVRffPMVoev0XAIz3Af2/x96a6IzTISK95bKyU7RFafSja8NFETfHjGQ8PF
         bzJKk+M4bpascOEZ2eKn0AEZYieMFxmVY9hhCOqcVFS9F9xa2qycDljb4rFdkBaP4Nij
         U8OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aGmFPqdu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VOsn9DrdQifTJ4WoB3EtsrK5ktBgNT+0J6sOQwP/6Q4=;
        b=BhrmCRVfPU99+LEr498N0pSeiOraaCL7vfOsSeE9tqnVyxqXp1uzgmKB4Qr13Ohm8c
         OCh9d7BErTw/HH3AOjZcciqwSyIYgj1tl0jqokHON/rAj0lyGeZPU/kN0op8eME6PsQs
         EHvindT8YOpARmNQ9xrEHN6PrMgAs153Bwn1gy/BJuNb1iEhyPuwVdmSskCHqNY4uoBw
         1Ns4qDlI31YZagt06ZoPyOmrJ8oxp9S/LmJj5JtHn4ZZWmWGV4KO7MUeyANh8BCnHLSR
         rmOvpfRFF6GELnWpsAXAbuVXLb4m7KUiPFNwIHcQ5QJBZv7wS5nrbRblkdKaJNCe37gF
         oULQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VOsn9DrdQifTJ4WoB3EtsrK5ktBgNT+0J6sOQwP/6Q4=;
        b=AqlZs+T9qTR6Df0CcApFJ032P9t2jCMaD95P13KvXQd8IDaziyDkxxAhDQkTZ5VZdu
         WLs3dXVsuLdDlMkphKXIzvg0VuAX6YL3PF/jLYw53CyC6vciK9PKp9/9ewDUarMzPdec
         jEzniWa3YdFsYX+jBRGuaSx5c8DtD7dH99eLnhUaZAGwzPUPIt4Hpr5Wg8Trf9f0Styu
         5JRv8BXKQFR+mf9k3RMHmnyFs3Teqww1di7g2nMNWwPqka/wqE2hApx+qJzJc0/VbFRd
         ErcCc1kzHSjWly1y4puZoeqZq7WuxRxQOuL7mv91MYTu5aU8gapMp45woeVZGZIN5vzQ
         nLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VOsn9DrdQifTJ4WoB3EtsrK5ktBgNT+0J6sOQwP/6Q4=;
        b=iC88YHFMALAa7fGp/G/iFyGCxgMSLmKUDdNhA43AHewTkVlsb330vuPwae8SxU7GCL
         8etv3c0nGXr7I9GfUK/gsicafB8+Z0D1IZLD88qhXlSrumct90LT5Eug6WyTKMFAlmY/
         suDBQGk8QP66/eWvAlwk1Kqh93aY9tvoSS51hUhNxkb280sBVCqfacru/Q+JfuBjPNoq
         bWlZ6BZOlXj2TNAwwszYkrhE+RjWUSy4q9vz3m76YsybpfVFeUJYdMl/JVUyaRsvhC+7
         0Jak/slcrt6YKgVG/bw5pCOdM360EsLvyZh9L6IN5pXLIjDE5x7v2k0OudsUOzjZHj85
         fPfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TW3gnEy8dCkiuh/iFZQZo9x4KVUB7IzXbHGYX+aQfPf/SKKXj
	7BfhauWP8yYPg7yUxa0gXCE=
X-Google-Smtp-Source: ABdhPJzWqNfcE875eYFtZrZ9NbHJc9+gcWgmm4UB02sBO/xNn7tVrBiBYjbhssWIwEal/c1Mjm3yFw==
X-Received: by 2002:a92:4ca:: with SMTP id 193mr6373451ile.75.1589596564694;
        Fri, 15 May 2020 19:36:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cb4a:: with SMTP id f10ls1177706ilq.7.gmail; Fri, 15 May
 2020 19:36:04 -0700 (PDT)
X-Received: by 2002:a05:6e02:1341:: with SMTP id k1mr6440181ilr.162.1589596564362;
        Fri, 15 May 2020 19:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589596564; cv=none;
        d=google.com; s=arc-20160816;
        b=ruj+COv1rHjrTQ3uadaojxUqGLRMr0TfT9TjB5VSzvj5a2i2XSfhFjMpV1zQRiY21c
         3uFzzpnT1Jb/tYvByA/sIqvC3+gEqjo/1JHDk0TRm7IFhnPYSwt+NMII7FknDPzLPP7l
         TeqaaOM55VSAhDBF0ph2mcVNockgF6oqd9KimvCPSu3rXeDmOEuJz3VbrHHwyypSa2UP
         W7fDmKmti7GchNfGBLVD56eVab/atfb2AOZgcpx6b/67a0o6tHRR/Vr3LZfEcTOMHB/p
         7bze5SsSttupz0Bf0GbICxb1ktYoPsbLO567ZijkbTx/ThKP0j59Jtzn5n2JPnOJUGEk
         cGZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KPeuzuHEDvzwNnkRCqowgBAU6EUQ7TCPeetBb+t1Bdo=;
        b=cKXpxwNTsIrmXDsJoN9kbzTzsRtGak+pRBo68Tn4//ifZf2Uaq7b7plFVzmOEgBEns
         WfFRU+2QFaS4DG1HM9oFUomeitTxZC+BFWiqc3EKs3WT+3Qr3AdX60NNDKEsLybW1T33
         XigeoDWWnkdK3hRQnVf6XX5LFkjamlOXJb0asn1vJO8M53HDDFcZKmyH5nSvVW9J+lcx
         Sy3Mih9szNVafiQSaAkO6o9M+11n5pJPDIc7p0TECOwUg4mzFenJPIEiD/Ggxym3pDKR
         xMzIrNBGaf2dEQIUkDEUcB7QBGxTBdRGLHtT7QI1akzpC2yG0Jx9FrCg02FgRPsjbdEL
         f2ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aGmFPqdu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id k8si349630ilq.3.2020.05.15.19.36.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 19:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id d191so4029014oib.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 19:36:04 -0700 (PDT)
X-Received: by 2002:aca:908:: with SMTP id 8mr4438837oij.170.1589596563884;
        Fri, 15 May 2020 19:36:03 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t15sm1112821oov.32.2020.05.15.19.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2020 19:36:03 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>,
	Zhi Wang <zhi.a.wang@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/i915: Mark check_shadow_context_ppgtt as maybe unused
Date: Fri, 15 May 2020 19:35:45 -0700
Message-Id: <20200516023545.3332334-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aGmFPqdu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When CONFIG_DRM_I915_DEBUG_GEM is not set, clang warns:

drivers/gpu/drm/i915/gvt/scheduler.c:884:1: warning: function
'check_shadow_context_ppgtt' is not needed and will not be emitted
[-Wunneeded-internal-declaration]
check_shadow_context_ppgtt(struct execlist_ring_context *c, struct
intel_vgpu_mm *m)
^
1 warning generated.

This warning is similar to -Wunused-function but rather than warning
that the function is completely unused, it warns that it is used in some
expression within the file but that expression will be evaluated to a
constant or be optimized away in the final assembly, essentially making
it appeared used but really isn't. Usually, this happens when a function
or variable is only used in sizeof, where it will appear to be used but
will be evaluated at compile time and not be required to be emitted.

In this case, the function is only used in GEM_BUG_ON, which is defined
as BUILD_BUG_ON_INVALID, which intentionally follows this pattern. To
fix this warning, add __maybe_unused to make it clear that this is
intentional depending on the configuration.

Fixes: bec3df930fbd ("drm/i915/gvt: Support PPGTT table load command")
Link: https://github.com/ClangBuiltLinux/linux/issues/1027
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/i915/gvt/scheduler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index f776c92de8d7..0fb1df71c637 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -880,7 +880,7 @@ static void update_guest_pdps(struct intel_vgpu *vgpu,
 				gpa + i * 8, &pdp[7 - i], 4);
 }
 
-static bool
+static __maybe_unused bool
 check_shadow_context_ppgtt(struct execlist_ring_context *c, struct intel_vgpu_mm *m)
 {
 	if (m->ppgtt_mm.root_entry_type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY) {

base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200516023545.3332334-1-natechancellor%40gmail.com.
