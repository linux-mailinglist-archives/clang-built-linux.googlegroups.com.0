Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBANZ5CBQMGQEI7A3OYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A76E362BE3
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 01:23:46 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id o62-20020a9d22440000b029027e30deed3fsf5462352ota.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 16:23:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618615425; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uqa2Ua2jL2I072RAEsDKKrJTiFU0vCpC85ShImUjtuZX4baO/gUa0Ruc1Oo7T+iyCg
         mjGV3FTv+lYT69DAEq+6Ud73PPNY4pyZ3WZqdNCAPIFawKVyZ0PYh0soQIDqJdoHds2w
         RwIs2piC75WLD+8ayoyT376xNb7yxhOJa8Pj7o9bhuvX9tj/QaQgBatPo/1PnNzLQP6y
         /M8T/WxgMlE4pmxhNi7Y3wKkAou+NHtrNvI/Gs2KVbr/6HdLplvCE1y2Uw2BW7CzwVYj
         8SLPJTHGlOIPc13T0a2KCTONSjcN0TTGAQmU9qIb1Xg5r3sTxUXDP+MplSfPtU39CxOx
         mK/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=E/llLHM4gPl+KBrEBGliLTH5NZpMJCTeq1/2ic52DOo=;
        b=Qt6XqnFGDKVhr1gDBWTJ30FCxkoGcH2X1UPL67aeRWJKg1BzLlxAfWpi/2Ckcu2aFg
         VAQyTpPGMv7f8fa1q4rdzR6BsL8aVC/xgm63noRqeGzB/1OLdUFc4d824MkZ7FXKyddI
         LKkeJgm+x2l56Zat5dC1yP+KU7ylio7OxbFRVHrDqyxePzAjgY5Aep//4boFrqBd7IAn
         cvtvp1jpH3eV+THT8ItiZ81h8v8We/gH/h6LmABPtuN/jxazS6dly7tXXLVUT5MUqgn7
         PGYe9SlSX6FmKJyZdN0VypmUc/uxNjTSgj2hsWHRvwNwmY8oU71n72BXJjcBQG+FFLRl
         z/rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="o/UXDDFc";
       spf=pass (google.com: domain of 3gbx6yackeasutlynltrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3gBx6YAcKEasUTLYNLTRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E/llLHM4gPl+KBrEBGliLTH5NZpMJCTeq1/2ic52DOo=;
        b=M6xNKFTObUe1eQFUmEZ4WK5FtOYb3iFnjNH+z2ks8QzoJnanoPFWwHNTAUm8MR7dyQ
         FBj9pDuqr+wUe14X4JFa4BKi/dFGOBbI9eblDmaA5HP4J00NanAeGeZqS7SURvIzMV5S
         7vX6K8eodl1RJSSlbGjLyD2E64BnOTraq2ljxZSGBPZXULC6iAyLdxkP9FAAwI+yryFu
         LxalFI9bTqRMyJQ7yCbNXGu2bjbLrMve088Nb3NPxaxq/c/PdrDz7BoZNNLh4FL6OHoW
         3oG3my9R/cPVn+4znmQ3+2ORj19z3h/RTW7OyBDI0WWTEFwlN+VpEbpjOcBAeEVolbff
         q6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E/llLHM4gPl+KBrEBGliLTH5NZpMJCTeq1/2ic52DOo=;
        b=XqEfFUKnL/mB69g2J4C/dx+DxDEQm3WvTrSjicSufBS4UoBB74d2TRutXHPrRgUve2
         pM2QzDh9jUCqtNjlpvUf1T7je99m3nTkxoFLUwzxZGyB9shD5X7aGVk77n48L2BMA4xr
         /FcQ6RepZY3r0TGusss/AWn2N2OU9rBfWLqG68DHB9OVjimDiIPdmjq6p/cjbfKRBhgN
         w7Z+THY6Pkc6B2YJKGGrdZ1zp915qB361nM4H4IyTEO9626aHtAHDhtSmn70R7SaNFKw
         Le+jXNHxTVFpWFhUzH0ky0Jf/d2yDSKtJlYtpfJmMWVisXw5corCmUB48CvvBJ/88+nB
         8EAQ==
X-Gm-Message-State: AOAM531AEdOe1+Ko1/YKBeVDeXDFYK2eXVFpvgICC11FXt5wxpGKH5r+
	AzYPsFLwS+8URkxP/VFJhaM=
X-Google-Smtp-Source: ABdhPJwl0Np6hl0JwWUAFrXONI7n/7k+g84v0q/lce0jv3X0AVnBj+jhdXkPPw3e39bq/6u62ynKgQ==
X-Received: by 2002:a9d:5c87:: with SMTP id a7mr2220291oti.254.1618615425469;
        Fri, 16 Apr 2021 16:23:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:724f:: with SMTP id a15ls187510otk.4.gmail; Fri, 16 Apr
 2021 16:23:45 -0700 (PDT)
X-Received: by 2002:a9d:1c9d:: with SMTP id l29mr5499712ota.372.1618615425066;
        Fri, 16 Apr 2021 16:23:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618615425; cv=none;
        d=google.com; s=arc-20160816;
        b=XTp+NurWDJd5XF77PHnM9X0IW8ZZjnvOS3Pk4PfSZ2x76KfqIu5iVNqey4RSF+GuA+
         Mdf1/mYHq0McMPnbqbdnc7HlsYOvRM8jtOLHMB3v92UoEGLRKErmLmd1uR1CU7OmyPXN
         o/yAebrfuLzTnLRm5CmDjMpMO6Qzq7iRlQotwdQCEi9kU0N0ggCKJJjId6N3Ge3AdyjN
         Ch7GRAA7wyO3xfpfmennz2NJly3XMvNzc6yyVLQqKD1lu4Rz7Yiv0uVnT6xluYO6wK33
         jbnVes41p6j2fGyNUYEle53tm67ixdBM4fhaX109PUt/D1327rSfqfvWwp5yH94qpvgn
         JjYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=DVncHoPx5+EyUufkGwgaIquQ4C3Uhbgcu8/fDiLmXpU=;
        b=qmH9QKZiV6Fd9WaumCOoIAa/VB7WULUR9d1L/rdbzCkbG48jJnBxSy2MuIdJLEbn1Q
         ZBXr4QV9SbduZEE3jKnFoPrQi64XFs2Kree3B8T51XcygsowI7bb1eOH3oNwNzf/jWaA
         oEm4cTEooVgojGrgHMa772qS5bQ9jpUvByYn1KONBd/7hk0QMAjjcsp8l6psdIp59uKG
         pnOTZ0a4BtaM8hcknF+Sk5Fz3Er4wpHuuUYKDOzRDR/8OwaLH3hvGrHU39OSbt/wkzg6
         fJG/RM56OYCbP/qUZRQ3Ce8l7sk9rOtkeP6WGoEepIteMNVuPks47D4QlhXfAmxED88D
         6KJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="o/UXDDFc";
       spf=pass (google.com: domain of 3gbx6yackeasutlynltrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3gBx6YAcKEasUTLYNLTRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id x38si602894otr.3.2021.04.16.16.23.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 16:23:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gbx6yackeasutlynltrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id i2-20020ad44cc20000b029019a3866abf5so5187931qvz.8
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 16:23:45 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:a547:67f6:5e32:5814])
 (user=jiancai job=sendgmr) by 2002:ad4:4e02:: with SMTP id
 dl2mr11045753qvb.27.1618615424541; Fri, 16 Apr 2021 16:23:44 -0700 (PDT)
Date: Fri, 16 Apr 2021 16:23:41 -0700
In-Reply-To: <20210416203522.2397801-1-jiancai@google.com>
Message-Id: <20210416232341.2421342-1-jiancai@google.com>
Mime-Version: 1.0
References: <20210416203522.2397801-1-jiancai@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH v3] arm64: vdso: remove commas between macro name and arguments
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: stable@vger.kernel.org, gregkh@linuxfoundation.org, sashal@kernel.org, 
	ndesaulniers@google.com, natechancellor@gmail.com, manojgupta@google.com, 
	llozano@google.com, clang-built-linux@googlegroups.com, 
	Jian Cai <jiancai@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="o/UXDDFc";       spf=pass
 (google.com: domain of 3gbx6yackeasutlynltrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3gBx6YAcKEasUTLYNLTRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

LLVM's integrated assembler does not support using commas separating
the name and arguments in .macro. However, only spaces are used in the
manual page. This replaces commas between macro names and the subsequent
arguments with space in calls to clock_gettime_return to make it
compatible with IAS.

Link:
https://sourceware.org/binutils/docs/as/Macro.html#Macro
https://github.com/ClangBuiltLinux/linux/issues/1349

Signed-off-by: Jian Cai <jiancai@google.com>
---

Changes v1 -> v2:
  Keep the comma in the macro definition to be consistent with other
  definitions.

Changes v2 -> v3:
  Edit tags.

 arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
index 856fee6d3512..b6faf8b5d1fe 100644
--- a/arch/arm64/kernel/vdso/gettimeofday.S
+++ b/arch/arm64/kernel/vdso/gettimeofday.S
@@ -227,7 +227,7 @@ realtime:
 	seqcnt_check fail=realtime
 	get_ts_realtime res_sec=x10, res_nsec=x11, \
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 monotonic:
@@ -250,7 +250,7 @@ monotonic:
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
 
 	add_ts sec=x10, nsec=x11, ts_sec=x3, ts_nsec=x4, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 monotonic_raw:
@@ -271,7 +271,7 @@ monotonic_raw:
 		clock_nsec=x15, nsec_to_sec=x9
 
 	add_ts sec=x10, nsec=x11, ts_sec=x13, ts_nsec=x14, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 realtime_coarse:
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416232341.2421342-1-jiancai%40google.com.
