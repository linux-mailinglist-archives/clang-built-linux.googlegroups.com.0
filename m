Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDODT3WQKGQEKOU2GJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B576DA1D9
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 01:02:39 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id y2sf142552plk.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 16:02:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571266957; cv=pass;
        d=google.com; s=arc-20160816;
        b=z9B0KN9BCH/xYa3NhN0i4ax60SfcuuSVLgZeEHdSF8eMFvGMF4dIy2VGWI5Cn5D0Px
         puIGt5We4s0zbyuw4j1zNLHYGYyT7IdGc1xOEX/76zykQCPnIHCBNm34OXhmcpKgJuy9
         TBMqvhDqvPQq9kHO6o/h0h7/UZll/tMMpGISYRQPPIzbCvhxbUf01QqhSfPunDFHCrH2
         q/6UCHW9UmamrYEtqSUopzNA2M71rupQuJ1C5R+7kMDO6xb4bKevoavlblGKHaNvtpMi
         OdDbx8USg7OSOuMj5+fe9hSATl02dy/S39HFMBXHnAjA1VRekRP3eDwO4WhuQ/MjErUg
         YzGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=o9ByEretqe9RsR4O2tSccJAif/X7/qfhVZKl36v2wec=;
        b=zM9O+pDi4Fg23qSg66B3jUfI4uR+GX7aVehb4IF0iyOvUqTT4kNgu2IkVEG5at/9zJ
         PavT7PYee7uAS855wdiMWZzDJ7JSekeqnDQnlv4V6ykEsKoG4/9Ft0uf9HE+0CktQkWT
         xS9VfgXrt6o9V1/nQtqX6IOkN6u//A74M+akdwQsKzM8g7VzvHmWt5up7gywWL8UCrF7
         NEaBAlRWQY4oaNT+sQQVR5blcsTEhu5uwoaAP8NIgAJjvusGyzPc2vqnmMGbxjM+Ahf/
         dExhB7+jIczZIOw+N7COX+Kb+EMVCG/5V0chZxdyeN+dsTiQyfVy60iJXLDrGk2i8epa
         Ic0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KWxGWHf/";
       spf=pass (google.com: domain of 3jkgnxqwkagemcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3jKGnXQwKAGEMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9ByEretqe9RsR4O2tSccJAif/X7/qfhVZKl36v2wec=;
        b=QiMtZkpQqm8VHU/D8emRlrjCm+zs4YDfv16H6CG6XhfEjk269MYtGbm4tNe+JDxfdf
         N9IVS65fM2bKDSXlx8rbWLVe6THzjyTwf87QSUxCKVM8qMY3iiy/jtQz2ishq8U11u4k
         nBRU2L92IGx9juv7nUrWfEVFbx7BSgyQhlZP259U8H2Xy+eEY6726aMHF30JN/V4mQ5h
         O0cllCGcQa5tU4BaC15/gNzXruPT4MBH/QKhPzi1brEICrKw/TgERL7SrSsaVBeR5IhV
         MCPTI+jh8Vfo94XssT8z9daIwz7Jshbg3uTNTAuPKFVM5GZRYseKK9GemtfOUlrpoavC
         lh/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9ByEretqe9RsR4O2tSccJAif/X7/qfhVZKl36v2wec=;
        b=auii3QqFLqzE6k24oS3PgsD6Mf055Ie/QDodhqd4LDfg33qOeBVMDBkwPtEG/p2BIx
         fpY/bFulrsfReNzkXiV3DzyT2Ft/Ttwh1nwFSspiYELnD8lMu+Jf160i57c607rbesta
         MCIBEex8y65HycxUYDTnMwVUelVgNO//kJpM5AHqF36ftdvojXeVf9nKdj109Mw5+ilL
         VzEyFWpXCEf5KzRCr5ezRld5sTxeXiTbooTlwIGU6vmOONNQHsKfSeTynKnWHza9viea
         7n+qpDwj/dZp559CWIahQ0sW1oPegxTo5b6sPuZQPfiuLFxiJiqCauKA+QXMdH4SaLzp
         Ixng==
X-Gm-Message-State: APjAAAUOCgI43EUSuts8k3Y1eODPAl6Lb9y4dBHjQiFMob61F5V0Lu0K
	iEPFgJw61PlLCHoXY+AtC5M=
X-Google-Smtp-Source: APXvYqzoKlMCCmA9gvusT0G4v/A/ryld0RE3HWI01B/lhEnhN0frOLE/l2ysD87xaqTCOpatkAfWxw==
X-Received: by 2002:a17:902:aa91:: with SMTP id d17mr678302plr.69.1571266957405;
        Wed, 16 Oct 2019 16:02:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8bca:: with SMTP id r10ls48214plo.13.gmail; Wed, 16
 Oct 2019 16:02:37 -0700 (PDT)
X-Received: by 2002:a17:902:8bc7:: with SMTP id r7mr691898plo.333.1571266957041;
        Wed, 16 Oct 2019 16:02:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571266957; cv=none;
        d=google.com; s=arc-20160816;
        b=pZtfEmLhLCo07k7VaSP+Nc3k6szILZQmXfFbwF8i5hibrGO7NDRb4DXdeZ6qQUqRk/
         Y0kPoUOrK13nyXxQhdb+wqlP9zw7uppPP7kwWjJbb7W8xLfA//RoD8OlfxrLMbk22hfI
         1PWI6c5uwjlH5BWcYeMTALN0UPirUZFwfVb/KUIazLzH/jzL8w4r0sMHyJ0fWchHOM2w
         yS5Hx2HT2XSbnZ87xX5qQ7EFXUpUf9+neycxwMLPA8Nj0+yITrokJawUUWgc+L3E+0YA
         i9biH7TEbPu5ujo97zoxVBWyiT6PKlKk7ZvsSYrr3rW+lpYT0c11ekCMlDS4c9xDV2C+
         ByFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+9wE/YnttgoSYQLeI+fM6xNhxWRLjwkrvMn1N+1ady8=;
        b=brColMtrJRW7bzjSvqwkhK4z8uEHTbJug/uvSh8RYGpkhh94GAWFu1swTJWQgnsARN
         SqJwjqmrbemX2Mjf3oCPptZ4JT5t/A+qknlUL6hoDqYMjjVP/iYJCrKqJfoWAi/Wjicc
         dvb8Ywxgl+h5rNKUN5qLO1Zx9fqLejMKN3RFREe7VJE+IbL6ijOtW9RcWGFtSqYOnHg9
         sNVgSbgZHtuEWn5P1TZckqwSROCKbsRjFvEKy7EXmxV4K7XdxwVKmhJ2SmY0dHEW1RKb
         fIud/adRQyoSCeo2Wv2JgWHtfIJ97PSsMATVBzS2kVDE8eIy4y8OBSGLWG8d4EbUc8vJ
         BxhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KWxGWHf/";
       spf=pass (google.com: domain of 3jkgnxqwkagemcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3jKGnXQwKAGEMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id o23si27988pjt.2.2019.10.16.16.02.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 16:02:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jkgnxqwkagemcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id f10so161323plr.7
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 16:02:37 -0700 (PDT)
X-Received: by 2002:a63:e057:: with SMTP id n23mr640963pgj.94.1571266956495;
 Wed, 16 Oct 2019 16:02:36 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:02:07 -0700
In-Reply-To: <20191016230209.39663-1-ndesaulniers@google.com>
Message-Id: <20191016230209.39663-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191016230209.39663-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH 1/3] drm/amdgpu: fix stack alignment ABI mismatch for Clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: harry.wentland@amd.com, alexander.deucher@amd.com
Cc: yshuiv7@gmail.com, andrew.cooper3@citrix.com, arnd@arndb.de, 
	clang-built-linux@googlegroups.com, mka@google.com, shirish.s@amd.com, 
	David1.Zhou@amd.com, christian.koenig@amd.com, amd-gfx@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="KWxGWHf/";       spf=pass
 (google.com: domain of 3jkgnxqwkagemcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3jKGnXQwKAGEMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
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

The x86 kernel is compiled with an 8B stack alignment via
`-mpreferred-stack-boundary=3` for GCC since 3.6-rc1 via
commit d9b0cde91c60 ("x86-64, gcc: Use -mpreferred-stack-boundary=3 if supported")
or `-mstack-alignment=8` for Clang. Parts of the AMDGPU driver are
compiled with 16B stack alignment.

Generally, the stack alignment is part of the ABI. Linking together two
different translation units with differing stack alignment is dangerous,
particularly when the translation unit with the smaller stack alignment
makes calls into the translation unit with the larger stack alignment.
While 8B aligned stacks are sometimes also 16B aligned, they are not
always.

Multiple users have reported General Protection Faults (GPF) when using
the AMDGPU driver compiled with Clang. Clang is placing objects in stack
slots assuming the stack is 16B aligned, and selecting instructions that
require 16B aligned memory operands.

At runtime, syscall handlers with 8B aligned stack call into code that
assumes 16B stack alignment.  When the stack is a multiple of 8B but not
16B, these instructions result in a GPF.

Remove the code that added compatibility between the differing compiler
flags, as it will result in runtime GPFs when built with Clang. Cleanups
for GCC will be sent in later patches in the series.

Link: https://github.com/ClangBuiltLinux/linux/issues/735
Debugged-by: Yuxuan Shui <yshuiv7@gmail.com>
Reported-by: Shirish S <shirish.s@amd.com>
Reported-by: Yuxuan Shui <yshuiv7@gmail.com>
Suggested-by: Andrew Cooper <andrew.cooper3@citrix.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/gpu/drm/amd/display/dc/calcs/Makefile | 10 ++++------
 drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 10 ++++------
 drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 10 ++++------
 drivers/gpu/drm/amd/display/dc/dml/Makefile   | 10 ++++------
 drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 10 ++++------
 5 files changed, 20 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
index 985633c08a26..4b1a8a08a5de 100644
--- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
@@ -24,13 +24,11 @@
 # It calculates Bandwidth and Watermarks values for HW programming
 #
 
-ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
-	cc_stack_align := -mpreferred-stack-boundary=4
-else ifneq ($(call cc-option, -mstack-alignment=16),)
-	cc_stack_align := -mstack-alignment=16
-endif
+calcs_ccflags := -mhard-float -msse
 
-calcs_ccflags := -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+calcs_ccflags += -mpreferred-stack-boundary=4
+endif
 
 ifdef CONFIG_CC_IS_CLANG
 calcs_ccflags += -msse2
diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
index ddb8d5649e79..5fe3eb80075d 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
@@ -10,13 +10,11 @@ ifdef CONFIG_DRM_AMD_DC_DSC_SUPPORT
 DCN20 += dcn20_dsc.o
 endif
 
-ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
-	cc_stack_align := -mpreferred-stack-boundary=4
-else ifneq ($(call cc-option, -mstack-alignment=16),)
-	cc_stack_align := -mstack-alignment=16
-endif
+CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -mhard-float -msse
 
-CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o += -mpreferred-stack-boundary=4
+endif
 
 ifdef CONFIG_CC_IS_CLANG
 CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o += -msse2
diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
index ef673bffc241..7057e20748b9 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
@@ -3,13 +3,11 @@
 
 DCN21 = dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o
 
-ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
-	cc_stack_align := -mpreferred-stack-boundary=4
-else ifneq ($(call cc-option, -mstack-alignment=16),)
-	cc_stack_align := -mstack-alignment=16
-endif
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse
 
-CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -mpreferred-stack-boundary=4
+endif
 
 ifdef CONFIG_CC_IS_CLANG
 CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -msse2
diff --git a/drivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/dml/Makefile
index 5b2a65b42403..1bd6e307b7f8 100644
--- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
@@ -24,13 +24,11 @@
 # It provides the general basic services required by other DAL
 # subcomponents.
 
-ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
-	cc_stack_align := -mpreferred-stack-boundary=4
-else ifneq ($(call cc-option, -mstack-alignment=16),)
-	cc_stack_align := -mstack-alignment=16
-endif
+dml_ccflags := -mhard-float -msse
 
-dml_ccflags := -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+dml_ccflags += -mpreferred-stack-boundary=4
+endif
 
 ifdef CONFIG_CC_IS_CLANG
 dml_ccflags += -msse2
diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
index b456cd23c6fa..932c3055230e 100644
--- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
@@ -1,13 +1,11 @@
 #
 # Makefile for the 'dsc' sub-component of DAL.
 
-ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
-	cc_stack_align := -mpreferred-stack-boundary=4
-else ifneq ($(call cc-option, -mstack-alignment=16),)
-	cc_stack_align := -mstack-alignment=16
-endif
+dsc_ccflags := -mhard-float -msse
 
-dsc_ccflags := -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+dsc_ccflags += -mpreferred-stack-boundary=4
+endif
 
 ifdef CONFIG_CC_IS_CLANG
 dsc_ccflags += -msse2
-- 
2.23.0.700.g56cf767bdb-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191016230209.39663-2-ndesaulniers%40google.com.
