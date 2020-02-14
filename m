Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWMSTPZAKGQEKBVJXAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC4C15E236
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:22:51 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id d127sf6314627pfa.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:22:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697370; cv=pass;
        d=google.com; s=arc-20160816;
        b=gEaXt3kxwN1XHUNaWqtDqMg/YvosZg6vYbEyRD1hzbNGldnZL3DQIX/tolBxQAP/kz
         h37O6DqmUNVqWJMYNRXXIhak0S+rqJak2fPDn8aajvFdeqD3oIQuwcYPyeeyow2vCrHI
         aHiArPCWFDkJMWT9MTCI+bsjwWsxfudGa6AU5NG4qbyZys5rzJHAnhxqc6YnVq9tNew0
         OSSQCSwK73SZFxHWPUqGNMpTtWMAdoepOl2DdzfLku/5zv8/LoiTgs73Z/AMD8F2xd0g
         9b+TKVp9vJjuSuM5XoHAhWvd4ep9EL22kEXyN/USFBJzFEEFbP0w0u57ba033UpqGg7d
         3LOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=osisOXqWXDYqrrqc9DUrs6gBS4KqyxMmj89L8P/sloc=;
        b=Mu5A3JtqF0iaV2sbrNqGuniTEheQdlJVsNjonKIiKB+SRYm+2aOmIApSzzOpZanGas
         vbfecH+4OsHIZFg3BMKucKXLpfdCXPvw2T1cgLVfNtjP6D3nXNJSnGImulERox2DEmBG
         8JioOtiEPj6QccO+/siXHWJCit5RIks+uMwJeiwpoh3epONgGylhcqTVLpXyJ9KXQjTq
         n/AHxBTKOsRvCX0LEzjCmto0gk/aveRyiBFbZD6ollDmDcSLTa8FzHxwQ0B71JhLht+F
         bA6wr6/fo9btniFgZqWTH+EdfmXlOhfPZphDjY+i+DmPNcD9GmY7tQQKcTcQ1Cch52hm
         VQjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WSMZMWq0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=osisOXqWXDYqrrqc9DUrs6gBS4KqyxMmj89L8P/sloc=;
        b=m+xakKG3IxRP4cy8jdOutdtlKkvzf5o5VWBOkmSVWtz7CaXgMTB2URYPq54pmy3X/d
         GMCq0UNI4H5OcXlm2d2OwOIoykDuvwqoKCH4hSL+LAOtsAuAtzxTZdLRJPyuEzJLY6jQ
         tgkMeFkbxP5Bswar+VmuRZywSlDZFVUIZ79FSsASeZCpkBjtXSsTF2S/v+T320IV8gk2
         bV9pP3Uw/eQvUj038V8gxMYUGNcCWpZdXnp5UgDCDghHDuZTV1j53n6OawPlF9Ye91UV
         Y9ObLdcEcvCZjkVEYk+VZPGTZ56t9ZRM7w8YnREp6hqDjO9TIO80h3rNbF5M6yfZyuCv
         Kx9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=osisOXqWXDYqrrqc9DUrs6gBS4KqyxMmj89L8P/sloc=;
        b=F5pRifE1E1hyaObVhxqEBcYTretgKjbo3YichbWDEfcL/rVqLujWIVSAMJpVUblB0z
         utnN6LFCQc0XZdiSpinCUe6lOw9H1DVeaLxLGD/ef4qyqxp72hihOcMYtkIaupVHyerD
         HfK7YpZ6XBGkduwjPrNKIxm77q8WA1knVmfG1Yinteng6WvdctsjSKCh8iyI9GRG5fuK
         b7m0lWH0aMnzTJ/5xCmZ9BOcbhrJqShMdbrKhCjVWfpFD5lEUpC16ZaA68SIhFu4nLuX
         jFuTmCQGV35qlHJSYNJpdR8Qc+h5wMyD9ymXJ09N09Ki1oeJlEr12R5ErpfGmx+nH99u
         VyHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4JUdrxtDQCURGFE9c3kJ6aXHIIU53Fe395OZAB0E2oX3lasV6
	ffHial/awNEh9yGcHm10hdg=
X-Google-Smtp-Source: APXvYqwRjTxekB7OZtjk8cRfuprZJ2RWt82SuYzswBn688Cm/Fx/5mGia77KalREzy/75feNB6zlYA==
X-Received: by 2002:a17:902:6a84:: with SMTP id n4mr4070685plk.294.1581697369912;
        Fri, 14 Feb 2020 08:22:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls1762754pgg.2.gmail; Fri, 14 Feb
 2020 08:22:49 -0800 (PST)
X-Received: by 2002:a63:8f49:: with SMTP id r9mr4412513pgn.190.1581697369487;
        Fri, 14 Feb 2020 08:22:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697369; cv=none;
        d=google.com; s=arc-20160816;
        b=zXMX8wGah3S+HhvvXckboVxgrtbdIVKHl2PtCjen6YEwM4q7eQ26ZSydduEJ3m3RuK
         VacysxwQa40rL1imuyzRUBhf9JA2LauNXHFniYQWcYXrqUP4fYWXf5HyYXOLZCjOFGal
         qez9YC/eRmIK4cNI/8IHFzH0F4rwwWiOL/XeM0Kdq53WsND+QcePscVJobjTorf3ASFG
         TqPQh5+yucR7l9klHciUs9gRmiPFuRhequhPYux5R/NWFAIC2GFbdFd+eTSOs5xSt4UO
         JcWu0hbxyTY2WgB3uj1bNMs8PLukKfSVhqPVjx/De4ms2LYmeXBWaiXK/N3TeI3RUKaW
         5QsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XAG5uiOukw9phA1BvSdiPdrHiPjaQdgdU/PGJmyyv38=;
        b=CxZ17EEDQsnZ5gxLvsYJbwjPjy81X3sXSSXPSk8zMm5Ft1FwZT3MQVmOhKQNLUf5gO
         pXSOeToApfduoMjsNMeL3zENlc2Ua/wD4h7LLSELsv8D+THXWCCRAo3raAW1ofSqo1Y3
         PbTEY7Gkgn89NQGqpJDy9g14Kp3eIh7Cgqy51VfjWvKLkYMUdzdYfZX2Jap/T0K0ji04
         xKngquem99Pb1qvjcRt2iKe+6q+2PBduE7bQGpUHDpbRAWP5nlK59R414SdkUCJeZZ4Q
         mD47ifLVM2otSh1AtKKXI+0tK7NoLLqLP91tRAppU9ge4SQtz0cj9NomV5jsutX+HAd1
         edwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WSMZMWq0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i16si289475pju.1.2020.02.14.08.22.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:22:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6FF592473E;
	Fri, 14 Feb 2020 16:22:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 068/141] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
Date: Fri, 14 Feb 2020 11:20:08 -0500
Message-Id: <20200214162122.19794-68-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WSMZMWq0;       spf=pass
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
index 64ab9eaec428c..def3208dd2905 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-68-sashal%40kernel.org.
