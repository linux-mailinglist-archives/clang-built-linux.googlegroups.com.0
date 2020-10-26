Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBD6E3X6AKGQEK25ZTGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id E9786299C07
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:56:00 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id b14sf4290188vka.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:56:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756560; cv=pass;
        d=google.com; s=arc-20160816;
        b=SrgGNJjzkbwM12L1K0VFFdeqmLkYMZ0hoRNjKC/ZIfRwyS/96rwu9LpElvJcHzbEcx
         E0KfJY7QVBj6fYLSdiwZWE7SoGjhiRWom9ihZ0yDpAmblys9hPI2Bxi87iVPGRPcg46O
         nrLxtgGvfBVXNHtY9RG4by9YfCzaCkP+MTD9/T4vBVKOvza4nSeAUt4HRKOg5A6gFpv4
         k9yfRKoK6Lhj8kyi3C1a8M/fwwA8fO3A+IGF/01Ek+xXQd1ZicZ+vIpyXK0iLdt/QhD9
         buIwOSVmLiVR89zp5/lPo7OkxN/+NUsnge0xWSl201+ERCN95i0NnqXlqIIwzbZqudk2
         cAkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Z52P+dXAq/DuqikMbASWveFDaNPOdFob6KFvDAp94TA=;
        b=da5RV7S+EOPjIap++FvV2pEAjYyFYgmBJjDbAUhvGc3MQ7CBA1fwXL58C6EZPr93i2
         Qmzd6rG4u8UhfzZ7DPurHfBX1wyc6S5XvTqtiNKM7N0ICzuG8SzoPA0AfrFNXmrfDgrB
         APEVnvS9Nx8a8IQOz09JVjD8PuLtp8+09kLTvZmM8Bbb3LdWWx2v0ieoAAXQcRZreeeB
         RQwxYyu49z26njTBlRpgrm5Dum6dHNfyzZu5VmxOLujHVwc3w3lNCTV8RsFadq98+8ot
         WrMnBZnNLoNhYdnun7wWjDtVq4FPpKmtUx7hMQ87Ds61K2w06ecHMxNlDxqJ0ea9PCIR
         zegg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f95hcGnD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z52P+dXAq/DuqikMbASWveFDaNPOdFob6KFvDAp94TA=;
        b=WHjJRCWQ3SIqt0ENTSf1hv5LfgxwJoVt1gOWlfNkW9SfB7QrhRJ1PkLtcTfvIZacb7
         lQnM6TqbygTT6rCJGjzC8ZQfIzAocQMCBP/2MbzRTAZylD+jWMKBtX1A7vSM4a4jcl3R
         Aure6WsXF+PHxBeL4c8xCXCMS930uTZ78m/SZoWomTmn2jAKBQx5m1f8gEyozDv+Hpmw
         MTeDua2CoFygP7pmezQXojJhQxx/aBvQBgT8Qd87hIyJdTEnA3lNRLbGqGf+QTjmfJp8
         OpM4356fC/1KX8yJfN/sBj8DSfBVFI66Mwm6O3qxRWiaNrVnzWAsWNt+brKvClAOLiMH
         ebQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z52P+dXAq/DuqikMbASWveFDaNPOdFob6KFvDAp94TA=;
        b=IVvs7am1Nwq9Kt5MJyb65Y3wwRKzm+yoI/oQg2g5V68/yKfqnPbn75ZRUZc+vVlRP0
         HTDL2zwsO25VolW/9K+HPPe9HdexGqmSqr8d8bj39zFy7hU8WTZ7+qTItpTjBftSbi28
         2xSxV87qt8NLZI7YsTCcdaxqySluiK+eFGEYT9JOw7SXl4UKjyN5X7G9rIGE0RFlKz0w
         dmXtImcoVVJ0ldGUA01WZEC/WGRZeE5BV+iICr93qQndLPhlbb13aeSqw2nMF2EIuk4r
         VNc1aDuQ7sXSIc9BnhEs+pnxfqn9gque2yjsQNY0Ky6pAz7S+PiEJfE1aQo6iLm3Jk0L
         45zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530guSM1f6Ezyjp4xmzvJH0S1SW759WsOuFw0OPdLsY1lov8RwuP
	RdMpFUArV1xTresy4MGpycE=
X-Google-Smtp-Source: ABdhPJxH+aGwl7xiLXx3UfbRKgbCLNBBynSKMpCtUVTrtOUMnraG1bCwE8R2Ge9Gth6OT4mUG5fTTg==
X-Received: by 2002:a67:774c:: with SMTP id s73mr22480464vsc.1.1603756560010;
        Mon, 26 Oct 2020 16:56:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:348c:: with SMTP id c12ls683401uar.9.gmail; Mon, 26 Oct
 2020 16:55:59 -0700 (PDT)
X-Received: by 2002:ab0:784d:: with SMTP id y13mr23455372uaq.86.1603756559429;
        Mon, 26 Oct 2020 16:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756559; cv=none;
        d=google.com; s=arc-20160816;
        b=ZhL5Yefcru5nB+cHtsagy7a03JEUH7u5GCRPmtXIkPrFnxSHg4Pk5d4Bbt7cCBq87J
         ZGuZVvjz1CLU8J+u0G+jORITUNo7HjsFV9M/XVOy2MqzbFA57b/q0QJMvrhs7GJkaILB
         r4mKagtK2Qo/7129jTrUluGjIq7bKbQGKc6DSQsPuhBM9r0T6BAsfqixJ7lYZHFg4XNL
         /0+QBmVyblCySMK0RbrfmoY3Jr43vW8heZWhMv7XRZ2N7FqkH5Eeljn3oaHSM2w4R6go
         9TE1jGf0EyGowaTXmzvFvDsKiFDnZBBewiMcyfB3/oF7BSb21Y8j4mNU6acKCYUobU/U
         cLLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7vgcXuZ7Fy8Flnt/gcfjiIO9Ee0bB+5629rw+3Of21o=;
        b=yPXx1eskaK9uJV8fh//nNlB7x2JBJmynfnkSipniLS1kBKydxv1i/9qNaCyaIR1uxZ
         j8JmZKMHpSS+cupiY9lBriXLsfYa6SpkMXxnjiAPcrG1qjvnMziV2NFQqgfaTDCcjh+w
         BtazgVjZab7OnfB/3JoS0g1VhesmMjSG5o9NAD+oupX2uyv0wf2eJoWjP0NDtEKc4mPQ
         xLLTvh2wxqLisR//ZY0X5NWJt8Vav1wogNXFGCozHW+AfrXb15oV6bT0EPo9t+/Ru5Oh
         e/PiMwjzIRMVJgzrvRCWsYUKF6tGVDxYATmeJ8wFGHswusO+H3P9NyHADdy3WBxxTi2t
         /HwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f95hcGnD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r131si636018vkd.0.2020.10.26.16.55.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:55:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CE3F92224E;
	Mon, 26 Oct 2020 23:55:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andriin@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 34/80] selftests/bpf: Define string const as global for test_sysctl_prog.c
Date: Mon, 26 Oct 2020 19:54:30 -0400
Message-Id: <20201026235516.1025100-34-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235516.1025100-1-sashal@kernel.org>
References: <20201026235516.1025100-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f95hcGnD;       spf=pass
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

[ Upstream commit 6e057fc15a2da4ee03eb1fa6889cf687e690106e ]

When tweaking llvm optimizations, I found that selftest build failed
with the following error:
  libbpf: elf: skipping unrecognized data section(6) .rodata.str1.1
  libbpf: prog 'sysctl_tcp_mem': bad map relo against '.L__const.is_tcp_mem.tcp_mem_name'
          in section '.rodata.str1.1'
  Error: failed to open BPF object file: Relocation failed
  make: *** [/work/net-next/tools/testing/selftests/bpf/test_sysctl_prog.skel.h] Error 255
  make: *** Deleting file `/work/net-next/tools/testing/selftests/bpf/test_sysctl_prog.skel.h'

The local string constant "tcp_mem_name" is put into '.rodata.str1.1' section
which libbpf cannot handle. Using untweaked upstream llvm, "tcp_mem_name"
is completely inlined after loop unrolling.

Commit 7fb5eefd7639 ("selftests/bpf: Fix test_sysctl_loop{1, 2}
failure due to clang change") solved a similar problem by defining
the string const as a global. Let us do the same here
for test_sysctl_prog.c so it can weather future potential llvm changes.

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Andrii Nakryiko <andriin@fb.com>
Link: https://lore.kernel.org/bpf/20200910202718.956042-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/bpf/progs/test_sysctl_prog.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/test_sysctl_prog.c b/tools/testing/selftests/bpf/progs/test_sysctl_prog.c
index 5cbbff416998c..4396faf33394a 100644
--- a/tools/testing/selftests/bpf/progs/test_sysctl_prog.c
+++ b/tools/testing/selftests/bpf/progs/test_sysctl_prog.c
@@ -19,11 +19,11 @@
 #define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
 #endif
 
+const char tcp_mem_name[] = "net/ipv4/tcp_mem";
 static __always_inline int is_tcp_mem(struct bpf_sysctl *ctx)
 {
-	char tcp_mem_name[] = "net/ipv4/tcp_mem";
 	unsigned char i;
-	char name[64];
+	char name[sizeof(tcp_mem_name)];
 	int ret;
 
 	memset(name, 0, sizeof(name));
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235516.1025100-34-sashal%40kernel.org.
