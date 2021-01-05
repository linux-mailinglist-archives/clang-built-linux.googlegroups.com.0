Return-Path: <clang-built-linux+bncBCCZHPMXYQEBBEXX2H7QKGQEYQD76NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id B20352EAD91
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 15:45:40 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id m67sf27306113lfd.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 06:45:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609857938; cv=pass;
        d=google.com; s=arc-20160816;
        b=VR0Zuc9AdQ8Fan4p1ntySLzbRhkngN9YCZPoS4W2oSVsjjncBP5WjnZjh0rMTKn12q
         yn33plFeZ/3o1nZM8OwWAzT/XdPwJvqgXys9NVjekhirSJvkAHAQSaz8WFDiPuXcqN+/
         ZPKwl2rOTongI9CkPXY1JENLYD19i5ocG98IUFiIRExKNKbDNGwpnSYnAa0kU9Goeot5
         PcvGvssV1sf7IhijsAcWpEQh0AH429DatuZkxdn71D9y3BZTT052OI5berhCK7W+wliz
         gfrq2gImu0DYnN1Uv08QpgQESzZ2Lklosfy1ExNoKOmj2p8villlJQh2/LmI/6fa3YlO
         8SVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:sender:dkim-signature;
        bh=ZITkXgLv1D29Vimrk4TtfaRCpuQf8hRrafIHOnIS12k=;
        b=bp9I0BFPacgIWhylDYVxVHcZrwiJ99g3v0Wo1qSyNO6xNV9r3LhCzjWoWmdGWLPuRo
         ZDKj7cG3NuV4NQ9gXDA4yMfqHDWnMN58hXBT245XzNgsFNz7L3CpbMSzcW8iyIIhy/Rl
         +we5do3rOkwzsloL+lbPWz5O38JNiWjtxr38nChRzDcC6O8Tlkjx7NuudQ1FaPMh6Ah7
         w8epftr+i67Wq778gFwLP/gLlpSKKxbhTOBsxFBJ58yylGcxQ7Oh+UQdgKR6JoxVAJ2p
         UXYsepeBlTuCWYo72dRsRrH7HmpIeDk89JAC5VoZdDbQkeGgfTslJsmWu5/+znBYOEf+
         LiSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=QNy4B2Y1;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZITkXgLv1D29Vimrk4TtfaRCpuQf8hRrafIHOnIS12k=;
        b=Y6B6EuShlr75JDkm5f3BPgIVN4u49grUjeVvPyP8lxIcovrkwIFy93D0Mp9DSHJ9Zl
         8I1RBg9cFxt26f/AePL8/p7e7pRfwz4RljFJLMVyBegsDvLJfUIf5r4KCi/yJeAY/o5Y
         JEkWcFy5E7vGFyZYQP6VyZbqyAcRHIAX+YGvjBljymTwwPqdCDW0i5CCSiONMw5zv2nE
         YSld+d4bFDfR0AEprJmx2X0fO4tyudCdrfDsjjj4/eoedC8NLiGPuPMRgU/PKdTZcbmJ
         1hc3O2hUfxf5q/SoLC8ALyiZ2g3Pl0Bn0UEA6ox6LIZbGhHs3sWalGJGWJObs9iIT1Gd
         A1Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZITkXgLv1D29Vimrk4TtfaRCpuQf8hRrafIHOnIS12k=;
        b=lDXtBADELZ3vhPj1LTuATgbZfXdBLKuaK2BXf+voYYoav8srdyd3est9rJVvp1x9E9
         W+/luIrQi7IDVmFL+57UnUAQ0XxzIdsiA1yqFzZHGDS+nYTDqxbQHsx2LBXx1VR5Kl62
         8jfXQEuunNqD2dnrikDxeCuh7ivBQt1Wt4UdpbztzskuLHrOmfour7Jg0JAtl7RYiH3r
         SdFa10fhBew/EVV79Qaz5Yc7f13zPeNM8M3ldO2tm7rpcedU99ro3+2t0P2Gd/LyXG+O
         VqXLvgtX0WHEtgGI9gb5PAHWc9EL7zQUqcQf6X4Ih+v4cCrx+Q2S8GUEjjy9/qMSns8O
         ancA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531F4S0fQDNBpBHTcYsCpc2s/jCFY/aCHrpN5ocKrAvv+g4tKJSx
	4uJLryqmJtbuEggw7zTWf+8=
X-Google-Smtp-Source: ABdhPJzqZu9KVIn/8pDpGYEyGAFMTbwBuRtNQ+m35ICHKTaNeRywO3MjB5EBV5ZjKuwN2MKUtNHV1g==
X-Received: by 2002:a19:ad4b:: with SMTP id s11mr33018430lfd.427.1609857938494;
        Tue, 05 Jan 2021 06:45:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc2a:: with SMTP id b42ls15088829ljf.2.gmail; Tue, 05
 Jan 2021 06:45:37 -0800 (PST)
X-Received: by 2002:a05:651c:509:: with SMTP id o9mr36990614ljp.212.1609857937553;
        Tue, 05 Jan 2021 06:45:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609857937; cv=none;
        d=google.com; s=arc-20160816;
        b=zKMkYCdyXdMwevMFS/NUnTURW5HzVJ01tGyOgJvDOfDNCsBJIYd3Y9uYVEDSYAFnvK
         euRJQwgNrEyLtbmJ69kxFtWMD0ByIVTLBsu7J2YJS3TynbUnEqGSlvl2VfqtZrf1iNTj
         XuA8ovrqYrrwNUdGcWh59iliucSrCMC5lVptjLlaFQdzQPzcJnlNQYJwfRRGuW+EtRpi
         jBw8gd8x1QYZoLtwtmwYUqzYqeNraLWrLAD/Di/kt1jPF/7I66bAPpOsygIoXNUghocr
         1QjocR1Tk49HS1nzx6S+Di72COAIUWc/dIwpLf7JZ8jrm8v87cyMmM2a5yHONQnQcae+
         8Bhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=zCpGRcCytiwDmu7xuUzzI6C7J/MRk83a3WkBh9PC9ss=;
        b=SrwxFyZeqUyNeo7+tZo85ki8Sd9fXugvalWW+G7PNe6cZo/yWJLp1xSum9VvIRwVh6
         5LYF1z7vANyyAce9hTElQQVF2N6BKNh93HxHv7IjCizY3m7nbXrnYq+OEDKlzemVdd3K
         vstput9+xD9u2MZRScjtn++Uuqa7I2Xs0/CwTARBUs5Ps193jVilkVM6KQBn5fwew492
         7rHPileWqYKllwHJyTFK4/vfXz42nQYXa/f6GKvDKJaaBjkAMI1US7qXj/BIIj3qqE3A
         PoO2KkE1z79kKz34LZDcFaNyxeTSGjiUUE4LMIxXULvf4v8aEaHYvOwcPfzhmr0LJMZR
         6Kkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=QNy4B2Y1;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [2a02:8011:d000:212::1])
        by gmr-mx.google.com with ESMTPS id h21si2406068ljj.6.2021.01.05.06.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 06:45:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) client-ip=2a02:8011:d000:212::1;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id CA9C5C639B; Tue,  5 Jan 2021 14:45:34 +0000 (GMT)
From: Sean Young <sean@mess.org>
To: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	=?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3 2/4] libbpf: add support for ints larger than 128 bits
Date: Tue,  5 Jan 2021 14:45:32 +0000
Message-Id: <3d3f8d4cc59b61d42e05d5f66d7b29fc7eb20cfa.1609855479.git.sean@mess.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1609855479.git.sean@mess.org>
References: <cover.1609855479.git.sean@mess.org>
MIME-Version: 1.0
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=QNy4B2Y1;       spf=pass
 (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as
 permitted sender) smtp.mailfrom=sean@mess.org
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

clang supports arbitrary length ints using the _ExtInt extension. This
can be useful to hold very large values, e.g. 256 bit or 512 bit types.

This requires the _ExtInt extension enabled in clang, which is under
review.

Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
Link: https://reviews.llvm.org/D93103

Signed-off-by: Sean Young <sean@mess.org>
---
 tools/lib/bpf/btf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/lib/bpf/btf.c b/tools/lib/bpf/btf.c
index 3c3f2bc6c652..a676373f052b 100644
--- a/tools/lib/bpf/btf.c
+++ b/tools/lib/bpf/btf.c
@@ -1722,7 +1722,7 @@ int btf__add_int(struct btf *btf, const char *name, size_t byte_sz, int encoding
 	if (!name || !name[0])
 		return -EINVAL;
 	/* byte_sz must be power of 2 */
-	if (!byte_sz || (byte_sz & (byte_sz - 1)) || byte_sz > 16)
+	if (!byte_sz || (byte_sz & (byte_sz - 1)) || byte_sz > 64)
 		return -EINVAL;
 	if (encoding & ~(BTF_INT_SIGNED | BTF_INT_CHAR | BTF_INT_BOOL))
 		return -EINVAL;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3d3f8d4cc59b61d42e05d5f66d7b29fc7eb20cfa.1609855479.git.sean%40mess.org.
