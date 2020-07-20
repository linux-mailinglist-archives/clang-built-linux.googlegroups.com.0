Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZE53D4AKGQE7QTR4XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC1E22707A
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 23:38:46 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 75sf14673080pga.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:38:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595281125; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHTbM9iUCrqmgnCIOaq/99KVI0aSiYanZxeJwegXjeSrI1ZwElnjDczb4sCM4NnKbO
         xQdKFvxG4sDDx+T1I+axicPPp+5wj1E1tayeMdbYVnJyK7RqMm0tp+cmccvc1aml8d3x
         3IH3sT33rrfBjrJMo9h6SId0/JFDFkX3yx0JQ8PqtC2cG47JWdzFp0ZON5Snka3aPepg
         Qjm4rxX0B2I/gDQd4zvSaILmMj4qJnXuxwx8+9v5uMmJx8OJ7Ii+On/dZAMoCRpaoyxV
         k+OyIGWsVm7odure5+U9Ph/YKM6nlJr1hvE4vWUMAbc7iU2cKVcDpN4yxFUX0a7wZWFm
         wnUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sk8xDzCTsgr6WaTiRjuZRnE1+gQGYfKOJ5t9eQWvWY8=;
        b=uXGmbmr1m9WHBP75d+efa5s/DMsBRo/j4WPR0CRbHIfeVuhSNZQkulzU5cJZJBG6kw
         YDIa0BKt59e/k6J5vjc+xf8yqT4mWiYQJ29KfwAEcRJGPMRMfVdP4/qLuG1tGUzWpjmf
         HFV/9xy3pJBBonTLCuAEFGlb8y0beLng5vszRMjhRqew9D5E6xaPNVIkl4m4yNJGXKv2
         kzEsehn6ir0Gwtu7m+uy1o9BrOaOW5y93JpH0JnfbIlVDukbGE81eSqbOx2B9UTd/u2r
         IllUPAM2X+akfPgQw4z0Kuq4wHc+MVJaUcUihuOtB73pEbiHuKXiWQgeWFWQtsEikv1a
         JwSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2sn3SJYX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sk8xDzCTsgr6WaTiRjuZRnE1+gQGYfKOJ5t9eQWvWY8=;
        b=DtHxx7EOtQ+/DP8bHWAyhs13zdBWO6HGhkaRhX5mcFR2QcXry7YzVFQGSXoozfENYO
         gmoxgyYgVFv3yEsuT57Wnxol6RBhoBZM+d49FNVGO2KiC9cfaXWSo1TgNOJla1OXt47i
         N1k3lg1HgF/66tBgiFm3aw9LnmLomoReOHFqNgPIt+qwfkFM0fCusqn40FYhj9LTZhEe
         s2vqP8CwXaQ5QBx92jQPhkimclhEWwrRAUKcSu4iufEhJh1AUOpLJM8zj99R5Eq6CSwH
         ur+HnbJpE0udzi5U7JGHo6mJ2NSgIsgt8YCALRAq9G9z4/zJ1sp+XI+uTG2NzrGrEF8q
         BHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sk8xDzCTsgr6WaTiRjuZRnE1+gQGYfKOJ5t9eQWvWY8=;
        b=LU4zBpO8oJaTtGCGd0UgTqsSMcY5InacD87azUpoZo5v9br7IkAOOMDJESM/YjfLMM
         FELHxuOl3TiIQ6TNGWj5gK314x+2df8Z2XDaKrG84r2GhU/riZewDcS0NDr2qBR5hcbU
         XUT3q6SUrJa70Ajhh4aqn5w0+zitu94RKEo62ICKIY0sdvIcm9d5jusmhkI0Ft/wlyHo
         FVd1KJgINcOLn6zLd++pIC9DR6KaqqAZ+HcrcSIEcPCdv7+iszjrTY/8el2ARkKCOUd9
         eALKeXu3vaBinueoYBcYSnd4zD0WBLNFrA5PQKOsL2x/Wd4JhzJD7VmzSlJ7QgQXLGeW
         QIAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cxX4hw3dmxdJCVgcAoay9N1CfKhtmktsjaoTmI9glhS8a55F0
	R3whBUMHYYb0jCRdwZTFe0E=
X-Google-Smtp-Source: ABdhPJxfsguA8ZGU2Mo13Go1bw6gfGxp73ICHHqF76OSjaDeKorhMMxIkT8lqKOqlPz7PAmKIUIhjw==
X-Received: by 2002:a17:90a:334c:: with SMTP id m70mr1468404pjb.88.1595281124866;
        Mon, 20 Jul 2020 14:38:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls3157106plr.0.gmail; Mon, 20
 Jul 2020 14:38:44 -0700 (PDT)
X-Received: by 2002:a17:902:8697:: with SMTP id g23mr19216057plo.94.1595281124387;
        Mon, 20 Jul 2020 14:38:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595281124; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgksYx8NX5C8Pcxh5UN2Ly0VyxGVDjm8X4/ijR7OfMVQhZzc/Qi4lXP3P4PxycPbqB
         x8sJY3UWYYy3zk0knusI89zq+e7jZUlEeSpSnOlQYoES/ODiiMXNnG6g/WG3lfd/NMR2
         SGtSoYZIslBmF7rMCYQseCl04h8A8pSpcw//huYxXABAWBZTc9fCi952/os9vVJrtker
         Y+PvT8GIQltb0QiEEmBhNbu+kcsoTFVqPSLE1JidtWVaFlakijPXSGUoskSR+eV8dU8M
         oGHrzqhF3TkwO5PztOefdYwFR1wTRewTy93Ogwg6pYrnzODV5LoCbAwD2FGzuGZj4FCA
         O26Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+g2gp8qBPZq78TsIE6FdPXe3Sq/yWzgsxRT8xRfUf4o=;
        b=BheT6o6PVdrGzcYvKAj7weQm/gzozmMlBa8a1RXjfZbRLTXys2nJ9q5659I/YVkhF0
         aeV72HKE2ylTo3GZIybdLj5OGMcgaugeR7mlIhkQ10g2WCiHXV1FgKwLhIik/DiJS/xf
         e7WBoIjnfh7tm9y5TlTDuwq2o70jvWs2t/hf2fljaxBvWjOEToJWKytBypXo4/zw+34F
         CCdLf6zYRSSzRImDkVvC2o0LCMmdvQgqY1VYNxsZJz354xxBX8vHM/7lGUZy9UJ0nhAp
         3OM/OgLTji16pTWjhEZbWD8tXfALB0SBp66mvRHCHRd1uwGIpISKZltePhPMlI0GiM55
         4OQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2sn3SJYX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q13si1003814pfc.6.2020.07.20.14.38.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 14:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 63EBA22CAF;
	Mon, 20 Jul 2020 21:38:43 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 30/34] x86: math-emu: Fix up 'cmp' insn for clang ias
Date: Mon, 20 Jul 2020 17:38:03 -0400
Message-Id: <20200720213807.407380-30-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720213807.407380-1-sashal@kernel.org>
References: <20200720213807.407380-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2sn3SJYX;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 81e96851ea32deb2c921c870eecabf335f598aeb ]

The clang integrated assembler requires the 'cmp' instruction to
have a length prefix here:

arch/x86/math-emu/wm_sqrt.S:212:2: error: ambiguous instructions require an explicit suffix (could be 'cmpb', 'cmpw', or 'cmpl')
 cmp $0xffffffff,-24(%ebp)
 ^

Make this a 32-bit comparison, which it was clearly meant to be.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lkml.kernel.org/r/20200527135352.1198078-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/math-emu/wm_sqrt.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/math-emu/wm_sqrt.S b/arch/x86/math-emu/wm_sqrt.S
index f031c0e193565..515cdee90df72 100644
--- a/arch/x86/math-emu/wm_sqrt.S
+++ b/arch/x86/math-emu/wm_sqrt.S
@@ -209,7 +209,7 @@ sqrt_stage_2_finish:
 
 #ifdef PARANOID
 /* It should be possible to get here only if the arg is ffff....ffff */
-	cmp	$0xffffffff,FPU_fsqrt_arg_1
+	cmpl	$0xffffffff,FPU_fsqrt_arg_1
 	jnz	sqrt_stage_2_error
 #endif /* PARANOID */
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720213807.407380-30-sashal%40kernel.org.
