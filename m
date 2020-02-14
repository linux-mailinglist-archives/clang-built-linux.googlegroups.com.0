Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBB4FTPZAKGQEC4NLWNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FA815DC64
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:53:44 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id o13sf7880968ilf.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:53:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695623; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENXtgSVehODdgahSMnaF/F31RsqzP0lGphO07ywXeWW1nswgBCJUcFTOFh/sItS9yI
         FHLEWYR5jZ93xeGZUM6i9vlETXfaIvcTl5BK/TXwDUDirDUp8NPy17Trj8NZqQhq+A0e
         ix4pRcthDNVrFIg9pXo6VQ/yXP0eOtwNOS2SalB5fswKgQId8Q96qWyPP3RaKZoKaQt+
         SXjUburadVeA+Rn3NfkdiRRmvgscv6p543vu/3RTT4froMJ7CFW9xZk7+Vr8/8rqJAZw
         6Hb5B1qv+NZSvHIq13mcLddJsxCI+cA+/5o6wUx5xJA9I5UmXq6o2fJEWORe7/Fcdg3c
         eIKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YsZNBRK/WQC7CNNQBYqeIGTAgx8vvqCCyxos2NlPoNo=;
        b=SWMXvD8OQUgR6U46mV9Gz7MY3yYJHSOmSda6+VO1AVvYiyAbL+noh29G5q1EtHoe+v
         B8hxlBcNJcKmfBUg3IuRYOwkf3T2ObKY3CmvE2ebltFrn0u+K1Etu05KqG7Q6K0FUgGR
         3FYboYZRj+sX15xFzK/HTJUrZaKYgwKu2hcNKFJ8KfajboRnd77gvEmCpfeQoJ2qvnYj
         RO7BHxIf01ePyiyJ7YbKBa3bpuh3h1KX9DN6DDB0dfAenGChs4hzIZ2amOzSpZq8kIEz
         LPsBITbTy4e+J1QRpI33acrocdqfLhWkcPt1kQKqBnJk0oFRfNLVkyGjBmjwVQkE2YWW
         NEvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xUPt4zsu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YsZNBRK/WQC7CNNQBYqeIGTAgx8vvqCCyxos2NlPoNo=;
        b=tdzfWsbQVE2BJACZiU+mmweb+up2vyqMUDUhmXLMrvX1MIC3c1xU5Fv8n4znJ5krm7
         K2hqEcEEd5HiioizXQbtBpzJrH7VZvpq69g+Y4YqaFTxJsutd63qIhW0DJZN7o3JT5mg
         le5XkSgCAz4RKZNI9VPc0GUOi2+w2zI7QOn+Hwx9/jDHv21JEfx+pbqS3HGJJnH/LBGT
         S+bHE9XAVcbcgJCmbfQEgO6dfpnvUGG6kc12Hf0LzPrh50XG/HpMSZI+yazopKEUVrEv
         mPSSeozFNcu65VIvd4B4NEn9e7ZDXVRQOMZf1w8Pm67i3tKIFxOLLeIQQnsS8UriVSvZ
         iTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YsZNBRK/WQC7CNNQBYqeIGTAgx8vvqCCyxos2NlPoNo=;
        b=omLZVUdUz+yXYEQdf7rguEKB5l3sCwdRdTuhpm44Q4FISvYpILU+QVy1f5umNPDcxi
         +IUOXK6ndNhIqcpg6iBM9WfOFPTQ9KxkC5vVWZSIh+bum7kcHjFIUSZ20dz9VZJ8Zg7V
         DFlsLVSiMDsMG0/rQmHjukXSbjUKJFg5DssZKBRJ2Nr34mgkc0VxVuUwBcfLdcWnR209
         xGvaDQ1bhUkddAaYYpGbOtKwJwHDX3gfz8pgZX+i5tjU30sBVRrnrNUacBXVh8yaBweE
         nSFKVdUzEijMnLKMY7VIr0uFRn9MMauw6pHnQOzxz5HuEGZgOe7waegpTSqlYyAL94F2
         f4LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXolNHe1adxbOhF0Ez5i+P7mfl5jZ/3jGHOkeq3ukH3e7D6JqHd
	eW8MOr1LsA9XuDlVjMDImVQ=
X-Google-Smtp-Source: APXvYqxYk4C8kQFeK/7JiDF/EdhFvm9xQqY/HnwQ2o/Zq4AkmtjUp78nrqVd03e6ruNf2AbUpMAXGg==
X-Received: by 2002:a6b:1781:: with SMTP id 123mr2700685iox.282.1581695623424;
        Fri, 14 Feb 2020 07:53:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:384c:: with SMTP id v12ls289761jae.8.gmail; Fri, 14 Feb
 2020 07:53:43 -0800 (PST)
X-Received: by 2002:a02:6d13:: with SMTP id m19mr3200386jac.90.1581695622888;
        Fri, 14 Feb 2020 07:53:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695622; cv=none;
        d=google.com; s=arc-20160816;
        b=odfMqKlfDS3nE7Bl94eXAZBDhI07FRtrs7lKvC6zToH+MZFqeqw71XE9LIydx1U44Q
         Bs7acxF6j2nvrLay7H/S4IIBnn+sXl0ycZFPW05g7cwRss+Uod4jQ1kMB1Xci6Yybmp2
         PJM5ONV+Ap1Ge/5zOfqs43wLPQeQzr74sLQPEOqarQ2u7t5Z3Rr5hcZJQNjjKGA9/etk
         lZx6SrN5iYpXJ0vcY4uOwvMZVNNIBqXBhc/cLOO1XzM/nB2O/XXakNOUVHpMbWiyndrh
         CW1ESeVVtPkf68K/FbchVRNYIHjnWHOMr8lV58r25omqQBUpXoEpy2MTXCj+1gUHQtGU
         1m5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y3pxvYJf2O6qZYoi9+DjHI2qQiUybnFTQ0Vj28xqYM0=;
        b=XPrOYXE5EdYoK7V+yM7Wz1UHMFynoEVUqwoAr0O2ZnGbz/rNP6SeqNbBaJvr9iTY2F
         2pveAvlhxoSb2w8pW/+ZDCeGsiKgNW5PfpZcSmE9AXsIW0IZ3LRUShKZXnDm1ocjHwjC
         oR5afbf9qPTybcIDRDrYD2C6D7r1w1aKoFztNB8jpnpBoupU/Gsyv0vyJAOq04/OFlOG
         fLrD4uoMvd7YOZP4BYW7a/f7QYHHaFI+cpSXMcVnLH7cwDkXZJaLclYdyT3tFV6VVeaM
         sp082Bvt1RCucnT40qg2blnENk3Z5df7+5GZFvkXxjzz6f+/iKo2Ctg1nh+h3XC9C8Kd
         XUrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xUPt4zsu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u22si372684ioc.3.2020.02.14.07.53.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:53:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6226D24673;
	Fri, 14 Feb 2020 15:53:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 221/542] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
Date: Fri, 14 Feb 2020 10:43:33 -0500
Message-Id: <20200214154854.6746-221-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xUPt4zsu;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-221-sashal%40kernel.org.
