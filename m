Return-Path: <clang-built-linux+bncBAABBJGW46BAMGQEIQA2ELA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0BD345F84
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 14:20:38 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id 1sf647642vsw.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 06:20:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616505637; cv=pass;
        d=google.com; s=arc-20160816;
        b=JiBwCmHdh2LVSL1OqlCS5xqHnOhcJn7HJl7oLz578jxfblk42WzSBqN+Nwz0YSE3ZM
         T5mNIgc+ZtK6dg9IzsVNv7eseEephrLSdMR77CmZfWPBw5GPyvlL1Te8wDpcJWB3PNnK
         K2jirn8jGPsvg/4ChVY5Bmshy7mbEsQmUTfcfqJulOuBAt+tCKYjrhCvHt5z2/hZn90A
         PFDWMwWmjt1nR1lVXpleMNpOpUmadm6pGpNQ1bb/bnuejMtoojqy+9hW+NjJYtua7XlO
         xhEe+wWc5ucx23yQiL8UztFmXM172Yw7ciI07k53HRTpOUtVhXmvwQN3MJpSMvvoJs0U
         cJ4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=vtBMbA17yspcgGZV+zlMutMVzB/SodDjdnczMZhCMCg=;
        b=vHAh3BrqoZ2jbCS2sgIHoeFyA2DKmbIH9gUblJWBpAyxYCBkwxfTT1HQhvdLVLeEHH
         VCvc5PQK8JpEoYejq2hO48SPNiJ9QUJTLjz955S0sRVKJiNTV7AttJkMgxSKdOQKxYnG
         DhyvmzcKy03chksYzk69OKKKC+pjqsHdSUlUr8DGZ06/iXmFwX6oCd1hIKHb97hDsRYt
         gsPGUNi1kYi7NSg6xNpZr4tEw8r7NwYw3Xp01UT6/peRzpbEp+sEvo5Wi498E2SMrIru
         aam2yeqLslt5O/UhviuseYE2EtlkvMVIPgdjTTAhU9eFVOjYvEimetxMz8HO8wSx8553
         JNFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=U1gkt9hd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vtBMbA17yspcgGZV+zlMutMVzB/SodDjdnczMZhCMCg=;
        b=Ih1vNc9L+icGdfSLwn18aI+ngy8/IqBzDH+JNyF3rsq4ORIT7leT4huxKERMhSzHCt
         rG6+kPw0B9asMFmLA1Hicj4u1HzpE298CjwStZdVAX6Z7PFaEOOA3RmLSIbLaMqf27WE
         RGZnz8ZCXDlLZ25m7SIg8TpurTccme5KRij+OGFaG5NcMmXYt1PD53OZSJ5zrxdoxRuj
         98cvYALFx1O8R4xUBnaSkBqAyMiTQpbFsUETEnxBibZSHOukItVS/NrxibCTKKSAIRs6
         xuDBLDCYFcqEyR5smLTQCpLykZhpBhj00I8cir+3myFzCiguCsHKyxU2OWeoqBAAnvQp
         Zmtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vtBMbA17yspcgGZV+zlMutMVzB/SodDjdnczMZhCMCg=;
        b=hpWp9qluStq9KhSST7048jiRrTfYj3KvQDC2ky8v8Lu6jK7APUkg5vZMFMIWLJKKKt
         W45z7m4noOOyHUTnwcjNDd4TVdmPKN7+fAxbcMjquGPV1HJ7BnaDeFXltUSsEQO7fBIq
         j63YLU/v3hTUiXHblS7oRyrnjm3qPSGRABIsjX2ykalq92mNwasdrc2XHnrn2Fhj+9Co
         /tWQxrCVNyhBV0bQhcXezdWQMKz+b3c3RqGuRFLVSZa9WJX0isTIAJ9vFY5DHBhNzOeu
         Z9YmBjaJ62XZ7gI/wXTzpyXwZW2tJDzMsvd5Sdw8w92d1Z9gG+1UXfiq8KSwjOZIlNS2
         ulMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VPP64e7LOkPuSTWUTPix8a3MIQf9mXvqJ0Ha7zNDWKszxb3O4
	Xe0T8/6UR9m5TUGpD6tdSBQ=
X-Google-Smtp-Source: ABdhPJwmDT7X8ivM8S0DdYwP5hSZARtF6dvGBG9wWuPZMTa+Zj3jY+/ueUFokETzPjnGqq6fuNdXqQ==
X-Received: by 2002:ac5:cac5:: with SMTP id m5mr3226756vkl.13.1616505637127;
        Tue, 23 Mar 2021 06:20:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5f16:: with SMTP id t22ls795665vkb.3.gmail; Tue, 23 Mar
 2021 06:20:36 -0700 (PDT)
X-Received: by 2002:a05:6122:54:: with SMTP id q20mr3224717vkn.3.1616505635949;
        Tue, 23 Mar 2021 06:20:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616505635; cv=none;
        d=google.com; s=arc-20160816;
        b=lctZGstKM6Y1Iys/7MR+3OQs0MXEPyNvsRoUkl/s61NtgMqu2y+/PP8crNOWLk5OHV
         cUNVVpszjuchqBnYVmrkzuNd/3QSxDI+K5ynb4vAvOz6nqvGkfJXBilS6Jor50JHGLaF
         LcX3RYaDbT8u0JVLHWkEb2TfK8Db6MZsv9PEuBTXGz2K7xv+Fqb/VBs4MlR8c9jSlLja
         eF1t9h1t1NRoyNqMmJ2p2dRmo0Bd6biDgwbGVic1n6x+ACGHytMd2j7lH2TFV4juWSB4
         bSQaylTHc/Dj//6l/FC5/PUj5Zp+TS7J5EwmxytAORTl3osUPZupkPGKr7jAMS/ezVTd
         W+Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Tt/ExiKN45y1uajlJnQTXq+Zl1obtEgX5gfXLjHqPXQ=;
        b=Qgf8QFk3nIYd/JVbaLMFWmMl+1Ui2iGR/HLD1V5U0WslJJyNg15gzaYZA0sWSKDpDj
         UuP3YNy6EbSmQvdR9RTU5T0bEyhVUcPx5iSyQCH6WnsNT3NaaTzUWCANlcPAoo1Y74kV
         GjiFyrzFW/tR/Kmx4m5ycu/BRdY174zzPRxSBc02knQdBE54nDDDsKOXCuibvVHhJiO6
         I5/B2dQ0cUljpc0Zjv8QEAMcC2hnmzmpcJ6aGcBML6Tf4E2laeImDSUqIOncteLU3XU5
         8j/7g51nOeCDPthi6lRzGUgzMBzTIUWjkuF9ugkvJgv4TeczjXreEqkH+ZMfZi2le8aW
         g/sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=U1gkt9hd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si918074vkm.1.2021.03.23.06.20.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 06:20:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3407D619BD;
	Tue, 23 Mar 2021 13:20:33 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Russell King <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ARM: delay: avoid clang -Wtautological-constant warning
Date: Tue, 23 Mar 2021 14:20:23 +0100
Message-Id: <20210323132031.2858996-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=U1gkt9hd;       spf=pass
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

Passing an 8-bit constant into delay() triggers a warning when building
with 'make W=1' using clang:

drivers/clk/actions/owl-pll.c:182:2: error: result of comparison of constant 2000 with expression of type 'u8' (aka 'unsigned char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
        udelay(pll_hw->delay);
        ^~~~~~~~~~~~~~~~~~~~~
arch/arm/include/asm/delay.h:84:9: note: expanded from macro 'udelay'
          ((n) > (MAX_UDELAY_MS * 1000) ? __bad_udelay() :              \
           ~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-omap2/wd_timer.c:89:3: error: result of comparison of constant 2000 with expression of type 'u8' (aka 'unsigned char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
                udelay(oh->class->sysc->srst_udelay);
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Shut up the warning by adding a cast to a 64-bit number. A cast to 'int'
would usually be sufficient, but would fail to cause a link-time error
for large 64-bit constants.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/include/asm/delay.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/delay.h b/arch/arm/include/asm/delay.h
index 4f80b72372b4..1bb6417a3a83 100644
--- a/arch/arm/include/asm/delay.h
+++ b/arch/arm/include/asm/delay.h
@@ -81,7 +81,7 @@ extern void __bad_udelay(void);
 
 #define udelay(n)							\
 	(__builtin_constant_p(n) ?					\
-	  ((n) > (MAX_UDELAY_MS * 1000) ? __bad_udelay() :		\
+	  ((u64)(n) > (MAX_UDELAY_MS * 1000) ? __bad_udelay() :		\
 			__const_udelay((n) * UDELAY_MULT)) :		\
 	  __udelay(n))
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323132031.2858996-1-arnd%40kernel.org.
