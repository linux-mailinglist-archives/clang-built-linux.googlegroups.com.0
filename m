Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEGVRL7QKGQEHYOPHHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD162E1275
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:25:22 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id r16sf8696000ioa.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:25:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608690321; cv=pass;
        d=google.com; s=arc-20160816;
        b=eLOpcczS+3PRYzK2SaURKme3/sNXbjoIqNdEfbX/RNOtKeog1GnVRBHDceCTpovBfN
         5TJ+GzqFSnJxjJd0xxQqpBWVU+U6F/8VV+sHDE0WgAvsS1tA1el/gp79uGnjhEBL3Mfd
         ADXo5F7CdGJJd+H4lcgIze+7cwMl6DVHF+sI79hN20e1UGu0Z55nnq+J5Tp2+pyNbWp3
         rnECK4Q6/mFrmDm7MDRXuT6ZifrrN33Fw81NVux6qm265OA4fFB/jwdMJ+aYTCBT48pD
         30kZtHvo+oQR/C1faH5EGdOJuetxCza3x2lquSUPOC6AxEMJzzMis4/LP3Z/Sg0RxyCn
         tCnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qxcWSx9NRCllJ/bnlxuB4QUfVKS8kclQoeqZoX6HvbA=;
        b=0U7jmFECQPTaY5rALNzTZqi6+mzCFG2CHYAwQL+xUIyZHaTaMD7OPruzybslxW1prZ
         lu3wFqSr1IZn98VjlwzEBGGRi6Jqmdy6tnP6CEdeIKeSaK97WnTZs6fx/EhWYy1wcoAg
         WimH/vyJ01cvHFfezYcyCEpV7no5hjTQw5fEDt1rF2QiRBI3wlxUm6y5Kgb0kbnkeKB5
         jDu2xujl2mCK2wscaXMq5FRbT2HXLTx4ed28LLhY6GvCGZ5BZCbxH9n1Tm59sDMPs4qN
         jARZiw34qeqWKbsbE7U/kyq/kJOiT4kaXSzf2x252tbUZzhNwHVd+FBGcKl1w49zDKBi
         cDvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ovb4JvWr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qxcWSx9NRCllJ/bnlxuB4QUfVKS8kclQoeqZoX6HvbA=;
        b=ZXDv+8wcdQfbjbAWLsdZAOxMF00nrvBWiQ3v1WXf9OF2Q+qSq42VRQJQSJEZZ2WHWZ
         qA+qwzONMChKEtQrwaf+kpf2+3UW0zyCCeyLnoB3Gf/FsNH6QF7fQ7ZK+y9Jfalw5cwr
         89sXofoipzLE3vSrnFd3MHgG84S0fshf8kCt2DUNpULCpeIPyM9e/Pup/L5+q0rR+All
         PBl1YsLlJ6nDTzM+A5fXJx/sIgovRkdDoVau15Opw8ChhLDlEnhbIaEIL5G89MpF3UTG
         9WRhiIR9GdPsB4oubF3k0ReJaUNB8vJM4hzMJIJ3BxlXjzc3gkdjLix4R9RGLfh2JTbR
         knpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qxcWSx9NRCllJ/bnlxuB4QUfVKS8kclQoeqZoX6HvbA=;
        b=hBXUESmCcpCVCJO3IZDm71yhU7OdKGwbMnOV4A+qg9E+Ers80maUWBOuiId21aKQb5
         v+Sldh7HvK/4MBw4dadQInnmt6RNfsfBhWgC1mSbyBUgq8kw/x06GvZtqGEqj7qrgHKk
         2GSrOomUoDAnk+FNwFLV6nGGiGL3FVqlwXvRq3Ge3oB9BCdOmiR7IwLnFGLgIjVhCO0b
         BBZQLS1CS2qIlcHyKsk2kHQLokIK3WOtNsuKZfSYbaBUReZEVPjJm+ASoCk8muImCoqb
         9EZGT3iWZWJTIADkubaHT0ifRejkniYy0avMwEhGq9Fo6pHvg7ZCeJDt2pjfyJ/Yum0+
         5Amg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rjVFV8eq3FK635z5Csilz2uwTIg99VQP73yGym/3AENxr+zmd
	4Od/914Ap0PnujNhOOE8It4=
X-Google-Smtp-Source: ABdhPJzyXaoT0DLM+K53YfMBmgE6ioDUeKSYe3p6Q+h2eVSRyZ3Shf847L7AYgqeOdnfgjM/hexlqQ==
X-Received: by 2002:a92:db42:: with SMTP id w2mr23476535ilq.113.1608690321116;
        Tue, 22 Dec 2020 18:25:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d203:: with SMTP id y3ls11512973ily.6.gmail; Tue, 22 Dec
 2020 18:25:20 -0800 (PST)
X-Received: by 2002:a92:9a50:: with SMTP id t77mr23779963ili.268.1608690320688;
        Tue, 22 Dec 2020 18:25:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608690320; cv=none;
        d=google.com; s=arc-20160816;
        b=ad8UWAu2YfVjRKpZ0IQaNilmGLh3Fi/Ng2Cgp4l+mdV3wynx7P2DataAuN10h3rTvo
         1DhRkZX5nbghjPKk9tZZvKk3gBTQaZG5Iu4nw9tJIr54EZLQTs44E3qfuAQm9UX6vZch
         VAL4nAnFdozigkC0h3rRE8TjYoKNyHq0WGOD73Xp39KJxGMtVvH6viXDjGJklPcG249F
         IJo8MSYCZSy7NO/L3ELc7hoxsoxp7TBi8QimNNlcuIODEsj2PoBe+P74mliEs3RF8Bzw
         MVzmDWt/VO3WWw+Qmp99EUt7wcnIYFnEBoltJYh+CVZY5Mw/nZJkXcJEyj71W9APDEOP
         l++A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2hpNP1b+AzBfSsUbms1QTLSMxdLg8AnsQjE/mlTyMgw=;
        b=J9BHa94y6mOrTVay15IDT3fxzL1QTPmmwkmJZN5i7DBbgU7MUuEz9V71vFhKy2iwHZ
         zclnWC6khGv0Y/EkxVkW7D54FeI/IMPAFJfqLwo+qMKCbdBR7UOM9QtE9ztT4krLvG+N
         /MtL92i6udLP2s5GW6PLrrZDjJRACzy4Momz25mB6Rw556eD5/crsnAfd32bDJn3m6w2
         cCR0W0CzOgfoTODjIoSWiOcgKiWVvTxDuB4FDjTMB4D01gah/HlaJTAxcYfesKXtDcp/
         gS6zGOUC167Ylja4FbY9FyLxdtpjsULjg6yhQ5WuPa15LaZaZlaeEgs1xVpk++GLlYS8
         08KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ovb4JvWr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e26si1717365ios.2.2020.12.22.18.25.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:25:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2FAAB2313F;
	Wed, 23 Dec 2020 02:25:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Sasha Levin <sashal@kernel.org>,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 02/38] tomoyo: fix clang pointer arithmetic warning
Date: Tue, 22 Dec 2020 21:24:40 -0500
Message-Id: <20201223022516.2794471-2-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022516.2794471-1-sashal@kernel.org>
References: <20201223022516.2794471-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ovb4JvWr;       spf=pass
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
index 179a955b319df..1e6a4ed5ae54d 100644
--- a/security/tomoyo/securityfs_if.c
+++ b/security/tomoyo/securityfs_if.c
@@ -135,8 +135,8 @@ static const struct file_operations tomoyo_self_operations = {
  */
 static int tomoyo_open(struct inode *inode, struct file *file)
 {
-	const int key = ((u8 *) file_inode(file)->i_private)
-		- ((u8 *) NULL);
+	const u8 key = (uintptr_t) file_inode(file)->i_private;
+
 	return tomoyo_open_control(key, file);
 }
 
@@ -227,7 +227,7 @@ static const struct file_operations tomoyo_operations = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223022516.2794471-2-sashal%40kernel.org.
