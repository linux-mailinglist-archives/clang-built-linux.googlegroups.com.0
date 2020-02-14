Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTUSTPZAKGQERHZMMPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E512015E230
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:22:39 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id i70sf6817491ywe.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:22:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697359; cv=pass;
        d=google.com; s=arc-20160816;
        b=EIOlDeR6nqGH7n+GybgaR47cNPw+yz/D6gLTGzyTMoF5UAngA0R7oW/Cy6hp+G13PA
         UEVMgvoxefYvXiP75RI8afzB1+NtDE8pTIaEL+dTIoYzVn3X77y2qP5n4nb7IvtlLI9o
         B9R9v99soQsekE8Pe9JGwwd0haz8MEmWN+7zKxRsbczYtkpEeFutHUSNzNFvKPWIRcOT
         qzTff12qe3ZZiLMKdLLBCadv0d9/zmEChmjxO/284llwpFzZJPmJg0nDh7govS3lHDXR
         0QJQdHFHsH/uKL7g6kOg1PKbCKXugC+wq+GXM2XseKZ01OR3+j0r8TS0J62//cJeIM40
         8mLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HiMH8kgeVKpKmbr0UhOQLwlKxqf3khzHNG5/a26wLMQ=;
        b=07kmS6M8ykThRf2SFnhWnBqpLSWc0faR27ANnz6zt7pXY7KMaWiHljDwy1XZhEiWJ6
         NZCZfbTD+OSwX5JxTZSxpY0voVV47/Ht+/XfyGLq+Zlr27dCKGMEHsUGKt8yIjDM/9IS
         eNkybcKizWcyCpchM9TnxDiO8LQZqc8Cy4MRIze9UCO5Dhpy3pvwYc3b/pc2IPayLHlz
         OtjpAVy5os36ENrTEUbqa5DuQWTvGaqJ9CCMQhylQjmOM/G94S2axU/4p13wkx1MuGhQ
         n2lqhwzeybMmLdKcIt/Eg4Sy5aBUIbZsgo59eZj5m3ariescdqg9AfkjWDaZn2J3+Vdg
         62+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K95lsVCD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HiMH8kgeVKpKmbr0UhOQLwlKxqf3khzHNG5/a26wLMQ=;
        b=NE0Eb1wmh7R+qlRg2cTetAhfbTJ/44y2/9L8uab/HybbVQrHU2qOrb1Lk246Wz0tW2
         en9evHHsbf4YEQhl6TlEPXQCkLVPgkhFdyXbk3dbyDQoCroYwnMtsktTAQxjOrEiWCSE
         g7Eul2Mr3DmViKP9DLJ9iIhed1gsaQBc64EdDtSCOYCj1HdKOrPUT6VDj2tVB/nRpGsv
         2qE8YHlIopoRCCtGGiIFm8KRr4j+NphJ9yAQR/F229i0P7uiKo5Agr3NyvRpvKrEsVX5
         sjjTOLfpKufPD1WluKQKIcbXwXMCzHoaTryD03PBhR75G/dZilpVegTSGXecOc4lyMPO
         yuaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HiMH8kgeVKpKmbr0UhOQLwlKxqf3khzHNG5/a26wLMQ=;
        b=ThhvO/3/ISajdwAXg0iHxSN5jKeleyRnllQPKN1/xCWBieLmjEx1R3A1hgB3tACs+7
         0XWn1lw3vdWAGAKyBWdQZfsh3021i5u/SJRM1CfwiXPvuJnDqJjjBVyyHymlcDbXy6rO
         QuYQWnet0Jz7viSDHKfP2YsnwgxTrDFgo4tmVfhyezprYA3frrGVtXFKLqWdwjI1TGfo
         D21VfgZQkEDYCqw8Dx0A3gRUwgiyRgYRdWrqWwspzoqsckY2dn1k9Qv6yxFiRUd/Lx32
         S2FgGStBQeMDhsvxOd76D9Myzfc50YS2MZZdlShVjQ5kcgqsJawkXZqYRcIFA5Gk51LA
         aPog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHmpLL7/kJ+moGuptwPu1+/Kd4/EY5eIrkahEYbTScMbndS3FC
	NiJ1yVApfoJvZHkAZLvuy28=
X-Google-Smtp-Source: APXvYqz8Cg6sVCKyixiRB91yz5uv1bMrqm5fg59uhNZYNQelpfLLT4WMybsbX+eAIfQPJrfUHAZI0A==
X-Received: by 2002:a81:5e41:: with SMTP id s62mr3157494ywb.499.1581697358930;
        Fri, 14 Feb 2020 08:22:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls512153ywf.3.gmail; Fri, 14 Feb
 2020 08:22:38 -0800 (PST)
X-Received: by 2002:a81:6d4e:: with SMTP id i75mr3179426ywc.487.1581697358545;
        Fri, 14 Feb 2020 08:22:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697358; cv=none;
        d=google.com; s=arc-20160816;
        b=pO9GyUpcVECEebWlA/S1lPMCJHFZKamPDHiWcx+y644xqXHMzfMDyNqUspXDyukSY0
         6OeMU52he2P8lU0DjlKMdToJcvujTh1pSgRmJLfgALwgire5iC1AZM9VpRS3wFteUIga
         aSVvxh5CWXehbQGwxVb0M/LnAkBZLTFsG5FSnh9bv/cj/VxPDbomo6BcgJ9DSYYvSeFy
         ec9GX7D1jGfo6A/n/DGUFwnf8XM2o2myRRufXOcs4QDQt2T0a7LsaGH/J3DEOV4lWPjP
         qi3KH+xWjNGbNiK5QbQvg7XrAqVs0oTVN6suxygWb9S/j2kT2LkRwK4gdVNfFBdFVyJO
         BTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=U/CeRqArVO/pgDqonGyr6c/5kuoJn3viVFQAhZSlDxE=;
        b=nMe1u8ba/FktM5ZfdMpxl4d4+LvrqaRH6075LmnmZMBdT3XPwiEwVDHmErX1INQRQm
         JtSSaIc8H62wIAxjxk7aAt3FvDGPTuTtVkbq+6x6ODUBO16IqbtCq5LXkQNfiO4bvCxw
         H9ZtTHJpJbTfFb9tD6WOXaRYkOmeTOnpfFRDl8xFmBDBuib/oi/2JJX2340JeaVz/FQ+
         YB6b3Jwe3j9U1czxfgIfsuYsMEYsUkxOpN4AAJQAHnjvrlPuAxdnxr6RFVoe2Mbs/8Li
         02YwSRpomNRB+aLe0L6Om3pbzTQf42GOQ/v/3uJGcMUmhZcBbZt2AbRff27S6GAac5hR
         OOEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K95lsVCD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y5si396686ybm.4.2020.02.14.08.22.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:22:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D5C41246D9;
	Fri, 14 Feb 2020 16:22:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 059/141] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
Date: Fri, 14 Feb 2020 11:19:59 -0500
Message-Id: <20200214162122.19794-59-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=K95lsVCD;       spf=pass
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

[ Upstream commit df4654bd6e42125d9b85ce3a26eaca2935290b98 ]

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
Link: https://lore.kernel.org/r/20191218034257.54535-1-natechancellor@gmail.com
Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/usb/usx2y/usX2Yhwdep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/usb/usx2y/usX2Yhwdep.c b/sound/usb/usx2y/usX2Yhwdep.c
index 0b34dbc8f3020..7dcb33d3886bc 100644
--- a/sound/usb/usx2y/usX2Yhwdep.c
+++ b/sound/usb/usx2y/usX2Yhwdep.c
@@ -132,7 +132,7 @@ static int snd_usX2Y_hwdep_dsp_status(struct snd_hwdep *hw,
 	info->num_dsps = 2;		// 0: Prepad Data, 1: FPGA Code
 	if (us428->chip_status & USX2Y_STAT_CHIP_INIT)
 		info->chip_ready = 1;
- 	info->version = USX2Y_DRIVER_VERSION; 
+	info->version = USX2Y_DRIVER_VERSION;
 	return 0;
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-59-sashal%40kernel.org.
