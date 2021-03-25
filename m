Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2NB6SBAMGQEOUA4ETA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 003E8349C5F
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 23:38:34 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id oc10sf5459001pjb.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 15:38:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616711913; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8zjTQQJxbqeVPW9D+L71/+kX7Es6mlltWEMlfDFGN2t8arkiiJIZ7HKsilBfXNdS6
         MGcJiFA6OL6JdlFo2XrpxK25iX5orj1Jizl/UTkJuy4SJLZo+mEhsfsLugOdy9pXT2zX
         dwr/1kvXkfpQVYXvvAEuSGWQuuI7nChcfxPbR2Pb9vkHagnJ73/1Qivv6tlfb2J11mg1
         tQsDWJRCsWFaCYwZemQZ/RmEv+SizRqjrmd0yMNMHpP+0fcyRAbXYByKrKai7+/nMDQq
         KJQ2TGv7jUMwVugMdyEHhaQEzuUu518IxqiRyCGW8SYwEKk08pvE22Vizdx2Zj91VCyO
         EfVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xx/GxMya6eRt7iWbtqBtzZRrpOSG/w+KR92vTFqvsec=;
        b=iQDP8PKyjxG0Z6nXZG5icqbC5UFK2CH/gh9U4V5jlAo/+/IChKw8EqAGbkdIXUpSa2
         UEwY3nTcrTz0uzxyrbbpQUWyDg4WuyuIE3zaetBiDKUtzrMUxnpHBje0jfW+PrbqQYSP
         FiqzDI6e1JbHv5w0TahYqrxvYg9+n0F4XnqQ2a3+hMKs4LN1lOD5VqPIMsbVKRRy5vpp
         TLPlbS2bvDPSzuhGPos3Na8C686ufnt0/4UEhH24HPp0EJeeo48F8QrvXXtCevggbbA8
         gIhqTl+3fpnWXyycZ/WLH7yUiZYnkJlHVL3bDYYxZ9oT2mP0htDshXY4SBXA8s/PV1r6
         DQRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AQI76ZNA;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xx/GxMya6eRt7iWbtqBtzZRrpOSG/w+KR92vTFqvsec=;
        b=qTh7ScMtz+VXrx9ljpTIOWEt/dhuJGPE+qCdT65KyBSdUkchwvw8cxJx9/j4in9Rtc
         dk9EXuEyXwiCdVkCFET4tTswpkERQ+jntx6HsSxeju7Cz5jwGPWOx2s1BQERAmqTQyUI
         qd5DG9vPLytQRaN7QbAYeDNu2uWtr8HxQHTyLgAdh5VdmyLuJLlF6s7pBMY5iIJnb/j4
         E/CBX53cJ++2TrXNox8twts7H/a573fYO2LrRBiMPtUHRdknIL/p9FbKlooOAQDygsMU
         oxJSDtUN7aI0cBtM6aFXrbejIbLe3Pw4L3vyHQDcN4lKcHQDGayAYTgQBjB/cMlAeX68
         3sQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xx/GxMya6eRt7iWbtqBtzZRrpOSG/w+KR92vTFqvsec=;
        b=m2/2wv8DG309dMK8ifJDD0KZLsEsdeJEHAyV8v3z4spDBNKcGwLIy9pfoWaiOEIXsm
         OGQ6uuWSPOq4jfJkzGKJxgmfsIE/5Go83Rg6ESOCdbNIThSBo+yLTLpPlRFfLvAffTyN
         AmVc6nlhvxP+SwUwjCXnTdHlUbQgfBCZNkNBCgj378MgQ21+5bBGX6egnusQ0ikfTNCm
         HVSaUB8PSKvJi8TU/Aq0B38L3cWd90pl3rJ4qgM55fRtC55wyCpQ/CXR/gL+DsQCd4tZ
         ZoAQm4zmLcYURcY8Oe7JxOKCtk9RuZ0Y/Rm6zNrr7gFlOZ5OFB4zlqV+NLhN7GGtJK6S
         CT3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LzIakvJ2bk9Zve+HjSNYynGcPCpbUVfXHthKWwOIOFVEV7Fts
	sfRgIK3tH0rqO6ikugDk8lw=
X-Google-Smtp-Source: ABdhPJxc7V4+eOBfzn17z+1/OJ2uIlH7qDbHXxPo7g15698tHn4zJd720qImtQMifQ673lFFwkSpoA==
X-Received: by 2002:a65:63ce:: with SMTP id n14mr9368523pgv.279.1616711913728;
        Thu, 25 Mar 2021 15:38:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6a11:: with SMTP id m17ls2492206pgu.6.gmail; Thu, 25 Mar
 2021 15:38:33 -0700 (PDT)
X-Received: by 2002:aa7:8e8f:0:b029:1f1:5a1a:7f82 with SMTP id a15-20020aa78e8f0000b02901f15a1a7f82mr9949755pfr.52.1616711913213;
        Thu, 25 Mar 2021 15:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616711913; cv=none;
        d=google.com; s=arc-20160816;
        b=KiPLkZc5o4kIlRf70X7lG2i6FZJDgRl7MkbxOfyFJstKU+CX6sqc87VFnQDIwwE1wL
         45GaLsIUTh/KwHNv3WnRkno9uWBDRs85BOhodVxzn6EsIDjPvJJKq5wZoiZN+7Np1RAp
         iTI2x+aYETn7gH4hTinXkhYohI+Ho3zfyCQfqU8ZyLwqsmT9MLYTb44kQcQvgCfAy3ty
         IeFWs9QIkYOjKdLw2DSUR79rFnBj5oIsyu0Vpl6TyIbp8CA0tdrdIdkrkd/iL5md3/fP
         0wle0TcrkFAngl4EXXgjyDxSR2IlKurFbtFLHNSmZwqzQ4pgr/l/Xp0ZERXFq2ydv/0K
         prjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XRQRjBJgSA2MI7DVrnVFAkE9jvCnPsEY7RNC7/DKstI=;
        b=txmEwnRijJF3yPL2fc9O+4yhMnOm0YyOqc2pEKWpUVEEJYvxfYxh3y6g61fepGXXET
         DKzp/2A21KKaa3rHS8EFOrzyJoaffWm8Y1VOQXkGlqq/H6ZbH/4oOfcH0o5x5IsmXiMI
         +vdk6dkj/i1udfoAliSkx390STUNbVPLsoPQdDWRy5WV1BwZtjNFrwOM0DK2HNt4UV9o
         /nCRHHC1kYLSTo6HsOGdmFF4iCFNcwFKdxFvg2nD6ZuMXT+wB8CCTQb1GN93LAOelyEW
         ecgaL2um3qBwXznoUGTMcSArj7hNXGmlYjDwFG+QEfX5uB7wYUqGsrqM6XwWltRW+QDx
         ygpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AQI76ZNA;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k3si511473pll.1.2021.03.25.15.38.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 15:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6F90961A38;
	Thu, 25 Mar 2021 22:38:31 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 3/3] riscv: Select HAVE_DYNAMIC_FTRACE when -fpatchable-function-entry is available
Date: Thu, 25 Mar 2021 15:38:07 -0700
Message-Id: <20210325223807.2423265-4-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210325223807.2423265-1-nathan@kernel.org>
References: <20210325223807.2423265-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AQI76ZNA;       spf=pass
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

clang prior to 13.0.0 does not support -fpatchable-function-entry for
RISC-V.

clang: error: unsupported option '-fpatchable-function-entry=8' for target 'riscv64-unknown-linux-gnu'

To avoid this error, only select HAVE_DYNAMIC_FTRACE when this option is
not available.

Fixes: afc76b8b8011 ("riscv: Using PATCHABLE_FUNCTION_ENTRY instead of MCOUNT")
Link: https://github.com/ClangBuiltLinux/linux/issues/1268
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/riscv/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 87d7b52f278f..ba1d07640b66 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -227,7 +227,7 @@ config ARCH_RV64I
 	bool "RV64I"
 	select 64BIT
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && GCC_VERSION >= 50000
-	select HAVE_DYNAMIC_FTRACE if MMU
+	select HAVE_DYNAMIC_FTRACE if MMU && $(cc-option,-fpatchable-function-entry=8)
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS if HAVE_DYNAMIC_FTRACE
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_GRAPH_TRACER
-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-4-nathan%40kernel.org.
