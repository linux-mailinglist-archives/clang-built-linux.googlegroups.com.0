Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJM63D4AKGQEPEGLHLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE2A2270E1
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 23:39:51 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id 4sf647631pjf.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:39:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595281189; cv=pass;
        d=google.com; s=arc-20160816;
        b=TS6XcqSLEaWpBFc84R9Hc3h83ihV1sHbi4mk9n1ZHDn7TQQwMGvEE01lUHNG0zNi5W
         TJM2wtfDL+Fj/5dQM8AxGOefxhXwNqShd2V8foJatjy7ananmjGFQqPoXgLMiJF16eNJ
         hIX4QWxdi+kw0OUaKVu/ekqVJucYODS0IxOArq8oaUVdlQTyxInHb7K9OSDY2cEG1xEm
         OP6JaciHS47b5gkSum8d/jE5dwmiDmHZ+Zq/SVthM3hPMxn/O0LVD6Rg6XaqNmfHfE3K
         MW3MyXOWMsx0wI2o+8G6g9WvXCXojXJlGOgQ4VF8XjpSkDO0HBmUvRnwwqtbgyTPfLs1
         9FWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rFIrew2td2GW88w7lrhALHv+pU0xZ53j7siii5zKc3I=;
        b=dGmUmQXMBeqodecgeV86FrKOu9F3MfloQiYUgUJe1FiPnCpksqy8eyWwZ/5oF+Vp9R
         Z8qWfSZQke3GKZfEay4ApGwr638LynzZTsZr4QPey0DUmENHKSUs1/VjRW9vftShjhCn
         o5QNUhs06hWOczpWQ7RhyxVKTMZ9AOPBSYyLY2ykXRED1cU1zcR8dIUl3mNfzSNLDUbh
         6IlIEFnYz+UzvB+G1TegNsMAMwbAsHFLIqRo2t9aZjYz2QfUKULrABTONSuhbBPcVxW0
         0YHx7NKQTbo7bpA6HQEZeDfZcNeQwgWa96gt0Ued0dALauYYM/aQ+LPwZCZPfWeJGJED
         JGOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q+s6VHd3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFIrew2td2GW88w7lrhALHv+pU0xZ53j7siii5zKc3I=;
        b=mAnwZk2j9jyMnCT/H4/T/L5q/UUP7b4slpxzRI+bpeY59uuiNJH7RmQcGLYKx0kc8I
         6tqlaO8bOycB33hmsPPTr75Wef5opkyoeBZSdFyOQ46EgQkdUe77GL+uzgDgAh704FNa
         +yZpn4HzZkKxvdBmqMUAozJxJy81hgWzaHQP/3WhR3GP++222JBJJVL5OiWeTvSdYRJZ
         ntT9yIeb/08xgMNk78QitQU+qTA2zXg9VbzfRqUnXJlfmHvOdoapD5xMiVHJoXbImqnp
         eJeWOHJZ7GfrQA8KDX0xTHc/t5pHDhLwid/e/nOHad5MAktNk1YbGZ0Tb7mHe7UBRgyi
         p3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFIrew2td2GW88w7lrhALHv+pU0xZ53j7siii5zKc3I=;
        b=oCRcOJcorYbJGTH2FnOfT53XJ/MRIuhM5WmweFf8HehYQYUc50SeLrqbolMC0mGpZk
         T5Y1y8wWtwG16l50skzDxP3tmLZUdCxe2aGsxvDE3GqnOqOYv0e0WXbh7kFG/QFZDdbu
         6X+eJHiOAvZeOLTtyM9v2LRyPzzUjXJ5P7Pwi3Pdg98p1n1SsvNeTapjIY5tOTBJ9t43
         n3KxtJqRidmm8ope9q5amgFSei4FslXFtN+gFXIUEzL/yyxLvHjmbtcqQqPWvWc2tpS4
         NQf8CmZOFN6TgQJhGFxTiTa93v2VcspOXQP6jHaHnTVNd+r8jJqlVHQCgH0rVzptKBfH
         A54Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Scs/TPBgjMk+TzxklyBQI7+h9UetWbFpR+VLPdR/Cpfg2DIAw
	d5CSGKZuCxZBUqIOsr8FVdU=
X-Google-Smtp-Source: ABdhPJzpEGzhj9SNiR9cGQX3UtUxBz53C2wYBoiM3XzSk4OInriv6/V7EesEjRzDykWr8NraP9RK6Q==
X-Received: by 2002:a17:90a:de94:: with SMTP id n20mr1378216pjv.125.1595281189814;
        Mon, 20 Jul 2020 14:39:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e97:: with SMTP id z145ls5024153pfc.4.gmail; Mon, 20
 Jul 2020 14:39:49 -0700 (PDT)
X-Received: by 2002:aa7:955a:: with SMTP id w26mr21843648pfq.137.1595281189389;
        Mon, 20 Jul 2020 14:39:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595281189; cv=none;
        d=google.com; s=arc-20160816;
        b=mS86X6pL3z5Jgn13k2y8H+jsRwsxjam4bduXW5uaa7Gv3lCNwrm814t6/CwCKMgi2+
         0rt/rc6mqrOVSkmqceHQKamjFNw7QQqWtgvuD8ZU8a3DtaqaNw35GYiTuXwUQixtfNlv
         Rib+gcSzxtUlLn0i7eXJewh1AARXjPa9uizEhNhkJoEbyoCEOu0bqxjAZ+eH9cAHPo/z
         jL6ajIo9rrUSrI0BQAOFow2C2O7tNWKagwVf/Ln8Sw02HuZY5pD2apAk866mFCe9CoUb
         6i8aTz2cywz5Uuvl2CmWvIoPl4fn55KBA36VoWMLVZusdthUXjwRxvGsLG6ViKb9nsEL
         JACA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g45a+H7hE+PNbftSwFxhNBrlrnSBThoyaV9WOyIRrKM=;
        b=fMlw8b3ms9jskj2LkRLnv2yJaHQRg7I5OvZ7w1e4MtLDaIIian22wMX/I0gv3azi6+
         vncQyeTsqOGPC/3P1Q4/hKQjH8UPKqTUdqCWnD1REwQRQWevDsLTaWVyMPNvt+vAIUPh
         dyTUTO65SOZUYpJREbbsGPTDH/F8Hyq0ABVlpHzOlMy5g7zHXzzL5ZnRC58cSXD3nDF+
         3fcYzQ7F9WJmuSWdaWocSrkuIOe7IiUsdItZokKz2xx3gZA3cjHCx7//FdebWTaukGMd
         tPQK03iPY0hdPCc4XkJzSbFRU3Fp9viq0tET1MWENNLJYyaqUNqctRG+4TllVuGGDgiw
         3oIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q+s6VHd3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w2si814128plq.3.2020.07.20.14.39.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 14:39:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 57E5722CAF;
	Mon, 20 Jul 2020 21:39:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 4/4] x86: math-emu: Fix up 'cmp' insn for clang ias
Date: Mon, 20 Jul 2020 17:39:43 -0400
Message-Id: <20200720213944.408226-4-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720213944.408226-1-sashal@kernel.org>
References: <20200720213944.408226-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Q+s6VHd3;       spf=pass
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
index d258f59564e11..3b40c98bbbd40 100644
--- a/arch/x86/math-emu/wm_sqrt.S
+++ b/arch/x86/math-emu/wm_sqrt.S
@@ -208,7 +208,7 @@ sqrt_stage_2_finish:
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720213944.408226-4-sashal%40kernel.org.
