Return-Path: <clang-built-linux+bncBC2ORX645YPRB47L46BQMGQEWU66R2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id BF66336297D
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:16 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y6-20020a170902d646b02900e7147eee6esf11151974plh.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605555; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBO/MDn3UoJIieCmB/S1g0Wn3jEbC0NdCDpq1EqdoGO8vB/SoGtjgkzyjxeFI9bDvu
         1fr1UgDa/q1d4Aj9qrLWhSKSxlnaB+C1XQqEfpKmYP2PAP2XcDU/7THsNrtAbs6uNYzh
         HcyWE932ebMekXaNTRkHomYp146nNFvgaQAE9P1dqKigH08gAe3ezXH++5VwGzGjPiIv
         pcr0zVcOcHUAiZVLe9FYxqvjexcX14m/ORYc2J5E8mXHyjVeU6ol/EPWhs3B6nq6Nxyt
         FF1LZDcKRX4JZhsa0AX/lCoP8gLwa0dRwW9QUxDMelMHXyRPjP5XR5MJDpvNVpgRPzWJ
         +v4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=WwJLI5YUpC844lbKTIcQ6am7ENF0UraI3O4Y6Isb/dE=;
        b=N9Zfgs4UjFgD+VwZfvIiIGA00c4wGl13P6tXrF5vFgSV0EJWdDH+6n+Qh+941H5J4j
         1QUovPjCvOtPAoUokczBPoXAO48PbAOqEk2124/H7LrWTx4a/AKfQwoFlPtKIv3d50pM
         QkS9ahb9mYIl3jOUBB5Bv5Cei9DLQvpQmnLNxFC0npu05XXMxq6o2a1pb6cuGGnRp+/y
         Kjj3BhdqwduK2jEkuuz748uL9fq+uIhbP7s6lGBODbqqQilX43+jjGDynsLKOIVo7RHe
         qh4rkYj9BWIU5NdBRhNDVCmXS5qK1d2D6ezAju9FPt40+jCzJe+GKPTXgysmaQ1J3HHw
         ZLPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NTYpXeos;
       spf=pass (google.com: domain of 38fv5yawkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=38fV5YAwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WwJLI5YUpC844lbKTIcQ6am7ENF0UraI3O4Y6Isb/dE=;
        b=tUYxZBBuHP7PI6pcst0aQE07VFErG27Gz0RcAZklaEVDLZhYsv3eg546n9As52Tvs4
         hC+E+KoMLyXAgdN+wYtPYXUlpz8E4rMs10PqOE1iE0RCB3Bv0fwIIu2b/t99m4ZmeYyP
         LbDqvBHIlcrpZwYsmL1UBmcoUBZPFy7HYqTe90ys79ACORZncTCOWEyDCNxkumKi30Hj
         k6nJwW6SNGsE+RBI2UQutgO/nUqCgpbsQeO3QPZdfsYZ/wARrvrEXNNLg4lTIqtXIp24
         VlAK11PjTJkh97MtErBkksfDYGYO1T1EI/xGJCJUDWkHNDBipbpITY8bq1c6FMhvyCTi
         O60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WwJLI5YUpC844lbKTIcQ6am7ENF0UraI3O4Y6Isb/dE=;
        b=kEzfSp8jM6MemrOfiOmVIcSiqo5cyeOXXRwpYPKLh/c7xCGPFuokw3yZj3Svu9znet
         RN0PxesWlVrJXX6F6vKvr2g3W+BNEf72eO4lsMrW6wGpFcupiEfv/Pfg9P6xM05mrohy
         StYAXDsocDBKi1vz3wzSwHZ1uZPZy9uT4EsXafIqdNnhksZvayVsa3RmGYqBFqORn2zW
         0sC+a6jv6noyEY9WGrUyhgGqT5WsuJQUJ+DgedfjmPutUkbsvVNBmT/OKxJng9BUkcYx
         GjxcmvNvF+3ngqcnzFQuNz6NfzBzVABK1zmnD87ZOVQhWZMEsS41TmvFq1l78fHgd8vZ
         fXUw==
X-Gm-Message-State: AOAM533nej5ot42WkwMjfqUlhpUgDNTvp7QEIiyZ4O3bk9/vcj+DBLoq
	j/z+NFl+KdmMkSw0xVhp5LQ=
X-Google-Smtp-Source: ABdhPJyuSA70K/OsnGBDCeNoNxky5OvfsvymhGIlxwM2x+WrSAb0xSUC4ekt2vpUJq6fzo0WQt69VA==
X-Received: by 2002:a17:90b:1bce:: with SMTP id oa14mr11532077pjb.9.1618605555392;
        Fri, 16 Apr 2021 13:39:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls5699222pjk.0.canary-gmail;
 Fri, 16 Apr 2021 13:39:14 -0700 (PDT)
X-Received: by 2002:a17:902:7c88:b029:e6:f006:f8e5 with SMTP id y8-20020a1709027c88b02900e6f006f8e5mr11646961pll.1.1618605554808;
        Fri, 16 Apr 2021 13:39:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605554; cv=none;
        d=google.com; s=arc-20160816;
        b=cYbsGqhu254DNgWm/YVrXoH/UjExI1uuaXaYQ1Z/bpVEZAEGkJ6gU35X+FF23Y+Yl8
         dRVg2J63UK+l5nxDAFfWMl/L5Yxr+KkwMz4PSFiidsKaQqS2ukR6dl9MAbqh68XabVwp
         J1M7Wym/VsD4Yh2S2ewwlv9L670wUYUg7usTLjakN+04AFHfp2vSDOYD3qIh3Gy8QF9F
         THGK9nWKQehLx6sAtVgTK1bNogNLjhDlgnxls4gFlDGWudWjWh7b0ffu4BtSZzCRmSB0
         STiV84QX4voO1/+GevBJBhl1oRyT9lUqtPsg7gW0zZIh5cR/kCDpjDTeW+Pi3Tqo7iLr
         W8wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FPDsGN9VxUr9HuESYx96922vymwwzjs8QWYi8GhO73I=;
        b=fq5msnY1c2TyD+Q3O4+gdKMhYAhcdfB7qMhkWxLS3usxVAIOnqBrUwheSP7qJYYbxa
         2etawT9yBKml/3cY/t/xCNYVK1zSf2y9GRTmICfoQb8QR71EtrUkQPBphH3c3rPmY+ig
         aIKUQxNomQhyL71Gefcq/i3rf0vtxE1yUz3ciOaU+OkzJfLgCoUgasmzm9u9nxdXI/zV
         cfRFgspFBstP58z7NMjHwelpHfOC+shXrYiEVL8IzS8VBthFyy491oVQCFFEB0eHwADv
         jSCOKcGohpARKYcOa6zHyV/7pQnKIhIlr4gtNQu0kZ5nRnPA0DCO74pAWnlcuPtCh9tl
         52cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NTYpXeos;
       spf=pass (google.com: domain of 38fv5yawkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=38fV5YAwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id p2si699306pli.3.2021.04.16.13.39.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38fv5yawkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id p15-20020a05622a00cfb02901ae13813340so6783282qtw.15
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:14 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:19e7:: with SMTP id
 q7mr10609949qvc.34.1618605553952; Fri, 16 Apr 2021 13:39:13 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:43 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 14/15] x86, kprobes: Fix optprobe_template_func type mismatch
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NTYpXeos;       spf=pass
 (google.com: domain of 38fv5yawkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=38fV5YAwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

The optprobe_template_func symbol is defined in inline assembly,
but it's not marked global, which conflicts with the C declaration
needed for STACK_FRAME_NON_STANDARD and confuses the compiler when
CONFIG_CFI_CLANG is enabled.

Marking the symbol global would make the compiler happy, but as the
compiler also generates a CFI jump table entry for all address-taken
functions, the jump table ends up containing a jump to the .rodata
section where optprobe_template_func resides, which results in an
objtool warning.

Use ASM_STACK_FRAME_NON_STANDARD instead to avoid both issues.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/kprobes/opt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/x86/kernel/kprobes/opt.c b/arch/x86/kernel/kprobes/opt.c
index 71425ebba98a..95375ef5deee 100644
--- a/arch/x86/kernel/kprobes/opt.c
+++ b/arch/x86/kernel/kprobes/opt.c
@@ -103,6 +103,7 @@ static void synthesize_set_arg1(kprobe_opcode_t *addr, unsigned long val)
 asm (
 			".pushsection .rodata\n"
 			"optprobe_template_func:\n"
+			ASM_STACK_FRAME_NON_STANDARD(optprobe_template_func)
 			".global optprobe_template_entry\n"
 			"optprobe_template_entry:\n"
 #ifdef CONFIG_X86_64
@@ -154,9 +155,6 @@ asm (
 			"optprobe_template_end:\n"
 			".popsection\n");
 
-void optprobe_template_func(void);
-STACK_FRAME_NON_STANDARD(optprobe_template_func);
-
 #define TMPL_CLAC_IDX \
 	((long)optprobe_template_clac - (long)optprobe_template_entry)
 #define TMPL_MOVE_IDX \
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-15-samitolvanen%40google.com.
