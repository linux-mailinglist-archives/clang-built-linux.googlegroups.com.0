Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR7W6D2QKGQEF2TKAEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id A12B91D1D60
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 20:24:08 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id n11sf219002oot.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 11:24:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589394247; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWo7Sli6vWvrmd7dsNEgZlGS+B09f7J7L/ofkanJqUEmuWyf/ZHu+6348GiIMHlul+
         kb82XCw9GLtnTUmNzc2vK0HcirYdLVfHvpYKgM0gAFBGHnItnZF5oY5MM7aKf2bixGch
         JMufpBM0MDgDOMoUIOqtfYKY5EHl9/MKOjkI8OnVANwbiqxMRkcnwKybDEjzmWzcsrav
         ZnP9DV38hRCj1PDLhBIn0Qt6UI0I94IJPVm2/mIKN3DEugnMWWZVTAs2qbECAWBOwLVu
         mhKWj7V9lH0lKgtVcDN/iE7CdMTUzREBH6LRaHVsjTJwa16WQCi5R9grL6HQ7IBkOt4/
         dnEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=PskN+mT+80g0qmeHzbL+ZohC4/tQMSGUKBCmZvKdx0I=;
        b=a4QZe5NbhaBHqC3kdQSQUJR8uCZd4/Pib1Fs6/xz9c+TXAhmQYT+8G1lmoyNjlaj+x
         W0N3iFJIA/O9mdeZ95vIugbElK8xta4fIp6LsdjuO0CF7nQEy9wHoKrhUJKACys5DnVe
         +lcz632BuS5jGzVR5JBwgJZqVgMjG8N15vSZvOXLNGG/PsPT555dx/dTANq48VHXKiRu
         18oByqoyiSW71JwMdpB3XAvJuh6Q+XUzPpz6KOZEKC5HOeB7205hUI6P/xYEy1/W9PSA
         JnKYmaE5mdWpDfn0y+iYt3NEYvcQhB0xaegMZwURskK1okf9+wQ4yRtKYJD4CYsBtmrQ
         WGcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+7yt7La;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PskN+mT+80g0qmeHzbL+ZohC4/tQMSGUKBCmZvKdx0I=;
        b=bx6740qyMqkbUBPMBPTFWgo0sZYPo1cna4YOS+gRZ5gUFlNRak9CfPxwmaAMQYY78m
         LXP/70sBhjkUgr56HmZVIEN1PoL3UjfZJ+aDgWIUdkXHg9J+Qoij4La2KtzqsOuPP+xG
         kekAghewiWH7uLnVfAulqFzxkF3l7oPr6gZtvjPjusmk3WxwJbwOOaQzFUNC2BL4Mj6i
         Riy6y+B1Fs+qW12elDcEWX2KIUHvI1+yfUGOco24XXbTDwea4W9H5r4RDU1LiLcvjeo1
         8uV41HIvqOD2LXsKqQbHicEv8WQhj0lE0uze/49UUQROd1PaajT8AiRdHw5z/cF+0liC
         d3Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PskN+mT+80g0qmeHzbL+ZohC4/tQMSGUKBCmZvKdx0I=;
        b=ouaxbMnw0rV2mPauLJMOoaw/SAGryCp4Nhje0MQvgC5KWCe43jN3wOSmU9mjHc69ws
         tBiOcUdOt1wd68HP6A8KXe1q4SPL2Ti+m7ynIt5li9oCJmHs2qygcGxv1d+UcrUvhnFg
         ZWBpKxgtFsDqEqFXmtpCjnfQBuTbCCbWWUipLiEVcXMe3EQBVOWVVFVse51NL4do9DCz
         lIuXcecsMroGh/aP6rnDOLJ3z1QLdhvAFVL0zDE1EWFvr/zA23w5jIFRruqrNShJ333M
         S0GbUDWH2LGKJTReM+yqwai9s/sccw505N/3SiqOOu3F365qVdiiMkZwwGPMiU3fABvz
         tx0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PskN+mT+80g0qmeHzbL+ZohC4/tQMSGUKBCmZvKdx0I=;
        b=g7ATgRJ4HyQc+AGx+38OLWcTq2oVBUG8j51l/iwbruQtemDPP9GLQlm9RSUqUlKLov
         vJo1x295D0DMh+rpsv9yecSUyZsl5TXBjV6MbdnJTPkax5Lw4av0err68GLYelN4Ea22
         f/3Av08AZ7QYeuOwCJwg0cAWUTLEHmeOcF1Py2etzmkOyyft4IzSBHbQ7THFaW5kDklm
         v05q1jH+Kgu/MSw+YyjJ54m98d1HRo+/18jnnf8BrxdV6q0nSdw4jFzs9OKELCtY8ZAV
         clozIMJbehieitUMbaOaEyCIfsEflQgOD0EsvUUAkg11dQTcL9mSxZls1Rpf4+Wq/l+m
         xU7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub8fmwXBSu/Tf2OuA/GjN1eU0XDoyZmebSNHuVWVOo1L0cis3hq
	Nw/9coUt/PZZ1209yMyM9UY=
X-Google-Smtp-Source: APiQypKALvyWXQ9mfrlJeg5AZu5Pz1fe8Uzfc9n6lVVl5aOIv7v8JN9XN0wegEHJHG/vAOk9wuwung==
X-Received: by 2002:aca:d548:: with SMTP id m69mr28100478oig.16.1589394247214;
        Wed, 13 May 2020 11:24:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:363:: with SMTP id 90ls33105otv.6.gmail; Wed, 13 May
 2020 11:24:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1551:: with SMTP id l17mr593257otp.153.1589394246816;
        Wed, 13 May 2020 11:24:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589394246; cv=none;
        d=google.com; s=arc-20160816;
        b=fV7Me2XhR+Acx9NLDzU9Fe5hxo7+jsQv7KTNcCdTCxTFgkUHMw5X6tPhhSR6kDd5Jx
         Rfh1Br0UF10+KihQR/WOgGG/TtMYeltiulnakb611pDKXYa1ARI9G7xOhllvZgwOlZbi
         C5Pw0aAZuJmf6mgUBDum1nFCLznUgTblh5L5wVm77eyFt7hbPdL2jlrnt6CREZtdDyC3
         O8irEplmOJKpnwIi4NLOHPM5p1ZnVkU3kUbJKVjvXO+eVC1mgVraPj0wJ398YfVDau2Y
         SCp48A0oo5MPEBy6o9s3dJJgADGyNWdCCJSKnbdsWc3JitXL95LsvjZDJRfHvdVsPMKB
         Zz/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vKnnhjZf+Lvy/wEev/k/9Sd4WlZuSJaabLD4NBhl2lM=;
        b=XygwduR0zgi9YTJsHrssCY+momhq0Oyy6g0CGnHO/6128jD2QTaJkLXSXGqIx+lQcY
         Hc1o7n7LdiyJMSOBllW3mPhrSlJ3vR6HIUemOc3kwtC3rTCcpGdDapImOeVh7kvI1S89
         pqAO6GlT5uvUbBluyayfOTDuR/ZzDhQ+zBbGLudMaDlWnM3zEBR1QtzgcsRYEeFkOnVd
         +AwHCKncnoEW5Q4636bf3VRgPUkw+u9/tuy34TEm+yTMjvSxv0pSTKi6Z//UgwSEBkT6
         vdVqIVv5njkX5DZ57P6sS6cX267UNx1bP3AVwSsL2hx1fkeZWEyMbk6yzVuAoz0ojDaL
         tAhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+7yt7La;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w196si803113oif.4.2020.05.13.11.24.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2020 11:24:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id c3so147381otr.12
        for <clang-built-linux@googlegroups.com>; Wed, 13 May 2020 11:24:06 -0700 (PDT)
X-Received: by 2002:a9d:2dc1:: with SMTP id g59mr604409otb.288.1589394246442;
        Wed, 13 May 2020 11:24:06 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b63sm125772otc.23.2020.05.13.11.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2020 11:24:05 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
	Mika Kuoppala <mika.kuoppala@linux.intel.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH] drm/i915: Remove duplicate inline specifier on write_pte
Date: Wed, 13 May 2020 11:23:40 -0700
Message-Id: <20200513182340.3968668-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j+7yt7La;       spf=pass
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

When building with clang:

 drivers/gpu/drm/i915/gt/gen8_ppgtt.c:392:24: warning: duplicate
 'inline' declaration specifier [-Wduplicate-decl-specifier]
 declaration specifier [-Wduplicate-decl-specifier]
 static __always_inline inline void
                        ^
 include/linux/compiler_types.h:138:16: note: expanded from macro
 'inline'
 #define inline inline __gnu_inline __inline_maybe_unused notrace
                ^
 1 warning generated.

__always_inline is defined as 'inline __attribute__((__always_inline))'
so we do not need to specify it twice.

Fixes: 84eac0c65940 ("drm/i915/gt: Force pte cacheline to main memory")
Link: https://github.com/ClangBuiltLinux/linux/issues/1024
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 2dc88e76ebec..699125928272 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -389,7 +389,7 @@ static int gen8_ppgtt_alloc(struct i915_address_space *vm,
 	return err;
 }
 
-static __always_inline inline void
+static __always_inline void
 write_pte(gen8_pte_t *pte, const gen8_pte_t val)
 {
 	/* Magic delays? Or can we refine these to flush all in one pass? */

base-commit: e098d7762d602be640c53565ceca342f81e55ad2
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200513182340.3968668-1-natechancellor%40gmail.com.
