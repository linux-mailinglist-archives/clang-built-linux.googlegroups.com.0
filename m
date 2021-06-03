Return-Path: <clang-built-linux+bncBC53FPW2UIOBB55X4OCQMGQEVEVUXPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B89239A263
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 15:41:12 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id p6-20020a0565123126b02902cafc21ffbbsf2259842lfd.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 06:41:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622727671; cv=pass;
        d=google.com; s=arc-20160816;
        b=SVYvFghTKqOLvDeSpVwxs5iCJd86t0AjsnWJxPO97GEckZGe+RWBaUYKMkX3vbRR44
         DRcLVSEW9c1TvJWxAzAt6KvaZJKTIv0aQMdZF5aCsdyTbR/Xm0IlLF9MpD8bpcyd53Fq
         kE7FGEJNqdAFgM2UOUQOtbXex+Ti/OCHurAeFebrTKW9aikaDjiWGQHTAHuI6mIf7Snh
         ub48wnfi2mck8U7FcbTCYvozmxvfBAjpi9TXciIezBUV25wXuG3N+OZFkSfP7K3L3rb8
         pTO6lSOfW+1efNARPBkmFSZaXDXEBb+qaO8W17w8D1DxK2s0xEDvtN9LrX0yaQbVT6Or
         QDqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ewVJmSWBBsEtKhfLpUsSYJR0IFQwVAUzdWugIE33/Ug=;
        b=FKMLQUCpGajQxM5js1l0UH/oWWnpX9KE0QOtStE35X5MezgrNztc97Dp/u/G0FNXKW
         gx5E5Dig84FHNON+hoBTjKRmnGVjIcx1UHWFx6GMSSKNw5PUHmQI5UaXad4SoVEMg9De
         GBtkmvOK/E2OI0nDVdr6Krw1r55ZfGCOqP+/yktiyOAWqGMTjMM5QfJRaQUQ1Q1VYdgS
         hkCLXLY7P59RMsByFNIhumdMk+KYNhmJXPUBfMnxmopXoOodFWkvqngPWC1X8gfI/hsv
         wPDd6y/E+pNQt5o3hWDzjt5D5uuDlMlRa+2pqI1/LGbacc1h5y4LH2+udPTEpqX5g39P
         XEHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Um/NnAYI";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ewVJmSWBBsEtKhfLpUsSYJR0IFQwVAUzdWugIE33/Ug=;
        b=qrV2ADNuBb99/RA0LpI+aTIip7Vg4EtnC43/4mQJNVI5NNl6Ic6n3DEb/kQkMCuUoJ
         vawHMRusjgD3++GC/s8v0sOXRstx8HtDlqhURwPBBNvxIMVMqZStyviH2/Ik6BJb/L0i
         h3NY5Val+iwgkhCYx05CY+RyOHuRSR/efjoiHvA8yIv/TAbgK5rKzCxr1mM0XY4LTEQU
         3QFXekjIxy81KFG7yiSAB4oRtvM10Y2QwOzp09nvDWGcgjo6qhn/Ryhb2nYfS5I9JPd8
         PW862B+CYbfEZX5TWt6sxyDbSsx1yIvexYrj0G2oJYSiQxGzx94AfO4GWMKXcFwzFTCW
         uDGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ewVJmSWBBsEtKhfLpUsSYJR0IFQwVAUzdWugIE33/Ug=;
        b=H5B8eUIpPJuVGhw8CY9fMcfxcUrUSbzvpaFRJ+h5K0ToMbblVaTdoFDATtF2jywvls
         ZLd+CRsHW7tGt92v/vrqemkCE8A2aAHdCArNqg+nq4F1WA4RL3mFJtq0QE2EXYU390xR
         Ml4lRkMEN3QgnjYh8auZ3iMGK1KQ4mhSUX7GbyehnZEjwrrIiaVfg27AO49iCTNSoqrs
         Nj6l3Gxed5HrPoevuhMKroyjT8HXQM4r+j7X98YrhYGOilYmEaAfoW7XR8nMotj+Y3y5
         uOkVpEHAEZeBtQbS6qD09AMmDF+T9E7GXmc1Ybo97RqoI0MdNzLex4WxTJRNvj+kPoZ1
         n7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ewVJmSWBBsEtKhfLpUsSYJR0IFQwVAUzdWugIE33/Ug=;
        b=dT13vwPy4VWKzp9EyFW2S9sTyUH/1focEtShn8ezTQitaiOgC8rkgg88eKdErFvepu
         7owDu5yietDmkQI7yNkhs/Ea8TR5BP8A7XHqV6wFhb3c2ttYyYk9df/5Wa6gQMTBQf2N
         mgK75jZXouMibZhNntQ5PoWgPEFK3MsiuFj44LamEKeiRDJvrakMsljCjQfAQy2P3/I+
         OgH4zA7bnuX/k0ht4wxiR0vFeqe2vSo84clDsus8x/9F/Pze9WtkFjh9CBnyQ4oJ+rkd
         qjTBaHsRB1MCZvf1dphJf17Pm0riYD2i/wnXSIU9j/AE5NkJsazCBSA2SxXqv8N8+Kdn
         zE1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ovCR3mVsRImOeH8lQV5J48eaqqdashBODPw5pqFJaT155Mga+
	l74gqZ3qNThp3ySa/vTzuXo=
X-Google-Smtp-Source: ABdhPJy+PTZwQLqHw4N2n97GgdS99r7gg1D0GHHVIv8RHvzdRFlzeC+ohTHhMfHpf4h2MG0L46v0fg==
X-Received: by 2002:a05:651c:4cf:: with SMTP id e15mr2179243lji.401.1622727671793;
        Thu, 03 Jun 2021 06:41:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls962296lfv.3.gmail; Thu, 03
 Jun 2021 06:41:10 -0700 (PDT)
X-Received: by 2002:ac2:43c5:: with SMTP id u5mr16238320lfl.156.1622727670521;
        Thu, 03 Jun 2021 06:41:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622727670; cv=none;
        d=google.com; s=arc-20160816;
        b=d+0hyXB18e+vVnjMowq9w3F2VTGnosR5bN9ouoPCqoT0fbPySuBgggp8h9bshsfiqZ
         lvchFDFZn5dZhztdg69QHkLH8eUL4H8RPQ5crjzEyImimWjDatfvqfxOWz9D+cgGlqHb
         2xE4XWuu7jWcPkzCN4y0ACE3TbunFQcrjKXhsdSkpR+7X50uAK3LpCu8a8Q0+jKc7cWd
         DR6R0QMug38X9jgfFysRPY1EYPu2Bu9uCufh6EWhRFMEXIv7Sk/tUtY1nEOSXC7WQpKh
         iZZRSbcjfH9QqF4kYhT7odm5FNDJrUlTQnIKrx+yfzwauSlbhxfZmYOMNUGDyEUqq0N9
         wCmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hNbuwVCZ+C+A91GjVTfRrYyB2m5hEsern9MfCM1f69Y=;
        b=Ica+Ei2OlmXxsQ81G5QmFEk6z3w5DuPnT53XQMNhBJ8wtPqJEt4Yg2uJ1Q9CYdau6p
         tbTYduIe2QNQN0NmUzEu95ieZzsLE8HIaoYfaYclUfK9W6X7PvjSlhsWw8unGKxSbk2D
         hpFidsiaqkMxGAMBQfwO/JPjGV4QYj+ISEwB9gdjw8p+p77ObrzHo3F+rTdBUIL7OjOx
         8j1yc73AoN+4pcp0q8jEth74OKxGVGf+qTxNynKT5LdcS04pnc50Pvf8hK8VM3VKlOxb
         3bJr4w5Bpl899vJWNvX1VZ9FOfJulORb95nitjnI7wxlevF7rApwYTWyKSwnbR3hRw2i
         Aucw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Um/NnAYI";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id a21si136679lfl.10.2021.06.03.06.41.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 06:41:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id r5so8900571lfr.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 06:41:10 -0700 (PDT)
X-Received: by 2002:a19:8181:: with SMTP id c123mr15119652lfd.533.1622727670314;
        Thu, 03 Jun 2021 06:41:10 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yb9bh06yk5jm2qt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:3d09:bda0:2327:559b])
        by smtp.gmail.com with ESMTPSA id a1sm322079lff.215.2021.06.03.06.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 06:41:09 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	morbo@google.com
Subject: [PATCH v2 1/1] pgo: Fix allocate_node() v2
Date: Thu,  3 Jun 2021 16:38:52 +0300
Message-Id: <20210603133853.5383-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Um/NnAYI";       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

Based on Kees and others feedback here is v2 patch
that clarifies why the current checks in allocate_node()
are flawed. I did fair amount of KGDB time on it.

When clang instrumentation eventually calls allocate_node()
the struct llvm_prf_data *p argument tells us from what section
we should reserve the vnode: It either points into vmlinux's
core __llvm_prf_data section or some loaded module's
__llvm_prf_data section.

But since we don't have access to corresponding
__llvm_prf_vnds section(s) for any module, the function
should return just NULL and ignore any profiling attempts
from modules for now.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/instrument.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index 0e07ee1b17d9..afe9982b07a3 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -23,6 +23,7 @@
 #include <linux/export.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
+#include <asm-generic/sections.h>
 #include "pgo.h"
 
 /*
@@ -55,17 +56,19 @@ void prf_unlock(unsigned long flags)
 static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 						 u32 index, u64 value)
 {
-	if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
-		return NULL; /* Out of nodes */
-
-	current_node++;
-
-	/* Make sure the node is entirely within the section */
-	if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
-	    &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
+	const int max_vnds = prf_vnds_count();
+	/* Check that p is within vmlinux __llvm_prf_data section.
+	 * If not, don't allocate since we can't handle modules yet.
+	 */
+	if (!memory_contains(__llvm_prf_data_start,
+		__llvm_prf_data_end, p, sizeof(*p)))
 		return NULL;
 
-	return &__llvm_prf_vnds_start[current_node];
+	if (WARN_ON_ONCE(current_node >= max_vnds))
+		return NULL; /* Out of nodes */
+
+	/* reserve vnode for vmlinux */
+	return &__llvm_prf_vnds_start[current_node++];
 }
 
 /*

base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210603133853.5383-1-jarmo.tiitto%40gmail.com.
