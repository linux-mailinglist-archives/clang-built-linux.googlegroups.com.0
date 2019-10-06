Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB3WN5DWAKGQEUKNYCII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C1FCD5C6
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:39:59 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id u12sf8986970pfn.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:39:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570383598; cv=pass;
        d=google.com; s=arc-20160816;
        b=j/4lPT/kJxyCbsjj6SgT64h5ulSbcsGwjetqF7YaIysmbArAmKzF31iZJamtK7gemF
         AlBNBYW+b3CLeJrZYQx3AKwQ67sCgfWJjZ8BdWq8MtWaOJ+sfKzn5V7HCfCrX2dCIsMX
         wjUz5+Aniz/08bPSVD3O+48RcWHFrilmT4Lxi6Qf+CcBGV5e1ARDEo9FG2yMw7eQZU4I
         6hNFJyWCNNc5F6FdW3jyHL2xVRz2bq7+1tjUoSGm7+hCY10zlFr3nOUjjLG9pj0lc0Z/
         WvGmOwknNVVcN6nhEFh3RAWBLpkEuEkQsxQC3+eelWMzOS5Im0HtsEjuXU9OIEr3cs8+
         eyfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=QRVoPfgTN0Mo1zMBZM+QiFVypo1fLBVGxseAu0HNZxI=;
        b=b6SPCiFNyjn1gcdylBgddxsVoCGPjY8/XyrDl87ZPoAo/nlzPAgdpGL6yDR0p5/N2c
         zPz0dNaJlbOFPswxZoxNow58/yrddqRxmnnSQO/Juw/d9EajvSEg01wVYXEjYWJErltV
         m5GxhT2lK1Lx4Zo5HyLVQyQT7+gHhP81O+gQTMr73oDjbFJE/Eph3pI+EmAUQaLAStVz
         wgA38JHp15IvBTOb5aTW4537PZcXdBm6/Fy9AIg7HRZ0ZGp2PB60+2WOv7E76qkiLXrF
         eQcBiKet9ojf0V3Eg90tbqaIAdzQ0HeuNz+HeZGjd/AevIezNqhF191PtYPyd+kJNi7B
         3ARg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=brvip0M5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QRVoPfgTN0Mo1zMBZM+QiFVypo1fLBVGxseAu0HNZxI=;
        b=OdGA2Vyaz/ht+wL4BURUZLAGeqsVtaRapHcTi8fMaPsMr1kzWxWpawKBlIKu6OEkLM
         wwjc6M6ZW2ElVqwppADqmj1toqfFm47BzWRFgJtrPcaooJYsfzxivorvZDIGBTd+Bwqm
         dvUyS5/x1ozlxhhePTEoX5gHtlP5gt2XkGdSFkzUmBiChVpv87IjUSpT5Dg4wcVrjnu8
         rwtS8s7EQEFIsKJmkjxpxGeai9Scm8hRGhgYlWHiinZx/XY881zJyIYdVonbCRjIEf2R
         aXOQnNFmRG0kMc8MITjL/5N654Lp2MI0q/CfXiDF4r7Bx8ntwjO2gTCI/TjgOOoNbn2s
         H23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QRVoPfgTN0Mo1zMBZM+QiFVypo1fLBVGxseAu0HNZxI=;
        b=WD/99rKQO+jCeKjt8YKjCGgAwhQsqnrbS4QhzmklBX1tH2TGAds8aO05YEVZcTyr+E
         yzpuDSZlQ9Kuy0+plebZxoE4jc/tT5Ck/qHblRSJGJ6ClmayNO830e5mUOkaC8zgamPx
         HOiCwR6xOppRU/Bwys9Nndthh4ZgKmYykTQmNwNRhHWR9aNlyW7COlmPvY1DMyRePL7b
         kI2a7PtOjrbX0n//V/uIi3IU1jfCCXn7Sy77YvBHtNamuD/104afJQnGaq8di5RMOIP1
         aBngCTUNhTVs+W/+JXS32bVsRW2ENBwloAi2FG+qk+JNET1Aa/80+SwvwO0ks/MQ53Wg
         hsMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUqh8bOc7VGOSPEZpegpH0gCExCYsXFQG40vvcuLBLezjSPLXTM
	W5qDZLchlUSbJYbSC/67aY8=
X-Google-Smtp-Source: APXvYqyyWSGUIoAszikU05T83CRBWndPkgYI3tukRSKphbSsVDow6dP8XsiB9+YbuUPymeibKVVFuw==
X-Received: by 2002:aa7:9241:: with SMTP id 1mr7675127pfp.184.1570383598253;
        Sun, 06 Oct 2019 10:39:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b115:: with SMTP id q21ls3641679plr.1.gmail; Sun, 06
 Oct 2019 10:39:57 -0700 (PDT)
X-Received: by 2002:a17:90a:fe04:: with SMTP id ck4mr29249568pjb.74.1570383597950;
        Sun, 06 Oct 2019 10:39:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570383597; cv=none;
        d=google.com; s=arc-20160816;
        b=sLlVDehvSARGKY+4ssgmav2GAMijFgad7tUt2rzQRUYz8fsXTtDGhqoSEB1Fg156Ja
         SFGhUJZWvsNE0PlxMGAjDN4Zq/4La0J8R9eiZcjw8IJVom4Zzoo26VGDTDNEWSt+WcDI
         An4FrKS7ACEsnGzttvJp2ySlNC9Wr5TTW/+0cYQrtPN3CmYjnEWY9z2OAAoqLzJ1dBbg
         DtFw2nCZmayk0LPWzwtXb9sAkvsVGXihLfAzblT6V4++LGwHEkQjPr8cVcBbYGni4a0j
         MXPTzYcMJkzEz2Sr/blXf+gPO3/hiiDirc6kqYRjawGKuTIo1iSJahe2iy7zMUnAqwsb
         JByw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=jKzls6tYy3uXjvc9rUs8dXJD9R89rT35l9nB2P2e6CU=;
        b=bRWAvh6hluWAlhdnRfWmqY+WFHlbDUbq4/b9X1st9IQFo3cE/1E+QJu9gqqMo1x+E8
         c60B+KqiBgYpYv5uB+N0oosRL1ZjdzqQICMBjie/n3eaRITfKos5iPQRURRkxGaRu2RZ
         Vk0qB685bz3m5iAdg4mnIXKvT7FaVRH/b7miZdwS8dA1QpNEe/c713KU4rObUHqut52h
         GPnJoqCKybhcqHQ+bmsLTXvclV8VGwH2q71AcTss+Yg08B+CvcxY/iz+vjl6eOskVaeg
         A5lQCUfSbk/9Wi2/QB/lYEQRxbRgg1rNOje6L5CDrNpj4O9xTVjcGTNEKSALE8Bpd8TY
         G2JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=brvip0M5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b1si743287pjw.1.2019.10.06.10.39.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:39:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3298820700;
	Sun,  6 Oct 2019 17:39:57 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Huckleberry <nhuck@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Scott Wood <oss@buserror.net>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.3 025/166] clk: qoriq: Fix -Wunused-const-variable
Date: Sun,  6 Oct 2019 19:19:51 +0200
Message-Id: <20191006171215.243938906@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171212.850660298@linuxfoundation.org>
References: <20191006171212.850660298@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=brvip0M5;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit a95fb581b144b5e73da382eaedb2e32027610597 ]

drivers/clk/clk-qoriq.c:138:38: warning: unused variable
'p5020_cmux_grp1' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp1

drivers/clk/clk-qoriq.c:146:38: warning: unused variable
'p5020_cmux_grp2' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp2

In the definition of the p5020 chip, the p2041 chip's info was used
instead.  The p5020 and p2041 chips have different info. This is most
likely a typo.

Link: https://github.com/ClangBuiltLinux/linux/issues/525
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Link: https://lkml.kernel.org/r/20190627220642.78575-1-nhuck@google.com
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Scott Wood <oss@buserror.net>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/clk-qoriq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-qoriq.c b/drivers/clk/clk-qoriq.c
index 07f3b252f3e0c..bed140f7375f0 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -686,7 +686,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
 		.guts_compat = "fsl,qoriq-device-config-1.0",
 		.init_periph = p5020_init_periph,
 		.cmux_groups = {
-			&p2041_cmux_grp1, &p2041_cmux_grp2
+			&p5020_cmux_grp1, &p5020_cmux_grp2
 		},
 		.cmux_to_group = {
 			0, 1, -1
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171215.243938906%40linuxfoundation.org.
