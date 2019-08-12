Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSF7Y7VAKGQEVLQTCQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 073018AA04
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:53:13 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id y187sf4833702vkf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:53:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646792; cv=pass;
        d=google.com; s=arc-20160816;
        b=ttocJzm3aUk6NxKwK8+aWqk5baWsiBuRYEC5QfyUnZ/fITCKlgRsjZac3lMtLe7KZJ
         KPCnTV3CP19i/cydjhTnCC1y7Hw1SuoPTAfT6/HorzjcMiKy2NHRyougraFdXweXLyZr
         3yDVxazm93SJUwJGvJiTs89/9E3AHtXcWkCRhp/452HW2Gsqx4Wj1CWU3MP2vCi6flwy
         eSiDkhNl7lzp151Ihyye4e/aC6Xn3lgrIUnDzC38c8Pqwd2J77OP4VSCnE53ZUDK5rlg
         I/2ehQUix2YoU8/VoUPoAHW0q+QWT5QO81rR5R13I36BWAz3F8S/hMWZPXGf1LxbLOEh
         uQiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FGjTsioFqEGAsuEMglYL9yFdg3hpv4ruBEDj0/juhNQ=;
        b=C6TrxGh0ADs8p7LH4KMZ1Wf5c7nDALZLBWletwSapjUv8j8mDvRHPiwy0Zwh0XUP61
         4/fpcm0cDfHh4plrzi05ulX/nyXF/SAknJfR2RAXG89mgvYxRlBsrFJfQgXGt+0dQQbZ
         ygketnzny4d+RIUtP9UNtInFnB4M7uwmLYA3TxNjOI98MMSL5xpnx2zQNFzpe8v3twao
         nAFDYufaMd4fHVX3bPM5opPpO6TrqH4vlqIGBUHxSdttVV++fusXr0YOzRipSYcPO7nt
         nqv1o9IYCF9a08dGvfL8kTtM4hlDaFOvwUjSbZhcHB8RyOw4IMU0cfRPrjQQylt6xTQK
         maAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oZgJljpX;
       spf=pass (google.com: domain of 3xt9rxqwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3xt9RXQwKAL0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGjTsioFqEGAsuEMglYL9yFdg3hpv4ruBEDj0/juhNQ=;
        b=n5mBpZaDTctcH/46yQPOVsPW5TviqU3XyfhXvj11aNxZf07richLjBt+40Y8DmjbPL
         r/KnOCMMDVW1fuoB9YEpo1V8lzxMk7EGOnTbFFG1cKYj89zkB8xTHbwdpNyxNLr11cWx
         0owwe7JtI8AQzVLe2GvV3o4PNUIXyqWwPlv1Un/1a3uQRNVzOBpm/Ikecd6b8SOE+QVZ
         Z+xLDgu9+TzPKFJS46YS9Z86/xwNIxtbhSgKkdtQbvbw1veZP16llp9eoAjWOQqmU1pa
         RKUG+tlvA9AptnM6kfxOt5LGEUUFxCFWQGs1DYJVGJI3w3l/i2aD8lZx83IVAwEEd5Ha
         KB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGjTsioFqEGAsuEMglYL9yFdg3hpv4ruBEDj0/juhNQ=;
        b=SvCpyQOI5sX/8DBgihIPxON1uv5Etj9u7NfIXP6ecofPphDv6azCfwJwAK2m3MuPFG
         md18K4qWLLgo9oi68YLG2zyQ/W2oDC9e4x2TC7A384UZ0rsviovpvRMQc8xHz+CYdP16
         lhQCLxDklnVxJyvIpXjTgMoBKId5VDl7fWIIncui0Zt0W6yi27pgNPF1EMUI+nyvc94N
         ScQLKFmFVoOHuzWsCHp7drGjp1Igvp5jj2Hz5yREx0nTvEPHnPgoUMSxdVcyhmO5ZEV/
         A6mLjl/jcwB0ocwpcM7kY0IovlS3t3Adhtswq34Djy++F6Bd/l0ox7Ri7yQt3uG9cfIm
         xUEQ==
X-Gm-Message-State: APjAAAW2QkjAEIH2oKkibziHRtCexyS3MvkJ4Q4YRfReHu/o+CzuGtyw
	pB+qbYCkB4W1tcFxnrmGqes=
X-Google-Smtp-Source: APXvYqyym3adqr3uUNyAWGMZEXOspWALDSByL+ysMkkQPtNOb1SEht+tSPaE7iT45pG772kyiYq/Zw==
X-Received: by 2002:a67:fe0f:: with SMTP id l15mr1348264vsr.66.1565646792147;
        Mon, 12 Aug 2019 14:53:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6913:: with SMTP id e19ls1478602vsc.16.gmail; Mon, 12
 Aug 2019 14:53:11 -0700 (PDT)
X-Received: by 2002:a67:d885:: with SMTP id f5mr14844356vsj.193.1565646791941;
        Mon, 12 Aug 2019 14:53:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646791; cv=none;
        d=google.com; s=arc-20160816;
        b=CgkAmr3W/X8x6jvPib6VJ9wsarf5KB/YW/7SInHRSr5a6obnuo43cIDX6Q/V7MrYsX
         5FfY3a2nWzjxicqp5OIBw8kZef4K2D+4tSY0OB4qSF9GP3kKGtS2/KZe5ebMWagr5Rz7
         xHMeIyUPSKFzdTtAHZ/UteiCd2xxS/MbE0UzBPfP7buVy5KG+vMgYpLjc982iexLfGeC
         Q/zcaZDmh6GJIQ1WwNnTHr0Zcv6qDh6HkHQ3pj+RcVl2t3PMtc1fV9DawAwTFMXDNcol
         UIaslWeEpNmXA9LeKmeZyok0V1TYkhY+sCZDL6cTvjYYHtqEvRMWhOsYwQVQmJJNbL5U
         pJAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bLIn7GLHipF5J2aM8u4yisb20ADo6gvdLQjWA3nqqto=;
        b=cTQsrHDhtF72gWZZEi0rvEfTqIfqTLdw1MmDDWizUk/uJbhNsIXO8hs8Z3zNxh9mmc
         MBsJ8y71SrD2GEW1QQM1/bZ8q6lVAAkcm/eom21eGVkftMoWfkm55BtRPJTPQ66hMZ9/
         qtFwYepKZC4vHbGuCSLYRFYtUqL4UcUPTUga0+xu4AeTI1RaMNQ7jgn5slHVFBGI/6/x
         s8yze9ujwvmUxtPE++lkIqm2dvthdErZG2bldvwLTm9sjMnABOMCUrGnaeXmN/5iMbZ1
         REUxhI8+TemqndLB+mhFdJRD9ogWOvFFmr1R8cZqUaDjSCVbopwAA26fErPMNxrYn4LK
         Alig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oZgJljpX;
       spf=pass (google.com: domain of 3xt9rxqwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3xt9RXQwKAL0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id z67si5248650vsb.1.2019.08.12.14.53.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:53:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xt9rxqwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 191so67074678pfy.20
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:53:11 -0700 (PDT)
X-Received: by 2002:a65:6093:: with SMTP id t19mr981443pgu.79.1565646790802;
 Mon, 12 Aug 2019 14:53:10 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:49 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-16-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 16/16] compiler_attributes.h: add note about __section
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oZgJljpX;       spf=pass
 (google.com: domain of 3xt9rxqwkal0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3xt9RXQwKAL0qghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
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

The antipattern described can be found with:
$ grep -e __section\(\" -r -e __section__\(\"

Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler_attributes.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 6b318efd8a74..f8c008d7f616 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -225,6 +225,16 @@
 #define __pure                          __attribute__((__pure__))
 
 /*
+ *  Note: Since this macro makes use of the "stringification operator" `#`, a
+ *        quoted string literal should not be passed to it. eg.
+ *        prefer:
+ *        __section(.foo)
+ *        to:
+ *        __section(".foo")
+ *        unless the section name is dynamically built up, in which case the
+ *        verbose __attribute__((__section__(".foo" x))) should be preferred.
+ *        See also: https://bugs.llvm.org/show_bug.cgi?id=42950
+ *
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-section-function-attribute
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-section-variable-attribute
  * clang: https://clang.llvm.org/docs/AttributeReference.html#section-declspec-allocate
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-16-ndesaulniers%40google.com.
