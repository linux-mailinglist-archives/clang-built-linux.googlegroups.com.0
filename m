Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPUQYDYAKGQELU3B6RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2384E130066
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Jan 2020 04:36:32 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id c68sf16787813ywa.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jan 2020 19:36:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578108991; cv=pass;
        d=google.com; s=arc-20160816;
        b=jwBVYsu523jgS9M8VvHhSCw7YOs1elaew//76YyWl5WLA8yngHViBfeP/BbBmqO6nk
         8YOvZzDiR1GVh9fHc2coGyojVgmnNRZwqhkXoSadVE7T84X6hSGslZMU7liGTW7lvp/1
         66fiUWCIvJGCZEzjxUaJ7QAY9t8syyWbF/OZZ+AiaSdANUdmjLsWLguDfx1Qyph2peFo
         pzbK2pHJA9iM2zCZrJiG9cibbMu0Nyhvq/+ICpdNaSuImpSIguMvPPoBhw2LUro3oHrC
         Z9mnQhLpjxHQVExL26zzioWdAanp5MrdVsOizvTZN8NBrPo5aIwPd4DBCbxFj3rMkfCa
         6LcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eUOsLAELFeo3ycSJAI9l+Ykid2XECElJKL7snvzvhc4=;
        b=dXgRT1F2OsCD2+2lJlY8+YMkGYMQtj5Trm216syGSDWDgSzGeComjD9kd0CazDvuCe
         H/MQAfUK1CucAHoB20xHpeoeAiPjcjCo6PAkafVeDwAaiI1F92uEFFYbETKpLRW19Hlb
         AZfqOfQob8B2PdUqM1SFxLPuIx1uqtWAuglVMcMVzmSrRKR6HgenOX5os2Em2Dyb9P05
         vPUplOTZgJUF41Qsv5ASye+jrCN97RDeQbgoZyBm0Ix9scnVNYwiwG/DhRtRzkK26IaL
         tu2MgZMANQGMQGEU8iTHeOi2V6X6I7MS0ZqzGkmllbuvPkREcm/V5sHAEZ226zG86ovq
         id1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bftARHLS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eUOsLAELFeo3ycSJAI9l+Ykid2XECElJKL7snvzvhc4=;
        b=Cjck68rfLu33R2MtWGF/qSCc8LlZfAvVRXwEfT+YFyxiZ5nbmzk6Z1F9SBm50hbJ2t
         TtPNZHC0Ww8TMduYJ/7K1xrjGV/yqU27jUmmBFFmU7dMRQHk/mI8Rfb0pKh+h0zPX1Vq
         R/KJ07y5R3BGA6cjg9kM/f2onC2g/v87YV/+hmgHL1Qek5dmXocqMAS7oCYaJ8e/weTA
         RcobOcgscdFXIT5Nq8/T5nkhWbmi73O4sat7JKUlecBf40FphOi2O7w0WSV7fxn7Ej02
         rkUkLOWNl+VNhTQhP8LreIykx+ik1synsI6gzPblDROI+lzPxF1puNwxpavkx35JyE90
         tCyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eUOsLAELFeo3ycSJAI9l+Ykid2XECElJKL7snvzvhc4=;
        b=BopiUrmBnSBHR3E5h3Vgr9s4GS3eC1rR6KUPmLfN9zWj/RHNoNEzM6H/oPpT5GAXHu
         gQ4vUGOuw86DpXtOoi3QLhumskn6EJ1LNeKXdeTwG++NORxAP4JoPcHu1MN2SbNtH3q8
         EgjwUo2PGxp29bvC61ycwI9+QenVDB/PEoZvnZJlLFRPTglqJfKfbr95DaCHsFoX++hZ
         DR2lNB63jjgS3lt7kaAX+5g86d6myKKa1N1OgmhcgqGf5EZoeZpWCs78wfs3urOY0Dx/
         2bBCpg/raq/dYe80rxUhgJn6UHfjlekH47Rvl5kKHMNYlFIUV5+BJIwo7Kns2xUud5rU
         zn1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWtwY1XiCOm1Knkg3/WXnAUpKf7Yx+A7FTY//0UWOWGYC8eXVcf
	vOxYrIMlnBNBbThgaEZyHl8=
X-Google-Smtp-Source: APXvYqxpxypLKU7+PUxtAlqobMnklESpYJdhVFcmKUYrms87giormYA+Jrtl2dheTBNrGdmX63Oc7w==
X-Received: by 2002:a81:4303:: with SMTP id q3mr66799169ywa.242.1578108990899;
        Fri, 03 Jan 2020 19:36:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:2e94:: with SMTP id u142ls2992485ywu.11.gmail; Fri, 03
 Jan 2020 19:36:30 -0800 (PST)
X-Received: by 2002:a81:b40a:: with SMTP id h10mr54024166ywi.396.1578108990507;
        Fri, 03 Jan 2020 19:36:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578108990; cv=none;
        d=google.com; s=arc-20160816;
        b=MPCth96QXcylI3W+8mOiqAr6vJHY2jZSfXvM+eF07pGo1Be+DOTRxWqVEHgZ9J+5At
         Thf7nO8K0V9bfAR2b8U7Gx0P6WxrPbD5QS7mjIaTGv32pXRWkIvAJqgvrzvRFZkw3Li4
         S0QC0fG2CpXqSXxvkyFleV+JL7RlRuK20k9l97Jarp/6oQTecVTACHX1AGdY8nIgzSMJ
         pU3bCDBlIq8hdCoI+GtixuMfMryLISmXI33xQhWLm7+Xqpz1ahNWgObYCjbBODEYm+Sc
         6cdS3JyVfKManLx69k7ltRvgIDcyvn/VuMQpHqZItC5NTZlUrSGaJmMRJs9SLqK6RdJF
         soJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=86B2GUdKFhaXpPq2eRR2P5xNg8BbuokuBMK2Pc2M+C4=;
        b=lJczpTiO0VN/fAf0YnYB87vS4sxTvP7Bcitbhjp/y5cx/2cXcCUy0m508k2IjSc9Ml
         psNZld3RQjcYhRs6mluiq7BbS51ygvgFaJxzpY9tXHvx13LbDroISzqKe+sFjncdFMXO
         07ODZbKwalUCk1ITNUML0H0ZxqL0OkbpibVEMIV2ZJRjL8kTToJWZPLy6QQwsfHrxxzD
         g3DAFrkYmNNmbg4szSU4z53OLtf4RrYJ5Ps9w3EsMc4nKgEPXVn/cP4OsEBRLYKgLOju
         SohSlxKofTQzUHY9wm7U4WmoEhgtf8AZjgIyc+0iKKYGsi3jK4oMsEAJnySGITREgR8y
         iwXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bftARHLS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f8si2082900ybg.2.2020.01.03.19.36.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jan 2020 19:36:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B45E221D7D;
	Sat,  4 Jan 2020 03:36:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Steve French <stfrench@microsoft.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 07/10] cifs: Adjust indentation in smb2_open_file
Date: Fri,  3 Jan 2020 22:36:16 -0500
Message-Id: <20200104033620.10977-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200104033620.10977-1-sashal@kernel.org>
References: <20200104033620.10977-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bftARHLS;       spf=pass
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

[ Upstream commit 7935799e041ae10d380d04ea23868240f082bd11 ]

Clang warns:

../fs/cifs/smb2file.c:70:3: warning: misleading indentation; statement
is not part of the previous 'if' [-Wmisleading-indentation]
         if (oparms->tcon->use_resilient) {
         ^
../fs/cifs/smb2file.c:66:2: note: previous statement is here
        if (rc)
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 592fafe644bf ("Add resilienthandles mount parm")
Link: https://github.com/ClangBuiltLinux/linux/issues/826
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Steve French <stfrench@microsoft.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/cifs/smb2file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/cifs/smb2file.c b/fs/cifs/smb2file.c
index 8b0b512c5792..afe1f03aabe3 100644
--- a/fs/cifs/smb2file.c
+++ b/fs/cifs/smb2file.c
@@ -67,7 +67,7 @@ smb2_open_file(const unsigned int xid, struct cifs_open_parms *oparms,
 		goto out;
 
 
-	 if (oparms->tcon->use_resilient) {
+	if (oparms->tcon->use_resilient) {
 		/* default timeout is 0, servers pick default (120 seconds) */
 		nr_ioctl_req.Timeout =
 			cpu_to_le32(oparms->tcon->handle_timeout);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200104033620.10977-7-sashal%40kernel.org.
