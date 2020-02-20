Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5VKXDZAKGQEDPWTM3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C326916569E
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 06:13:27 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id e15sf1821371ioh.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:13:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582175606; cv=pass;
        d=google.com; s=arc-20160816;
        b=DiVChJiXKJgcin/PdKxfvwV5mObhmUFkuS0x3nk8T3cEz1DtZ2iV1oTAwmXlMXaoI5
         7xHDKoCXq0QGv9J9CffLTTPwrsjbmA9OaNO+98/PDBllaiGHp7RykaXI4bjca/gHLig8
         5iCkt+zVtQgzyO/pjYzsRMy9PZiRGrnRV4myOU3PzjVAkuJKb7b5v/EclP1BanBUh1ay
         PpVXr3u/ZYrpvXwkMkGgCPT7tmUFtdplktr4OnpCnaJbm7WUiuBlNmuebIuKtZn7m0uy
         BDwBxWzp4g5tHnQyZNvusYArch6rTK3MMDCfr0mKgdHVOVsf3kmKkyOgosR5xMxC42Zh
         wNNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=h4mQX0ejr2h5Eye73psErg+kM/WqZoSYXM+BktetqBA=;
        b=bUGP6SXJQRXleYs+RijkDXjoLUhHmhaXs9aBZt/6mm7RkCnGidbh/sahrCs4qHkZRh
         FMHZPBcZwJOccWjfuTiKrhWgDzjpvnOmCb+oqQd8jzLaRmqq56J5KWtC8nOnfFEyIwDj
         0o8eqUwYNPdtnL8iRPxYR20EmlGryzAW/w6e8qhIYZ+y1onK0NKjlnttHNqcnHODkJBQ
         MugkZsLUqrB8OL9uWK95FzVL4N+4wsc7yOHdHLSn8+BMSCxTfGTCoyR/ByUmi0t7azK6
         3RRB6dblBf/PlbC0Zm79INF+ai2bnfC3K+YxqPhh5HY7Kk+VPVdCGaw1+aOKSiSmcP60
         gGqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L6zyIrEA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h4mQX0ejr2h5Eye73psErg+kM/WqZoSYXM+BktetqBA=;
        b=DfCy+UPwff5VH2VYgbO86kU8hug+KxunO2AJGg5I4KQ06eXWEU1Qs/VOlZDYFFmmmR
         tlEsXQXUJSF71lKZ9FwegSANrf4FJNrZ1/qkqGMIH3A+0dvIlaa3ol5sQfkBMTYIg9jR
         7rWZTaCpcyyId7Rhg6ukk0WDAgg9i7Shj4LJzkr4gsWtEPNPwEZG2AelcbFglfqZj0KC
         f9bp/zycO4MKo3umsHTmGTuvGh8ye4kEnRkreR8eEtNXTMxNL9DH+gd9QXVk3CbsJSYr
         Wf6lXliOESqk2+efAaICEo5v28BSEHarB5AhkKBeDOPkSTuvpRauCWsGnQdDquq6wyks
         YU3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h4mQX0ejr2h5Eye73psErg+kM/WqZoSYXM+BktetqBA=;
        b=lUauzKOVVM1H+J0rgfSSqRYtFp7V4HpHMHliouSpgBbFyIOEAlIfFF/RBl97ytPzOa
         BqpTMODhkejbKnlxyNE8WBk4V07BTXUHB7eaJjRq2rjrV3FcQcEJDLz46xH/fCf9id2V
         a/wgnE1MRGH7HfmfM18R8pFgehEQiOEmNnSsyeq2jlEKwgKvPyXprXlUL2JNDNrOEMGj
         XkLOaPaAfmaJnDacvCyeu9wBuGI50nkjpm5icoFRfDnjVfe0EDmxirfCP2cf5Bj1vTs+
         opn8EiHUwQW1pbdkAWk8b1n0QiU9EnQkFP5HlQBuPCDifEV/aCED9XGNgfZasOqpP2gZ
         qM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h4mQX0ejr2h5Eye73psErg+kM/WqZoSYXM+BktetqBA=;
        b=TUoiBlHit03gkwsuW+V634uNzozfwMhKFK3BsFZJfkNUMuwe+6LRKG0v8GPAyJYHap
         CsH9A0VHOgouuFrnRSjSBA2OvvSKw7zFfzNaY0GTANDsUsF21Wt+MtObxyr/McCyLYhe
         eDzIv1qGNyNzlSxsnbyvzaV2E3EM6HuHIdS9M6rt8OVjKjVFxEYb2hmy2ftXoWyB6Nej
         DfF0JVtfpjuu9Trpt+x+cRDXDUMcXb0cMIsVllmTIZUUSvs52OFYwpsOQmPlch7mn+P7
         s4UdN3IuBnG+WHRURQf2gthSwbZbPqsmpwV7on2NrTjMAq4EjwAja4occuen7YyJ9+wz
         yBXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVh1iJOEAhuBPbJ4eHUYKb/tr8Mbqve079kzMN9feno046oYHn+
	eNfmK7udAysYn210IrlRQ9Y=
X-Google-Smtp-Source: APXvYqzIxTgJlpL27kY4c2SdCPW3RmPaYH+X5l9JeK0wZ/AEOzwpOMhJovGq05oI48A9czL1GThGbA==
X-Received: by 2002:a92:9813:: with SMTP id l19mr25958627ili.247.1582175606795;
        Wed, 19 Feb 2020 21:13:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8d0a:: with SMTP id m10ls412496ioj.8.gmail; Wed, 19 Feb
 2020 21:13:26 -0800 (PST)
X-Received: by 2002:a6b:3845:: with SMTP id f66mr23970288ioa.102.1582175606467;
        Wed, 19 Feb 2020 21:13:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582175606; cv=none;
        d=google.com; s=arc-20160816;
        b=zJQVHLAKsvzRI5tAGPiSRri3dAjcMRIVAm6Y11juTWN4hxXTjIhTlK7KZxJiCG1P2e
         pxlJRrkmhLN/3TcpOaF81olOTmbwf8iLS8IK8oUXniR/x4U0pjjMU47QYP6REaELdEi7
         iVvT8Zg2m3RN2MdU6ZyNlglkuwbuG1W/rdhX0lzL74BnBVWYfKhNbfrmhEY/E04E5C/5
         cOi/jVK/lFOORKEvkJn93LVV+/9vSefGLCjkLsYRIeLthbz9dpS1uEOkeLrCTPs70l9d
         iYB6jOm6oECGXXTLwxEKuEYrZkMbDT+kVnGzT0D9J1Jf+G6Qy0tn0Kf4tZ6KuxEsfzli
         vfqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WZBsGB9tbxhvRXiclwSK9JL1N3w+7ntoBoXx7wbC0SA=;
        b=oLR4gc4CD+pnOsyaRQsKVOn5IBKaK6AaLZ+5PmoPFnT9xAorOHWZDLfRfU/i59JlGM
         CDL4Ig6ogx2K/z1/02miXxOYxFm81QvWwiH1CbO9WwhxkAXrO6MRXOfEza5hWqM/dVnO
         /psaXyu9/VnfwcOdTuOXDk3WHU/3QKXFaJXUf74YTZPTZQHCxaq+13CyZ0/SmTaIRak+
         yL5XkbEphDn+/RU46G7ax48COTxeKfbOzT2XR1jKCVqLn9VJfJ1QaP+IU+JoxQdhyxzL
         OVnV2n6wB2z9vDJn3X6erI7ku4nyOCVNTHKe9oWLuK0JXZTcMyS2Yo6Um4RNavIhXTS+
         Snuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L6zyIrEA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b16si128182ion.0.2020.02.19.21.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 21:13:26 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id r27so2499917otc.8
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 21:13:26 -0800 (PST)
X-Received: by 2002:a05:6830:1050:: with SMTP id b16mr22621414otp.140.1582175606032;
        Wed, 19 Feb 2020 21:13:26 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h15sm742436otq.67.2020.02.19.21.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 21:13:25 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jason Baron <jbaron@akamai.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] dynamic_debug: Use address-of operator on section symbols
Date: Wed, 19 Feb 2020 22:13:20 -0700
Message-Id: <20200220051320.10739-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L6zyIrEA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

../lib/dynamic_debug.c:1034:24: warning: array comparison always
evaluates to false [-Wtautological-compare]
        if (__start___verbose == __stop___verbose) {
                              ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses. Using the address of operator silences the warning and
does not change the resulting assembly with either clang/ld.lld or
gcc/ld (tested with diff + objdump -Dr).

Link: https://github.com/ClangBuiltLinux/linux/issues/894
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-5-natechancellor@gmail.com/

* No longer a series because there is no prerequisite patch.
* Use address-of operator instead of casting to unsigned long.

 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index aae17d9522e5..8f199f403ab5 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1031,7 +1031,7 @@ static int __init dynamic_debug_init(void)
 	int n = 0, entries = 0, modct = 0;
 	int verbose_bytes = 0;
 
-	if (__start___verbose == __stop___verbose) {
+	if (&__start___verbose == &__stop___verbose) {
 		pr_warn("_ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\n");
 		return 1;
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220051320.10739-1-natechancellor%40gmail.com.
