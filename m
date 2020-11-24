Return-Path: <clang-built-linux+bncBAABBMGU6T6QKGQEF453GPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DD22C2B9E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 16:43:46 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 22sf15278829pge.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 07:43:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606232625; cv=pass;
        d=google.com; s=arc-20160816;
        b=CTCi3k0h/USpVA1HB0VAcGzi12QiLkYfj+OwDJuOZoCPQpFgtag/C/E4XNNFqQ77KO
         9Z0alzisUHf4T22VbusACwqvFWMfCDYo4ndTYNCAyr8FLtwxG4KiwFVauxtpBlMPb7mf
         VXCImasyzz6iM2i2MfaAIzRuthrQ3WVg8/xzerCq2SVvRRJvU8kVRz/nJcVQLgMh71NX
         seC7W39Q2wJ1ZSc1kp+SPnKp04QXOK5uZ6+OuKhY0kfYbgFDV4RdihTL4YrfKGOcohDo
         o/NyiholSohhUAXtKCeV/d+H59JFEbb1A1X21wiNN4hUaFVFDjibMRgWCYT1hfDzn2FX
         68VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=KFWcUQmSbJSlp3gf+iZ3d6fbMP10qF1NlgGOp2Z+X+8=;
        b=ZTSDOGVIDhQtwk3UfbLZ2bF8PGmgCkV0Ym3qBgEtKNKQhW4gJCO6Zo8hzLbsj2i2QM
         GdrOeCqm8emTXXnn2dZ9RGoSGDmB5vwjF6pwZAmZGjyPJqYafUSbs8yzQVCHhZuXtEDN
         bYghayE/++elPyn2SkuLeg6yj5RkFOOFknBmbJJ4rf4RtNMHDXRY4rpAcJ5Mnu9JufE3
         EtjEfHMnrpgzPHTzhLQL4N1slKORkcPHXbf3hXE6DgO2YJSls97lb8UvhYaTuLCvVJh7
         1iGnibuqa7ENSSqq0m9hgtWQ1quoA2ssY2mq7rXRdRpQXB7/YuNHPXTMP1rYc9/SUvtQ
         xEsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cmmgKB+c;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KFWcUQmSbJSlp3gf+iZ3d6fbMP10qF1NlgGOp2Z+X+8=;
        b=UwV9zdo1Bn/ZJqL8ebkVJ+kfdCVlk/pA7fajtJedmM8kR4n8a1jOvmd4nNe7uyRD9a
         NUdNVQWzdVF1DEA9lX5mg55riRCPGN6nAAZEeJidgEUI/lScc0Mq6rl3MeKhjEwmssxP
         Ac+PrREMexHZFgBmnPwLmyzWQTc9yxcKvyh2S5tT/pG4T+v85g9x+n105BeQ2SkF7/rk
         8XitIcM4TzNnW3lR4hRB84qjRUhCM2RAb2eyrsaUMOj3NcFj9oXVQu+kVaRBhir9DBdY
         7Q95AOpQvlC7oSsS6qdpMD20llohBuE13USLwSjt2A9twLTW0Sb21GO9JCqdKOwK5z5Q
         kEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KFWcUQmSbJSlp3gf+iZ3d6fbMP10qF1NlgGOp2Z+X+8=;
        b=Bcw4LhSf2Wr3HKSvLVgzH5q28MHBpfznqVli84zDHgIXYIXEi2LXZ4ENxlop8H/A8z
         kBFZ7L+6EblBlnmiMBUe2uRnRdZ4R3SRsKqDoDaTCevqE+z626CcS3fMzppgjwauuhK1
         bMIBonkk1dKbslO6YMgBqZfK5W3KhunrksfrJQ6vHwzUCNhKGHsndJUZ4bhwDOsbFGEU
         l+6rS/hI2PXynqAdHWW/mYwDS0xE3K6hFl/x+wE0vEWwQLfa141PrCxHxE25NPKwi/na
         t3Wt3aBM/59GE7v3TKRbWiUUth8gHPacOcOY2E1L9pxJdROvEX4jaXHK1swNolAGpW1m
         yu+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Gw0/Zq1QZ4YwiCJjh2j6viy7RGLpvx6LnU8UvWBRuxPgcyyVu
	6sPYBjYh3tsbOV99j/Zo5tA=
X-Google-Smtp-Source: ABdhPJwVUVrDMIMP18TiPqCX8T1A56lZr8WVwrkncK1Nj5Sm/sQTJvUWWNi/hfBeOtjd8akzU5v3Nw==
X-Received: by 2002:a17:902:b18c:b029:d9:f:15fc with SMTP id s12-20020a170902b18cb02900d9000f15fcmr4377922plr.29.1606232624920;
        Tue, 24 Nov 2020 07:43:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b23:: with SMTP id 35ls2100814pgl.11.gmail; Tue, 24 Nov
 2020 07:43:44 -0800 (PST)
X-Received: by 2002:aa7:8817:0:b029:18b:58ce:3c29 with SMTP id c23-20020aa788170000b029018b58ce3c29mr4617127pfo.54.1606232624430;
        Tue, 24 Nov 2020 07:43:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606232624; cv=none;
        d=google.com; s=arc-20160816;
        b=GUWQ+IZaCZJ+bS57R3Q9EKoCfSW7k9SpzFp90jlc+/+jlyVa51KEHm4GMMEH6yCa5S
         xL7mQdUOaKyD8sbwaa2pD0iPitVAtaHGC3P+4G4Q3quebOi4yPn07x0+uO+N47nsk3Cw
         TccTk2ioHNPYgGpEqNsltO5DqJHRUWIaOHHSRHTc3kW9y3gc4+wT43liTVl18JpmqF0a
         z/ArQLElt4dmMjcxPeSHIoi/xiltCm5sTYAhmGehlB45/E8hg/pcUbZBy8ef9dfqLThF
         S6fJwFaPZg9bHZXiK8EjKn1HHUWGmpPe6yMMOyWW4hqQNhvHINaoZQxy5XD5K94VE8zF
         cQvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YBB949+h0KPPnM+yodKBZD8BpzKAmgvZ50vtFaLCkv0=;
        b=atofVx7fb6X5HPAeH8LH14eGdn5L1RSMTdV7XcCWOIC6J+popdIS4WHAhBwsbYjBVt
         7Z9RUHVc6X3CeuEjQKrCLRoh3H2V9g8jqYfZQW75W16QtfsDTt/3GgeXCxieSgazk+/z
         0jWeCBzqcnbIQL5YDk8sjHSYtRHObQSrS42OXOfcJ4jaZR/0QcmngiZh+qWgVCFh9Tdw
         lDgxNu0DaPFgwHGNXLQJLwJ5NNCoV88f8WUQuTnul8b/O0/pR0WqosxQKw3qIx0vCmbq
         dwqB1sGzRldOKtrUFCTaulUKk/oUC3wVwnyaKibL0LvTZfbjfQd9pD3njOepPUJTEqSl
         nAmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cmmgKB+c;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si1212457pfr.4.2020.11.24.07.43.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 07:43:44 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from threadripper.lan (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44AD0206FB;
	Tue, 24 Nov 2020 15:43:42 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] Makefile.extrawarn: remove -Wnested-externs warning
Date: Tue, 24 Nov 2020 16:43:17 +0100
Message-Id: <20201124154339.173752-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cmmgKB+c;       spf=pass
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

The -Wnested-externs warning has become useless with gcc, since
this warns every time that BUILD_BUG_ON() or similar macros
are used.

With clang, the warning option does nothing to start with, so
just remove it entirely.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 scripts/Makefile.extrawarn | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 6baee1200615..d53825503874 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -61,7 +61,6 @@ endif
 ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
 
 KBUILD_CFLAGS += -Wdisabled-optimization
-KBUILD_CFLAGS += -Wnested-externs
 KBUILD_CFLAGS += -Wshadow
 KBUILD_CFLAGS += $(call cc-option, -Wlogical-op)
 KBUILD_CFLAGS += -Wmissing-field-initializers
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201124154339.173752-1-arnd%40kernel.org.
