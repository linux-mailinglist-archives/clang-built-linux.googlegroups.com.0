Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4GC3X6AKGQEVAUS3YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 72404299BC6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:53:21 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id l142sf6418072oig.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:53:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756400; cv=pass;
        d=google.com; s=arc-20160816;
        b=bGhu+1zcHJh6GTF1lKE/ATIWwWIwykbyUws0Sx73k2tXEoNbDu+OAt1LxqslFaoP1I
         tu+fzhbDIsYUJoEIvlMHZlTbsgP5KFSTk5H0gqwj+dAvSH1ljWLhxYgB7dpAPnMSrj+7
         4lf/GWazBO9e0MVXWYgnk5Nrftw49bvEXdH1yj6VPEE7NOnGGru4bWtMsBTZd76xbpZX
         uLusjwaKrURYQNIGNr9PbEG2jRAtctxbNqUVtqO2Y7/GHHvkDWyPQS4GXJnEYDtZbIQ7
         4tyvRdGspx1vpi9wWA/bLXChKt9b9tKS1PbR5cVBO3CZeZ6eaa49CUtgY0P5lM++aWTV
         Vwfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nvwcssZbTMQ8dkvfMz8m6nWySi8z4hdyZyLF0G+Yk0E=;
        b=LEziSRdL/Q6ZKNR56N9BmcH7rd1YHXFaZOboQUXk1EYDQHQiSDUuUWkFVU24U1rSOM
         C3xa2lnZvWcuJBqLgFUMRs+2suZ9q+9gIoPf8P3eQW/AC8fqdJ6mUq42th7hIMnkkIVP
         MrC56nqxFNp0XQISXS3wwwp1sgoRGe29TtyJ9D1Kk82YxwNhVyoDGmK8SOh+hunI9hLv
         I9xUB6RGdXmthY5QYqsw37n6PuGdUc/btuevhFlFjv/K63N9yV60mXURQFuvYvF/jRPo
         +2t2V7aAOH3rdhpTjB3menbfCDaSvgXTxAnFvedGRjXobA6DydORDVXqSQVJE+ig0aX8
         8pfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Izwzh4vu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nvwcssZbTMQ8dkvfMz8m6nWySi8z4hdyZyLF0G+Yk0E=;
        b=bhrAbaUqx88mkpj/cFz0fVK47h/GtTKCcwQ/J0+wJuRbQJSZvyr9pvTBj6ugIJ6ByF
         Pd+4JlNIFmFP4gSVRrzJ2Q6Pshwd462xQ2BVRKeppPxRwmEYQq24IrJqB3DKYp3WZaG2
         NBjuNdEwe4SPqmk04P2z6G5slkOh6AChqMQhlKZtK0eUNzdmCb+/oD71z8u/oIMhS2Ne
         796SbOP0fQ9DlcGfUjmmgg3wFiKliwC57IjIYVWGPy8m3A/XAAdJ4aNpQSLv6rbW6ldL
         0klGtDQHCGxl9R4xY+4mLFxkt98sk8M4Ceyvjq/BEKm8y8jz0r1RrMk3TCC4od2bwHbg
         iVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nvwcssZbTMQ8dkvfMz8m6nWySi8z4hdyZyLF0G+Yk0E=;
        b=CTbyPMxwHK6UBNFcbCtJxGXE9L9ux2a1Sw/b3LUcM9F5PBKBm0rRLBqqMZjMTjsfHc
         7Ksv3J9GXIldh0Ayj9H/BqDLVxtRhhh3gqxlfQi5lWMpJKUjI96g5FB4JTFhB2nCBtQZ
         CHXpBZQ/8dE0jPTYzRmBd3b+rb/M8gbaEwjclOsJUv2H/6bxcRRA9wRAz/LRqpZe2XYI
         lMqwu4+RVaU7bdaWufshA6WiZsrdvnWqWyMXY8xGB2gcysvQdzWAeFzAhYGVJW53qS+S
         pkxZrofkce3roBfOBlAJ9ipf6kx1WBQS16R2RqgqdECSnazr5I2JRhL1le/V4phT0eKO
         J6iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CUXsF7y27Lb9OGTq8Sf2CvRRab/7tkwPqmiF7nN7oL22m1YXG
	iaaKAoZ1nS8bpFEgTWbJP9I=
X-Google-Smtp-Source: ABdhPJxBhP2L+57NrfMh5z7Ze/0y3yfUY1Ib6JfMhjBgKBQDxUZ/MzpeLvIhReyP5AZt9Ub8UWQBqA==
X-Received: by 2002:aca:385:: with SMTP id 127mr8229650oid.20.1603756400384;
        Mon, 26 Oct 2020 16:53:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5283:: with SMTP id g125ls1852975oib.9.gmail; Mon, 26
 Oct 2020 16:53:20 -0700 (PDT)
X-Received: by 2002:aca:4b84:: with SMTP id y126mr7599297oia.142.1603756400051;
        Mon, 26 Oct 2020 16:53:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756400; cv=none;
        d=google.com; s=arc-20160816;
        b=0CNpIKbLJ2MO79yI0YRgPYp3/ASdZMjz9GrnWsDeLT0SO8+IbaJ6YkNjqcaN8Hkiif
         TlutUpYpKiSrZC32RebnS7tXSR8X5M85tE4jykAuERRNUPZnqr0ovSB1i9anL0yOgSwz
         jDVaT9blNN4y/zrmzdtVv9OQYjsOnveTuVX4b4De9jQfdyvKGopikVBIoolWO1sB7FHB
         yd7NEfaMtOn7ZJBzpJ5s6c0v3yVAzUxhCST1N0FVIVQMIh7TSDgg99kcXe887TzYmwBa
         fUg2F0MDFQrGsp10v5hwIA7BzfI1GDs6BZtord4N3vX1dceCPyPEbDBhq0hXQwG+ZgXR
         0rIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vl0DoymQvVQPWVFe0h8eqh/96NNnfFTZA0WaRWbWhXI=;
        b=JVF0oVzIEfbz+dWCaUVW+nYdmMCUGLk1R1Q57pRI7dJ2ASKYH9xBFUNXvoRYCOysnz
         O6ovni0SnBxfo9LYMivxUCRqneWF9+1dOIkIm4tFQyP0TE+jH54jfLjpK/PUE1QxrQVO
         hkGv/n4vRd43g03KHG//0cV/gGMv6dxrEh1Pq7wk9Rn9R3hymkVyPvDIVYZjVjsCmpum
         lhpcJdWN5KO4eTsOKPeppkiaVo7az8pamMWjeN23hv8i4r/GNUZVRFUMBCcj8zTPWdFc
         1O76hOrDvcwu79SPC8tmaZDzfaNrmBdxgu22PiADPA9ovU7kcD5tZmYPCFF0JM28JBIl
         TEjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Izwzh4vu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n7si779181oij.0.2020.10.26.16.53.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:53:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3BBA82225C;
	Mon, 26 Oct 2020 23:53:18 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.8 059/132] selftests/bpf: Define string const as global for test_sysctl_prog.c
Date: Mon, 26 Oct 2020 19:50:51 -0400
Message-Id: <20201026235205.1023962-59-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235205.1023962-1-sashal@kernel.org>
References: <20201026235205.1023962-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Izwzh4vu;       spf=pass
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
index 50525235380e8..5489823c83fc2 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235205.1023962-59-sashal%40kernel.org.
