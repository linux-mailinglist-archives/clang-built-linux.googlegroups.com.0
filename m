Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOEHW74AKGQERY564MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7A421F446
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:39:53 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id u64sf21628238ybf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:39:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737592; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fza2Tm/Kkcy/1+kuj7bu6HYB9HKI/DB8HAvPcwoQuNgrz2fSD8mUVuLhrU4Arg6q8G
         OalIFKiQN1+A9xmXbn/tcPpkyBwMHHCOuEuQH1GZFnGYc7JF3VDbhSWAuvP3pwDPYgGW
         s+zyNqu4r/Sgkrfgd3F2omuac7b8A6Vo4TS/txsDLrH+vyAl74aFyYXp8l6bnne5CEbx
         dMcZD8hpfVyTno3y5NvFmXeFPfy3QV5ITniofvA8DQmhkLOI8Yf60JttCV6/w7BORRep
         Ke+AWNCMZqkHQdRQ7b5bIcA5oWU+vqsiPUyM3glMXro2BvwT4/LrwKLb10BRBV8Y9oUo
         MuPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2Bf/OzAMak9+gDLIY7avW0G6qyLRABu6K3I7Xx9FvY8=;
        b=N2dcfRi3ziq0A39VWMpOM1FNlovdRh6o62Nz/xA+DVnvBO/RPKq/DvKhtsoPc2cJqp
         O9CKiMDxBPi7WOM55u0ws7gRkFUjAVQu5CarPRAPJ1VsQavXJPy5GhpL1K2W40DHN0p4
         kVTS6uZLTG3ANMi4TSSYhXiu8kocI2ukd2LH7BEpALa2i6B+BBYE+kbVilbvALTnZvbk
         J2sgxW+TrB5bQWGwOt2UUR++7/+OWawVuEbDeC1q/UPD5z9aNdlG21tf21mD9CWOqFpK
         PeHyMCHdbclpHskGl6QVL1lNImOmcVRiulKfny4SHY5PfFYsFt9dEBz2uAkiv77fZqlT
         B8zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mzeyU6SQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Bf/OzAMak9+gDLIY7avW0G6qyLRABu6K3I7Xx9FvY8=;
        b=LM+VGpR7HsfXpR5HjOLMc1yxoMH1wrunC+IsOBTbBjBoAqmakqBsbKNOZph8uFrLr0
         4REgi4+7N5uHUb36s8urUHGIsCZ419QcGE6ysKojhYbXmV19RIIsZUxuZEVRuyupV6//
         SX8fNjj5fgnvQ9FSQO9TYJ+bB1DQiw180KI+MQd1/JZwwFE2wxq8lhxalGuNBTEXRivY
         nHUtMWAfjKDx+ulRdsz2iaeFEOcnGfj5nsQyo650K2JReGIs0mKU42pgLuOFr76edg8N
         T3qVhPBNfSwEi0LI6CtbpWhJDX9ONFv5vOJfu1L9sjRnyn6B1phQyPHyxqRHcRDM3MBK
         +dQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Bf/OzAMak9+gDLIY7avW0G6qyLRABu6K3I7Xx9FvY8=;
        b=n637bbEnWvyA+dgTGIg6nh12LH5oYOn+iVlhXcJAvmv1ztZhbK9OhfcgOD1vYWHh8w
         JqQr6zoRyKNZADuorHHb7QspTva05AIawzfE/N2HanOehG3ke8rnBqMVsKmiqL2jMntU
         qnLhLx4A2dnLUUREdTWNyR7RyxxRSfS5I8tgq1sRbC+YdXtQRQUdctgOSfTqvHLRemXE
         ytErSNHQkY2ycOSyaGZwiu2bgeg7Pcljg1l8+SUEYY8yUfVeU+owUsTwxcrrBZlWQegi
         ucW7E7yElwlIdSIIToOhzdNp6PnBwmqYVyJ3RT51l4rjq1AmXH5j7wxsQVXotgKfYD1G
         VchA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FcBqxjL0npFthF/dr0pFCkPb5lCrmQ1EFn0JQS0HYB/Ri3GHz
	DhbcqX3MrYWu70YmP+Mkii4=
X-Google-Smtp-Source: ABdhPJxcOA2uGSZgF3/+8zx6aSF+JSxkiHKZwyKDIneQInCEj6kzr878ZG8IGMUIQhmCwAYOjmvYGQ==
X-Received: by 2002:a25:385:: with SMTP id 127mr8564921ybd.141.1594737592706;
        Tue, 14 Jul 2020 07:39:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6fd5:: with SMTP id k204ls7518126ybc.9.gmail; Tue, 14
 Jul 2020 07:39:52 -0700 (PDT)
X-Received: by 2002:a25:ab0e:: with SMTP id u14mr8540723ybi.181.1594737592264;
        Tue, 14 Jul 2020 07:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737592; cv=none;
        d=google.com; s=arc-20160816;
        b=p1JYtBVkQ/CGIBbiM8Kjfga+byvEwjko9FrAKiJOZZOa35ZPjIzRsiZpcDleuGBydu
         /G0qIUuuBJSvKPLxEVu/Kzlarllr/6qH1YUao2fHmO1XHv6/2HRUjDu5sBIiCFHl/76L
         9GRfQtdGkhmZqx2dd5xoptGmMnYpm+wDP2spOEYqOrkSkteUA+431xALpBWqh3EQ45if
         FUYl218yzrl7nkk+vLtU5qbPq9UxWvQng7TQb9Q1DNoBldiCgfzWPAnpbbiabcH8IkLZ
         ecLGgGoMs4Izyod9Wo4/71v27qeYW9BLdPk9a9vCO9rvAdcPEgG3RGKUrOr6JeL1eKF8
         Nwnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jS9dj+FSkatoWQMk7FAsy25ttCS4CM126I9n+rxWjKU=;
        b=gvdJFZ+iWY2pLAoArWIUUw3BEIy2uExB38zwBXQVg0NK6atlwinpZaQqjCusl00taH
         PejnsJ466MD9LZQgr0WjPQJMklqFJng9jGPoEX3b1OYTNKKMEPZhvjv2ad/SBlZ/MaFd
         tLX8W8Yuhs+5eO4VSQdBU8I4OtJ12EI9R/1bJhJgOgyi/mBbf7OYAYbymF31mJtl4U4G
         AusyEBdjO/SzwN1CWI+YEr0k7eRKf+HNVa0/tQY84VkysY3s6+PtWqFlTd4RqJ8PWUtS
         YKRCunNV4KgNS5nBkFaBb2FBn1JfvSiaT2VnMPqh31tz/MWoJYTFD/VI1AuqEUyRmTWl
         9cCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mzeyU6SQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n82si903289ybc.3.2020.07.14.07.39.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:39:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7EE432256D;
	Tue, 14 Jul 2020 14:39:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 11/13] net: sky2: initialize return of gm_phy_read
Date: Tue, 14 Jul 2020 10:39:35 -0400
Message-Id: <20200714143937.4035685-11-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143937.4035685-1-sashal@kernel.org>
References: <20200714143937.4035685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mzeyU6SQ;       spf=pass
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
index d013f30019b69..2452d8ba40730 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143937.4035685-11-sashal%40kernel.org.
