Return-Path: <clang-built-linux+bncBAABBJFMR2DAMGQEPDK45XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE063A4730
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:13 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id c15-20020ae9e20f0000b02903aafa8c83e7sf7474076qkc.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430693; cv=pass;
        d=google.com; s=arc-20160816;
        b=FtyooLko1ZgJ5Q94agsuHloLEb6op4ErhODC6g//HMiQ6l5p5YRLVIod/lz4nrPVMv
         JLUEK6qMCbBe9yY4mIgSFeK9UO+R+DVYn3fu4ulhS6cfDTx1ux7jsPaOkculEY7lDaZg
         wmwEs6x5vNdT17LjRU69aYjbLJF5USZccewQvKNMjs/rOFpytQoh+xOQDyq0vPfmRWgx
         FJ6hNy5mftmfxeFPkEG9fGzH+Q5rTH6ziX+HksviZ6QFfWAZZkWK40ymINLAWc9lWQZ+
         nquCXGxs0+0xZKVeHYB5uWfcj3qJcJXryGWubNGEYDmycX9EuMWuT9Kqa/5pWZB5XfYB
         /fCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :mime-version:date:message-id:cc:to:subject:from:dkim-signature;
        bh=oTnoOVViSPK5bJs31o0hY8voRN9iS7xRQ/jbbUxhi0o=;
        b=U35UIDsDPXp5mAYrWK4ioxBC3KB3eZ22KdEHOHmjXaWXEsm6uEWHzjmb+JQxmKsV8T
         g9gPY67e+MQzT3E7TxU4Tc+ZRL4E6b/K9Kp9xKVPTYi9N2jfYzjRcsARzUjnw1/MMM/t
         Q+/hwuAJWkkRcti+wXkJXsvjYBWCq9Fip1eBaHYhpUDl+S0XL3Sa+uDNk7dR8hxV3B52
         4zHx6tzeYXl83id58axJ+mPO92pLqh/Y4RPVw5xEIYhxXz884SudQ+XchHtQEIMmLJIz
         UdOby95FzRGY7FueogwsyYE8TVCoBCfGKRSQk6vKsYz+Ht/QFEy339LMSOW607irIi3y
         v0KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=YN3BRYuY;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=gvi7Y4gl;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:101 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:subject:to:cc:message-id:date:mime-version:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oTnoOVViSPK5bJs31o0hY8voRN9iS7xRQ/jbbUxhi0o=;
        b=WeqjYzYVPy6LQohgSoTvcEZllLtEURQeQmLvkkEKSSwy1nk7TC5VjXZYYFRxNvndRj
         +qpPcnvJazqXA0G7PAF+wc9qRbkvFEYTqIozm5m4UojcGKNzE99RpaSrA2kP/YD1Dqep
         0JGQEX/TN4izSMm2QccI84bMksWWW5o+UlVjHSoDPJvQOB5AH3RFn5dIfluuQoBUYARr
         5o2+N6RJOw7D9RsHvpeVuudXzEOJIoAqgeo6JCUhHgLE0GyLx3HjblUzJoL7AzFTCEtW
         KoSb9FFoy9sZaYiFmsy+Vughl2Jm2z6/6J5wqUeR64ta/X2MOLGyN7LuEOdbnlus0n24
         wKzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oTnoOVViSPK5bJs31o0hY8voRN9iS7xRQ/jbbUxhi0o=;
        b=KBcsT1bbM9vWO9r6Gu8M/cZ7hMwMxbrN6YPQYhu/CRDS9vwvCgx14rfMlnLXD4mJrN
         wu0LcferA6aN4Gz8gZMHGRupm4DMF/rc4aymtsSeGGEZx8VxY/WkQDreYx1clmhc2MD3
         UWEevinph5yUE7F5vE2fMMzTMxZweMqbKH9vje9wqaQxeIJjA4UjvrOFKuOHweB4errN
         J6tw1Ip/dVf6M9ztjDBelMsFkoqMQPtvaErOqvX8Ybj3+2jMV1DgLfzWVzQ9znS8NecX
         PTX2la9qhOwrTJK2Wxg2gIV/KDEOUKERwef/4Ask67YPMFsWcsS2Ndn9BvJ1HwC0hg/S
         JHfg==
X-Gm-Message-State: AOAM531T/UHXT9KUYuTIQ3ZzTPHgqs2bd/57yKY2I231rczlKyie3dJu
	c24tFSui8cFAnpUSXuPGs3E=
X-Google-Smtp-Source: ABdhPJzEKEUKdctxUON0lvITIR0bUiX5SX8qxJ1D9J0afxfGdAGBU2bDxbyTXqIu9bTyt2dth91ERw==
X-Received: by 2002:a05:620a:806:: with SMTP id s6mr1852134qks.201.1623430693016;
        Fri, 11 Jun 2021 09:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e40d:: with SMTP id o13ls3316224qvl.0.gmail; Fri, 11 Jun
 2021 09:58:12 -0700 (PDT)
X-Received: by 2002:ad4:5309:: with SMTP id y9mr5791636qvr.31.1623430692764;
        Fri, 11 Jun 2021 09:58:12 -0700 (PDT)
Received: by 2002:a37:b342:0:b029:3aa:2738:289e with SMTP id af79cd13be357-3ab436f4305ms85a;
        Thu, 10 Jun 2021 13:58:12 -0700 (PDT)
X-Received: by 2002:a2e:9192:: with SMTP id f18mr349281ljg.77.1623358691880;
        Thu, 10 Jun 2021 13:58:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623358691; cv=none;
        d=google.com; s=arc-20160816;
        b=rZg/Uyj8shidUhsSBVJclrpAc7vXTO0KXGIYZHzDaWoysH1lqU4Q27UIpcAEJMd+Tx
         Y+ly9BBIn1A7oYzdmRuAlVkl22Y6cDHVLms1W1GM04nbfwoCIhhMDu09chOynkgG+bXl
         0PJUPwhIxzw0rrKpDcWothjiuqRI+b0cjb89lUoA4wry0BRkHG/58W0TEIkBVyFZ1zwG
         1lmQYqADNh6HGZdESEawaDG0KOEKYi8N9XuxEKeCmrjDLeQ6qCkhHf10jwTjdEZad01s
         j5whSyIQmRP7CAaEn48pCJ6qq+xbig3BIxxT20JjkhrZiKUE5WF2RrEyE/sKZbrGvb0H
         C/yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:date
         :message-id:cc:to:subject:from:dkim-signature:dkim-signature;
        bh=TC/huu5w6Vq+jWW3wxo62gGwMM9Lr1uzxzAJMRLZVQw=;
        b=QKdN/QYVBEyRDW+YnlpshWcaIKNNymkxbgM/gh0NQKBjqFlhC1N22JAu2fa9J++NOJ
         Jzvm40PDQX1vqh8MUxodaMbBQYeknrNUYEUtLuK8iVdN/2+ZkUth/G42gmvoHBmcx0DB
         kitgi8nUf3rIi2r44OT87rSHwh3UP/TkrZgrZcBqu9Kf+iH0POiOj9wrLySkk5nXVXc+
         yn2i+1bSZ8arTmpAzKVPrlXVJKyWzHcW4gcVUcv0w5SUIeCoVn48W772MZLkfGt48NTZ
         4XirszP0z76dUWJWU8jJNoJq0TRBHm+/qoI88ymzzKkMfhBrbsobyWQFawXwqzwr8k5L
         VM/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=YN3BRYuY;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=gvi7Y4gl;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:101 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org. [2001:67c:2050::465:101])
        by gmr-mx.google.com with ESMTPS id a39si118767ljq.2.2021.06.10.13.58.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 13:58:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:101 as permitted sender) client-ip=2001:67c:2050::465:101;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4G1GXM1KY0zQjhX;
	Thu, 10 Jun 2021 22:58:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id An5_chuNxmli; Thu, 10 Jun 2021 22:58:07 +0200 (CEST)
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: [PATCH v2 1/1] x86/Makefile: make -stack-alignment conditional on LLD
 < 13.0.0
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>
Cc: "clang-built-linux@googlegroups.com"
 <clang-built-linux@googlegroups.com>, "x86@kernel.org" <x86@kernel.org>
Message-ID: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
Date: Thu, 10 Jun 2021 20:58:06 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -6.23 / 15.00 / 15.00
X-Rspamd-Queue-Id: F1254180C
X-Rspamd-UID: 88ee33
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=YN3BRYuY;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=gvi7Y4gl;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 2001:67c:2050::465:101 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped
[1], leading to the following error message when building a LTO kernel
with Clang-13 and LLD-13:

    ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
    '-stack-alignment=8'.  Try 'ld.lld --help'
    ld.lld: Did you mean '--stackrealign=8'?

It also appears that the '-code-model' flag is not necessary anymore
starting with LLVM-9 [2].

Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.

These flags were necessary because these flags were not encoded in the
IR properly, so the link would restart optimizations without them. Now
there are properly encoded in the IR, and these flags exposing
implementation details are no longer necessary.

Changes from v1:
- based on mainline
- provide more information about the flags (Nick)
- use correct tags

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1377
[1]: https://reviews.llvm.org/D103048
[2]: https://reviews.llvm.org/D52322
Signed-off-by: Tor Vic <torvic9@mailbox.org>
---
 arch/x86/Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 307529417021..cb5e8d39cac1 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -200,8 +200,9 @@ endif
 KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)

 ifdef CONFIG_LTO_CLANG
-KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
-		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
+KBUILD_LDFLAGS	+= -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+endif
 endif

 ifdef CONFIG_X86_NEED_RELOCS
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f2c018ee-5999-741e-58d4-e482d5246067%40mailbox.org.
