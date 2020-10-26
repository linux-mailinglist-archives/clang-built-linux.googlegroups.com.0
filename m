Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBROB3X6AKGQEVR7BCTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DC7299B4C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:50:31 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id f12sf3457875oos.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756230; cv=pass;
        d=google.com; s=arc-20160816;
        b=s8Ggbk1DOd62VXMLYU/DzmqCyZm9WbMgA+H7RevIv7hnmZXLoQkr2RQYK4l10Gbd8/
         pCSRIF+DosNn/YSHDrrnBh2y2ek0MNAJ4+MlNCEhQbCKsL+4uf3yl6pQMW+VwGnRim5o
         zIFJPeXuaTWdlhW5MYRQywR0A3AcyxGa6vw5wfCrBNW6XdXHYNtUx1fevK934FgSyj5x
         tgbl80L+NEZNsriL3PorM9lKOse3l1bp+ETaWCDP/DacMoDq7T82YeAbfZImSUS9zgHb
         +x2zjOh+0Eu1EmVLq/CI9y4xqaNKgbOv23N/CuXrwL5K0I0VNnCLKquy/R9mevtVGmKN
         kuPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aY+++7JHtIuQqFdVRlI/eyB7tB6z+CpXL1rhkxnQ2oE=;
        b=OpZjU/8ts6RsvhU/fepNs8b/Ad38r4scaASXRZibSdwh3vvmvGgTiK47uckPHScook
         YWJEvD994Ceb+pw8/Q2jB6XrVDnSj4uBpoN8gbQ2vR9dijSPEGK+ZQtentiQqSK3qy/W
         hr9+0exs4Uj4GkZUs//tnAO3KjRm+EEpx5gdFDu2oO673YtUdDo0rjIFnpZtbMQ70YzI
         YqGkgzcnQXvw7AO7PuNgvRB8CODb8MXf9zyakDFB6YbWbrmmRSXwxkBvtI8aEw+FXeeb
         dtJyWC1TBVIDzOTCAULZX61SDnp/+Bdd9b0KpCm4/1xKo1jyjv5mCKMVyQl70SXC3zE/
         DUow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cKj0n9NH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aY+++7JHtIuQqFdVRlI/eyB7tB6z+CpXL1rhkxnQ2oE=;
        b=I/qy3geeYNgkPSZjkwUU3lTb0ts4axeI+no7/CsJAJKhGR5H5yt+DLOz0WpwDyEAI2
         85usMyc7QHYeaagar7kRjTpvDBmEbUDEDFfD+xPypEWUDLzIC6vCYIg9zKccXws0CDBI
         dYeRCZnmV0KsOO2JQdxQn3LPWo/RLmz1BkgetrVq8tgQora7cksJgBj1htuI0dFO+pei
         89cXPhhQVk8k6Vx85/gK+DjYvsLNGYH2Vw2g1hEMMPALJQTdbd2Hr2AcCwuJxwb29hcS
         BbQ3CjTlzC5pSNZE3CcD8A7C1le+iN1ukzOgN0k7mk0Zxyh/tB8jS+gXL5Jj2m/47o35
         NI0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aY+++7JHtIuQqFdVRlI/eyB7tB6z+CpXL1rhkxnQ2oE=;
        b=I+OuH/05pCKVaGiKwKMv1oST4vdvAux8yMet96e+lKZ2PaFnNTKjbJn9jcJIH4EwsU
         2AwnJvFfdUDBafsent+E6kjiH4b5pqyuujVHHaf82oQOI3IZ4u20VMtUdGpdHqzD8Qw8
         /xOMavEbbgo/UP8MGjaHnLbwJ24VDqxy9ua9eOhpHWeI6BnbBHkdodphnDHnW6r24ofU
         EQeGJz7k2cKDeJFk1UfwKnnLGOKym5jjaKk3Oh9tBPKI2X8IQ3j66uVC2x54uSHS/dZ6
         uENHZsHAYvfbny80UrsXixt6Cl3xxhQ3G2oYYE/AG29QrV9U15XWFEwfYSF5N/vHlMdC
         vmMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BiJF7Pew6UdMrrkcf9RM6tOV4dPT/SENjOaXfYJHueK1MDolh
	O5FpgBEOjrQYBwYF92Vf1gc=
X-Google-Smtp-Source: ABdhPJynOjBe0jnCH2JkGqIXyUSCDIxYlrHNVparKNk35hkNV9uuI5T5FMe5WVXkVu+VZnq4L7WfYw==
X-Received: by 2002:aca:3442:: with SMTP id b63mr12107651oia.15.1603756229956;
        Mon, 26 Oct 2020 16:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d0e:: with SMTP id v14ls757310otn.10.gmail; Mon, 26 Oct
 2020 16:50:29 -0700 (PDT)
X-Received: by 2002:a05:6830:2389:: with SMTP id l9mr17159749ots.316.1603756229629;
        Mon, 26 Oct 2020 16:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756229; cv=none;
        d=google.com; s=arc-20160816;
        b=FGqYMgZ3YptCHb44RxsLvZBJ8425jYy3jVVEgSsiml3uKvlOxilT1IpqawUUYouXSl
         JSTKB/Trf+LD8W43YSapUJPQ28XJQ7kCgPxv2yMv/5+3sPPdi/eO62pv8u9WOS2uF26S
         LqN+K8hqahD6ly5PUnLXS/Oa6g9ClcRgN9hOf5evVGza/qAPH8omd/6ZvXfSsHi/GfJp
         J3Ryg2+RT2XBmOgLJk/4HOpOlMroBzehaTbk51aMeSYqkV3U+d4yzZlrkuuCqWjH6Vc0
         noSVZMqDafqZF7ov5eDpZkLzQx9d1Bpbk4WNA2Kzi8/1BqMoIpBlX+x9Y6Hud1MNw+zi
         vPQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vl0DoymQvVQPWVFe0h8eqh/96NNnfFTZA0WaRWbWhXI=;
        b=fZ4qg996IlloUxA8FMmGDFFKu1eB2MWimBy1vyuaE1I2BIfdASCoCwX8uUGVL31jFX
         xw4Me+AQHJNFFkDKsA0o2ZnRkpZUsUt4imZxP8JPQ1eUV6gIn/kW67RFlRmC1cdkSV5o
         Jv1cqIWcUCg6ihNgBA6ZilCRWF77N7TWhHOvPzAgDGLQHz/Cr6mFym3b6OaDQJcX3kYI
         3LHlYaK0z8ueRcjUo6Ww9xaljETMOLBUD5IulikcrGYyFu5JqmRvdb5YYnEDYLWEWMbl
         iTEQB4bcnw5eSLPjILrh1RoUR3Q88GqK8YBfb380XMzUSY0SWuBomTXxxH0SF9LjAXJ8
         Bskw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cKj0n9NH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si613673oih.1.2020.10.26.16.50.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:50:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DDFF720872;
	Mon, 26 Oct 2020 23:50:27 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.9 067/147] selftests/bpf: Define string const as global for test_sysctl_prog.c
Date: Mon, 26 Oct 2020 19:47:45 -0400
Message-Id: <20201026234905.1022767-67-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026234905.1022767-1-sashal@kernel.org>
References: <20201026234905.1022767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cKj0n9NH;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026234905.1022767-67-sashal%40kernel.org.
