Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPMVVCCAMGQE6MCN7ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9483F36E2EE
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 03:24:14 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id r17-20020a5d96d10000b02903b99985aec6sf34880783iol.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 18:24:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619659453; cv=pass;
        d=google.com; s=arc-20160816;
        b=S3uA8M6P/Mp/bTP2dNEMKoEwh3R+77he+fS1bSo5Aw9e6JXlA4QPyblIMjBGnm3tLR
         8oCM+o9ty7CAvmiOM15U6LDBb1tbw9yGQ66rXYox8+8dlNqQOHV6+DU1DSltdJGLM7fd
         PW48LT2/G2UoxRThheu4fUMdneCIql7BBjB/Zj7Lyfq1TPp3QOqlj5fU48vXikrfh6NA
         Y+ErgvXTZFPx07LPs65xD4AX4pEVlj/tVbOnUYH5hEa2UybCQtHZcCQHpVMvOBEwTmet
         3e6gZ4nB95V3m1Fe5TbURiHJAEmnx/Da0TEJqKjd6xtl95/fLBPf8nJ4TNY5tWfa+3+j
         UWJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XNdGG7fS66Bal1uD57bskCgc0M4hWg9l4/s8iCzs638=;
        b=DLV5T10oH6zs42i5QuRB+kI9IczQQCTQyXexcyDFqniwa8RfT5yIsGjLth4xCerJsD
         SFo+jM/4XBS4CwPlIP5Bucttk7BOwz8I5zVZpp8B/FayaS1C/9+e7azV3sDZFGSvM3Sg
         Jgoa0VG13LWadgN1e3trVPjCSLfCnR+he9NQJZ+laxkRpaBDXSrMSxUA/lN6ns6P6/1k
         hAHobapslUuyHoOOENAr8+o78pUtEL0YMWxtLEoGk9ddwv2Aq7ABdX2SqHtmDgpgIjF9
         1Jw4h/er/UlJDbpR2sEqzJfGvtXFQfkxTYVbWvSjHtt38JyE6ipwTpi6TIKJhKTMrRtk
         BZGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zc6KpNZ3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XNdGG7fS66Bal1uD57bskCgc0M4hWg9l4/s8iCzs638=;
        b=Lq+Eh0+SB+3JbSgxR3qO/Kg1jLx5QoqlsC780tJE4HBiND8srKz2yB59G/xv2C/RXB
         0joGFWMtFbGrQ9+AZHKPmuceu0Kg5pyWEqkxGfJfx1SWz38hI19wTWgT7gAXMgiQGFY4
         +MdM2dKjaOutMymuh8lZSDB3eI4S/jwj/uta20jm4vJdS61tGD3XYHJKzrzbZYilEzKR
         N2f1gBbAgGdFR2JHoShk9epe3CDWhH6OUBwt8Z0bA3KarplpERec0ScTy3LTCrscaMbA
         YC3z/m0oRNl47PvGqztkVR932eFn63lvE4/YZk7niuRWNkLL5sWNZgElWY/5oyAXOCQw
         ELnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XNdGG7fS66Bal1uD57bskCgc0M4hWg9l4/s8iCzs638=;
        b=LsRn/8Xh9BePoq3REaOkpT/JZH9a4yfCu+cBch8qxLXp2F6sdGfQ6RqYEITeUqRJVe
         Ir0QQ7HN0baTeNMg9IsM7/nk60rPtFOa15DBPYvTqlpMM02f/zTNuOLvMqqiJJ4R/xKl
         tdiphb/khHVkXJw50F/INXaB687cFULG1Np1bMMwoJ+NUdzTStbVWMqPszQrWhqRKBHt
         L820FO7awYNOF/onXjRbRBElQeQ30bSS83wECjurf5N5XWmt+0h/t9K6FaNIScmwq5VI
         CZCo7ujs3Kzy8zZWhDRAzPHJqd6XtkMaLcuy5jGXET9PSBnhzp1L/GXYUM7rbgkb44A4
         MrRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530L51a9ObZ7HdiPwhrboTSs9+oJR3E9kKs4KckCX43HB7F9E4qd
	MSxnzZh3e13sTNq1bJkh6UY=
X-Google-Smtp-Source: ABdhPJwGo252oJJ1kS4C4oVtu1DXjYS2xbd+dzx9tEuYDQo5rKZqgaCtOA//O5qmlXIVhdLVp0rmUg==
X-Received: by 2002:a05:6e02:501:: with SMTP id d1mr26279106ils.76.1619659453548;
        Wed, 28 Apr 2021 18:24:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1238:: with SMTP id z24ls243857iot.9.gmail; Wed, 28
 Apr 2021 18:24:13 -0700 (PDT)
X-Received: by 2002:a6b:6013:: with SMTP id r19mr26552771iog.208.1619659453075;
        Wed, 28 Apr 2021 18:24:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619659453; cv=none;
        d=google.com; s=arc-20160816;
        b=D62m5RXZqo1RJGCy92CxL8yODJK6fASJBYF+aaPezNmElnIK4id6V4g7zvMhLfSZIh
         ml5yzW3ha7e4RNjDMow3RbEzSFDVL2OcReJdXXO2oMH1kp+/DbLk96L8tWsFgMoRjHtN
         2PzmR4vDT9j1d7zfSdeC2RlpjJEANaCzJIvpprbFYRqQhpneJuLCm5zsnkynwi2Nna0+
         qHrsHNB2J6iB+0+YT/BO1CVXNilOBR8kLD4p5NHsn/6UUIxr1J34SVxxkbBEX/EXSbRc
         WQ7gRiHnVKXiYNefdW/FcL7DwHerCCZ9e9cluoMbSBxUJMgn254SG7ZnvNhaU7S4XT/C
         zczg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pQkV1nQW68hfjxlJBvUzNIX96+sYJXOavkoM2T/5Irk=;
        b=axCDtyaB7HwLHXWk0rGIi1KA1mkFsGW/0JEFEpgpI/SrNapC9TZXt4etYJmFhYbNGC
         QVzsGj7596PZqeWYRfgHtu6+z0qT+RBn60ZhpDi5Zre1t9OcSNUv1a87ktPO+mhgsTND
         19Hokt4yRJq2iM10jWtJh+DxhN2dfVu0fvFmQs7q1WC5ROJvkJ2fUKncRlNZGqNwgjmd
         V8z/gcp19s/C5Rcm5Ei3EiI3nUdEEhEb9PJgqcb20bgGfL3DcOe5zgc+9MfhWQbg7Wf7
         QEHFvmQfxagHWaiTCBWu0HMBThx5tjUsejyC6R0JfbYjH5V5ZRU6T0PFQMUWm+iaweRf
         TbMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zc6KpNZ3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z2si191342ilo.2.2021.04.28.18.24.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 18:24:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B49A5610FA;
	Thu, 29 Apr 2021 01:24:10 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH] Makefile: Move -Wno-unused-but-set-variable out of GCC only block
Date: Wed, 28 Apr 2021 18:23:50 -0700
Message-Id: <20210429012350.600951-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.362.g311531c9de
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Zc6KpNZ3;       spf=pass
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

Currently, -Wunused-but-set-variable is only supported by GCC so it is
disabled unconditionally in a GCC only block (it is enabled with W=1).
clang currently has its implementation for this warning in review so
preemptively move this statement out of the GCC only block and wrap it
with cc-disable-warning so that both compilers function the same.

Cc: stable@vger.kernel.org
Link: https://reviews.llvm.org/D100581
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index f03888cdba4e..911d839cfea8 100644
--- a/Makefile
+++ b/Makefile
@@ -775,16 +775,16 @@ KBUILD_CFLAGS += -Wno-gnu
 KBUILD_CFLAGS += -mno-global-merge
 else
 
-# These warnings generated too much noise in a regular build.
-# Use make W=1 to enable them (see scripts/Makefile.extrawarn)
-KBUILD_CFLAGS += -Wno-unused-but-set-variable
-
 # Warn about unmarked fall-throughs in switch statement.
 # Disabled for clang while comment to attribute conversion happens and
 # https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
 KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
 endif
 
+# These warnings generated too much noise in a regular build.
+# Use make W=1 to enable them (see scripts/Makefile.extrawarn)
+KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
+
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
 ifdef CONFIG_FRAME_POINTER
 KBUILD_CFLAGS	+= -fno-omit-frame-pointer -fno-optimize-sibling-calls

base-commit: d8201efe75e13146ebde433745c7920e15593baf
-- 
2.31.1.362.g311531c9de

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210429012350.600951-1-nathan%40kernel.org.
