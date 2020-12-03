Return-Path: <clang-built-linux+bncBC3L3HGJUELBBWGEUX7AKGQEZPEQR4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7F02CE15C
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:10:33 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id 2sf1240185vkj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:10:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607033433; cv=pass;
        d=google.com; s=arc-20160816;
        b=QuggoAu1F5HS3ugGA2PTElPcfA2w3t5rtuJB+KVftA1XfjzgzxHBp5dqDDh+SSsiNP
         0RF46qWktbWh39tumLnVd93yKfg+NGATpZbzzueivDTR3biax+ULAiKXx8B5tFfGkHvK
         Eghjg4AvFToDqOzRZVUGvcws2S/4lwWBkjwDeZABMaew6Eo1IKljtfvVkFrfr5l6Tsut
         m6k63dOtJ3+UN0FbFREbSw/l3tOOZ/0Oun9YnxCWbTPw5ElnPYSyesprQOQM2uhWGcCi
         Vz1kScSFIeQNReO4wrI/TA8ETfEiIbpemlF58IqomSzu18wlCoSzXGcWIjKHNrMUAOw0
         isJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=ewfXdOM/u5abl3gdNDjhblTAvGPRkXcOUpuD3WmIYTo=;
        b=0AIiixMCEW4cLMsT2wanH0M0HbNgS7I/jRUhPEX+5bHux01wiL/WHZvTDoGK1H7YTv
         d5dNEOTa8iFogfD00tYWnBFsyPk8h7PjSbOVHUPa8qwxj5B4Rk6IXzpeHgCGqbS+IluL
         qkkjaQpnij1AoE8SsajnyZdPFmR5uOjJo5gHnnc/K8oDINL+GyoNNXLcTAalr0KHf1Yi
         XTczGT0+he9i6el+RPwt/iuBzBWDZb9xtH5+nYQdmbsAv4dXvEJOiUoD6O1OVRbdqQep
         k+F5POY/XJJDOLcGDRmTdc8W0DT55fubehUyRfyNDFvlz3wgY/9Si49zxAk/bzj8pPaJ
         5tBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lET6kU1t;
       spf=pass (google.com: domain of 3v2ljxwukeuyilmtoowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--adelg.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3V2LJXwUKEUYilmtoowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--adelg.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ewfXdOM/u5abl3gdNDjhblTAvGPRkXcOUpuD3WmIYTo=;
        b=ALypDztIQIhjngNsWODaQJXXs4MDK4vgsiL8AO/x5lO3hFn1TKWJ5t9p76bHowJC53
         IVWpwgZ1o9je9UdYNu16c3lAvRpS3GQbMZ9bOJzADa1Qxy+bGgb39h2bRTZ1YaUnBD3P
         eSfSudzHSqtd/nEPRWVrrhlTCvjtiT14tOmTNdqJfko6T1sRB2KpmXOH1sTlm+JyRwaI
         8wNE2KaT8FpTm1YjzyDPTd9OMKG6RWzo+xoF/lbl9ikJgVThQKnFOM/J3KHnxiRLr+Op
         PbVzdNlFpu3xBIOKgAs5d+/rZoFmwxQG7j4X6E3IR9J2a9FbIiI9oTuk4WxOMOuEE/T7
         a5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ewfXdOM/u5abl3gdNDjhblTAvGPRkXcOUpuD3WmIYTo=;
        b=bg3LOwZV7GWMzxF0I5Q1UME4hunbXO56Ea74jt7OIbyl/opi2hxQHFQQUVXPvmOiCP
         3zt/vDi2SliuDC7VH4vaOyvgrcr2kmQPshNzEJYVQbEihEY5BQkQm4CQLz5spxdizH0x
         tpcOffxEnhCcPqaMqFEUw4IjRa+uhDkiTH9nasGfWuM+N2TXvcrmV9rIlblQJRLi35+R
         8/aSGNQR4svbjSdec8rb0gkOsdTv4BAsldR53H0siYJyCPOk9+U02227V+i94gjj0YRH
         npIC8/vpV3Esi75m6gzWRqSvs60QXvfY84glyBqludPopwRwWngSKIScNcpLfxHkgTwT
         FIOQ==
X-Gm-Message-State: AOAM531f/cF35WkSlI9bxakVayB+gYBOIhkzgnReTNUStj1tHftfD+fH
	r91JkzV8BAKKLzr+WSoLTvo=
X-Google-Smtp-Source: ABdhPJzekLOL3kqiqd9zHp3c1CKn6sjyBsdBeTntV/wWs0CAk9tKyJmX8Z79/XmhGPi32NiX1skWVA==
X-Received: by 2002:a9f:2624:: with SMTP id 33mr1117957uag.106.1607033432817;
        Thu, 03 Dec 2020 14:10:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:37d0:: with SMTP id e16ls575889uav.1.gmail; Thu, 03 Dec
 2020 14:10:32 -0800 (PST)
X-Received: by 2002:ab0:5e06:: with SMTP id z6mr1067601uag.127.1607033432493;
        Thu, 03 Dec 2020 14:10:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607033432; cv=none;
        d=google.com; s=arc-20160816;
        b=nh8yymr7d78R6/57AVy49Uh4zUNkNf5f6nQ+7hysj4a9mqufYZghCdMYNiKERpGzDy
         Lk4aKu9+/eF7CqoyBiU8bmpZMAQa+yCDVVD+3PmyW0oqOyeZNm2wlVp68enEpz8Q5Hnv
         UmNx5hnxws9uaAHA/xiQtEcCljfIpw/8JQKtRMvjEEiUb9ODNrTgQeuQhz8vUH0GnPl/
         ApeLzlBpz/ZVqjvpzXWM6mf6HOsRTlctIzigMQc/t5d2FEAtNYTN0CUYF2OjxwGLzUrs
         BaiwtJwvNkl7WLUCmXTlzRGmcc3a0dmFi6aE60c81j7SHn3/I8lV2zfnA4Atst5WoEe2
         aUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=nhqHUHB81FfDRC5Dmlf7b4++uLFouwQ+DbxloM/znL0=;
        b=lTWe0S1V0GfLCyKylg3jx+uvqqAfztBgdOWJUgXT+C3cxB74Ft7rHSZrjY5K59qiWr
         L3CiRCDWKAAbE/QOFWv1P/0AyBlKefXjcOUCMvp4ncfdsNDoGw2F4M6wt+TLCohSG4D+
         bImiuf1jskuiz6NJD+uvaaxTKrVGu9KOVAwk+Hk7jlGvsTbSa4wco+RF1jUxHyOKl1TM
         dsS/koqCa1xCKVVEy/1ubN/QF3uiBFrnZ0RgGfQqbOSTeqgk5jO+SBc+4npLQ6KCDxZS
         LNJTqxgaMhXMNKa4gN8YCBb4k268PLxTPOh7fVUb/ULBKIFpGYl1MbCWwFoFaM/4u+sU
         GLiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lET6kU1t;
       spf=pass (google.com: domain of 3v2ljxwukeuyilmtoowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--adelg.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3V2LJXwUKEUYilmtoowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--adelg.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id a16si64951uas.1.2020.12.03.14.10.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:10:32 -0800 (PST)
Received-SPF: pass (google.com: domain of 3v2ljxwukeuyilmtoowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--adelg.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id 9so1969561plj.10
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 14:10:32 -0800 (PST)
Sender: "adelg via sendgmr" <adelg@adelg.c.googlers.com>
X-Received: from adelg.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:a16])
 (user=adelg job=sendgmr) by 2002:a17:90a:460a:: with SMTP id
 w10mr96452pjg.1.1607033431208; Thu, 03 Dec 2020 14:10:31 -0800 (PST)
Date: Thu,  3 Dec 2020 22:10:05 +0000
Message-Id: <20201203221005.2813159-1-adelg@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH] selftests: propagate CC to selftest submakes
From: "'Andrew Delgadillo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Shuah Khan <shuah@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Andrew Delgadillo <adelg@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: adelg@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lET6kU1t;       spf=pass
 (google.com: domain of 3v2ljxwukeuyilmtoowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--adelg.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3V2LJXwUKEUYilmtoowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--adelg.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrew Delgadillo <adelg@google.com>
Reply-To: Andrew Delgadillo <adelg@google.com>
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

lib.mk defaults to gcc when CC is not set. When building selftests
as part of a kernel compilation, MAKEFLAGS is cleared to allow implicit
build rules to be used. This has the side-effect of clearing the CC
variable, which will cause selftests to be built with gcc regardless of
if we are using gcc or clang. To remedy this, propagate the CC variable
when clearing makeflags to ensure the correct compiler is used.

Signed-off-by: Andrew Delgadillo <adelg@google.com>
---
 tools/testing/selftests/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index d9c283503159..a4dd6d7e8276 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -90,10 +90,12 @@ FORCE_TARGETS ?=
 
 # Clear LDFLAGS and MAKEFLAGS when implicit rules are missing.  This provides
 # implicit rules to sub-test Makefiles which avoids build failures in test
-# Makefile that don't have explicit build rules.
+# Makefile that don't have explicit build rules. Since lib.mk defaults to
+# using gcc for compilation when the CC variable is not set, we propagate the
+# CC variable so if clang is being used, selftests will build with clang.
 ifeq (,$(LINK.c))
 override LDFLAGS =
-override MAKEFLAGS =
+override MAKEFLAGS = CC=$(CC)
 endif
 
 # Append kselftest to KBUILD_OUTPUT and O to avoid cluttering
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203221005.2813159-1-adelg%40google.com.
