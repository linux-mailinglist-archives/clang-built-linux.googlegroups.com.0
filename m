Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYVSYDXAKGQEGTP2YFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A5FFED3E
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:44:36 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id u197sf9602129pgc.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:44:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919075; cv=pass;
        d=google.com; s=arc-20160816;
        b=XboE9mLwJeK/EvDFqbP5iT7FGDtG74Q36CTKjQ5DiezefreER3LjJ73JHssJEblRtD
         OkVWurXtnJlDElslOa2opPoWFBYYqVZYU3jW6z9xxPjzo88ugsfsmywzC6H/dh8LtUlS
         KOAdqxp4IMekymDCvzlPjlEPv1biLTyy3vDvV2h2lhHIQ6H3z36lZBVW5sa+lAJNdWWQ
         lCsCtyRsMmI73lpNJhjcehocdHQ4wS3TK2U0E+KeHnQsSOZKU0f2kBMpoSWdbOmuVwGQ
         JmTM/8qpZs/WjuyzswpJ1yXfK282ogSmNHz6wZC0QpQDdE1R0hiEWPSXFN0c7nSjNKI8
         kchA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=U0MnjOlnxXpoBa0g88wa1TYZJNXgNVlNVNfuiYh3reA=;
        b=IR9cxxXKdr2tYhcNjDdfW2CUeoPJtFIyjLLZ5l0obtCt3UEb5KADpyTVUzM3v8mgG2
         GiWNAIHxU8x04PW/jbLLYhyM4sAObpBCamwzxxdBFTul7k8NJSURHWdU5+WBRQcKpzZ6
         wpvz8PFCxWkZTKh7fCVKOQSzSebMnrOaULL9N2UlBgkSc2Y3jKuL2CCrcFGTbNfKHOkO
         oZa2Hq1pLEi/p3PeO9R7YLeUb8twkJ97zUejX+KY0uOULAl6BiG8kfBtqvXtORp9ELZL
         wVYaR7IAjuNE5414w42zkpquTD2dx/ohaeiEg91nucmtjehxp7iKsosuJz8dtGYj6KX2
         7hQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kRK3ikGv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U0MnjOlnxXpoBa0g88wa1TYZJNXgNVlNVNfuiYh3reA=;
        b=RUwM593X1N7upn4rnhmklr03pZhgLwOtTYGVciu3W1GCqxFvwyQM6T4ZxD63vpOGUM
         QRV7CM7+8BYSiCEdGZmn/Omu5nT453Muj3jgvvrThbpDPMg1fNo0wwNbTC3sq8AhHbKh
         kdAiV9OKABWIAl0z/rNE15cGwbFlaLY5blRmrcd4Dhb6TycY5L1L/FsIR7WwwlJ1E48Q
         os1SjN0EvH1svaBDigCTV5XZp0FsqUqA3P3RZ390Qztex/LKluNoEz/W6mQTHZsk5Akm
         OpypbjC8v3MYruFaOZ58nOWnVpoREj+iQxPR4a5rYFkFn7ZcH6jr+PWPKRX0zz0Ytz5W
         OU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U0MnjOlnxXpoBa0g88wa1TYZJNXgNVlNVNfuiYh3reA=;
        b=NN7A3fIetz7fUhkmb8SuuwEleKNmcqzOiA7smCOA7CM5lnaq35C0Ny2BR6AozSM4GK
         MNAaB9V4E4JyL5h1WIL1pcjkdAR+PlElXVQ2G7qIcxvGOHAjtDvaWAT5DVw7XFSZGE8X
         Q7xYe05iZy0MtiTEnMuEQ0L0Gyx5f0KuG++caaEnuDhi0QX75SWK/BI/ZaQBZYgrAnvk
         YJe2qZuygQpw20v+TscA530FKX5R1lbKKDJGpuzLooHC/TB8dvz+22QvWS7j2FwIZseh
         jt5az9s8egmKjcYOUQAsMzAqU1ioxOCrfndSgTXzGVBIiTnMEYOzPQg6GJf9+6iDD5lX
         BvwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUnZxvU6JPnQrphWuw7Z4sGBVp3vdLDMCxqPxP2VdGeN8PoXFOz
	JbUebbXFqUHc8DV96RaQJzw=
X-Google-Smtp-Source: APXvYqzuhyw5NX5XfB/KFtKuI0oBxwn540kROq3Zt8kXBWn4yP7vYzhXlqgCoPeWF0SgRC1kmvQGOg==
X-Received: by 2002:a17:902:9b85:: with SMTP id y5mr20873987plp.334.1573919074962;
        Sat, 16 Nov 2019 07:44:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb90:: with SMTP id m16ls2825018pls.13.gmail; Sat,
 16 Nov 2019 07:44:34 -0800 (PST)
X-Received: by 2002:a17:902:544:: with SMTP id 62mr21266504plf.195.1573919074561;
        Sat, 16 Nov 2019 07:44:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919074; cv=none;
        d=google.com; s=arc-20160816;
        b=XsF7RwsUa0H6+lp/jc0L+fqpdnKuwLEJMu+VLd5LzoOI05zO4C8NPH6dEXR+GXw4bC
         Y6ZwKC5AuoefAE6Q9PjzVroXZ4kOdQk3sUgfXJ08DrgsK2tEGAo3JZ+wQKiJumRdp4Wx
         itCotFB0HrB2vPZ3jMbsBJSFoPruTquNXHEVJCHYGP5TiNT3Fb3W+mrX/3v/l5am5Z0v
         7wdmtPwfFo32qIhhPQAMa77eYND6dA7Cr7cKPqVctaQMBuOKw4J+kSoXGVfKjvr8MUL4
         aqM+poYty3Mf5dkt9MCS6vdF12MLzjUMAgxpn1V1cXf/+VTP1qi+FFzpuh5HExcENMvy
         P6ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Gb7coRBSB/H0dD3lzrlODgehlowbwQauj3Jkst49lvM=;
        b=TsXOxTPr7Lbhd2BihE0FOiYPJDjuRxzNIupfnhdZasigYu3/4TKlBdpR2+S9rD5h5P
         Z+bWPiUBR3EGCPxo0x877HuWCQOvVyeMKiloeCg0J6pmjpgV/epzb/kIT0WYN7VVCmiM
         7Y6rs4EBtrMtH1X8TsL8yHRUMEafXcK9Nxwpz9+wyGaUxAIIzNB09rUEffSJKW+BOGDQ
         wVXKNR8DfX+0zTGDkrzZlXDUhe2G/xua7PPd6v5bauRHGGi9acTcce03Ts8f1FHnCvHj
         XfJBDU7Tw/lff2lfKaUiA+uSxbhAczSYFkczt76sSN76IOoD/QZ5X8B6YdITyjpCt6QI
         ostg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kRK3ikGv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b15si734415pgw.5.2019.11.16.07.44.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:44:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ED3BC2073B;
	Sat, 16 Nov 2019 15:44:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Joel Stanley <joel@jms.id.au>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 143/237] powerpc/xmon: Relax frame size for clang
Date: Sat, 16 Nov 2019 10:39:38 -0500
Message-Id: <20191116154113.7417-143-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kRK3ikGv;       spf=pass
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

From: Joel Stanley <joel@jms.id.au>

[ Upstream commit 9c87156cce5a63735d1218f0096a65c50a7a32aa ]

When building with clang (8 trunk, 7.0 release) the frame size limit is
hit:

 arch/powerpc/xmon/xmon.c:452:12: warning: stack frame size of 2576
 bytes in function 'xmon_core' [-Wframe-larger-than=]

Some investigation by Naveen indicates this is due to clang saving the
addresses to printf format strings on the stack.

While this issue is investigated, bump up the frame size limit for xmon
when building with clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/252
Signed-off-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/powerpc/xmon/Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
index 9d7d8e6d705c4..9ba44e190e5e4 100644
--- a/arch/powerpc/xmon/Makefile
+++ b/arch/powerpc/xmon/Makefile
@@ -13,6 +13,12 @@ UBSAN_SANITIZE := n
 ORIG_CFLAGS := $(KBUILD_CFLAGS)
 KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))
 
+ifdef CONFIG_CC_IS_CLANG
+# clang stores addresses on the stack causing the frame size to blow
+# out. See https://github.com/ClangBuiltLinux/linux/issues/252
+KBUILD_CFLAGS += -Wframe-larger-than=4096
+endif
+
 ccflags-$(CONFIG_PPC64) := $(NO_MINIMAL_TOC)
 
 obj-y			+= xmon.o nonstdio.o spr_access.o
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-143-sashal%40kernel.org.
