Return-Path: <clang-built-linux+bncBAABBRXC3WAQMGQECFGW3KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0B9324D16
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 10:43:35 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id 124sf3976308qkg.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 01:43:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614246214; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9ItK2azabMQVCaOLpO1pGHDIKkGnN5xebtZypO7/p3IVyuimCmALDErxVO8q4f5fE
         JoIF8hgQpHPQa+Gc6Tad4k0Zyp/OU9gzUOFHoTpZAHSVD9B9gOowwR8w4iFRKPJaL4lw
         x7YnNN63ERWVUlInd3Ypq9JVk709RuCWycXDPjriG28BCnz3G0qPD9rIFIeSYi9IHlAR
         AbfonlD8LnLWg1PRopbKP34f+aR9HF+foHW3rVPzga+1fkcwTzKAuLFOnhgxKmTLAcmp
         X43LcepKlYSGE5vj0YL7wZFvIaS8PK4iVeRSjEUhOeY9240SgoPAApuVJPlPk2t6U9/S
         dQKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=pMHw0REU9PpzfVTCOJLzajE8w1Bfp+xjGDa9dqCnI7U=;
        b=UXGdvejx23J0SnzLVYCXkLiq6zRnor//HS02AVQ1BOL7QwEGEuFvuFlndFrqFQ72jy
         9plGFPFy8M7mtbqYybP0JsqFF2e29x5ookGMvSpgKn81a/oATwxk1dVApKAIs5WEdxGT
         nSY4uViEoofJK99NeojFWfAUqGJgB3PX+JzSd8iEpCz7+beIcoj1LVsEv8/ktqWbd3Cq
         xrEeRhU2jREHHe7ub7uTN4FFsp3uDhJBTUpJJT/iMWduAbJU2VN0TxcvsXa8+F9JkCXV
         OSt1nP+bxbhu15Qe+vmic/iCdm3soU+/G/PT1C/oC1vrhPDUDqO18GONBd5d3SjuX+9d
         5/uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ln2UawM5;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMHw0REU9PpzfVTCOJLzajE8w1Bfp+xjGDa9dqCnI7U=;
        b=lqHQxCBzfzJlmdtjAY/zOZCyoMrqKrqnwcRt72gqaDm/sJZOkRzYCTk/XSqOidjMZ8
         ILpLHCxM0JXu9X0rCkkfKugu/ednp2rudguEJkInlKHuG7XsRkz7zqvbPlIFUwhmKPVv
         uI10kFM+6rx0t217rpXcRDimNJAMNjx9EXXLLA/oWBM8HDW4mD10i/Dr1ma77XzEjn9d
         86VuAW2EXVwx+6S74jtKz2WfqsteAv85a53OWTRtrtNRefkKU7TLsMsN7W1kHEW2jSl6
         lvFewumx/dmYaWrHNx+6s88JcR4ypMIWXPUL2yP9LzzHrxVKQ/YLMaICkBDfwEpGBV+6
         eUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pMHw0REU9PpzfVTCOJLzajE8w1Bfp+xjGDa9dqCnI7U=;
        b=fJ1F+ETIBeWXHtdpxviimt+yBkiW9sCbRv89VtoAz43D5wAwzDlDcIDfSQ6U+Q7qUU
         X9focq0eOqPyFjV/IeVUwDbPiWHM85WLvyVFJztF4+5lazpoSECBvgjonOZ/wM1+Tk6U
         j7PaY3ZHOkb1EIe6DU1PXGL62xa1D7+EaHF15+Dus4ykZesc+aMKrcdt1+nDzKPniozJ
         EKTsCzvTAej48gZTwVOkfJos4LIGEX80vyY9bzmBEYy6Xgy2lOu6KL2DwuRlrMnVmTUO
         UxXPH02Tjbjo44Pk26hykdsz9K+ZAs00POcXdWF8VTJ8M1OkkP8B80MnVi32CnDTSFNS
         AjaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LBgW8zNxUIewi5aqHGop2/W6HNk6YwTu3/uB8Min/QLqYQvj8
	4w9Wr4pFeNtaxe/boGUokaI=
X-Google-Smtp-Source: ABdhPJxKA0acAoNkMaa2xPPWMQtKMsIF+5oxyDbLVPrXWQXNv+StFqB+1nF26TzQQj8BzruxdpbeBA==
X-Received: by 2002:a37:9704:: with SMTP id z4mr1815501qkd.465.1614246214322;
        Thu, 25 Feb 2021 01:43:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5e13:: with SMTP id h19ls1907641qtx.7.gmail; Thu, 25 Feb
 2021 01:43:33 -0800 (PST)
X-Received: by 2002:ac8:6b10:: with SMTP id w16mr1582163qts.180.1614246213862;
        Thu, 25 Feb 2021 01:43:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614246213; cv=none;
        d=google.com; s=arc-20160816;
        b=clouiWKW6lKb00oYxdavIF4ZxpoTvd20pdrpKE6uu56bHbaDmWVhAJYFY+1ZfqV27F
         PkNG11VlvjoMa3sqvwsGXg8oc+Zt/ZbDywpe822X09/YiyM/f7aiNqzf97vs3wxZlW2F
         g2cho8//E/0z5NSSEL04Yre7yAvjSKNHGqEvEt/86B7LGETA08t34vw2MkxSf7tsE2rl
         uhrIadsWf3lXRyLtieiJn4iNyo8LixvY7xVsbsHebVJ4gd9P5L4BChZ3uVUotABbB70v
         nsZfSIqq8nqsIwX5JGwkBY9n6TXiZKzVojq7gtz1a1NWhuYiTlJthszyZbITyVmhLKHy
         nQ8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=V05U2mHiHNV/IplR2/znYFX+Kvg/9PYfTdSht7eSPhc=;
        b=cc9ErVrdhYITq//+NZ++v3MLc2O/m+OPqeZQMxncE9qdMca36cu5J1rentJxVCGb/N
         FcFdZZvrSrDlrLXxt3H0xpcJp3vJq0VAF+6nh2CAVfa+4LKVlKLxiCMlCJyM3jq3dzzq
         tL3EEfxlNFTiQvC3X0sflHULhtPnLD0M4+2J4GoIZSMaYyBh4A5A2/7JclshBnIt3RLU
         7gQYkzPqYy/rnT0p8nPc4WcDib48fbr4QUhse9JPxgyM/8pMC6EJZ7myxcRtvBAUFWav
         OUjeJh7NKEzVv09ycFE8jRPzRbvQL6wUc1c56SXPHWyIxuvU8tOCJIPXRfOfGRXzD9ae
         DnBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ln2UawM5;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p21si339279qkh.6.2021.02.25.01.43.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 01:43:33 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D089E64EC3;
	Thu, 25 Feb 2021 09:43:27 +0000 (UTC)
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
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] coresight: etm4x: work around clang-12+ build failure
Date: Thu, 25 Feb 2021 10:42:58 +0100
Message-Id: <20210225094324.3542511-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ln2UawM5;       spf=pass
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

clang-12 fails to build the etm4x driver with -fsanitize=array-bounds:

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

It appears that the __builin_constant_p() check in
read_etm4x_sysreg_offset() falsely returns 'true' here because clang
decides finds that an out-of-bounds access to config->cntr_val[] cannot
happen, and then it unrolls the loop with constant register numbers. Then
when actually emitting the output, it fails to figure out the value again.

While this is incorrect behavior in clang, it is easy to work around
by avoiding the out-of-bounds array access. Do this by limiting the
loop counter to the actual dimension of the array.

Link: https://github.com/ClangBuiltLinux/linux/issues/1310
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/hwtracing/coresight/coresight-etm4x-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
index 15016f757828..4cccf874a602 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
@@ -691,13 +691,13 @@ static void etm4_disable_hw(void *info)
 			"timeout while waiting for PM stable Trace Status\n");
 
 	/* read the status of the single shot comparators */
-	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
+	for (i = 0; i < min_t(u32, drvdata->nr_ss_cmp, ETM_MAX_SS_CMP); i++) {
 		config->ss_status[i] =
 			etm4x_relaxed_read32(csa, TRCSSCSRn(i));
 	}
 
 	/* read back the current counter values */
-	for (i = 0; i < drvdata->nr_cntr; i++) {
+	for (i = 0; i < min_t(u32, drvdata->nr_cntr, ETMv4_MAX_CNTR); i++) {
 		config->cntr_val[i] =
 			etm4x_relaxed_read32(csa, TRCCNTVRn(i));
 	}
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225094324.3542511-1-arnd%40kernel.org.
