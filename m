Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSPZRP6QKGQEHJJWB4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 042E72A6D8B
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 20:11:08 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id e23sf9063587qkm.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 11:11:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604517067; cv=pass;
        d=google.com; s=arc-20160816;
        b=qEDpbNPBQpUAcR3T4P+cKYSdDstyVbrSW6Fxs3kKD5GAJCQYq/b6V2dgOSnmxlDAK1
         cAfWAGryQNUhB8dukWN75Hqy7wPqzKtjOomCTzIExk7uehu443oWnSeOJwrEDelp0SG0
         VXrUSP7zZG9MFq3RdC7u2loHdlk3oS/YN0aeODkLZkw+TGoIzu7norzdqj0P6IEBkZVT
         OX3rS33fnHyKHlp0UMnTHmNeqFxfyDmUFmbDiwp2wFl9kRs3CkS1NoEmyriNvTm+8DAF
         D5wTx5uU94St1WpxXCYbNADxdvvkZGLWKORPyed92rqPA0ABYKYXgqJby8P0I+JMrzp1
         AAPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=2bRKBcEjUJ/aYaYBIcrLJGTIxTiOkRVBjgH3zZ4Mvu4=;
        b=mROFPEn2TkZrKqZyTBpxU1ryavRBEBgAmk7jgKS+pKCTx+NvFbsYzW3Slh1kltPGUT
         g3jPNWJVdFVNrdT74saLhjdI6C2UNrfm7hwuM9POAF2aX37SJbuaihMXqH3UG/+bJ3Zl
         UbucegtVxReds+T9vof81wxZ7IjXjfZL4NEN2pT1SgzuYN5hazwKQjhOoliMxQaw+KPv
         22yUjbyoWPO3OSSEQ6gSDCxeP8qcekIhUY02CGNQxh4vUQcjvMT5I7oR4cZAxg+NA7c/
         k6cZlg7kmVNHMXekrm5i6yY5u/0vZedVpA6eSowrWySPxb6TAJ7K6394lul+L2hKa2Gb
         ohWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EsW35Zmv;
       spf=pass (google.com: domain of 3ypyixwwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3yPyiXwwKAFE6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2bRKBcEjUJ/aYaYBIcrLJGTIxTiOkRVBjgH3zZ4Mvu4=;
        b=PTq6E/LInCnNBbVKurdU8bTLAtvOIYMR4WaqS+Ab9xIubkQei3yDyafDxM73QmBStm
         CH10OGyneYKrll1TqQz2+52LHPgKCnJ84w3Ge6dDHVYMPJAkjUjAvYQi5aY/P0n/bghI
         bDxIJmwzUtlhqjgpyDQQC7E3O0z4/rT8lXUmgLN9zTdDMlRfFpAgq8NmrwnNGwORi0Lz
         L3mAVh6zsPDXF/bZrGV7gJ5fk0e3F1mvkhCUsTtXQdhFM7tBx8V2uxAnePqFCf6oX/u6
         ZDp90Iq0QQlToJN6au7IyoqdcHn3DUiC6z8oiJUEO9/nBO1nTcC0tzIdFCP2/31bIZcm
         GwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2bRKBcEjUJ/aYaYBIcrLJGTIxTiOkRVBjgH3zZ4Mvu4=;
        b=k9XmVMWs2+E9PVAvwHdlbRFmSKIYAoEaLisfaxFzli/7nGC7FbzYCMlWNLCQwVpaUm
         K+GZGMraQDkoSEA6V48XS1/Nz5sFDu/PWuyR3Pqq0ZvENehYO66IcbdhrB+Rzj2tjRA2
         qt5PDXF/dc+wwZR4kx/tt/3worfpwhBzS8frfIFyv8NX4uH3ER0Ho1le6JgSKqOfawTN
         iyl0irlE/cchO+1cdaqb/80DXQjdlJp+PHtJQCN6uYxwCwIAbwEXDgj4+GhYyu+c2BYf
         wszMJDyvo4BGl4CxsdEDmmcfmF4QTWtr8pWLjLO/bPNoFCO7yLYpAdv/2IPq/VGu8tCB
         xiHA==
X-Gm-Message-State: AOAM533zPcq+CakJDjbvEnX1Hu7FgI/KEcmwZBCVddMjVJS8m/GwLDlx
	Xk/xdg2U4dtAxaN0UFxXmVo=
X-Google-Smtp-Source: ABdhPJw1PuotEp3ed7iUIIDkOWXX+eiU61KzQS2McYYXoKUqy4SNd5NaDyA1xe+lWpThr8dZtiiryA==
X-Received: by 2002:a05:620a:1591:: with SMTP id d17mr13453007qkk.258.1604517065883;
        Wed, 04 Nov 2020 11:11:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:a8c5:: with SMTP id h5ls835813qvc.0.gmail; Wed, 04 Nov
 2020 11:11:05 -0800 (PST)
X-Received: by 2002:ad4:44a8:: with SMTP id n8mr34552545qvt.29.1604517065370;
        Wed, 04 Nov 2020 11:11:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604517065; cv=none;
        d=google.com; s=arc-20160816;
        b=ORM12v5gCPq0ab1F5Vikauoewr/ht3A6yP+sb5dc25UdqC8Av+E4T61FFRnkJjShdV
         wKsE5S+EYtWeGcKQ3Ei0f0kc+bbbJ/iADVeFqfnKjiQq6HSiEr7QRFQV1aRhtnRugGo8
         CkV0szEXmtX1m5iJZrGJbmw2QTql4A3plPq7JbqaRA8WPEA90buq5Ylsudym6sgueb8p
         CZ8BWEWuQshqfI1LkgDPnA2EZKQykdLvkI0+evbjkAZxCz2NDFEdAkeSvhCKHjsaBMXF
         8pI5D6HHbdq4aWacNBT9NgV/xqiiC8vmIG2r6wAaF2mnwVZh5V1hRV8GjVmkL6KxgqRj
         HwWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=gz5WtjKs0m8q7p+Y5q8+JmbEub8VEm+/kecg2iLZjKw=;
        b=qGsB9+t55rd83UyXSBFaSDQZuzhHu8B0yt3kmibwCuw6gsHzt2DlRt5oLMV5TD2Yfn
         J5R49IAu9M0qKH+ZMgUJN2LpANQZm3IRUZ9oIORUXzfAJ4XLvWW10kEsYZNBODgI68xS
         BTKI+dBAE8E8kzRTqUgYnYOwG1yb0GPHuxwj6oagadW3Q2rJ8q00KV+z2M6IU/VODVxr
         xMTBpj93oFpwvIvXS6PgG8MiAvYnWU+Zn0tlFfyY00ogWDY8iEZYqkHyNga/9OLaaJNn
         hb83aKRlJ6RlpSCEhQDDNSeMyN4W4E86FQCRLu4uYehFBiCqEo10qYrb9siXHjPWmsbH
         16QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EsW35Zmv;
       spf=pass (google.com: domain of 3ypyixwwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3yPyiXwwKAFE6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id g19si56432qtm.2.2020.11.04.11.11.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 11:11:05 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ypyixwwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id k15so13503172qvx.4
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 11:11:05 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:186b:: with SMTP id
 eh11mr33319123qvb.49.1604517064979; Wed, 04 Nov 2020 11:11:04 -0800 (PST)
Date: Wed,  4 Nov 2020 11:10:51 -0800
Message-Id: <20201104191052.390657-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH] compiler-clang: remove version check for BPF Tracing
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Chen Yu <yu.chen.surf@gmail.com>, Jarkko Sakkinen <jarkko@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Randy Dunlap <rdunlap@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EsW35Zmv;       spf=pass
 (google.com: domain of 3ypyixwwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3yPyiXwwKAFE6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

bpftrace parses the kernel headers and uses Clang under the hood. Remove
the version check when __BPF_TRACING__ is defined (as bpftrace does) so
that this tool can continue to parse kernel headers, even with older
clang sources.

Cc: <stable@vger.kernel.org>
Fixes: commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
Reported-by: Chen Yu <yu.chen.surf@gmail.com>
Reported-by: Jarkko Sakkinen <jarkko@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler-clang.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index dd7233c48bf3..98cff1b4b088 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -8,8 +8,10 @@
 		     + __clang_patchlevel__)
 
 #if CLANG_VERSION < 100001
+#ifndef __BPF_TRACING__
 # error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
 #endif
+#endif
 
 /* Compiler specific definitions for Clang compiler */
 
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104191052.390657-1-ndesaulniers%40google.com.
