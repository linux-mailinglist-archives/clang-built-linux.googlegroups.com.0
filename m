Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXXQXDWAKGQEONWR3YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F994C098B
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 18:27:11 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id x20sf1433997lfe.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 09:27:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569601631; cv=pass;
        d=google.com; s=arc-20160816;
        b=CwSPCtz5lUOPAL4nBYyZ0SFVrhIm51gnoY8Uh7+NKwV6NQjunFh3ORwIGOsAEqivWj
         SUPXf4f1ZraFWIvFyFepCn64msTyFdRnhhW7814bhyt/8zX+a/7kNLO/9/wZuLkv99YA
         R8AWY1Zyk2rRTmng7Y6X7DBotxmIVo8jWRx1dGKEsJ/RKWwgbC7dYCmeIESpAl80f760
         0UyjQZwx7T7oqjPTdD3xHJUqAJsIoESagdo3qttuSryO7qqlW2LRKwUTVCHW3ejwTcdp
         /zyrEx8/uURG4TIapC2+OF7i7Gq+RNDt4azgi+cMK9LjG/70/3WqYXDoskvCvc2Ee2iu
         HHKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=nDfc1p8JSUAw0UtaEPDnmKTvPWgxVOkh+3B37z1Cj5A=;
        b=TY9O4YSK7j4qaN5JFEFc2OTBJPc3eHAVNKSL2U0NRaDN8KGSwC3D5x9tTxiCSlMklP
         sB3o1gxHT68lLA/YBLzDbfz42i8V+a0vl6P7q8lEPs4McxMR3yvEJetS+ZXfUkqxDZr9
         mbqo4lItHR3T0Lt5qGmEm8z4Of2ftKAVsO7jS2ziL9j9exPjpcOvvjuVjpCHvife05Pn
         R+byPS5OwJ5Gc1XQadPFxX4n0WH93JRIC98B/3svxSO4Ht+Izx+XjMivqa/3GT2hL3hF
         MBUsvcnavbrjesjSqRXLCLp+MIPXlsOj0BdlkvBnR8RVdrF4bGu4s8AdrFC4Aa7Gtt/j
         3fNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ARglq3II;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nDfc1p8JSUAw0UtaEPDnmKTvPWgxVOkh+3B37z1Cj5A=;
        b=EpBNnj6LXvyrZs0m4sawex06qCtrNmPU8WgCQNCIPN2peDeqhGNfwR6VRKKXUJ8uja
         W7nAwgYILPT3TN3TMOt2qqsSska7hBm4VgTqEQCUUdgM0UHstLNzfZeq2w+aS45NT0JW
         8fIor+5v7U2vSSplFV8zlO1Uhn/Enq/Eslk2ywvCltLOkuFe5e4fuZr2Ul9wEFO4IbyO
         wI5cr4zVfne3dJ2qus2nXyoIQWfRnAbpmriIHp+//PHaUNXKEywLtPs7vdcwXe6f9pYv
         oTbEHMCc1xTKrJbOheZfwETIM/FLCMM+V91kqbkWREr7xnyrrF5pluhutFyOZgcQTRz7
         ehWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nDfc1p8JSUAw0UtaEPDnmKTvPWgxVOkh+3B37z1Cj5A=;
        b=NKZL3l1lPMCiDHayg8NPKa6EO7TJJWcmgvpioX8TvUanZdqlb1jyYdIsGPYDBrMinH
         sH1yyYG69Cg8ymnL/BXiSdWCNPh6tHwyrrOoafQ6YoKtYV/P+1oSI4Y86UBS81Papknc
         D8kbhk4Ss7Kk24oqRGnGU2fsf8mWKqtQI4pZKlDgVqVM2CFcK4yF87LUxmoEYxfJNdEk
         rUSiFaMwcnLBNh6aHkduBsZhe2GYAT/G9EcI4zwWAU6kWcymaApXhvGddzRrxFs0U0Ur
         jiFN7kb90hZMlK+YTFFkUx0D92bHVBtxlA1ZdgE9SndzKmTmlQezv7CutODDmMYdYZBK
         qIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nDfc1p8JSUAw0UtaEPDnmKTvPWgxVOkh+3B37z1Cj5A=;
        b=IPROUrpV0Oi6Z7Iehg1VVYRfa7iMuKdUE9R05E/O8vL0ybgaBz2HANNifdeMvlEKLK
         On1gvcdP/vbGTXcHcnoBguKvVmit+Inp7e6uryLa4/3EX4o56LWdq93y9n/6T7GH8j+y
         sSwJ0yEI/g9X+KatS1jmc8BWjbpIfkAUzzJZvDEe5G0//u0JOvHoi75RfcHf3BZ08zPg
         01m5WelaK7bTtJQKWhi7JX3mjK+NHUjx+RlCUbrIEHUt9mwW1Jw5Zat9VudJsIS4pzxY
         NiSHj9txdPIeL4CgV//t+8qYd1gv6MTdmEVIDQL5zC59L5z73nnkz1zvZfPtofVOgtsX
         0+Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5CZFM7JWMoysshDTgGa+XoXrM4qW7zDKxuTYyH127Xsz/atRW
	0VTML1AqsXRJ6HnXUCGHJVI=
X-Google-Smtp-Source: APXvYqzV5ieUWOlzM6vW0JVqBBQy0+Ou1lXZjKi7iVD8/Tda6rmHXEjot08PT8drZ+GDWVmtyZCJJQ==
X-Received: by 2002:a2e:3e16:: with SMTP id l22mr3352180lja.195.1569601631059;
        Fri, 27 Sep 2019 09:27:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f613:: with SMTP id x19ls458837lfe.16.gmail; Fri, 27 Sep
 2019 09:27:10 -0700 (PDT)
X-Received: by 2002:a19:f111:: with SMTP id p17mr3427013lfh.187.1569601630390;
        Fri, 27 Sep 2019 09:27:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569601630; cv=none;
        d=google.com; s=arc-20160816;
        b=XT7FHLewwY4pRC5rP5yA9MzRsuIDtM9PZ67Y4Iilt9JwpRT2wpbMckWHissMEMdLuw
         Znpbg3oqdoypIxORFaSBgckXoss3kivmnlYc/NDYmTEB8obuoPGNuzUyx92U4UCW71gE
         ayRm5n9R40X3FFW9tu5CIqtJw9Q3hemVYrTSSx8wgsOp8m8zLsyhx9+aVjsPgaMD6f3v
         HDn1/Ye6FA5umPoqRd88bzkPNay4aYGoik8F4q1WqxUKcv24twZymvL/Xahl2/gIWE7b
         8ghF3sKFmqCP8nHrBrJrD2DceN+uGBHNkmUDlFkGSxcqD5Y26nqzzxRROKjplf9fkCa+
         xmVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2lCuiRbFgOSM4Ubgy+288vYl4eCNEBz3B+rKFzHjDeg=;
        b=h+VGUDpJ7gJDWfOBucp9G3zV26SNfTiPhZsqEIMenjlBAgUAsgpzXH1vUsB40VeOdD
         ouoAaABN3Bqq1Qgf/VjALmxiqQCKH4H6qwnH3W1PQqLqQhL6JwOgtdBuD3pHXUlnIVc9
         0gyTv8Bz1/mOsBqVMCTKj6GmyicDdKZ1V5oPfqGarO4k4V1Tq6ZxCTlKs9kVUmGMpJB6
         aKf7zigghIUSb4LvIfjvnU5pzeO4EI0/TjptQuMilaniAIXD/dA+z39CwfLo2EgwmVSj
         tUpoZR7X8yx7afbtHOzi2oUthRmavp5rz9Hi5v29BK5eN4Hm0w9hTMr24Ha+a9QMITTZ
         8BuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ARglq3II;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y6si159279lji.0.2019.09.27.09.27.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Sep 2019 09:27:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id q17so3808517wrx.10
        for <clang-built-linux@googlegroups.com>; Fri, 27 Sep 2019 09:27:10 -0700 (PDT)
X-Received: by 2002:a05:600c:2052:: with SMTP id p18mr7841656wmg.13.1569601629706;
        Fri, 27 Sep 2019 09:27:09 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id o19sm7609986wmh.27.2019.09.27.09.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 09:27:09 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Renninger <trenn@suse.com>,
	Shuah Khan <shuah@kernel.org>
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] tools/power/cpupower: Fix initializer override in hsw_ext_cstates
Date: Fri, 27 Sep 2019 09:26:42 -0700
Message-Id: <20190927162642.2292584-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ARglq3II;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building cpupower with clang, the following warning appears:

 utils/idle_monitor/hsw_ext_idle.c:42:16: warning: initializer overrides
 prior initialization of this subobject [-Winitializer-overrides]
                 .desc                   = N_("Processor Package C2"),
                                              ^~~~~~~~~~~~~~~~~~~~~~
 ./utils/helpers/helpers.h:25:33: note: expanded from macro 'N_'
 #define N_(String) gettext_noop(String)
                                 ^~~~~~
 ./utils/helpers/helpers.h:23:30: note: expanded from macro
 'gettext_noop'
 #define gettext_noop(String) String
                              ^~~~~~
 utils/idle_monitor/hsw_ext_idle.c:41:16: note: previous initialization
 is here
                 .desc                   = N_("Processor Package C9"),
                                              ^~~~~~~~~~~~~~~~~~~~~~
 ./utils/helpers/helpers.h:25:33: note: expanded from macro 'N_'
 #define N_(String) gettext_noop(String)
                                 ^~~~~~
 ./utils/helpers/helpers.h:23:30: note: expanded from macro
 'gettext_noop'
 #define gettext_noop(String) String
                             ^~~~~~
 1 warning generated.

This appears to be a copy and paste or merge mistake because the name
and id fields both have PC9 in them, not PC2. Remove the second
assignment to fix the warning.

Fixes: 7ee767b69b68 ("cpupower: Add Haswell family 0x45 specific idle monitor to show PC8,9,10 states")
Link: https://github.com/ClangBuiltLinux/linux/issues/718
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c b/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
index 7c7451d3f494..58dbdfd4fa13 100644
--- a/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
+++ b/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
@@ -39,7 +39,6 @@ static cstate_t hsw_ext_cstates[HSW_EXT_CSTATE_COUNT] = {
 	{
 		.name			= "PC9",
 		.desc			= N_("Processor Package C9"),
-		.desc			= N_("Processor Package C2"),
 		.id			= PC9,
 		.range			= RANGE_PACKAGE,
 		.get_count_percent	= hsw_ext_get_count_percent,
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190927162642.2292584-1-natechancellor%40gmail.com.
