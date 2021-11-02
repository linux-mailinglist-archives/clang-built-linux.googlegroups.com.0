Return-Path: <clang-built-linux+bncBDRLJZNWRANBBEN5QWGAMGQETTS6NHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F5C443207
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Nov 2021 16:51:48 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id x27-20020ac2489b000000b004002367bdbbsf1488194lfc.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Nov 2021 08:51:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635868307; cv=pass;
        d=google.com; s=arc-20160816;
        b=qoAkc1RGIUQPr6llSaug3HP1l27H3oLppycDuTrG9gXdly984QV0KnHHKK3gjpEY69
         4XS9Z9bCYhhqGwwWd20rSq4Q33bDPF/EvVXk+x0Fkp/WB5uPIEKIPCsGdXMUTqEoNyq+
         nPb3do+TCkQ5qkklija7Hizlh0PkUyfMX6RHxbjESzvPXoaE+H2NuDdJNFNs7Zvh5UD7
         RqMTZavpnLRTGugXNPbpG9954oBJP7uI5blgoskoCg8vq4Tn6wBaSpeXoUPcRtFjF6cd
         5B7HMbs8hpVdKO3yZxnvH1QlfFJ6V5yRDcoIhB4LqwdZ8Njkzgd1SSb0XF0ZYFrcT+2a
         L2Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=WwRwhhWFzYLTeFmx9u+kh2SbhkRXV4PhqLwP1bXFtRs=;
        b=JEkzyVKx4wxJtfYe2ekv1I16uw3AhOIGRuIYZ6rTnLgMsfSvT/CNWXNOP+v9IStKOl
         HrPwhfEqjH1a9VqKjcFOmaGGb+uOlJ+g+sCBa+oNNe2yltBr/x+Rv7947Z6JVBbWVr9W
         MDYG8kLubz2BHuW9mbDup7vS6PpJlQBw7tbknkvMo+yXl5yv1b9BVyQmyyvT3LUF3j5G
         IMg9vFvE7kwLBiG64glhqFNTnMv/qklD5dFdoi/++LOf6jpuMAuqQY1HZ6r4ehuKBa2u
         GfuYABgPT2vOIJiR1HA/aMOx2GcaH2zpozRXyrFArqzBgW5AGtUnnTkCfArr9B5ReQcd
         nIdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="wB/1cmf5";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=x2Voycqq;
       spf=pass (google.com: domain of schwab@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=schwab@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WwRwhhWFzYLTeFmx9u+kh2SbhkRXV4PhqLwP1bXFtRs=;
        b=oktR3Bz1dQpvkoXV6KmghExqGCA5ni2lSWrFDi+F95BdYIBIJ6H5gtO46UUzXg8B6M
         DKnmC4rh5pGWOpIRj/v0190J1Gt/aUJCAnyuDgwAU0Zo3X0W4b7UdK9BEeVnJyw6F0fL
         SqbmTu0p+yJi0D2kWnwH/tNBA/laCAeZTaR+W86Vl+VAjYft3iQN0mWg0C+eEYPrkCxD
         fDRjxagJ+hlwfJpth6l9ekgLCWXcKf6DumyEdzSSnZTM57gvui9DyGE5p5WAVX9odZje
         q+8rCMoqrYHAuIipRZV7I4zi16Qgy4hMVNAf+2ZOaN+0e8bIvmdPlN3g+lAJ4DQr7hTd
         E2rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WwRwhhWFzYLTeFmx9u+kh2SbhkRXV4PhqLwP1bXFtRs=;
        b=b59Qilw8qBTT4EoHTZ5xGod7O+eFkvkILcwV17G8QJJWFawjXa0MkHqe0sRMqw76pd
         6SPsJJZmWU+jXSMlXU8Js/Et0oXig8py9/5FdavptBuSRG2wi+GWXEWGYSDDwM7Bu0kX
         QPzyswX8bY4nhcqAkP8S70r1TVyelLekqpQslzncu7mwfPk+OTYDQ+jJpux3UMF99IDY
         L00JKzIdvaCoRo9s5p5LH6nst4FYVG3C1iQGvuheGTyJiUphiIpuFvrW5IyJo69L47RG
         jI3WF/gQwZ7HoN+iDS+AaXkIrEcnW8tEEOyS2w5Uuhl60i2wZXk6JTzGRyQbXI89e+oT
         O7Mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/zUCSLunTxyo+ABVENGKK8soL3/DddcAZfPuJTmNx6YAoeAir
	zSKNtUko7PLwXGluyMtep70=
X-Google-Smtp-Source: ABdhPJwPJTSrXqbIcd4U7ufp3bis6/XAZryu0BWb8i0aQcAHmAPPzogDhivf1ucz4OloM+U1elG11w==
X-Received: by 2002:a05:6512:694:: with SMTP id t20mr33420163lfe.558.1635868305411;
        Tue, 02 Nov 2021 08:51:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:31d4:: with SMTP id j20ls846458lfe.2.gmail; Tue, 02
 Nov 2021 08:51:44 -0700 (PDT)
X-Received: by 2002:a05:6512:a8e:: with SMTP id m14mr35296482lfu.575.1635868304355;
        Tue, 02 Nov 2021 08:51:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635868304; cv=none;
        d=google.com; s=arc-20160816;
        b=UIdufQvQSt9C2HvpI745m3BsDd1XRMaJx8UGMI9+FSgesVQ0CWjLw/VgvlaQC1pf8W
         VZyhsY6GGTcjjvojWy12jpOSCyUI0o0sMjV9BigweCGk7oJoD5+oGJNYaCiWh2qtf7RN
         PhIH4qxA+qVNPYwVwTL/6BRbwJ0DNhet6YXo/9H2HqL4cTdS1FQKjytSr+Ohs3rXL/16
         ljvBK7Ad9jUC7lGcF+VTq1hNP8yhHAlNrfJTHJD5TrqoI3f/wJRbDWJ0T4ddHcpOwdn7
         8foMxUVJNw07BZicQXwuAdkeJtVhax2YVPcF7E3r3q6/ZqX2cSAAh8vImDJIO2KMisgL
         v14A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=9Jn3BaAn3lExYJcPf9xUO6RYJ/5roELy886njRhgwJY=;
        b=HZ8WF9/aPbknQMlIS+AyLjQCfo0b5PpstwyyWo1q1cGaTQGISRomPMlstd1h7KvDp+
         k4wrWctxaWm8ACx8G+MsvT58bgMo8yj838A1/F8piDyEo2hka5wkVm6+eXeFup8I4Xi6
         e9Xy3YSyVX7Pd19y4ABVNEGFE+JN9v+xZKWz/TOjW1dUZfIm+XyyhK25VvPyRDM4OrMw
         J8gQy6JnRD2wbTCvFYxBUkL5dKGJR7OwImR0ksU8CWkSxR30Ldt/w1fHbOQmjfAba6xo
         wf/NLTjWkD7Y1gxPh3h9WmJ+0tZSskO8cAtp/Ut/12oaU+AlOUZjMfeiulA5tMDPc4yU
         xqcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="wB/1cmf5";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=x2Voycqq;
       spf=pass (google.com: domain of schwab@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=schwab@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id z1si1183413lfu.5.2021.11.02.08.51.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 08:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of schwab@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 8D178212C3;
	Tue,  2 Nov 2021 15:51:43 +0000 (UTC)
Received: from hawking.suse.de (hawking.suse.de [10.160.4.0])
	by relay2.suse.de (Postfix) with ESMTP id 80F14A3B81;
	Tue,  2 Nov 2021 15:51:43 +0000 (UTC)
Received: by hawking.suse.de (Postfix, from userid 17005)
	id 666894431CC; Tue,  2 Nov 2021 16:51:43 +0100 (CET)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Cc: Saleem Abdulrasool <abdulras@google.com>,  linux-kernel@vger.kernel.org,
  Palmer Dabbelt <palmer@dabbelt.com>,  Nathan Chancellor
 <nathan@kernel.org>,  Nick Desaulniers <ndesaulniers@google.com>,  Bill
 Wendling <morbo@google.com>,  clang-built-linux@googlegroups.com
Subject: [PATCH] riscv: fix building external modules
References: <20210804173214.1027994-1-abdulras@google.com>
X-Yow: An INK-LING?  Sure -- TAKE one!!  Did you BUY any COMMUNIST UNIFORMS??
Date: Tue, 02 Nov 2021 16:51:43 +0100
In-Reply-To: <20210804173214.1027994-1-abdulras@google.com> (Saleem
	Abdulrasool's message of "Wed, 4 Aug 2021 17:32:14 +0000")
Message-ID: <mvma6imr1ww.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: schwab@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="wB/1cmf5";
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519
 header.b=x2Voycqq;       spf=pass (google.com: domain of schwab@suse.de
 designates 195.135.220.28 as permitted sender) smtp.mailfrom=schwab@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

When building external modules, vdso_prepare should not be run.  If the
kernel sources are read-only, it will fail.

Fixes: fde9c59aebaf ("riscv: explicitly use symbol offsets for VDSO")
Signed-off-by: Andreas Schwab <schwab@suse.de>
---
 arch/riscv/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 0eb4568fbd29..41f3a75fe2ec 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -108,11 +108,13 @@ PHONY += vdso_install
 vdso_install:
 	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
 
+ifeq ($(KBUILD_EXTMOD),)
 ifeq ($(CONFIG_MMU),y)
 prepare: vdso_prepare
 vdso_prepare: prepare0
 	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso include/generated/vdso-offsets.h
 endif
+endif
 
 ifneq ($(CONFIG_XIP_KERNEL),y)
 ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)
-- 
2.33.1


-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mvma6imr1ww.fsf%40suse.de.
