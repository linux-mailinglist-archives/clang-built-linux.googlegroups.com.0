Return-Path: <clang-built-linux+bncBC2ORX645YPRBU5OR6EQMGQE5IJNNMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3770D3F4F20
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:56 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id c88-20020a9d27e1000000b0051abe1bcbb9sf9171710otb.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738835; cv=pass;
        d=google.com; s=arc-20160816;
        b=sK0LxNOKh1tziJdbNOWxtcwhSHvOWwpYGS4HSggXFVRArXLfjTrlRPNj3wT3knG1nJ
         ocQ99S7EbQ2pKBbvn9SXBeGbolMStazzGXop6ivA5H3ZI0ADPDsnqmIw78uk8ZZvYg+M
         YSUANLa60w3WlREPaOgV8sd9/JmptCcPWnvrLk1ZnwbfvMLFGkQDzTq4snGOzfG3BN5h
         CEWYFaad+S0jVHpNM/7qCnv74gvL/dxEwfV2SwXhdoHGLdWeQVjWiPgp3Plu1LYaEGdB
         VzmSdg7bwZbkE2ZtnxQYIXlRt48cDRZY/h1YY5V2Muzg1nd5oCsbig4WHuXKYhjxn03F
         8ANQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=D2CKbTlmHB7DY84p+abq1Uole2rQhIVMV/qYlu0reSs=;
        b=b98gtjyB0KVW+jN/QvOYODbGdWbGKtHtdiMkvp4w+l6qyN649c01Rk+z+syKiLzNku
         zgkwxfKGaGHldqLUSA774DEjMzUVBJPri6oaK21i+nrvvnqt8wfCxvqYfCeZhUUAJold
         a4X/ODO0cxeTZQEw0LeGNuhCJypNpFe3gHhBBc7uapJc/RbHkLuq0gsItWyjdqRCzzVH
         zyTfFggFjc4ytGskQ5HsRYBPuGiFKi2FruvaKQxjFN9dTGz1Tc5iwTdaP+vVLiNhH6gF
         UwxKJcJWrUIio5rNyhbG1h1qUX3F6V1mAIq8bp4LcAO1yRne81IMWRalxnMQU2OGdvqC
         4keA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j4Fz5nKf;
       spf=pass (google.com: domain of 3utcjyqwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3UtcjYQwKAJ8R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2CKbTlmHB7DY84p+abq1Uole2rQhIVMV/qYlu0reSs=;
        b=dMWhrIwlwROy30qNHhDV8G5+9y8Ar+rOZ75G7NuEuNa+uXUKSwS1FgC6iBE1+DnNo1
         ku9/fSHZoaZwrysTTwLLT/QWkRYIpVSY7f5/YHujQrgxijxJB9ijvbGVlbUQsrybmkGW
         ZLFFZOdtqHOH3MMBpSJCwWHhfEjFRijBIVR/xLM1DokPb0sdGiPWEmbzsyVx3djD3vzu
         WaQ3COQNXzI85qah+UYz5/q1jkftmTYhgkRvHevVH+2ute5jy831ErEqOd7bKKRDT7d9
         dadsM/Peo8FJFuXZFGR2F/+LSlKjRiiG/EEj8T38bhrHim2LtY5PM3japSbll6KF0AAL
         xbcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2CKbTlmHB7DY84p+abq1Uole2rQhIVMV/qYlu0reSs=;
        b=au/7BMk8AL/48fO7bk3Qs1yp1BJ+BZCaBut87f1+op2VrQVMx+9WEydP0f7T9eS3vp
         +7TQHEjxrVsp9+8zTT7YVRcgK0zkAduVGa+nMCxTN342C8WYzWKeb9dEBAmWjYNz2raQ
         8CIAThWtV0om+X/iZQgBOmgLpegco/znuAszffmi/ZRYl0IDb9y4/ZkrAnBQiVQC/qhL
         45jc19hlHkFpaHthfTmAyuaHkgbD/6jCCccOOJPRhELace9pkTahyC9HotkrZRhwtWaN
         yIbPjykhBbidsH7tAD86u855yKP2UJJvnWZPoAcaPHzfVcW85K7t+r9F/C0oZV92IU7W
         QCaw==
X-Gm-Message-State: AOAM531dJ+6Me8nuVT0OyQwzEAG0x4gye7pVVVvh54CPZ/gifxDRmEEH
	l4aZxwRGQkYttA4DXCseZa4=
X-Google-Smtp-Source: ABdhPJy2gX9G95MVLHX2GEpJLRRtxHUwIm8cjhV4IYnJibxNJsU2ShFSBz1elYeVHzzG7VWFO38eFQ==
X-Received: by 2002:a9d:200b:: with SMTP id n11mr8988388ota.30.1629738835160;
        Mon, 23 Aug 2021 10:13:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a83:: with SMTP id q3ls2798618oij.9.gmail; Mon, 23
 Aug 2021 10:13:54 -0700 (PDT)
X-Received: by 2002:a54:4804:: with SMTP id j4mr12125724oij.85.1629738834848;
        Mon, 23 Aug 2021 10:13:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738834; cv=none;
        d=google.com; s=arc-20160816;
        b=QfyiGMJOvKxXB6RYxsyoo58LX1rVcY/FdIzviw6uzER4qm6W6/SRMu+MQBzbApAm0G
         jvdZvN2E5DU5l5rRbj5yRGz7/p3veIMmE8ZRfzFudt8gfOFgQfwWCvodzO4is1DP8QhY
         r6liHtV2FZNuM8z0oEviBiV5VRbnZVfFTU5nwML43Gf/gUwUWAQZfRbYIC8HdUjfLzz/
         DUtyEuY9BhjWVSkftszC1oauISlF+pAFlAcWFho+HadRl+SV6DlGAGGJKGUf7m1NFEVr
         K0aTKwlAMm5wuO+Smu/NjrKYgP+EtRyYIav5RQAnxNDQoY37wXALNQ8sGzxwpz/eCsHw
         eJiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Rn4Ov6fZtIeuYv4qe0duX3eTx27b0q1rGV7B2MFXCkM=;
        b=tgCS4HviL+drDjvweJdCNwOOsCe7QCHwqe+Mp0+eFjCKIUj0ThSXvPw8Y1gj8v9xGn
         FTpKVU4LYlVtMo5Z3QRZEE5sWhVGL3AOYtBFsb8WURGD6ZDEIENPHZ4PI+eydX2Z7LQV
         IomfBleSOKNGOf9svaiElx7CWegEE9SXAZ37Y7Y2heGVDo+itWpCO5UdxD9E6aWGktCq
         cPzzsXZh1lNyxiS5vE2oCPPcQf73IbZ6kHub0qc5XZsQ9qUgJh7Vzgnkq0YFULw2Smjx
         ysRqMZzwq0qLBbSZHD6Xada0ZRtPJInS9So6FW1WU7AVBiS9H2uOh55zv6YkVNYObQRc
         ydyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j4Fz5nKf;
       spf=pass (google.com: domain of 3utcjyqwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3UtcjYQwKAJ8R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id n25si709491otq.2.2021.08.23.10.13.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3utcjyqwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j9-20020a2581490000b02905897d81c63fso17009304ybm.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:54 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a25:55d6:: with SMTP id
 j205mr46404895ybb.395.1629738834582; Mon, 23 Aug 2021 10:13:54 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:18 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 14/14] x86, build: Allow CONFIG_CFI_CLANG to be selected
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
 header.i=@google.com header.s=20161025 header.b=j4Fz5nKf;       spf=pass
 (google.com: domain of 3utcjyqwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3UtcjYQwKAJ8R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
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

Select ARCH_SUPPORTS_CFI_CLANG to allow CFI to be enabled with
Clang >=14.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 88fb922c23a0..c487c482ed67 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -107,6 +107,7 @@ config X86
 	select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP	if NR_CPUS <= 4096
 	select ARCH_SUPPORTS_LTO_CLANG
 	select ARCH_SUPPORTS_LTO_CLANG_THIN
+	select ARCH_SUPPORTS_CFI_CLANG		if X86_64 && CLANG_VERSION >= 140000
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_MEMTEST
 	select ARCH_USE_QUEUED_RWLOCKS
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-15-samitolvanen%40google.com.
