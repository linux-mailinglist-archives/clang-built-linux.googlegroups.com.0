Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB64QTPZAKGQEWGOO3QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF13015E17D
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:19:08 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id z19sf6321205pfn.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:19:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697147; cv=pass;
        d=google.com; s=arc-20160816;
        b=bdpRkpMZPzP0hQgd/0EYQQOkywMpW/fUv0N2UDFk4Hal4CH6zbVqh370XTyhgBqm2h
         3by+I+pDubP9AYYL6uSye4ByqbODaTG0MXqsg4nCL+2IKfdeK9YdURL+1giLwIBYu9Xk
         T+XK0pnhrv1E2FwxNveJjmmnsMdKb058+YOtAi//U9AQsqPimAb/xGTbZ4/5L4vrtZj3
         cDfJzPZKRTWoZC3gs4VQtUOCE9/MEYU4bXuG/ONIaXoYukodaqMWSXYIdhAAE1mSSV2+
         qZYgbnGKC16vAWTOl1cvo5m0jsGLN/6waX6bh9rKMGW6PhHm5OVWHmF+54Ly/Z/Mhi99
         dIyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2JSGdyaelTf5GJGBwfehsuMwcLq8IAOi5eTdybmNzqE=;
        b=zK0i76FKRkmAM7pMrItiAr1I15FGiwjmJ8X9UuVAy0uig292sFI/r2iwC+av23G6c3
         dSWi+b3T9/JgLGnqhcdUkXf8maqqJd5KkXXJvNNxPUgZutv+SUIaSa7gpIwaq63ALqA4
         Lm94mN+0p68IN4qNpzgp+QCB+HCErEJu9Fv90ovJPiOxEXgSde7d87KSQltvlhueeqfd
         qNa2Mtd56WYFYava0mOQ/3XrQu5f2i8p2jliRxAegyokBTrp1RcOjAWp3CklY3q+AH3F
         XGP7i0jH/+uIU/ZTr/rEXaHYO3Hg5iYrwMloLD+bbRpQ0AQTy/CPVY3BsIA2vHJyXIi7
         rxWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="d64g+X/e";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2JSGdyaelTf5GJGBwfehsuMwcLq8IAOi5eTdybmNzqE=;
        b=Ssr3mmQ0PkpkvsCN4aqxwD07HmnbinVWIAL2LE/T8mP/f9LAemBrKF5EzlGqpt5Eai
         ec3j/f4JHLNyOJ+YFzzHlA0J74jJQhuh1dDdQfXI7Zech0qM1teuG/QeEGVqDqcernC+
         wmnDVoC2eerqXkNk+JFiFfA11Kr0to/WLxc83JrBPobCuBE1wfwLVRlfrz1VTHRNO6d4
         45WEdUkW2UrVO3eQBPTRIUS9qILZEt+eI3q4iM0NlU0dmlL610fd/Q15ZHzL4yNNUSE5
         RRfFRTEmzoZwdSF2Lk2gl+62LN6miffBPuffJYiwlve8KCd+yu6pxHGex6Q1id26znia
         ZNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2JSGdyaelTf5GJGBwfehsuMwcLq8IAOi5eTdybmNzqE=;
        b=Yw6yCbX88mRDCVWTeP4ehXZj7vQHZ454fs9pouAjwU1dXD2NTjM7Fxj+xW4vQrdBjr
         yW6pQ2oljqXxVm2M970E2yaxskwV9+I4Wz1xYdh5+R0C+Esy7AN//pJ0qLsPp7sgIhlM
         BwbWMG4yDfXcSyu/q8RhNmcflnnRvSxClKB0DO/W8Q7lEBOc4JXPdtz1+iua8OSP0C+P
         f8tZ587yNcL2v2G9pR/lOyyURRmTZTBflFfq929zF0CtA4MveLy+P8OEoLzAXKu8INHy
         oXmcAljawQbz2uuAK6esf8voWDJWmQvIvJ+CnC5kfSbyUnqhEFUUtkVMfI2ei3sC4C+y
         9i5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXSUk1rPhC1WItYDpht5MWH3qYnYWVsjfx+GQulbf4sxNX2GJo8
	5LBFxxF+HhopCV62cAbpNBg=
X-Google-Smtp-Source: APXvYqzWH//a62M+mvGPLQ1ODzHrXS+MvpQ+lZCu140zFccdgbg6uotkuzMNj+Z3s8v8Aakq4KUXeg==
X-Received: by 2002:a17:902:aa49:: with SMTP id c9mr4206200plr.145.1581697147585;
        Fri, 14 Feb 2020 08:19:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls2206426pjq.3.canary-gmail;
 Fri, 14 Feb 2020 08:19:07 -0800 (PST)
X-Received: by 2002:a17:902:9b8b:: with SMTP id y11mr4216588plp.189.1581697147194;
        Fri, 14 Feb 2020 08:19:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697147; cv=none;
        d=google.com; s=arc-20160816;
        b=gJ4Tf6qdi3xPhxbLZKlOCLcxGzH0zFmxV2IQ/jweAdYdDgO6XPaPG/ZxFbL0MEzGdT
         fnIKCcndq3ABkOlg3hNi5Um51L4LWyhcql3N0NK98GEgKm/gyBlWwk94n+eDnszYB+el
         u+FnczAecSrTuY2UNAr7YuwbpnQTKx1L7IJ7NyeD0n5XZF7Di0Ou46Ik8KrVLDoEcVqj
         VAqFjpESnPNHgWZ7MCgOJxEOE+wQofGGz+2tbub7ZXiEPQ80ko/gTNZ1riC+DEVvvQCH
         54GIvEtfIjZ/7zL2UbkUrsu72YTX5fVWnDlf7SLrg3OlxD9cax13lz7c7cQVF49oBND2
         nL+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WmTM+kKNizGtiaom1mukvejipnMmezkzYemoY4j8xlI=;
        b=D8AmKD7BIp16xKtvDbF21rvcxh/wANphrPtqq2kvP3HqrZ5Pf/PHauDOb+4napLtbr
         4v6g4goTryEd4AhttAnxNfBMt2Wlz48HMexBr1yQvP83BsUbTsPzwybIASbdx/rssFRM
         lELrHifY44nTKbnIlOE3zcR2K/bWjHfKFGTV6VCeFxn6RmoE27RLVzTImYvo6fM/qCQb
         5NkXTSkaKRUEaBVD0i4VtYxDqSaWp5ufe5OTBUW6jRw1Yauwwnw/U+2vVi6LM67frSPe
         PTtop90wlg94eHUCmRAc3irR1Z/cN/VV0Vsgl/ZRf06Ahu3TNTYpIAVfXTz/1TuAw7yt
         QkGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="d64g+X/e";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si19366pjn.1.2020.02.14.08.19.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:19:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1D45224714;
	Fri, 14 Feb 2020 16:19:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 086/186] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
Date: Fri, 14 Feb 2020 11:15:35 -0500
Message-Id: <20200214161715.18113-86-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="d64g+X/e";       spf=pass
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
index 3818461640031..fdbb0a3dc9b4f 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-86-sashal%40kernel.org.
