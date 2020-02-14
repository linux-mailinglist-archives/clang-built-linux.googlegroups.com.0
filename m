Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3UQTPZAKGQET2GWN7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB7415E16F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:18:55 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id w17sf5453455plq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:18:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697134; cv=pass;
        d=google.com; s=arc-20160816;
        b=REu+46+0h9tkKR2tpqKOkgxdBHJ3jUQ6JEkEphF+8bJidv7UONYI8lX5V4dP6x5ZZ5
         t2qyRdQswJTP8gpbDWZGM+qdwIRqGbZQQTZ8fO2n84O6RllzUj8mZVp2Kv+2sR6LWqAH
         fLLZijWG2Zw/f+O0zG+an93bU7NkdQl8gJNTtxcxcR1GTI+CCmLxsQEErQJ+NcFIHcFM
         cxRa/joCyXdmCKW+xJbwkDG0AWOHxpLfuMNKMjrghFdjKMVoa4PCATSXk5XyK18GMQgN
         b3a2VylC5R0FgxVOLnS06oKIhi1JLkG6r0dXc8A1wHO9jDv7syE9hKEhJeIhjlBYCRhq
         TLDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Iwrkw7qcFTrHEKJdHPbTwgqZuVdAi0nQQ2FfXKrJIxU=;
        b=AjIgroJ/TTirxD9KhkN732OcJDGJHU2MY2DCYdCRFqO4E3ERLkndmr0b0xXV47mF5s
         vH9rzinZ96nSRAYMk0Gpw6Ok8V3kIzoE4DVjdF3jBl1SzvkmgBFaUHmQHXC5XUOJrsJu
         9CCwUCo4fsnDO4uFYKTXIX8MajaqsvPMK/J4W1KMZHuY5rC13+B/1Rew3/RIXZyjZlFh
         MDH7tf34X03Z1PmHGOC1GKY64NPiXwgEhZO21kzL0ScdLPtvt9KdbhOy2zTVZ7oQcSRh
         sDA/cE5Qf5MxtHz24SpBBmZDbVRX5QEG2+5xQVT4UrkE+LeJIM0rNx0/xPK45GQx+xFs
         WLJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bm8qBk8o;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iwrkw7qcFTrHEKJdHPbTwgqZuVdAi0nQQ2FfXKrJIxU=;
        b=XqFuyEFTRkkuJCD6q9Wp7THuw0Pq/NwMjeAVT52UGHi7BinVAPocYqR+rW22wTkO/O
         NTEoLqwE/bZz94aY0GRTrOSakxxjI6exLwartp5RF9M/jsK4ddkW07J4T8gsGFwZKtGW
         2JNj0eKYKCDxxDzI3YjW5QJ/BhF0ZxdgSPyyYEAP8Go3kNAJ3KGR7lo5TRVUBz/LH5HE
         IEnn4GtPiGxmRJt7+0CSj8aKDonDwgoYcz/lhbUJsirLUxzvrIZPvObtVT/+gE3l63zf
         9iQFVowzn+xRXwjlpjPRgCvgcFHpzfCOO1DljkQV+Dbde9GwvWUdhJ4wZLbGZ/jTGZHs
         9KkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iwrkw7qcFTrHEKJdHPbTwgqZuVdAi0nQQ2FfXKrJIxU=;
        b=VGsV6HaTyBjezFSQoToYj2ViPkpeI5+YZdalLJ5VQGkJf9pa95v/yCsdNNXgEdw5CY
         tLmn/uXNIIdmyjk/ql3Wpbk5S2ZZGJQQRGwYcuZen8NOqtDpLpXmQJUKdyzNxQNkXYE3
         GZFCRc4uvcNfZqiSwhb4mi2oLO7A1/r9RhXr6e0Jj5QnQwgBTYrzSR499c6PWgeyng8A
         A/b1uSKDg93lzX38CGbPO6MaaZxVXgfQuM/RkUnTcGTAKfO4h7UoJWcIjPpIzbIgC1/Z
         7r3L8qyxH2QbX2H27bDpq0+5BjVefRrU+yji/m6LsxR0aE8xDA2uKHulvYULu6s60/AQ
         Gj5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhCSMO0uJxa6JHbDdJmGH7MzNw4NcYZ0qDHvZWtImcZQW11LVg
	0mpdYJSoW3pnkP2qIqmF2H8=
X-Google-Smtp-Source: APXvYqyTorAvSjvjNZqrQcU/1Sg1RdBW0frVHd458YUBofs6ZRpOqSwmGKfJLCMJtSDj1caTqTqBNg==
X-Received: by 2002:a65:5283:: with SMTP id y3mr4312673pgp.370.1581697134510;
        Fri, 14 Feb 2020 08:18:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2a04:: with SMTP id q4ls1750438pgq.6.gmail; Fri, 14 Feb
 2020 08:18:54 -0800 (PST)
X-Received: by 2002:a63:e509:: with SMTP id r9mr4573609pgh.274.1581697134094;
        Fri, 14 Feb 2020 08:18:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697134; cv=none;
        d=google.com; s=arc-20160816;
        b=fqfnfKXmYd0Y9nFIkjS1ITSEo07jdYdrToboFERKn1QaC8Go5FgBtEH4PVXPLfnVXl
         3Xv5e4lauh1JIu2FOgjbYIXBaCsU6xKbUiKaPz4lhvZHI1ztMDBqE6GZ7rGHwlv1QKyC
         u0Xm/cbR6Wc8aEqtYGcclByFU/Y/GE+Hnx7TBCEKZ2gh1WqPQCfIwZrZgmGnfqf/usxc
         lhaN7PBOxPyK6e+axA6dxbWpZ8Hp0wgBNWRQmqFizUjt9tsqESmRdnthi1lZbXtGw9vr
         KROAU2Ytcn8/gm5K00o8FfR94lnFFmMICqpFXxtSzHCwJs7nmscKSPF8X7GgqZ+fPYmd
         PVbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tAFB91OrYesYqUXq9qg4v0rCoI6vtc1v+bFsN4YEoCk=;
        b=XkOaabTzLrT4f36WNxBnxaZQm/FeRxSPffIHYKaUXub39UFsGnqH0rB6H1AqePzAc8
         gm3ByeYcX+sANvoSeW5fp+esWywvJCrDmyYjmm0kbIMgtzSl0+02Z6lr6jkUyjhR2jD2
         OyeNT2EIifKdsOI3XRvUDooinwAzV9BLTYjwsy8DhIDlTB9pEe8zNJH41wyWY6qTO+HW
         uRMzEmB3Rrkx2jtWvqE80HEkh7935uO9ZKg+qpm7cyQ80b/5f1meRY1JxL9r805kZsEU
         lOKc98TVfVzQk+jvc5T4WCo5Io3VG4fPAJRMT3Qp5ttjaT3og0U1INrvPoH6wCssITeM
         uRXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bm8qBk8o;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m11si164753pjb.0.2020.02.14.08.18.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:18:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F283C24681;
	Fri, 14 Feb 2020 16:18:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 076/186] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
Date: Fri, 14 Feb 2020 11:15:25 -0500
Message-Id: <20200214161715.18113-76-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bm8qBk8o;       spf=pass
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
index f4b3cda412fcc..e75271e731b2d 100644
--- a/sound/usb/usx2y/usX2Yhwdep.c
+++ b/sound/usb/usx2y/usX2Yhwdep.c
@@ -131,7 +131,7 @@ static int snd_usX2Y_hwdep_dsp_status(struct snd_hwdep *hw,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-76-sashal%40kernel.org.
