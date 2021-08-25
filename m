Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4P5TGEQMGQEPUFL65Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A456F3F7B97
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 19:33:38 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id d78-20020a256851000000b00598b2a660e2sf224724ybc.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 10:33:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629912817; cv=pass;
        d=google.com; s=arc-20160816;
        b=bl9TKkbIQrm7PoiUwds0wlefyLpAaLJnRFJ5FYGovNMRxqKUPR5wdJstfkP0URxEfB
         9Pcgs3VSTEAk5jMzoXllxArYKCEZsp4dG/Mo5443bXDeAHaEZRFMtwRUmuvLXHyMJvFs
         /bzqbu8Kl3cpuu7UOWC4mEXe2UzHCkDHsUYA4TdT7A6cW6pAlVGcMJ+pJVwda5V+UlPw
         sRn/hDmEOgGLrzaRJEaETs3qPAuhfQaENxX7ENAzAHro1eH0OuVv7NKwi0D6RtzFsUt/
         mfwCkV1Qg/T01Qk0CJ5Ag5S057OURQyvjTGEpruGHiBz8/3PwtKCj0g0rrbquzq+v5lV
         OiTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CEAHejYoB76uEsqWKTofPBHlZMyHXo9SKB2xDr+PFtY=;
        b=LJX0k5pa3l47AxevjU4Q0nLFcKjVlv8hxwJZTPevVJTCvA7sbNw43r7KSiqv4DFrsQ
         knZViZ/Om2Na9H6NQOUm7i5V1MQr3eux3zLaOS/Cq88VGa6hJWIj3EQ8NAwqs589B8JJ
         8pkl8QyPjn/XlpvTeFciZoVGwA92/DvAx3Aa289CQURSqDfDckR2kPOlq0L+m3je1Arx
         xNuDUyv103WvGZiSYgAXjRv47TzZxizMqbnhsTZofIIvRXNTwjxAQuG9sv6mFWIfNlYH
         Qu4j2f2+ps1xSJVkaQTWY9Ix6mA9RFrVNFC9c4VeEjYQABzSrdGKHSeQd2haMo5gYc7y
         V9VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ndplRsWu;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CEAHejYoB76uEsqWKTofPBHlZMyHXo9SKB2xDr+PFtY=;
        b=RsRiRvanJFbvi93NvmZV/l36ZiC4xIIoljTMGIjNdmiIs80NtC6O7F4lOA7IOxPzHT
         CpjY3+yzbkyb1xttXhij78MHUnyIE77ln8GxXqLKkYzikRk+1TXpEqUGOUEzteQHmtEB
         Qjf36wewm/AJaKZB37e7GN1VbKCAULEU93y5JxCcgeJBesFNBW1aQowAULDmqICY7jFx
         H2PruZrtNAp4SflCxi8HB48bSv89W/JRNZgp4dnGe+r7qtsY+kb19+RNHQyk6qUMOXkZ
         e6rja8RHafIv1rtQD7Ad1P/ExYPhWHFOcXCdtsoiIgAoE66nJfB6J5DMWmQbO43CqozT
         7TbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CEAHejYoB76uEsqWKTofPBHlZMyHXo9SKB2xDr+PFtY=;
        b=WFjJPFI6PKMdlUHfOV3veNZdsQoGT+GCfmW6Mw7eV5+3ySxSFDq0Vb6yrtImw1BF3+
         76n1NV2PZTg47Utuk6CXKsKBazX1/JVhXJ7Jv/+KOsH9t6nSZLHk7eQf9YtQ1W+j44X3
         dKXL690ZSRIOk0wgMyXB8WAPIdhUHxLYZYVXJmW/O2qNsF0SGN6coODy4TQpchbqjHka
         FCMLuzsMdEuwGdyo01/vnSh7KDxLlwYTMrAKlhJmdUjjzOk9nVtvtWJH5POETZa4WT5E
         RuSccajChGjJk2TYa/yJm6nOmCaVzs5sD5b85yyaa415epTGYW0RLRrvo8vXeOeddD+z
         7z8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eCMNCRs3uGrotKUsK7j/mrnCHUBmpDkCKLLCzpIBD1WWbug46
	F6X6h7ZTgdU+uesirWqFrI8=
X-Google-Smtp-Source: ABdhPJyZ57WJEv8g46VTI/P97uG91jIySJpBJUrXpNEFTchXNohcpwjB94wzoDxje7I1WqOWNTVJvw==
X-Received: by 2002:a25:42c2:: with SMTP id p185mr25215061yba.0.1629912817546;
        Wed, 25 Aug 2021 10:33:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls1666970ybc.2.gmail; Wed, 25
 Aug 2021 10:33:37 -0700 (PDT)
X-Received: by 2002:a25:ac0d:: with SMTP id w13mr27771560ybi.367.1629912817156;
        Wed, 25 Aug 2021 10:33:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629912817; cv=none;
        d=google.com; s=arc-20160816;
        b=WGdFMu4j6WqYTmZ+OJv64cqBFu9XVBMu8sxegcqsouUoph3MatKdf9WSrqoTfSLwlV
         2wEQvux3D2X5gHHPCbz9lwaIquKwUuX6jjbhN+9Emegr2HgG2Jvr/6IBgF5/UoZawaHY
         JTyA9yCnYAISCKSimejuLhiJeqdknl540b56MGCk8/dboPww+B/VlsScLKcByiAA/IX8
         66s65li1WdY6k78rIgPxnRSSW+YEBu9yyRFZc6VDO7/gViaJIi6ctR732TKa+DFdZ95z
         JCB9GP0StGSHF743f1LiCUyAjgWna0O99ziUQ3pRXHPkvT4s2B28PmBj41XbBC0k0tNn
         OCpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Mo75y37FlwpGdzOmdwcBnw278Knu/H6/Idmm5Bb+4og=;
        b=ZYIfRFNPBKjpxRzEOppWqEOQazjFoSGzQ/Y0pSn0AVosYXJEU07/Kbduyck2LhFFrf
         sChz6Ew9gNJR0oi5gUue5wQllpUJMQD76DFJyoPBDEdM4LZ1KVfqUDPYJbgy+I5Mxx4q
         1LUkOqKlPjHOkvuDVNiImomSXvezx+LwR+LXd2sPNa8KqY3T444DwcWy7M+YY7y2CUMq
         ICcg76nNdL+u408CUQJGCS6R9gesWsnonaOqxnHe9AqDAfS8srJ5PKDKG0yWRkaTXeym
         3cBW8jC9j43uj57dKC2H2+NSQUeOlMinvgBypP52xC+iLJ+D++bAD3snGvhzFKngnR/w
         5DOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ndplRsWu;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q10si42063ybp.2.2021.08.25.10.33.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 10:33:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 58CD1610CB;
	Wed, 25 Aug 2021 17:33:33 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Alison Schofield <alison.schofield@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Ben Widawsky <ben.widawsky@intel.com>,
	Dan Williams <dan.j.williams@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-cxl@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] cxl/core: Avoid using dev uninitialized in devm_cxl_add_decoder()
Date: Wed, 25 Aug 2021 10:33:01 -0700
Message-Id: <20210825173301.358381-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ndplRsWu;       spf=pass
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

drivers/cxl/core/bus.c:527:6: warning: variable 'dev' is used
uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (rc)
            ^~
drivers/cxl/core/bus.c:541:13: note: uninitialized use occurs here
        put_device(dev);
                   ^~~
drivers/cxl/core/bus.c:527:2: note: remove the 'if' if its condition is
always false
        if (rc)
        ^~~~~~~
drivers/cxl/core/bus.c:507:6: warning: variable 'dev' is used
uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (cxld->interleave_ways < 1) {
            ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/cxl/core/bus.c:541:13: note: uninitialized use occurs here
        put_device(dev);
                   ^~~
drivers/cxl/core/bus.c:507:2: note: remove the 'if' if its condition is
always false
        if (cxld->interleave_ways < 1) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/cxl/core/bus.c:498:20: note: initialize the variable 'dev' to
silence this warning
        struct device *dev;
                          ^
                           = NULL
2 warnings generated.

Return the error code directly rather than attempting to call
device_put() with an uninitialized pointer.

Fixes: b7ca54b62551 ("cxl/core: Split decoder setup into alloc + add")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/cxl/core/bus.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/cxl/core/bus.c b/drivers/cxl/core/bus.c
index 1320a996220a..f4d5319e29e3 100644
--- a/drivers/cxl/core/bus.c
+++ b/drivers/cxl/core/bus.c
@@ -504,10 +504,8 @@ int devm_cxl_add_decoder(struct device *host, struct cxl_decoder *cxld,
 	if (IS_ERR(cxld))
 		return PTR_ERR(cxld);
 
-	if (cxld->interleave_ways < 1) {
-		rc = -EINVAL;
-		goto err;
-	}
+	if (cxld->interleave_ways < 1)
+		return -EINVAL;
 
 	device_lock(&port->dev);
 	if (list_empty(&port->dports))
@@ -525,7 +523,7 @@ int devm_cxl_add_decoder(struct device *host, struct cxl_decoder *cxld,
 	}
 	device_unlock(&port->dev);
 	if (rc)
-		goto err;
+		return rc;
 
 	dev = &cxld->dev;
 	rc = dev_set_name(dev, "decoder%d.%d", port->id, cxld->id);

base-commit: 036a16a39e2fab9bf7279201d04cf7e90993521f
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825173301.358381-1-nathan%40kernel.org.
