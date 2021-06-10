Return-Path: <clang-built-linux+bncBAABBBNMR2DAMGQEAYWRY6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E543A4729
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:57:42 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id r190-20020a375dc70000b02903acea04c19fsf1172144qkb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430661; cv=pass;
        d=google.com; s=arc-20160816;
        b=gbyW/TbcYfs5anUGi4Nl54rv3ELAYuOwkeudzm6ubUbm1Wc/C1HfEyP4+4aT+xonBu
         bBdcMHNo0XBmFavfmZuKCTEJP+uEYtxkKnGAjqF/CBURh/WJTq0QiNv0S1wOf8VwPlkW
         OlNWxymzwgNeBzL6z5/fM18PbQW1reELj45GWGav+KJOsthefNt0+RYxBIa1/+1fK3IM
         TbqPZKHDEleSo6UCJe7SF5jlvRIMgpnY0BhwJvz84Cj+fH5P3vGnpMWpU9Q6oUKZwxYZ
         aWE4vHsok0FJvn7aHFv35AIbMPIS6KEcAHl+NAennLnMaz6D0qagMPKFHsM0xMATeiW2
         13DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:message-id:cc:to:from:date:dkim-signature;
        bh=PKF7cKXDWSfVe2KdkaCWHQDt/LwDEb/2ffzfyRTa2do=;
        b=cVUtEahaARKMxgKSEX5YCOJrT7B7J7dM/fQ9zb+NxPub6lijWzKkv9k7cD+BQ/kpK5
         2kwXdgsRJzBKT+cOzXdKtn6DFa3M2WDXEpA4qnkitEXL66LxBXjScYW7xG3Fcm0FsuQP
         xu4hMn/b385mplbaFctR3DsSGVv8wRUptH4RW68rICCu1MPlFMIMVLm/8ktw0SDP5x00
         vbGwpz2OWN3plh5Le0VqWdA4qlRfZNH2d+Qn6xFHlziLu9QCvEzIyMH4SZT/n+1QUc+s
         OGJy2K3WF+Mt2cK673Hsb0XekHCS4NgruPBY4hDqydOA7k/yuBX6+yaqCt7Ujor/O8ga
         lqpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=lddhgl0a;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=eZkwL6Ao;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:subject:mime-version:importance
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PKF7cKXDWSfVe2KdkaCWHQDt/LwDEb/2ffzfyRTa2do=;
        b=DW9DieqL74p11rrxr8AEKGo5MuP4m2+0/fA75zgdFaHblK3p3IDbkNIFDkLKbnLjKq
         XBpeR9bnbSjvDfHBfJUhaltHTTJjYpelJOOmGOIYgv7gWHNvN1XdDvmAX8/7z3V107Qo
         rXyppsPPV+Y0ztV+hlxSe6bK+KO2kaWrSdGZkxpT7OxYWStEwgbe2yxhUjQ6jBUYeK6G
         7aIFhsgAFLcAO8lJcoZ+sM/ih+5OwTvHzVUckQHTHJ2MZv6OlJsbpY29CoZWFwQvic6H
         Ny9yVJzQliWaUPoRDrsfY4hudCljra1ifvZ18//W4XsEORgYPi/5vslUnBmAmERK/Rou
         wudA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version
         :importance:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PKF7cKXDWSfVe2KdkaCWHQDt/LwDEb/2ffzfyRTa2do=;
        b=kWJzrfbPN7vAgTbQMCcuD32doqPxxPGwdaxnfGXTtcLeOl2bpNUAfbq/BChyf0ziXz
         KodLyHmD6uOTdKqsbuoxbQ4L5b7XNSBR07B2UmjP7K4Y8AkwX/VGt3Yh1rS7TbQOLG3I
         EzgB/wqF/VKarhpy5Wy2Xyeim9Sun3hfAPdSywYWXqFyYg84k7DI6gy/C1Rolxsqp6yC
         yk3YRR6g524DBFNVSrKAnmiatbrzjHqJnxVCEK2EbI75glF59QyalTaVCQi3h0Bu6T+h
         0rp++5Dnh6d3m+jd4icYaFcL2UFqECNExQiQwUGCYENMejcGgut3sn9LAtL6Sc6hS1mg
         0DGA==
X-Gm-Message-State: AOAM531xkf0aspVLJiI+JT9/esvhImMYDM6n+2TVI0Gz41yQl/SdnUKQ
	B4S+dhjD5j++tVwtiYww/nM=
X-Google-Smtp-Source: ABdhPJydfwW5K9o9fkb4CLJRWObC6rdakkSGQLwGYrNvnlmSprbFtM/Tkdg0htNau2TP9xFr1is0IQ==
X-Received: by 2002:ae9:ed01:: with SMTP id c1mr4743769qkg.199.1623430661403;
        Fri, 11 Jun 2021 09:57:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:c87:: with SMTP id q7ls4165967qki.1.gmail; Fri, 11
 Jun 2021 09:57:41 -0700 (PDT)
X-Received: by 2002:a05:620a:806:: with SMTP id s6mr1849967qks.201.1623430661098;
        Fri, 11 Jun 2021 09:57:41 -0700 (PDT)
Received: by 2002:a05:620a:1325:b029:3a5:4874:4199 with SMTP id af79cd13be357-3ab1d15d8dfms85a;
        Thu, 10 Jun 2021 02:28:17 -0700 (PDT)
X-Received: by 2002:a17:906:158c:: with SMTP id k12mr3618532ejd.274.1623317296386;
        Thu, 10 Jun 2021 02:28:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623317296; cv=none;
        d=google.com; s=arc-20160816;
        b=e0sttb58jVTepZ+7HmgUC3SH8FGZJQfpG/hkawnZrHBiizuhzzC3blYguo+3nkex2L
         0IR91xeJNiZi2Fp+2EjCea5IKS/4fC3GJMZ3xq13SlEYg38q1JE8zHzdQuCNUX0PQpdc
         jV6fPzJ0rpkyyWdJJ0Dr5OZJ2xeO6bmyDOf261IvFk3mKi9LwVDqeHrLXFwfDi9GH6ue
         7hJYMItTW4z4B2SgTX5h5+wWRPDFptbMhrSsMHXcRo/q/IOpQZe0G/IY0LGJ8Muwgo0z
         bG1BmTJ+dGh5kuV1Qw27MPugS/xgncUq/6MX4GUXpBPG6CgbkyeJDlUhoySAR0748dD8
         4J/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :message-id:cc:to:from:date:dkim-signature:dkim-signature;
        bh=+5/kdhJ1QddJK81vRh3OO6rMlzIyFuqMZwmf8YHz1N4=;
        b=gIF4EG4XXaI+x3qhCKl/gy/nEn6JrIEj/aA4duuwzkTzdQ5pXagejLRmocjsIRZo/W
         dD5jgmE3HWrMFH02RjenIFvHkL055qKE8HjkFKp9k7JSq9gsaem2fAo1xDxF2pA72pqd
         5jocUHaMgXRyIPGo+CnumAdZlGcTrVAl1gefdGCbJA0DH/AyOO0sYZ4XHiJk/fUpLG1h
         VWeFpdZGyUOBHIjUZLxb3S15gSfnVSKHnmsmI/nvt6JsOf5Jxmr0eZCmjreEfWX0rEYS
         bPar/DzCf148uwq1NnS/Kg/iETTUu6d8nQHQuayGHOl9sBmJX2FGG8iKzxVVHE5NWH0T
         SFmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=lddhgl0a;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=eZkwL6Ao;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org. [80.241.56.171])
        by gmr-mx.google.com with ESMTPS id cz2si133276edb.5.2021.06.10.02.28.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 02:28:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) client-ip=80.241.56.171;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4G0zDJ1JgPzQk27;
	Thu, 10 Jun 2021 11:28:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de [80.241.56.116]) (amavisd-new, port 10030)
	with ESMTP id mOch9IlfOmlB; Thu, 10 Jun 2021 11:28:04 +0200 (CEST)
Date: Thu, 10 Jun 2021 11:28:04 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nathan@kernel.org" <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	"mingo@redhat.com" <mingo@redhat.com>
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"x86@kernel.org" <x86@kernel.org>
Message-ID: <214134496.67043.1623317284090@office.mailbox.org>
Subject: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -5.56 / 15.00 / 15.00
X-Rspamd-Queue-Id: C9D4117F3
X-Rspamd-UID: 513dc9
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=lddhgl0a;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=eZkwL6Ao;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 80.241.56.171 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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

Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
leading to the following error message when building a LTO kernel with
Clang-13 and LLD-13:

    ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument 
    '-stack-alignment=8'.  Try 'ld.lld --help'
    ld.lld: Did you mean '--stackrealign=8'?

It also appears that the '-code-model' flag is not necessary anymore starting
with LLVM-9 [2].

Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.

This is for linux-stable 5.12.
Another patch will be submitted for 5.13 shortly (unless there are objections).

Discussion: https://github.com/ClangBuiltLinux/linux/issues/1377
[1]: https://reviews.llvm.org/D103048
[2]: https://reviews.llvm.org/D52322

Signed-off-by: Tor Vic <torvic9@mailbox.org>
---
 arch/x86/Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 1f2e5bf..2855a1a 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -192,8 +192,9 @@ endif
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/214134496.67043.1623317284090%40office.mailbox.org.
