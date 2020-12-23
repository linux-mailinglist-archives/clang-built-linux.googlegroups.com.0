Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAOURL7QKGQE6F46JIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2322E125D
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:22:58 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id g4sf12800360qko.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:22:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608690177; cv=pass;
        d=google.com; s=arc-20160816;
        b=bBMJUXpc/qC8J5j6GhU/38HZTM8g2lF6BRrPWjZiFAOGXYr1LiLvAMv+xUplz2Rh4w
         ixBAAL4+usRUNuPPetyBpXIqDHFWpgl+dl06AUP512AMT0oR3w9TiavNHOmEgr99KXsT
         /9U1R5w8fA7eRG3HEXU5wzFriZKduGggXP16EYpaiCv/OvC7N/0f4DgCt/cH2i3I8WA0
         Ln7G5hatgkHwbakRwlFqzsYW6KiI6rknEPpfMJXNRLlSeSOdv5j8wJSxFtiFeR5AYV1L
         0rfLc190dNkiEWwDtek+I+wlVs70lGkr5x8NQUpEp8X4y54s2YVu4McNcAuO/unDQMXS
         O6Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QAyGQyU3qEZYkQSxog/qkiLDxJR5f9FvQnYFt+fE+y8=;
        b=YoHZtVCAP9uDv8wpIrs+p00rvZp6xpAj8OHuJD1xd+z78FqBGzx0BN2hVOEEQHVbK1
         VUNlZ+jIpP7aTLT7SLMvui9rfI3I8dCa7tj6/nn8Ytj117YGMY7FBs7gjPPAqfsy3uhp
         ECmrfiO2pBK7jiq/8Yk4F14VF/9F89FnAV/M/rPKWkllu5BrudPubguAbtA00uwfuhyc
         0teu6HDQZbUZcfVDJTGHz2mqc7wwIU5A/5/od+sxo4G+k89/zA3yxvU5+HcEh+MU54S3
         f1WOa6PLFSiLl2Y2KwrOd9V/jpE6EVt1exbfmHaTSI/7H6rGX8zLUvZLksYn+JGmMX48
         h/YQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kdRKUsQY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QAyGQyU3qEZYkQSxog/qkiLDxJR5f9FvQnYFt+fE+y8=;
        b=LlD6t9jQDfDw77BTkUYDqFjd99QGbZTQX+/9OXftsi2qTJqNYcyLWaY0eT5LihOVIi
         5yXVANsn9OUimTWkcxDvIv44RQUgj+EXi3iQWYcH9xEa+DlW69Fb8Loc7cQtyef24ZdG
         uVRyFdIOo+WIe3wfQpYtyM9xj6bgp16E89I3lrSEmd8HxkXCawlUCMl6EvDh0MxWh+lI
         hsA5SMeeLR3fxD7uND+u80mIf7qmOIz4QqmXEnIDY4dlyUjhLPghFa3gn42p4a/dVJ04
         dFj95YNi9gCpEqXHRWObC/s0KfKyrb0hRdtBdB75TAKhWTynLM8+EYCPZ3Umdwt48KzP
         7T7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QAyGQyU3qEZYkQSxog/qkiLDxJR5f9FvQnYFt+fE+y8=;
        b=aSY+Gm7lK8HGRQHZKR4ZEwnPQ9a1rDPmLYC2IdtdMuOxARQMpkoEcqN+CLcU08P201
         l0GTEoouoba49UhsrqXKmBdoOlLfXL863wbmkVkeKn0ROBFFztmWJfU4ShvVkMNUn0jv
         N6qCd1HTClPw+aLGwiIPJMcqEuxjMsmwUaQeJWw4jY6NwjDMSOmW5cdjbRs+sz0+qENj
         nsYGl6FIv0SxDovFBF4DKXenN9ZRu9aMiwi+IMV0eHONiC/3mXFF3cx/U2vAy7hWFDWG
         BpO3B1UNaDDZKg9XNO34aL508FsBe7FcbwNfH2XO9L+Q55qkp82HTpFgqi3QZ6MOxEbG
         ijAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315X3K8FPunequVA12f/GtBJ4WNSXWMRyeD9OI9MaE/3ONDukYm
	SUV2SIlLEyeQNBr+ZZ3fl0c=
X-Google-Smtp-Source: ABdhPJxHyPECjKFinC2H88PiRDKg/+J+xhWNef8UiVtnHMO3inseOUjDbbgqHcdRoFhYgZPcthlOoQ==
X-Received: by 2002:a0c:f1ce:: with SMTP id u14mr24651509qvl.24.1608690177519;
        Tue, 22 Dec 2020 18:22:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:26c6:: with SMTP id q64ls15134975qtd.6.gmail; Tue, 22
 Dec 2020 18:22:57 -0800 (PST)
X-Received: by 2002:ac8:4f13:: with SMTP id b19mr23953055qte.150.1608690177160;
        Tue, 22 Dec 2020 18:22:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608690177; cv=none;
        d=google.com; s=arc-20160816;
        b=Er5KZY6fkTTTPiuIy0fzIPnI5992i9XJX0hj6/nsr/l8K1E0bJwXUwhouFD2J38oyj
         EChf/uU4tknt2+B9uTzv8JdMmpNqsmbm8mQbwfQ+Wf8I3uijvMf/BlIx7WlAjCmet+Fx
         lKwyLuBxtxu6cuSxhr0XK46wOJX1A9RtNX4L79RCP/W6tTu+14gBTLcUB0PkffzSNQca
         O0DR4M+YxOS0k5dMgE6PT/7UiKGqH1wNKpzRI+D4kd7+h+BFYtqh5nllaXaw24KG0nOZ
         Wqfuf951eUsO6AmCSuLd9X9P/iGhwIwbWHF1lvh3XPfvqJDukE+G5dJc2Viz4YA+pdSP
         t0Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Yr5YS8DpGBGjPrQ7xInHH8xK8LfiUL9xvx9W2HrMnho=;
        b=bU/aTZjERalaocp0Yzl7Kovp0wgRds47XkMHBvo0lLQcUBfKU6yJHLm8vjZ5P9+z1C
         /pfXf64uC9x9W2jP299pATCsQsA0ZP38UrjXTJMtmt2+P2g3grs+P3+meHuGJFDxEMe/
         CRIy57JVT4ViX9oMY8FJ9JWoTfwQSvtNvF1tH5wGoF+HlCPg/J+IHRDOehlr7iRoa6n9
         qzdoNmlcyUHCFprEu6xOTH8S5jAsZPUB+2gvyAVRkKU55zk4kjjTI9i0IeeZIpzWHx9Y
         JqHf4TnYR4K3z53b/SxDo5pKEm6jF/fn2am4yphLsM7oDKUVGm8bsAlJdGqMm5Gg6ihG
         Y2yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kdRKUsQY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y56si1763261qtb.4.2020.12.22.18.22.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:22:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5701122573;
	Wed, 23 Dec 2020 02:22:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Sasha Levin <sashal@kernel.org>,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 02/66] tomoyo: fix clang pointer arithmetic warning
Date: Tue, 22 Dec 2020 21:21:48 -0500
Message-Id: <20201223022253.2793452-2-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022253.2793452-1-sashal@kernel.org>
References: <20201223022253.2793452-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kdRKUsQY;       spf=pass
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
index 49393c2a3f8bc..9c7c8ec87de2a 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223022253.2793452-2-sashal%40kernel.org.
