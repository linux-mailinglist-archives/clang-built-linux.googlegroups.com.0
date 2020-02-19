Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBC77WLZAKGQEH3DZLMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 34006163C2F
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:54:37 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id r62sf15432805ior.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:54:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582088076; cv=pass;
        d=google.com; s=arc-20160816;
        b=T1ZsEOaZ7sMQ7mBFu7l2v6KoGEdl5QSTqqufkdAnALxXhYDHKMC/JW72zXXpsWDQz0
         qdjDQ+u9Cg3a4GAuP9zefYbRbrYXPCLg1b/VD++bfwTkKN2F/u9ctdDvowmRupbH+vIx
         C6TL2xITmAKCkBbtH1dr6pLOyqwZ5l0Bcs5zGjLmnQqd9tOsPZFDP4uil01GihafzEEv
         clEDm0ylqP1eR/afj7ZTB9DFTtjp3wFXrrWKUyig3Q6J1SvYeYulJZK+m5HD1h4bsWoT
         5iayWWzBLGiEv3I0EKucZtIzGXbQ/qSeduxIyzNy70mu+8jmunMxCp4nHHrQj7W4c8hG
         y/JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=yOyDy3NYrG4cjTLcBllJMIMCAg96LMXWbVW5lz/GV2c=;
        b=vNXr4Pfyh4+vxnK2qMNePBVLLCtKQb0TX/NrT8Bv7nMAGFMaufwYwuKqgZ5WYbpfWX
         rm6uZCh/r9zxaC7ETvRmyWEc19AF49G5BD8OER9C1BfTxKvXZKvLeW8K6GfSmh3TM8pt
         /CI7pzDkqGBgIQ6czJiV+c5Bq4pEGm0IkLsD4eNfFkuvYDixHQgyRmdtw31mAPyOytUz
         dbvD8xQv1QWFShyqDjl998eLGtgN4nIUUlv6x7gmYu0fgQLd+zTQvh0ctUn7f2Daqqfs
         aq1PDoLueD3NSbkowZvjdRWFczMXhx3nJm106aEhKvkSPVOswcMjjdwmWQvegfGY0FcY
         v4Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CGR/0y06";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yOyDy3NYrG4cjTLcBllJMIMCAg96LMXWbVW5lz/GV2c=;
        b=guY6pG6+a/swx0/HrGTnVVF9x7h3pWF9n1XdO6czUeiNP5I9N9KTnu0j2jUr18CP4/
         Hs2DZGvwwCawAzcMxwdou6sgh3OlnTacFaPmqknAnRa+oyyJLqCjERY7NpBemCBCR1CR
         RToO4N2AIH73fM78LvK7T0ka2OSQOYJBXzqVWtbY8Op4Jxkl2pIXeJOQIgsBOCQ/rGTl
         50/vH45SzTjpmieQ1U17EhDz0iAYktIbk1ccekQlYZ7oWMuF7D6Ea7cAfyt7Tlu2AHbo
         EjwxR96VnXTX1r1DAmYpz0kYCyuewD4FBnOuHP6R4VoUbYCuJnOD7pqJJk0KU4IkGnv0
         cOzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yOyDy3NYrG4cjTLcBllJMIMCAg96LMXWbVW5lz/GV2c=;
        b=VfdpaISrDPvDr3s0e/U4/4t4CUbWFEGVlp6KYWbcKzWwp0A3RD33AYr79tSl/Khr2o
         uTcCk/hc8mL1hJEF1l6NQ7AZAmt/oc0+JUDJfYen86NV1GlzAgUeG8vxPdp3Rh6NfrZV
         k8Z09w01nGBk304aGSn1ck7Cv4KFflsKShxBrop1Gv7HO6teL44Nl3kWY+GnzromV2zY
         7REiolBI+D09eUOuBI9M2nIEuV/Ro6vgYQfgJHpt0ckvlfNCGfuVfP3PHzv8WF/O7Fcj
         1j5H383hvMXb6E8cPdXKOvefia4eRZiXU1ILZPDm4vboLFzFv+E9kSy0TOUeyzzERKvv
         Hppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yOyDy3NYrG4cjTLcBllJMIMCAg96LMXWbVW5lz/GV2c=;
        b=CCTtW8zOQPyN8CodCqnv/sJCoSjPwpTCjVdPdvOKtS87ScyOWm7HyzEZChyGbrRgak
         4S7RzGfagOs3y8+2KOQbkvCqDyHmTbeNSZcQeyVPFev+ynELRzRoECKZRaUAoRntuyyc
         X9SYJTlA61sHnx0gXpofMr3UU4gucvTeOJutP+d9nFxkhGkVpgj6FtbRSCP8xeGB1O0n
         q+g6bky0AmdIjXHuv1/bzhLYlvOiu2dJbh8YfIvq0LL0QWNPajbYE3KEcjVuYT2Am0ei
         aBws6lusZpuzo7e3mBeQIJps3yviKZIqCq+CoE8Y9vyBBN6T8o5jzFm+Qtt92S3+aLs9
         IUeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV69V9y62luX4wue8SDnuNP3MGwPCVl/UE8NR4U8ADXSvZpOWQB
	CzihfmrNlzDZ6Tm41zqyDtM=
X-Google-Smtp-Source: APXvYqw7xbq45xwQ8lD+xXdoeRObPXN2Sxqw9c575+QqAt08B7IkCMGrgiPUliNXSVE+T+OkP1fODA==
X-Received: by 2002:a92:9c52:: with SMTP id h79mr21381972ili.213.1582088075813;
        Tue, 18 Feb 2020 20:54:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8616:: with SMTP id f22ls3306444iol.9.gmail; Tue, 18 Feb
 2020 20:54:35 -0800 (PST)
X-Received: by 2002:a05:6602:2501:: with SMTP id i1mr18894634ioe.231.1582088075494;
        Tue, 18 Feb 2020 20:54:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582088075; cv=none;
        d=google.com; s=arc-20160816;
        b=T/jzRypdhS4a+y0wQXqEivQW+gX90dGwE+7bGSEGPadlfLoXNlpMFpfrWsaQo6hk/Z
         U9fXQ4Ba3GeuOG0RgY3NZ7p5PXYhcT4YG2A1f60pxnZUZCo4xbKxhmcO9jnoLUahW5/S
         ri6d/hrvYA1ydLeTFIgOpJq9Y8mLvPCKYp+zj1+DG7o0ArDC13R4MyOpz4UmyjQ8o7kH
         lQ/2zshDx3+uOHyjciY225GDFUnV9SF3WqZe9cXHrMW52IzASIX3Ou2UaAdEAgwz7aWq
         +3pGIpeUqhHv/uqDS9gWVzuwVFNzJ2m65MQh4atQ111GIVvtOT1zq6B0QfAsdoDUlFcn
         bvaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5UFOi8jLMJhZKfbS1bLXcN2MTOzPVzspy8Ufb+K/+9A=;
        b=eORe61iBkjWNoBccjxWGie/mZeaCpMqasnSGbAKMbp+BsfhFN/fxzIITv0EMHcfIL0
         UdlPXVSmlbdOQiA9wXsVTYk2KlJGyxRV2QjYfi08NBRaZnoY0oCwb6enxA8BNTS/1D3f
         wRYgEAi6jE0tCfQ3ycnLeyhkEPHl50V0lbAiiz/7gRCq0EPw4AwJwennRkmzYh3N8PFa
         2Cm7pHI9dnsqv5bs7z7KIDzYwf8BgqU2X8FsaWCLlnw0gukv8iliZxm+B+HibZBXk0YP
         2D6Tx6l6nuvMGES/Epy2epzaIYusiIUpYj+He11NDNjNALiBjlBOduPBVEbS6ySxk+GB
         te5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CGR/0y06";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id k9si61141ili.4.2020.02.18.20.54.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 20:54:35 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 59so21919777otp.12
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 20:54:35 -0800 (PST)
X-Received: by 2002:a9d:7dc9:: with SMTP id k9mr18133478otn.117.1582088075110;
        Tue, 18 Feb 2020 20:54:35 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm288894otn.81.2020.02.18.20.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 4/6] dynamic_debug: Wrap section comparison in dynamic_debug_init with COMPARE_SECTIONS
Date: Tue, 18 Feb 2020 21:54:21 -0700
Message-Id: <20200219045423.54190-5-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200219045423.54190-1-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="CGR/0y06";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../lib/dynamic_debug.c:1016:24: warning: array comparison always
evaluates to false [-Wtautological-compare]
        if (__start___verbose == __stop___verbose) {
                              ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index aae17d9522e5..c7350aa6e853 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1031,7 +1031,7 @@ static int __init dynamic_debug_init(void)
 	int n = 0, entries = 0, modct = 0;
 	int verbose_bytes = 0;
 
-	if (__start___verbose == __stop___verbose) {
+	if (COMPARE_SECTIONS(__start___verbose, ==, __stop___verbose)) {
 		pr_warn("_ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\n");
 		return 1;
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219045423.54190-5-natechancellor%40gmail.com.
