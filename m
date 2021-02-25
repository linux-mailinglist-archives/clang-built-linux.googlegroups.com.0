Return-Path: <clang-built-linux+bncBAABBVV432AQMGQEN7QVUTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4CB324FFE
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:55:51 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id m1sf63160pjs.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 04:55:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614257750; cv=pass;
        d=google.com; s=arc-20160816;
        b=peRS6v4IRseLElPn2HUB2DFIw7gJCdmSSaLcpZ/k1VsQsEjx73RTDGknNEbP1bg8/6
         QQTAO3yUHABdutB5EqdsUDg+886vko6wO6/tOf3XkhkAFz4HMD5vF3DD6UilnWRzYFC3
         DYCJI9WlWIlpHI++vDLOvtEvfSupkjXPCBvpCx0DwQvVG8AKb74cO7iKK2B+tdn4HoB2
         7Swg6UDEnOcPg2zA//6nFmkhqrxIVoBLWnsKV/Ssz5dRCK/JiCIOTilLL4UaqUy6YnUQ
         B4Nh2CqWUbdFCmbBLf8t/fZ8TgQ819GIQKf1ZnS90Nyv8MEp4qP52kp7IsWjNID8qRoX
         5yag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=h1zkSScxymZFTLypgj8bjXiZqu4OacEed679jHvDSGY=;
        b=doeV5LwBy40UNY0g5+wX9q2swA6oRGqNCTC6wid4+YfzfH42KgGJBJQS9X5nBcwlV4
         HUzEXbPDMd9ZGYvNtGZEa7NzmDHOmzSj2vDDqXVMi8xS7naII3dFzD9ChrSN8Bt7II6x
         GuoNspe0MPMrG5U8QLuzSZfEJk+bW4p9hyfisxMp1R4DO8dwRqTwwSXgqpz3XDqpvJrA
         AYX4W2El26HnDkMvUB9FBypNJsI7RR4KEOE/m3ZcmY0H7RQaVcoHP6VnmGZQ5i0S+Yrt
         YWMPo4udDs78EDq1+WGQ/Uzca5a+9oItCZ4L5Q+a6MJbkV9gNF24Vag6dE5lxuGAbZKe
         fS9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VpA+Es3n;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h1zkSScxymZFTLypgj8bjXiZqu4OacEed679jHvDSGY=;
        b=bTctxl1UMd7nyu8Jna9IyUUafp3gSIrHoUa5p2s6Axx4F3OKc+0deDPkKaO4cz6X/K
         UNIH6ck1byPGDHC500tpJ7rk77NcKhlq0InBMgv/zjdMk/uCe1m0TviHmdmbXrlw+mgm
         QycV0YgcFysk8Gqwu5AJ8hhuXi78ctCR4J8L3kLmQwYKx8pi58H+sdh4+3eL10+e0WFn
         kj0yOEnaaTFDM+/4zIVCgZOfM04sThV/HIc/755bZBtDVY2Pj/cBOiTmnA7kgkodjWqc
         w24tOqw2CbpZz0b2AaJWmAGwybJMjZkw4TqbKclv+W3oX3/AiueOyN/hS8AvTNsWV23P
         FhwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h1zkSScxymZFTLypgj8bjXiZqu4OacEed679jHvDSGY=;
        b=Xw0rXwTmHNr7csjxRzmWN8C9jdXGApuZPnYeamM1pjlBJX3k6O3d4sY6QxIZExMmSx
         5MOgw8xEdf9e7hxT+OecChi1U/GHeCRSmYej+tcucP494YOT2lLwwSjpjXOHtTIwr8PN
         Um0VnF9mj6EhsYP1ALEX9ULdoRSoPTKkTbkt7p9IHvROJruCNRBvgudSWausITrF+V6M
         k0c8Wi1ZfIA+dgmq5lFvIuT+UCwyK5VoskNMzyaIK1uk1eJzpnVrxADFZ8BaCcqlbjXF
         c2BpCKyKYyRPzl676c0NqthHEAq4LYEUHwJc/8kq6WnniA3GmLpahkjoKsu11ehPOLCp
         sMGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308I6w+r6AcTJaupYysz9+E2LCb549GsR6exmMJhokxae60RCTT
	PnmKELZ986XNKbJ0ZTrfPoc=
X-Google-Smtp-Source: ABdhPJwACN/YWBQ9jmR45MU3406QIznW4Bhyo5B87dYwBgYxQLPEIiZ2A+bSLbcw/VtA15W31qkZcg==
X-Received: by 2002:a17:902:a614:b029:e1:5b43:956a with SMTP id u20-20020a170902a614b02900e15b43956amr2844119plq.38.1614257750154;
        Thu, 25 Feb 2021 04:55:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a87:: with SMTP id lp7ls3474621pjb.0.canary-gmail;
 Thu, 25 Feb 2021 04:55:49 -0800 (PST)
X-Received: by 2002:a17:90a:e94c:: with SMTP id kp12mr3155640pjb.85.1614257749708;
        Thu, 25 Feb 2021 04:55:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614257749; cv=none;
        d=google.com; s=arc-20160816;
        b=WHKVQHRmjU2IduBopfsa6cR0adqedIzb87eKctsPoGTiDcyFgIYroPt69CprSz7yY1
         3EswVlLLG1/j1cbaq3ilT40CSngpIMpIV2e1xc+UA3XbZW2qY/uza1uBNtGJx5Fuk6El
         HOO57m81ixZTw8XBFwRKMpweZq3lpNATnnbfud/V8mmKbaPqznyam3Ytl1+/axnlF3lU
         7MQBP47m1bIMa1c76BnI0YTaleGT0kQkrOET/RoCOfzs/1eyDNBOUP8xvJNG5s9ndL9Y
         4z0uBw6hbxBgCWO6LkAW5OVgBsMX87ELHFPja0b/VIQ2cYf2e8+Z3z9K+UdC8DM+cm9j
         /aew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Wf8/JiqYo8nQ9ZTCcrY8E6rS1C2m2UrX2khjYAlRiTA=;
        b=uMDL0Ouvky4eyZAbFWFftz5MoyF6B4WVXhniB0D3QcPR8lQxWgT0AwITEOi+nQQHly
         ui53/2GvRRvkWMACQPi7icJUlkvwUOftK98i7lYxRixB1qHBaGjbJguAzAenz4y/J6Po
         fw4njOzMaM36DcAAIWAtFx+N8+5Twl3pwg0HVffmV8Prl87gyNelYrWhLP1Ryxajv4Tp
         ja2F+ytNvEhuIIRH0hZSLxlQL1tmrfnXri+/q9lQIz2MUy5GeIWiodj+V0EqPA4Kpc2Y
         E+POBkaGb7zWeT82zkgzMUrjTqurnu/iMVZd9/tPR2rovU4VLKXHCtIrF+aSEBy5Zrkd
         3myA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VpA+Es3n;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d13si301272pgm.5.2021.02.25.04.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 04:55:49 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F205D64EC4;
	Thu, 25 Feb 2021 12:55:44 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Emil Renner Berthing <kernel@esmil.dk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Jon Lin <jon.lin@rock-chips.com>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Alexander Kochetkov <al.kochet@gmail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Vincent Pelletier <plr.vincent@gmail.com>,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] spi: rockchip: avoid objtool warning
Date: Thu, 25 Feb 2021 13:55:34 +0100
Message-Id: <20210225125541.1808719-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VpA+Es3n;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Building this file with clang leads to a an unreachable code path
causing a warning from objtool:

drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame

Use BUG() instead of unreachable() to avoid the undefined behavior
if it does happen.

Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 936ef54e0903..972beac1169a 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 		 * ctlr->bits_per_word_mask, so this shouldn't
 		 * happen
 		 */
-		unreachable();
+		BUG();
 	}
 
 	if (use_dma) {
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225125541.1808719-1-arnd%40kernel.org.
