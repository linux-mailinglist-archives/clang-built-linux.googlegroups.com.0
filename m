Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBP52QLYQKGQENZOPGYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 987E613E7C2
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:28:32 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id a190sf22917244ywe.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:28:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195711; cv=pass;
        d=google.com; s=arc-20160816;
        b=uldM80Aw8pgtdgBPZz41cNClsfC+1CljKQ7LbH2loOttLDLza1Zu+j54RI2NUoQ9lg
         2vNrDIKIw+Qe+LwH1Y8oD1i6p+TAFD0oyr0TLebnN2l+zEANIqwacSsCFWk96LzIqlhI
         5Lw3RTwU/j1svd8DKIfKTPPbDUcg9Jxqp8x9nEja0zc7tHeZc2BcztKrRc9YMKJSyW+L
         +Ji3XM4slAHI4uokGPk3gyqY0D1ptBULNoGIcjAlg+R2LsKPMT9x0wlX44krsETcLvcF
         BiRsfYQnwNK/PTM3dA5WipXqKDB7XwrwGzYxLR0zY8IUrRZKrnhB2NC31NdzWYlcZxiU
         YGNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nvPT5DUBZJILL++6LxfR+p3qpkvj4pnDh4yLXPCdzW8=;
        b=z1GnnnLuujLOg3cq3BqBIDQWt8JGaZu4R8JY0kcau3oAL3QHx5M/TPbq9rnjU0jPvT
         G/giPOujSG3CwMmZKaVpHw2e75Fhg/TWvTh+zFIXEBkfnQtJ4wz2ZhfGbK2ay0ysI26t
         9O2Cg7KzCKaz6SOWjUETTdCl1twC17qXs7NuoW4YpGKHRbW21WRb3X/MWhbPqphMQsdB
         qiwpO1DO04Xg5cbv2oYUSQs0L6+1QWUDqv9HLee6UEE1iYnix7O1MR0bxqtPej3BCQWo
         XVOKyT+paay69Tm5E73fXkrJscop+qM6uerOYZz5fQAbPBDU2QbkHCFrNqv4QkOsvUOw
         LvCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UewlVl+G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nvPT5DUBZJILL++6LxfR+p3qpkvj4pnDh4yLXPCdzW8=;
        b=Ahd583kvC5dRS3S/O9vWJlx4ju+cQISk4H1dQKsMJAUhK2lgXq72ZPcG195QCayzFw
         PrRLi02A5MAliPcdTRBNwdPK5+oI2uejDgDGgffoM/Bw4MaZYhX/CzPVjCJhNfUPZHRv
         ayOCzk2RqJ/1o/Hb1YR+ZlLLlcynEBLKisWfbAjMeUdc2fmGkP1m8MK060LqJk0mvCOG
         T1O+Fs5Eo4e4didSx5+rRwrArc8VQzMmeN1j+HlaPrGzFqOWwhQrZBCzHb2ftMWcJ/MR
         2IEhhG3Fou/pBsgwC0Z8vsEb3fp1omZ1hBDA3lTFx6b6J0nIn/6ucXUC0562XCxTDF0g
         Bh2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nvPT5DUBZJILL++6LxfR+p3qpkvj4pnDh4yLXPCdzW8=;
        b=LelYnieNeRmcCyIDtmHpXUesvjLNorJRce3Kk3pVC6Z64kxGDoM1M4ejIFlMFTXOIe
         N+K0XKXVnOuKh9dFrcncgSm1OxCxYNdPxs7h53mf5CIcKHmXBBv/30u4Kp0P7yJ6cpK1
         aeIG3qRp2ClW0vlXZGAglWXndPwucuXAtyvmcTMCC1Dmz2awAcoXGCU2LTsfwRjI+cMv
         W0tlNbpIakwGK5FoifiR9RhbiRD/bpeOBl+4GDs1esTvobfmMzqBr7DJHN7jEUzO5591
         TED59oVhexkG7tqWn9tZr2PQM1BmpQ3ERgBKctbVqb+frQ4qCtB5KU+FGDq7bqDsflCH
         mnQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXV6hXhrN9KdpPm/V8uWfDM6KDXabEdg6+arr3YubsUAWywIT6z
	akicT6lKrXdcXAYgYfTddzQ=
X-Google-Smtp-Source: APXvYqzhUzrCuY518oLe70BE9iJHtHPs43gxs4FlDbFM5eYE40kEAorsv/+s+EYR61ELjTWmviDDug==
X-Received: by 2002:a0d:e387:: with SMTP id m129mr22010045ywe.390.1579195711588;
        Thu, 16 Jan 2020 09:28:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:845:: with SMTP id v5ls2474329ybq.13.gmail; Thu, 16 Jan
 2020 09:28:31 -0800 (PST)
X-Received: by 2002:a25:874f:: with SMTP id e15mr22536096ybn.418.1579195711267;
        Thu, 16 Jan 2020 09:28:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195711; cv=none;
        d=google.com; s=arc-20160816;
        b=VHWw0rZSgbYMnFoSoGVEX7VBP8gn44sKK1276mihFncJZB2WKlGrVxr3IZMHm2TJtp
         kMvNLQ4TJFVrgQMyTiz556necakoCRyhtbQQ4SF8QprOUCZEKvn0tE7wnR4TyZX8Zqa3
         j9HjuxfoJwoN+uWsEbiKUNr3Ir93VIvQqYZRG+EHYPGdfCrGfNoPzr24ROGNhqDyMbdm
         ykQrvmT7mW70KOB7RfZE2F5tyPdxmxpJjg7ehsM8QnlUGoBr8QWci1ngsodHlyeN/nZG
         cG5tBDA22GI7zQ4O+b3zp8/I+GRmGGSB23HvrSobOAnMQ/n0IyquB1P2mGEQQUaaP3tS
         UQWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rAWEeOxHQ9jiwuGpyW3MTuoVN8XOtXz90B8hmgMLOZY=;
        b=GZ1KgnL1jkIsTR4tWTk7oX6A4byuxLGSmqX9pJbp2ug8SkOsksIKCOKkRb7JBjMSks
         a+rEO9HVrvKKyCzCG7zVmoMkkev8yOGtI8trB0HSBRLHpBZbGwrtzWssZ1ihzxkUeLse
         QAHeksjPSm8d0U3KOqqWWQi4IHTEaewY+by66k+IrdgC8Q3qrYUnQfDNbGFt4lR5AXba
         2You+Y9ixeEjeGXPL31H5JVQ5CV68wKJDqgBJiNligW9Ehn2twncWvvVJhdd2dk3clvS
         0yhiEzPtOYhccaldA5EeXlbndBSfee8Cy/Fo9Sa+NgkN6nCscVqkEm/K+tFdnT5vJxlD
         6sHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UewlVl+G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e186si198003yba.4.2020.01.16.09.28.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:28:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 68BFC24701;
	Thu, 16 Jan 2020 17:28:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 256/371] crypto: ccp - Reduce maximum stack usage
Date: Thu, 16 Jan 2020 12:22:08 -0500
Message-Id: <20200116172403.18149-199-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UewlVl+G;       spf=pass
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

[ Upstream commit 72c8117adfced37df101c8c0b3f363e0906f83f0 ]

Each of the operations in ccp_run_cmd() needs several hundred
bytes of kernel stack. Depending on the inlining, these may
need separate stack slots that add up to more than the warning
limit, as shown in this clang based build:

drivers/crypto/ccp/ccp-ops.c:871:12: error: stack frame size of 1164 bytes in function 'ccp_run_aes_cmd' [-Werror,-Wframe-larger-than=]
static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)

The problem may also happen when there is no warning, e.g. in the
ccp_run_cmd()->ccp_run_aes_cmd()->ccp_run_aes_gcm_cmd() call chain with
over 2000 bytes.

Mark each individual function as 'noinline_for_stack' to prevent
this from happening, and move the calls to the two special cases for aes
into the top-level function. This will keep the actual combined stack
usage to the mimimum: 828 bytes for ccp_run_aes_gcm_cmd() and
at most 524 bytes for each of the other cases.

Fixes: 63b945091a07 ("crypto: ccp - CCP device driver and interface support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/ccp/ccp-ops.c | 52 +++++++++++++++++++++---------------
 1 file changed, 31 insertions(+), 21 deletions(-)

diff --git a/drivers/crypto/ccp/ccp-ops.c b/drivers/crypto/ccp/ccp-ops.c
index 4b48b8523a40..330853a2702f 100644
--- a/drivers/crypto/ccp/ccp-ops.c
+++ b/drivers/crypto/ccp/ccp-ops.c
@@ -458,8 +458,8 @@ static int ccp_copy_from_sb(struct ccp_cmd_queue *cmd_q,
 	return ccp_copy_to_from_sb(cmd_q, wa, jobid, sb, byte_swap, true);
 }
 
-static int ccp_run_aes_cmac_cmd(struct ccp_cmd_queue *cmd_q,
-				struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_aes_cmac_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_aes_engine *aes = &cmd->u.aes;
 	struct ccp_dm_workarea key, ctx;
@@ -614,8 +614,8 @@ static int ccp_run_aes_cmac_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_aes_gcm_cmd(struct ccp_cmd_queue *cmd_q,
-			       struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_aes_gcm_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_aes_engine *aes = &cmd->u.aes;
 	struct ccp_dm_workarea key, ctx, final_wa, tag;
@@ -897,7 +897,8 @@ static int ccp_run_aes_gcm_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_aes_engine *aes = &cmd->u.aes;
 	struct ccp_dm_workarea key, ctx;
@@ -907,12 +908,6 @@ static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	bool in_place = false;
 	int ret;
 
-	if (aes->mode == CCP_AES_MODE_CMAC)
-		return ccp_run_aes_cmac_cmd(cmd_q, cmd);
-
-	if (aes->mode == CCP_AES_MODE_GCM)
-		return ccp_run_aes_gcm_cmd(cmd_q, cmd);
-
 	if (!((aes->key_len == AES_KEYSIZE_128) ||
 	      (aes->key_len == AES_KEYSIZE_192) ||
 	      (aes->key_len == AES_KEYSIZE_256)))
@@ -1080,8 +1075,8 @@ static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_xts_aes_cmd(struct ccp_cmd_queue *cmd_q,
-			       struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_xts_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_xts_aes_engine *xts = &cmd->u.xts;
 	struct ccp_dm_workarea key, ctx;
@@ -1280,7 +1275,8 @@ static int ccp_run_xts_aes_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_des3_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_des3_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_des3_engine *des3 = &cmd->u.des3;
 
@@ -1476,7 +1472,8 @@ static int ccp_run_des3_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_sha_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_sha_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_sha_engine *sha = &cmd->u.sha;
 	struct ccp_dm_workarea ctx;
@@ -1820,7 +1817,8 @@ static int ccp_run_sha_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_rsa_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_rsa_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_rsa_engine *rsa = &cmd->u.rsa;
 	struct ccp_dm_workarea exp, src, dst;
@@ -1951,8 +1949,8 @@ static int ccp_run_rsa_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_passthru_cmd(struct ccp_cmd_queue *cmd_q,
-				struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_passthru_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_passthru_engine *pt = &cmd->u.passthru;
 	struct ccp_dm_workarea mask;
@@ -2083,7 +2081,8 @@ static int ccp_run_passthru_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_passthru_nomap_cmd(struct ccp_cmd_queue *cmd_q,
+static noinline_for_stack int
+ccp_run_passthru_nomap_cmd(struct ccp_cmd_queue *cmd_q,
 				      struct ccp_cmd *cmd)
 {
 	struct ccp_passthru_nomap_engine *pt = &cmd->u.passthru_nomap;
@@ -2424,7 +2423,8 @@ static int ccp_run_ecc_pm_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_ecc_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_ecc_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_ecc_engine *ecc = &cmd->u.ecc;
 
@@ -2461,7 +2461,17 @@ int ccp_run_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 
 	switch (cmd->engine) {
 	case CCP_ENGINE_AES:
-		ret = ccp_run_aes_cmd(cmd_q, cmd);
+		switch (cmd->u.aes.mode) {
+		case CCP_AES_MODE_CMAC:
+			ret = ccp_run_aes_cmac_cmd(cmd_q, cmd);
+			break;
+		case CCP_AES_MODE_GCM:
+			ret = ccp_run_aes_gcm_cmd(cmd_q, cmd);
+			break;
+		default:
+			ret = ccp_run_aes_cmd(cmd_q, cmd);
+			break;
+		}
 		break;
 	case CCP_ENGINE_XTS_AES_128:
 		ret = ccp_run_xts_aes_cmd(cmd_q, cmd);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-199-sashal%40kernel.org.
