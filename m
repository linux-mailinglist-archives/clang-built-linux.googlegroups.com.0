Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBP5B2GAAMGQEOJPIUEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E31308C2F
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 19:15:28 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id w3sf4652984oov.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 10:15:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611944127; cv=pass;
        d=google.com; s=arc-20160816;
        b=dAJT0aHtL7bG2Zt5sF9O7KyzSXBJGoL1/mPbDP8gNIDQhgckwKqjWP6jQyZa/Z1hmN
         R2CAF/6WgPB1Pu05I1rqyTMjYuOVPyB+Iphjb0MgSmwc2034Mc3NO0+oIMzl/El+fHGq
         CFAqmHJUPr3y6Dzb0SiRxxk5/XpW18ic3SQaGQaw9XFcIDhQqFdvkfCroxvC5hO/F7o8
         bptYIqjya5CKBfPl9bcMR6DVBJu/57/zap1+HRacqbnxxznmwWlE46cf5HLmQtzS9S91
         5Nhooi0gqaN1ZVfCNPzGwvZubzNUf9UmPQ7HsqfX5H0X1d2zxVGJVpOuNFOJaZRZjMVR
         pm7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=kqoT8wCdNoS2O59nEpcA+ct1WakbLTgaqKbMs16GQlM=;
        b=iJ0AJoSnMgexALmeM+BaqeJQzNvvZEH3BTBLHpK5LC4sFcB/5LPGo4pSUvbSBMjpij
         1e2Qn6zeo9EeDdH+MZ3zynSu9TiBtiZcE3xVAVT+nhlcU2WFbLrMtPC61CJWuX/8RB8w
         oTAEcGXYvlPwP7Bhxn1rRfEew3GoJzwcuXW6BK/pHqNGr+cgY8iLZkDFV/i/k3cAmdbS
         k50a0I1EZ1VrYAVeM2qhZ1dD7luij9qPwpy5GxjNGuHE3s4erD8tDc0OZWlU9iX7s3Se
         gqRM0133hRWU2dvta9I/IyeVGDKy8u9Hm75A9vCHH7NEabojQ3w92QpLQzwo+wTkysBv
         SuLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LX8O8N5P;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kqoT8wCdNoS2O59nEpcA+ct1WakbLTgaqKbMs16GQlM=;
        b=Q8lgm5FQY0toqYkgMxGb+b6ZGv2nXUNhCwGv8WESYaB8GSOH+Do5hSYoJauyAfDSUW
         kvfQ0oRdDrNwYq7qyKSmVcqY4D/oRFUOZ0FYz/dQ2gpbGlM6AAj8UpWvBsQm4bJi+u9K
         VneOVHHAOlgaPpZzs6x7FZVseVAIO3ak2OQznPOTzwXOnMOSS9+OHki5ycLe2dv2uLVz
         rah9YZZdrSlaPREZP7xeg1jYgsAnjN2YPOQe9Bqcl/ej6KJDO6sy9ShGIodLq6uhIbEs
         K/FNdSHGGuErwI9Z7SpW+DR/faO0qkhlZFcwuUdE9osgGyvVFBbWMJ6CQadonNa77rDJ
         ozjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kqoT8wCdNoS2O59nEpcA+ct1WakbLTgaqKbMs16GQlM=;
        b=hpUvizUDMy8F5B/eWgc+phC0K6t2lxXsrh9kNnsXbsd0jwxLRN4RDDzVksO6ZgJLwV
         G7PRfTNhLlHPyoL53BJGxWiyd5vsXmkUUEye6k5QmSiz26zr0a984tx4MiaAaG82Qf//
         lUycWrq6ialpDNvKdc/ukV4h8K3px80Li0RhNilQztgFXcpsnOF+vV8JCth91ITTVQtU
         ERxtakoZ+CSRyn0lL6bM2gz2ao3Ltv0QlZz3Athqcw2SwS9rOI3qiPm1n3fJdnJX6VPO
         4DLF3NLiFbmDKaPudDu15hCkCoQM2IYjavH/fJzVsKWfbTLFV0qlbjVBWJBTUpbMkkdW
         MgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kqoT8wCdNoS2O59nEpcA+ct1WakbLTgaqKbMs16GQlM=;
        b=YtjLDyf1hi1y9+1+GzaWr7wbwsKiPaufapULNfNex8MFSzhDn7rsEsh9/NcXUda2EQ
         m7lbgFZmOsXRFmWzfvA3UFqnDT8yDifkiTRHFivINbGtgEbGRcICKknQI/a6rn3VpFE6
         7wbU+SCIIAh0wyWfAg+3/Cac71ElLkiwt/qthClvmoqUJ9Hwdp3AFeGfJpVRV7B7RebV
         zpCIBPX6WCX0UXCGRGnNFMPvXHQzaWOJp1pdyoEEqzkDY1ZNn6BxnSK0ccoCqFEyqA7v
         tKBQw6cDGRri2HctivQs/EFNFAv9e08ivhku8MNc4WxxLvuHRE4jMWyCwens8DQ32e89
         bvMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Lh+xFBJh4UaheFUb1Fi/gT1TQAyZ91+4YdxmIGblVF1zr4w5j
	0l4XvqcPET/Vu/aEp+kxMu4=
X-Google-Smtp-Source: ABdhPJzNXN8vkiIJpmht7CyavXCEQ2pSXPNT4oK3nKdMtMGxN07aJd78OsZDeMNSbESeUgzpclxgAw==
X-Received: by 2002:a9d:1293:: with SMTP id g19mr3623076otg.311.1611944127541;
        Fri, 29 Jan 2021 10:15:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5786:: with SMTP id l128ls2268499oib.1.gmail; Fri, 29
 Jan 2021 10:15:27 -0800 (PST)
X-Received: by 2002:aca:3306:: with SMTP id z6mr3165524oiz.141.1611944127176;
        Fri, 29 Jan 2021 10:15:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611944127; cv=none;
        d=google.com; s=arc-20160816;
        b=HK63jfAM4gwGhhe1JPvnFJSISwZkw2nSDYRhjeoIGIRsaayskJBHO5Qs4wPgKbqyaz
         bfDDe1Altx1dnnAOfEb1A20FesglyHM04vZg30ZBCKqU9Bm3+1PU3Zj0Ri71/oasqIE9
         zG7aqwCxxUiPiSx1zpDiTkiFJFbEpkh2UzqWxof71LhEATpHLzrM9HHefSL2w7/huvsa
         jFp83pVDTEu3UWK3fmEUEodAXf5JRL3yaN6BAOZ4XWSR0v6Pczm1ibl19FQQ1GTiWbJQ
         TuZf+IKJg/Yacptk4VQH0uQSL9MyWVMXsUxbe+a6Tjhy/vvDjcDcOys+Scyh0jbumLYH
         BaIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/0fATYjcdJLSc2/pVck+A/BrJt10YSf2Y8cyXjqnWuw=;
        b=WqWXiviQ/CxYfChOouNoty39XBfTmV980ppC9dypPVl1iy0cqWsca5KvyWZJqTVQd9
         b27/VqfxO7Iw/BmBa2RXMLKVJ2UXJhpoNPI0BWEKUJuyNuHlR4wlExI3KnCjunrMQI6R
         ulRI3LdeDnne95ueHXyGvqydaZrDwVK2X8v+mCAGq79i1KKD+yWOKO+hvBy1AkhHR5FL
         8cICarfv2DuBG+6tc96dpdPf6G2AW3FIOj4XHySFsqrSRfp/OVG9nsNWgNL2wcUuwnbB
         Mjv0Oi4gz8mKpzy3+ZuzqroJZ4+aCyfpKHiK9eINRIPJNnUFqamgeAtanXMz6VrnPByC
         u4Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LX8O8N5P;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id f197si546978oob.2.2021.01.29.10.15.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 10:15:27 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id u8so5160509ior.13
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 10:15:27 -0800 (PST)
X-Received: by 2002:a5e:c91a:: with SMTP id z26mr4413552iol.89.1611944126885;
        Fri, 29 Jan 2021 10:15:26 -0800 (PST)
Received: from llvm-development.us-central1-a.c.llvm-285123.internal (85.235.72.34.bc.googleusercontent.com. [34.72.235.85])
        by smtp.googlemail.com with ESMTPSA id r129sm4535791iod.14.2021.01.29.10.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 10:15:26 -0800 (PST)
From: Vinicius Tinti <viniciustinti@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinicius Tinti <viniciustinti@gmail.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] drm/i915: Remove unreachable code
Date: Fri, 29 Jan 2021 18:15:19 +0000
Message-Id: <20210129181519.69963-1-viniciustinti@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LX8O8N5P;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2c
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

By enabling -Wunreachable-code-aggressive on Clang the following code
paths are unreachable.

Commit ce22c320b8ca ("drm/i915/sdvo: convert to encoder disable/enable")
Commit 19f1f627b333 ("drm/i915/gt: Move ivb GT workarounds from
init_clock_gating to workarounds")
Commit 0a97015d45ee ("drm/i915: Compress GPU objects in error state")

By removing the unreachable code at
drivers/gpu/drm/i915/display/intel_sdvo.c the function
intel_sdvo_set_encoder_power_state becomes unused.

Commit ea5b213ad4b1 ("drm/i915: Subclass intel_encoder.")

Clang warns unreachable:

drivers/gpu/drm/i915/display/intel_sdvo.c:1768:3: warning: code will never
be executed [-Wunreachable-code]
                intel_sdvo_set_encoder_power_state(intel_sdvo,
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_sdvo.c:1767:6: note: silence by adding
parentheses to mark code as explicitly dead
        if (0)
            ^
            /* DISABLES CODE */ ( )
drivers/gpu/drm/i915/display/intel_sdvo.c:1852:3: warning: code will never
be executed [-Wunreachable-code]
                intel_sdvo_set_encoder_power_state(intel_sdvo,
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_sdvo.c:1851:6: note: silence by adding
parentheses to mark code as explicitly dead
        if (0)
            ^
            /* DISABLES CODE */ ( )

drivers/gpu/drm/i915/gt/intel_workarounds.c:884:3: warning: code will never
be executed [-Wunreachable-code]
                wa_masked_dis(wal, CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);
                ^~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_workarounds.c:882:6: note: silence by adding
parentheses to mark code as explicitly dead
        if (0) { /* causes HiZ corruption on ivb:gt1 */
            ^
            /* DISABLES CODE */ ( )

drivers/gpu/drm/i915/i915_gpu_error.c:319:11: warning: code will never be
executed [-Wunreachable-code]
        if (0 && zstream->total_out > zstream->total_in)
                 ^~~~~~~
drivers/gpu/drm/i915/i915_gpu_error.c:319:6: note: silence by adding
parentheses to mark code as explicitly dead
        if (0 && zstream->total_out > zstream->total_in)
            ^
            /* DISABLES CODE */ ( )

Clang warns unused after removing unreachable:

drivers/gpu/drm/i915/display/intel_sdvo.c:696:13: warning: unused function
'intel_sdvo_set_encoder_power_state' [-Wunused-function]
static bool intel_sdvo_set_encoder_power_state(struct intel_sdvo *intel_sdvo,
            ^

Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c   | 30 ---------------------
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  5 ----
 drivers/gpu/drm/i915/i915_gpu_error.c       |  4 ---
 3 files changed, 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 4eaa4aa86ecd..45d03b09f8f0 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -693,30 +693,6 @@ static bool intel_sdvo_get_active_outputs(struct intel_sdvo *intel_sdvo,
 				    outputs, sizeof(*outputs));
 }
 
-static bool intel_sdvo_set_encoder_power_state(struct intel_sdvo *intel_sdvo,
-					       int mode)
-{
-	u8 state = SDVO_ENCODER_STATE_ON;
-
-	switch (mode) {
-	case DRM_MODE_DPMS_ON:
-		state = SDVO_ENCODER_STATE_ON;
-		break;
-	case DRM_MODE_DPMS_STANDBY:
-		state = SDVO_ENCODER_STATE_STANDBY;
-		break;
-	case DRM_MODE_DPMS_SUSPEND:
-		state = SDVO_ENCODER_STATE_SUSPEND;
-		break;
-	case DRM_MODE_DPMS_OFF:
-		state = SDVO_ENCODER_STATE_OFF;
-		break;
-	}
-
-	return intel_sdvo_set_value(intel_sdvo,
-				    SDVO_CMD_SET_ENCODER_POWER_STATE, &state, sizeof(state));
-}
-
 static bool intel_sdvo_get_input_pixel_clock_range(struct intel_sdvo *intel_sdvo,
 						   int *clock_min,
 						   int *clock_max)
@@ -1764,9 +1740,6 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 		intel_sdvo_disable_audio(intel_sdvo);
 
 	intel_sdvo_set_active_outputs(intel_sdvo, 0);
-	if (0)
-		intel_sdvo_set_encoder_power_state(intel_sdvo,
-						   DRM_MODE_DPMS_OFF);
 
 	temp = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
 
@@ -1848,9 +1821,6 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 			    "sync\n", SDVO_NAME(intel_sdvo));
 	}
 
-	if (0)
-		intel_sdvo_set_encoder_power_state(intel_sdvo,
-						   DRM_MODE_DPMS_ON);
 	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo->attached_output);
 
 	if (pipe_config->has_audio)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index adc9a8ea410a..d60ff2c67138 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -879,11 +879,6 @@ ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 			   GEN7_FF_VS_SCHED_HW |
 			   GEN7_FF_DS_SCHED_HW);
 
-	if (0) { /* causes HiZ corruption on ivb:gt1 */
-		/* enable HiZ Raw Stall Optimization */
-		wa_masked_dis(wal, CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);
-	}
-
 	/* WaDisable4x2SubspanOptimization:ivb */
 	wa_masked_en(wal, CACHE_MODE_1, PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index d8cac4c5881f..6ec699da1dc2 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -315,10 +315,6 @@ static int compress_page(struct i915_vma_compress *c,
 		cond_resched();
 	} while (zstream->avail_in);
 
-	/* Fallback to uncompressed if we increase size? */
-	if (0 && zstream->total_out > zstream->total_in)
-		return -E2BIG;
-
 	return 0;
 }
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129181519.69963-1-viniciustinti%40gmail.com.
