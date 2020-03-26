Return-Path: <clang-built-linux+bncBAABBJGD6HZQKGQEZZOJ3LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 1393D193A34
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:46 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id e203sf4135476oif.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209765; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9vKriNlqPGWsBrzz+SAw+wCTgJ910WnPFScsU/WyjUFUSg/ncrNrl9npAFbS11L0V
         CWl+wNKsOfGtlle2M3kXqgINsu7jf8TAnSiy3kic6ex3f99/obAkTkMoQ8zp+mp9Yyny
         BGwQXMO+EFtkGbp95J/iEVC6tzz2agGNU+fhUsbu4mMapmlTZER9tJSzm5agd/xJgj4b
         jr3M1nwCJv9+Bcyy4cSb+q6G4ZnQl0QKp6iWhnFHrTXCMVRkLZBQEALNcHtouxC+SO4U
         CU5FsN1AgcLbgnmlIZwgfUnQVKmMzk5Vkk5ZXCt2kF4unp1qcO4eYJ0VNZaWZZyIbNWg
         Te+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=RApoQE1+cIdXdjG8lUdTKnrhZcQK1ti52zFlSMhZ3Uw=;
        b=G7QNAZ6vACKmA6IX/Ds5eJ2yFfAd6WlfGSp6/6Zst5WB3wGqGwFx71Xe7m9SiRawdT
         0NVLxaOywj2QVNYXgG40qTSf/iQ7up7OX8/bBzgz8ma1NBRL5Tu07/6qGZInOSHqqPzR
         YTaDgLHVdCXYgYU+qoYaOnvWbMwa93Nqnf8V8BfuAj+wE32//sCYYY4z+msRgNxejNwh
         3R/T1KcTQzG8c8FEJPOhkgNb6WdBUfO8HE1Mcccj0Rj2wLsTg2zM3SpPnvfC5bKxDmib
         F6KVxoojMWsboY3kehyCZLGDR8PRUnyTgs5efPSVNw+pW4z0MGRnasVRwQOhyCdnoJW8
         gO5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Z2HLjPno;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RApoQE1+cIdXdjG8lUdTKnrhZcQK1ti52zFlSMhZ3Uw=;
        b=NKQ+rbFDOcVTEmh57cpjSJqJttATu6AGhhnTT2M2K6ipGr1KS2Mnpti1EPE62woC+i
         Pg6xyVDWMMerfLzeaYSMZ7CQMslJyDesuo9/tzs0+VtFR3a1nTscBPigl/4wmFryKe+F
         i50ddKJh3fZYfufzjItzEBcwTQAYQYglq2onJCB+xKKTubaxE86vXF1cO/YnzJRj6RNK
         gmnZDpKKv98e2Q1fqgcUZBPUbfVjLZy14lPWgWB9KiM7aS39/dbDAn1Bsk6QsmS6Kld9
         pSW3xW1EHRrOQFdH9mC1fA0bQOEx4FCvBG2lrl+9m3FKzEVI+5a4St9y54fMcoSSQhOA
         4M8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RApoQE1+cIdXdjG8lUdTKnrhZcQK1ti52zFlSMhZ3Uw=;
        b=Az83R8m5feig2N1bkao9Y0FyPA36kh1g4O1fq2cEDtkIhLgBCIS35KrqxbdtSLKMtQ
         I9m9MGUPTu4ms+eZ8seoRlJKTXp9FgxrBsCblo5NWKwL7+s2jbAmPf8ASpLehmLeny//
         +BjIT6zAun4+Lzz6dfKxkb7J4a/k3iyiJJk/2mSKymeJEUtFMPkCV6/IOya1w84Vixmo
         ldz2Xucc4T0TAIKq+/GftcOJ8Y9SqNXft+aRsg1uSi2ttVnq9H1L+CnaocFzeW8w89Kc
         uQsWdTR27sOSIOQ/QqG4K7Kp2eKDCxhzux/8kRBfxiuQpOOY98U5FB1LCozEMZV1bR5U
         gzZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3X3tHQpDFMrtjBZ1Q/zYOCu092HNan74+dYlNvOuZap5wV4XBS
	SI/4Y2JNSsRIdwWHdPBfuFg=
X-Google-Smtp-Source: ADFU+vttwq12WpKZ1YOwTl4o0UIG2yPxdwC6e4E+AcS4BFKzwZuOb9CfbhWtPInsLs81cvbA9R4NQA==
X-Received: by 2002:a4a:6549:: with SMTP id z9mr4284885oog.37.1585209764905;
        Thu, 26 Mar 2020 01:02:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls1694271otj.8.gmail; Thu, 26 Mar
 2020 01:02:44 -0700 (PDT)
X-Received: by 2002:a05:6830:4025:: with SMTP id i5mr5594577ots.203.1585209764594;
        Thu, 26 Mar 2020 01:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209764; cv=none;
        d=google.com; s=arc-20160816;
        b=0SoOTq6Z+IGekY/DTvaXzr+D8uFZIbjwxPKWPxdcaUGrE4YF0uK6jzs8KILhKWvgWY
         b/YD4kH7Is5S6w7JDjxFgt3jQ0Ojiy6N1ujNLaoISNNhMl4hAMu+5i6q0t84qxIofVDi
         dlCcg4lj/vZ8nduffV1ltx0wMUpaDmCRPDokvaWTbYRF79hY2al+oPhWtVvwgzh1Umh8
         OAIsJNZHdIfjRd1eHvHxsmx0m6BcjHZB6pteLAURg5lMa+aKyLpduPh9Q4RAsewnX+YO
         VbXzkfEbITa8rONK+cg5BCTFrSl3sA7PV6r5If7v2G2fd8vOvC6H9ygKoKZJxv9GVLKe
         vwvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=1kwyPiyPgRPS8M5GHrXIKo7KAtQM8nhh5IKej8Tf4fs=;
        b=kcPCeFvoeC36oFqOcUyZGTQ7D2q1SRVrkDkRbuGrm0CQTI6Y6/yvT0aKbSpackMxZG
         ESsaIuxacrXr524jclmfPWlKMH6eFlUAKYGRLfDcBsEHvduowN/fSGiI9Qd+IDzPC+2/
         s3Oz6xbQRv0Gcmp/hua6KONzksD0cAz0xUls7KvI5D/fSdZMHJ2NNdW84+6CyL1gwdC8
         58s14AUFE+YCJd5Acawr3VVoYDYpZc8X0GFM/RGWOjUzrvI6u/JQ57jMepvwvx1QW802
         RpUIr0qcEvmQIxTX97qxxWCUlv9X17OLZgv1Sgikq50OR5Wfj1fBUITrRjWIbx1yT28s
         iIEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Z2HLjPno;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id d188si131324oig.0.2020.03.26.01.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:44 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wpc002183;
	Thu, 26 Mar 2020 17:01:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wpc002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/16] drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
Date: Thu, 26 Mar 2020 17:00:57 +0900
Message-Id: <20200326080104.27286-10-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Z2HLjPno;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

CONFIG_AS_MOVNTDQA was introduced by commit 0b1de5d58e19 ("drm/i915:
Use SSE4.1 movntdqa to accelerate reads from WC memory").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_MOVNTDQA, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v2: None

 drivers/gpu/drm/i915/Makefile      | 3 ---
 drivers/gpu/drm/i915/i915_memcpy.c | 5 -----
 2 files changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a1f2411aa21b..e559e53fc634 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -28,9 +28,6 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
 CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
 
-subdir-ccflags-y += \
-	$(call as-instr,movntdqa (%eax)$(comma)%xmm0,-DCONFIG_AS_MOVNTDQA)
-
 subdir-ccflags-y += -I$(srctree)/$(src)
 
 # Please keep these build lists sorted!
diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
index fdd550405fd3..7b3b83bd5ab8 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.c
+++ b/drivers/gpu/drm/i915/i915_memcpy.c
@@ -35,7 +35,6 @@
 
 static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
 
-#ifdef CONFIG_AS_MOVNTDQA
 static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
 {
 	kernel_fpu_begin();
@@ -93,10 +92,6 @@ static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
 
 	kernel_fpu_end();
 }
-#else
-static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len) {}
-static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len) {}
-#endif
 
 /**
  * i915_memcpy_from_wc: perform an accelerated *aligned* read from WC
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-10-masahiroy%40kernel.org.
