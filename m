Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB3UVZOCAMGQEVTQYUIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B75374105
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:42:23 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id v3-20020a056e0213c3b029016165a33c15sf2062645ilj.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:42:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620232942; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8A3xypbznuYfhOnhIU+Uh4OBMSR6GFQ2CDQV/a1pccnbmpDxkKoVrJOjtRGVKRNEL
         Vxo347PQZGiTOuW+MD1ZXM4bBhpADEL6HU1/cw4N3ME6clE8BFhWbqVO8J757UzyOyGx
         8xBDLs0APaCT4Y7xzGFzCRNMOd1kFA+7nQkk05x3e+2I6Si5x4WcJpufMdyYlW/BAlMn
         w3aA6E2vp1YDrb1wKSeUm47oRwOU2Sm308ulrnuXj0qiLbztfw1EVcWJHx2KA+1qoVcU
         5YVv6548/oFsFXApy6SGE0D0mypkixke6VG3GP4axYOE7hn4EPPaMUpJworCnjrJarqL
         2IyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nyOumRP6LxJtIkoZrY4g3FzPcDGVfyIyGisKfC4A3tw=;
        b=atYaiwJQiNaD8Ocu/0LMyCG9gFRX25IGeRbG4Tsx361VR7Vuq1esM/7NA7dEEsU1T+
         /fz7APTGZI2oh+zgnwpdoN/9Ta2SwuLSuMqmFL8YoXYU+D4ZcRhkLB4uchOClipxDpPh
         jj2YFHpmgvzlQbnCikhSsTRQsr/EW5czmmIuuoO+1gYSRaNgRApSS4Nid2qixYQ9Uk2s
         9KnuvZNP5BvHt6/Hc6sEGtg9MhTTFqZg5h5FKodairD+iYeP4V5Swtk3CD7Hc+7H9hrL
         XSk5K/cW+o2egTUtEco0bBqiz+mqemZ3Y63baAJ6IiuItYgZXeET8C6BRrHGHRnFF89E
         iUZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JJglDrdB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nyOumRP6LxJtIkoZrY4g3FzPcDGVfyIyGisKfC4A3tw=;
        b=HQY/MfZiZXp6ZK6POQ1uLyKj20h0oNBECYREGfREvfuTp6fOzv7EhEny8IaHz57fCA
         R68KyRSuhhLwnHoHfwDFG1UT3CwhuNF1qqsRJ3s3p5De/NlqvaXljsNb0ieNAbxKWvze
         F3dGE7PiDQHZq5YKw3YCngO9HiTQkMDyj7m9wa2M/yjLwOR1hTWxtvkgTohoQjBJxh+g
         vWNxoOTPUMPmT/eOhAQ96YEQYOs2Sp7oWFs/rmQ1ZFcfZ4wKvaWVghdcsUmciuoXOHBK
         NxlIWUX+8OJM/LmcLYuWTT+/E5uRoVaRL8Idzo0GCuK1TnH+VKDwXUpvKMHmeGyaZ4+8
         ipWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nyOumRP6LxJtIkoZrY4g3FzPcDGVfyIyGisKfC4A3tw=;
        b=e+XWgAk9qrIsCFbzQAamJQXosU7vRHCibzIubn/3QcR2oeaV6kAMNkCaa5vkEIJw89
         IHeQYDxZG8ltOZA7MXQf/952RaEy+IK7G+B8KDPiIT/G89ikuHBjzJrBrQNZK/lR04SF
         /pZSjBpk78W7EVzJpUI67o4oofBYAX7gPXOgL3ShhyiVuKntOCo5eHGCM3q5fspaTi3j
         HSfMd1HmyPvS1CI78UBe6LtZ1cFeNc8YBNT7N08BXuPuX6YRzJsgkM9mCZUYEY5rApF8
         DeDtcaj+eU2blwmno8bz60H2OzWoPvUllDxATTtKidQgVKo0ccRy9KQEVa9s4Dzt37R0
         uPzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LMD4Z4e1rU7fFc83ns8Ln6znLL802OzsB2rSEGXz+yeFgi89S
	j8q0FfMDiRMWW4ChRt7x+Wg=
X-Google-Smtp-Source: ABdhPJxV4Yub0eAMWRBguEMJl8IbqUQKuDYO9JlkUf3cXDLFeBiVl0MKFts8DswbC7qorVFKXp4Vpg==
X-Received: by 2002:a92:dc44:: with SMTP id x4mr26458178ilq.209.1620232942341;
        Wed, 05 May 2021 09:42:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:924:: with SMTP id o4ls5040747ilt.9.gmail; Wed, 05
 May 2021 09:42:21 -0700 (PDT)
X-Received: by 2002:a92:ca06:: with SMTP id j6mr27557776ils.234.1620232941704;
        Wed, 05 May 2021 09:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620232941; cv=none;
        d=google.com; s=arc-20160816;
        b=ZizyxFYYFI/TLRJvXjXXOi39Adm2HMCcxabmxgbKjlRo3rdp2rULVNjTR01Tcp0m+L
         iXXTAIs56mPkdbZRGcTNLf7GIrkNzSeQXE8ar7yJCWEMH8GU4Dcl6zHdTmAIGrQcm1pC
         lK51gBmDSpdwiG0KPbzut+GO69S0kM1h2iXOF0dRhRn5Sfz6iMFtsRTuuUB8BBQ7kWoN
         NLQjB4SHmG0qHseE0S+21cyb1R8ywijxxIBsdS8bWLYeXdP+DhRzbV3mLIqcGeGEsbY8
         m31hcYn82zacDsUIPssj0m6vBX7aavZXnOFSycTUECk21hdvLRvsJT2EkH3MFY8n5WHz
         8GGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M5GQ+h2+DlXOV3zEFFcOQesmJRDZC8wCph6xEvWcGz4=;
        b=D07SU1qs0DrzwB+H1F0qcsN7XN01rHtDbI3o9MelBieJJs7KBGNwGHhE03OL1whsPj
         q1GCD9+1Znkj6XLwIjVhGagyDMo7BJeX/kaqEA2Ud4iX952VZnLf7Jx/TrkQB5McxKOa
         Jf7wyLOs5qS8VHJ4mf+jW/jFzFiaV5aD51eUu39KhoLrVL6NlHHq4rf2vwTM2VUNqIBy
         bviM4f91rhjwZ0Rpi03hVAtdm+oVRRrH5lST1QOpd7q2oNAqgrw5NAQoebvhMrXs3h9h
         iNUw1liF/ZR8OfIa6jg6OYFrr6P3TwGUz+g2iVeo5nxyCSZZR1W3bHZyJeR1DBqS5cfV
         VlFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JJglDrdB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m11si75954iov.0.2021.05.05.09.42.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC81961404;
	Wed,  5 May 2021 16:42:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 13/19] selftests: Set CC to clang in lib.mk if LLVM is set
Date: Wed,  5 May 2021 12:41:56 -0400
Message-Id: <20210505164203.3464510-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505164203.3464510-1-sashal@kernel.org>
References: <20210505164203.3464510-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JJglDrdB;       spf=pass
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

From: Yonghong Song <yhs@fb.com>

[ Upstream commit 26e6dd1072763cd5696b75994c03982dde952ad9 ]

selftests/bpf/Makefile includes lib.mk. With the following command
  make -j60 LLVM=1 LLVM_IAS=1  <=== compile kernel
  make -j60 -C tools/testing/selftests/bpf LLVM=1 LLVM_IAS=1 V=1
some files are still compiled with gcc. This patch
fixed lib.mk issue which sets CC to gcc in all cases.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20210413153413.3027426-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/lib.mk | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/lib.mk b/tools/testing/selftests/lib.mk
index 50a93f5f13d6..d8fa6c72b7ca 100644
--- a/tools/testing/selftests/lib.mk
+++ b/tools/testing/selftests/lib.mk
@@ -1,6 +1,10 @@
 # This mimics the top-level Makefile. We do it explicitly here so that this
 # Makefile can operate with or without the kbuild infrastructure.
+ifneq ($(LLVM),)
+CC := clang
+else
 CC := $(CROSS_COMPILE)gcc
+endif
 
 define RUN_TESTS
 	@for TEST in $(TEST_PROGS); do \
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505164203.3464510-13-sashal%40kernel.org.
