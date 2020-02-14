Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6ETTPZAKGQEIGBPMRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B5E15E2D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:25:29 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id z73sf901460qkb.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:25:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697529; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5ucNR2rk77HAC8kZGtd75gogbPZF4p+3F7h6qTG8MnMpLiy1gH14JBDBGxBackXa+
         ZwcgICxdecAURHBIRVbJvcK0OqekKgJIeyezAm38NA/Vdc/Y8LwYyAkkYjXaXyuzWAoX
         ZRCIQLJIFJKkkL53tdBS5E8kMfYBM56CW5dRPzQTALQcGRyCmnz6CHzn4BK2sakgUiKH
         oWps6lTRfqmPXbHjCPHEHpQkMNh5k07swy5EMQbrjjUGSiMXwo4cDZGlbW4XLrvCHuS2
         OwFYXdtMvH4+px0IZarxHwPqW2bPhy5ExmbZNJJbBsuAmQOMc5TWv64oLy8Hul/k8b8z
         ho7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eYQt8tqn1RGjvDouncFy5pZ3IviTfvionEeJfP1ZiZI=;
        b=Sio1d+B+lLXstP97PAh9SKiCQBwsk7JIWq3thxEpniioRSqOStf7dc3rlQc41k/2K5
         Ls1S32NRzJtZIkIsvoz7PeOEfVq0Ao3kYEwZB9PrBscz9vwWgfDMb4kSs4Woz80IfQph
         ucszw/n+/jROP4zX0DqWloXCOeoaz9s7sUBmdOX8Ad+fKnpqeoPtrzM15mCz77b2ahfz
         x0WPOSEueHFScaduqed673jWDYrM+6w9QBYPy1TmLyLu3Rg9H8oSlyb5ZuJ1o+ofs1K/
         +df215sPuXGVXdNnxPcuIYXC3y85G9+P+RRJ7m1YTmuQ+NPy94FJdBIR2kko4UjSRkJc
         8i+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n0cOuoKt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYQt8tqn1RGjvDouncFy5pZ3IviTfvionEeJfP1ZiZI=;
        b=dYQ2oSytLXkmdk0xEIW0jlZPGF27pH3ExEkuuAIBdDnwdHKL7nb7/QHZRd8e+rp1I+
         W7pUGTNc8kaHMNq3w1CW/yHJt/veYVBAY+GbokOeah6L4ALEboZ4x0oRNg7lLnCOKsjv
         BanKH0Ji5qw+IwHVO4KIYQlnfQdNkvcT5NWJGoVRTSbkqMSdcMAAnnw8W9EnXG2iFXG6
         V+I7ke2o4Zay3QO5zGhDG9+/BE3WZJxT3Nw6M72FVESIBVh88UFM/JtkJqm2w3fv3sjn
         ASF0tWGQT7AM+2UWi/6So1uDt67VFvJSLN1vomYHBe6NNUoXrJ0tvwL/Dr68b7a+kmoS
         fJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYQt8tqn1RGjvDouncFy5pZ3IviTfvionEeJfP1ZiZI=;
        b=drS0tKsTS8+gBX93PyqXGFh7RZghNsdAx0qjlppSpl6uofopit7IJ8vM1R5tRfuoaO
         A4re6Vr/tmi+D5qZY04T6QPtWF0R3F+1uzhyEppw3IB1zbWMLrHck2nTZRW94Gd1iquc
         x9oMfRHjcVTaM0rYF6Wa2YuVJ1YkyyTHaS2je2Pe+JL8QyXGJmjuhjI0ciKZBXC1C3Gk
         JMn3rrOw4CUE6o2rNVjMpJjQB8GHmMYotKQNlWmiHUwtOwecqDXKyIWYbbOLL6T0Hp/D
         QArKEl3x3F2YC3qsx1heoo0meLYbZwyGasn0sIK/UxaiYbQLBMTDTYeD8QukRu7cUZEp
         VkbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhFnPzGHTPB1AXGLS1HMKGB7/5HL56XH3BFr5XkDeebPdBReHV
	UNw8QEbcWLTsffiFgXZa2AY=
X-Google-Smtp-Source: APXvYqzM83Vm1RyCtpK7oy30dE7ZFzIP554NiPPXWBqhESwcFm6y+qaX3MxKGhHUyu9JlL8eWvJj6A==
X-Received: by 2002:a05:6214:146e:: with SMTP id c14mr2952929qvy.82.1581697528901;
        Fri, 14 Feb 2020 08:25:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:38e3:: with SMTP id g32ls961636qtc.5.gmail; Fri, 14 Feb
 2020 08:25:28 -0800 (PST)
X-Received: by 2002:ac8:1851:: with SMTP id n17mr3264048qtk.305.1581697528478;
        Fri, 14 Feb 2020 08:25:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697528; cv=none;
        d=google.com; s=arc-20160816;
        b=SMhwX8iE8ISqKbeak7aHwZpim4yblmoHMmtA/Kx7kPCh8C6ZnD0i8hCA/ebC7iwaWv
         0EsADEqAjFM+YAz97T9I76/saqBngd4HJfVY3ztDnE703zAbvQNIE7Cl0FJHktRQvZz6
         ct19HmCh0qIRhbaQa1cJCFZMXoME4tFzMKG4nAW5C+idkm8Kp8/Q6BdJV4SQVvGVH5yw
         D4Ujc9EUwVJNddpn/DClIZC/SmrXhj9KK7yeZrnkhAFJO+lC2t3Ne4MkD/oUY2f/zocE
         /sb1vLeoyAH7YQfHZMxRD7Nnjfb/UKGmFayARWGQd7lMfrsgMI8wD8ePHUA8Ia1kN3H8
         TEag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XAG5uiOukw9phA1BvSdiPdrHiPjaQdgdU/PGJmyyv38=;
        b=EzIBdDGRmvS6cjV4a+NI1JbQKNvghTHGhMMdzf4Syx9t8fPMWTfjuUbTGEY9z2tqJh
         GdrNN9ggxjujZhIfcQ1tMdFOJqe5StVt9nti88joNXkNa5tWzLckbD9Rb/4WwkV4Y2j1
         L7HDX1G246h/TI1Kzqtt4iMXBMua+W2nNwC0N9Iet/97S/qIauyIlTd6ttDzoc1NbGh0
         sWya1Qpa0xYdAFiysiYTDOnpQsiAjJYoNMgMZcKhUQllvG2y2l8O+are6oV62ZW5Pv1J
         hYYZpTRl/+XdlE+DAXgyUWhlNlRk+1axZ5jsNZJAm47k3o0ulsLnAEq4NTjGSHK73M1y
         2BsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n0cOuoKt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s25si322049qtc.0.2020.02.14.08.25.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:25:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B352A247C7;
	Fri, 14 Feb 2020 16:25:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 050/100] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
Date: Fri, 14 Feb 2020 11:23:34 -0500
Message-Id: <20200214162425.21071-50-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162425.21071-1-sashal@kernel.org>
References: <20200214162425.21071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=n0cOuoKt;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162425.21071-50-sashal%40kernel.org.
