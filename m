Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB36P3KEAMGQERUAHMCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EEF3EBB19
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 19:12:16 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf6508613plo.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 10:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628874735; cv=pass;
        d=google.com; s=arc-20160816;
        b=L9nn/0VFnJ3dYNLdV9q5cmiYkcCi7v2/1PK1qL0qisE3xN1sxAX0b4DVQ/FSkm2+G2
         JUSU1nDQbcWoK+Q7u7iQ0ZpKI6FjeUD8W9acYM1ibOga/T6Q+/0h+G4Mo1oCeMQQRbCW
         m7K7cSEdYFHn8/j0fYLshb9nEv5/5NakHY6wS6/zXkw3BKLNnFsti1JNRMQ+QZTjq7Oe
         wx60NZvoIXciZI8vOTTm9v8ZztzDlUmnUGnKwVqR0HoB56YR9deClnicymlowXCom5fJ
         TuJLI0htiLl68TBvYgYXIcAJp03Y79GqSQNmKFwid2fBD+OgZtvcbMSAHgEP6Ib8pTMs
         LgAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dBIvDQZ864q6qJAKDcZqx+fOeQojQsxnJvwuKvfwzY0=;
        b=yYOXq64g2UeFiyscChRKTNkNyFCbk4pC3+fupGHwizVbTIB1n5LdndfZT0BpieNJZB
         K85KyEAmJYkZrvbqFK2XVDAWUcp71hWXE8fSdWa/0tEbyymrwJmkIGthZoSuE1CGNzKJ
         Fo23eXRQrxLBUlyChcPhoJIIHdfP34TMQy4d/aLZx03pKIX2F6HZxuXlbNejT5ygLX6x
         TWvFHsGKP0TLmKOWyfQU7trnLbh0tmNPnyY73E9iVhrrXe5DlXrFryArCShsAUbW/Vpw
         1hVZP8FO7EJX/WwXqBOcGqBEiNUrIFJwN9TyGKNfSTb34WSatg4h0pJgDXHxHoYyABOw
         nlkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I7vDjYOo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBIvDQZ864q6qJAKDcZqx+fOeQojQsxnJvwuKvfwzY0=;
        b=iidMOwFvcPD93vXxswmnTYOkgRMP2sPICF7d5QRDOL7Wtq7V8Yb2c9NiiP5gC2fkCr
         65q0G/8bl4piWuFo5xqEbDXRqWjzaap+7U+drbTlPt97FBh6TNc5zolIQpwF41MKpFOZ
         nm66IhRodU5eH2b3wFZFvvXOOY6dpAe9rdubmqg1SEsmSGhGfQ4vfxhq0p5u9CsaIXnT
         juNOzQGxPkwirKn86S0kp58ukXnXFAILuhG20oi/+LM0jMulRBp+s5FbDezibq3mG1PI
         RzizMVvopgHB5qdXIRo1wfruNh+u2zE2CO0Dqie+sRUXuZwNkrl9ExreH3CHbpPY1bYR
         xNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dBIvDQZ864q6qJAKDcZqx+fOeQojQsxnJvwuKvfwzY0=;
        b=QlsIGmO0dEvKagOR9Zt+jUvXGUtR2lLRbu4a0Y0lRRLB6Kt/IOeFk2zCE2+976g9NL
         hfyseaPXaFzzxSFWUfksSmGrMLrFZORTJGSAcf2J8JxOT9LHAcGtFJ9PAyHz7dXKCaHi
         fWWIrheB47ymd89H4zQuG7A+gqdz399fBmn5t/bsMS+bcWLXfw2jE28J6EtN0Cr4BbaL
         YpVYvFpB4HurMnR/7yyPwbtzGwzJx/wiDYtYYtApTMFfwjftIt77+rJVFHl/U9zjuOIC
         a6V02IP1sAYh+Zb8KWwgmvGL93PiQzf4NDON3R0SDOHYpRvF6n10WE+hDyWACowKC2Qh
         dKnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X5Ahkb4BB7A94mwkKTCHLalG0N+04+klQ04qRdKphC6dS0xV8
	tC4AFhywUQVeCNXdnaBu0k0=
X-Google-Smtp-Source: ABdhPJwfHoY2sxgIeHaDEJ6VpjBeR9A6zYJD2khHsJj5jXpB68tLljz88oVR1pKXoHXEcfkCDEzyPQ==
X-Received: by 2002:a17:902:bf07:b029:12d:693f:14a6 with SMTP id bi7-20020a170902bf07b029012d693f14a6mr2924052plb.30.1628874735604;
        Fri, 13 Aug 2021 10:12:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls994528pls.3.gmail; Fri, 13
 Aug 2021 10:12:15 -0700 (PDT)
X-Received: by 2002:a17:902:db07:b029:12c:bdf3:73a3 with SMTP id m7-20020a170902db07b029012cbdf373a3mr2755311plx.5.1628874735065;
        Fri, 13 Aug 2021 10:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628874735; cv=none;
        d=google.com; s=arc-20160816;
        b=JPkzX+UQBELK/Nffy/IxnFL+t1KQoN3x3YNchGlem+OdLcAMhntZ92kDLQGEI4Zcal
         FbuffsI7t6sCNLiIw7piGTxpO7VYmuKmNC29/iVSNcbbbZ6qfQKHroO2CftX6GzUxyMg
         fNjMk/VDS6+ielj4RBPiMCw2KUUC/8K4Q2ZNH/2kZv8mS4q06XqdVDNUByqtmNkIEZmt
         A/5kxTbfUshUHzv1eE7tEIyheVZJ5EHNADGxuRvFPhtDj6zCcR41UOSLVr5tkP2JW9S0
         6AAkF403TFOSDn//AJds8+5f60xjYAE+B2pX2Gy4ggolW+uLcM5NH7aElasNLqYrfFmQ
         zbIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2Rv4Q6xhzfcZ7cC2wbNL+C6oF/NzlokwayEWhNa2AyI=;
        b=mhv0Bfs+dHDgze6WJUu+m7TPJVnLe/KScIEtFGUFSCC5Fx5W8XXKB1VRYt/4ehS3KI
         p54/ziqW38gpfztblQ5cfwnweRgf8U9cs+a1BgTpI8iGvpARrQtts1ywIsGCiB6gAlIc
         y1ckqahyDNaaAJGVxg/sq4dBFcT3eg9q1xSdBXnBWOe8pB+nWrx+sf1MtxTA62Ailq+g
         r0jtALimrQU7xY1Lf2bkyzoukA9uciwutKq3rviEI+/oxPJBMhZ4/eA37ZxVJScGCWZW
         itaYB9D2NkilsOLv+lOJyKn/9CTKOaXv4pqUe35+rrFdb5f3RkOu7dPEmHfGrPQAqItg
         nveQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I7vDjYOo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r7si173174pjp.0.2021.08.13.10.12.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 10:12:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8BA1C60F91;
	Fri, 13 Aug 2021 17:12:12 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>,
	Matthew Brost <matthew.brost@intel.com>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH] drm/i915/selftest: Fix use of err in igt_reset_{fail,nop}_engine()
Date: Fri, 13 Aug 2021 10:11:58 -0700
Message-Id: <20210813171158.2665823-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=I7vDjYOo;       spf=pass
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

Clang warns:

In file included from drivers/gpu/drm/i915/gt/intel_reset.c:1514:
drivers/gpu/drm/i915/gt/selftest_hangcheck.c:465:62: warning: variable
'err' is uninitialized when used here [-Wuninitialized]
        pr_err("[%s] Create context failed: %d!\n", engine->name, err);
                                                                  ^~~
...
drivers/gpu/drm/i915/gt/selftest_hangcheck.c:580:62: warning: variable
'err' is uninitialized when used here [-Wuninitialized]
        pr_err("[%s] Create context failed: %d!\n", engine->name, err);
                                                                  ^~~
...
2 warnings generated.

This appears to be a copy and paste issue. Use ce directly using the %pe
specifier to pretty print the error code so that err is not used
uninitialized in these functions.

Fixes: 3a7b72665ea5 ("drm/i915/selftest: Bump selftest timeouts for hangcheck")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 08f011f893b2..2c1ed32ca5ac 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -462,7 +462,7 @@ static int igt_reset_nop_engine(void *arg)
 
 		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
-			pr_err("[%s] Create context failed: %d!\n", engine->name, err);
+			pr_err("[%s] Create context failed: %pe!\n", engine->name, ce);
 			return PTR_ERR(ce);
 		}
 
@@ -577,7 +577,7 @@ static int igt_reset_fail_engine(void *arg)
 
 		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
-			pr_err("[%s] Create context failed: %d!\n", engine->name, err);
+			pr_err("[%s] Create context failed: %pe!\n", engine->name, ce);
 			return PTR_ERR(ce);
 		}
 

base-commit: 927dfdd09d8c03ba100ed0c8c3915f8e1d1f5556
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210813171158.2665823-1-nathan%40kernel.org.
