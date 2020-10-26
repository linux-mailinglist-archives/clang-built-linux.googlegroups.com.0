Return-Path: <clang-built-linux+bncBAABBCMA3X6AKGQEBF6OLRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6062998C5
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:30:50 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id e1sf4098832otb.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:30:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603747849; cv=pass;
        d=google.com; s=arc-20160816;
        b=fhaeP/tUufRiiJrPirmKiNPz4dqyNibsU6cuF6VCPvVbo0scvj6fdjxMggoya6dFo7
         0161H3oktdy6jcV7V0FkhcW8vmTHriNkoLWSW9PxGxMce/Neb0x4pWzZiOQK8nCvxB1X
         ICew9zlDuD7PpOP3wjCnOhTvr6KeBAjnVrMTF60mMuA/uLk0QQ1fFxpgSNrcTf3wBIDK
         YgV/dFfhjP+20TyqCa0aRt724CqwMyODgxuWu9yFGITmWO6/CLWINGSOWIDHUhSs/IHt
         3RXtme6Uj5vsYl+1IS3fQANZ3F+SV0zpZ2afNVrFv4Am6Mk6VeAmcfZmZMrZZE2UB7do
         1S1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LfgCU32pJU9oOgl+U8eEj1Z8pzHct0zXwcdVv2WKOEs=;
        b=TKcQzhoiaNYlJgA8xFhr6pSBdCK43K1Oa0DuO6nPV9NMkd0t/LWau7qjUtP7h+lZhx
         8slhYtVlxaINpnZa3c2b25s3d5ZUki/mQQfpgHqgg9HjzWTGsN7L12QDg+3Yjrtj1FlP
         t8JSO3MwkHqJBbGNu345TJmctFgvYyAOePJj6o/WueStbXo5WXhJjBmXMw2/kWeMBvSc
         WHICZ7bx6kGFMv9FVv2GHBo6uEk0j5ZK7u/9LRwteSbkL7iGE8CgNlUU/6TpcGQPCpw6
         OmHaYsqCt0VdxnDPRpIZYjQCZxvNKLNpqeLrnaGe1QlT+D80+2YeneMZmFuxMdZAXvN+
         TVUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AmkM87HX;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LfgCU32pJU9oOgl+U8eEj1Z8pzHct0zXwcdVv2WKOEs=;
        b=STN+3YGef5wAEjDuBusu5+CkX1B/5Adzty0iHqHWddoKAcMUUtoKIBxtPaZE/vceJp
         CEn0Sz4cPSYQeiy+U3hjIkDJkeurdA/jxgb2FO2E50G64POONfx6JHNBVbvlI9n2dxEr
         CtdHT/DKFL5aW7j3iC/0Mtlop2MdDdBgdAy623fFSQrAP/fAyvhXWkyZNv+uXAg95gtW
         EBIDy/HSUBa8Z4mwhJiCtEM3BOsKMV7ZBp4DzBR5x31cb6Gzf5b6VjaekpD0LjwVUMVn
         i9sfmW1khttdxqP1HE5T2RUfFWd8h5j1S1YUUtYIwZJIjHueYOO4XNTzwtpldSParbei
         d+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LfgCU32pJU9oOgl+U8eEj1Z8pzHct0zXwcdVv2WKOEs=;
        b=EeAWHIO2QLbWZf/lYuY7EWzu8NiYejn6fUXyDS/rZBy9iKxlwCJX8ija8ti/2qv/+m
         ibVg0fe3M5tuqbkQ+YedjphviGmRk/8q/Yy159eroZ+Zc3ejHSaDMlET4vfvUFtwYx+9
         tdchb7CAwZXb7kZ1Ql/shl0uEfa2Usm5/8JrsFK9pQXdzQ+Qpyj0VYe+RSUm96FczI4k
         lE9ZklGM4xP0BunfFl5NmAuLQ/reeA1yVXBveqD/TPf3Vtij7SlW8JPbrgMALVSQDQXU
         /wQOCoVQgMQt+qMVF4hCGzlAcb39ykxP/U24iI4xPP05/jRurOqCQAdIdeiUQE90/ZxI
         /HAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531W8RCm9dPuDyKB4aY0FaT5txVflvKUxgtXcp8CJw59HR8pxG36
	/+/XinUJwS4bG7mLgoorU5s=
X-Google-Smtp-Source: ABdhPJwmyJ1ke3c7HV+CmloZ0XyEy8XWQ+FrkcNt592p0MwVEljcQwiFkZEC0nfTQTg8lZQCK8dAJg==
X-Received: by 2002:aca:1706:: with SMTP id j6mr1623145oii.82.1603747849149;
        Mon, 26 Oct 2020 14:30:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:13d8:: with SMTP id e24ls1476406otq.11.gmail; Mon,
 26 Oct 2020 14:30:48 -0700 (PDT)
X-Received: by 2002:a05:6830:1651:: with SMTP id h17mr16994120otr.23.1603747848715;
        Mon, 26 Oct 2020 14:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603747848; cv=none;
        d=google.com; s=arc-20160816;
        b=Yyj0OlEaIcSdTpRXLlUa+TukM7SNfQF19hILGQHTCvUi3pzEYQ4gOMB8+hoHJmUrda
         Jve1+0Sd5UOx/jLqDQsm1o6NjfaY7c8W+lgxA8MQcMloxqGrWyLr8sKj24TI4MpF2db0
         35UGWyoi433KhqLmBNrsW51P5+hTxmx3D92oP/F2J5/XfGoQp/ArLpbSfou2oor4lBI8
         mBDJ3SQgUfVUaTYXekdkXnPp19tVurBPoq8WTIm+wg0zAS/1mtC0xClR2Gfcxs090nFL
         6uB0OiARwtQdQjnph0AOBj6hYFPqH9X8bZfl5yWCBhBXUkDyfwz5v0ZjArzl9L67hVbK
         rDlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=q8JPbSC2ByL5rU4JiWR6zQVAbrLOu0gLWfMzC1oWubw=;
        b=fJeoWDQ7UqPIW4kdoBFfDY6nkpagJn+eJPdgSqI0Sn2qlW+LTidiBRyyYBn9PRSSYN
         hdktFGHsCJuVaceyxA5MVIOMQGkUGH9D5eeth7JG1SKFdwphMDZhV35xxZZJyJ8X5aZ5
         dxvDlaLmGnsr5i4cO/4LOEr2OipKxu2H2FON6TgxOVS36ThLRpKeAopZuImxZ0IAIUsC
         Y7aQI0alUVrPeuvklCvcpNTmJCc4mpDHe3ZY40ZENZdFUwmJVL7PWPF/YWy0RoBUpAfE
         PjNBg55l7WmyuPLgkZHVjTnH84LiHbx+t4ju9Wsm7lyWFFTpdXUXMNgbvC7adKzEcNkH
         BTPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AmkM87HX;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si603701oih.1.2020.10.26.14.30.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:30:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 89612207F7;
	Mon, 26 Oct 2020 21:30:45 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Chas Williams <3chas3@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	linux-atm-general@lists.sourceforge.net,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next 01/11] atm: horizon: shut up clang null pointer arithmetic warning
Date: Mon, 26 Oct 2020 22:29:48 +0100
Message-Id: <20201026213040.3889546-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AmkM87HX;       spf=pass
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

Building a "W=1" kernel with clang produces a warning about
suspicous pointer arithmetic:

drivers/atm/horizon.c:1844:52: warning: performing pointer arithmetic
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
  for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)

The way that the addresses are handled is very obscure, and
rewriting it to be more conventional seems fairly pointless, given
that this driver probably has no users.
Shut up this warning by adding a cast to uintptr_t.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/atm/horizon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/atm/horizon.c b/drivers/atm/horizon.c
index 4f2951cbe69c..cd368786b216 100644
--- a/drivers/atm/horizon.c
+++ b/drivers/atm/horizon.c
@@ -1841,7 +1841,7 @@ static int hrz_init(hrz_dev *dev)
   
   printk (" clearing memory");
   
-  for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
+  for (mem = (HDW *) memmap; mem < (HDW *) ((uintptr_t)memmap + 1); ++mem)
     wr_mem (dev, mem, 0);
   
   printk (" tx channels");
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026213040.3889546-1-arnd%40kernel.org.
