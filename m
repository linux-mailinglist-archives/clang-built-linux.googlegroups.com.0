Return-Path: <clang-built-linux+bncBC2ORX645YPRBGFQTGBQMGQEOK3IYKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAD33523A9
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:41 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id 188sf1018520vst.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319960; cv=pass;
        d=google.com; s=arc-20160816;
        b=OtbZsUIuJW9iTLdF2SuG028rYuo5mKywIOuqo8Si3JecOgg3Zl7bBJ32ISnsTXHe4Z
         UQ8Gh2UTQic0bnkvTMYX9X5K8rA0e/e0yoP1gk2uyABrmY+46Tg9tiZaFpYRLoCAASsG
         TBFrQj4fopqzF16mFBsQOsPJYRrfKhPXXbdtZpVcCyqIFu2Ar3Z/Q9NzumCyrSx0a7eU
         6VP2Qw0FoYUeFe+8B8cNdrmBXHAtVfaNzSBGxDIZwofSI4F7b5hJ/D3snQ+qQlZ6nuCa
         KBV9CHauJmwUysSvBP0ZC0QTeHqOx2TWC5T0KU3rH2stDQwmV9PqY7jHdBaPXNolSY+a
         tkyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=JmkZ/r0N8ruvAl7k9h/UVcuiv5Ut4oea3fTHLnO3HsI=;
        b=dwMRUmRjatEHbFqngupY/lmRrpNFbDhrQlakLn8Fr9Cg2lRIhioUbW4Hzp28yQYpto
         1gh+CkXTVB9ojW4oqBS2XGXfp+prblJXqfpgi5qhSuUyxuuENllhU/ozIQS2t4hMBAj1
         ZzxgYFqKWe3w8rjlreLnwQ9r0LePgpKa8C91W2LUGW4ipwkIwgKyXtMMn8osuj70nzAb
         93txsIIQx+UwKN0P585oXhkEtswSeZpNAE5364pRCdq6m/WP5c6BIeXQLuaH1bspL3u3
         Li/ZAnz4CU/Cof+HdthEPV0xj4lWkjJqxO8+ju6PrWZDeSNPk8BYfKUwKYxG/+Dab7+O
         wnZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SUsTTUFB;
       spf=pass (google.com: domain of 3f1hmyawkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3F1hmYAwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JmkZ/r0N8ruvAl7k9h/UVcuiv5Ut4oea3fTHLnO3HsI=;
        b=AAIrU3WMamSTU2q2rWZ4Rb+b/FpU2kHgBOvnwToD25E50P/1+YxsUumgw32FTV8/R3
         Z6xf3ZxkoPegXVKzg6LE3ihRQp5+brLAjF5oUQd+/n5gacHmFQkkzhdTNzUCRl6gRvLb
         seBBpsphZUpah67bX2r6WdgtLNyISRTljuntp/3bv5NGbnCs/j2sk+nlvyEtHNnPvyNq
         JGeYsjPzDEJJYp4WkA2oqnetComI27w8xfuYh/A29CxYgyP1URhWIEk9nAiNanCBRJZM
         3HtS8nTt7CfkRLc+U6NWK/8V+nmoiTP8+hNub+39xJSF1LGRkqGPjCk4eNJUxc6ZjLDI
         b/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JmkZ/r0N8ruvAl7k9h/UVcuiv5Ut4oea3fTHLnO3HsI=;
        b=rbh+lqfK5Bt8kyeXw3U6XBDHSMP4fzUznlRRSc6b4QztzPuJyb9xpnOlTPC0Ivrb2V
         TUWV2nHMBOSLLVfrpU4aENKGfXXfQbJBRGiEwO1bm5v9imt7Ktvi2/plq7+uEnnEotIk
         a7++NJMkOebNHWXy8QNPGa1zrC2LpY6bXaiit1taLwJj/Hxya2Af0oowo7bf62c74Uqz
         gN3wekfeV+RjziIUgAIQGNV1dgjVJJ6zW/qA7+PlJdjC4pvLDdFhkYThHT+qLve1YZ/2
         3WAiSteWBI0RE5DIyB/r/kxnghxWs2zk86PzaF42qeuTgFRUoJpnIE8aB94BMZ10o95t
         V/nw==
X-Gm-Message-State: AOAM531seXPjou4EQj0SXCnGaneoouNhtUvW8PrO9aHO7rH+qbRv3J1v
	waIf4Sw9hradbIha3Ta+0Uw=
X-Google-Smtp-Source: ABdhPJwOrlCnq4kAi4GmKj0jufBl1ubyJDpAYfqLa9bl2NenOsOuR3dvz8TWjgtQztlnL5EhG+wmtw==
X-Received: by 2002:a67:f40c:: with SMTP id p12mr7465764vsn.56.1617319960425;
        Thu, 01 Apr 2021 16:32:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:358e:: with SMTP id h14ls435117vsu.3.gmail; Thu, 01
 Apr 2021 16:32:39 -0700 (PDT)
X-Received: by 2002:a67:e87:: with SMTP id 129mr7752348vso.40.1617319959897;
        Thu, 01 Apr 2021 16:32:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319959; cv=none;
        d=google.com; s=arc-20160816;
        b=MdPTYEc5oSzRXfF5+NGXVlvruwDMHLviHQHjOIQGS9CEeWV3tnaodamtPgW8IcxjVK
         OPpiy7qwkhUMe2JLeMtwI39uHE9RoliA0vzMTgaDd89UKen5X62r/+PjMTW8Jzwk1tOq
         fl/WLeaB5cc6gNbvp2yP8MT5yYotn0Nw4BCiQPC3kAPe05U0/VK/eBOktEbdp0tOhgNB
         jSzpONzgWULqjGXGfyFePMBcDGWJtzYuV6yIcmh8Qij2jVumt1NwljinezCPQLTCLn52
         bE0X7shfu72GiAVKiluFUnjVfyW1R2uRSTdFll3F/vcXwwnxlSnH8E70SDrDa/OdkpxK
         wPXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ihXC2HiiYMKXSpC6M6Il6sHAA7ZrY8nJsA58n/MMk7w=;
        b=xmLFUiF4PGWyzlf9YcDZs7rylSIvFDr89CPKJALtdo1y4OWpWGxcNf++YspWTximLl
         0Je6+/CrB/Nt2lxJMVXIIveZvYYgTpSE39CTpC1KpPpm0XzSPNGggkSf4u0oz/wP5qbq
         T50L/Jvlfa+Ev/BpFpm30xTPzU0vkxr3DFaabagdNCjx0IVcU7GxIosmKikp7xEixKZ3
         dkYnPnVE3ub1aBFNEFgbyvOa+C1TGhNok+4ZgnUeJGG9bR4KmY+i7jXVcv9OoBsNqvmX
         URrc/eUA6gtDlPJjKDoIWvhGrrETjWeXvXG4RB0ahtIR5nJc21rzdICKJIDvq3w9ih/W
         2TOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SUsTTUFB;
       spf=pass (google.com: domain of 3f1hmyawkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3F1hmYAwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id r17si411791vsf.2.2021.04.01.16.32.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3f1hmyawkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id k68so4794313qke.2
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:39 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a0c:c345:: with SMTP id
 j5mr10638318qvi.52.1617319959483; Thu, 01 Apr 2021 16:32:39 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:08 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 10/18] lkdtm: use function_nocfi
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SUsTTUFB;       spf=pass
 (google.com: domain of 3f1hmyawkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3F1hmYAwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

To ensure we take the actual address of a function in kernel text,
use function_nocfi. Otherwise, with CONFIG_CFI_CLANG, the compiler
replaces the address with a pointer to the CFI jump table, which is
actually in the module when compiled with CONFIG_LKDTM=m.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/usercopy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/lkdtm/usercopy.c b/drivers/misc/lkdtm/usercopy.c
index 109e8d4302c1..15d220ef35a5 100644
--- a/drivers/misc/lkdtm/usercopy.c
+++ b/drivers/misc/lkdtm/usercopy.c
@@ -314,7 +314,7 @@ void lkdtm_USERCOPY_KERNEL(void)
 
 	pr_info("attempting bad copy_to_user from kernel text: %px\n",
 		vm_mmap);
-	if (copy_to_user((void __user *)user_addr, vm_mmap,
+	if (copy_to_user((void __user *)user_addr, function_nocfi(vm_mmap),
 			 unconst + PAGE_SIZE)) {
 		pr_warn("copy_to_user failed, but lacked Oops\n");
 		goto free_user;
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-11-samitolvanen%40google.com.
