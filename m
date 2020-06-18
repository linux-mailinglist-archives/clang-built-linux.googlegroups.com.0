Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBS4HVP3QKGQEDBKOAVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFE11FDE17
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:30:52 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id q5sf1918443ook.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:30:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443851; cv=pass;
        d=google.com; s=arc-20160816;
        b=tOdWqcBri12xnz++/nAhsVllsJzdRcCRpFUozWrzkcEBJYbPbR0ftPTWXob5hrS5Oe
         0ZJ2QJPUWNoD9E9Ai3QHoM+A3FNm4aFz3430gkRuDcrEddS+P5p4Cduf/ev+n1arZY0v
         QSXIDFRYR1+easw7KnNavECDENy7xa+2y3d6hBk6L6XeiR4WqBuQm+BkZmr/4wrVHs2f
         Csya2Aqi/KqSg79efVRVDM/n3NWv+EK0sG2ksUks8+TVfzNne4E8PhS7WkMrhHndnKkD
         NTaTbDfyEYgmYqu2JfrlGaiIBVRjM9sLZ3FKGRQhr6Y8eHhWV+VABIyQIwgYL27JppH7
         6fMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hmjhut89+VTJXS57dB9yp2g+3do03h6T/+WzqpN0Mgs=;
        b=DvMidsJBrFRbIE8qNUvPGI/aGnVmQ+UZu8sMKZ5oFB78/mmIFvoll6uvACOH+O7L7J
         7YrJJ9shR6SfVTVKGkd8mnuL6druSFcP3BFy71usrvNFdcl3vgXRe2PGpGKGACZzysKW
         y9co3Eg4DuDYQXyR0W6n5oAdwFz+aPJ7AGyHRouvJ/+Nkw6CzvbXBSal4sGMg4mGWSDU
         gkbzEeiOnNZG79AUk5Cpb2mE2xtFaOf4RwSSiqYypgaFZ5T0AOJpQv7n5s2fJVgu4UO3
         YOU+l9HxlxwkgifysiUuc4wEd2dz7k1zeHv6dQU8zs90HvwP88ittLcWv0cjREgYx87v
         gbwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IIwLNFPL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hmjhut89+VTJXS57dB9yp2g+3do03h6T/+WzqpN0Mgs=;
        b=ZPlBgCfdbr57/6QGLPSDsN+sL2DGt0wLZI+C/MzxSUvFvlRGTtPFSW8tzqLfP5a49C
         rsjxGv3MIotVDgFKsVvwivWExskmehBSDcpqTdME24gzj16BPEZD8pSIoJ5LkYmQ73/x
         5s1qyLcPAFT2Dc4a3WCsa/ASjR1jhiRoDv4VVv4UIX9Qo0wh8CjiFl35zHWmnd5F9Mh6
         UFL8LtOngWn/WXoI44y1j0E5GPIYwDeWax+NzL8VUjFqx8UaKX3+djfp4uu6eBtl8oJ5
         vzP0B7rgBGfMQEI4iI2/6q3OPgVVl+LCrcyikW7BzC+0SkiBYsJIykkvN6QCCUCJyNU5
         Z1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hmjhut89+VTJXS57dB9yp2g+3do03h6T/+WzqpN0Mgs=;
        b=ISgBuDs03Vq7zJ1TdMPfS5ZrnSRY3iSYF+ZNtfjBjzT0HjjhSR5OgLqXLi2f3QWNJP
         ECOW+e/m1T0CxY87XjlbwT2IR7pdZNzgbx9Qu+//uXxmpFjhkz4BvMp1+Qx71JQwH/Lc
         sE/QI+o+qDPPSabRiRuFNIxR2uoZ4FVh4+vMCw1dcWIr7wA7S4OiIHVXw2s9CyUCf0b+
         GuCVx4OIsFzAME+947S1+7v7dJaij6nTzVmGhMXqBvc1q5jjKcViJs1c6wkBO4bCxwI2
         0Hk6IfmTVue9qSqGo6hHFfrf12hZv9gaUNuYCBQ4A3WCkE38MyJ2xaOySI2bMPrrpd9j
         Z29w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53191BuL+8sq2ARhA0IjjxVKtQoxbRVWAHFPVHLYpcfgpuqONrd1
	eKFTXmZ+FX9dkSBiip9Klks=
X-Google-Smtp-Source: ABdhPJz/9cRjYSBlbFcG/WDp9bP24vZo4MvYvGHwqQZS0AG7MnE43RtJwmJbhraAc2+GXzGE1siabw==
X-Received: by 2002:a9d:604d:: with SMTP id v13mr1442171otj.97.1592443851120;
        Wed, 17 Jun 2020 18:30:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:bd16:: with SMTP id n22ls248423oop.10.gmail; Wed, 17 Jun
 2020 18:30:50 -0700 (PDT)
X-Received: by 2002:a4a:5209:: with SMTP id d9mr2031655oob.28.1592443850777;
        Wed, 17 Jun 2020 18:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443850; cv=none;
        d=google.com; s=arc-20160816;
        b=Y3zCwkiKu5ebUTkjJ2wWQcQrEw5dHgdSm2uDB52DMwTGw3dd9PZnBctZvc6HfNc1FI
         LOlLTLlCRQOCfR0kIQawkGCldaeHtNSQojcNxSFp+6Vfri47SbtuzSWwB1kOdMgfoXV8
         bCIdMnzmTcCl8zrFkz//5Y84F/oDqayhOb8DicWAAiYwjraXLGFY1uENRA0loSBx4mSO
         +QUWwdIqeYXFCCsp29Hp/FLIOmeOYZO7Bjmuv6DIl0oqBR8WHHWJ4zVAoBUD7881AS3O
         ZRW5xEWzYPCgHuh8ynnX20su6bf4DVNecSTgBmjdyZgrF0ULoKHwBjFBX35aQMdQQ0EV
         TW8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IGjaEtt9GJ4K4aYEXrLTSGvQ4eQ9cS5XLXPghSWf+zo=;
        b=yiVJvZSHw0fEmXGkFWjmUPaXsGNUEYh9fIg4socfD6chTNvd0+T92cgGmHVXeQKs+m
         oxWdZF/ZYrKjt5E9rhYBYA9ew6ZR0CMmTzHLTuECTXu+AGdfkmCe43UNzOse3oScjNDZ
         wOfCZqYdy7VCs7Asy0BRcaxtzUqK387m3tu3+cM1Rm9I3jCnh5Wh3KKrxpesstKMcMDg
         7TI6i6cOOPTQ6Ymb34tLNv23LDDntLAWL5PRRFIblEVkL8BioSy5PXwOcg5gCXYJP3+Z
         9dujlXleBz7Q579bqajE4uAezlQnK0wJVKUn+fPX7HgJrdScoH3FGHt4R5vxmBZWjgg+
         7rjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IIwLNFPL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si155277otk.1.2020.06.17.18.30.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3A39620773;
	Thu, 18 Jun 2020 01:30:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	cluster-devel@redhat.com
Subject: [PATCH AUTOSEL 4.4 34/60] dlm: remove BUG() before panic()
Date: Wed, 17 Jun 2020 21:29:38 -0400
Message-Id: <20200618013004.610532-34-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618013004.610532-1-sashal@kernel.org>
References: <20200618013004.610532-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IIwLNFPL;       spf=pass
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

[ Upstream commit fe204591cc9480347af7d2d6029b24a62e449486 ]

Building a kernel with clang sometimes fails with an objtool error in dlm:

fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc

The problem is that BUG() never returns and the compiler knows
that anything after it is unreachable, however the panic still
emits some code that does not get fully eliminated.

Having both BUG() and panic() is really pointless as the BUG()
kills the current process and the subsequent panic() never hits.
In most cases, we probably don't really want either and should
replace the DLM_ASSERT() statements with WARN_ON(), as has
been done for some of them.

Remove the BUG() here so the user at least sees the panic message
and we can reliably build randconfig kernels.

Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David Teigland <teigland@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/dlm/dlm_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
index 5eff6ea3e27f..63e856d90ed0 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -92,7 +92,6 @@ do { \
                __LINE__, __FILE__, #x, jiffies); \
     {do} \
     printk("\n"); \
-    BUG(); \
     panic("DLM:  Record message above and reboot.\n"); \
   } \
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618013004.610532-34-sashal%40kernel.org.
