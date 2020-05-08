Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBX6D232QKGQEBU3DKXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 1166A1CB6D5
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:16:01 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id x6sf10287505pjg.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:16:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961760; cv=pass;
        d=google.com; s=arc-20160816;
        b=KzuPgM/kLBzwVPnKjgOOEppxCrplK0jaAplZUSGvNDv/ZFttUVJ96ac5ANQ2llhH4r
         m4+sFpEJBPFgKSuFMClLCSPanCBLRfVhJhCMVr5eXEGXXvxxKx5ByeSbrZQisjeuYbPi
         hig4RRgri98eQPn1Y9YphDu9kETGbsLHRZFrS6r/Ecs4lACRSWjAIAZVP0E+ZUSqRtta
         zu3EGeHovIHemdBndLpjG85vwAkd1YGu8lGQsKrjDkakf/LYg7FdR0FYDDALyQlzykrK
         uRJGnt2Dh2uQR6g4+VvHmXG5l8D9GG3dVfxe3+gRtpZ8X5bDJsoHr5IsyjKZV5cW3pLM
         QzPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=tHa9hEZjpxzeWgaiajBdoF32ckUjMhysJmo1N5z57w4=;
        b=rjb+cxv4TnJm654iDmvDhiR0JLIGbIXVTVPUoY4+8pE50YSfLm3eEnI7rKEk5nJL/J
         A8ZxkEsl6xg+jb9tIiFiRAMfrb1Zxes7bM1YeQNjqRk5acvyTKObIbTA65Od7Tb3h6M7
         sS8jd7l4k+kA6GxRLc9lJPZlc+YbMFfSsf/M6jBujKnzwDopTfohhYJ0uVwpGoKao/Nh
         i1QmlqhIzxxc1tWHO4aua8BpxmK7PyXSirDNDKpFXABIe+7D+F0Jy5/bWu8eAHqdtvtT
         UpwOHcCsPvI6qBfthlz47SmcicjBFd2aGH5h6Yx1Fa5Z6xkmt9E+oxUaDlMdeRlRHhl0
         jNzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=OUaIAWfx;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tHa9hEZjpxzeWgaiajBdoF32ckUjMhysJmo1N5z57w4=;
        b=RUThyxFNR/PklOGU2ceKqbhr9hCJEoExF72oLjMPs0wq5JK0XXcdD4TxaWtBxrchc5
         4iXLxLovYllD8AHb3Re3Jbfb7MR0L2jk/pLub2fZb1sMh5kiJ0zUa5tMphJWFs/4tAnT
         sMyygLUt7wTkaxR9g3SaKbIwLTcNi2kxfQQCU9vkfzw3RXPmKqcI0caxxl03VQw/Lv1I
         GZRG+dgHKfir0gb5WvtBCT2DBeiCLiAcAj7rETQ0pE7nwKG4W2Ge/BVgE8rcBd/TR+Zr
         OI0m0NdqzF99ddjPVtbIJJOAYA/NX/XmZcivQVikW4I01f0t+zZIvd3o9yGGLfeuwO0V
         wvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tHa9hEZjpxzeWgaiajBdoF32ckUjMhysJmo1N5z57w4=;
        b=fx3HweV+N6MiSXqdkdOamdddvZ65cS5/bFKsieB7pWIzqc1BXsjSQBZunJFZwSzahv
         +O9kwjX3ybwfymSg+VL3OwuhwmDSb8raEA5e2bJYo0pSW0ZFqIJcwVGhm6BdoWBxh8m7
         td43TFDJ8riSFRgXEGH2JBcdN0IeE3+bv4/HNfWpFiRYY2Ax56qgQOh7Scn+eGEuxk7P
         A/B8bC06EctGOG4fyVAHg7qzBMj++dTHb8+YpcDAdOe7ZLIdoGivV/doGyInWDalPdbS
         jU11TW0yjpZK6VNG/M5tVmmBDokbkR/0VayHd5HgWcfk3TEHccHVlhVBiTfzcg2wR6E9
         M+Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubRJn2QEqCYd2rBY4gBfsjpGm6sCDJtDwbcoiZvRtcO2GK6DsQM
	efLe/AyiOOmQyZ/2VpAq9w8=
X-Google-Smtp-Source: APiQypIhRP0YT2QZUYg7sZIWNlhUJ8OAcj9lj8g3SGBs5ba3Ntj14GDl5xEeq2xqMFtgrNjpUm4K4g==
X-Received: by 2002:a17:90a:2ac2:: with SMTP id i2mr7396048pjg.91.1588961759549;
        Fri, 08 May 2020 11:15:59 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls2052037plp.11.gmail; Fri, 08
 May 2020 11:15:59 -0700 (PDT)
X-Received: by 2002:a17:90a:8815:: with SMTP id s21mr7628029pjn.154.1588961759146;
        Fri, 08 May 2020 11:15:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961759; cv=none;
        d=google.com; s=arc-20160816;
        b=vh5dyzI/zka1uNhtQU5XKDPDINgD1kz+0Mwo2YeCPO1iXUsIU/duw+h7EgrXRhmO5S
         Ve16YV/7XHKBay8MbVLpj/32K64rH7DvMrXH5MFs4ZecOdEBzYbXeR9dOip6H3QlA2iN
         L92+G4DMmzbnEfjcFcDaNIpMUERAho+7i7RO7O6rHeThCRbScq5h7ICnLkCMAKoPj87B
         +8tZLv3cxGmndAeAKkxN1fVDfqQtzYhOHJTTYSkw2y6Jen/+KQHJXdfb0ucW7Hhol/Kx
         p4qsZmb1MhZ2Sza3bO4+J1ZVwYNJU+CDkBC9Rs/+EYrqPDXaPZqvk26NxQufdbzVWK5A
         glog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SpXTpjywTMwNg9TSFFzsjIj59xv1CBVoV4EOvzTnkkE=;
        b=vtDuwVh/eJif/K2mOveEU6ET7mHtlkIiJrBY/TlQLKqPAd9pQ4I90Jwqvl/aGIe0J0
         ifeV7B2HUBrmMhjZkgSpKHHgPkc/FezD9c0Pl4MANLUIYQnz8FeBAEC3L4Tjv9A67agp
         ZeXnFqBiIH9RZj/ocJIO82RZph4c21CQd3Aiv9n/HKX01S6T39AZmi3zN3mLkTvAkGBx
         eE9I1DACg8ZDLx592TF0Hg3jqgmYawr2ZRhNwHBXC/qXF0PDaWBsraG+I8GY5LEud5Nk
         c4k18+k9898N/w/SzZT9qdYsC9XTwUuTMnPLUgfbGr/nm7v0s2hvG7xEM8MadUSykMjb
         QJ+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=OUaIAWfx;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id a1si160623plp.2.2020.05.08.11.15.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:15:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t16so1085897plo.7
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:15:59 -0700 (PDT)
X-Received: by 2002:a17:902:9a43:: with SMTP id x3mr3623548plv.332.1588961758604;
        Fri, 08 May 2020 11:15:58 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id e11sm2349463pfl.85.2020.05.08.11.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 11:15:57 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
To: bpf@vger.kernel.org
Cc: Luke Nelson <luke.r.nels@gmail.com>,
	Xi Wang <xi.wang@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Zi Shen Lim <zlim.lnx@gmail.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	Andrii Nakryiko <andriin@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexios Zavras <alexios.zavras@intel.com>,
	Marc Zyngier <maz@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH bpf-next v2 0/3] arm64 BPF JIT Optimizations
Date: Fri,  8 May 2020 11:15:43 -0700
Message-Id: <20200508181547.24783-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b=OUaIAWfx;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
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

This patch series introduces several optimizations to the arm64 BPF JIT.
The optimizations make use of arm64 immediate instructions to avoid
loading BPF immediates to temporary registers, when possible.

In the process, we discovered two bugs in the logical immediate encoding
function in arch/arm64/kernel/insn.c using Serval. The series also fixes
the two bugs before introducing the optimizations.

Tested on aarch64 QEMU virt machine using test_bpf and test_verifier.

v2:
 - Cleaned up patch to insn.c.
   (Marc Zyngier, Will Deacon) 

Luke Nelson (3):
  arm64: insn: Fix two bugs in encoding 32-bit logical immediates
  bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical
    immediates
  bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates

 arch/arm64/kernel/insn.c      | 14 +++----
 arch/arm64/net/bpf_jit.h      | 22 +++++++++++
 arch/arm64/net/bpf_jit_comp.c | 73 ++++++++++++++++++++++++++++-------
 3 files changed, 88 insertions(+), 21 deletions(-)

Cc: Xi Wang <xi.wang@gmail.com>

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508181547.24783-1-luke.r.nels%40gmail.com.
