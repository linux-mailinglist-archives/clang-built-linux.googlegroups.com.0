Return-Path: <clang-built-linux+bncBD7ILO4XQMBBBHHXS35QKGQEUSG4TGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C50A0270BA8
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 10:04:44 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id n24sf2839826ljc.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 01:04:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600502684; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZA5OTp/iA+4taSMU2yb8u0hPk+r4k95AqOR44x2RAaKsvW/88ntSWq3w/yDboslZ4
         dm4pr7ZkvC2yFpbNNUYUqAkVfVxLflryB4Xpn0Dkgh9vtKUWSUJCUUI6Q6R3NqUSsXd6
         a1SQUZKoGN9QiTSO1hRBFLACUgbY68FAksQHwMLolmtqi/lI8co2yV3hD1uY0eEkoChB
         TWbriNLQKnF35dlfrhaenhPkdacC8mHUAo8TEKhQN1S3jyFf+Ks4+ftkbV30eQ+kd7nK
         ZeyqzuVo0KkJ81eumeFgecQaBo/cEbGIkgR2vtEQ5M1ffXMBAmLpDtBVcPrW4expIS8j
         sXQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=4MIs2BXXZd0S30KUiAhWbh7XyeqYqjHdlV2ULqaLhOc=;
        b=mNo/jNfWB3coUQ+oAfETw0vlGGsIpbt8W7XiJ2YJe2kOpqL48bEpyG2W4q8D5JDLBz
         Ikvs6BUlo6DOqiGNBzpZJj0ibQiwrYndgzBY+Zjc4Ak7ar1lWv4nsLDL1R0UL2qEVh3S
         8FY8JyQeQu+hqvzqf9svIV0pYwee0Loszhm9CY1+41//WKbWcrXt2sTQzWMuFOgDWm8Q
         RIgkFZ6hLROzye0SuI9c63Rf6pNlGNOp78niIlSmSzkMabYzbMY4a2UbJlNYSmOb2Ezn
         /XKzJW8r4PDDrNkeG+8VlqTD7jTEeLed8b8JTG5gCmAp7RC/N8MUpO0Smzvz20yO/TcA
         5jaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rRvZD8N5;
       spf=pass (google.com: domain of jmkrzyszt@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jmkrzyszt@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4MIs2BXXZd0S30KUiAhWbh7XyeqYqjHdlV2ULqaLhOc=;
        b=hqNnUnls3J/Hv59VBB2ixZzfdTMmVh1pCoEOJVQfSWuGWNA54YEudWJfhxsfCukxju
         /TJekrg1x4IMmkUnB5TF+5OXnAj0jbEDeZHDaeYpNvWRIHy2jdVGnwrlngfRaTADmaTz
         FH/ODZjFwHYkTKE68s5v/2IATLaTrjy9naOMs8enVWjUMsJjBQnJ8BBMBjsPi0ZHhrvY
         g8knemR+5Cf548EWW8IERvtYknN5q6VM1fcKbyMqxvl3KV+S8qHAbUMDCCEyuCzE+Zuc
         QGuW2deaGPxmetNyRd/EXpUPX2uMl3F5L24DQDxbLa+3tP4pWMC/sLe/2MYXhet8gvsX
         5k1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4MIs2BXXZd0S30KUiAhWbh7XyeqYqjHdlV2ULqaLhOc=;
        b=MQUWziUi2bKgy9oHCSBQghFDHuzzMVXg/VyYeN9BG2pUNJ20CzC4P2karoBtJNsiz1
         rBtLFIIhy2FzMGZR2VjkmUuLQATiq8FeYBdqJW4CjOmihh+b2eBxLY6u0zFb2JPEp7It
         iKnMVyoNN7vCSfGVDNmCFx3wjpQRSqp3stXCwln0nnD+4cgs0u603tMReRYsBN6jY2ap
         I4Te5I0pCvPQl7X2uGxHeHRSFRXQoAcs+kHwBvNFuFkKOBczxbaoi5zRktGukM48Txu+
         EIlPGoggino/pd5miuFCvYFqhD4zUEcGeOvtawMNMfSpzBI1t+qWZ55Ju8cswaV4BuXo
         TOvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4MIs2BXXZd0S30KUiAhWbh7XyeqYqjHdlV2ULqaLhOc=;
        b=F90o0eg8EEIJLiBM++Dgg7Nz0g4/PqJ5bRLRHteliWEQ2lgTVUo4W+pB7ZSt+AWYzR
         cgMOTp8kB6uXFLBnWkFbC4yYBDdqYRLD+7iHBcyruDwkNoLopoHsW0Uca1YeJmzxVqSo
         7Y/Lg9tiS4dqTh/BdHm4DJj1ylv6yCT44s0BpfF4NTcUibAcM6pTYaJPnVbA7IjM+wFy
         EIUKrkwAuF5eT3VcHemPrB7g3FyamCvKdH8I8Gyqzuhwd8/bw3NcmYevhyzSESH67ZBz
         /P3ukTvuBppLk0T594QbhLOFlZuN7rs7+SLYpC3ifHqgOG/xCGwwmRaZfaFTI7PDcvUW
         I3qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rX/oFmeW8d6rGwI7tCUHAf1O6SW3lXopPQh1ucxdfvKvcVju6
	ltdzIjT7Se4BC/iQVvWlgJI=
X-Google-Smtp-Source: ABdhPJwdXqNu3pzlX32ghRmfH6KDKI8ElppFTM+eVly+AvUxXLYuqBlNXFfB+aqQwDM0KxmbYRLcBw==
X-Received: by 2002:a19:cc43:: with SMTP id c64mr12740852lfg.123.1600502684269;
        Sat, 19 Sep 2020 01:04:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a93:: with SMTP id p19ls1116408lji.7.gmail; Sat, 19 Sep
 2020 01:04:43 -0700 (PDT)
X-Received: by 2002:a2e:8956:: with SMTP id b22mr12672595ljk.85.1600502683245;
        Sat, 19 Sep 2020 01:04:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600502683; cv=none;
        d=google.com; s=arc-20160816;
        b=bAqFFg+rGMWr7M3BShPPfBDSTArkqubCfs7QaXfSH4qzWZZkrlmwQsfQ3T2skdZkZr
         uG4Y285P3X5/9lvHy88+srma2Umt576OotVJe0F8lhgE8I2dcZlppT8gUBQHmjrkNc94
         VBLcZZtNvzUsJL6+U9tlYDYJfikCPunQuyHCYTTLFnafGLJvFSoL3bIngGd5apTHOzG6
         gVv/v2C1PwRJYHiMYLlOM4CJWsBKN8KbfyptCw70NDdzNnrkm2YGrLFdMqUc2F8b/CNQ
         Q5W5FLJtB6A2yopJajai24uUgYYLXpX/Np1XnDYlj5qWMRzIhZ2CMuimCXgwAXvkHQZC
         QZVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=74d+3zdIrItu4yPjssRFwYhLxV8d+x9MW5ISlAEwzIM=;
        b=FtZTcO/I7juXiYe/gwxC8uGiM0vMZv2v8UJPBvBf584Bg7GV3gvpOsyamFjkI57oBu
         gvlftZwmy1xYZWP9NcJnh90H10g0n8RtohDXjOHKjdvfsEqmYSn7liu37wfAmzdDHfuk
         VOrMWfP6qbCvH69t+JwWQlIphH2c7qBp+khKhhiKRUnhnkX9tgNTjCXGcqAOYY0o/oB3
         0JbuV2aBfnJQMKZOMJdEdOz5xpLjeO4UuEGyFtpM1alS0psTb70t81364B3hiXzcSiC6
         TM19/7cnDMvUkqItL+rOqMs8KOy/gfSsXQVQgsFwMFd/12mHw77K2yj1Pn/0Oo1M/AYI
         jMPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rRvZD8N5;
       spf=pass (google.com: domain of jmkrzyszt@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jmkrzyszt@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id t80si119263lff.9.2020.09.19.01.04.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Sep 2020 01:04:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jmkrzyszt@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id a22so6879367ljp.13
        for <clang-built-linux@googlegroups.com>; Sat, 19 Sep 2020 01:04:43 -0700 (PDT)
X-Received: by 2002:a2e:8904:: with SMTP id d4mr14161289lji.322.1600502683030;
        Sat, 19 Sep 2020 01:04:43 -0700 (PDT)
Received: from z50.gdansk-morena.vectranet.pl (109241122244.gdansk.vectranet.pl. [109.241.122.244])
        by smtp.gmail.com with ESMTPSA id c22sm1110110lff.202.2020.09.19.01.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 01:04:42 -0700 (PDT)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mtd@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] mtd: rawnand: ams-delta: Fix non-OF build warning
Date: Sat, 19 Sep 2020 10:04:03 +0200
Message-Id: <20200919080403.17520-1-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: jmkrzyszt@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rRvZD8N5;       spf=pass
 (google.com: domain of jmkrzyszt@gmail.com designates 2a00:1450:4864:20::242
 as permitted sender) smtp.mailfrom=jmkrzyszt@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit 7c2f66a960fc ("mtd: rawnand: ams-delta: Add module device
tables") introduced an OF module device table but wrapped a reference
to it with of_match_ptr() which resolves to NULL in non-OF configs.
That resulted in a clang compiler warning on unused variable in non-OF
builds.  Fix it.

drivers/mtd/nand/raw/ams-delta.c:373:34: warning: unused variable 'gpio_nand_of_id_table' [-Wunused-const-variable]
   static const struct of_device_id gpio_nand_of_id_table[] = {
                                    ^
   1 warning generated.

Fixes: 7c2f66a960fc ("mtd: rawnand: ams-delta: Add module device tables")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 drivers/mtd/nand/raw/ams-delta.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index fdba155416d2..0bf4cfc25147 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -400,12 +400,14 @@ static int gpio_nand_remove(struct platform_device *pdev)
 	return 0;
 }
 
+#ifdef CONFIG_OF
 static const struct of_device_id gpio_nand_of_id_table[] = {
 	{
 		/* sentinel */
 	},
 };
 MODULE_DEVICE_TABLE(of, gpio_nand_of_id_table);
+#endif
 
 static const struct platform_device_id gpio_nand_plat_id_table[] = {
 	{
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200919080403.17520-1-jmkrzyszt%40gmail.com.
