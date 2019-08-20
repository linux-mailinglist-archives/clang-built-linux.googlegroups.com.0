Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBT7Q57VAKGQE2EOPCDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBF69604C
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 15:40:33 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id u196sf2188131oif.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 06:40:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566308432; cv=pass;
        d=google.com; s=arc-20160816;
        b=orIsb3PRGGOWSGqniu+MexaMiaKN698VMrJutxYLF92MTOtWbW+Oj5w31U6L0nlmLt
         7Lli0/BChqBPf8mtjFCS5V7U8jU0k9d8iuaZXJmXeKorGHGEDQKU0Deyd6U8K65lCtXH
         jniqlM4UAjWOuzKSlkK8xqCXBEp1ZrgZEWOSyKivXdcWbBF5O1UR2R69w662SytUwyGg
         NeDeRjUT+PnWprF4/l40Jmx3NvyDoN+aSqDjOoFVso8aX9qG8FmDg1W3QCKXANTal7rj
         r89AVaNdm2qeSfPmZar6r2vUwWxILur10eVaQEfKkHOUuXkIyGC3g7IMVy++cyt3fDU5
         2A6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nQCYTdR/YKkQyC4+jSfUc4yo/An96wsrjknG6v18+kA=;
        b=XKuzVquQHly141FoG8ZKOyU10NyC68gufNmWa8polEkbu3Jkc4VZs6qaM9c6ohWrcz
         WGRE9shLcH3qWB1+4aFNAmwpHqI07/m/M7HZ7Iq0qyBClImxVc2fRCEJda/8o9lUBLr6
         rpu6l5wzPfxzo2/LUIGQY3kuLas2omQ/RX6uT6eAK3N2jqsP7c/FqJfrbDL0UW55Vo2S
         7tTl+bQTC7NPeuaAQa8ONWDY032klbIlutoV9rjV/eh+6m7R3B1VH5bClG7lDe6frFi6
         gypVDLPqTHMIg3WOPj+bIBWnDWw/tU5LEScMhaFyoonBNaa7eJykeqHr5KFJlZUDdkCe
         OdyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=W3iW70mO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQCYTdR/YKkQyC4+jSfUc4yo/An96wsrjknG6v18+kA=;
        b=aRb9LMPuqO7iQg9DZL6S8zloYuqlQzDFa7d0w7KhfZh/O0JWGoxmtocleOWRcvuFE4
         vR/s+Vu0yTu/1asWKhEGqcPjG5w4Z3+Z8ad2PK/J+NqDRkb4pnBD4xFofPi1RdJ+a3Z6
         QZzr1kKgjHmanfsom2LZGTyJCuUyVgpjZ7hqO4Nm44uhdSTF3ly5zxCiEmgg/IJf6W+u
         hwbPvS1w7zFYIKBkdaojGxLbiS/Mc6U8Rx8Y9V0faFH3QyGg+aXv97QZuf9Bch3382xS
         vDfOYyXbBMcYDEAl/2v9CSUyjG7z7Jat7IqQCppJE68Uqngbl5Li7L/7d7BpJ7QXkqKe
         +5Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nQCYTdR/YKkQyC4+jSfUc4yo/An96wsrjknG6v18+kA=;
        b=aDQgAjMLzEkwK4aZM0xrBUWL45xQ8VRXDpl98tzE0YGuTrLo3LwQYUGz4XErC7cGvH
         1DpvYa4GSvKqlKI3FVAM/mlanLDXyNaHptN890cZfVAGdg0DU58E88xu5Kqdf7iSIUxd
         CR4Y/hwqbXNQzy/hTcdXh/TmNHYLqj/hGyTTX+za0JnF0/eL1IYq9U8S6JfXW2fjg0Ym
         +uzrHl8wsx3Lfy0Bsa5ojf7iA2hUjOQFzptHxKDRpAP4V7g0bEJPZIEVFWruelxrHAz7
         70m9j0r1JoeoPiuJIykjtXmsh867iPqb0UmKQCy7zeUThkmF8hwNik9PulknekQsXg0D
         NKTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUyUNS3B6/G4ocP16iB0TCmvYbNHNNO1dc4i9gZQf/RVLqLeY2u
	0cuBcJ+neBv4ExECD0XBs8k=
X-Google-Smtp-Source: APXvYqxdKlh1xHfMe/Noo6CtSKK3o/uqxkS0xqZuVnn+4pYLeYGmUtgH110yZOe/wyR5jPUWiRdpbQ==
X-Received: by 2002:aca:1311:: with SMTP id e17mr51690oii.58.1566308431952;
        Tue, 20 Aug 2019 06:40:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d703:: with SMTP id o3ls839925oig.13.gmail; Tue, 20 Aug
 2019 06:40:31 -0700 (PDT)
X-Received: by 2002:aca:e046:: with SMTP id x67mr30519oig.3.1566308431647;
        Tue, 20 Aug 2019 06:40:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566308431; cv=none;
        d=google.com; s=arc-20160816;
        b=q2KdSNujYGjv0sJN8skxI9yw5VhBIrGGteH9cOR3n7e8i1hOsuWXuaETHuk0uuyUZP
         mggWmsWvaFEdQbDrkaF5IleHz9oe0LIXe6oZcpnKjr17erLFe0UBmgSvvcruw/kR5MMQ
         qlxrLDnMzU4T8PXMGMaHD3i6UcKVFGr7oLryK/4DIXSL/U3oIZpAoPX0aPH6eTUFedqH
         Nid+C7AW/+6e00ZkGS5lqnAVFXmh8gfj05OucJpNGawxtV17yi5b4dg658Rf46QD5c9+
         4yyMcKCI8fMLrWFAN4f1c7l5drZKEsNlm4ZxHj7+WCT19F9IiVcNFMnCTQeGXIen8S/O
         MusQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=CvvNA591xvYTbM+TxdTaI62mpq77I1bEWDYZo/Gp+zg=;
        b=qR9fd2K5oVa1iG4HoNaLsV8jsmiDi0ajedp4aux+hmouKY8L5jOtDR/tG+K0sq9uOC
         UtlxbZGWjiR/dF8qDicXb4xRaLbRfJLEBIbxskgSUAOT6XcCIG8/a0x8lvNRKTSird+R
         aLB8fqt6B1zKP0FjOvSqzX6u4Z+0lO/f8WyOqNWYncaXBOHgRFJyz/hIH/wkDcODj82/
         p8j+q5/kOweOo8ITx0lfVIenzVvMaj2VIsAT1Vpq9vvBn/x0nXBgW3fDH2a2IenqSpgD
         QgAWY3es9gWe7O9iejd9RbVEyIpS76srjFmbb/5Uo/JNVUH+IhSN2e4EGScxSQFNJ4cP
         lrmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=W3iW70mO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i20si881238otf.0.2019.08.20.06.40.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 06:40:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AD3AF22DA7;
	Tue, 20 Aug 2019 13:40:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 01/44] dmaengine: ste_dma40: fix unneeded variable warning
Date: Tue, 20 Aug 2019 09:39:45 -0400
Message-Id: <20190820134028.10829-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=W3iW70mO;       spf=pass
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

[ Upstream commit 5d6fb560729a5d5554e23db8d00eb57cd0021083 ]

clang-9 points out that there are two variables that depending on the
configuration may only be used in an ARRAY_SIZE() expression but not
referenced:

drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs[] = {
           ^
drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs_chan[] = {

Mark these __maybe_unused to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Link: https://lore.kernel.org/r/20190712091357.744515-1-arnd@arndb.de
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/ste_dma40.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 89d710899010d..de8bfd9a76e9e 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -142,7 +142,7 @@ enum d40_events {
  * when the DMA hw is powered off.
  * TODO: Add save/restore of D40_DREG_GCC on dma40 v3 or later, if that works.
  */
-static u32 d40_backup_regs[] = {
+static __maybe_unused u32 d40_backup_regs[] = {
 	D40_DREG_LCPA,
 	D40_DREG_LCLA,
 	D40_DREG_PRMSE,
@@ -211,7 +211,7 @@ static u32 d40_backup_regs_v4b[] = {
 
 #define BACKUP_REGS_SZ_V4B ARRAY_SIZE(d40_backup_regs_v4b)
 
-static u32 d40_backup_regs_chan[] = {
+static __maybe_unused u32 d40_backup_regs_chan[] = {
 	D40_CHAN_REG_SSCFG,
 	D40_CHAN_REG_SSELT,
 	D40_CHAN_REG_SSPTR,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820134028.10829-1-sashal%40kernel.org.
