Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI7UWCAQMGQEESKX7SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A90931D224
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 22:33:25 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id 42sf9881049plb.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 13:33:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613511204; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBa8qBWuisRLrwmujf0Kfft0Qb5siUGO1fUh0vs+mdHPKbdIaHAnIZ6XdBKm9uj0IU
         aBCAgAfalzWEdOHBM1wPVBrvpK3I6Sd2fzHJsEA6Xn5O2cP7EJhgb2tV+jQwF13Dd317
         beLgjlnuNREjMehVgGtRqncY0RymhPmYCKxLvWgvstao4EWoU9n6jbnsejWPh9Uele7q
         vfg3aLB6y12WZw6sshlrxJvhRQBZwB9fS3cKxj+pItZOjQTEDu4pwJe7JeDD0iy4+53X
         wqZXJ+fkMLSGmAumdwQLJpiHmfErgZqyjDZ/sfcM6IpgQIiimMzeOFPxuLC8sItq2rkZ
         U6wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dMBKN06c9kPwobDF1AKmW2nvRqgppgRwWfVoTjbDthI=;
        b=McI/Dkd63lt9Lcnz0n/K7yR4ak/lIUtl/HYmDpFNQ+7YH01ZojmDMAUwJE0Ch41rnr
         p0Rz05En6VS2oe7JUHpQrSrR3qstYvtSYRe3Rx84GQlotntqZBVXhrdXXlNAisBaGIW8
         bFuzoYEC6a9hf/xbE1NknnQQC+qAET0nymf2ls/D9G/xpzaK53ARmXBGbWwxrw1LulVW
         SDJeVIugzWEGr7CXiV81r22+63DaylX38rqDgu4naL235d13QQBPpoY+ZCrPu1I1vkmy
         1gPeu+oXTAQIu1AJnzBEcXKvINDfqfw0GJ+M0sykVKziEeKWbdDCevsmJIaNVIWGBLje
         dB4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KoFDnzHY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dMBKN06c9kPwobDF1AKmW2nvRqgppgRwWfVoTjbDthI=;
        b=UEiTzn/KeptzQtW31CWwYfVTfc0rIErTLcJWWYNCpEm7b/b/1F9xZsmH56a0XBleKY
         mycThXT0JzDHo6O4Rds1LQR2JN/ygpibCe0EIkowXpjQJb7V8UESi9tzipHKWZY2qoMc
         2KGE6gXOlx5VTnIJGXsdg/+D1Ptae9OJYyS7kD6wwS4prLr1HYpD2GDtd7g5Ju4jgkuI
         8G7Lz4iek/T4QeBF9OgGzFoYnLhHzGQkihCpTggt/7+wUPBchsR9XtIy9+73u0vbnT+N
         sR7/AAYl65SdbUFGIRa9YSgtY9EMktG9ga9XdWr6DIaImYwbIOTP1f3QWs5aYa9CnfPA
         t+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dMBKN06c9kPwobDF1AKmW2nvRqgppgRwWfVoTjbDthI=;
        b=kmALclGtxtCO/0kJl519QBtXxYRNb/gORP2Vul+CpkiHSMW3Ds8kUzTIo5NDa5QxhH
         XcmJFoi4uhwtzJXWr6uuki7xpi1WZSXIl8iiXWHhcdHYKl91kslxIJ0wN+MVu4sVd3Cp
         6EPZuTE6zCZpSu9GRtQUuhfgapZXXO99U6+RM1NMPYWeAF6WCeb8zFJBj37Bj9iWIVcO
         o8NtqbpalplLgaYcAojLdH88snVRRriaw2w+vLsyZwYnzkFSrU3fdaFeBfeh6eNOCJaa
         HLsF+FpCcoGec3MyUZ9OSMLy7zsNe/v2v5iOCnF35G3vERq7n8S7GASaMXp86+29G8BF
         f8QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rmPcvyfshs2ba5RdbecRZbEkV6ecOz8Ut7CbTeVVeG1kZ6eS5
	qOU2jMmgotUYn//24QXSAKg=
X-Google-Smtp-Source: ABdhPJzUG9aOAQMSRNITTnv7Ue6jsKK4REicKjHWJRULxf9xCOWR2ThYgXtZoyt3qrQuyJCLSAn2uA==
X-Received: by 2002:a17:902:edcb:b029:df:cce5:1105 with SMTP id q11-20020a170902edcbb02900dfcce51105mr21772594plk.2.1613511203886;
        Tue, 16 Feb 2021 13:33:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:da46:: with SMTP id l6ls7899534pgj.5.gmail; Tue, 16 Feb
 2021 13:33:23 -0800 (PST)
X-Received: by 2002:a63:d751:: with SMTP id w17mr21217816pgi.182.1613511203256;
        Tue, 16 Feb 2021 13:33:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613511203; cv=none;
        d=google.com; s=arc-20160816;
        b=O89R01OYlh8lpdXxZaoAC640ZStpgnxFCrdb9tbn2vTWw/Qju+jxRPIFOnQNkcbg4V
         jsWDMIs8pyLxRVqr//eFvxflA7yU2mj2VnslX1532TMYqsLiIP6KaceaYIFVRD6gjZFU
         C2QvSyuJUTTtACDgRpotrtpqF4EKcmZJfrM11nSfp5a6e0Vd4evyKdx+hgscje3ffSeb
         XmABavO7b45p8KAAYydnDGmLH4HMhD7D6RCs6OswjnH0fFLTKULZElhcDp4epnbZNdKe
         /crEreSJRh6vBLfFmOzkbdSLjH8QPjIVYz9uOJ03jK3phfJe7FnUbmhfQ53UJ+hcqvoI
         /HeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=lSjmvjHDGutbmOjObL713bgK/plA/whMqp6zc8U8PiM=;
        b=G7F8n7uFLvB7jV4H0ZDWWsDkGaCjnofBI1w0GW9rmfvs757V6Ic91N/m9+X29qvdpj
         p4s1eIp8GcpBo3GHG9ZKmsupmSrTf3a5SwJBINvtX3/0Odlpikr0TtjIYZRsHizB6wXi
         1zdcqpzRBwjv9iVbuLqqdgknhFp2ZfxFL4f0LhJzCQHa2KUc1GwtR3h/YI0sBqVGJdTa
         33GdsA1ZsXvt0QMExQkl7RzI6jIQx02FEaTmmYP0X7VuNWcjwD7aPZJvSjAODxa/bkwG
         lQUuIVnejXuK07GWgX0xJwFINyDoZ06/GThJ1UTfDB7zsXScd43uebMDQwvZvcu4Gjmh
         24XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KoFDnzHY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u13si6808plg.1.2021.02.16.13.33.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 13:33:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9420464E08;
	Tue, 16 Feb 2021 21:33:22 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	Michael Fuckner <michael@fuckner.net>
Subject: [PATCH] Makefile: Remove # characters from compiler string
Date: Tue, 16 Feb 2021 14:33:12 -0700
Message-Id: <20210216213312.30462-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KoFDnzHY;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

When using AMD's Optimizing C/C++ Compiler (AOCC), the build fails due
to a # character in the version string, which is interpreted as a
comment:

$ make CC=clang defconfig init/main.o
include/config/auto.conf.cmd:1374: *** invalid syntax in conditional. Stop.

$ sed -n 1374p include/config/auto.conf.cmd
ifneq "$(CC_VERSION_TEXT)" "AMD clang version 11.0.0 (CLANG: AOCC_2.3.0-Build#85 2020_11_10) (based on LLVM Mirror.Version.11.0.0)"

Remove all # characters in the version string so that the build does not
fail unexpectedly.

Link: https://github.com/ClangBuiltLinux/linux/issues/1298
Reported-by: Michael Fuckner <michael@fuckner.net>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index de1acaefe87e..9bfe1307447e 100644
--- a/Makefile
+++ b/Makefile
@@ -581,7 +581,7 @@ endif
 # Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
 # CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
 # and from include/config/auto.conf.cmd to detect the compiler upgrade.
-CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
+CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1 | sed 's/\#//g')
 
 ifdef config-build
 # ===========================================================================

base-commit: f40ddce88593482919761f74910f42f4b84c004b
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210216213312.30462-1-nathan%40kernel.org.
