Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYVGW35AKGQEVEYIZHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C2D2584B8
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:44 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id j20sf2294481oib.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919523; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTPa0rL9ZYPQUBG9KDaxqb6ieq3lG+CmRsovkZrFFZi11W1IRN/KK2cNmfUqP09Cn2
         8HNAmlDOdyf3mJZr1sd0AJbdE7NK81Icy3mWdj3Spzdj2FxtCeCbNgejQ8DMZZ+afwQj
         ZjKn1i/WKaqVRAyDhGPqA0ohILLlUab3d9mizintnrTTb1GjpRdQMucBzS+yp0I/vUqV
         N+axlTDTJFllipf3tL7L7YpmX+6xxMB65pQkQIGDmQ9iuuogDcsXu66kcXl3e/7VQJoC
         yWbiXb+if8tILduNwcwT9WYhJc1dUkyMviVFXT934RuL11JMRJ35X5BVZeE/wIfDMWNb
         lxhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=T55hVc1/9F38KveHSKOpDfqriBDUZhclR5Ecryo2jsE=;
        b=nPX7w8MKyLmWCHXt8KOb4vOFy8vb8478Bhrm1UkXGbRJ44enKg1X5Epteb9JeLy46+
         taHMT5qObJa/qEzzgc3XiclicT8LOxivEV/NfAcWuVT7C/UD38GokiUv93l1XWF3i5hk
         VMVNUOVl6D0UAAGthsJ0WwhMxhK8FZcWvEd6KcO/Ekqc5090XtH+q0egzedOBPMhUFBy
         jZvhbxLWx/fVspYLk5icdIUTCBMgm5jzH53EOU3zkuzk4/6PhWlUa6AfXNV/z94261eP
         FvAqvD3iU9yHZkAG7SBJfdxqqi6Ike6isJxrb4ARMRTkMPDct/GqzN4v1+xjTkc9BKHG
         E/MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YjC7Z2lw;
       spf=pass (google.com: domain of 3ypnnxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YpNNXwwKAL8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T55hVc1/9F38KveHSKOpDfqriBDUZhclR5Ecryo2jsE=;
        b=cYoFWPe/buFMYMmoowzoJ3xwN1xLxkeMUYnNCJxQ6ZrpSchS67uHko46Kno1AinXiI
         geisILHOcQtbPRyj8G2vX754ubFhW+ha4EbpxThAsOlgg5V8X4w7mahfbGyz9/OXFj0j
         d5S8fkpzvqKaNdMShrckBJsZZT9aIxreMlMerUUwmn2S+KFqaD3lkdc+hhvYft41hyal
         CQFaiexgsg4CCwERUOfSCZc8D8w1V3HfVBflqZUfklFrfZS8p2Vih3Rm0Zp16OLPGQDU
         TIlorBkkKRa32/3XY5Drhqjku2hXowwtpC+W4h47ttO7MFYiKMLOximWIP+Mh9tIoI47
         6w3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T55hVc1/9F38KveHSKOpDfqriBDUZhclR5Ecryo2jsE=;
        b=pSd3Rgsfy2HggyPKqsBwYc2VPyV9cj5Ly9qc17M8x74l4lssBPt79EpQHgADfEJUqK
         jPtZ4FhPE+1aY16cnyMt96FZDNs8G898gDETtdec1DEO2YUlUTQ5jmfSAyBb+2Orpk2P
         lfYZVh+U1v7kjqlzoYxnc0/lqfNt6Uq/ZDOtzA2keTr3QsstDmvELI+FGJkAtAUtHU7e
         kVOPZn756cumqxVesv5GoSMMYiVTfrIEU8mQBXejruGiCX6ngoNUM7DJinFOhM86ddKc
         okII2uDLrYBZfUeEug0cGGw+Rz3PLEDORzt3/y6Te4jojUkVu6eO2sU9GUtJfXd39Fxj
         /n1A==
X-Gm-Message-State: AOAM531N5cfo8QSC7zgoPabvGb+uHpvfiMEqJoWl0FGJ6Uqg/ZZgq2tD
	NiOEBm40ato1uF+OJzwL88o=
X-Google-Smtp-Source: ABdhPJw2sv7kfHRs9v7IF0HNI6r/RDH2H3RoAl0jrtvULxsZLvoDAj9W9YIGbbmiQad7IrVLyiv4Kg==
X-Received: by 2002:a4a:c486:: with SMTP id f6mr2498118ooq.21.1598919522959;
        Mon, 31 Aug 2020 17:18:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bc3:: with SMTP id 61ls2006095oth.0.gmail; Mon, 31 Aug
 2020 17:18:42 -0700 (PDT)
X-Received: by 2002:a9d:10d:: with SMTP id 13mr2776513otu.130.1598919522647;
        Mon, 31 Aug 2020 17:18:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919522; cv=none;
        d=google.com; s=arc-20160816;
        b=h88ygkVosqb5ff7SOYqhCZ4FhsEll9hvPYGqpVHdEU5BubmSsJEsS1+qpbJ9hJ4aiL
         L0Ut3nGcN1poM1xUgN6olAqea7Dq2fMff1uW56RxVhS+jH/U+CpsmbeTDhq7AwGzmMxa
         OlH7K8iDV8RKByT3sNTWv62YLg51eufuViqJJj47BP3Hqnf2dKz82Pq2GqPfnTAQTbCs
         APmk+UTDUQsKp5L778mqZLylzIdtDibiQkfxf0GKFasnAczcwifjU9DPopekjjtWAEv4
         hYq1LfKjtC11lAlzrPTshBc17cfmcFGid1vZ18hefp3A3KshbCmrIJE596Y13pIqK1Gv
         Nz4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=pi3QdKLaSBYHipbQP2OJPwq0eZQkVdLTCOuN85yE044=;
        b=WipYJP7x9uLY7jc2qWEdH1bDJwhRk0GHQnTGx/R2+MfmVMVlyt75f2I780dg5Grq2g
         73nOyh0FObBXFYesCy7g/MpmddfC4AxIcRxQYlL3Dkt/SycClf4kWkg8LtdrBDNRNFV9
         RXEe2t4qA+ySbnjWVnt/o2BUz7b8MPzLMb/oUMwuof5go9wP6TYJJcNSQanPMvtO3Msz
         +V0WHPn0230rndI1aAfgehD/I6CQikR0WTR5J6tZGBbBCkOZoZp+6+cSE1VuKQJBU+R+
         LCufMHhNQuLFmCEHPBtaD0owCY8N36/zbldw01KqgLFNRGyWSJwrh7rcckLGqmMTvu9Q
         pCrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YjC7Z2lw;
       spf=pass (google.com: domain of 3ypnnxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YpNNXwwKAL8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id t74si597559oot.1.2020.08.31.17.18.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ypnnxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id r1so11199291ybg.4
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:42 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:6849:: with SMTP id
 d70mr6134021ybc.117.1598919522039; Mon, 31 Aug 2020 17:18:42 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:18 -0700
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
Message-Id: <20200901001821.1126189-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 4/7] Revert "arm64: vdso: Fix compilation with clang older
 than 8"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YjC7Z2lw;       spf=pass
 (google.com: domain of 3ypnnxwwkal8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YpNNXwwKAL8sijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

This reverts commit 3acf4be235280f14d838581a750532219d67facc.

The minimum supported version of clang is clang 10.0.1.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/kernel/vdso/Makefile | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 45d5cfe46429..04021a93171c 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -43,13 +43,6 @@ ifneq ($(c-gettimeofday-y),)
   CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
 endif
 
-# Clang versions less than 8 do not support -mcmodel=tiny
-ifeq ($(CONFIG_CC_IS_CLANG), y)
-  ifeq ($(shell test $(CONFIG_CLANG_VERSION) -lt 80000; echo $$?),0)
-    CFLAGS_REMOVE_vgettimeofday.o += -mcmodel=tiny
-  endif
-endif
-
 # Disable gcov profiling for VDSO code
 GCOV_PROFILE := n
 
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-5-ndesaulniers%40google.com.
