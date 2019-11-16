Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBH5WYDXAKGQEPOHJCTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 072AAFEE7D
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:52:01 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id g142sf5272192vkg.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:52:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919520; cv=pass;
        d=google.com; s=arc-20160816;
        b=stsOc80o+ni047EPMkU6DR1dIwkJE32k1QOrEk8Qch+/4jDKATNhF2oK9Zs2dNo9dJ
         iFn9dUFDtxgW/A6Z6XqxJoGHx1cNzF3Ym/AiPjpuJuSFQFNx73JS7QX6oDm1DhPCzIbc
         KtwYZNpfQd2SKQWuwvl1qhjCw4sW2vhsORqvR8iKk9ZbR3J3M6rFVZEbA0oZtAZLLmue
         FHw2YPomykz8oP2a8+E3s6GUbUZTttonbkuwfMdfgCM+tsW53/yrkDIiYDbPl5yC9kTt
         lFN1drs43ji9dr9awhQFNrohf33aLmTv2WwvbUrc//HCuT5Jn9YRkpVhSjGSk1+Uf+Rz
         oeQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=arKOAlX/gNpSo8gmbVMoQ2x4XDNmndGcxi6f9pV4Q9w=;
        b=Ip7MVuj18Bhy7HU74dFPFkiNJcpVm3cUhn6nLrWy7ODmnS5bhI58T9+wHI/86puYkQ
         gioWa5tKs1lBWr7UyRWwjBwPmuY1u+3nQ5ah4ekSFiOuVg2GKH/TPEFNamZHggm/GRb6
         pqFMUYofaaFRvL75wtQXDrWzFqDcqD191IS5HsmnwQZQzG+hmLzGkBcgH4z0uPk54NOq
         uX0yR1BzBpYKoamEEjDIR3NxsmAIKHuZVmSoOa0gXcMzjj1waXRUlinDygz9Sn8F4+sY
         3MSp1py+F/ko/ZY109M8HMfQrAE6rhD3RZndcLzcsCAhx1o1brZYPkMVCvrJcJ1sHSPY
         nMGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L2tfFxWQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=arKOAlX/gNpSo8gmbVMoQ2x4XDNmndGcxi6f9pV4Q9w=;
        b=d2HEuGvx6QD4FsnoNRoKPNL/7Nuqzs3ukOuVt1wIb2SbE3AV5iCdgQv2jNozRWvEAi
         nKWP+KXRsFoxiHpA7vT70txJwKYFqDRHI3CkFUhIR3XjFMLKbi1bDEGIHTM7vgASaPIO
         vrcNi4prhm1dPprQVH1upYJ4jrvCZu/7+xft9jGO1WPF6MK+mQH4SlsDC2ZV9YHLnELY
         2MozifTFgQHjyfp/CilGpcYXqYMIMlN0TxyG+VoOrhm3Qp1tHH+bIP+/UKwY9rs3HTrl
         dkgGNX8D2bd48HYtNuDwtc0brzIWJX1Kpt7Rtqz3KRybQzPsOwJkiBWGrMVRYZjLH5aD
         QDtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=arKOAlX/gNpSo8gmbVMoQ2x4XDNmndGcxi6f9pV4Q9w=;
        b=SijVQv9cln+sHeLMvdHuPJM+jU+uZ15Op+Gt994QS882CiY06RzkZBRC33XEYoZXzT
         ocAa8OZ3rmIrwLe85dKw24cMDHBtD3NLt4BPYq35o1yxLUFoUyJUKWs+kBUFIQwQJcUX
         KWQpuUqcIK/RCxrQZcLIBPlPrNTUNY56pAFxNarZ2XhB3TYX9N/LcEgafHKUrVEeexIV
         UEMmyaloIMmJC0hcoCVvT2jQX1sJzUOIPf4nXJIinZDsowi3xrLOQJixF90vyzPFSJ9d
         NYnaVDGkB4NOkE7UO+1H+gboi/9Os+IiJSDMLmmtt1OREmOJVjKOopn9lUvaWop/esw5
         ss5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWthFG/qYxXcA0Shepx8E54oF4Yo1AIwxS9kKahw5wSGMDZT4p7
	T9HinWHrWcldwbDe97kt8Lk=
X-Google-Smtp-Source: APXvYqw7ZqtCYCOKRMClsio+S/S/vTnVvft+ZcM5w1IJmIwF/3JA38Xz/14PJeVkFJsF5EYcRxD7iw==
X-Received: by 2002:ac5:c284:: with SMTP id h4mr11309267vkk.82.1573919520038;
        Sat, 16 Nov 2019 07:52:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f2d4:: with SMTP id a20ls895683vsn.2.gmail; Sat, 16 Nov
 2019 07:51:59 -0800 (PST)
X-Received: by 2002:a67:f84d:: with SMTP id b13mr12398656vsp.57.1573919519748;
        Sat, 16 Nov 2019 07:51:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919519; cv=none;
        d=google.com; s=arc-20160816;
        b=CkounYnGipRMHzKCX4JMgv5TLxmckk/w6egwI4wjfVLkGuXM3EzyWSzErvt+JLnN0r
         Zn9IBX/AGYH4mA9DYM9m9nX1B0qkq0tLhBoTiNgkdr5l3SKP5NcWe2ClzLHh+dEIzcST
         /tocxmgdR6F0SvLXPB6x1h837cC8qQyvdYgesZgRbBH6w1rMW1OKOq7f1Msnl6DI3Yqw
         apUMrYs6tm2TY7qgp9Ik9KmJMnkJ8KslD6NE9UDDGBSGwyXJdSyVFLaVWIPyqrxg1EeD
         4Z5M0z6JHiee4ZbT7iWjcL7YHp2/LtY6miovT5ftVNda9NROfTM3Vj2C3eBCVx5gbg23
         j5kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ROnPM8PjrGdQU/Jlfkldzzxsq0rq76RR14HEedPB2+I=;
        b=DMxuze5kIyE6sMnyzelnqecwIe8+qHU6KavD4/82DDErF4IC632MoQ1+q0/a3KsLt+
         VBgZg3fnJxlKsNm5s15KTQ5JN47AZTSHso5LA+Zb/K33JyTAOnXAArCRad5nvm2vbOq8
         8EQ6MCfukGnRtmxMradsILf2/PjEKIdTV0rFhtLfsp+VhyH3l2b5Z0p+VGnYfv85gjqy
         ARV9vm6m5KUHV9fke0qJn35zFw0fGp5AImNhDI28C/WZoAwTQaHAL18MF67xo+3+lC2b
         VVP6E1Os0loNIDLC5DvLn8h6AefKTW7BkqjnFEynPrIT/5N3aU6eNjArytuXrbcmu+eD
         e9Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L2tfFxWQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p21si609969vsf.2.2019.11.16.07.51.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:51:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E2DF20871;
	Sat, 16 Nov 2019 15:51:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rtc@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 40/99] rtc: s35390a: Change buf's type to u8 in s35390a_init
Date: Sat, 16 Nov 2019 10:50:03 -0500
Message-Id: <20191116155103.10971-40-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=L2tfFxWQ;       spf=pass
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

[ Upstream commit ef0f02fd69a02b50e468a4ddbe33e3d81671e248 ]

Clang warns:

drivers/rtc/rtc-s35390a.c:124:27: warning: implicit conversion from
'int' to 'char' changes value from 192 to -64 [-Wconstant-conversion]
        buf = S35390A_FLAG_RESET | S35390A_FLAG_24H;
            ~ ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
1 warning generated.

Update buf to be an unsigned 8-bit integer, which matches the buf member
in struct i2c_msg.

https://github.com/ClangBuiltLinux/linux/issues/145
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/rtc/rtc-s35390a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-s35390a.c b/drivers/rtc/rtc-s35390a.c
index 5dab4665ca3bd..3e0eea3aa876d 100644
--- a/drivers/rtc/rtc-s35390a.c
+++ b/drivers/rtc/rtc-s35390a.c
@@ -106,7 +106,7 @@ static int s35390a_get_reg(struct s35390a *s35390a, int reg, char *buf, int len)
  */
 static int s35390a_reset(struct s35390a *s35390a, char *status1)
 {
-	char buf;
+	u8 buf;
 	int ret;
 	unsigned initcount = 0;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-40-sashal%40kernel.org.
