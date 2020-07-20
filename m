Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAE63D4AKGQE5UPCENQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F1119227089
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 23:39:13 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id z65sf12100369iof.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:39:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595281153; cv=pass;
        d=google.com; s=arc-20160816;
        b=TbZd0+iM4sLUfFMH14L6QZtD9fCEk1zJXC7fGv7noGfWLLcYFqtnPRBR415C0S/s3x
         KkrqwBLOzSEyG0u+NUQDiPtrqRHbuTW4bThsTP819wDOh+prKe5WgrTwfLQPDKl5a5TG
         3XcRvpZnkgr5tcyCCeQkwaiQJixzmXk34UlyngQmrmqm3np8FabqviXELKARlP0l+YDA
         y/GtkztdTaBPLCAhYNdCgHugDY3Q1h/YJ2z3G1arFdpgiJARC1xdDRefdZwZv/CFEC12
         J1bNn63PMIBkmh62bM2Kc8+G7wZlBK8ZRPR0QNiCIA1Da+hxLznWz3mnjD4jT1tPS84E
         ngAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9pqidCgE62wRY0mVKEcG4Yel/j2EEpd6dOjYg4SB4Dk=;
        b=0GnReOAVxfM63VfOra3xP9Ez8HOCIjlcOk4j65eCUFvM9H7aX9SgcjAwkoeIuWQH2/
         nEzwcMwbA8ISV2k9qdf/C8R7adR8Vp1wq9gmspcdv5qh6T8W0+OjpibaqydJS8Skh3r+
         sJzlf0dl3pScig60UjvUcD9MDKgL5QrqbqMJlcsGbkrySkKr5zSZvRx/8aQaHl0gpLMe
         r73zOdY4Aj6rRUSOsgxVvlbSo626zHM4PNIoBtITJX7mcGWHSc18xnq0KXwaH/ZM1Yny
         ny9b47vBQAN4Qyz5k5TSDLuWRWNW0sAO6nkf2waUqQVMmtH5uFMBBKFuGc7aQ6JTcL/g
         aIGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rH4yzy1O;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9pqidCgE62wRY0mVKEcG4Yel/j2EEpd6dOjYg4SB4Dk=;
        b=mK6Ui/Fq3SBUl0uVakzPhtWF+bzKcmQEEsKHutj9Q+GZGE5YZN4MHFqMIDeWk1AXDn
         kFNrLmzbaNIfR7/lCKOfvouQPIZgFAZDq/hTU+yq7XUBQI7RggXsz0ax3SD8ySeilb31
         bnmHZ26V+x9uwxQ7T9+Q4Hwlv1zXOzvZd65rBZLTOgXS4MtTlUg3J/f1abR6S22J4JAe
         l2PvzhFYa6vcmAIgjpoanzl+PBR3+8PIdFHkAj9ErK3RiJWJQyGSvpWsL0dBfJ+MsQ24
         Vj5wPYiPjPo659lt8MKCKSvAniPgrE5sjAElP/L2yvH8By8kErok041gSI2b2CkrK61J
         6bYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9pqidCgE62wRY0mVKEcG4Yel/j2EEpd6dOjYg4SB4Dk=;
        b=RqWB9zg5R9TmqARB8bOm72Ap+m/85GOX5tXvTzMubTFfWAzpo1HD6RzjRcOi/lZf93
         iEzWqH/YbP2ZjfuJ30NSav+shkR6HnTECqqj6EJSnNHmx1RPN39ipyAwF9dwPunEb+Jk
         4m//d7jEQqceWj7HC2Zr/z7BffM9HLYjD5KoWlHGn8pP4PAI2gLOJEiF3gZqCRLG+HQ9
         in69PkLexjTc2gi3gNq4FiVeivNVMWnvjinIBeWl3+9RUKL+IVqhHfFC1lWJ8e64YVEz
         IJYcRHDRtuPhbxj3wPHS4jv5koPYjUOLRMQ/SXafTQcxDO69Sv53MSPnbPw2m834VpLB
         Dniw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zRU1t6XQgZWi7b92ibO5XTTu08OzHn7aiKAu2zMIfo0xsMaOj
	f9XopYV2ovgfoSUpVha1Oh0=
X-Google-Smtp-Source: ABdhPJy6YT5qTondqNnzuWidCcUZWiOCpOS2Sei8GFbFmNDQDJme2Q+LhHN7hixkMIhJmRIkAR3FBQ==
X-Received: by 2002:a05:6e02:13cd:: with SMTP id v13mr23203208ilj.15.1595281152852;
        Mon, 20 Jul 2020 14:39:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:914a:: with SMTP id t71ls1833730ild.6.gmail; Mon, 20 Jul
 2020 14:39:12 -0700 (PDT)
X-Received: by 2002:a05:6e02:487:: with SMTP id b7mr26177809ils.100.1595281152517;
        Mon, 20 Jul 2020 14:39:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595281152; cv=none;
        d=google.com; s=arc-20160816;
        b=C7iYSMN9bOlywl5BEQ/pVfAOa4QQaC3TyaCebaBStnqJSbw1zsORqutAuqwJN3GVPf
         FnrEew5Yj7L5Lw3RCtRE3B6gjXCTOwnXcG2rbFJ+G4zzyWxqGuJZQ0oxniTOXxUf3sYA
         lhVEuz5dA4RoSYhTKrFUgPFAl44AM5JhiJfooSavM8bWtKOb+JT6o1lY3awQOihNEGX5
         dct6TZFjJM/z0/H/8jN8gJGDFvWgYBTdFZp5MXo7XTzDcVOF4/Mfoz5KNCBlnOkjTy18
         r0T/Xoka72YjbyAxFBZrkVePIHh2oPP2RAUX97tRGq3ZRQFQ2MWyH1Icv9WFI9hiLFoO
         yxzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+g2gp8qBPZq78TsIE6FdPXe3Sq/yWzgsxRT8xRfUf4o=;
        b=tc9X/3aZEoI1d2oENja0weDjy60bgLp9cCpInee9laPyQfHsmpV9LuizAEmmltGny8
         mFKoFEKh8g7hsQh4jChxhhnH5wCVaQscGRk+djgTfaLCxi5nd9ascCb+n/6CLEYhJGCD
         C6pNB6eEzSuReghYJoz5xU0EzFeTrY3DaLsAVaXwgEOyAD5OOnbWX3loZlDhOErPvgFx
         fXBpJpfdJGneOYLUeYIYSuHSXkOCeSkQGz0gn/5hcFJctx0AC4MQNsTKEgNXOagaFaVD
         7jKgQtdH4Um11ay8hVmvdZqYq8C5FTw49u0DcxzNKIRuPBSPYydkd7v72g5kvqduE5CA
         wDKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rH4yzy1O;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si1023505ioh.3.2020.07.20.14.39.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 14:39:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0E4F722CF7;
	Mon, 20 Jul 2020 21:39:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 17/19] x86: math-emu: Fix up 'cmp' insn for clang ias
Date: Mon, 20 Jul 2020 17:38:48 -0400
Message-Id: <20200720213851.407715-17-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720213851.407715-1-sashal@kernel.org>
References: <20200720213851.407715-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rH4yzy1O;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720213851.407715-17-sashal%40kernel.org.
