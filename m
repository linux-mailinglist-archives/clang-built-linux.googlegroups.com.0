Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRWA43XQKGQEVLHAORI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C924123E0B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:43:03 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id 128sf432425vka.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:43:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576640582; cv=pass;
        d=google.com; s=arc-20160816;
        b=lkTIUFfpb5CSx6/cedn/sWd/d10WrBIyGG15eRnxUqrHlLq8q4xZYlFSDuQPnoXL9G
         GSLZBJeXirl/dE3KSnuL7wbQMRKi0SISGV8Ae7cf3Ki9tjPeOv9Yob53mR0H9Cc6yd6/
         lTk9UDEshR6WqLhxo9VOwttY7cCuAIillyX6+een73SHQYDarhm0FquDiPw1tPZZr72q
         CskxpR6sE6yDfKjmnWTZBjzwIow3vahEXDgA1E95Zgdgf6o8w/Gxqw1JqztGm0lg5RPv
         W+uoIbZxpVfpUt8wmwMYGt08q/MCeD1n8GYNH8osyRlw9Hx4RKAaP7Yuo5yFyENLL9n4
         pImA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Dg1hlZru7oLlKmlXfw4OulelREqOc3QQ/ccHR+Yf1rU=;
        b=fD2QS0WSUt0LOZzbZAI/aLExBGLlMf/hmdML474G3vocAIXgCNgoFaz7tsdmokg5zh
         NhjWpsoxXuwoQ09XmiKGdOEDl65eFkaSLMq0cvyynx6YIwbLWlohDmZ3Z2P8fluSJkWv
         DlIEwL302DzgeeciF4y0AqZYR0Ml4C0t8jKv5knVoNhWWbzwJsKDIlXKsvFIJxyswGpd
         WrS4+coDjotWRqu4mee/tGOGRDhjYLy4QGkpK9zJkmHxe+tDTODd6ghUixZhkrix4REc
         J5JqAoTuhRyw5YDXNl70S/BpTMrD5qRjiPeIF3PHqedE8TGxaKIko1jBkPDG0Wmjd1xI
         nhxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZAJg/Vsf";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dg1hlZru7oLlKmlXfw4OulelREqOc3QQ/ccHR+Yf1rU=;
        b=SVZZCibnP3Z6Yy9le9rwtzjS9jQF41P/tc/uY7p9j+IE9UNXAFB3g9dIPQ66ANqxCO
         uqJ/9hI2mrlrpid3bFswYboPosTZrouFhNgaiHpbknG21ipMFe+wIcPtsi40Y3yZpjwT
         npCEbwJKe5wFpaGZnTM6+afkaAwAPZcLDj90wBpN6jjZv/gW8TZ8IpEdHVfXggsCDVTE
         LTioelYf2T2r9xWR75JIt90vyUSn4deRmXYWhBnMbjf8bZxpEfEhxKmqJcfHkByxDTiJ
         DvYlRGnTwWgDLBIDBWfsXSSjfEAv1Hi7o+/oTdOZSpPVK4/GzxubjlyllAQ9A6RD2Bm7
         Yf/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dg1hlZru7oLlKmlXfw4OulelREqOc3QQ/ccHR+Yf1rU=;
        b=sACTkhKCnBRGvK2pjlB0feVxjTo/Sl3hifF6alJ2amH2IEDZJxcVLGWhurMIxU6FFH
         5u5PX6kR+jud3Y7FteW+tYBiNl0hja/bynR16GFGbkulwIFjXq2vSYmhHtcSrpeL8gWj
         zApAgM0q63Y1e9VXXh7llUX/Cgd0+CC2EOYGCVxSaCg/bSmqGsOgYRGycOwykd+arfVy
         AvHjUSxzbhJ93SR12pyMTCu/u8xzct/HYlpcemOWIoIKe53G+WFUi+2YPQlMe2LYzK/v
         j0Y9FTqTDfbN3CAXk3ieA1G7eeLAGTv5JZbgBJGMC1dfRU6+eIPQq+1zkjI4FnlN6aGh
         vOZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dg1hlZru7oLlKmlXfw4OulelREqOc3QQ/ccHR+Yf1rU=;
        b=QGLVoSX6bT0d42pDwD9VVmC9qB3JXBnGUjoCbHt+CBwdw8KIUjzhmm8QiIiyBXiqeZ
         qByrjQNEemWhtmpcCCZYdp6kVAXgEMfdT2lbdVkxxFi+7FbeqHTPdndWWj3HeYw91WlK
         3ocukfmabtOAmqeCSJoZmgvEJsJ+7MhALj6xtcZVPfk4Xs3sio8RmaP2iKDIWhq4GRDx
         NZ3ds2sbfNY41/EGUqAQf2whgKjsFFK70UdDGOupuPEn95EX+E0qAJH+FALd5/AECGKy
         RU2VB5HfCGbBHvxIeCN9a+kFueV8bwfJRTal08tkq8aGp7biwFtj2P6fkIrmV8GzNJfb
         iAag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWp27NmCGH13NYQbFLD3u3jNxobtRkqTth0czG9HxGnOKJxV9uj
	1xB3FF3E+PEGESRvuICT+yE=
X-Google-Smtp-Source: APXvYqzvozyJ6hv9M34cmj0ZjzJyFw5O65CNcJ9tPXvZh8lJgbBmQ1KsjyQcBuwAltmVgZPYMzwDqw==
X-Received: by 2002:a1f:7dcd:: with SMTP id y196mr220728vkc.29.1576640582088;
        Tue, 17 Dec 2019 19:43:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c20c:: with SMTP id i12ls53463vsj.14.gmail; Tue, 17 Dec
 2019 19:43:01 -0800 (PST)
X-Received: by 2002:a67:e954:: with SMTP id p20mr105231vso.3.1576640581628;
        Tue, 17 Dec 2019 19:43:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576640581; cv=none;
        d=google.com; s=arc-20160816;
        b=QT0SZtSBsz0EfuHQDLD0Ejjlzq4pJ22eMPLJrFNIpOVQweSefPNYouZtxPQpr7OcXJ
         telFt2tI2FsA8MXGsj0D+fc3x1XKuSPyozKVRAOonXEPMvrcDdO4NT38QMVSbAF8xTer
         KE/hikMvROyiU9iB+kxtTxGLgc3KPrM2YeghnLKgieXDYzRp0feLs5dwQZ2d0Ou3/Ghm
         Uh8kLr/8QXdKQKc06m4VJB3NmtMqux2TVRVQINmt+PCMKsVgpuJ/wVZhuqshT7jZRBbp
         Y3HNAKE4b2itUYvhyCSJvA44/fj2kC86v5zh4LZkoQAesFRPLnfVV+pjYTMQxsa5wCKf
         0Qkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DTLHJB/iUcLDfSNgBM/rRd3/H05ShntwvWDkcVOuP88=;
        b=p0ZzgY0Z44BCQDTFLE2zvYhMAPlP84fbWxi9/wdF2ZT7HrseNhdqL9qdeBD/YT2Vnl
         PGp6RbaLgtgCjhG1QYDNwRp5nqz6WQ3WJ03iRx7t7YNDwbD136Fe5AkP3mOeBGPEHVQa
         iG5S7j8Qlvv87DgrvAsuP9cDXYq6zeviS9NHS6c6SYL/SUHLQbf17REZL4wF5NPCakUq
         jQJLsWSCl3W4qHZ7j9U8eKF8bGiTurblCy9y53kWERDZuNYBTBT43qpRAftMz05Pw0kQ
         BfWTyQbVE6StuNV4WL1jh2WKdQ7twdJlRqGAG+fDdUiJwXmOtsPv3USDYhKjv9OQrpCO
         VX6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZAJg/Vsf";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id k26si51490uao.0.2019.12.17.19.43.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 19:43:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id f71so641031otf.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 19:43:01 -0800 (PST)
X-Received: by 2002:a9d:2264:: with SMTP id o91mr236481ota.328.1576640580929;
        Tue, 17 Dec 2019 19:43:00 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q1sm358262otr.40.2019.12.17.19.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:43:00 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
Date: Tue, 17 Dec 2019 20:42:57 -0700
Message-Id: <20191218034257.54535-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ZAJg/Vsf";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../sound/usb/usx2y/usX2Yhwdep.c:122:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        info->version = USX2Y_DRIVER_VERSION;
        ^
../sound/usb/usx2y/usX2Yhwdep.c:120:2: note: previous statement is here
        if (us428->chip_status & USX2Y_STAT_CHIP_INIT)
        ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

This was introduced before the beginning of git history so no fixes tag.

Link: https://github.com/ClangBuiltLinux/linux/issues/831
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 sound/usb/usx2y/usX2Yhwdep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/usb/usx2y/usX2Yhwdep.c b/sound/usb/usx2y/usX2Yhwdep.c
index d1caa8ed9e68..9985fc139487 100644
--- a/sound/usb/usx2y/usX2Yhwdep.c
+++ b/sound/usb/usx2y/usX2Yhwdep.c
@@ -119,7 +119,7 @@ static int snd_usX2Y_hwdep_dsp_status(struct snd_hwdep *hw,
 	info->num_dsps = 2;		// 0: Prepad Data, 1: FPGA Code
 	if (us428->chip_status & USX2Y_STAT_CHIP_INIT)
 		info->chip_ready = 1;
- 	info->version = USX2Y_DRIVER_VERSION; 
+	info->version = USX2Y_DRIVER_VERSION;
 	return 0;
 }
 
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218034257.54535-1-natechancellor%40gmail.com.
