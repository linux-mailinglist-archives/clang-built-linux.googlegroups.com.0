Return-Path: <clang-built-linux+bncBC2ORX645YPRBLVW236QKGQE2S7576I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F6F2B8727
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:44 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id g3sf1414740vkl.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737262; cv=pass;
        d=google.com; s=arc-20160816;
        b=EDX9qmrru4TkFgJnYsnOAMCQ/O1LYXB0xGsLT2Bhj5GZS2nC/v/v1T142WOVnqqz0r
         kkvh+I7i0MFVVRrzQLu1liF86HZTwSrjkcivkc1/IlRXhY048/o1VxprWHR/ZQ9AJEe5
         HaJaXRkwd6kA+CgXZjI4k/r/TrTXGnT6pqJ5bD1vwCx1nekh8Sw4zF65Zf4v8O+Fv62n
         0UW3vgJEjjP7cCZ8cJMN39p1aAd1AtZ/Wof+QgGYVLGljuFFmFuAygLwKX9FXebxqI4j
         6xzfQ4dY4sFRQyLwP2NGLYBzIWMYuDHSrubC9tpfZAGfF7+klo4gbw3n2r8nGAy23HRq
         w8+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Y1GMWJhtRW3B+1mIkQY/1BdBskRd1Ofe7GFlp/b2v20=;
        b=LPGtKv1NypCFC1PFjuJu+hM72ij9VEEgzA3kJSnyOkQhlasscuLpO/kuea/GbvjnRz
         TbkCMldgEoL0VDTo3AYyK1b0XyDsXDofwJFoPCeXsfvIZx7BgqvQBgNy+QCzstwhD/iw
         5tjZv3WbMDRt551rmoflUXedwapocX9e7dBaW0Ki8rsW9Jzxm0+PWOrXkUo1sGxBIO4o
         h8oJ6tTR1PTf0I7Q1NS26qwJ8wSKji0k4OjZE7FGmeWuTVEbyWmhb4YJsNlynd9ZH7Fd
         ukmmAP1WkMz7vZGGspt+/6gZlQ+SmlSrQCSw9TfM+3B3eoIDSGfVsrj61drWyaVcJzvs
         sy/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OOlRBBd1;
       spf=pass (google.com: domain of 3lzu1xwwkad4xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3LZu1XwwKAD4xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y1GMWJhtRW3B+1mIkQY/1BdBskRd1Ofe7GFlp/b2v20=;
        b=PQADOSwgNMPBcVu+9VZmdqL57btZehFt0Ob8Ho7FUVzVMZ2f6FC0ziCcyRW8wHyJ/8
         5sHt6E9vUaDPiKiOpyb3H5lAwse14Yy//+OgOMBjS/Y2DpQGmWhiWpTQlqd/e/kEfHmB
         +S22jER/J7FkAgRlXSuTBYS65kjlRylPxfcY8oxPrShdoKVuUjVkhW1tc8mQeidCaEfM
         109E7K4iExsL+gUXytA+RsZdrNsgyfpTsIFmlW2ZyPhOnS+/SYBZQpQ7K8ZxLmbXy2VT
         wPNKro73t565O1a2BXpIoqcqayh8KQNrt5SMTRURCtc8vGNELtisBzTCsf1T4t8Lpov5
         vu+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y1GMWJhtRW3B+1mIkQY/1BdBskRd1Ofe7GFlp/b2v20=;
        b=q4twTYQS7RFPgCcZV4dl/Sxe1+6cC85q5KxhQS02yfZdWPoWakpD64e0fjose9KO4u
         WRBLdmX4xCZISWXKTeWuDZC1NfNziJRmuqTjhajdV/hMgb3v8EttDZplg6ZfZcP7N+/r
         l2JkmlFHkiZdo/+qA3BOhBJG4edBWfkj595VGLpcWUBypnbKeSQczsf+nlPjArFsXu6s
         knMlOf7VxLLYn1wSAVlD3/ujm7QhIhPKG7zl9e7yEa2NE5nw9LFWkuCBojn6HtAmzVjG
         5BrpnU11SN9mMzY/GexttIYO37u2IWzgayTlxgappYXXptHSOVy1pZmsfHsGNI/ORa6y
         KVlg==
X-Gm-Message-State: AOAM531h8+uOvSEhYtI9vPYhlDyUNrvaZFbZqfhMHDrzx8V4v8V7vnAh
	dspkm8Lgku4HM66YY7G3zeY=
X-Google-Smtp-Source: ABdhPJyOP17Z36gZDqT8i9a77FooMCm08qXIqkCVKWUNTdBnxz38Q4DkZcTMBTID0/boH12fjuW/0Q==
X-Received: by 2002:a67:fd5b:: with SMTP id g27mr5526924vsr.60.1605737262664;
        Wed, 18 Nov 2020 14:07:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c9b2:: with SMTP id f18ls68459vkm.9.gmail; Wed, 18 Nov
 2020 14:07:42 -0800 (PST)
X-Received: by 2002:a1f:9d04:: with SMTP id g4mr5860447vke.10.1605737262090;
        Wed, 18 Nov 2020 14:07:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737262; cv=none;
        d=google.com; s=arc-20160816;
        b=hbuRgYFkTzb1u36CMXa3KOCIVu3v/VWmIbhwLqVMdmyK0bDMuAyNZwKsSALFnkrr05
         cIXj21475djNIYGgzjRjfsRMKKgHpfe7Tvh9gBB2wPRdwyVKNk8JPM0VbiZPOpnafEls
         eJMyiWMWqRQ/8T8JaGaYsjjeekXwbAn0aR1cnMEXOV85AigL9ov9h5ynvzjffkRIrS4x
         WL6g2eV3NJtIz92cAnaxK7WeHK4b89KjQf4leYA7sHHCh0mGCIOfg90lJKWDTchCZIRw
         Nf5+bCz/60dJTlVWqBvdtWokgF3Mlt5jLzxSuVB/Cevovqd4PrUgpHu9O8VbD19DkRGW
         GO4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=OmvLBVHrXYJgk90zzJ7qPiL6Oqy/f8wdr2oL1+M7ruk=;
        b=iFeu9tKlipuTFXX26fKsuc/645JZLq/AtsTi6BlwyjlEo0Ibob9/JwiEVAD3Uur7Fr
         aaXy/BpcoAfoUQtsUbaqs24RQzZ8r3quPpwc6Hb62xs9HWNFb0deVvwqNwyRMaj559DC
         5cYoK/qrX1NfruD/0y/3Psun9OnfRya9XRB9Oqsq/LdNDubqaQaMQCsgYHHCRyXqWxLY
         KeMiFwe8HXnyfvn8Kf0oqbtt5AdCe1eUsvnqmbe/LELZm46NARF4jDzshwy/Ml1Zebv4
         w3+XSvz10Qd7A4YAj9tNDPdvNbm6Tbr1aGXgXDyaXsPGxMb3RJnOsZxIb66Ao7DE7QF0
         ON2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OOlRBBd1;
       spf=pass (google.com: domain of 3lzu1xwwkad4xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3LZu1XwwKAD4xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id a16si493442uas.1.2020.11.18.14.07.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:42 -0800 (PST)
Received-SPF: pass (google.com: domain of 3lzu1xwwkad4xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id x26so2073852pfo.23
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:42 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a63:550d:: with SMTP id
 j13mr10510189pgb.365.1605737261156; Wed, 18 Nov 2020 14:07:41 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:18 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 04/17] kbuild: lto: limit inlining
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OOlRBBd1;       spf=pass
 (google.com: domain of 3lzu1xwwkad4xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3LZu1XwwKAD4xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit boundaries
in order to reduce the binary size with LTO. The -import-instr-limit
flag defines a size limit, as the number of LLVM IR instructions, for
importing functions from other TUs, defaulting to 100.

Based on testing with arm64 defconfig, we found that a limit of 5 is a
reasonable compromise between performance and binary size, reducing the
size of a stripped vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index f27c0da5d05a..bee378f9fd50 100644
--- a/Makefile
+++ b/Makefile
@@ -901,6 +901,9 @@ else
 CC_FLAGS_LTO	+= -flto
 endif
 CC_FLAGS_LTO	+= -fvisibility=default
+
+# Limit inlining across translation units to reduce binary size
+KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
 endif
 
 ifdef CONFIG_LTO
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-5-samitolvanen%40google.com.
