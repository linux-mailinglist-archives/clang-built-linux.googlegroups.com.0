Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVEOTPZAKGQEOJR5CHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE5915E07E
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:14:13 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id x8sf6206363qtq.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:14:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696852; cv=pass;
        d=google.com; s=arc-20160816;
        b=AxJpUzKtSyfyhUKT7Af9p5LR6/46u3OOaOVkRoAJWR0pnIBwOqKCzcBGboKTRLqTB8
         QO5658Z4zx4wO3ew+mfIJJSH27xJM+2jWtc1SeB57yvjgrmjezbRvRo8LLXxJJ4JWG6j
         EsVFVjQhsbVZ/8jI1b4zz7Olcbuui8hHQyXokN8OinRFymsYsEGOB7+H4hFF3vt05hh1
         BAc6R82qqTERscNVttkZvfwxPq2mLJq/ck6xg92zf/cm3uRQjrIGKcx3KE7s+f1RK5M5
         aHwseP/JRESiymSx+hDMzluXrVCclvMLNWHCRKzfS5i8K55NLt2CfalIzguEjqBPR9Qz
         4n+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=euRZIkoTmlfi5OWdBs/MZyL9omzwYmajbMdrCCDrT/I=;
        b=hQXsIfxekPOFUAyj91E3Gv57PX6w46v6NP1ai1MzHVLIg3xA8XqWYJGVsBS9bYuSA5
         GD5rnsTzStV7p+/y8DCl57ntwD6sv10yifzA8H5AV1go6BndPcnHM1+EOPwSQ5tAwSsj
         JFQuDvil86c9LBftQr3sj1mTn6hIXYyG08SKf5xVMppL+M1iTySXx+1yausqWiXYeOE5
         xHzF9BDZZqAuBhbDMWaz5A3goMfZRns2EcGjOyuj9FQPw1heIICuHs+2L6X0W0QYZI1R
         LpjNnUgLwR+c28DnMir1yN1ofKAyUSCDxB1yagtI+iy5doWRPtjLpKGVvo5+mr87NHQz
         itiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BQScVPL2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=euRZIkoTmlfi5OWdBs/MZyL9omzwYmajbMdrCCDrT/I=;
        b=seYNbDKY3HtBafBPppDiPwwh+7NL3QyWumuFKnKZ34lKiprN7oZduUOZFRpSZpCP/Y
         jKGbthwr/yvaBHSazkPkGzD/HGE549y2WqDNY/sNR+hveTIcVtBpKjlcZ8vFSknt4vJ+
         rjzOFn/IsMbi82hoHKpBusqTRfmjzPvOoAWB9zgkv9XDqTppdTPJ/8c/adtIlXmMtP66
         k6GSdgHDyjwtRngtNcup5sukNJjxEuK89ghxuJjRz/uAaLI0LkTtokewv0YYgxKyMU2b
         LY56N507ST66uj6SKAr1WiVitOfpXJ6Sh8qkZbS44WTfU4pr07IbcQK8FXpZIszniPsb
         D6tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=euRZIkoTmlfi5OWdBs/MZyL9omzwYmajbMdrCCDrT/I=;
        b=HFSHvT4NaHOrPeBb/1uFn65cpNZSIE0AT48r0ekxNOG2TF/tO6ZzLP9/jPeBC1mQD8
         sJ8t+6kxDWLGawtKTtqfCF8QCA+9kBJhTDddEieyf8PGJkJ5aHt5sCXzH5RmhN5zfaPB
         531k2TyYulJY6IyCs9AdR2sVcdlWiaIsYrE27ScX9SmoGN2dhVSSzQQ0/hvAvKp3nDch
         Dsn+lnmQ/vxM8yxV3OP/KYImNC+ZHDvPdl9wUit41mP3fJA/a706lEFPcu7yjsaEYWpj
         N4dvj1dU+b1/ZOu593ji4A0ProhV0f8vzRQ+YuuDHboYSCS0a4AyU3AXvn3ougOY+yMX
         Q/kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWG8kVue4/1+STT3wtTYnnS+s9An+f6QQqFr0JafZJ5PbS6YiV7
	PYxfuzfSKpdgmtQEE/aHEjQ=
X-Google-Smtp-Source: APXvYqxdLyy/cgwTX4px7sXA4rA8uTSTRPxiGSkND2aE2kRrbcxLkcL2aNmwwKheLGlA3ZI3ApLwiw==
X-Received: by 2002:ad4:44ee:: with SMTP id p14mr2728635qvt.114.1581696852724;
        Fri, 14 Feb 2020 08:14:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:321:: with SMTP id j1ls545792qvu.6.gmail; Fri, 14
 Feb 2020 08:14:12 -0800 (PST)
X-Received: by 2002:a05:6214:209:: with SMTP id i9mr2802891qvt.54.1581696852330;
        Fri, 14 Feb 2020 08:14:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696852; cv=none;
        d=google.com; s=arc-20160816;
        b=BiIZe2xufOljwOySB1eDyFL6q14MCUJEvu45A2B7+vu5QXImBJ6FMv+c3LYTGHFGVc
         OYYXCvbo/GKIF1gBbd6wlOJ7bD3ixwbrBfYVRAPLg4EhsjapdkmpqytT2TKt6f3z4owm
         GpQsIj7gmxWx4b+VplTif6MBOmiy1h3koGdkipcTgAR6t3j88gP1J+XxlPqenJKWTVMc
         s8jdwQY6KJGb5/7xo0BHrHHo0mUVk6XlGcND92z5MJyuTtj2C6BXdi/lJkI9r0mX3zL7
         hF6/+TGfPIpId3ohDDoqPrDfmBFarbj4D8WvB3sKf/ZcqzZ5i1Qy0QHHEwpkGR314obH
         JMZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+oZrvAo+KkbqWi1t6Wt5QtIspqZtfvuRNWVRtc1Pb4Q=;
        b=VCt4ykar6fiR7M1FgfL7paF4MA7US4zI+3TNMVsIz/vq2PN6TPHbfXVzKVnFOquvvo
         gZemZadoaC/ZZ91tZr5V55y5AlZwsG3PH60r1+ljPI/mQeLnUGrEF34EKg/URUJgIofR
         Q3bDeM0PrOf7jTtUQawgTuopG3RXNi6eejQ3eV9roQcSgl3bWiKokeKiWmMToynT0Z9F
         2lv1Si0JGkzghzokbV10vAl5JVSKtBSxJwpNsXYrtssrPs5moIJ7luA7llMAG3RkS7sm
         9tRLU0TtIWOPg9maK+m+jU+M/4o9odUWseMwbwxyuEjHqucO4lO04KcpWZ/4JGwWqEBE
         +POQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BQScVPL2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u18si34110qtk.2.2020.02.14.08.14.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:14:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6287F246CD;
	Fri, 14 Feb 2020 16:14:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 112/252] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
Date: Fri, 14 Feb 2020 11:09:27 -0500
Message-Id: <20200214161147.15842-112-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BQScVPL2;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 4dbc96ad65c45cdd4e895ed7ae4c151b780790c5 ]

Clang warns:

../drivers/scsi/aic7xxx/aic7xxx_core.c:2317:5: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
                        if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
                        ^
../drivers/scsi/aic7xxx/aic7xxx_core.c:2310:4: note: previous statement
is here
                        if (syncrate == &ahc_syncrates[maxsync])
                        ^
1 warning generated.

This warning occurs because there is a space amongst the tabs on this
line. Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

This has been a problem since the beginning of git history hence no fixes
tag.

Link: https://github.com/ClangBuiltLinux/linux/issues/817
Link: https://lore.kernel.org/r/20191218014220.52746-1-natechancellor@gmail.com
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/aic7xxx/aic7xxx_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/aic7xxx/aic7xxx_core.c b/drivers/scsi/aic7xxx/aic7xxx_core.c
index 915a34f141e4f..49e02e8745533 100644
--- a/drivers/scsi/aic7xxx/aic7xxx_core.c
+++ b/drivers/scsi/aic7xxx/aic7xxx_core.c
@@ -2321,7 +2321,7 @@ ahc_find_syncrate(struct ahc_softc *ahc, u_int *period,
 			 * At some speeds, we only support
 			 * ST transfers.
 			 */
-		 	if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
+			if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
 				*ppr_options &= ~MSG_EXT_PPR_DT_REQ;
 			break;
 		}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-112-sashal%40kernel.org.
