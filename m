Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFEQTPZAKGQEF2UPIBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4270715E11D
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:17:25 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id m24sf7042766iol.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:17:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697044; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjuJs27H6pYV7Yag4cBR3BwQyVUEhGiHDSV8eO143kZPMJNqpJ2OMhY2iIpDj3/1dt
         Mp77LuR/CULMGL/5RGUnf8N9wpDYtJmjBT2dG7muONCRdu8Z7V7+PCVN60ciNoyyxL1D
         N/EKpfc0BYiLfqh9QoItweNq1XN8rMT0rYtg5ZIWaTKcgSfZTwQyJu+fF4Z1jafcm67/
         e1p0sCb4ZP3ahjQsZ05gj5Q1RpaGk7+ORaUTH+qwi9q+vl4RCZgJzpuQMSv0XwzSn1VX
         i8KVyX/P5iztBfmWE3YysET6Upo1SpkPma5AWPtn5QHNPDNRqhFuUSY0ualdKh/bTAPb
         Z1zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xlD5jvwqQBUPIP6635zrOnoZmwmLyhOaF9P/Tqga3Bc=;
        b=AAVTTPL0GxWZW13spYmF2sPIpEr/LeGMAWOSsy9+y1wMEFbZsJyV9iSm1b7kIuacyi
         oizxfIrQtQ+AujXb71g4jyyodGngtcizFAJnCmQsh16iboii06fZACy9P8PHwLm60k4m
         UB5CB41Qn1rtrCcs1aQloV8PXqsZkVOxl3aXzOfrtx6x5WOGjBYzcIKnia38qtz3hN4J
         uD5mKb8TZVGxyDW9v5Q75tEDTCE7mWEz2UXZX1E8rk7CcIehKBZTvjFYOd369WLss30p
         Ljs+YEfevx35CNvM8L6jEmTMqJcvDIh84mn+77dIoCo+da9yAKE2dgAkkgxL2su/BVFY
         mdfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SRHUhRDb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xlD5jvwqQBUPIP6635zrOnoZmwmLyhOaF9P/Tqga3Bc=;
        b=r04OWf3r9K4KdjvEwfpJ+bEmP7MfkhwRWhVtIk0w3dv57DyBdH96XKgnqeoAMude67
         tQUrXqZ0dbleYxcGEgyL1yRPKl1NivZMG9FnWe8VBMJlCxBDl2N3qjam9vR2Mh8ipbuJ
         wK+Hepuf9iqkVarMOEarf1DQn0l5U6EjN2IjFUdO05UuT6Rs4pTEAZP3kZa2NELSRXoD
         E5vemwweoqICjWNw0V1SwaBJ/MFFAwhYIcrt/2khtFZoisiV9p+0kX0hVfbahsEPqimn
         7yC3zqNNFj5Zd8lwvh76ZvI5VIp1wPg18XZCmLDFusakeL7/sE0psNelNl3BZZXhuxgp
         Sfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xlD5jvwqQBUPIP6635zrOnoZmwmLyhOaF9P/Tqga3Bc=;
        b=FEv15C6UhRmkEL4W64pYopfkTiL7C/H0RUKfIQKZ/Pjl3G2osCLWcHDDx66dC3sXsi
         3Sc23oaneNzbG/Uusu/fdVh44TzIF9koaJYi388gtZRLnMQCjv3QwLHoD+cqK5/30vZw
         ZlKpNA/WjsYCCaPY7rPm0oxYtA2PpNU9zXnbl7dwJriK/fw/vs+BOkwu0URIZf8DK7o8
         eLJey+Ve1ymxot2SHVQcvqHKY1+1YjZS8BYMKXuxxs7eFk3v1Ns7U4cgdIiK2Fn80v+A
         o9huvPZzDl4/weE94UQkli8hK4j7o8kYMvAfznpnvOU5BJBNBbH9tbaFFPa965ZqMJ1f
         AByw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUAbEumagijZl7KVWWM3kpE1dLXQzhzD9VN+DWrGjVjcS/19v+t
	OxQ8zvCRLtwTiAzI3q10+eE=
X-Google-Smtp-Source: APXvYqzljGYVx6RLkUiMqx6Mswxnl6Z4e8kblXNwvNtQEuzO6NoZjGKV4sF9xidB6sepCK19cLjImg==
X-Received: by 2002:a92:af44:: with SMTP id n65mr3581004ili.158.1581697044181;
        Fri, 14 Feb 2020 08:17:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:1107:: with SMTP id 7ls303864jaf.4.gmail; Fri, 14 Feb
 2020 08:17:23 -0800 (PST)
X-Received: by 2002:a02:8282:: with SMTP id t2mr3219753jag.23.1581697043833;
        Fri, 14 Feb 2020 08:17:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697043; cv=none;
        d=google.com; s=arc-20160816;
        b=QFhPrqZAx6mRMJtGvbYz5OMGrB9ndh9qfrXpHdM5iYCbKIAnRhrg+v29kade2KLu3z
         48cJGa81JLZ2hgJHnQdiUht3lxqNPRr065X/jbJgKm9LO0pmweoULjCs4RVKDevlK341
         8s+sxR0MB2AWgDO5MT6kHEuFqtC/zwrKxO2v4YlUIgyoYxv9AR7d2iQ5IhqxmdA4x9Vb
         2gZcc348hgG6nEhbztx2Ye/J3jjvj2wiTOaQi14FjMkGQ5OkSRx9pAtwm/1cX7fURy7F
         9m+2fNgv7RrsW106/MBorlAxN9aj+rzOZ/Rl9mfZl3c0SvB4RFuyDBP5BoQxY3s6BNT1
         XAlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L4FZmE1rGykFA7qrtMAWAFG7Z741NL7fVMBzhmb18iE=;
        b=f9j/a3M79t4bdI/V213ZmSl1hCHOw8/TvvnqpDuyuxj7oY1WrWau2gNRnvyCaZzgpf
         YwktlZyenWctIjU9bWPYmP+J25hP7vn3YdChJo3wfa0XLMSSuLNqB67oU62+hCO9sts4
         09AX0QPVgv6DIdQPo+8gGf+23eZwYaJ2cASI8LHXbf1iIH82Do2uSQ9MbTPUqGzGc78k
         /7qcaOTMoBPQVyADwxE2KJR+bYV1zwS7aPrAx8whEASCyPy6TaItdqSoKjonUgyyXKnq
         xi1bMfVKpRKNLb7qCJx7PnTajMgNHz1m8ybOnXywlhi/l44uNbI7R+SxKLFSA6uEracI
         hCmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SRHUhRDb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k18si325997ilg.0.2020.02.14.08.17.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:17:23 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E5A6D24691;
	Fri, 14 Feb 2020 16:17:21 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 005/186] media: i2c: adv748x: Fix unsafe macros
Date: Fri, 14 Feb 2020 11:14:14 -0500
Message-Id: <20200214161715.18113-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SRHUhRDb;       spf=pass
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

From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>

[ Upstream commit 0d962e061abcf1b9105f88fb850158b5887fbca3 ]

Enclose multiple macro parameters in parentheses in order to
make such macros safer and fix the Clang warning below:

drivers/media/i2c/adv748x/adv748x-afe.c:452:12: warning: operator '?:'
has lower precedence than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]

ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK, enable
? ctrl->val - 1 : 0);

Fixes: 3e89586a64df ("media: i2c: adv748x: add adv748x driver")
Reported-by: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/i2c/adv748x/adv748x.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 296c5f8a8c633..1991c22be51a9 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -372,10 +372,10 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
 
 #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
 #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
-#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~m) | v)
+#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
 
 #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
-#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, r+1)) & m)
+#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, (r)+1)) & (m))
 #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
 
 #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
@@ -383,11 +383,11 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
 
 #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
 #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
-#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~m) | v)
+#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~(m)) | (v))
 
 #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
 #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
-#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~m) | v)
+#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
 
 #define txa_read(s, r) adv748x_read(s, ADV748X_PAGE_TXA, r)
 #define txb_read(s, r) adv748x_read(s, ADV748X_PAGE_TXB, r)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-5-sashal%40kernel.org.
