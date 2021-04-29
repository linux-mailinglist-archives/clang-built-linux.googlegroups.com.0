Return-Path: <clang-built-linux+bncBAABBC4TVOCAMGQE5OZH6ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF5136ECD9
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 16:58:21 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id c2-20020a1709027242b02900e9636a90acsf28998266pll.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 07:58:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619708300; cv=pass;
        d=google.com; s=arc-20160816;
        b=P75dZreLo8AA0h8f5xABSHekh3oYC9ZHPjs6uwJ74CRCo9mLpoW/wtu9XlHxtpr49A
         mvXhRNR5cLvA9AbTDLauTrzgUho3+MKJeL3R1YxEvNYCtAvUdnTXw6hp3lZXbv0Yap92
         T3kT2MK2O9PQeTCPMMoeYMqmsaZeSkVjdyHvvFH+8zBkAl3xiu0Y4kIDqtylcm4B+jRP
         wiC5bEMhXrnxMZA7BF7AT9hHVbmPzxHY8GfywBnA0RnKmINwCs0+TM7sQHOS9N81k3ZC
         uQ1iENCzuTtHhka1Vq5RkMtVns55gNQwxo2N64RMXa+FlX2uN6vNMYDHXD1jSko+jp9N
         sMwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=iGG+yIg3wHaXiCAkxwXNjcJEesIs57CFpyKlDOEa8W0=;
        b=Czv9Uj+4ujDZNnIyRpCfG6PxRN+jMrRNvSVpOjL1y/EFYS+C1gN+sp7sfhopnkFSOE
         2cS2WktTkF9W49qsyF5RqiSvzZHWHE7gxqJwvDWI2ZrxMCHGtcP86S/48vljqX4/Svsr
         Y8z3jfwlK9CIWa2lxGr/3fIPwvETNl0KXZ+kNfNU7CpNATjS7Tw8CI8YcGGP4bxL864l
         HKtjR7h86cwrBmZM+RjPQKiUsw7V5lbVaWsWFbfFox9kbAuL/fL9Nuk9PPQ2wEnyFrQV
         9RVFt1tCAfHqHZC4NZmeR1gF2moNH89tciLFdilapQsfiU1KXeFkUK6hCB8VvbqxJjG7
         ceDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kwQJLKfO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGG+yIg3wHaXiCAkxwXNjcJEesIs57CFpyKlDOEa8W0=;
        b=ghlBJNQLztBinlHhLPG9URN1xSsWUHh6CfPNY6BOJuRs18TR23Q4KnzY/Na/Z5pAor
         MNlWdC3rbN0pX63X8V7LtsQ3hqJJfgccFo8fTPAHxE5oGeNW7yisKU8p0ozfKHa5bxa2
         2MTlDBoIErDDOSran+z9jwWSVIy0VCFuwsYgjU2+poVJtv1tebn/4vvEQ/KuDtUwc3R7
         d7pxaxN+KE1s3o0jDL7XAo1f2Pq1Ks/NtKw+vRF6MVxLNOTp50L1PkPmhkifgyCqqsyy
         grv0Kvd5n1zZYWF+umSPkyR9qXl1MqeCqxP4tleZzDFQQ//1qBV8JVmgXB3WaFRE7t7b
         8eXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iGG+yIg3wHaXiCAkxwXNjcJEesIs57CFpyKlDOEa8W0=;
        b=ad062FYmTVOuaQVH375oUo0JkXmE37jGoE7N56eCL3yYk69pkKi+gYf+tPERB31J2n
         ys+lyphUVd0jFT340jxFHOHQKhnTzq5CEGU4C8iEmJgCW+ky43HIOEfk0uoXXPo3T0ML
         /NQ8hEhJt0mM+JriEEksYzPODP5zzEZ+M1A0mopR4w6/IMfZmwcIUddrRDNYl/mR8OB0
         +oZ8pwesTmK5uQrR1PZU2jomN/Mh7Io05TZ70vt1xJ+yExt/FgyaR3OAI6GYr2Jtx+SB
         2e5b/YmcpdwiYMWtU+DTEOzBhlVQJd9to6od8yQzbRxa56e0exis5d/EO8R4KodQr9v8
         hbPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eGYcvg0tmGZ0Ddyf/SN5FStpIhFhtQlWexVIVD/CfPO4KVZPn
	L0JQH1g+zEvQMI2VyiPWUww=
X-Google-Smtp-Source: ABdhPJxOej7Q/ZVfJOxjjXlKv0gB3fadIo6IIAxzmDia+VF1bkkuiuxy2iXSRUclmR5qtUDHKRxLSA==
X-Received: by 2002:a65:4cc5:: with SMTP id n5mr131476pgt.80.1619708299812;
        Thu, 29 Apr 2021 07:58:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls1711916plb.11.gmail; Thu, 29
 Apr 2021 07:58:19 -0700 (PDT)
X-Received: by 2002:a17:90a:bb93:: with SMTP id v19mr10026653pjr.127.1619708299355;
        Thu, 29 Apr 2021 07:58:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619708299; cv=none;
        d=google.com; s=arc-20160816;
        b=OftkHcNGxN+oL+IOKYWJv83K7FSElm8uh9efjfdvgxsjt5c82uGmeUp+LxkEZZG9Bg
         WdX6ZWAlM39sicotwrKQs1Z6xWDsTl1tx1ixWcseCV+QekrqrodrAmtX09Y4TYbEX/R5
         yejt630fvjNJa+wyMv7l9aDSQ8QdqUGspT5ZXFN+kEoFiGPidQ9RqQXGPtE7Qbrp6KUZ
         mXpZ1XfeXXnIUVpvC/IqrOAIHCbBC3p5b3nHBEDSX+ZoRZLhZsBajQHMbjHYxZxz60JO
         QZQL0JlYDnkvhAGqghTP+Sx84F8/bhQ+ny9WlSwPCInLTatc4Qqjqd8uu8jYEM/m9o34
         JOVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LGtbq9OKTLOREApghOTZO8I0DF3xK1a+9qOwory7pRs=;
        b=KunXDAdfFcwcAUhXMy0AC4bko98E2VXO0KBK+1VZGRViOGnY4hY6t1sJ0HggYw6MBn
         hNmwYpdpVkftCCIYFzWz0Zt7J5LLGWDcYy41SiqCnycH2M/EDCF4Wl4ygWaBbvOymTkC
         eQhqcax9sRINxGOV/GSRZ+EH4onQR3WcsfIBubW0PAkLkKX2CF1LDGEoPVWsSL9370fd
         IO5C7wst4xt625A5vdeO93S3mQk51vBM+jjWVEBiQDIhOUOA+kgkcZoeRI/gsT8Rya0T
         CzO2gI4EXreWj0ro5TeCy1GyEScsq+lAtMKKyWUsBIlBZ1Cl3qpMrAfKiL5NpI0kRx4Y
         eOqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kwQJLKfO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n21si290123pjq.1.2021.04.29.07.58.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 07:58:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A117061441;
	Thu, 29 Apr 2021 14:58:15 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Mike Leach <mike.leach@linaro.org>,
	Leo Yan <leo.yan@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
	Qi Liu <liuqi115@huawei.com>,
	Tingwei Zhang <tingwei@codeaurora.org>,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] coresight: etm4x: avoid build failure with unrolled loops
Date: Thu, 29 Apr 2021 16:57:26 +0200
Message-Id: <20210429145752.3218324-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kwQJLKfO;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

clang-12 fails to build the etm4x driver with -fsanitize=array-bounds,
where it decides to unroll certain loops in a way that result in a
C variable getting put into an inline assembly

<instantiation>:1:7: error: expected constant expression in '.inst' directive
.inst (0xd5200000|((((2) << 19) | ((1) << 16) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 7) & 0x7)) << 12) | ((((((((((0x160 + (i * 4))))) >> 2))) & 0xf)) << 8) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 4) & 0x7)) << 5)))|(.L__reg_num_x8))
      ^
drivers/hwtracing/coresight/coresight-etm4x-core.c:702:4: note: while in macro instantiation
                        etm4x_relaxed_read32(csa, TRCCNTVRn(i));
                        ^
drivers/hwtracing/coresight/coresight-etm4x.h:403:4: note: expanded from macro 'etm4x_relaxed_read32'
                 read_etm4x_sysreg_offset((offset), false)))
                 ^
drivers/hwtracing/coresight/coresight-etm4x.h:383:12: note: expanded from macro 'read_etm4x_sysreg_offset'
                        __val = read_etm4x_sysreg_const_offset((offset));       \
                                ^
drivers/hwtracing/coresight/coresight-etm4x.h:149:2: note: expanded from macro 'read_etm4x_sysreg_const_offset'
        READ_ETM4x_REG(ETM4x_OFFSET_TO_REG(offset))
        ^
drivers/hwtracing/coresight/coresight-etm4x.h:144:2: note: expanded from macro 'READ_ETM4x_REG'
        read_sysreg_s(ETM4x_REG_NUM_TO_SYSREG((reg)))
        ^
arch/arm64/include/asm/sysreg.h:1108:15: note: expanded from macro 'read_sysreg_s'
        asm volatile(__mrs_s("%0", r) : "=r" (__val));                  \
                     ^
arch/arm64/include/asm/sysreg.h:1074:2: note: expanded from macro '__mrs_s'
"       mrs_s " v ", " __stringify(r) "\n"                      \
 ^

This only happened in a few loops in which the array bounds sanitizer
added a special case for an array overflow that clang determined to be
possible, but any compiler is free to unroll any of the loops in the
same way that breaks the sysreg macros.

Introduce helper functions that perform a sysreg access with a
non-constant register number and use them in each call that passes
a loop counter.

Link: https://github.com/ClangBuiltLinux/linux/issues/1310
Link: https://lore.kernel.org/lkml/20210225094324.3542511-1-arnd@kernel.org/
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../coresight/coresight-etm4x-core.c          | 78 +++++++++----------
 drivers/hwtracing/coresight/coresight-etm4x.h | 69 ++++++++++++++++
 2 files changed, 108 insertions(+), 39 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
index db881993c211..73649d9c89d2 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
@@ -381,14 +381,14 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 	if (drvdata->nr_pe_cmp)
 		etm4x_relaxed_write32(csa, config->vipcssctlr, TRCVIPCSSCTLR);
 	for (i = 0; i < drvdata->nrseqstate - 1; i++)
-		etm4x_relaxed_write32(csa, config->seq_ctrl[i], TRCSEQEVRn(i));
+		etm4x_relaxed_write32_varreg(csa, config->seq_ctrl[i], TRCSEQEVRn(i));
 	etm4x_relaxed_write32(csa, config->seq_rst, TRCSEQRSTEVR);
 	etm4x_relaxed_write32(csa, config->seq_state, TRCSEQSTR);
 	etm4x_relaxed_write32(csa, config->ext_inp, TRCEXTINSELR);
 	for (i = 0; i < drvdata->nr_cntr; i++) {
-		etm4x_relaxed_write32(csa, config->cntrldvr[i], TRCCNTRLDVRn(i));
-		etm4x_relaxed_write32(csa, config->cntr_ctrl[i], TRCCNTCTLRn(i));
-		etm4x_relaxed_write32(csa, config->cntr_val[i], TRCCNTVRn(i));
+		etm4x_relaxed_write32_varreg(csa, config->cntrldvr[i], TRCCNTRLDVRn(i));
+		etm4x_relaxed_write32_varreg(csa, config->cntr_ctrl[i], TRCCNTCTLRn(i));
+		etm4x_relaxed_write32_varreg(csa, config->cntr_val[i], TRCCNTVRn(i));
 	}
 
 	/*
@@ -396,29 +396,29 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 	 * such start at 2.
 	 */
 	for (i = 2; i < drvdata->nr_resource * 2; i++)
-		etm4x_relaxed_write32(csa, config->res_ctrl[i], TRCRSCTLRn(i));
+		etm4x_relaxed_write32_varreg(csa, config->res_ctrl[i], TRCRSCTLRn(i));
 
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
 		/* always clear status bit on restart if using single-shot */
 		if (config->ss_ctrl[i] || config->ss_pe_cmp[i])
 			config->ss_status[i] &= ~BIT(31);
-		etm4x_relaxed_write32(csa, config->ss_ctrl[i], TRCSSCCRn(i));
-		etm4x_relaxed_write32(csa, config->ss_status[i], TRCSSCSRn(i));
+		etm4x_relaxed_write32_varreg(csa, config->ss_ctrl[i], TRCSSCCRn(i));
+		etm4x_relaxed_write32_varreg(csa, config->ss_status[i], TRCSSCSRn(i));
 		if (etm4x_sspcicrn_present(drvdata, i))
-			etm4x_relaxed_write32(csa, config->ss_pe_cmp[i], TRCSSPCICRn(i));
+			etm4x_relaxed_write32_varreg(csa, config->ss_pe_cmp[i], TRCSSPCICRn(i));
 	}
 	for (i = 0; i < drvdata->nr_addr_cmp; i++) {
-		etm4x_relaxed_write64(csa, config->addr_val[i], TRCACVRn(i));
-		etm4x_relaxed_write64(csa, config->addr_acc[i], TRCACATRn(i));
+		etm4x_relaxed_write64_varreg(csa, config->addr_val[i], TRCACVRn(i));
+		etm4x_relaxed_write64_varreg(csa, config->addr_acc[i], TRCACATRn(i));
 	}
 	for (i = 0; i < drvdata->numcidc; i++)
-		etm4x_relaxed_write64(csa, config->ctxid_pid[i], TRCCIDCVRn(i));
+		etm4x_relaxed_write64_varreg(csa, config->ctxid_pid[i], TRCCIDCVRn(i));
 	etm4x_relaxed_write32(csa, config->ctxid_mask0, TRCCIDCCTLR0);
 	if (drvdata->numcidc > 4)
 		etm4x_relaxed_write32(csa, config->ctxid_mask1, TRCCIDCCTLR1);
 
 	for (i = 0; i < drvdata->numvmidc; i++)
-		etm4x_relaxed_write64(csa, config->vmid_val[i], TRCVMIDCVRn(i));
+		etm4x_relaxed_write64_varreg(csa, config->vmid_val[i], TRCVMIDCVRn(i));
 	etm4x_relaxed_write32(csa, config->vmid_mask0, TRCVMIDCCTLR0);
 	if (drvdata->numvmidc > 4)
 		etm4x_relaxed_write32(csa, config->vmid_mask1, TRCVMIDCCTLR1);
@@ -777,13 +777,13 @@ static void etm4_disable_hw(void *info)
 	/* read the status of the single shot comparators */
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
 		config->ss_status[i] =
-			etm4x_relaxed_read32(csa, TRCSSCSRn(i));
+			etm4x_relaxed_read32_varreg(csa, TRCSSCSRn(i));
 	}
 
 	/* read back the current counter values */
 	for (i = 0; i < drvdata->nr_cntr; i++) {
 		config->cntr_val[i] =
-			etm4x_relaxed_read32(csa, TRCCNTVRn(i));
+			etm4x_relaxed_read32_varreg(csa, TRCCNTVRn(i));
 	}
 
 	coresight_disclaim_device_unlocked(csdev);
@@ -1151,7 +1151,7 @@ static void etm4_init_arch_data(void *info)
 	drvdata->nr_ss_cmp = BMVAL(etmidr4, 20, 23);
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
 		drvdata->config.ss_status[i] =
-			etm4x_relaxed_read32(csa, TRCSSCSRn(i));
+			etm4x_relaxed_read32_varreg(csa, TRCSSCSRn(i));
 	}
 	/* NUMCIDC, bits[27:24] number of Context ID comparators for tracing */
 	drvdata->numcidc = BMVAL(etmidr4, 24, 27);
@@ -1595,31 +1595,31 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
 	state->trcvdarcctlr = etm4x_read32(csa, TRCVDARCCTLR);
 
 	for (i = 0; i < drvdata->nrseqstate - 1; i++)
-		state->trcseqevr[i] = etm4x_read32(csa, TRCSEQEVRn(i));
+		state->trcseqevr[i] = etm4x_read32_varreg(csa, TRCSEQEVRn(i));
 
 	state->trcseqrstevr = etm4x_read32(csa, TRCSEQRSTEVR);
 	state->trcseqstr = etm4x_read32(csa, TRCSEQSTR);
 	state->trcextinselr = etm4x_read32(csa, TRCEXTINSELR);
 
 	for (i = 0; i < drvdata->nr_cntr; i++) {
-		state->trccntrldvr[i] = etm4x_read32(csa, TRCCNTRLDVRn(i));
-		state->trccntctlr[i] = etm4x_read32(csa, TRCCNTCTLRn(i));
-		state->trccntvr[i] = etm4x_read32(csa, TRCCNTVRn(i));
+		state->trccntrldvr[i] = etm4x_read32_varreg(csa, TRCCNTRLDVRn(i));
+		state->trccntctlr[i] = etm4x_read32_varreg(csa, TRCCNTCTLRn(i));
+		state->trccntvr[i] = etm4x_read32_varreg(csa, TRCCNTVRn(i));
 	}
 
 	for (i = 0; i < drvdata->nr_resource * 2; i++)
-		state->trcrsctlr[i] = etm4x_read32(csa, TRCRSCTLRn(i));
+		state->trcrsctlr[i] = etm4x_read32_varreg(csa, TRCRSCTLRn(i));
 
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
-		state->trcssccr[i] = etm4x_read32(csa, TRCSSCCRn(i));
-		state->trcsscsr[i] = etm4x_read32(csa, TRCSSCSRn(i));
+		state->trcssccr[i] = etm4x_read32_varreg(csa, TRCSSCCRn(i));
+		state->trcsscsr[i] = etm4x_read32_varreg(csa, TRCSSCSRn(i));
 		if (etm4x_sspcicrn_present(drvdata, i))
-			state->trcsspcicr[i] = etm4x_read32(csa, TRCSSPCICRn(i));
+			state->trcsspcicr[i] = etm4x_read32_varreg(csa, TRCSSPCICRn(i));
 	}
 
 	for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
-		state->trcacvr[i] = etm4x_read64(csa, TRCACVRn(i));
-		state->trcacatr[i] = etm4x_read64(csa, TRCACATRn(i));
+		state->trcacvr[i] = etm4x_read64_varreg(csa, TRCACVRn(i));
+		state->trcacatr[i] = etm4x_read64_varreg(csa, TRCACATRn(i));
 	}
 
 	/*
@@ -1630,10 +1630,10 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
 	 */
 
 	for (i = 0; i < drvdata->numcidc; i++)
-		state->trccidcvr[i] = etm4x_read64(csa, TRCCIDCVRn(i));
+		state->trccidcvr[i] = etm4x_read64_varreg(csa, TRCCIDCVRn(i));
 
 	for (i = 0; i < drvdata->numvmidc; i++)
-		state->trcvmidcvr[i] = etm4x_read64(csa, TRCVMIDCVRn(i));
+		state->trcvmidcvr[i] = etm4x_read64_varreg(csa, TRCVMIDCVRn(i));
 
 	state->trccidcctlr0 = etm4x_read32(csa, TRCCIDCCTLR0);
 	if (drvdata->numcidc > 4)
@@ -1708,38 +1708,38 @@ static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
 	etm4x_relaxed_write32(csa, state->trcvdarcctlr, TRCVDARCCTLR);
 
 	for (i = 0; i < drvdata->nrseqstate - 1; i++)
-		etm4x_relaxed_write32(csa, state->trcseqevr[i], TRCSEQEVRn(i));
+		etm4x_relaxed_write32_varreg(csa, state->trcseqevr[i], TRCSEQEVRn(i));
 
 	etm4x_relaxed_write32(csa, state->trcseqrstevr, TRCSEQRSTEVR);
 	etm4x_relaxed_write32(csa, state->trcseqstr, TRCSEQSTR);
 	etm4x_relaxed_write32(csa, state->trcextinselr, TRCEXTINSELR);
 
 	for (i = 0; i < drvdata->nr_cntr; i++) {
-		etm4x_relaxed_write32(csa, state->trccntrldvr[i], TRCCNTRLDVRn(i));
-		etm4x_relaxed_write32(csa, state->trccntctlr[i], TRCCNTCTLRn(i));
-		etm4x_relaxed_write32(csa, state->trccntvr[i], TRCCNTVRn(i));
+		etm4x_relaxed_write32_varreg(csa, state->trccntrldvr[i], TRCCNTRLDVRn(i));
+		etm4x_relaxed_write32_varreg(csa, state->trccntctlr[i], TRCCNTCTLRn(i));
+		etm4x_relaxed_write32_varreg(csa, state->trccntvr[i], TRCCNTVRn(i));
 	}
 
 	for (i = 0; i < drvdata->nr_resource * 2; i++)
-		etm4x_relaxed_write32(csa, state->trcrsctlr[i], TRCRSCTLRn(i));
+		etm4x_relaxed_write32_varreg(csa, state->trcrsctlr[i], TRCRSCTLRn(i));
 
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
-		etm4x_relaxed_write32(csa, state->trcssccr[i], TRCSSCCRn(i));
-		etm4x_relaxed_write32(csa, state->trcsscsr[i], TRCSSCSRn(i));
+		etm4x_relaxed_write32_varreg(csa, state->trcssccr[i], TRCSSCCRn(i));
+		etm4x_relaxed_write32_varreg(csa, state->trcsscsr[i], TRCSSCSRn(i));
 		if (etm4x_sspcicrn_present(drvdata, i))
-			etm4x_relaxed_write32(csa, state->trcsspcicr[i], TRCSSPCICRn(i));
+			etm4x_relaxed_write32_varreg(csa, state->trcsspcicr[i], TRCSSPCICRn(i));
 	}
 
 	for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
-		etm4x_relaxed_write64(csa, state->trcacvr[i], TRCACVRn(i));
-		etm4x_relaxed_write64(csa, state->trcacatr[i], TRCACATRn(i));
+		etm4x_relaxed_write64_varreg(csa, state->trcacvr[i], TRCACVRn(i));
+		etm4x_relaxed_write64_varreg(csa, state->trcacatr[i], TRCACATRn(i));
 	}
 
 	for (i = 0; i < drvdata->numcidc; i++)
-		etm4x_relaxed_write64(csa, state->trccidcvr[i], TRCCIDCVRn(i));
+		etm4x_relaxed_write64_varreg(csa, state->trccidcvr[i], TRCCIDCVRn(i));
 
 	for (i = 0; i < drvdata->numvmidc; i++)
-		etm4x_relaxed_write64(csa, state->trcvmidcvr[i], TRCVMIDCVRn(i));
+		etm4x_relaxed_write64_varreg(csa, state->trcvmidcvr[i], TRCVMIDCVRn(i));
 
 	etm4x_relaxed_write32(csa, state->trccidcctlr0, TRCCIDCCTLR0);
 	if (drvdata->numcidc > 4)
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index e5b79bdb9851..acad1befa207 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -1001,6 +1001,75 @@ void etm4_config_trace_mode(struct etmv4_config *config);
 u64 etm4x_sysreg_read(u32 offset, bool _relaxed, bool _64bit);
 void etm4x_sysreg_write(u64 val, u32 offset, bool _relaxed, bool _64bit);
 
+/*
+ * Register accessors for variable register number, use in a loop
+ * when 'reg' is not a constant that can be passed into an inline
+ * assembly.
+ */
+static inline void etm4x_relaxed_write32_varreg(struct csdev_access *csa, u32 val, u32 offset)
+{
+	if (csa->io_mem)
+		writel_relaxed(val, csa->base + offset);
+	else
+		etm4x_sysreg_write(val, offset, true, false);
+}
+
+static inline void etm4x_relaxed_write64_varreg(struct csdev_access *csa, u64 val, u32 offset)
+{
+	if (csa->io_mem)
+		writeq_relaxed(val, csa->base + offset);
+	else
+		etm4x_sysreg_write(val, offset, true, true);
+}
+
+static inline void etm4x_write32_varreg(struct csdev_access *csa, u32 val, u32 offset)
+{
+	if (csa->io_mem)
+		writel(val, csa->base + offset);
+	else
+		etm4x_sysreg_write(val, offset, false, false);
+}
+
+static inline void etm4x_write64_varreg(struct csdev_access *csa, u64 val, u32 offset)
+{
+	if (csa->io_mem)
+		writeq(val, csa->base + offset);
+	else
+		etm4x_sysreg_write(val, offset, false, true);
+}
+
+static inline u32 etm4x_relaxed_read32_varreg(struct csdev_access *csa, u32 offset)
+{
+	if (csa->io_mem)
+		return readl_relaxed(csa->base + offset);
+	else
+		return etm4x_sysreg_read(offset, true, false);
+}
+
+static inline u64 etm4x_relaxed_read64_varreg(struct csdev_access *csa, u32 offset)
+{
+	if (csa->io_mem)
+		return readq(csa->base + offset);
+	else
+		return etm4x_sysreg_read(offset, true, true);
+}
+
+static inline u32 etm4x_read32_varreg(struct csdev_access *csa, u32 offset)
+{
+	if (csa->io_mem)
+		return readl(csa->base + offset);
+	else
+		return etm4x_sysreg_read(offset, false, false);
+}
+
+static inline u64 etm4x_read64_varreg(struct csdev_access *csa, u32 offset)
+{
+	if (csa->io_mem)
+		return readl(csa->base + offset);
+	else
+		return etm4x_sysreg_read(offset, false, true);
+}
+
 static inline bool etm4x_is_ete(struct etmv4_drvdata *drvdata)
 {
 	return drvdata->arch >= ETM_ARCH_ETE;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210429145752.3218324-1-arnd%40kernel.org.
