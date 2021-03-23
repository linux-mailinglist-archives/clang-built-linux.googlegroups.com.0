Return-Path: <clang-built-linux+bncBAABBZWI5GBAMGQE6C6BH4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id CB475346B74
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 22:57:59 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 81sf117921otc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 14:57:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616536678; cv=pass;
        d=google.com; s=arc-20160816;
        b=IUgVzgCLb35AT6B9N8c0x5krqEEnobJP3oNEBpiJLRNAQ2ZvX7hEvROQDtdss++ZZQ
         bWzaT9L5/mhyV/azk9Ff2P+0uIwEFaxWvsMNZLpRUZSF0J1P7ZhWcaU8Tq1PLlhmfxhN
         E/+WE4MYrFN+IQF/JRZPHjSo3tGFwxMrZqh14YZNzwtg3fOb8KBxo0WsFJoDDGqZfAIN
         uvcg0QbRjlKoAAzU2FIG0259LqqqrzVxdKpp2/e+Y6nkfkjgQ+hieLXY9H0Rdknk0E+h
         Jwu/pZWVOFvs2/lpfYfr8Ovd4TsXtDFOl97UxxuTGpUgER9ODa8MN/hQbjd4DaP4NbpD
         uwIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nHGCj5k/KunwjPm+ZxEEyh/kvvjrbJtXGJfgZYBCP4w=;
        b=PPgtHUbmeVk66LK0D9NRETKCei1kx+WS5baexVsbfQtt4Pfd4cBeTAPCpjkghas9nG
         INvigzxeq3zgpR+VkA16GrqfnOcpKovBYho4vw/Y8CUDMxpEu/VHx3eQDBc/0FUVARWa
         /HaFQMCbq3mdcjmtuj3S6GlsYmr9nvc+PV5R/9snd0wmZwNRyypW1ubC6dXUF6xWuN0M
         J6chXsrytHjJ46pkGcmB4k00iKJu5To1wNwU7H57HqRwSjiSbCU45Jbojxm+wtrCLAGX
         hncgZEauS4FccCqjMnQX8Hsvo/xsxE5b1gJffyOtbSS9BP3/4UUqNmOpwPRlRIDhyOXt
         J9xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y6HWEAfJ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nHGCj5k/KunwjPm+ZxEEyh/kvvjrbJtXGJfgZYBCP4w=;
        b=IBbBjC7dF16cpW1jb/F2Ix4vTxgMpJJ6WSsfIpA7j0IqVc/3np7K11eABAYMH+H2tR
         rppXY+iNdstylmKYkYqk5QgYArVVUNSD4m9TvXjI7aokEyk+t6cHTg2m85erh3z6Xjtt
         EsRgDSajoTCwTy3/teawl6Di5tgyHWTBudQ0RBXCM38IM8OiA1TbkJJnHGyPqXjI1Hz+
         2+/kCI2NI0rFpsOn4SiQVYuuADOq7DBx99OYw01lej2HjNQB+nIxNA6JSNKMNUeYi5QP
         cTllvl/DOx6ttBKzYuR3IKPUozwfHsL08e44RVJMnolpWxXzxVwfzNjud+UyUh3r3j8q
         uBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nHGCj5k/KunwjPm+ZxEEyh/kvvjrbJtXGJfgZYBCP4w=;
        b=fkDuk5ZfyfirpMr/5z1fAjK8B+nD8Cxg9jLA6DwK0/O0+aT0zPT5acbvTXZ4apA2ou
         DtGLvYzJe1UrtjBBQF+mtJKJZpa/IEbIldmNCysSVMgDuSM4fPZYCAq5yjTaAX9W61/C
         lQeLWh9aMQz4polQVWSIfFQK/ACEPxib+yO02SdMpa/C6SHRJIV0WBtpBX1pU5+mbicF
         uIA+TbLNO9lPvSxNh69B+doUQ4XAgnEaT1fEDFCrNdgJzhPDZ1ToPa5Urz7tEdKneunB
         GAr9VnY1UJ74uveHaVKtSnH9qenfVwglY0YFX6Rflbfl3xQDYnscQI50xgwivdOouv9F
         +0bA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320HnMkyUnp5UAHtLQCAwWpNgfZaIGd7z/A/JFbInxrgj+YSI85
	BXpbR7+enngs2OlYvR4pcJk=
X-Google-Smtp-Source: ABdhPJzEpMUbwpquSubpF7HhYaox8RN053918JS9DLzKv+wC29MkV0KeKbORMwxWOPb6IFcVIWi1ww==
X-Received: by 2002:a05:6830:1da5:: with SMTP id z5mr357591oti.257.1616536678724;
        Tue, 23 Mar 2021 14:57:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c55:: with SMTP id z82ls71544oia.2.gmail; Tue, 23 Mar
 2021 14:57:58 -0700 (PDT)
X-Received: by 2002:aca:57d1:: with SMTP id l200mr160633oib.148.1616536678427;
        Tue, 23 Mar 2021 14:57:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616536678; cv=none;
        d=google.com; s=arc-20160816;
        b=a9OH+3wLkfeUL1xOphKEPORLecV+MWA/kROYY6zz7puVf9IWgLZaVH8+Q0Zl6fnSW2
         vKTVZUiiqZvhLYAhJa+f3cfxxJPzSyGDz3NK+atKoBilxIc0/u+hCKZ/EATM6lb433+a
         zQ1THS/hW03XfDZ5fAKhibpclfAUojoKNL0n4O0K93xIsnSIINy39KzEluRY7tBYog9I
         YNRHeyQz7FrnZTjUlwab/JrOl91Xb+JTC4ZTKA38J6NPWB33YnWit+jm6UhX4qloMON7
         g9ln1OqNwLxFoPBwK+XHChUdHMX9NmjoDDaZNYt2aSZTqcacF8hIMK1CEHISWFO9eaTT
         2ceQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yEvlCrp7GNt+xRLWHdbfz3ZRJBbzhcXWO+kTmyizE6I=;
        b=xo+JgVFSsPu8vx5zdBLYhTSEYyf88LWTKGqeZTzAS7NWLU4Hwxmj0XqsHeaTWQ6oxB
         iNbfcMJleFjlM1EjRKIvw3m5dAR12jyeuMynDJhWXWlxG4PnsjjmCGsyk7rPGPKxf+5q
         oBcQOgL8Y+onU3FcqMeaVH/kVC1FMoTy3YGBPeYssv6/fqIsv8kxI3Wy4glK21a4xXd3
         /eZcCcWElDFeEMmMsDbgEKGcWQE2MaeLa8E17fEnSlehVvDuqEnK4nJsdxFBda39HnXN
         rsX9q8Sfe4joY3UnMaADQHYMYf7Ad1aR/IddKCcDy19tCzFqVXE0LVTTxZ8Q+ZVwxsnK
         Klqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y6HWEAfJ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k10si16409otj.2.2021.03.23.14.57.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 14:57:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 87955619D1;
	Tue, 23 Mar 2021 21:57:55 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Joshua Morris <josh.h.morris@us.ibm.com>,
	Philip Kelleher <pjk1939@linux.ibm.com>,
	Jens Axboe <axboe@kernel.dk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Philip J Kelleher <pjk1939@linux.vnet.ibm.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] rsxx: remove extraneous 'const' qualifier
Date: Tue, 23 Mar 2021 22:57:26 +0100
Message-Id: <20210323215753.281668-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y6HWEAfJ;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

The returned string from rsxx_card_state_to_str is 'const',
but the other qualifier doesn't change anything here except
causing a warning with 'clang -Wextra':

drivers/block/rsxx/core.c:393:21: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
static const char * const rsxx_card_state_to_str(unsigned int state)

Fixes: f37912039eb0 ("block: IBM RamSan 70/80 trivial changes.")
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/block/rsxx/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/rsxx/core.c b/drivers/block/rsxx/core.c
index 5ac1881396af..813b0a554d4a 100644
--- a/drivers/block/rsxx/core.c
+++ b/drivers/block/rsxx/core.c
@@ -392,7 +392,7 @@ static irqreturn_t rsxx_isr(int irq, void *pdata)
 }
 
 /*----------------- Card Event Handler -------------------*/
-static const char * const rsxx_card_state_to_str(unsigned int state)
+static const char *rsxx_card_state_to_str(unsigned int state)
 {
 	static const char * const state_strings[] = {
 		"Unknown", "Shutdown", "Starting", "Formatting",
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323215753.281668-1-arnd%40kernel.org.
