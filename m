Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDEDZ3WAKGQEO5G3OUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 010D5C3AD8
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:40:46 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id v15sf13911556ybs.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:40:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948045; cv=pass;
        d=google.com; s=arc-20160816;
        b=RdVEFUifqKpbsN0ELfpoc86QSIxU265/DNuhAJ0+wOFX1oS/MSj+Ruvlm6CIadOFT0
         1B2daEzYdWsrie8LN7cgUiB2IWwUWyqHJ6LYY9bHt2ZEDaeUDmY2heOddHdTeDaEUyRm
         +Kw33trzAQQU3Oqx25pZGguOF06ezx5U4r8sfS9KjBhMggRgfoTtMFiyVAVubApTaUx1
         xX4YY7UhHeaXt/Ib+ANnDaOCJAiUXewYvaP/JeuaRnBch7QGft9OtCvUHioYwfEF+Xk1
         FBHdoCckMSmMHeyGD+caRFSkhnZTjbbr/VIQAp7k9VibZ+Ayrmx91uuwBv7zvbF/yfzC
         R45Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DDZdszwX4p6Ra8LCvERpuIcnzFFhUfqCgYQOKBwShPY=;
        b=XBxAsd5K80pYFG3KAb0uifRto7fzCabGmzEHianqJuMWUJ6HwINZaca6Bxv4G50LtG
         NQJKohtLkzItw0KhLzWFNZKEdbstXf7XcU+FTwaJ3k0CC1apjdpmlcMOGjdy5va0YGcl
         HpFwEVtvNurmIQiWMLqRS09/gPVeiQVa0p85lvVPs8EQWWqDQsocKHsOqqjOs6Bm6wzd
         ikjaqbOcu+ScEPERbzoHSi5STJUfdLg5xtzleNApR5u3hdqcw/QVRHU7YKgxfAUaL6it
         yLUn8cYNUzMQinFNzVq6IEM62OjmpE+aJZ3oXuaH8EJgzOCw+kEjzGdq4e8qgqZIZEZE
         yeZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hw0rp2Up;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DDZdszwX4p6Ra8LCvERpuIcnzFFhUfqCgYQOKBwShPY=;
        b=pclHMa4d/HqDjBbbZzKpfZQBgR+OVfQgmRDDoLcURH0KqPExHJFJUvAFIMWPXodSzs
         6EF3veTzq5awkjWYfG0y9tPVYihAfiGHzxyg49HsGkRorfhFtAp1qRR1K3dXF5ZpvuDS
         mjIiCZJqhDukUGHb6O2MiGZxUs2IS0iHW6dmDzOFxwY43FLHnzKa8/JD/ReVhKe1tGjM
         Zpsj5mRAI7u0O6KGCdimlLoCJ/Er9oqadzqbp4B9B8zPD/nTuxy5cW2a1uLlNCX12sc4
         zMCS9OebCUqWNol1W/dLRO2iwFlIOZ2qfdxxHYAhR7AHxVJDv6I5EQD128PrzaK6e1zy
         COKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DDZdszwX4p6Ra8LCvERpuIcnzFFhUfqCgYQOKBwShPY=;
        b=HxISpXRAJKM18aAqn0MUT6huWHGabpIjqQDrZc2y1u4/QjEPk40W0KWXMQVRTxrl1V
         +9b4zvO+nVj0KW72Yb5P0pCBvKVjyE7OBX+gc+gKpmGNV1NN8cuESEJxB/rTJJeiACa9
         BAvcNuItPFTk88d8e/DXnKTmCL2pzx6Wp+CkNQHwmIvrjF7YQN7ZGkw1X2h3zci/maAF
         u2s0N6MyW/7MMd7E0MO3YAsdXcZYM1uAFXJeSqNVMO/YkrpiNnPA9oGA8ds/h6ffRAtY
         i11Ag2OTgh+IsZ9OjoyT4vXOYDd4PitK1NBIx1N8jm7SizQPvZqif8YVon7Qf3DEmxax
         ovsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbZ1xgV8NA/rxziSHlGFAbx7nmX833N7vNW6pCuAFQJ+QYCf9d
	Jw+yLN2SPAAMwPsDSZ4gpNg=
X-Google-Smtp-Source: APXvYqyLjn+gLs/7jQ+bzzqzCC6zC6YKs2/LvC7K8jJmo3TSFBhboR/LPzG2p8kbYFaKplRRz+xG0Q==
X-Received: by 2002:a25:d8c7:: with SMTP id p190mr14819371ybg.22.1569948045031;
        Tue, 01 Oct 2019 09:40:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:150:: with SMTP id c16ls1329412ybp.2.gmail; Tue, 01 Oct
 2019 09:40:44 -0700 (PDT)
X-Received: by 2002:a25:a469:: with SMTP id f96mr20289041ybi.23.1569948044733;
        Tue, 01 Oct 2019 09:40:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948044; cv=none;
        d=google.com; s=arc-20160816;
        b=Nsa1i/RZyXHe8PZvvREdUqFwsV4wbH2PEdESdzCWE7YFxd5D8h/gXFbTBTMDIN78z3
         USfD2YJbYW7ft3zfnpf0FgGn2ge4F3XwfG1rsmsJvwNqjvl9RanKNEsduGxTJbDHjVr4
         NDZNculhGrMZEUVsMGn+Gr5n4hDQ++Vz/Tk/E66tbEu8BlQYHp2F66opvmHVQMaxCJxD
         k0TvGDxYV+j37AOg0J1LTXd31D+bivzaif1m+DUyeV+Vr8VRHY/huPnWysgR+YJm9WPk
         CbBQmKAtonkfthE6AtXg40Vfg7mAk12V4zeob/gKk5BERqMnCTfL9aB5HG3gfLhnRUWj
         UT9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Lxqj5ctpLdK8G68lYpfpnLwVE6UVS52d4ovM3AqXOcg=;
        b=OHVmy5dfpM1SCkEDkvxKlt3wRGP5CGiJ0D5yAbbr38+DFbn3NLnNZzoKONG7vWfsnv
         I9g8ARWTkP1OjkNypQ9+a6DblnhJ8IkRDTqazdVMiqg1uyqkCHK9CE7OS4wNIoQ36a1w
         dMbWfdkvuS4oypIKxbR+I4LgB/WIXrDOie7x1hAAPhGEYoGcQlTM5g6ReCOXJ1dIWyaA
         SjF2rtCbobjhS2i0ukbrHxHlH6L3H0He1KvLxecupMVMwvCAtII/FitubfXLOatrV8aF
         5ADYAYDPoSk4bZLNKiBJnIk5xQGR2VHq1mm8fY1tgUEmawesH47JhdIK2ZPvxTrLlvIU
         DECg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hw0rp2Up;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g4si736612ywe.2.2019.10.01.09.40.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:40:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D3E7421D79;
	Tue,  1 Oct 2019 16:40:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andrii Nakryiko <andriin@fb.com>,
	Alexei Starovoitov <ast@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.3 50/71] selftests/bpf: adjust strobemeta loop to satisfy latest clang
Date: Tue,  1 Oct 2019 12:39:00 -0400
Message-Id: <20191001163922.14735-50-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001163922.14735-1-sashal@kernel.org>
References: <20191001163922.14735-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hw0rp2Up;       spf=pass
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

From: Andrii Nakryiko <andriin@fb.com>

[ Upstream commit 4670d68b9254710fdeaf794cad54d8b2c9929e0a ]

Some recent changes in latest Clang started causing the following
warning when unrolling strobemeta test case main loop:

  progs/strobemeta.h:416:2: warning: loop not unrolled: the optimizer was
  unable to perform the requested transformation; the transformation might
  be disabled or specified as part of an unsupported transformation
  ordering [-Wpass-failed=transform-warning]

This patch simplifies loop's exit condition to depend only on constant
max iteration number (STROBE_MAX_MAP_ENTRIES), while moving early
termination logic inside the loop body. The changes are equivalent from
program logic standpoint, but fixes the warning. It also appears to
improve generated BPF code, as it fixes previously failing non-unrolled
strobemeta test cases.

Cc: Alexei Starovoitov <ast@fb.com>
Signed-off-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/bpf/progs/strobemeta.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/progs/strobemeta.h b/tools/testing/selftests/bpf/progs/strobemeta.h
index 8a399bdfd9203..067eb625d01c5 100644
--- a/tools/testing/selftests/bpf/progs/strobemeta.h
+++ b/tools/testing/selftests/bpf/progs/strobemeta.h
@@ -413,7 +413,10 @@ static __always_inline void *read_map_var(struct strobemeta_cfg *cfg,
 #else
 #pragma unroll
 #endif
-	for (int i = 0; i < STROBE_MAX_MAP_ENTRIES && i < map.cnt; ++i) {
+	for (int i = 0; i < STROBE_MAX_MAP_ENTRIES; ++i) {
+		if (i >= map.cnt)
+			break;
+
 		descr->key_lens[i] = 0;
 		len = bpf_probe_read_str(payload, STROBE_MAX_STR_LEN,
 					 map.entries[i].key);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001163922.14735-50-sashal%40kernel.org.
