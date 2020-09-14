Return-Path: <clang-built-linux+bncBD6K324WS4FBBPOQ735AKGQEAODHA7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC24269342
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:30 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id 20sf47881lfg.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104510; cv=pass;
        d=google.com; s=arc-20160816;
        b=RYUnXBD5vUjYQs6uBcnXmNAS0MI1y+yZZLn2RXxIOimqz6F+G0BX3ZV1ss4bpK8mM6
         V3NUpGKWWJr4tWl/SL5H7jSZJ1EaJiRLF/ooPlRq7F1IwdFwL30oRO9Iv7jd2mfNy4aJ
         1MoYn3rJzMfsIw2Ll9X1AfemxtLK1ffxmp1o0u680j451gtCqNFRYWw6t5zdurOtx/fS
         NgaZmQ3ssTJJoS//qaK0kAaCJLy+08TxIxr1xE4KhZRamHndNNDnQZQ4L3p7Gori7TEW
         VC4+iDEsTq4SS8VJMXlrx0x4Ll9Ug5H+Iwui8gkX/wgB/YaNjcr2jBt/gISdppmzsKeH
         K9jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=jRn36gbKLLxM0UVIGXA/a6aT02aWyx+kriYn8hdOk7c=;
        b=wQt27tKjNc9UJVKsVpUzi1iIKhKqok4LLjSQZSwhjDx+9mLdWX4syhulEM35hBQ74w
         msHKBVo4omgnxaN6s4iiq5NxgzYLICIsckoHPsrNjA2HDKQ8jmEWnHn2yiBIpGUSvGC4
         MiYc1q3uJooDK3PvXybpo54d71nW+FHONxz9xqUXp4aOBByZSwVsMUQ824gn7DTJi3ac
         AARiOjDsnsv2rB+BC0+6Ka7xafSlVsnWY8/PuCLObBCZgCUgKKAkwhk4NdxNGRWyQ9GT
         JiIPsI28QtV9qhLpUX1argVVulp2OPObGgch2eAKFPYCadI00oGaANP2RfLSXoMAhRS5
         lIUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L3Rqn405;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jRn36gbKLLxM0UVIGXA/a6aT02aWyx+kriYn8hdOk7c=;
        b=VhAIKemIlXM3YJ5mTWzAFPjm0rG9V1/E0MwSZ2L7CChE6gAgMrypeK5pLHwjYhL4si
         intgnvx2vFWG73LT8FlJRbal0iBZ5qI3TDlrEMlGip+mZ6tMMKHgsN9FGJ/lcJ67KfMu
         s3My5ACMg1Tf4FVgwJOezHYmX5eKK0k/k4wi7a2VDEX5UfL2LiS9Ugq0hafDhgiv3/Od
         zDeZWvdqV9icJIWFaBrfI4Eb0URqRbrGghy3SSUPTlbRCnMPhyfJr4Eq4a7GW6dp/UFG
         q3v6br4om3NliXD7hM1FUKGID/lucNvGkZuc2wI9QVzHpyBaGTdPDt6LTpBww3aIBeoV
         8KZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jRn36gbKLLxM0UVIGXA/a6aT02aWyx+kriYn8hdOk7c=;
        b=QJ0TcqNFZ5fUHiEO8aCSvRE5eTMjI1WJpRw+dcPNmmXV9nF6o+gRvtWqtpVCxicdZN
         /YzO/Hp5ZB071YXtby9EN2Fnavs6B2tvHwru2IbcSCl2wtt17O8CxEy5+V8xM+mLAJew
         gIj7r5SQzMbd/1juA+Q+3pFsXZ3Q/gd2nCQcPlDpGyW+grq1wFP15Q1ryEPWkagYM1Oe
         fGdMHq0InDQxzsTfuf0Q5Irx/aTmL+qZqfHSC8b1CvcUyq2lRlO6opN5lPsrlphvNF99
         Z6RNvV0twGrTsT33GqTlXCtBmcsckV0a0axTHcDMTD03t/Fo/rwyS4f2SrfdLJc8lARA
         DLAQ==
X-Gm-Message-State: AOAM5315VFP3jBKoBfbOCbjT7Fk76qDe9DKEg04reUw8g0UD+gTjQD9m
	QcBP+Ft4HWp36x8cjQilIl8=
X-Google-Smtp-Source: ABdhPJznIHw7DNfrtT1Wm9i4UtNiWDYxUt1uUr9FVOWJ/Bf47HUCavErNMnVM++aCMO3nPu8kuSM6w==
X-Received: by 2002:a2e:980f:: with SMTP id a15mr5186007ljj.153.1600104510125;
        Mon, 14 Sep 2020 10:28:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a556:: with SMTP id e22ls1512961ljn.9.gmail; Mon, 14 Sep
 2020 10:28:29 -0700 (PDT)
X-Received: by 2002:a2e:8597:: with SMTP id b23mr5531980lji.41.1600104509067;
        Mon, 14 Sep 2020 10:28:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104509; cv=none;
        d=google.com; s=arc-20160816;
        b=0Y9SmhWvksadhIGh25GWYOPZjp5ywBfCZ6NezgypkpFX2KF4yCsFtxWdOVg2VjTXK1
         G1NpfYpuDjT5pPHfbPt54pVOMpz6lM4zQW37peMqp/3pHW/P+cix/9N+jk9i9RfwFXBN
         na12J0rmlw/Zr1Sx8bTbI+kfABAakRhJxAeOuhFzSDweUgijL9zBLfyqpRf3zZMCl+oZ
         EkHkBCyYyNEAl1jhQ5/s5VyM4QIcr6cH/juiJ6nlF4o3Vu5bSD6hUEhcu0Tl7EPj9S3/
         eRBjkUMaYg2aR15bWlOMv/dcjd5HyGMgqO/vWRsXLHjjrad4cAb5Dqags7Oh6+nV6SNQ
         r1zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g9asLkQ3OEMA9W3/GEGNRUW1iZejtpJzTvLvCBaNFqA=;
        b=Nf29CIjAjpW3jFLYi+dR6F0z3pwF62VbXzVd8JSdV3iTk9WrEBuAWx/dYOQTeNMr5/
         pLIyyYCGGfI1XAuj0hdsBt322Qlpwz+/AXwaTba5JJ5KpTRjQzioRfkBtuccy/pOMXOH
         rCKPg3Vm7psV5uEIq5YLIU5PYtoQOXQkGAmlVw/kfRd+X1O7vtUWONuo1ojo5UtOzvMj
         23FWQ8fLC4ipPF6C6FTzXjBr8RtCj4b+sj9czQGhk3WduBo36+gwSEBFbq2yV01BldHC
         JhMGX+Dj+oCv/gf5vJ2xyM0Db9zMb2o4PclI+SqjhROCybSTTq87Z+QKYtIGfvSauxXr
         08SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L3Rqn405;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v191si216460lfa.6.2020.09.14.10.28.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id z1so531920wrt.3
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:29 -0700 (PDT)
X-Received: by 2002:adf:fec7:: with SMTP id q7mr17052167wrs.293.1600104508663;
        Mon, 14 Sep 2020 10:28:28 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id o6sm22778704wrm.76.2020.09.14.10.28.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:27 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	masahiroy@kernel.org,
	michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	james.morse@arm.com,
	julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	dbrazdil@google.com,
	broonie@kernel.org,
	maskray@google.com,
	ascull@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	dvyukov@google.com,
	elver@google.com,
	tglx@linutronix.de,
	arnd@arndb.de,
	George Popescu <georgepope@google.com>
Subject: [PATCH 14/14] DO NOT MERGE: Enable configs to test the patch series
Date: Mon, 14 Sep 2020 17:27:50 +0000
Message-Id: <20200914172750.852684-15-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L3Rqn405;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

From: George Popescu <georgepope@google.com>

Enable configs from Kconfig.ubsan to test the buffer and
the ubsan_handlers.

Signed-off-by: George Popescu <georgepope@google.com>
---
 lib/Kconfig.ubsan | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 774315de555a..f72b8a564a8c 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -1,9 +1,11 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config ARCH_HAS_UBSAN_SANITIZE_ALL
 	bool
+	default y
 
 menuconfig UBSAN
 	bool "Undefined behaviour sanity checker"
+	default y
 	help
 	  This option enables the Undefined Behaviour sanity checker.
 	  Compile-time instrumentation is used to detect various undefined
@@ -82,7 +84,8 @@ config UBSAN_ALIGNMENT
 
 config TEST_UBSAN
 	tristate "Module for testing for undefined behavior detection"
-	depends on m
+	depends on UBSAN
+	default m
 	help
 	  This is a test module for UBSAN.
 	  It triggers various undefined behavior, and detect it.
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-15-georgepope%40google.com.
