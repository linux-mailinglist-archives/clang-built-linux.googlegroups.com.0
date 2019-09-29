Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP7RYPWAKGQE64QOB3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E63AC18FB
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 20:32:32 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id q3sf2162641lfc.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 11:32:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569781952; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzML8gYjd6kQPVBA86Dmq+yEtwtdbKc4gV9k7pV7o9yKqQfbsLc9vH3VrWVjwfNly7
         MuEE+RxyQx0QijiHjZ0dFMQOKQW85F0VVR4u6tVy7IManM+RX7iw8OwpsgV7A9eXoOVT
         0qjnZ39MW0aYyGD3S/E8Wnx6uCCSbmxNjCsW9pBOhdYDVtGTtmh+HpkOQeFq2g5g9SwZ
         Jhn97AGxNf8Krs/EEwOeZlUBmH2flYweOJXvxrk4q85k1SUmRpyiVeBiTz6VhGL4zxwq
         sSzFSJsZLMePobH79XqNhnxloIunY3Rb+gxlruAEpW/0oqyyr0Zky0zpCoRZfQCm2Ejm
         mElw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=hKuEgxTlt2no9bkagRMLkQ3h9iCytlAI56/OwIVy4ws=;
        b=IpqDsbXtUhbHAw7sfCJbJE+AClgIv1UxtDNouso76TAS2IqBjy6kiwDsM/dqMgyOsW
         9UrR2sbMvkvwnk2vFel701JfVtCCJGEy1qMhrMxc6BcCzd8kXqw+FK7GjWLRdkArGMOf
         PHuArajIIELyDgljRByVTcGEkApavKvPGNwO+28LNVzpXeytw/yIjlmdx5LaNYjjlVOF
         DIJ0lqGJ8WwDj0aq+6gvAGMPrSEnTNw+I6i1125tyQOHYWZEiY6FjyohsGuXrUNJsJIi
         w5Qz9k2Z9U0FMVO6ObxETCmAxPFAmunLTm8jg0CK3ltegjisfLQsnBNYwXpNlOLksRgq
         r+KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LbMTCWU6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hKuEgxTlt2no9bkagRMLkQ3h9iCytlAI56/OwIVy4ws=;
        b=TRpkfBrdIJHgTLhhLb6z8JY5D5Iv4O0WmitRzw2K8q1J4H3Wt5mxQVFXGAml4FDQd1
         RSurLnAt6VRJ3cNN01lU/+4kvuMhk3UBDusaBuoNOd0xrcILa049X09FA2OGcBRRHlgR
         d7FONp0KThCypTag1fiSqj57wz0PEi8zqYETFIoZAWonNRgVkrKkZRUYTW+puy+MU2Kh
         K/0VMnXqvi4a1HNoEAlEscEhSMmALL+5wJX48zyr7Or2MLATFnsRjCP2gonmP3DrfE0g
         uDA9pqb4QMs9CVCDFtkxtDmTDun7FAHXwz2jcsl44sZbkqAGsJ9evZ8GpbixjaNjf317
         wmNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hKuEgxTlt2no9bkagRMLkQ3h9iCytlAI56/OwIVy4ws=;
        b=Z2Nkp1dU+7YSRNrUN+idJUjMIoaJBNsB+pZC7TRcLi0cPQuI8v3Fwn13wmryhtSNAS
         5Q2hotrialV5nfbW9706W8SqCv961S2Ay+bkD5aztP9rbhu77ZZr1hj5AQP+iYkdrDPe
         sXzto3LUPZ88scL7lWhtNtTkJV1X5y/wJa+zeM9jD5H/+hbyKooGqxXbelg7o1PKDmfp
         hMHzHyoprRS2ewEqKb8j8c02Ohx1Ghfzt4OnrO68RfKaZySIETItm2jX+C5QCcuVVHjw
         WvhLWSFxrCKo9/kuTpaPVdn4dhULKchTHDG+1Shoh8hDq9qLftfiG3q9rnGVGGCXGLIW
         Btrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hKuEgxTlt2no9bkagRMLkQ3h9iCytlAI56/OwIVy4ws=;
        b=kC2mkOlxNVuNjy3ckx/A7nZ3c/1j/s7LfEUDwoosSMOeO7VLZXS1YDE7KspVQdp4wU
         Do8Sihp8yHIVRF76iLon94nqkppiEB+wQi1mnQPZNscmJJFZWHsiQvI9BHT80MhqrDs3
         DQddJvoHJfQTvRQTKAVznzboj8442vTnGFGmmYv4pRwh9uoeKUCzihepSLTVHaB0vdc6
         ZHtN7cPp4PSxT8eSHBfGkjJnjz1WeIJApXgku5xL1MEbyevhDME/2KeOa7Hl06LukflQ
         cRaUmPuoKO60j9jPXwDBnJpoCoOnxDk/y0/Tpn0/z+w9f02PwZgJfgxlHqbECTIzE7dK
         USkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjmb01obxuahfK2pC8hmX+sFcvqYXXt2/NkgMgTGIV1WdMcmyn
	Z1YmPT36IJnZYRp37u2uwI0=
X-Google-Smtp-Source: APXvYqwlZSZsOwX5QmswZ1Ew6KgoIMm5ULXE475gCxBpFKQTdyFPzd1qKbT4oCTmtliFrltao2LVhQ==
X-Received: by 2002:a2e:8789:: with SMTP id n9mr9617690lji.52.1569781951973;
        Sun, 29 Sep 2019 11:32:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls1183052ljb.2.gmail; Sun, 29 Sep
 2019 11:32:31 -0700 (PDT)
X-Received: by 2002:a2e:7502:: with SMTP id q2mr9384096ljc.202.1569781951513;
        Sun, 29 Sep 2019 11:32:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569781951; cv=none;
        d=google.com; s=arc-20160816;
        b=GBhPdQmJI2yHC11Npd2HaVqEIGejId6qgxM9wdy97SLNxt2esEBzcKeJSZj2P+JWAq
         G4ZNSeqafKg/s86pdQkgLtEIlB2gkuy9AjHntJOCrfhB/QJiiv2PXlFEe8fV0MQWNMpq
         c4MYfeKV1T0fq4V6jqcLyGwJJoEmwCNF7s76j6aETsWHb0aEteRYvityUHfsuYmFMQ/S
         VZEiohD2la/5at+4PTVOYKz3op3BTyW91JTdnMPKvxnJbZFBozjQeDnhoz35rj3XhoBs
         OFP/a200BafXcICxx+0ZW1TJ3cvaGTEMg+lGSEAAr/MGJNnPOUmUMMvjmrsC3P8FM231
         qhnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dKrYWAtUPlrt6JN6yYQvo9qzPk70geNGb7fz0ZvdlaA=;
        b=PI5nEW+6TQFpmtXXLPqoZCGxK0gVwm9Pc95axHR3sQcsPki2t+gIROj0keGAovBSTW
         zwP8kDMyvJbPgrf1jhpgKSAEMof8y+sHvDzhdjEm7n68jtu2U767FUMjLGdgb6xnLrrN
         FWE3Oo5tJFwNRvdohibTd6/FXVCLkOq/OcbEeIWEm/SQRq1LTLWE8mcyTfZbwp1/J0Iu
         We9e7oZ3E+IwvdnBE7mO5qekFxeYhXUKNU0zWyr7O0TnJgsHxiRLSFZ+vki8+XqsIWkU
         fdzQa2eontKu2xKEQ9JwFMM16r5QJsPf9CUTn+ATSE/zB9elrcvLIClX8Vy90V9bewZN
         3g6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LbMTCWU6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y6si520632lji.0.2019.09.29.11.32.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Sep 2019 11:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id m18so10295718wmc.1
        for <clang-built-linux@googlegroups.com>; Sun, 29 Sep 2019 11:32:31 -0700 (PDT)
X-Received: by 2002:a7b:c391:: with SMTP id s17mr15162720wmj.94.1569781950778;
        Sun, 29 Sep 2019 11:32:30 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id h125sm23686048wmf.31.2019.09.29.11.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Sep 2019 11:32:30 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 4.14] x86/retpolines: Fix up backport of a9d57ef15cbe
Date: Sun, 29 Sep 2019 11:32:06 -0700
Message-Id: <20190929183206.922721-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LbMTCWU6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Commit a9d57ef15cbe ("x86/retpolines: Disable switch jump tables when
retpolines are enabled") added -fno-jump-tables to workaround a GCC issue
while deliberately avoiding adding this flag when CONFIG_CC_IS_CLANG is
set, which is defined by the kconfig system when CC=clang is provided.

However, this symbol was added in 4.18 in commit 469cb7376c06 ("kconfig:
add CC_IS_CLANG and CLANG_VERSION") so it is always undefined in 4.14,
meaning -fno-jump-tables gets added when using Clang.

Fix this up by using the equivalent $(cc-name) comparison, which matches
what upstream did until commit 076f421da5d4 ("kbuild: replace cc-name
test with CONFIG_CC_IS_CLANG").

Fixes: e28951100515 ("x86/retpolines: Disable switch jump tables when retpolines are enabled")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/x86/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index cd596ca60901..3dc54d2f79c4 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -249,7 +249,7 @@ ifdef CONFIG_RETPOLINE
   # retpoline builds, however, gcc does not for x86. This has
   # only been fixed starting from gcc stable version 8.4.0 and
   # onwards, but not for older ones. See gcc bug #86952.
-  ifndef CONFIG_CC_IS_CLANG
+  ifneq ($(cc-name), clang)
     KBUILD_CFLAGS += $(call cc-option,-fno-jump-tables)
   endif
 endif
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929183206.922721-1-natechancellor%40gmail.com.
