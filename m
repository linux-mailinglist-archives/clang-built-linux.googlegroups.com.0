Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVOURL7QKGQE4HXYIFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD142E126B
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:24:22 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id w16sf5867295uan.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:24:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608690261; cv=pass;
        d=google.com; s=arc-20160816;
        b=yEAJ7BgYc3MtX59bWqhDzaTj6QW21N/MNhCyOYJBIM5aUNBJM+wDI/bL6GM9/JCA6Y
         lAJ7p9PIkk2pQS3pKESBfYixBb+266GEvVYfTIA/zzNvOgb+s/Bjc6i+FlnbOsqWQ5ll
         0R8Nsvd2k1/HSe9YTZviS2+zOuivm6ohbxydm3YVop8ulkd11F2P0u6tjHxjKz3jNdYO
         RBx5Lo+5bmaBe6F+rQA2lqOIPaCULvGAkJD1VlHPWC3CucUD7s378oNF25cSKM7ZQ4wt
         ViAQ6NpL6h6Q7gwE+vb1x3e+nT8F01BmRWod3F3NUzBi8iCrcw4bFCLAp17eoU339co4
         x7ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vBnpvIhKyeZ+MhCvTRpev3WE3ZUQd2t668Fn47fAirw=;
        b=tDFyb3+JGPMTDMV7/iYr5YWdq9JJp5SWxwA5qrPwf/maeAfGvYPxTe/h6OrkohGJ1J
         ui5OXOuSs4mzskHX0RHJBVsKERwWXOiR8Vkj7YTU/Ky1OrY4Qg/olDpjn61BpxlQJ6i7
         cHiJP8iRIoXNS60m2vPyfRSQR4xuIuawl9R+vCca4S34+VEC8ZHTCDaEDvFjZzYzzoNs
         hp8tYWW1L/GwwkbcsDTX+k5dVSHaZzrM2nCacyplp2LfBmdUsmHiCLvanSjS0ZVSwT45
         Hr4JajTvpmuv6zM5uQZBtwlLL8GCsWgd9anxn0mpAzcLhxObEmRPrEatjbyYqD7Ac99U
         uT6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UPFIM2Bc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vBnpvIhKyeZ+MhCvTRpev3WE3ZUQd2t668Fn47fAirw=;
        b=RT1gElJ0JcJcIvP9yO1aoGtEC5/LR7HYD45j6o8lA7X2AqDQPYjwMm5IdQwEcc52Cf
         pJ+NRLGTxijh06B7X5kFGz2XyPIiXpKV3fbTuBs4RGCDEwzWTwtIk85plIaelsW/PZBM
         oI7OtUdJ0+CYKHvr5d4u7nvFmwPXDo5iGD8d2JAPbYYckA3mBa+EragTmx5QxMDxh3dD
         wmMA3u2zQMNWAca+9TbPa124d2CBf6Xwa4wUk2xpBRCt6CxpNweeJsMVJ6EOMHpTZGh+
         BYeNbffakv5ATEEEVdTnQ/vFMtBzFScv5dzQlv5f4h/o9Lam5seL39Xtv2rRZZv3bqNJ
         m65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vBnpvIhKyeZ+MhCvTRpev3WE3ZUQd2t668Fn47fAirw=;
        b=lIjZq6Hblg570LptqXGw5fIkJnemIrXBcMqt+BP2jHUxoGHhR52jLR/Zesqsq7CN0e
         S6Fnm/tt2fL2K3B25fKxGolB2U+cM6HR/q3Kr2jICYIP1/hl6awy4kzbjRiihhpljDxT
         Qyg38dFe+EV/gn1ErEJVnbolUolCQLUbAJpJh1CFQCng8jiiUBRqM9ebI53Sb0JGMKas
         p4Ql3ZCcoKt6k7emOujTblNsjuJZg1OmdW6xBWHaRM3umYBpdRuad6oleIjAz/X4ymBb
         XfN2XFIJJjLrCNRhyEplvQojv0Vbr2dHvCzXY4ErA3fBNcDdSFW6K436g8REqXpM0RMC
         uYvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320/IXjJWEAIVingA5SgcZdPwmZKW/5k0n623vYb/bPeqF3awVJ
	Bno4YjCJX3Y2jVd2U7+H3RU=
X-Google-Smtp-Source: ABdhPJwuiawuyNjuhvd3ahbPgWC5ZCVBKyRKY5a8Uv4vahVD/f5kYaX/DBU3iUzxkT81SOMvWIq3pg==
X-Received: by 2002:a1f:5041:: with SMTP id e62mr8904488vkb.14.1608690261396;
        Tue, 22 Dec 2020 18:24:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6155:: with SMTP id w21ls3258519uan.0.gmail; Tue, 22 Dec
 2020 18:24:21 -0800 (PST)
X-Received: by 2002:a9f:37ca:: with SMTP id q68mr18097072uaq.114.1608690261006;
        Tue, 22 Dec 2020 18:24:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608690261; cv=none;
        d=google.com; s=arc-20160816;
        b=m9n6x1nNkDj/2gdlOH6dv6TYD826EWqtZ3FitetNngbMnBmEF7NF/iEVazMjdCbxLr
         5D6rWxZSqslux0IjU2ah9+doiwtaX2YX0/G+xgVeHSoRfeZFfSFK+qITAGFDzIV14WoR
         B/rge/ffSluI1GMmUoD7pbdaavRdu8b8ZhixmpE3+c4Rsm/1jtuGuvFq/TvnGeq+P5pe
         2Fd1p9AJUHCao93p6Tlwx+mkg8mfEneaWKaiNy5B3oIKDWWRr7Fcz/RYM82qpXkZ3ty8
         R0l05iq6TEtHf3L3VnN7dY+zy/NMqWdEtcIOCjD3FbdRYTKmMjCQyHapeeWwquvEu6rO
         Jjtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DPCmBfGrq+un2az24MOqpE36Po8WQP9fhpiA7604Ivw=;
        b=UdQ8+6fLu1DQSjbO/214zBzBPMzh2VbtZm44YI1cPBqDKaEUyycAdauOGVJU6EMrwa
         7gWlHGi+I/iWM0M6b0ybW3RV7uWUndEPXNVdBnqcPyHh8L52YwwAeqMb4+N8iDL1pY4I
         TQZkkrtRkJEsz4MHhnxp9XrjOT2RTRiP6bsBLvgP7W2azt9FSx8DADcODxUhNh5ac4Hz
         58XfBI2/7EDwtuTXqp6Q0xn9q/pvB7R6/YMdUXmk6xzI/rdG1ivwESqMEk3iTqjMQ0zn
         P+J8CjnDomk34JcvfeUb946LMAy0Ht/gqX9SqhmmBtJoPbEN0FHVoDtgkhhWqmFga3l6
         nQ3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UPFIM2Bc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q22si1727918vsn.2.2020.12.22.18.24.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:24:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D10523159;
	Wed, 23 Dec 2020 02:24:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Sasha Levin <sashal@kernel.org>,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 02/48] tomoyo: fix clang pointer arithmetic warning
Date: Tue, 22 Dec 2020 21:23:30 -0500
Message-Id: <20201223022417.2794032-2-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022417.2794032-1-sashal@kernel.org>
References: <20201223022417.2794032-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UPFIM2Bc;       spf=pass
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
index 06ab41b1ff286..7590dee59f02f 100644
--- a/security/tomoyo/securityfs_if.c
+++ b/security/tomoyo/securityfs_if.c
@@ -130,8 +130,8 @@ static const struct file_operations tomoyo_self_operations = {
  */
 static int tomoyo_open(struct inode *inode, struct file *file)
 {
-	const int key = ((u8 *) file_inode(file)->i_private)
-		- ((u8 *) NULL);
+	const u8 key = (uintptr_t) file_inode(file)->i_private;
+
 	return tomoyo_open_control(key, file);
 }
 
@@ -222,7 +222,7 @@ static const struct file_operations tomoyo_operations = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223022417.2794032-2-sashal%40kernel.org.
