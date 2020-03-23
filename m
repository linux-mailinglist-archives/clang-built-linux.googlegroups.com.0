Return-Path: <clang-built-linux+bncBAABB5VV4DZQKGQEHWFSIZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBA018EDE5
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:12:07 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id o10sf11858254qtk.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929526; cv=pass;
        d=google.com; s=arc-20160816;
        b=n4GYy3qFAUdiWWpCGH3geW/FcBnaAdVG9npvQhFfPDSqcRPESR2d49nOiArG8NcoL1
         tVSK1XP3+Yl06flW0UiZAvduWFVfvGv8lRpytwvRO1ODZOfedZOU7Pve3OIFagdbEMid
         6kDszmVBHPuWoDyJ4KZDTgvezZV/hEwhrRuy5r9M2ZIkPH6s++lPXOYEpjexPPu/oM+P
         0Jr95kDTX0r8o/bn7znd5oVX+PvvTdqRErZ8eFEU4WPjOydvZzmq7JbHCerlC6gnwTAY
         FOWgu9MYFhYr+aezbyao1tW+xslCz+kvZomstUcuiw48THPUYBDeWJaysY4XVFOjU/im
         sQ5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=YYbBbHmEdDzak1p9K52ZwzyZa+yii5LHa/Ojufd8f+U=;
        b=kOPWLN46C5X1mid5swpTIDHRTYQGZyZhXdDFoscIpleYM0r+icsgnbKWnZFw/iiazb
         1u34mXWSm+NnxGRy2ZsRfO3eSHX2dlBMMopR1NsaQaE4jF/ekGe5iK3A3goMOV/U/VgU
         fIzGOmVix2dkau2YFkWm8UWZD9XrpqOxpvaC+g91AtRnJIbahZnc1ho+CO5mCf5e4p9U
         sLxzkeld60d9i7Rng9EKzJ/Q1QSpme+eRj4eNrq/K3+mi/cg21r59Nj/HuO73LDjrt8G
         nMLPRO+TEpO8RDKh1NwkxnvCKPmdVw6QkI247aQXGhMBXOHmcmWu9DcQcKQLE3iH84/k
         yrUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AsLaLubR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYbBbHmEdDzak1p9K52ZwzyZa+yii5LHa/Ojufd8f+U=;
        b=SG0nZagSsX8KUDyrgna8Ik4IK5EhrWgrWLNv71sHIlGKYpuPcXhP42nTTcm9+R7GhY
         6yKD5nkxEcPSMH7s54EcBc9pCemKY9Li458+g0EFWgBl3fDb7+O7mdOEByQHrNab8oPB
         9Gv0FBMhQ7beWXN8f2mVzEJ1pnbf7MmViqOeqW8OOuxxncdJJ8gI99hiPaSYOrDcBBVD
         pJCuO9rSyxACMUulFCULM/7qndBtxQ4KoAkzXZESDOTCKzLnYwvnJLkXn4+poTfRpBsk
         98CzCope9fAFRDex2dO3IYW8NIuyCg8m3qw4d4AwOikL8mTPd70Bo7J0wnHHDe8isgnf
         q4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYbBbHmEdDzak1p9K52ZwzyZa+yii5LHa/Ojufd8f+U=;
        b=kTJjOSBOixNERJWbycI4e3GnT/aqz1MEKaiSDSNa2et342RoEz1XwBLqOT521G57B9
         jSlmddWNXJi/NX0wZD3f/OMDqQGtrdIg3qh44l6GbtQgLWPDWAj3SokyulKqSjHoUfyS
         CXivjo6oezWrqye1QmB+LmCR2GoZ+vR7BgMva5iiEZSgDA8Xsa1X+lSNAGMA4UWoh9WZ
         m2cSDVkbk9ouzc6NOrPis0yIbYutmzcyocKX1atRijVysIqMJryDK+Th58dnsYiM+DBn
         0Dv/GvRdznL61P2CbmviPmMu+YYwMFFrHFzwNQYlnau4gNgmYIDQ48QfD1ixMJn0Mkn6
         +Oaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1hTT3Br+qU2A7042fHwjHD4CXkl3DYfL0aXJs8iRFnUaPlqrmN
	QfjZTE9Vww3T397yUJfC4bc=
X-Google-Smtp-Source: ADFU+vt53wDDNJQvHYavabkEcxLYcf+7Slflb3psHwMmTw1eZlqiws6L2cp3+NEfatgTFLZ85OrcZA==
X-Received: by 2002:a37:8d42:: with SMTP id p63mr18670289qkd.182.1584929526333;
        Sun, 22 Mar 2020 19:12:06 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8d49:: with SMTP id s9ls2973323qvb.10.gmail; Sun, 22 Mar
 2020 19:12:06 -0700 (PDT)
X-Received: by 2002:a05:6214:164d:: with SMTP id f13mr18768703qvw.214.1584929526029;
        Sun, 22 Mar 2020 19:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929526; cv=none;
        d=google.com; s=arc-20160816;
        b=Eda+7+uDDerVAP+DgcXXfbXtwvfUIQd9eqsqhvy+aWnHDRbMqOapbmVsQ24cEv9yEO
         qlSola9EKpzr8NV62bohTjt/cezQLpSD4Y9XIety5d2jzbdmZTqZVU4lTNmRtYIMhrgK
         JQzgXm4bbuzxCU2l4aqaHe6T4HciKh1aIKMDEcmzSncWDt8hUemOnQumpeU4ok47PFtC
         GjuVwuv9P9M89zoUf9VgLx2UCtvem5E2SmTIludKkuu0m8fXTgksryq1Dy2hIWPr86C3
         Ane+2idjZHvK8okf9B9o7WQuua9ECAhRQYqeYD0viR6vyLiyx0rQu7glLKpJXUcxupaF
         eUYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=921IQ+kt9407iGCDk1ZEmlbnWdF8N6TUyCzyGcOHkIA=;
        b=LQEFsZnsn4OS6Z5sWTj2qf+3DN9CPTrt+jsV/+jM6W+5m5dDKNCbQtC79QCJL+eDxx
         O9Il/IJlgKBLL61sImNa6lnJQFMtsoDbZoQUgg8r1yqnkA5hyyGHSyb4bSBSEmSq6ux0
         FoQvT/8Sy2P22XgS4wntBo8oVnLAF/YZXk01BCBZLuu67tZ7L6FOQrJRQJ0f8TDe8Bid
         tgyRMdhc+hpTvlxnR2frWIGyRsMkkrIKGq/QriVB52knMYCno/iXRtoUJsIrXbrritBF
         vwaLD1Vj+6pYN4btHcQKivAc2ojiDp+L6fzh0bpAhne/3PvlGfUItUdKDT5d9USc8T+r
         a5Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AsLaLubR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id v85si642305qka.6.2020.03.22.19.12.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:12:06 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N2B0XE005345;
	Mon, 23 Mar 2020 11:11:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N2B0XE005345
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        clang-built-linux@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
Date: Mon, 23 Mar 2020 11:10:53 +0900
Message-Id: <20200323021053.17319-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=AsLaLubR;       spf=softfail
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
binutils 2.21 assembler and also by Clang's integrated assembler.

Remove CONFIG_AS_MOVNTDQA, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323021053.17319-1-masahiroy%40kernel.org.
