Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP7S3DUQKGQEFISQIDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0E470CAA
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 00:31:28 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id f143sf15733859oig.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 15:31:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563834687; cv=pass;
        d=google.com; s=arc-20160816;
        b=L10tAjLmtttdr48P8DRiIMlup+cEL15JMp9M2UhoZ94Kq96dz1qEmJbLqtFY6Xkxo8
         //mSRrXQB48T0wiAj9ensW7iLZZR6oHy8tdQS3/mZS2FGkzbUQiz44ghqcGcGic3naCG
         0DBRUSHC/ZKntFxvSQImCVgAjQ/1IAHMV5omGrvoHZYQSGxd3lJF3Nzr6t4lx4PsKSvI
         zFX71p00SfyhEppSnIV7qeAv437rvJEumCbkeEDHRcuIXJnIgNN5kCIDDCfcwTqCdW5s
         aZE2nrIgz8JMpL2nCnOE39vDdPYWeJKCv9RVG9OBxQi0V+Yl2Po6XOPFmlTUGtH6JCW4
         KmKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=khpmu7UbzpCWS7tZ56G17oYanPIpjcat3I3zavqO+s4=;
        b=MEMJnVLf8yZ2cNV55D19biC2u6VH7Vt80MUFryJoptnt3XLsd/kp5pQfO3KIcNWyUs
         vz0ScrR0WU3i9xhkzWOjvOVYkWWFeiJKIvheF4LH9/Z3Fc/PelA+Y1IB93Qq4YrasVy9
         /yCWdKmGY+dPtouxnfifdJCWhXvu5lNLRpN4OKoon2LNe+fm8A3j0EywMAKPLyrnc5sY
         6hi7vdLpDxFh5DHU80oBrvDoZJLAz2NzKlxQDNDwGJboi80evPqpmfEkV3VoKwvzaRHm
         BnhznB+vxkx4NkCZ7eccwnySG2zxC5CVCZuXn0ELyZSAbBaKFTjGgVp8CckrqzmyfGuz
         5sMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e9z1PXWs;
       spf=pass (google.com: domain of 3pjk2xqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Pjk2XQwKAHkkabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=khpmu7UbzpCWS7tZ56G17oYanPIpjcat3I3zavqO+s4=;
        b=NY0YomDxCQpK4a8KbLap3GJyZPPCECF7gWQHIRS1QPY0SNmd3t5X0WdO1KpsUeH4hu
         30DCrOxlgs29Sw0gHrGB0uBHCbvVOYD0frrPth4h1n09BRp3NbhO9Bh4yI6QnIn4erwX
         Pxosa0FD3z3/urEG7kLZyeGbwzcLe7+BgHlZZ2Jdqb9WHRPnNdSA0uMkD3GeYzIIdGhy
         NBGqV8KUzBswlkRKy1K+DtFaunB4aZd9AuZ697cdGmV0WdXQvuzmNZa3khI7zD3QwJUj
         lU9suBu+XW19DXfBRMfIewE5E96c91GgNhFbzzg+wZJeBrC5hOOpZd4Nv3nT583pUBnU
         ePyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=khpmu7UbzpCWS7tZ56G17oYanPIpjcat3I3zavqO+s4=;
        b=aGZTy2F+emnP/9P7R1o4Atr2RYVpArwUwyhBCz1ATAR6XSy6g2TOzu4E6EtJZYJ4VO
         TrDPrsmawqKVyJCWZJE3loiLD2aX1lSev3a+im1dwZB63qJV+1AdiRL82Vf/d3Ulg1cc
         9Q6+M2ZtZQTuEYmMxkn0vpZOjSN7Ot0zm99MbOtMsC0npWyPVqCEVVRW0Ro16Eo/hVma
         vAWVQ5pvldpXhWxARz+gRocXu08e6VzUcLCaNZ8Ng+uzaaa3i2We6aUaJylOQB3RRUhl
         7Efmt9H7YPYKnZz2wCqhj2SN4HllBNuNMXd6q76SXFMwuI40161fnl4OV/o7lIsmsm5P
         yRww==
X-Gm-Message-State: APjAAAXx8A8QagcACPuShLZyv1CWd0W3c6+bljYDsYg44LHioeQ/94sR
	EX6p++Rbu1JSrcEywzQwruM=
X-Google-Smtp-Source: APXvYqxqci3Fsrol8ZSx4wPcS+X/xqNU5XLkN2sFNm8QmaJDC8kMdL12cOUgDbEYnEm15qpUHtKoDg==
X-Received: by 2002:a9d:7ad9:: with SMTP id m25mr25092870otn.315.1563834687678;
        Mon, 22 Jul 2019 15:31:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d14:: with SMTP id a20ls5267814oib.0.gmail; Mon, 22 Jul
 2019 15:31:27 -0700 (PDT)
X-Received: by 2002:aca:cc49:: with SMTP id c70mr35005516oig.174.1563834687366;
        Mon, 22 Jul 2019 15:31:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563834687; cv=none;
        d=google.com; s=arc-20160816;
        b=yYbvIf4JDSEW2S4Jjdblh9RgPG9h/pJR7nmphrBaaRFS8SNVUzPNJ02UQOy5DhR0mW
         V/dnp0oUC2tBVjnXelP2TcH1rzW2d3oqhLIHxwGYyMOpB0uHYYgzGvR5aNWJzBPjRjbe
         tEHKwDXyduAsrhRskjPiRXqMfPBRmsfZ1i9o/EBLy1Z/6Ksg4teuXvwPCJwoC1ZjhGEk
         IKIzoQ6gwl6r2/V5j0xdhsglW5kRNrj5Kk7j6Yov/T3FfPK8GQl5jUxfw91LvPGNlSuW
         jgLJ7jkn7VZNie8PUOAXPiFGzhBEMw2byQ67epuAD6y931yGHmGlDlzMNG6/aT0yTNAT
         DhcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=oIv+GpT3Jmjvvs475a+O0pvmLeihB9t3PTRepY2uxPk=;
        b=OaEZSCuFGgDL3oq8aiKnrB5Ye+Z9NY/Pb6TDeTMAV/DRZtY6m1tSsQ6C2jiVoA+OoO
         JPFnGsDkFd06BUo2v1YQ+LUJzZEcSv9HygcwTtsMcCCUUqbbav4TR19QddxWDsEEt251
         rwiMR/wsHO1FxTpCml/09POTyvnP5Lk/5/n4PV/zV7WfBP67lMiYCGNa4fJ9rp7igcOZ
         bapk0dzqFWLwOkypmc7Y8FjaxiX0aSmKTpXR7BUm4g7QHrj+x9USSXifwnFs9pXDTqea
         MDHP9e/hPnDS3fMjKO/ClUvTcSVDgbJ7OgAslN34YsdVtpQvbHc+HNSEsfGXga5hYks8
         g+ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e9z1PXWs;
       spf=pass (google.com: domain of 3pjk2xqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Pjk2XQwKAHkkabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id i20si2268887otf.0.2019.07.22.15.31.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 15:31:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pjk2xqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id u21so24771378pfn.15
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 15:31:27 -0700 (PDT)
X-Received: by 2002:a65:47c1:: with SMTP id f1mr72262210pgs.169.1563834686245;
 Mon, 22 Jul 2019 15:31:26 -0700 (PDT)
Date: Mon, 22 Jul 2019 15:31:05 -0700
Message-Id: <20190722223112.199769-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
Subject: [PATCH] drm/amd/display: readd -msse2 to prevent Clang from emitting
 libcalls to undefined SW FP routines
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: alexander.deucher@amd.com, harry.wentland@amd.com
Cc: sedat.dilek@gmail.com, samitolvanen@google.com, Shirish.S@amd.com, 
	mka@google.com, jyknight@google.com, natechancellor@gmail.com, 
	linux@roeck-us.net, Nick Desaulniers <ndesaulniers@google.com>, Leo Li <sunpeng.li@amd.com>, 
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, "David (ChunMing) Zhou" <David1.Zhou@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	"=?UTF-8?q?Michel=20D=C3=A4nzer?=" <michel.daenzer@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	Charlene Liu <charlene.liu@amd.com>, Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, amd-gfx@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e9z1PXWs;       spf=pass
 (google.com: domain of 3pjk2xqwkahkkabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Pjk2XQwKAHkkabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

arch/x86/Makefile disables SSE and SSE2 for the whole kernel.  The
AMDGPU drivers modified in this patch re-enable SSE but not SSE2.  Turn
on SSE2 to support emitting double precision floating point instructions
rather than calls to non-existent (usually available from gcc_s or
compiler_rt) floating point helper routines for Clang.

This was originally landed in:
commit 10117450735c ("drm/amd/display: add -msse2 to prevent Clang from emitting libcalls to undefined SW FP routines")
but reverted in:
commit 193392ed9f69 ("Revert "drm/amd/display: add -msse2 to prevent Clang from emitting libcalls to undefined SW FP routines"")
due to bugreports from GCC builds. Add guards to only do so for Clang.

Link: https://bugs.freedesktop.org/show_bug.cgi?id=109487
Link: https://github.com/ClangBuiltLinux/linux/issues/327

Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/gpu/drm/amd/display/dc/calcs/Makefile | 4 ++++
 drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 4 ++++
 drivers/gpu/drm/amd/display/dc/dml/Makefile   | 4 ++++
 drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 4 ++++
 4 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
index 95f332ee3e7e..16614d73a5fc 100644
--- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
@@ -32,6 +32,10 @@ endif
 
 calcs_ccflags := -mhard-float -msse $(cc_stack_align)
 
+ifdef CONFIG_CC_IS_CLANG
+calcs_ccflags += -msse2
+endif
+
 CFLAGS_dcn_calcs.o := $(calcs_ccflags)
 CFLAGS_dcn_calc_auto.o := $(calcs_ccflags)
 CFLAGS_dcn_calc_math.o := $(calcs_ccflags) -Wno-tautological-compare
diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
index e9721a906592..f57a3b281408 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
@@ -18,6 +18,10 @@ endif
 
 CFLAGS_dcn20_resource.o := -mhard-float -msse $(cc_stack_align)
 
+ifdef CONFIG_CC_IS_CLANG
+CFLAGS_dcn20_resource.o += -msse2
+endif
+
 AMD_DAL_DCN20 = $(addprefix $(AMDDALPATH)/dc/dcn20/,$(DCN20))
 
 AMD_DISPLAY_FILES += $(AMD_DAL_DCN20)
diff --git a/drivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/dml/Makefile
index 0bb7a20675c4..132ade1a234e 100644
--- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
@@ -32,6 +32,10 @@ endif
 
 dml_ccflags := -mhard-float -msse $(cc_stack_align)
 
+ifdef CONFIG_CC_IS_CLANG
+dml_ccflags += -msse2
+endif
+
 CFLAGS_display_mode_lib.o := $(dml_ccflags)
 
 ifdef CONFIG_DRM_AMD_DC_DCN2_0
diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
index e019cd9447e8..17db603f2d1f 100644
--- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
@@ -9,6 +9,10 @@ endif
 
 dsc_ccflags := -mhard-float -msse $(cc_stack_align)
 
+ifdef CONFIG_CC_IS_CLANG
+dsc_ccflags += -msse2
+endif
+
 CFLAGS_rc_calc.o := $(dsc_ccflags)
 CFLAGS_rc_calc_dpi.o := $(dsc_ccflags)
 CFLAGS_codec_main_amd.o := $(dsc_ccflags)
-- 
2.22.0.657.g960e92d24f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722223112.199769-1-ndesaulniers%40google.com.
