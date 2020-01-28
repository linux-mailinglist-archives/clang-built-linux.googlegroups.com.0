Return-Path: <clang-built-linux+bncBCP7VQF36ABBBGVSX3YQKGQEWI43JNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEC314ADF0
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 03:14:52 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id d3sf529991pjl.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 18:14:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580177691; cv=pass;
        d=google.com; s=arc-20160816;
        b=qPYcLlLqPamS9mhT2+vy/RIpjis8zowIVY8V5sZ3jzgNQjWnrhJWx/5eDfdPlIiNqZ
         LCZhMOLH1gSzB7SM96apiY5vcaDssVzA+qU+Kdz6bdNYTeT5pmRt5Pkh++q2r0ySmnSe
         zPmoIcVXOpJrMDljeRAnHlMiEQyDJyeAnITZtyFrTgBUae2P/bkm46lPnGDMUGoGXyg0
         1vEr0r91AZibWWUITnb0rss++RtoBMhA/2oozedzSR5+haQEIqCsc6MsJxtgA+r/wv87
         GqOfgCX4WnUTKP9ur+W0u85G+dr+ANFuP0u8SoZdGhi5s7bf+4LFnRq/MT58WGbrEceW
         IEEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to:to
         :from:cc:mime-version:message-id:date:subject:dkim-signature;
        bh=2ygBQnYYjw7VoriduxD7EIuKZWfiRE6sejHVhmPiSag=;
        b=mwEPcOEMWKCf5apP3DCHNvYJeQCeqYKLo4dMmy0y9VK2vDhG+QN+ZQEYSje1h3zL9v
         1AlHZC9WJwSsieyV6JsBdzKRcj8LjU8niGp0MnzngU7ep+OeSw1Xpxq9BczwN5F1sXVc
         6SYOUpa7pIBA81VearbbhaRnDoiRotOz/zyO8cq1JpsRncjwCMIcpwONTzkV2RiyDG3Z
         eVlrI9M4gRCT4S/6k9HzTSjjOp+UIubU/JyYfKfIpgAxPh68AuH3yK3MueJ854tEG3iK
         x4pQDRHpLBQIhuvCKinoGhr9GYF0CFiUWPtTkrB/IG957CFIbKzqSjOAUDPh/sdJe5au
         4OBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rnj6yTlt;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2ygBQnYYjw7VoriduxD7EIuKZWfiRE6sejHVhmPiSag=;
        b=pqu4NX/9gFrOGkiqtyOZGpyoztfQuGBFytFxEMVltS7OqyME0/ly8q4R/e0pYWL3pS
         quXZtQcSQFmDVcyv6um4iKYEs9Gpf+jNlNNTgCDuP3/FFVOalL8gjUrl7paRg6mFqzV8
         ucxQMw9dboatWGgOozjPtzRGOzWCdsQzUJJxEqBba55WnEdpZClSZEinnKGFr2dAA1Nk
         sP/0mzxgM+UHnJ3QIgGl3VcSPdn/OHvzChZ8AznzB7W+afGmkQOJEd3qadNKsLeJPawr
         Uo4/WrbqhOi0oOH2wQDr6Jl+2AYh8sqVv2GpbKgTL2BnySLpH6t8Ss8I0owwW2/qCZWP
         9YSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ygBQnYYjw7VoriduxD7EIuKZWfiRE6sejHVhmPiSag=;
        b=Ek4C/zuqan9OpUqbp+JYSBDpmLBYpAfABqFcEaFqh/wA8Od3J267LSBaAYSatVLVLy
         U+8RncKNyY5H2Oy0/q8wFaYCh8uAZ9SeIiBkJG834B3B+5XnIlVfWFQ/68xT+8A667bK
         o84jqIUsyr+cwGzMQD4SHhNzOfe4BZg873a/0LtEnII2cAFAmutxn70SgjL5OOkSiTA8
         8nGAYZM0BFKTvPBsbJr//iO9O1LsDW9CsNg03bHaNpD2ObrcXXXD9XRuLuWpFQH6m0Pq
         GhPb5JwfhBxmjjRLjBnR3VSwt1JazrzaxZ9MCbsIKumS/by4CNfC0roXkxRhPQSCslPd
         i7Sw==
X-Gm-Message-State: APjAAAVH08PBa9i4xud+hpZO09oLKPgkcNw6iFK4OSXSuE+5ddB0ybQk
	iyWalIIZG9QDiKiz9egGkqg=
X-Google-Smtp-Source: APXvYqz+5Xo2Xv0JzgNGyNFNPqAR2vIYPHupgqdfSd8FbMUUXFcbnm+5rDbc81hn3Jm6gInqAMN5RA==
X-Received: by 2002:a17:90b:11c4:: with SMTP id gv4mr1960200pjb.126.1580177690535;
        Mon, 27 Jan 2020 18:14:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf4a:: with SMTP id b10ls5407386pgj.0.gmail; Mon, 27 Jan
 2020 18:14:50 -0800 (PST)
X-Received: by 2002:a63:27c4:: with SMTP id n187mr23300509pgn.305.1580177690029;
        Mon, 27 Jan 2020 18:14:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580177690; cv=none;
        d=google.com; s=arc-20160816;
        b=yIRifOUxmYwDb8mSQUPBYkj7iYAm/ylaic3Yg9mP/M1h3KkD/S8KSDvgi+8sMYodpd
         Hep6BdQA6fR3isXCDmkoTl7QeE/3xeSNVutYlsqi4RBR5h25gjL/9yRbacrJrVLJ4OE5
         irI4dG+EZardn4w9eLHG7wJYpDBfX6jMzIvbdyGIRDfgObUQ/EV0m0aSY8pD0EKfqFRW
         +fsgYXlQqDPuuy01uKXRvnVUdLA43Il9pZIpg0bz8BZbId2njNsKumCR8oQBhH6KZOMO
         GzfDiQPs1dgaerqphe3aEabHhP74OUjw/NpEgcBopV20Wb1wwJEAXsjgo/8Y7EnVH3pO
         Omjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:to:from:cc:content-transfer-encoding
         :mime-version:message-id:date:subject:dkim-signature;
        bh=B26eSG9gMaHSxZUV5pLyS5i7Lt3Ya0fKdNJyMPYapJg=;
        b=vbKU3V46z0hlyY18kZSqvksSxj8HTTASQU74/xbvsajtSIwK9ZogXF5WXO1gmKOxzW
         e923OgyIEoe+3na41nodnWThIUVRUGTrz1bnKeXXlTOFY4dabDO0uCEUrVx3ScmezCqz
         KEW5IARjim3mM5FbDZjcmge9UAypro2kQr8M+8R6jjOrZw9jKTdAGW48b3uxh/uqimPr
         KOY22aNcaKnz7EsIbg3mJopSy0plyaIUArenA4eIY9kmn24Vb+dE2VKNPyDhfxWK5Bis
         eE5FBSRROuKxduM468M5bHPFjEJ7SzOCWqmqu7lAJpnshcOUJfZqlIexamo4DXbCEDi9
         x+zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rnj6yTlt;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x13si984941pgt.3.2020.01.27.18.14.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 18:14:50 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id k3so6139368pgc.3
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 18:14:50 -0800 (PST)
X-Received: by 2002:a62:2b8a:: with SMTP id r132mr1588482pfr.56.1580177689517;
        Mon, 27 Jan 2020 18:14:49 -0800 (PST)
Received: from localhost ([216.9.110.6])
        by smtp.gmail.com with ESMTPSA id x21sm10370389pfq.76.2020.01.27.18.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 18:14:48 -0800 (PST)
Subject: [PATCH 1/4] selftests/bpf: Elide a check for LLVM versions that can't compile it
Date: Mon, 27 Jan 2020 18:11:42 -0800
Message-Id: <20200128021145.36774-2-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
Cc: daniel@iogearbox.net, ast@kernel.org, zlim.lnx@gmail.com,
  catalin.marinas@arm.com, will@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
  andriin@fb.com, shuah@kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>,
  netdev@vger.kernel.org, bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
  linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
  kernel-team@android.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rnj6yTlt;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

The current stable LLVM BPF backend fails to compile the BPF selftests
due to a compiler bug.  The bug has been fixed in trunk, but that fix
hasn't landed in the binary packages I'm using yet (Fedora arm64).
Without this workaround the tests don't compile for me.

This patch triggers a preprocessor warning on LLVM versions that
definitely have the bug.  The test may be conservative (ie, I'm not sure
if 9.1 will have the fix), but it should at least make the current set
of stable releases work together.

See https://reviews.llvm.org/D69438 for more information on the fix.  I
obtained the workaround from
https://lore.kernel.org/linux-kselftest/aed8eda7-df20-069b-ea14-f06628984566@gmail.com/T/

Fixes: 20a9ad2e7136 ("selftests/bpf: add CO-RE relocs array tests")
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 .../testing/selftests/bpf/progs/test_core_reloc_arrays.c  | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
index bf67f0fdf743..c9a3e0585a84 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
@@ -40,15 +40,23 @@ int test_core_arrays(void *ctx)
 	/* in->a[2] */
 	if (BPF_CORE_READ(&out->a2, &in->a[2]))
 		return 1;
+#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
+# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
+#else
 	/* in->b[1][2][3] */
 	if (BPF_CORE_READ(&out->b123, &in->b[1][2][3]))
 		return 1;
+#endif
 	/* in->c[1].c */
 	if (BPF_CORE_READ(&out->c1c, &in->c[1].c))
 		return 1;
+#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
+# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
+#else
 	/* in->d[0][0].d */
 	if (BPF_CORE_READ(&out->d00d, &in->d[0][0].d))
 		return 1;
+#endif
 
 	return 0;
 }
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128021145.36774-2-palmerdabbelt%40google.com.
