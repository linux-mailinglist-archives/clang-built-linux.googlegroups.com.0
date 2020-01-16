Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQ57QLYQKGQEJ6MTIXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DEF13E99E
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:39:17 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id a73sf13547474qkg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:39:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196356; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHqS8kwEucUssd0gWFoBAWgCQGhUjDi1LO6QuGRz5SuwM+kPP8pVk48PghR8hOIQoQ
         a/C+AJZHsNDDJA1Agf21LbxBhADYxWB0r5JfMyefyjn/HugKJzyhlPiNRYtVTGdqhDIM
         koNVVWos3nYbHnvZ3Fccr/rIlCKtMr/nwvELGaVucRb4waabWQbDjryIbFDsNcinuOPz
         vydfr84xZ2NksnZ/hT3FVDeyf9lnP1p7+B0ii/pGHOMvQ89Ntfd5u7T2rTRTYXaYK6q2
         Em16XqHxj2VT0wqt50vbOwbnp3TdPnmkI5pFejlB6MvX5GH9a3bVbJijduVEad2CDDez
         oYow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5LD+fUho4InVfrKKZRVDzqt+NhR44o7r91oumzJssjI=;
        b=uLogtIjBCN69MlfxgvT0ykKnI5iAxTZVxi4LKfOeENZd3vGn4D1M25ve3QeoCZz3BL
         yL6VnBGEepA7dQVEbGn4dgN32FFR/uOrn67nRbiEjzKInHXrZW5WBEt/qkd9r2BqHN9t
         7FBCq9SWLmFCpKmkY8M3no543OA7JqKDsmqXEoxU+ZYYxKcfaRg8H+w/YIY4WWYL8z9t
         wvJVcq+uguABNdV/+VtVs3yk2xc36EritgTwc4ywIqF/793u0OyxHqbyjIaNe4KEdpu2
         phNcAB4SHKAz4Tp2v8i9WAwcvOO4jb/EslID1pxP+Lzxg/sSHtzfeyqIPuXdWkiWXHqa
         5tJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WS7slYZZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LD+fUho4InVfrKKZRVDzqt+NhR44o7r91oumzJssjI=;
        b=fhH46J5GqhzG9iL7Hhx6Nbve/Jz8TA2+T3Hi+LM6wnwXRvyna3uF1PplmGDuvIL/9L
         91UTWBJdhM7vsWxoEhLjVK/UmmonmymWV8VAnkBRGeIw+uhAbVZw3SZGQgVUz03sns1H
         +zZlfXcwtvqYq3X3TPWWFBvc3Lqv/0JKkPtzDFAAwJUAj98P4tUQdRLpQdg/Vxeex5Kq
         stEPb48s5pWAtuA1lxHx7ZxSFcRR/bL7nlLLytytlT4ZGwyzL2fSfLtdnm7nMR+4H5oK
         /PRiNjLzCc70miIHMBfh4AIea7Wy009jkG7fyaKhV9ZmkJFKXec72CDUJ5VAr9wuP+l/
         eSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LD+fUho4InVfrKKZRVDzqt+NhR44o7r91oumzJssjI=;
        b=mlHM0sswP9ULcWzSH6dRlD6CWxmYeXtIxsGfeoIWDwmom42yd9IZp7JA+wENaGvhiN
         YN6i4AfPqjrQ6uG/P/XNiTUrMZcuzlCkGBbYpuaOrTsOHbM9dn3HL1JkUfCLgiuwpxp7
         VcMfHd1SmH3TTFPCbB1DqXyXQFOpK3AT9OsGzoaUTkc8e1PM+TcNdPPQYxgI7ugm99Tv
         7F90j72t7/Gq6Xb+IFO3F2PERFbWNWKFdowuLsW5GHy/fcOe9Rxvkf27g/pq2m4vqjxp
         TrQ7cs5JBlTgFIuS1AJ+yoLEhc62EhrQtj4KfwTzbg9GE+cPPdL5w3Lr4ZxYZSBlzJQK
         /lEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVraYojrRevmYs6GLJDdCMHn/f8G3CCizL+rutElPpXMAbSrcrZ
	QZUv1fdd8y9c9FCMn5lcGPg=
X-Google-Smtp-Source: APXvYqwkFchZV3k+7FjrSQV16OHTm1ZZufI1FCMgrcklhNT2jObcryrRWVEOJtTFVPqTBr2863yqXw==
X-Received: by 2002:a0c:d60e:: with SMTP id c14mr3730039qvj.76.1579196356047;
        Thu, 16 Jan 2020 09:39:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1b8d:: with SMTP id z13ls4379513qtj.16.gmail; Thu, 16
 Jan 2020 09:39:15 -0800 (PST)
X-Received: by 2002:ac8:12c8:: with SMTP id b8mr3641746qtj.111.1579196355715;
        Thu, 16 Jan 2020 09:39:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196355; cv=none;
        d=google.com; s=arc-20160816;
        b=B2UDc9nWDC3uRVg50SdMwzIJblUK1yFF8YjvMqO+G8HppnuCwiwxue3K+bw5KYdvWD
         hiTkaoQIqkke4MHTalzs08XYkPbRpSbpykmas7WIXAlRoS4nlSyxRhqdum8NylAph8pp
         y6bN7BhIvFnyxtgf9vIzzZiTlybaoj4eFUFkLc6ogHzogVFptKhnFUkIoubxdxCPvHa8
         /BXN9vBO2/oqRVjtJiUzcv0f1jdxdtN2E72TE4J/6DGC9aKR83+wIl9v9ETealH++TFa
         UViiznCf7sWiYNL1G9dkfBoe/ljT4vhXTv9r6gDHdFVOXOcChEvqQNVv5ZUddGLkQlqr
         EEBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SCcxqX8/IvYiB6gZdZT4NkGsdrTozojdpMQ8pa/uZAE=;
        b=ry9yl+WXNuZzeWWFmauVtoUgEPFJ+/QThkFGjyoRyQYG9sBNOTiuhjZJzT2YHpXgHC
         Z2XKr6RIFg5Id9B5dAVM4DiCX0sNRNLzVpIiAgNI7kPyQsxgYK9zZ0fVHKZzSaYTzw0v
         8vpFExA8U3I3L4AAb/jUFUEe5DPXWh2W7NqURdqCgENqZDXzk8WtMu0XDg3lO8MCa+um
         0+sNyvPXg9cfYeRGxJeQUtMcPyZJau7HOZIEL/zWFTo4Am4wv7I70kWTPyroYcn71+K+
         cwqILCmlk/fjKvfFu6ckaHIZW0ARuhWnSUp6rG2vTo1XALIJLLkwxDz+PNSDfgWKPUaJ
         gjDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WS7slYZZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i53si1084715qte.2.2020.01.16.09.39.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:39:15 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A504B24706;
	Thu, 16 Jan 2020 17:39:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Stephen Hines <srhines@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 147/251] misc: sgi-xp: Properly initialize buf in xpc_get_rsvd_page_pa
Date: Thu, 16 Jan 2020 12:34:56 -0500
Message-Id: <20200116173641.22137-107-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WS7slYZZ;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit b0576f9ecb5c51e9932531d23c447b2739261841 ]

Clang warns:

drivers/misc/sgi-xp/xpc_partition.c:73:14: warning: variable 'buf' is
uninitialized when used within its own initialization [-Wuninitialized]
        void *buf = buf;
              ~~~   ^~~
1 warning generated.

Arnd's explanation during review:

  /*
   * Returns the physical address of the partition's reserved page through
   * an iterative number of calls.
   *
   * On first call, 'cookie' and 'len' should be set to 0, and 'addr'
   * set to the nasid of the partition whose reserved page's address is
   * being sought.
   * On subsequent calls, pass the values, that were passed back on the
   * previous call.
   *
   * While the return status equals SALRET_MORE_PASSES, keep calling
   * this function after first copying 'len' bytes starting at 'addr'
   * into 'buf'. Once the return status equals SALRET_OK, 'addr' will
   * be the physical address of the partition's reserved page. If the
   * return status equals neither of these, an error as occurred.
   */
  static inline s64
  sn_partition_reserved_page_pa(u64 buf, u64 *cookie, u64 *addr, u64 *len)

  so *len is set to zero on the first call and tells the bios how many
  bytes are accessible at 'buf', and it does get updated by the BIOS to
  tell us how many bytes it needs, and then we allocate that and try again.

Fixes: 279290294662 ("[IA64-SGI] cleanup the way XPC locates the reserved page")
Link: https://github.com/ClangBuiltLinux/linux/issues/466
Suggested-by: Stephen Hines <srhines@google.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/misc/sgi-xp/xpc_partition.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/sgi-xp/xpc_partition.c b/drivers/misc/sgi-xp/xpc_partition.c
index 6956f7e7d439..ca5f0102daef 100644
--- a/drivers/misc/sgi-xp/xpc_partition.c
+++ b/drivers/misc/sgi-xp/xpc_partition.c
@@ -70,7 +70,7 @@ xpc_get_rsvd_page_pa(int nasid)
 	unsigned long rp_pa = nasid;	/* seed with nasid */
 	size_t len = 0;
 	size_t buf_len = 0;
-	void *buf = buf;
+	void *buf = NULL;
 	void *buf_base = NULL;
 	enum xp_retval (*get_partition_rsvd_page_pa)
 		(void *, u64 *, unsigned long *, size_t *) =
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-107-sashal%40kernel.org.
