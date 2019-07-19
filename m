Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6MCYXUQKGQEPGOLK2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2EC6DAD7
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:05:15 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id r27sf33226965iob.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:05:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509114; cv=pass;
        d=google.com; s=arc-20160816;
        b=pmxbQcuFayBUHEjm7x9YUWZ8SEgGI6PMTTwW45GJSnV5zyRK+bSPwSPlYLE9v9a6xq
         /OHAtgTigaRdzyblu6d8kfJy43fyIMTDFKkedlM7bhFY0PdpjewyZBXUqPwJBO0PihFd
         mlMNRnyjL9jumrVK54M35Txv5d69DDtu9cPF5deWEBPPRiUkXixQKDtI66K/ZGjF7TSC
         4KgA4DwNKtu6P0g7l0k+UwwJ7Mg0yShd/9PtGkF++gGyusAqFYcJnHIbMvJtYcVLFLH0
         U2mc39bYECe0fU36jzu8FekqNjGiPuI3i0wJUsIgvsHJvfwQjGIftDy//8we9G1C/pma
         QW5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=znWm6Zl9ipkrD2JsnffDyb/GVGuYB3bU2ElPrFearbs=;
        b=NMwjE29U72e2fAXmlxowvRagPiBJqjPiiaEG04XyMrVzuvsdnyjHoiiUThtPKFwPC+
         zLPETGesG5BtJ63b7aW0hr4xj2+F1DwZZcwwEDSPce9kptqBGkqZtdCy3kWO8yvtCG3U
         ioP48qnKSndm1xMDe8Bx8/ayppkHiYgQ/TlzBKkwcwXqRFLz9P8QdtrU9uCDTYLpwSdl
         tGrvWpvLUCvZDMduB3EcfJVx7Ye0RRVRRt/MsRc7cl4JrhgukHxgtASqG75Z++qxuYmZ
         IMpC8pWbI//wocChR8T7+5yn7cg4ZBYtUwzokPwTDU/W7fHP0Dx90y/eH4oFvxiAe3LW
         US4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xo1XOysI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=znWm6Zl9ipkrD2JsnffDyb/GVGuYB3bU2ElPrFearbs=;
        b=mgEb/+LkMht0lhS03znaFN5bHvgG5kLqT5LeUsd5k39+YVmSqzEXjUq8IqNof1yJeD
         DJ8KLKZgsgyPKmULtMh/e0ObwIlAif3av6v4TsM7+zoM5kIiR2SoN9KZWzPtkCI5irJW
         0qaCQD/DAVuYpSbycpE9PK9wsxWUskGeThs10c5+gej2zWuJ9WjSbFq+dR7jqglqtHnJ
         3Yg2aIWM9/nz+G5GDFTn68UtgdMTdnFqco790+LWsPhkqLKAn7I1eenAtuogriiUwK9g
         OtEoHRsmBNlSL5l3Zw1E8e2bZ9Z5ZJeemG94gOgqZ4osz4Fj3pw+2AfN6Msdn5T3+N0L
         T1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=znWm6Zl9ipkrD2JsnffDyb/GVGuYB3bU2ElPrFearbs=;
        b=rCwFK4RhBn04V7kRTXqxMEJE2Xr82D2b7bFdbdRtUT/8Y2SQNs6E9CaIV5vFfPOBax
         fMl6UAjj5D/N1dUMtHk4tcmaQp4N+8lUrDYFTmkXoKE60gnFamlXLhhxTxQAWpuLvy/I
         /w0f4I9Hl0tamcKcNd9XEr3hbzTgwoK5jUXU1lAHXrfUAAwokZwL2u64qul1qvUZsZQS
         5wUMOd8vePbMqwb6rAidzmSI+H7p9yap6iHtNGoZK6o5EaA8fDIYDb62u37eIPaiNkdb
         gYjWAmx5gzi4nj8+iqNOb3LedtCWKMSTxCdP8pVi2eBPHLgWwagCO6o5LTy5ylDN2ziN
         9cLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxEuZCYt/QwrFOBJN3Fko6lk/Onq8g7GF77MNW3bTpvYpg/lId
	Sde6i2yPoUZlwIZqfio8x54=
X-Google-Smtp-Source: APXvYqxOvhuoWkVmcrPWojxz2Q9tPCBIeGJ/mECajHGiy5DCwcp1rChFN48CC5SUrvUpkaMlA5c80g==
X-Received: by 2002:a02:9991:: with SMTP id a17mr25798790jal.1.1563509113825;
        Thu, 18 Jul 2019 21:05:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9852:: with SMTP id p18ls8056401ios.9.gmail; Thu, 18 Jul
 2019 21:05:13 -0700 (PDT)
X-Received: by 2002:a5e:820a:: with SMTP id l10mr539145iom.283.1563509113572;
        Thu, 18 Jul 2019 21:05:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509113; cv=none;
        d=google.com; s=arc-20160816;
        b=StznKPw46VZ4VH3vV1kdLr3g54UDUEAGgd2omCPHQXSYKc0JGDe8+qKqNZuReklMks
         10INkEpveDuu1sybUUmB6KjKGz4qmPqTGP5D6l2AmCzdTqQmTGGw7SvHTeI5l8iSbvgY
         rLTcqMOLLeG17oPoY7EKTiutEfL9JVfaT0vhdfFR3r8YOSx3+0vvjV+W67d6blgelZMH
         4gFQoP+h4/OXBlyiq4OcHYhNvfuZAN1+foTzM6bg2WuMSU7h5+9MuJtiLCMQAtjZsl7M
         R0VN8lA5yhI+eL3mjJOlMsvDSSfdn0omULQYDm1Axvpu+WLgpo29oGerK/ofAf92YqNy
         hhhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zzIW4AmHzUZPZ5eB53QG+u96U3LZxqyss4qZCslpLQo=;
        b=owZ17GelXTSmfdjtt3twnk6jpMFBKbSh2rcu90HIXQq4JgjGlrFhhz5ie5WBsdawMl
         d4tzeElkyuoNHdIaO3iz7OJIuROzPTkypQK1yQT0N/X/N4RK5Rz7wYif++XmKb9r0XFN
         C4KaVGOq33sudOMW8IiyBTzwAyUUoV7iKuyytWfbFSD7q9a09Kz4/1GDCtw16vNxX9jo
         6OfKYkEORSAjsryoK/Ouujr5tZLHE/GbD5KuylpSuMAIEmLmu3UgmA3uJy3Ga0UBgauk
         ZozXsRGP7Qjb7uem1rWq1sKh/beiAH/uVeIWrut2HNldspq0XFEFaQ44A2TQIpUEtEqU
         QwSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xo1XOysI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m3si1096181ioc.4.2019.07.18.21.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:05:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D71B4218BA;
	Fri, 19 Jul 2019 04:05:11 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	patches@opensource.cirrus.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.1 076/141] mfd: arizona: Fix undefined behavior
Date: Fri, 19 Jul 2019 00:01:41 -0400
Message-Id: <20190719040246.15945-76-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xo1XOysI;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5da6cbcd2f395981aa9bfc571ace99f1c786c985 ]

When the driver is used with a subdevice that is disabled in the
kernel configuration, clang gets a little confused about the
control flow and fails to notice that n_subdevs is only
uninitialized when subdevs is NULL, and we check for that,
leading to a false-positive warning:

drivers/mfd/arizona-core.c:1423:19: error: variable 'n_subdevs' is uninitialized when used here
      [-Werror,-Wuninitialized]
                              subdevs, n_subdevs, NULL, 0, NULL);
                                       ^~~~~~~~~
drivers/mfd/arizona-core.c:999:15: note: initialize the variable 'n_subdevs' to silence this warning
        int n_subdevs, ret, i;
                     ^
                      = 0

Ideally, we would rearrange the code to avoid all those early
initializations and have an explicit exit in each disabled case,
but it's much easier to chicken out and add one more initialization
here to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/arizona-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/arizona-core.c b/drivers/mfd/arizona-core.c
index 27b61639cdc7..0ca0fc9a67fd 100644
--- a/drivers/mfd/arizona-core.c
+++ b/drivers/mfd/arizona-core.c
@@ -996,7 +996,7 @@ int arizona_dev_init(struct arizona *arizona)
 	unsigned int reg, val;
 	int (*apply_patch)(struct arizona *) = NULL;
 	const struct mfd_cell *subdevs = NULL;
-	int n_subdevs, ret, i;
+	int n_subdevs = 0, ret, i;
 
 	dev_set_drvdata(arizona->dev, arizona);
 	mutex_init(&arizona->clk_lock);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719040246.15945-76-sashal%40kernel.org.
