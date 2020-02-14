Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB24KTPZAKGQENDBEKMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id DC09F15DED6
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:06:04 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id c24sf7916554ila.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:06:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696364; cv=pass;
        d=google.com; s=arc-20160816;
        b=097ppcAZZXYIDPN3fbX3qb2DgAd73P0LC8HRfphVqAJQyKU2w0etwDkYLEX42E4ZMr
         nZpw1y4lS4kzK9SmmsPEE+s47CnfdLoUt0dm8N4f+WgnJZhsyAIwPjxyT11VHkcKm3E0
         XgeKlrU3Dh6JJfHHVZpSh8VkOnVN72j1XGiiqmdKcK7qY+iD9OyZal5n/RulJtucoule
         bDrboIoVprnFVtA/2BCytQebeYzCHFbAKx6zF8pPCOgcEiB29O1fSyzC9Cdn0lHGMChR
         tpj60nBZr7P1Dxxn62xn381s2VvpxJbrJlwaiGWGVob9B6b+BT4m3tgCQTqfyVHjaqp1
         rHUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5PUj50CtJhnn3Pl/ArY3/HRKYyJoF92FaDZO/1EsBH4=;
        b=kofHfEE3CcSQ6LzbaR2sXysw5YoLCyqrwgJM8k+HKQyCU9hTPnlAqBAHwLsBigFvDB
         RyDty/4RGDlieF8K0jjwBFupdzYxl6Xg9DYPBxbgO/iDlp36J/uyfPPDYZ6GlyF42l83
         EME0CihnR3wP9UwMT+olJ5vVvxfWLKsB8TsFdJAUkit8qa8on3SsE63+m7vwSzuezaax
         xAcIzsvzDEb/sf1dDDgJIOuQCV3Phn5uBGTo4cpR7Dd9FBqoOBxRpTIRqdX/Epv85KTd
         gfP1iOTEpERTr2kTtX6zjgTr3JKMcOowsN8vec/YJA+NppwdGuh4kXbw3eb6PfLpya5e
         nJ/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SpPBNezk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5PUj50CtJhnn3Pl/ArY3/HRKYyJoF92FaDZO/1EsBH4=;
        b=Ftdg3xVUZX0JeyyK2xwHeoBpbA1ITP5U3xc849rFSgu7NxUz2zu8tIVgR6UfgnQRBO
         w22n++pPacBwJ7yxbN1ETIC8JOPXXBHmgc583qBPRdKAUb1CslWcOas+JHFiTBakxGSw
         wckyZWsWjN1cMIEHB6SJAYHwoXGbsuyfCFxrpwYPcVLlHpOM+KJuq3wfyJv+ve+UmZRg
         pAK/MqDq4F0sIkj9tRt9IkCeAalKzwe2utqNPhRSwC1Tp0jslkkPi6x/ALixt6ENDPqR
         eoi+g8qhHa+ne32ckElukRAS6jJfptbuKOumGRARsJ6b4t0hlPT+OwLn7ZY/Kef381gk
         7Jfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5PUj50CtJhnn3Pl/ArY3/HRKYyJoF92FaDZO/1EsBH4=;
        b=V4BD36X679jZLnBMdG2B+qX6oFOtTGnSZRUgLH9mcBx7t4E/TcUscE1NNsYX/182RE
         0MQuuMI0NWJMPWVtyK/ixikop62FDjSIc41PLTW9MDIWUxnbzAxooQ1fpbpa/lw76e0v
         ur/HTip26HAimGBg6wCM+bUNy+JFQApa3cp2ES2ZOpePti/Z8fksjFAPDxTR1GZeyIIC
         oR0WHuOgf4zhHDV7Dg3cSVs8GGI8k59VzUFHkbB3S44X3qKDBkkcVs/lLt56XlNEQcnU
         /Uo+2kDwOOnrYTK9y2G6mlhUdj6I66HNGK+dDb9yINHN34qGIARvss6V5sn2qY8sk6gk
         b8CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXgOsN7nkGnfwL61P8gvgoLmGAShjle2SIX71RdVI6c7V52/8r
	FXvtqhhk2BlZy/RIALCofW0=
X-Google-Smtp-Source: APXvYqwyE9zl0YQRkoRlEY4VwRrI7uwQO+lJvFIm4s4r7kDC4VAvcVqJCEYwMipSHsK0auEnwpBmuA==
X-Received: by 2002:a92:cb89:: with SMTP id z9mr3625192ilo.145.1581696363818;
        Fri, 14 Feb 2020 08:06:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cb49:: with SMTP id f9ls576129ilq.7.gmail; Fri, 14 Feb
 2020 08:06:03 -0800 (PST)
X-Received: by 2002:a92:5acd:: with SMTP id b74mr3679768ilg.240.1581696363408;
        Fri, 14 Feb 2020 08:06:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696363; cv=none;
        d=google.com; s=arc-20160816;
        b=Js8df7trC7BWEIzp4ILiliXe1ErNv4Tf3bUwfe9uvWUYwLsEKKwOM16NJndN5ets3l
         Y2fhvuHauy8cpfpXeBrvWQMUoVJcsVV4Bh4FBaZSbf9a5zC2Je1jD8ta4YJLale4kGAd
         jKiwaMKwhn0O3M/oZ567j5QffHYU8KvNLLChADU305a941ZhJYbJ/nlcOkilfQExfRJp
         ahA9O8CpG41l7XDUajRWD78Tb08HuS1km4CUTGaPhbjDfqvoajZ8Zv0mSM/AuqUk43dq
         HHGaetw3KutF5KMOqvP1m63JP8JAXwhTiymbJg3QaFgp//rOuMKTdSCWOQk4BMZEnZq5
         Vxsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y3pxvYJf2O6qZYoi9+DjHI2qQiUybnFTQ0Vj28xqYM0=;
        b=YJUGSP5aLioWAXxHXkZaQKWLM4ZZwHOa29FlLxGkj+byTKo9V5viE7/1yWfBlCnNzr
         OGOCe4Cc7uI9myh6CK5fGOAOThdoHIDvOxbAdNPuDQ1dDG5kblTYtHL7d/ktvGf1xaAT
         Dmr3E734EniurKSdcA6OQGbVTPaAjMR2xVTGurnMqSu3M0K2S+1yDggwPVy+RJXnySML
         /nsiIvbCMIAwjpVC9PYjBFQSAGUANeML3sJusY+q+GWIfCeDJseb997cCmcPx6GE1pIa
         aMQoChNCD+Ohq2JIorw8vEqf3XjUkWmL3a+2mxXSkQii9F/9iLZJBjpNLLz501kj/MxF
         vwyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SpPBNezk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g12si363383iok.4.2020.02.14.08.06.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:06:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF54124676;
	Fri, 14 Feb 2020 16:06:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 194/459] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
Date: Fri, 14 Feb 2020 10:57:24 -0500
Message-Id: <20200214160149.11681-194-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SpPBNezk;       spf=pass
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
index d1caa8ed9e681..9985fc139487b 100644
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-194-sashal%40kernel.org.
