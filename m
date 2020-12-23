Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2WRRL7QKGQEERJW7DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7EC2E11D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:18:20 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id n108sf7615778ota.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:18:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608689899; cv=pass;
        d=google.com; s=arc-20160816;
        b=fd4w2dtpSASUsH0E+NSmVEgwl05b2hYxVkHgY2U8TidfIXPTU/Zfsis3JaxVlZnd1N
         iZk2D/iwX9K1kFSFAwfCRE6uuea2wHavKAttj+ttpOgWkap2jFXMtCqEiTRhdGTTiahc
         TIl3+v0ayWkGcjaaFKogQNJK0dWVyh+TbjSpZnRRR5ZNUnC72u6G7qgNqbVgLfvAqOkt
         EMxoGjmNxwDsccuKDCvb+5RiX5rFxr/J3AqBVpPoI0uaWY5C0Hv+dhc2/s6NqVKDTpyJ
         BSn8OdwCsKndhMPfpOAV1uiAyfy3qx9f0g0mPJaDMANax1hob9oo6mkBbBCABBCf3jGD
         Z2UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cYv3vr4RBm4Iyc3vQD0YG5NtkfIMFZMGDvD8iI7nb0A=;
        b=YqfuHR0OPMSIucgegKiG0rzrZrEGXx361kfDhq7H9kdz/7FcO4pr2lQLTHDA/a/FkR
         HIUTPEeLZV1gsAi23Ilhc0n7Lo4F67gsFHdGWIayX8SJ5KZ2sBY43l2OCQpIE2HlQzdT
         khFwofFjf365kQzDQXNgJGuQGp65RGpuMtOSoovEJiCY2Px+wGeaUo62i9mrRMAEraw2
         CgpZ4DtyWi8ur6+AikebUpaSnL5PcOFIWajeh4T3zO5T5YuigVP5UAelmjOrylSeE/Ay
         /N8QSZuit8n9jq0MInJtRsGsYPCL3a1+aSixeLDPGcP1Ccdejj7Q1oEUmcd7erMT205R
         tLag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Pc2gFmd1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYv3vr4RBm4Iyc3vQD0YG5NtkfIMFZMGDvD8iI7nb0A=;
        b=KRJrv6OyzROdnPKbCp0MUx6ZRPqFi3Dob2zm+I4LuQ1YHyuy4lmO9eprK/j++v8GE0
         bnP5sNJuQucBprZ2zdh/v0nOgGrQnL8mQ5Sus3Nfh3Bz7/7J6pIKg7oXC3VaEukICJk6
         mE2NDOxLLFr9b70upuy3mWO+ov2Te9xHz1ER9grwiRX9uN+LKD6oBeIuFFL2cYH9kyeW
         EHC8zBxWL/FUgHan/N63PkMrTbYS2gORetyVhxkmUtP5AoKjsXWHBNZLcGuSwhSQlx5x
         VmAbVeCDepldHJfUvvoX4bmD95Ln4q8B0nQzikoxfLVMK+qLofekRPlwgdxigeqmrSJ0
         yXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYv3vr4RBm4Iyc3vQD0YG5NtkfIMFZMGDvD8iI7nb0A=;
        b=hGjAu8Z/a31bBm7dXw4j5jWinTDG7TbdBsnaJ1EhQ8Fv4b/r/KSa1J3cB0cxfdODD5
         1vepgtbpIH/ByNxwxQSIOTc60fktm1wDKVSLPefll6D1zwFAbAkY13Zxrw2Ex+ZebQbF
         nOlTO0ZZTs6m13f4pJS+3kujAczuUCxqVxUcCm7tbIKO86GDJ0bQ4oFv2InaTSZyyZ5k
         NYjKkOmGaWiLmJAa11B3Ooz0FSbEpvtDre7AFYTxcNUyECoRTaaxq/uBQhi9Yqlb1KSd
         OGY5Omle0ZKhXFuzzy6XSVKA3SPfDVmeGjyyOn8Cm2c2+OE4yBEw5oQKNb8azIzUAWs8
         tocg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327jhrWGAPBNBKXrkNPjA7J0DM3ypn56itmWRtmDna+hS9xYANC
	xfFx5iojeaV22AaiKkSkw9A=
X-Google-Smtp-Source: ABdhPJxd5ZJxz5G4lSd51en1HkTyztX7Y44kTcncMacdsOMpqYmPLj+8/Djlh504/TXby3i0bVCTgg==
X-Received: by 2002:a9d:12c:: with SMTP id 41mr17728179otu.77.1608689899107;
        Tue, 22 Dec 2020 18:18:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls2872186oob.4.gmail; Tue, 22 Dec
 2020 18:18:18 -0800 (PST)
X-Received: by 2002:a4a:a3cb:: with SMTP id t11mr16779640ool.30.1608689898637;
        Tue, 22 Dec 2020 18:18:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608689898; cv=none;
        d=google.com; s=arc-20160816;
        b=wKYoQdk0n22FhlaXFR4iV0Ab5WBtndjCMwTpc+DF5I7yY36LCAn88vNcEOB+W+yF85
         Z4QvT3Jt+zyphhjgut7SyZscb3KzRvF3H1E6FhW9GgNCCGsM4vDcyG8LwwIH3w2yaR8K
         TeB1Jy2e6uh0yPUw1dkb3v44dhwgObmU8WSfwfntS+Ie0iIi8aKB3xXx9aHvxRtsI88u
         XUg+vCOkZ0HD6or2zmqkoTTipKfrmqMeAklwZ+3Mlrtz/8d7XeNUQIX32+Npdkeo0Sox
         0VqPC1mkyZstQtyHSiD+yoQ0GG8yiC5inypdW5MjexHlKt1uw9dEEpkPz/P2P3Yb7Pg4
         QUrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cDHOOZ0RDdB6sRTU3W8x7SM06RAaTgZUhr60yNkY+Jo=;
        b=odLmqkljxRjDKoprnQhzKb0egyJvHmCM7ZSyyPLLlpDNneDGWtjeK8yUfg7JMKFCmk
         pFIvX8/cF0AQJtpE08k9iI0cZxPRiOwcMKzGwv1i0tCtawYzEPMPfixZlOJjWM7Wb0ge
         4DwQld6aEUtxw92/NuRIu3wl3igBZQu6Od3C31RuPuvD72vaM/B0oHOym8B0x9omeQ5S
         1TGmVOadnNYcN5BMxRcd+KCcmKYXSBzQq6IwSoLxaTjqq35d8Ea7W/oxq+T74yM0hjyD
         i6H2Zl/qL9wd9kuWzzhaOfiTEPvWc+t7Fw4gthdxwxVX3cqgVR7u8W4dz9HeFB+v7+A9
         31gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Pc2gFmd1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e1si2121764oti.2.2020.12.22.18.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:18:18 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04301229CA;
	Wed, 23 Dec 2020 02:18:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Sasha Levin <sashal@kernel.org>,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 003/130] tomoyo: fix clang pointer arithmetic warning
Date: Tue, 22 Dec 2020 21:16:06 -0500
Message-Id: <20201223021813.2791612-3-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223021813.2791612-1-sashal@kernel.org>
References: <20201223021813.2791612-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Pc2gFmd1;       spf=pass
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

[ Upstream commit d9594e0409651a237903a13c9718df889f43d43b ]

clang warns about additions on NULL pointers being undefined in C:

security/tomoyo/securityfs_if.c:226:59: warning: arithmetic on a null pointer treated as a cast from integer to pointer is a GNU extension [-Wnull-pointer-arithmetic]
        securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,

Change the code to instead use a cast through uintptr_t to avoid
the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 security/tomoyo/securityfs_if.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/security/tomoyo/securityfs_if.c b/security/tomoyo/securityfs_if.c
index 546281c5b233a..065f4941c4d8c 100644
--- a/security/tomoyo/securityfs_if.c
+++ b/security/tomoyo/securityfs_if.c
@@ -131,8 +131,8 @@ static const struct file_operations tomoyo_self_operations = {
  */
 static int tomoyo_open(struct inode *inode, struct file *file)
 {
-	const int key = ((u8 *) file_inode(file)->i_private)
-		- ((u8 *) NULL);
+	const u8 key = (uintptr_t) file_inode(file)->i_private;
+
 	return tomoyo_open_control(key, file);
 }
 
@@ -223,7 +223,7 @@ static const struct file_operations tomoyo_operations = {
 static void __init tomoyo_create_entry(const char *name, const umode_t mode,
 				       struct dentry *parent, const u8 key)
 {
-	securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,
+	securityfs_create_file(name, mode, parent, (void *) (uintptr_t) key,
 			       &tomoyo_operations);
 }
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223021813.2791612-3-sashal%40kernel.org.
