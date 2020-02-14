Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIEFTPZAKGQE4LWX5NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B90315DC88
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:54:10 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id i3sf6077399pjx.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:54:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695648; cv=pass;
        d=google.com; s=arc-20160816;
        b=c69pHzf/dMwbiZOkDrMl8k0bK3xjuhEVVWXacbDiqrM2aW9tuVzo6PWNvxrarglzW3
         XQ5rWAbbq+0nXW5QrHLQsCS+i6Roo05rQf3oCPJOFS9QogVvF5mch03EmbrADFZk/SEr
         OKuK130PSjsHSpvArCfMkKHJ7KUj06qzrLmIXsssIbKLR9yWK1U+WiP1y7sp3flOULoM
         7UWmV7SPKL5cekeuukT4jTzkQlTXNQMBOXSqj+sWV6s6yukAhjWbOAPymlJWjP4iiOLA
         uVeT7OjDmuZ/6rG7GcPacunKLSKOkcK1naKe6s2Vj1+iVeB7ezv0BR/rNnNos9QBvqWK
         mkKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3L2NIq6zj7IPvXaHn6B3+zGah3T4KdXw5IwEPptKBMM=;
        b=KXcGSMoTuiWsCXo+BE7wBU44hn9beujXEVPAKnPJ45kk5dbo/huYaEog0Xd0XMBVzu
         dVbb4X6vzmZYqysDGbxs2iooOXu/+d+YOExw7S20xnKTOuA9NPU/ehXgEgq2usByTOzY
         HSIXyawWh/Z439fQLsDn4hI3tiVmino+KWXtrqYa5UcbvNMicvlIxyU957hSVJwfQQw0
         8MQFHJzkC6Cra34XPUm2YKnb2eAOm8+ZhAX0Iy7djIcC7plALVH+Li11HcoM9ElnoWBk
         stPjhzRAjx96q8aprUX5og+xv15fHzWs+TIGvlE4NYY+E1C5OgpIBz6mLNjWGMXK6pmE
         3d+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=erdbXuro;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3L2NIq6zj7IPvXaHn6B3+zGah3T4KdXw5IwEPptKBMM=;
        b=GtsI86OmD1B98RHQm3I9oFffxanpguCYycgaj/lIWa4Pytbk+oowEzlOjGWrA3Av86
         U0hvezaP8kALcTZd3uvqdlFbQHCHqc4JgWHPW83Y5LxWwJKFkEYZYZ0l3hWw1GBrjfZP
         OR5xBTmeIzAzZnfEeSQ8xpVO/YmQWmAfcS9bBRaw+OAULCBYvwBM/6iTfVavBw645dst
         HQhzzMrIJu1hLu/ZdyPJ6WpdVcyODNL8apV53vbegpCrrt8eG3io4DDkVdtFCD/tB8cq
         Jc2IDqN39U0LY7/ULHm4YZQi/TtXVINR54qF65d8fuJUiMPamwVb5j47e8ZDMGFQpEnv
         edng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3L2NIq6zj7IPvXaHn6B3+zGah3T4KdXw5IwEPptKBMM=;
        b=DTh6muiH/CAYQrRQ8KfaxBbdpsHlHILwZTyBSOfUOwogiaoRmanNI/uQ6yK2HesQSG
         bzgVldZUvOaYLX5bIYutBEmnAhiSsvX4SnZMReCx3tlFBMZca5sA9jYZ9R5hLELoDlBp
         Rqb+AOgnGFYfLWD9gr5Djn58Yi2sMUKoWGYF2pKrrNmt2azKLbKoCwtgq7l2RaPhtwla
         io2XHSRFh68l8XoL5Vtgo2SGXcDm13Y7amQpSXlA30jzdQkgq6nUNfAJZdyXH69a9t/I
         7l+D9okKbw0vfj5EU/HXwkLFeTMhCMPcF90tmv2JLKnX8+u8+7N22BoByfTHzZbFoMQ8
         m9FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUVtgyjmnrQvRRL3nHhP+0CIz8xA/gWDhp5951qGxyoAZyJKdN
	NyctyidM0p3XR2kl/MgLowQ=
X-Google-Smtp-Source: APXvYqzFHpl8y1eeSqdU9P6MSUzfc3hHGkvLtKlzItGlz/cpvTA9QDPlyPPuY9DDF9ROHR7vp+zlSA==
X-Received: by 2002:a62:e91a:: with SMTP id j26mr4216406pfh.189.1581695648727;
        Fri, 14 Feb 2020 07:54:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:344d:: with SMTP id lj13ls2190214pjb.0.canary-gmail;
 Fri, 14 Feb 2020 07:54:08 -0800 (PST)
X-Received: by 2002:a17:902:bf41:: with SMTP id u1mr3892820pls.207.1581695648312;
        Fri, 14 Feb 2020 07:54:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695648; cv=none;
        d=google.com; s=arc-20160816;
        b=oQxt5OPpcdQ1fvkF1fvDbLXKX5amQ7n2mo3rK65fwOlvHIhqdmo3BuJCJSU90mQIJW
         L2R8UvvxuLl0/Wlv8kWPy62a/woMuA/ID+SP9E8EDS3xGS+tMCTrzDylhJWdfyXJpBzE
         gC67Nl4eoAzvqAZE2eX6tDCbmTit4hhldRg+M8ZtidKli2i7VZROlbdOPN9iqyUzdNjA
         QhELTWf5pZC7OctEip+f3OMOeRj6OkOT0e80yfjkN77drYssbc5MSAns+NWxqPvp0JHl
         Y1kYekJm5sfu7/xbO6Rlc3qct9BxcLwsrBSla8sybCTPM9ienYNYHFiGB+uzryrJcYt8
         cqtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tFJD7dwIceOtXhZp+9SFebkru4T7ebGwB68tjIUmsL4=;
        b=GruUfi+XQH3qO6+XEepLR6Ae/3j1xI3+XyRfv/1mwpoLhMipRfYLe3eFqLbo1cGeOk
         rbpGljtVEkqm+4cUxhhWbYpLbZ/VAmNgAQzrsHQn0rCwWJQimW0qVd5CA+l2Gl5XFOVD
         SGgHMkG23AFZxYjnB4sJidt6gdhoxSxwPpWEohrswKfVgus9dyyk1447wFYsdLuhOj73
         +BNZ5syWmdwoUtNkfpngjpa3XBy16U0BxUTkHikaknRxINlifTiilzWq39+ORwpTevpZ
         A1+c1NALcWoZ/A5715DsAFEk76DyXpVoszQtE607HaUGYdVsXzls6Sk2Xzq//sC/TWH9
         aSuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=erdbXuro;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si106537pjv.0.2020.02.14.07.54.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:54:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 42D7324673;
	Fri, 14 Feb 2020 15:54:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 241/542] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
Date: Fri, 14 Feb 2020 10:43:53 -0500
Message-Id: <20200214154854.6746-241-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=erdbXuro;       spf=pass
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
index a9d40d3b90efc..4190a025381a5 100644
--- a/drivers/scsi/aic7xxx/aic7xxx_core.c
+++ b/drivers/scsi/aic7xxx/aic7xxx_core.c
@@ -2314,7 +2314,7 @@ ahc_find_syncrate(struct ahc_softc *ahc, u_int *period,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-241-sashal%40kernel.org.
