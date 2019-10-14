Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLOFR7WQKGQEJCTZY2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A2959D59AD
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 04:51:26 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id r7sf12589457pfg.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 19:51:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571021485; cv=pass;
        d=google.com; s=arc-20160816;
        b=tSkgMntrFeC/ajiddJxjN0NR1aXx+Y3Pwzn4a0ENF8tl1qdMyeFkpEKQ7/crV6vWzT
         2PMHc227CUHoB6wTrlRWy1dx0ZFlQbwiPBPXNCRD1qKIuc/PC2GwBQrmQzkyQLt5yEC7
         KH5gJgMQJ7SxfegkS8/LFDjxc8T8G4C5diwGvNUu43tmClKm1MQEbQVmfY7HoAetdM54
         Ii0JjW5sRuVpHBx0VBAfYYvDQ3lcqUr+W/bhz25GPU1aOmIZ5+INUyI46iiqo31fq6+h
         8LMYCC9I9Gb37hCuyTAaMW//78OUD+zBFrk8Neo5Ud2Dzw7VJbp+BriO/OMcg/fjZd/U
         AGRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=nbTj4B/QPTcNeJR7rJFS6HeoY5aDekkmAroyM3Rs78Y=;
        b=rdaXuhmpBhVGPqXKRtsi3F/TM/aoUxTGvzNmeC6HP/E7zxYeHWLlIlVlmSwNsUTZRK
         OjJGU9qhjsLrp8/YXPxq6hye0Z3/dm1PSLUY3z7rJ3j/hK3ZmBjqMnugTUy2jn9R5AMS
         IuvD0oXbuliJeBl6v2g1eH9SsWNVTXVonBSKsjQbOhK97a1L0PTOAFnkIFuiUzFrzuaJ
         j+4FoUS0ex9FZkl9/9OE9Ho4NMny9nuUseNSBq2GMZjRPNirep/znjW0HINEPrprtEUS
         j/vod64vvbm0UbDT+FSUJp0p5eDBYaaG626x+nPGMBsk8KPAGQFJBc4S6f1B1WEi194I
         uxlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DAHcZpcH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nbTj4B/QPTcNeJR7rJFS6HeoY5aDekkmAroyM3Rs78Y=;
        b=GETH2mu0jiSvYokOUxxbS6sQE9uNs34UZ6B32gxSBR3amdagacLWtd9b2z150mthbS
         fJCVJz5bZXpaNni1wen9kL3Fegu6uy5IqZdyECTZIh+M0ghTkWZjC8Yls3gjuUoa1k6s
         +yAhUQ6vGrXwPQuzg2fXUVKNVCwRMl/ZZwrQRzFQI0bFluKmYBx7ChiSNIG+byy7qyK8
         mUJRx3/7dFID+5ca7s+MWJnzQAJH1rjHMyMH7GzF0d0i77nsm6vmIuwF2mZQsEM9UcZ2
         0xdQqiOfwBH8z0CFTn1pwOcafCWOPv6xJqSt2xVvLvHrHwQjpylI5GfON8iPHiy4tU5p
         KNRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nbTj4B/QPTcNeJR7rJFS6HeoY5aDekkmAroyM3Rs78Y=;
        b=oOY7hO1/rIZq18pkTk4UHU6WNyG8AQ9z3SjQlsRA2ra2RnvgKahWah9ub6na80I14x
         73Ica4wbq4v6nTlXjQFGRPOPKzFdT8wFVryBXEG0IIhuVuQcTIRAtX+Z0F4M5gzLQNzY
         RR5zOwUE4HntcUm9UYSrSh+I1Ph1HkggymVYR4KdoyAZnJHCIl4a38x6dbeKclH0QrsR
         edsnbhtXPAgLKNW5ytQOnjvJ7kGyYeMLH4cpHq6Fh1DUG/TeAiwfr7tVZbnVhHxpXmcI
         loLeIyl8qpHkStAg7Kjy3tsEKcGGubEnGVQP+dSl8NlVp5+0YbghjqWNF/gh3dgp0Yps
         fB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nbTj4B/QPTcNeJR7rJFS6HeoY5aDekkmAroyM3Rs78Y=;
        b=IRWHLanKe5KmFk5ctiTOqHNt1eHKdjHKRvFIs5u0uAfXPA7tI34Xr753l/k+MOodV5
         TEECeDU0DDTxP0PJeXg5/zhxwaqa5zFxAIYL8sxIB7pEbi5s7c7mgrAIBaet1NM8dNfu
         i/FnCMNCEqbT7gLoFs63pv1waWXA7/oFdDZnYQ30XyM9VanhINgCV8bwcR7/T3yNT7Zm
         znM4ijP0JfllsIjp0nSy8OE5k8mWKX5HtXg5M+FcS+7Xvn1p+sXlW8PqsAT/v12HZUbo
         M3+/ZmwzeDfyQS2Xj8H8nIwwoIVFGpkSZKzrwhfGnv804sehCBsYihG9Ml2CoXZtUrkA
         3teA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/rfsVBB+csIqMwz6w85pVEQjQSRmq9/nsMJr96Tft7NVDg5y/
	9pfSPvFpCuKeTXrzhbicKsI=
X-Google-Smtp-Source: APXvYqzAMgDOeR0SBYEk0eXXFRcw0GIh3G/yHkvUdNt+DFjQZ8bqq5P9PQqEAfFVNQvfP46GnU1M1g==
X-Received: by 2002:a17:902:ac88:: with SMTP id h8mr10243116plr.324.1571021485327;
        Sun, 13 Oct 2019 19:51:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3726:: with SMTP id u35ls4304010pjb.2.canary-gmail;
 Sun, 13 Oct 2019 19:51:25 -0700 (PDT)
X-Received: by 2002:a17:90a:d347:: with SMTP id i7mr34032786pjx.30.1571021485040;
        Sun, 13 Oct 2019 19:51:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571021485; cv=none;
        d=google.com; s=arc-20160816;
        b=Hio7tk1dGlH3otJXAtvpXmG6s9PNiClbNI0CePAOIoHLBiG08/wNolEWzwI1SY4yJO
         eaXEwH3K/PAqLmqKIyBn0DvEHvS4X3FD1G6M5sOuH1TKgrWEfxD7FhmrfkzHkHppH5IW
         D9VDA2MmN4sJujvJ9UANowW/UvPHZVPSdwjRly4BC8cl9L2HKeAKQtFCtF9Qp1BKtGXw
         qV9u0CZpnG4bw16coMmKS7SCQpnoY2eEusxE+3RgcJRqR37MKYQ0lyOIZgrRx/X/cLYG
         HYNFbdTdtHMWLk1XSNi6+70Wt/KnLkUhRvvvPT2LFvA/jGHjzYMzk5QenqFRvdVfSHZg
         BI8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ELg5bkMi+FoappyTCFIUx1Rg8zAW2tMRA+teB43Z1gY=;
        b=dGgxBM5LCbo4qsK93xUu3ttJbQDGfKwF5KQa4kp6+JVFo0iEHfBbvAmHyuKm1Yw0F1
         USZhGSedgDEO9fy5SxCaWtVs6iHXj/JCO39jtbd2prVkmBScgzaiADc/4MPojOAiteYv
         47qKkCr64uCDkvHkvtYSIF1UVAagizvKSx+RDvITwtW1TxEGQPZxkpl+oBHVpfdliTM8
         aas2Id4frXNcdDCII0NWLhB6XzoByvBRPqthS2+GLQ+i7yAoAXS6n0z0P62+Yg1rg383
         WhhzHqQxj2p/MiFSeoPJdJlwvBvix5bYD+bqeNfjTWGSZHyEz8AI0ycqpkUxegBpMpDb
         18qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DAHcZpcH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 124si981444pgd.4.2019.10.13.19.51.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 19:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id w144so12548227oia.6
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 19:51:25 -0700 (PDT)
X-Received: by 2002:a54:418c:: with SMTP id 12mr22608906oiy.154.1571021484434;
        Sun, 13 Oct 2019 19:51:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 11sm5612491otg.62.2019.10.13.19.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 19:51:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a reference to bcmp
Date: Sun, 13 Oct 2019 19:51:01 -0700
Message-Id: <20191014025101.18567-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014025101.18567-1-natechancellor@gmail.com>
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20191014025101.18567-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DAHcZpcH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

r374662 gives LLVM the ability to convert certain loops into a reference
to bcmp as an optimization; this breaks prom_init_check.sh:

  CALL    arch/powerpc/kernel/prom_init_check.sh
Error: External symbol 'bcmp' referenced from prom_init.c
make[2]: *** [arch/powerpc/kernel/Makefile:196: prom_init_check] Error 1

bcmp is defined in lib/string.c as a wrapper for memcmp so this could be
added to the whitelist. However, commit 450e7dd4001f ("powerpc/prom_init:
don't use string functions from lib/") copied memcmp as prom_memcmp to
avoid KASAN instrumentation so having bcmp be resolved to regular memcmp
would break that assumption. Furthermore, because the compiler is the
one that inserted bcmp, we cannot provide something like prom_bcmp.

To prevent LLVM from being clever with optimizations like this, use
-ffreestanding to tell LLVM we are not hosted so it is not free to make
transformations like this.

Link: https://github.com/ClangBuiltLinux/linux/issues/647
Link: https://github.com/llvm/llvm-project/commit/76cdcf25b883751d83402baea6316772aa73865c
Reviewed-by: Nick Desaulneris <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v3:

* New patch in the series

v3 -> v4:

* Rebase on v5.4-rc3.

* Add Nick's reviewed-by tag.

* Update the LLVM commit reference to the latest applied version (r374662)
  as it was originally committed as r370454, reverted in r370788, and
  reapplied as r374662.

 arch/powerpc/kernel/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index f1f362146135..7f0ee465dfb6 100644
--- a/arch/powerpc/kernel/Makefile
+++ b/arch/powerpc/kernel/Makefile
@@ -21,7 +21,7 @@ CFLAGS_prom_init.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 CFLAGS_btext.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 CFLAGS_prom.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 
-CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector)
+CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector) -ffreestanding
 
 ifdef CONFIG_FUNCTION_TRACER
 # Do not trace early boot code
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014025101.18567-4-natechancellor%40gmail.com.
