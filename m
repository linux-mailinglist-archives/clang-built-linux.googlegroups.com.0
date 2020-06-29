Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBEEL473QKGQE3V7EYMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6477320CDF7
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 12:42:25 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id o65sf9633299lff.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 03:42:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593427345; cv=pass;
        d=google.com; s=arc-20160816;
        b=sfSNCoQJDy5d5IdV3ibxXXrOcnOZkQ8v9XmuPZG/xHg9UeSjO4aVrzX3BUg0A2Zy1P
         LdJuKSXl49NyfMl2Khez17UZ5BolLep5znDAdsYea465V1Gb8FschZGkMSfAnsWXRjhy
         5ztewdCPSNbNB9a6LD4E0apinPOWnuCvmiyIrp9M+XJbuNz3RS1POYMrSudbQi0YrGr5
         7Z9AgP6hV6tCBZWQev3dDGdnKII4X1jWYqgyi4m1Lw28UgEklb81EL8P1Sqr03MV1HEp
         Nxlm4NS2ECJ/WpU4xnGtOkjpSzCdNjki9N2PbXq12lsX+1PEpVcGr9W068hSUk7D1F+U
         yu9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=krA2B5DEjbGelLIWTrEVj8IjmohINI85i994Q6PrbGc=;
        b=O1B5O1nj8JXifIFWt1EKirGeNhJj+gOQ8IxWBrOSJREaHi8I68QBoEMRRJ7TPKPdAj
         tsl8KRLJBoLBcXmfLUqo/kO2DvVvAIBkN+0+JlVPe1dvY8DvjolDPOJ93NhCDaFViwkO
         DqEhI3/yelKBqF1G1whOe0o0t2mRXqEWCUXSE9P4CpidZBcNpOmyImX9JWIsFZKfHJrh
         qd48bY+dsPZsVDQnxx4VB1QJ3HaFGgnV39lFDAEl7u1jKa8yR20936upR8i+k8c60ngx
         PelDzEGBLlZPtHVOr5X5k11KSgofBR36v9BvSuBrYs3lNdWs0TaxQWRH2jE8/lGdUX7s
         9l5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EOmizTnm;
       spf=pass (google.com: domain of 3j8x5xgukef4kr1kxmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--elver.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3j8X5XgUKEf4kr1kxmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=krA2B5DEjbGelLIWTrEVj8IjmohINI85i994Q6PrbGc=;
        b=jRjQnLCZZQT9OSmKctz2gM8tiCmEhv5oY6Y0QDNgek14Gm5uV1fp2swlIGKsDRx/Lc
         Klxpc62QPgZU5Yc2r0IrZctUV7xvYdbYN1FTLSMRn6xT5rXIk6aiFhB4yEmov83Qiwei
         bJ6qYTh81vPpi3Xdh5YBiqAp9qh5ZaYXVo3AegCuck5VWyOZWrqQntJf+nX4UF2u928g
         xLQXuLbeFU8PPHNpDG+GcNuhzW3P0gNc9zcjY2GE9PYde3ae6Ka43GLLPNBqjwrL/Po7
         M3Vq95pPD3CFxa0Y4HyuqkXw/yt/cVJBHIYHHvSCAIaPfVl5ghtoBdNnCvXpuPSErn4k
         Rbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=krA2B5DEjbGelLIWTrEVj8IjmohINI85i994Q6PrbGc=;
        b=kqQUlr+yLADIl765l38DbIuwBONx1daKMF3xb6HvpJilZ6vnKVdg1/mqBp4LUaf7CS
         CUL/oatXWAKboSNfQIjd6vl0tvYOQ4Aq/NmVyymwod1vg+6qALxd762vPH7GwIfyA326
         HVWYQiMeJV0OJ+cg6N6iZDXXZbgc65JpB4noYzwYtV5AiVik8Y3jBJgoygzFypu/8AbL
         q+oOinPGaPwvLVcKku1GDu+N+3el5ok9rZgTJiy8EQvuxSfDg7A82y8ANY23CPLWiwAt
         rzOC45xeIWLRIRoJT2Vsz9E0alOhLOdlalMWa2ujCfETC/dirIL3DaiY9BzOOuYh2Cwr
         130Q==
X-Gm-Message-State: AOAM5336UhEBFRs1RuD7cP5wGee/iyJWhNhexicOuhpI+K8eBoWONeZK
	sQ/Lkapo5UzwwaF5INeczrY=
X-Google-Smtp-Source: ABdhPJz11M0payyuXmmHAHvYy8KIrucsUmMshzideV4WsM2S8MinTE5kOK3E1SrRnT6Q9nvr3w8YtA==
X-Received: by 2002:ac2:52af:: with SMTP id r15mr8946691lfm.24.1593427344891;
        Mon, 29 Jun 2020 03:42:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5f95:: with SMTP id r21ls2152791lfe.3.gmail; Mon, 29 Jun
 2020 03:42:24 -0700 (PDT)
X-Received: by 2002:a05:6512:682:: with SMTP id t2mr8871210lfe.101.1593427344217;
        Mon, 29 Jun 2020 03:42:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593427344; cv=none;
        d=google.com; s=arc-20160816;
        b=mNDkW10aMW2MvOk9inAVfjh4SDZiWufZJ19nOgb3p1fGc/Kc4AYl5AsuLr/RzgSbjP
         sndSc6wuDeaFM8f835J3Fw9a6CZcSwlojGL/xRVeAXLAQ0jAeHigTnwuUiHfmQ6ekOSq
         CnvPDP82uCbzVHscfb4XCyNyVnBpzoDL0XGg2OQwJDTfyOtL5D58x1vtc81vknHt2lqS
         onrjp+YECb/eysrTB8zNIcuECNkoyO8XWc7vJfMFzTq+ErK6xmx4vdbfDi9DWvEDana3
         1Qo+f2wPaiw4hAtIZoarcsezzgLku3vS40Hn3+tR2Q/BVOJYjBACkNaCPR0XnGbVupgT
         7EsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=cd/DuDkUFEfbY/EbJHKe01td49IpW+ZHgFOrWbd6mno=;
        b=WVYRcHU3GUCzoPmY9EQhevLK2qdzpgfaIxUqf0shCosHk2DX0qB6rwH74hZdGe+RpV
         7cy0PRU2PCuI7xH+LBGr9BcPBu1TmOXtZ3Y0XKPld1J17aZujm/fl0ySyitTsQErXHGt
         g97ziNh3/JoEysPqAbODee7TeWNNay65ZeBYiGYOd2sU7LCsEfZqAPA4HoJ8Np+/RSvA
         dqPZOvVlfoDXrRDPsrYWYaq2ZppfoPUF6VKS/UK2t8gQGCg76zx5g6DFh/jkBu5fZoUu
         7UaYsWuyrxAVKSbbPOKjLr3vpPzYz/i4KlMP2SQZIT4V5f2FNFBL/AZ1FTJBEeh8PwnH
         2igA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EOmizTnm;
       spf=pass (google.com: domain of 3j8x5xgukef4kr1kxmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--elver.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3j8X5XgUKEf4kr1kxmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com. [2a00:1450:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id j14si1675308lji.8.2020.06.29.03.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 03:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3j8x5xgukef4kr1kxmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--elver.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) client-ip=2a00:1450:4864:20::44a;
Received: by mail-wr1-x44a.google.com with SMTP id e11so16466819wrs.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 03:42:24 -0700 (PDT)
X-Received: by 2002:a7b:ce87:: with SMTP id q7mr16866593wmj.39.1593427343578;
 Mon, 29 Jun 2020 03:42:23 -0700 (PDT)
Date: Mon, 29 Jun 2020 12:41:56 +0200
Message-Id: <20200629104157.3242503-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 1/2] kasan: Improve and simplify Kconfig.kasan
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com, akpm@linux-foundation.org
Cc: dvyukov@google.com, glider@google.com, andreyknvl@google.com, 
	linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, 
	aryabinin@virtuozzo.com, ndesaulniers@google.com, walter-zh.wu@mediatek.com, 
	arnd@arndb.de, dja@axtens.net, linux-doc@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EOmizTnm;       spf=pass
 (google.com: domain of 3j8x5xgukef4kr1kxmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--elver.bounces.google.com
 designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3j8X5XgUKEf4kr1kxmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Turn 'KASAN' into a menuconfig, to avoid cluttering its parent menu with
the suboptions if enabled. Use 'if KASAN ... endif' instead of having
to 'depend on KASAN' for each entry.

Signed-off-by: Marco Elver <elver@google.com>
---
 lib/Kconfig.kasan | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 34b84bcbd3d9..89053defc0d9 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -18,7 +18,7 @@ config CC_HAS_KASAN_SW_TAGS
 config CC_HAS_WORKING_NOSANITIZE_ADDRESS
 	def_bool !CC_IS_GCC || GCC_VERSION >= 80300
 
-config KASAN
+menuconfig KASAN
 	bool "KASAN: runtime memory debugger"
 	depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC) || \
 		   (HAVE_ARCH_KASAN_SW_TAGS && CC_HAS_KASAN_SW_TAGS)
@@ -29,9 +29,10 @@ config KASAN
 	  designed to find out-of-bounds accesses and use-after-free bugs.
 	  See Documentation/dev-tools/kasan.rst for details.
 
+if KASAN
+
 choice
 	prompt "KASAN mode"
-	depends on KASAN
 	default KASAN_GENERIC
 	help
 	  KASAN has two modes: generic KASAN (similar to userspace ASan,
@@ -88,7 +89,6 @@ endchoice
 
 choice
 	prompt "Instrumentation type"
-	depends on KASAN
 	default KASAN_OUTLINE
 
 config KASAN_OUTLINE
@@ -113,7 +113,6 @@ endchoice
 
 config KASAN_STACK_ENABLE
 	bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
-	depends on KASAN
 	help
 	  The LLVM stack address sanitizer has a know problem that
 	  causes excessive stack usage in a lot of functions, see
@@ -134,7 +133,7 @@ config KASAN_STACK
 
 config KASAN_S390_4_LEVEL_PAGING
 	bool "KASan: use 4-level paging"
-	depends on KASAN && S390
+	depends on S390
 	help
 	  Compiling the kernel with KASan disables automatic 3-level vs
 	  4-level paging selection. 3-level paging is used by default (up
@@ -151,7 +150,7 @@ config KASAN_SW_TAGS_IDENTIFY
 
 config KASAN_VMALLOC
 	bool "Back mappings in vmalloc space with real shadow memory"
-	depends on KASAN && HAVE_ARCH_KASAN_VMALLOC
+	depends on HAVE_ARCH_KASAN_VMALLOC
 	help
 	  By default, the shadow region for vmalloc space is the read-only
 	  zero page. This means that KASAN cannot detect errors involving
@@ -164,8 +163,10 @@ config KASAN_VMALLOC
 
 config TEST_KASAN
 	tristate "Module for testing KASAN for bug detection"
-	depends on m && KASAN
+	depends on m
 	help
 	  This is a test module doing various nasty things like
 	  out of bounds accesses, use after free. It is useful for testing
 	  kernel debugging features like KASAN.
+
+endif # KASAN
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629104157.3242503-1-elver%40google.com.
