Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMMUYDXQKGQEOUPKSNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 90101119372
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:12:18 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id c22sf7729973qvc.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:12:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012337; cv=pass;
        d=google.com; s=arc-20160816;
        b=g4tS988ZcJscFuk2F0CiJMxB9zNry4wkuTZq/EF7U4sWYHJltMP6NnV8PRYCMNVwyM
         pxB5AFU+vB6pzahZq5xSYRBnlKDzJNvkI2MvHHj7bPKW3eoFER6C8TYXe0KreNtk8oQn
         oQgfWShdNw5IeTUBRheRkAidxdkQGWzfB9kYML9PYJDnuwpIRyYgVv+MfM8bSgeMVs+j
         BrpuTwWVjEa23DNdj9axnJmrEhzF90xi+NoHshqy+5yIjHnWkzX7tcxqzuYrq9x9SZV0
         ONT18lGbzH2bWeZaUUj8qJwP6JgZj40uz8ghnvUFwviw1gBo/H/Cv/xHHiH2hukNcq2f
         wY+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kfcl299MBPNYVfQxQDwa7arWdkCmaV3KhB0y5sLfD9o=;
        b=gTlStDf0I04K+ah7i15oI+zLJIEoUI2OE7TeQaJzreS8sbTUArOZS1tgKypNYPyl+0
         ZXpJNyv3KzUSO4le3jGylFLwnXTJrUGQfV3d2yczHmWqQG+ncJzKO708YRTCTBnBlie7
         a0O8MdlHB+wpN7XorWurE0Br8qifHtZfquwkZXIe/nX16FxiKE9NfDbdwGHWCheqHv3J
         DIae1FjmjCzHD4U18pQMVvrL01Fd+LIdGeEIgR0THxESHUPegmh428aJbPbmw4JKjmBi
         lwMEIuHsOaG1zDoiI6k8tIvUcfP3bCINjFobI5OO19Ugc+waWS0+hxDYeNVGXBrx54sV
         b8tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FkWtwiQO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfcl299MBPNYVfQxQDwa7arWdkCmaV3KhB0y5sLfD9o=;
        b=YGd9W4W+CWVHlI9R1UuDsUG7L1l3/Sysx2CRWNUUeOJqfD8UUu/RnT93jpe7ixAMLk
         uWnl9t5ke/A4MflJgXfrr5ZqBHCzcFSQzVxtyyY+WnBN8C5xVmKDJTGTSjkvTKMdDGxR
         VuyEz/33JjSThOH3yap0gpuq8wgG/vLY0RXIjz8/Uur3AYHQtUV8RQjVieET/LkbGQ8M
         Y6AKKKJvtDqSiCLhXA7mQw19dpxwoZVJPpLJIyW/FRu4fEHSe0dLJUbGywI7LGcoMca8
         15YsSYJxx/vIywtMmJ0KaUhcOpyPYttlzC9yf0aFcQ1jKTd4jXQY3j3fUDfWVR+YSuJG
         A+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfcl299MBPNYVfQxQDwa7arWdkCmaV3KhB0y5sLfD9o=;
        b=XjWLsQqcdEwpY2ftFmPnmOE5YcZaoK5gmNyOg/jSlj+o69QnukELysHMOX2K1G7BCv
         JowJAjblVJ5nMCW2XdLr0KgZxtNhy9CokO2A5Z8sPmr04AilO1ogIRaVSDFHuEJdH/2P
         LEo5fdW6ybMz3ZZtarsOURfBWgdbuAdnjL+kEkKrtfa2pyK9lILc8ZpSU/KaX9VEb/Xe
         AbC/BSN1jGN7gSC6naacg9FDgh8cNprsR9zRWilHDdV+X2OFEL3+q4WbsUbYqIJfCWrO
         uzXjDe8IX6IxIPs9aBigf1JawelpSgF8LQixNLdACM2V3lBVykCWmJd7YBkVtxSKn226
         JdpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXavPzbyMGQqwpfJJ8DoLTfCGzk9fwy5FyrGjlZca3NDhy4Cb8H
	RgvgWY7KEUrKmxwg3+Lafhk=
X-Google-Smtp-Source: APXvYqxL+dbRi7JCARGPSFbKhPftws95DGBSlqWmc/ThKCLoJKFUtwj9NHQT9XEzBT3XxwViPyzhiw==
X-Received: by 2002:a05:620a:1307:: with SMTP id o7mr11499553qkj.312.1576012337137;
        Tue, 10 Dec 2019 13:12:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:47ca:: with SMTP id u193ls6673291qka.7.gmail; Tue, 10
 Dec 2019 13:12:16 -0800 (PST)
X-Received: by 2002:ae9:e50d:: with SMTP id w13mr3575226qkf.458.1576012336778;
        Tue, 10 Dec 2019 13:12:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012336; cv=none;
        d=google.com; s=arc-20160816;
        b=NpJ86InwxScxzRpvX29Zk3/NLVKmkNjOgB4gJyPp/XXdrVEGziQxUtCEmWv84tHox5
         jfwvrv22sTF0Ce5T3XJc7iBBzsXd52vbbNuxJvfieNG9fdqqEVWFkXcVzl+Gt3Yz83MM
         WAekm76dXi9SknTPn0E1N0fkH1tD+qBnD3QsnmGDF8ZMvQEpQf0wsytXcC0P/6JrvZi8
         2xMUZSvYzwbCHwufGcLt7Q6+/kErPYNNasKGsF62ZyVbtNfQJ34OdVKVl9ZchFH1U14W
         1nOc/vPbj5ZekrKxOw/onqHCkbN9uSzvTOI7TQ/6p+S9S/AvlmtTSV8d5pvIIDe4CkfD
         avxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YVT0JmvryBd5QAVqtkXaftLF8Ar2WaddKrpH64C+neY=;
        b=VgTg7v5cpdQyoI9hpcX/SQD8ov+knPMOaQwrKwarOo2N9pD6MDFNpkxu7bVZEu2MAd
         zRvg+uZbYftcqdafMlL0W+NCkzE1/j7oN691BAp9BGiuXfsE8C/I3jxbsaEnUP+dLw3l
         N0FhP4RbhmZkxrjxCASIBo/bKx0vAgVy8nEDzdIBnPtXj9W35sIa8AQWzUobPxDSsVOx
         Ja/z+ZV8OTGAf6Yjd85Ui4rLHUJR113zMFyYhgbFiZLaeYrC8LQLww9vr411CSd/GUtY
         I7VipOk7l9kaJQAT8JCaGBBB0wl8F+uGbw5nn9lZ3yhZopDjVvJjmp6no+A8qRympx+I
         htKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FkWtwiQO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d16si159863qtp.5.2019.12.10.13.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:12:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E0EAE24697;
	Tue, 10 Dec 2019 21:12:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yonghong Song <yhs@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Song Liu <songliubraving@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 267/350] bpf, testing: Workaround a verifier failure for test_progs
Date: Tue, 10 Dec 2019 16:06:12 -0500
Message-Id: <20191210210735.9077-228-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FkWtwiQO;       spf=pass
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

[ Upstream commit b7a0d65d80a0c5034b366392624397a0915b7556 ]

With latest llvm compiler, running test_progs will have the following
verifier failure for test_sysctl_loop1.o:

  libbpf: load bpf program failed: Permission denied
  libbpf: -- BEGIN DUMP LOG ---
  libbpf:
  invalid indirect read from stack var_off (0x0; 0xff)+196 size 7
  ...
  libbpf: -- END LOG --
  libbpf: failed to load program 'cgroup/sysctl'
  libbpf: failed to load object 'test_sysctl_loop1.o'

The related bytecode looks as below:

  0000000000000308 LBB0_8:
      97:       r4 = r10
      98:       r4 += -288
      99:       r4 += r7
     100:       w8 &= 255
     101:       r1 = r10
     102:       r1 += -488
     103:       r1 += r8
     104:       r2 = 7
     105:       r3 = 0
     106:       call 106
     107:       w1 = w0
     108:       w1 += -1
     109:       if w1 > 6 goto -24 <LBB0_5>
     110:       w0 += w8
     111:       r7 += 8
     112:       w8 = w0
     113:       if r7 != 224 goto -17 <LBB0_8>

And source code:

     for (i = 0; i < ARRAY_SIZE(tcp_mem); ++i) {
             ret = bpf_strtoul(value + off, MAX_ULONG_STR_LEN, 0,
                               tcp_mem + i);
             if (ret <= 0 || ret > MAX_ULONG_STR_LEN)
                     return 0;
             off += ret & MAX_ULONG_STR_LEN;
     }

Current verifier is not able to conclude that register w0 before '+'
at insn 110 has a range of 1 to 7 and thinks it is from 0 - 255. This
leads to more conservative range for w8 at insn 112, and later verifier
complaint.

Let us workaround this issue until we found a compiler and/or verifier
solution. The workaround in this patch is to make variable 'ret' volatile,
which will force a reload and then '&' operation to ensure better value
range. With this patch, I got the below byte code for the loop:

  0000000000000328 LBB0_9:
     101:       r4 = r10
     102:       r4 += -288
     103:       r4 += r7
     104:       w8 &= 255
     105:       r1 = r10
     106:       r1 += -488
     107:       r1 += r8
     108:       r2 = 7
     109:       r3 = 0
     110:       call 106
     111:       *(u32 *)(r10 - 64) = r0
     112:       r1 = *(u32 *)(r10 - 64)
     113:       if w1 s< 1 goto -28 <LBB0_5>
     114:       r1 = *(u32 *)(r10 - 64)
     115:       if w1 s> 7 goto -30 <LBB0_5>
     116:       r1 = *(u32 *)(r10 - 64)
     117:       w1 &= 7
     118:       w1 += w8
     119:       r7 += 8
     120:       w8 = w1
     121:       if r7 != 224 goto -21 <LBB0_9>

Insn 117 did the '&' operation and we got more precise value range
for 'w8' at insn 120. The test is happy then:

  #3/17 test_sysctl_loop1.o:OK

Signed-off-by: Yonghong Song <yhs@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Acked-by: Song Liu <songliubraving@fb.com>
Link: https://lore.kernel.org/bpf/20191107170045.2503480-1-yhs@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/bpf/progs/test_sysctl_loop1.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/progs/test_sysctl_loop1.c b/tools/testing/selftests/bpf/progs/test_sysctl_loop1.c
index 608a06871572d..d22e438198cf7 100644
--- a/tools/testing/selftests/bpf/progs/test_sysctl_loop1.c
+++ b/tools/testing/selftests/bpf/progs/test_sysctl_loop1.c
@@ -44,7 +44,10 @@ int sysctl_tcp_mem(struct bpf_sysctl *ctx)
 	unsigned long tcp_mem[TCP_MEM_LOOPS] = {};
 	char value[MAX_VALUE_STR_LEN];
 	unsigned char i, off = 0;
-	int ret;
+	/* a workaround to prevent compiler from generating
+	 * codes verifier cannot handle yet.
+	 */
+	volatile int ret;
 
 	if (ctx->write)
 		return 0;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-228-sashal%40kernel.org.
