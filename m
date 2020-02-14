Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3UTTPZAKGQE6ESGORQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 653E815E2C5
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:25:19 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id y2sf5467361plt.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:25:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697518; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZWNEymu7LoYnOPHCM2gjKtsY+MJdLe0GeEf0P7bjLCLR17lhBwW9Qk5t1f8eZ9c7r
         XHaqHyDiD8rsa68LvT+eBNLaHudsGKN2W+BWrtNc+fHfPz7Gnyo8suQ7yTJcj7VRcLJq
         qewA0QmUmWTJppcjS+E7L7ookPaxrpNX3aTljL1cxj4eEqSdBCf2N6mBHpVVWFZs7iK8
         HlJWwbzA4uGIt3Esgy6FzZizX69M5yh7XwGwyJIu8BPp3cVhF/SKPq6zl2lEZ+LrQHbp
         eyWOK7syMPM5MPetV9hcmXts/5ICm8PbS71jnjpNb/rEuzHEP4H7Wk5GqOKHX/VOgKxq
         BQsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xG43uEA/4LIBNOoDUJhcjERT+WcCxguAfyvPR0Fo4jA=;
        b=0Md0phac3gOrNjrPQOmzEdFGvggN+AYsDiolx5wyVB74jQoaOm742kQ66PHBbpkVsW
         mBPceEUT6p5AXkHBXHW6S76rZ4Cq+MRfY247pqByx9J7nw1eeoQc9eKKVsHTI0nW/9AI
         hHIJQ+pVPpYwW65zt1pfRRfufb5U1fujJ9l0t8zhsMPBkLTxcNRy5W9qUNf34RHr2eUx
         AJHcZ5NUm3BRbVDIAZ1y6xffPXou9PM1dkK2LqdH8gBxi733jHtObUjFwNAjZsbUOtWr
         3uYU6AK7TNpcIpPpPTUrAAPsOp8k7jrN15PsY8pZcIQ7vR975z9QWdZQMK1YLzTsLwm9
         3EgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=USy2cNse;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xG43uEA/4LIBNOoDUJhcjERT+WcCxguAfyvPR0Fo4jA=;
        b=P5r3A/O7OXFqU01jiMgWJlfE0JZAGyJRKCSNor3XbmtLVk/9dUWMkMflYaMPqDlpCI
         jlAC+W+MqdWI1Y0uTKD6fkL66BQ/hx/z5rk1wOqaGgdmytgAzuRP05H8KLXQCJUXp+KN
         MT9dJoDb4ED54YPSn+PvzRGJLjKwACanmEOE05FWq8Bqntb2lgmNwtIDhileO1UENkbf
         /+6wFkVvxKX0jIDlV9VYbSfFXtKQX69JihhoVWWP1ZBtLcNhhZivd8PtKlxFzEO7XNIE
         RFGPw54A+rHhzR1JoCR5hcwxUNc3hcSb4x1iNxvsmT44pXjHkDfnhvxFK6MceIL+8YoS
         QFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xG43uEA/4LIBNOoDUJhcjERT+WcCxguAfyvPR0Fo4jA=;
        b=qK8v8JXMz92pEyeoInw9J0NMdebdppAnjfCjYFxSz3zRP5cmWSvmKXCPbXqbnEycGi
         A/480FilhPsCm310diITcizAY+oF4cBUeC39+q3TBBGMr5fcmMND6rsP5sWrdBPwteYM
         G/JoKMYCZ8q0H4+lEhUG5OvQnAaJT9fBe37vsoYpJes3I7WwntJBoN9c5Fmz10hAa2Mo
         hk47X42IbxbG6mbaaookqDp6sz+eCBLCQ5XmnEuY9tetmnY0UyXYwxKtzZWYI5wPEmm+
         O38ODRTFZ7c68sBpQIpkKFw960oGjhgKp5z9QlojZjzcpLraJH4DRN6yTmMqEudXBj4Q
         H1eA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVpJ/AYW+xvrRCNH88triT0i3B06DHxwbzFQUyxk1HDvm/AieY5
	AbRUjUdi0gjbdDNF13SJ0k0=
X-Google-Smtp-Source: APXvYqxw3myxKHqiFRJVq1VhQLf9pptxWrYjVSXi0I7nu6cSVlyJ/KATQTbpmtrlC5ODJo+xDpi7yA==
X-Received: by 2002:a17:902:6bc3:: with SMTP id m3mr4184160plt.27.1581697518049;
        Fri, 14 Feb 2020 08:25:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls1764529pgg.2.gmail; Fri, 14 Feb
 2020 08:25:17 -0800 (PST)
X-Received: by 2002:a63:d710:: with SMTP id d16mr4274238pgg.393.1581697517682;
        Fri, 14 Feb 2020 08:25:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697517; cv=none;
        d=google.com; s=arc-20160816;
        b=EHNkmDQ3WrtMkuQlCE3dWEjSL/sGFPeq+LIUq7B1ZpJORqRZ+7T05thhphVPd8LngP
         iRiu77ZkOh1AhEcTBLa84RmpUtSD8CzpiVnBz34qrVl2oS1AHdOOhD7IMPB+ganN205h
         krkCbKXX6h6+rZs1LWt9cJwkifv4UpZQuHd1B9wY0Ss51RdLf/bu7qIbz6WsAZ6TIsTt
         4n05Q2JmnOA/esdps2a4LqERni2E3Aatn/KzdTsGqdz4Ji/6TyfnumL9lVzljhJ/nDuX
         ww+PAzQLCsm2/GseSYl6wtB8cLQDvjhZbHp1F+HfNIa8r7fu0DXzIBdQU5qitcivP1IA
         xygw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=U/CeRqArVO/pgDqonGyr6c/5kuoJn3viVFQAhZSlDxE=;
        b=Md385hY5iQmmapywON7npAG2KJj9JT9YIfiD+Oe8NtjP64rhezHDzcvBYY1CKZDNx9
         digb3A251e7H2+AjSTCVriUQXXSiFA71tCPZMs9qhGY+ORqvNfiB30hgDgmfcvrdXxhP
         cvkpIe40TNbwvH8c/T5uiBwhufeGXdTCNTV/H1f6IcULLOiuqBeTgEK0wpFS0+bvn1sN
         eW3B7yWynj+UZntlz4HEDPcR7ZV6tGgLpW/WvKcjexfIbMXkxRs5iQUhvMqHXbF+VkG1
         vzQT0mjXBhanoeuVS4+m+jh3G3+q0D7TioT/J5gDx6sjm5JcNY3Aq3TzlozVzdO+ryTD
         oufw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=USy2cNse;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m187si272531pga.3.2020.02.14.08.25.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:25:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A1749247B1;
	Fri, 14 Feb 2020 16:25:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 042/100] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
Date: Fri, 14 Feb 2020 11:23:26 -0500
Message-Id: <20200214162425.21071-42-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162425.21071-1-sashal@kernel.org>
References: <20200214162425.21071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=USy2cNse;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162425.21071-42-sashal%40kernel.org.
