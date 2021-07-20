Return-Path: <clang-built-linux+bncBDU5DXUG4MFRBEEM3ODQMGQECJG76GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 748713CF9DB
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 14:48:17 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id v7-20020ac259270000b0290380ff758625sf4133558lfi.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 05:48:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626785297; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xqs5OB6suST5NBzOy8YNwdZWiiJq2hl2xoqfaGwXDheJV3W7C+bhtyKrwYfCKl3J3Y
         KU756pYV8PA0QTuuoXx/TGna6rww9DQwQtRKyHtKvnPUPOwIo2ZzQysVb+wVud1VwiOU
         ZhvmlxKiUFlaApWdQOGoaPnwIdI6ZtqxKkBJwmKnFLgnpgfqXZSpUFigt6MFI6STd0en
         adxFpcZejKGGvidLoFy80LIIVUpSFZLyt4wB59niF44iIoTb65Lvj6zcMGMZC5PMDt/S
         NKI0RvkBm0/3miDH7N/yMu8CZRb4hV4f4VUBdMg3lPii3CzQMT2lhkptoE3UNGn8r2HC
         tcwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Vm8A9WKf1hlrK6udaioSP0Q5brGXNycpfwcrmKRKVaw=;
        b=HNuOe6dOB1W6FQ2C7TReAIMGDIENJrFEmL39cE3vFiPNZuaozEhJoJR+6TQDprLtDo
         z0QhXeKkuVNQHOP5lS9rPIQCTNDhI0BOmFQQ/DHyC59gYZDbenLxHPKsjZ5DyQ6Qz/Uo
         MvUDpzj7Xmixk9VmRFysRqedgf3B1zZARc9GQ9TiagMICD0qcBpqD6AoRqARr/Q8pOZq
         1rwi6nLEqzOB5j7dA6tW2E6rZlDEp+fCmc0bLV0PvOE1AQnV5pdM686WGIjZIdxXDNm4
         8amtZ8x/Nx0a9susyRhAxxQZrLXOkRaMGTWHuqzbpanoqM1fqYqe0eCV1A6/wlB7PUqK
         u+kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=Wr7zJECX;
       spf=pass (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vm8A9WKf1hlrK6udaioSP0Q5brGXNycpfwcrmKRKVaw=;
        b=KqaC1DSLj9Rkb/dRkUX+zPtZS2NLF753ISfNWnTHKGs3RawZ+0KnJ3BJSdNfsiKk7n
         5VP+ITPRiANBa/pBeDVbS7YzT9yCg/whfYUIKEakVzZljRTL2RggXs6KFrQ52bWIBKQ6
         BIKUKty1SXT2X1i8hvKjqLluKEKG+kwiMQPsa1WpwM2pzPmcZHXNHvNkV3/2gYC7bLHy
         n6SpsQaTfJ4LzFoRnAuImlErCypHCypLsz6IAIX3iFlm860m5jGQXXzBdD2+Q4IXI6mZ
         4wTSNUxxSwBxYI18yTX64rNuSZCA5NiDc39B5ytFma8ExEGW1ZkHmnwhppeWjslGusY0
         TMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vm8A9WKf1hlrK6udaioSP0Q5brGXNycpfwcrmKRKVaw=;
        b=IHVPlwYb/1YXfPB1kakpvFl5UZxkGDvck/LnT6qm79EMF6nAg5g/sGyo+Ut+cqfnJG
         9xsIUnxU1O+IZYAhZ29LMNogy10UjiuUnRuyD5ClSZw60OXFHhLg1kpbrFfl7SHGG4KC
         X6QCW6NfwLRS6JVmccMBTqoPL4bZ0ssjiV6IzcclFYH1lS1UeCcs8tDm8yWQCrHSQrvR
         +pQVcRRps5kxTdgjZk/9vEjVeCsYkzmBCMh63M3np66RQ5mYbjQ4tbMps+gpD6AADhFb
         +5fBho/+hCgJPVFE7MsF+kW6LgpB8M96Mfvn3u+9pD4aczolQOwYjMptI6UGZE7XxlF1
         3arQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53120D5L0PsLtUDPVXVQD98cbdxxCyriSDMjeY/+YmepkzcZMkJ2
	4JkkE08xET81PPOrnXkqvjE=
X-Google-Smtp-Source: ABdhPJx7b2v4yClSDIBKxU8Y4Uo1rz9paF2YT33H7urPuNc17m6k4SDCkIkGlHZkXzOURuFJnLcfbA==
X-Received: by 2002:ac2:5e3c:: with SMTP id o28mr22865226lfg.592.1626785296969;
        Tue, 20 Jul 2021 05:48:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls1388522lfv.0.gmail; Tue,
 20 Jul 2021 05:48:15 -0700 (PDT)
X-Received: by 2002:a05:6512:98b:: with SMTP id w11mr5799099lft.62.1626785295882;
        Tue, 20 Jul 2021 05:48:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626785295; cv=none;
        d=google.com; s=arc-20160816;
        b=oE5l1RofO+eTVe8Zv4uPmS0bjjitOMn4Xbyb33UVoSKPDBOB32l79BEKgUvdz0xd8h
         UVal9EXPpqHgUsKVjSXO5KcAg89GksPn/ZNyVHqpQCVeu8kxaY7Xoc1THmGsSTDRDl0I
         Cti4Ib/hYH6LvnABxKPjuFN147nB8OS4eaNSpr/x+4N7/6E+fevglRtKdMFXTcD0IfQq
         JguK0sKV9e0hAX4yl9P+XoWJ/opMYAb54j5EetggIHgoS0pmmE3La8gGa7ZDvEL1gcoq
         Hi0zR6ar7rASkcVAT7UazhfdxPgaHywmqD6sMIajmWl3LIJmG/feCmUxsXsSIJJHArb1
         rHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0ItI7io0GTWcShfB9OXndSkWcyxA3F74Ps+6kGgGN+g=;
        b=zZgFBlZwDI+PycM7w4nN+wZlrrTWIU6CXiPspABkPeCU7MdUJ8Y0CWauN6HT9cCK53
         lZ0Pb/M0EokEp09n2aLC6kfKADSsa3zBd/F8knz1WdyMXOYB/XslG03mBcX/W7sBzYUM
         +qOYUMLS2tdV1CGgjqNYxlWf4g1FXdna2AUva41+aiYsQscPPJjwo5uVB8GYebRetGI1
         M8aHwKrl87gpqXL98t+NX4Yyr4XHap2ygT6Cwl9ujS3nV7NyvWQrHL8AuDXxbfQM7XPN
         J6RtrezdwAyxoen4Fenr/sabcwuJ9Xvc0N65JWu+MZi2C+KjDj/jZ4AR372OKHFwmU8o
         dSmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=Wr7zJECX;
       spf=pass (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com. [185.125.188.121])
        by gmr-mx.google.com with ESMTPS id d9si932807lji.3.2021.07.20.05.48.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 05:48:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as permitted sender) client-ip=185.125.188.121;
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 665A4418F8;
	Tue, 20 Jul 2021 12:48:13 +0000 (UTC)
From: Colin King <colin.king@canonical.com>
To: Chas Williams <3chas3@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-atm-general@lists.sourceforge.net,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] atm: idt77252: clean up trigraph warning on ??) string
Date: Tue, 20 Jul 2021 13:48:13 +0100
Message-Id: <20210720124813.59331-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canonical.com header.s=20210705 header.b=Wr7zJECX;       spf=pass
 (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as
 permitted sender) smtp.mailfrom=colin.king@canonical.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

The character sequence ??) is a trigraph and causes the following
clang warning:

drivers/atm/idt77252.c:3544:35: warning: trigraph ignored [-Wtrigraphs]

Clean this by replacing it with single ?.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/atm/idt77252.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/atm/idt77252.c b/drivers/atm/idt77252.c
index 9e4bd751db79..81ce81a75fc6 100644
--- a/drivers/atm/idt77252.c
+++ b/drivers/atm/idt77252.c
@@ -3536,7 +3536,7 @@ static int idt77252_preset(struct idt77252_dev *card)
 		return -1;
 	}
 	if (!(pci_command & PCI_COMMAND_IO)) {
-		printk("%s: PCI_COMMAND: %04x (???)\n",
+		printk("%s: PCI_COMMAND: %04x (?)\n",
 		       card->name, pci_command);
 		deinit_card(card);
 		return (-1);
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210720124813.59331-1-colin.king%40canonical.com.
