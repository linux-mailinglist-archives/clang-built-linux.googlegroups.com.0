Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBY4HW74AKGQETORZJUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 312F521F45A
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:40:36 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id r19sf9783928qvz.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:40:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737635; cv=pass;
        d=google.com; s=arc-20160816;
        b=X/Ugg/OAFEmrjwpEEDdVLVrQH0avEphgsaGw2XrFMdOjT4ghM3f6aRNkM5GGrqYPEw
         HpahQZAL7Iv6RENhLVhrxy/DBiUgDfaIxhMN1+Th32u/Y1cCs9tmBfirZwLQ9PL5E9sX
         wJVrhTBLc01FTG7ZvFyHsOJGgUEvtMthprYP5jrmFrhSsnw/gsOZQChJ9J3ILnINd2PR
         ME8y1Aey9K1oZdB6aYyCXMyL/S1IKopobXKPNdY2NwyyHQB3HLx8O6x/pAirchYFQyzH
         dk6+NtnQprmQ1os0rKq/vzZl1ZeGpSPvDNbxzTi0IqZF+NVq8Bf9YmUDftJtdQTFjvGA
         jkWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=W+cQiIkK0jnWKZxa3Ymwsbz+ai84VZG+nIElppFQT+c=;
        b=HtYO6JOQA/WDof/C2bKPK/cceS/SlRzg3msNR266bEUJs5JZYTgE7orB+cQXr4D1ZD
         0yza/pnPcGMCkMsX5NXdxhSYnTcTcuHS9tDmHtQBp8tXM6J7T7LeSS1Z8ZXlDyPWkNYv
         QQNEQaJOejKw/ePVUNqQYowWiKWZbqQGmAP7ogLHvwMFEO4FFIfxFvBD336DYfB0e1Vp
         gzRu1oWPY23TA/h+SUYOjfghEOGETtFg7rhnh/dNSd25lOo1epgb9MvnlbpKZ92Ov6la
         y1ihot1JamOT4MO0NATrpU2E+ezyGGrSl0eTvO9WEna/zUJ7u7lNT2gETY4hxJvYYwxY
         PNAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SFUnTWYY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W+cQiIkK0jnWKZxa3Ymwsbz+ai84VZG+nIElppFQT+c=;
        b=l8Bp5mOm9Q/mMEB512Sqpi/DFTAfC70QAqs5CfIQZneVxYgZnRveJiQPEB/50WT1/S
         sNJrxqmMBs0/C/rrAOYGY3wTRbIAJOptQv3hEP4pKU0nkaxMqViEyOERiBm5ElndbO/k
         9AwCYlvzOiAX4J9RgCsRcJb0ce79THUEIcHo9nPKywlrM8fBpSI39ASHFmSYaIHbH99a
         /tNcQPf+mRuDTM329La+xqRl7Vus6KNs9rTkcEENzCCmjyKoaeJCnqATZ2TQ3o5ehLxP
         u15aFzsWQENfhaXy+YxOQrwcGIzPWk8U3k1uJRjWcLD8AzAPCMT7BLrG/Q9DiLsxEUIo
         f7Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W+cQiIkK0jnWKZxa3Ymwsbz+ai84VZG+nIElppFQT+c=;
        b=JIUMKZk1JPs9lsi67O2UBsgnUuTLRBfogbFejHC2HlnGnu+AEZT5EzwGYScRbachxl
         FjdodurylEZjUch2CBNFV7IH/UIVSvrQiDT1DASD4cX+5PvLG4Gw9GuDMrexKYgLPG1I
         q2PmcRBISWKAnB+Kcq0HD5rXHQMMCsLDjbsstSchwOW+n4Al+BTmqLlBPQl1sv+R/Woi
         vUnr96Qx9tLwL3ZdkdXYVaClWZhpj1pNF5dmDsxhHJkEI2HMxQZ64/DIlMxNG8ix02Ox
         dCjmXbxkPMZZGuz0zvoLhBDZGV+x0Ck9APVpJd3UyuKbZ3FxU8kHJfFSBqfTqKL0joWN
         QsTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lGxs5umOnpXfZ1fIjrrJrBT7sxyBGm8elie2o1Ain8EaSXNfL
	TisD7jUgT5xOHDDGQsqC+L4=
X-Google-Smtp-Source: ABdhPJzGZpkdaWmeifP5i4MCxaFMrnru/eXzGqGFTb6/nIPxRDWnYwy9f1BllKaHYuAa8EX1P0H7Dw==
X-Received: by 2002:aed:2e22:: with SMTP id j31mr5113248qtd.366.1594737635267;
        Tue, 14 Jul 2020 07:40:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2dfc:: with SMTP id q57ls8067250qta.2.gmail; Tue, 14 Jul
 2020 07:40:34 -0700 (PDT)
X-Received: by 2002:ac8:514d:: with SMTP id h13mr4983752qtn.223.1594737634916;
        Tue, 14 Jul 2020 07:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737634; cv=none;
        d=google.com; s=arc-20160816;
        b=f3udFfuI1CkbEqoULX3zKiUJpW69t8N4TZBPD2vZ1jATzsDD7yL/IpwzaGGCKni/8O
         5CJfTX0WTIMR1E5pFqQa9ZSSPeutqv5XnaBzxZGm8GnQosCXECvYa/Fw4QV/aesXFJUm
         a0O9btanRSzz3/NVENagmPUMJWpOHh1BcCIsujHbSvuasHFZU6glhDj7wh2Fh4sthjOj
         zOHn7+qBD2Id9e+KBEAtZTAhWH3G1FdS84qaiRw6W8TooaeXk6b8NOJOh2xeRNvyxgLc
         HkXSzGLxBTZJbusxRXFgZmaqDH2L25Q0b4pVKbgnopgEpTpP95zN5eIQAWSJpPkvASIM
         5HkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tBsgGFafYf/MtpuZcEOEPBOU0R6r2B1jooL5t6mXjSc=;
        b=siyB7CHO+eBpk5FhpLo4MCI8uKYCoETAP3CbZx8YOpXXTmElHg/URv1VoM5g5kVBJP
         RkpdveB376gXejiDfL90cONSZMAYGvDUkHSiyTgmP+qBU18ny3yiYGp4z4KvfrqxXbXF
         riNTbPHk0BfqbPzi3jAftAHdOmyGro7yCyJd6j5RuGxifPDWGTRVTCECt7TsBMSqt2jV
         WcxbmMuZNL5FJkTS4HFuveCCXdytKAIfzrx7yCd0zdsqx3hvEmYdI9VHt8WClFkGMVdC
         oYBKhqHhEpc3ZsE5FpWHQwzr6DntA6pj4cw5+SAh7tFsQ0FHiQ5De6WH2S296yfZMgz9
         yG+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SFUnTWYY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si1083814qka.5.2020.07.14.07.40.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 068602242C;
	Tue, 14 Jul 2020 14:40:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 8/9] net: sky2: initialize return of gm_phy_read
Date: Tue, 14 Jul 2020 10:40:22 -0400
Message-Id: <20200714144024.4036118-8-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714144024.4036118-1-sashal@kernel.org>
References: <20200714144024.4036118-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SFUnTWYY;       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit 28b18e4eb515af7c6661c3995c6e3c34412c2874 ]

clang static analysis flags this garbage return

drivers/net/ethernet/marvell/sky2.c:208:2: warning: Undefined or garbage value returned to caller [core.uninitialized.UndefReturn]
        return v;
        ^~~~~~~~

static inline u16 gm_phy_read( ...
{
	u16 v;
	__gm_phy_read(hw, port, reg, &v);
	return v;
}

__gm_phy_read can return without setting v.

So handle similar to skge.c's gm_phy_read, initialize v.

Signed-off-by: Tom Rix <trix@redhat.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/marvell/sky2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/sky2.c b/drivers/net/ethernet/marvell/sky2.c
index 8ba9eadc20791..3fb9cbdac3bf0 100644
--- a/drivers/net/ethernet/marvell/sky2.c
+++ b/drivers/net/ethernet/marvell/sky2.c
@@ -215,7 +215,7 @@ static int __gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg, u16 *val)
 
 static inline u16 gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg)
 {
-	u16 v;
+	u16 v = 0;
 	__gm_phy_read(hw, port, reg, &v);
 	return v;
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714144024.4036118-8-sashal%40kernel.org.
