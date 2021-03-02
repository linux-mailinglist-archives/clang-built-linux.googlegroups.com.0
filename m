Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUNW7KAQMGQEQND7CIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF4532AB05
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 21:08:51 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id b20sf2895294pjh.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 12:08:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614715730; cv=pass;
        d=google.com; s=arc-20160816;
        b=caC3TdI3SWJz93+BfTGB8ppXMb0H9HnDoKWtkJXJ8nEtYVB3cQEGgSdVTvm54+BKs1
         /eK/UBRLRStzFzlRP2YRAUKURGdnr4r7xx//6+Uu9O3izFjKyECHCQwGU2T4nFQxSpVG
         jLI57saokSC3WxixnGSDBDcPIENIOytg9eU+7KRQTasuu2amGQJATPjVbAlZCap4ST1p
         arn0IHeEHVybAE4pfb6nUFoU4bwgKPvHwFoc6TpfYk59scmpBOETS9j3NIZr5If9pWtm
         C7KVWq+OZTBDZp8fHnuFT6ZwVoOsUuwJB7KFxdNA5ERcTm8KU9HZzQuJeBlf4abucgb2
         qj3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=pbIK1N27TF7U09FCiGoIfycSFSDFlCAmbJMzT8Nb0Wo=;
        b=fYFfbWj/9cGdA732T8gPCWe8Nk/EHiSOHUtR66guv9zXZampa+aEISd0ac6pQVPJj7
         AHNiIgLHJ+fDKh6NXbmBEDfXAV9F7EGm9DuAdVtZvAXF6Y7gEPlkz+Q7cEHMaPTjG7RG
         kp3YVdf1ChCgFO55F0/wQahAuF4rZCxj/GAGIXjldlWZw61NoAFSoARZwIdPNC9o9M4d
         1sidf6zUI0N3fYqMBxWB2PlDlLb/taJmNdBtq29t8VliCpk6tpMSuIHOkp5jG2MpwhkH
         zRn5ny7IBkwO/QjBa7NF4BUr8Z7MHVvGKyGChggOfYgH/Q34xO8lqdpS5uWzjuljY30X
         YtIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rFORUmuo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pbIK1N27TF7U09FCiGoIfycSFSDFlCAmbJMzT8Nb0Wo=;
        b=ZyrirO6zgPIWFPnkMc7KEulkdQfC/K9R+4EXcBsINBhyugc3JczmqAmpJch/lnSRcV
         bjnSPo4wYttwQAc+jelBqoe3Qs+0XcafQXFzhEDFARazuWxXJKlEhbA4xaJhQsU8KQol
         Z67IAmDQEIprGJoTNr2EVA/GdWQLEcq4ZlCySk+Q6qvExE7hyI7c1O6JYF+jD5BTUTVX
         LFQzAAJ0KnDiwxQWbJfIHa307GvZ3Je7yFAlRFxQJ67OTstwh/fJXPNo+4jrZzaZggrR
         G2dH5aPGbklVsoSJwhjjPqNXJgyhj8rgOr9++AHDXGWAKTWG+J2j+FJLFLRVVXrPMrOE
         RX9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pbIK1N27TF7U09FCiGoIfycSFSDFlCAmbJMzT8Nb0Wo=;
        b=Rj49jNndsofuC9aDA/FDVQDiXADUTA31iiJdNzn8O9W1vPKjzGL3p36/t+bSo5cIW7
         YaqPae9f/h1rdIfu3qomwsOIhXLyR8u+4YLjh9dtalh13wPfqYWGJxQBs6yJtZ9NliaE
         fu1iC9xukmrkti79OBm7lMHtIX1Sd6+gtm5B71n382dQpIK5YIfbJjNeZCdO4JVsYRtM
         RSFJkIW0I76xDqgv9+gGpI3SI4ogweRmka83Xd+b3lZ+Yx3P74IbxsJG53e6ViTeuQT9
         4BKs4irThhQr30wGTZSiUdp9oljGISTrXrbIuLuWZ7tigw81gYVLY03R2L1xoSg8F6S/
         6W+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pXkLHD7sy1RbQPm9y9aM/NB4mCIjQPl/GB9oYiAAcHSQ8/pHy
	Y78ZzNMMyyBOB8HV+Jcoz0Y=
X-Google-Smtp-Source: ABdhPJw4JulJb1y2FH8mkD5zpydHJH1I6ttKS9wl+DmBqW0RFYdOxK1abWvenkVzJNq1iSpAfGVPjQ==
X-Received: by 2002:a62:5a45:0:b029:1e5:4c81:c59 with SMTP id o66-20020a625a450000b02901e54c810c59mr4768360pfb.51.1614715729771;
        Tue, 02 Mar 2021 12:08:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls2244682pjr.3.canary-gmail;
 Tue, 02 Mar 2021 12:08:49 -0800 (PST)
X-Received: by 2002:a17:902:6ac1:b029:e4:6ec0:92a0 with SMTP id i1-20020a1709026ac1b02900e46ec092a0mr4913262plt.16.1614715729089;
        Tue, 02 Mar 2021 12:08:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614715729; cv=none;
        d=google.com; s=arc-20160816;
        b=P2umWFu+bqvq8yyBOloQyRA4/swtJpvpgxn4omtJ/6H5+ffbZjUrIud1sOxFCc4IXd
         /isVxdbp0OPlQDODb0eN3ga1kQq4OCclnQFRvQ1F43N5qj7RqIBrracO1U6P19W78VdQ
         Oo8OrGvy3Ir2tb0Dy6lv+QhA+jrw0iiEK832T0AR0rycuBfbamCWC+8L8IozNbIkv+rL
         vcPeLTp1SPZso0QSOAywUEcarKuk6taGEk2K+3G/A+UDJlZ7d4Hw6vaoaMIgm64ebqHl
         orDn9H/uhwmDGoZByH1fekaWCwZdXEOB9dmJyNhMFHeu/fz347nsApUh68GoONCx6sgd
         7A4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Z+02/+vGPJTQNBPSMAITYnDWYsqW5C9ZMOL/ByqCtwQ=;
        b=boRm1QlBkyOd4LOxUthrHqtDZQLCfXwbGt5R9J9tVHuJxL9E23yWzHK3i6P9dPg+mW
         CZ81cMMb8dku0C2MHz5Me/v6RufAxMWVASQ480CpQuoUtQv4zbQ3/VPu6Dg1FBxJBgiv
         /Qo+hAc4+1zPA+/yBige9R1o6qWTy4whuoXVy4T4hpi3uhBlttRaZA64Cj6ViEN0qOcc
         2KioZfZBI3HL1ZLetDPd3ElUxRB6f/p7AMXxjrXDWUzSyoDPUU4Ck9nfUHdo0Bqx/Lpo
         KJeUXoSGGrkoL4Sd9Hz+HYHsftR7ZpqjCJXbRxX+LVYR+2VvjM5LxFZ0zM9yDW8fI7JF
         jjEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rFORUmuo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si337881pjp.2.2021.03.02.12.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 12:08:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 40A9964F21;
	Tue,  2 Mar 2021 20:08:47 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] powerpc/prom: Mark identical_pvr_fixup as __init
Date: Tue,  2 Mar 2021 13:08:29 -0700
Message-Id: <20210302200829.2680663-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0.rc0.75.gec125d1bc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rFORUmuo;       spf=pass
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

If identical_pvr_fixup() is not inlined, there are two modpost warnings:

WARNING: modpost: vmlinux.o(.text+0x54e8): Section mismatch in reference
from the function identical_pvr_fixup() to the function
.init.text:of_get_flat_dt_prop()
The function identical_pvr_fixup() references
the function __init of_get_flat_dt_prop().
This is often because identical_pvr_fixup lacks a __init
annotation or the annotation of of_get_flat_dt_prop is wrong.

WARNING: modpost: vmlinux.o(.text+0x551c): Section mismatch in reference
from the function identical_pvr_fixup() to the function
.init.text:identify_cpu()
The function identical_pvr_fixup() references
the function __init identify_cpu().
This is often because identical_pvr_fixup lacks a __init
annotation or the annotation of identify_cpu is wrong.

identical_pvr_fixup() calls two functions marked as __init and is only
called by a function marked as __init so it should be marked as __init
as well. At the same time, remove the inline keywork as it is not
necessary to inline this function. The compiler is still free to do so
if it feels it is worthwhile since commit 889b3c1245de ("compiler:
remove CONFIG_OPTIMIZE_INLINING entirely").

Fixes: 14b3d926a22b ("[POWERPC] 4xx: update 440EP(x)/440GR(x) identical PVR issue workaround")
Link: https://github.com/ClangBuiltLinux/linux/issues/1316
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/powerpc/kernel/prom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/prom.c b/arch/powerpc/kernel/prom.c
index 9a4797d1d40d..a8b2d6bfc1ca 100644
--- a/arch/powerpc/kernel/prom.c
+++ b/arch/powerpc/kernel/prom.c
@@ -267,7 +267,7 @@ static struct feature_property {
 };
 
 #if defined(CONFIG_44x) && defined(CONFIG_PPC_FPU)
-static inline void identical_pvr_fixup(unsigned long node)
+static __init void identical_pvr_fixup(unsigned long node)
 {
 	unsigned int pvr;
 	const char *model = of_get_flat_dt_prop(node, "model", NULL);

base-commit: 5c88a17e15795226b56d83f579cbb9b7a4864f79
-- 
2.31.0.rc0.75.gec125d1bc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302200829.2680663-1-nathan%40kernel.org.
