Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW5GW35AKGQELFDGTCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4142584B5
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:37 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id 2sf6443965ill.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919516; cv=pass;
        d=google.com; s=arc-20160816;
        b=v8h4hc+fEq/HYCPHlVP4VY6q6DDEuC9dNTU7MtBZ54AKle65GNFbxXC5MhLtBCLzJl
         BJ/d8MLgrazpki74O1ax4W8ADd+XEexJhKtbfqNGGoNs42N6XVEM/OXCDPB0fTizzmor
         7Bsk2SNDfAf7hsfmiURUTew4gZjtVrTG/R4nGbD0kMZ3rpRM8PPEoIBjIazINAHan1g0
         KxLpH7e3W+qet6XMtPUOewMNRCSYVd9EIBl5kXTvBjCP7TfDYhYj//EZ+yICFGZKjumt
         QTQs0aaNhyUkqs3IE+0oJf83PQhBLppsdbWId0lCSjpXwg8qNxidYWSJ5JASkAmCZxDF
         Pl2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=WLkOz4tOWPlw931kfvCJGzlXsU9vSTsOeQ0KfqGVlcA=;
        b=lAWDFITXNDCbnUeHAHthFr83YfblGHkblSX2U6elJJ2SBlyCQKiBA3EYzmaJcfcYXW
         v6CAU+r7zAABy46I7x5e7NmaS/i4/qvEFhnzaYLuNIB84AxaZX4Rr+KT8w0cY3DlF5rr
         OymqqXGw8ldEcr78k802vYGtut0CZPTZ3uiWq7l4R/JSBisYxZsIADdt+LMbpe0wnLQs
         p6RXvVsu6L/dL5+FecjCcR3zMeHAlLgpxa7BfVLaT/eVrj1aPVhNPhiRX4WO1Rl/H5wz
         gh9B4PHUCWvnAC3mlUqRKJToDjx9A0AnUb6VSjSKU4we+8uubdMUimPW5tQjILkhT2K3
         RpRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fxo5RmuE;
       spf=pass (google.com: domain of 3w5nnxwwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3W5NNXwwKALglbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WLkOz4tOWPlw931kfvCJGzlXsU9vSTsOeQ0KfqGVlcA=;
        b=STeUGLHhqXjKYvBI923OXF3tycTCXVNCY/u7ZbsKEq0YJYsfs6h/DgUwLopdOj1vGT
         zMYfB2IFgrmpDTgTnAHC0dopB76PGBekWCe1/+gUqWKc+HzjAGnhfhL/CJjIoKh+1scH
         434t8qqUYFEC1X2NVe3PZiyscbk/cyVLBmwYzYadDzdLjYbNzjCR3xs6hDYaaolvEpIg
         QTxBdS0k+1q134voeDaVPZiO7N4ZvQsSP6i950OgSmuuKIyuTjNJ11JVLcZgoJ6Ugxls
         th01JtrucJWT80VkUYQXqgY13dFYbL6nSGNphiuZfeBC43Y4kXxJIbQtYQrm2jLklS4+
         g6nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLkOz4tOWPlw931kfvCJGzlXsU9vSTsOeQ0KfqGVlcA=;
        b=QWlruThzyzun6UsWTfa5kav7tNF9rjCCK6J6JUlS4LnlFog0EgVcqO6e1QbtiJHRmN
         2xHv1QeHD455r1EfpAo10W8XwD/Mchzch4KPsye4Q4D00sacbr4ea9bBu3tD3b/OG15B
         LEoyvSnogsMsZXPrZ2VebfYdbM2VWZkWMPKXXjn8zEuutFr19BEpQDHSx4Egf/uQokjh
         rMmmgHW7MaQv1AeJR3oWgFDCkC/ttB9mJ47/k5bx6BKcmXBgzTpSmKGAqIl5agrM4/Tb
         ZCbliuoPDs4yot+HxxI8ox/jQriXkQCroCk2dJ82xNFeIlH2bZQxMgLFp4T3zajwbQwE
         cHBQ==
X-Gm-Message-State: AOAM531aZRoHzEm74LPA1aASLejiwkxPG0pEj17qbPjOgIbjQs3mZAf3
	Iy1dl6yvU3rABzdAzz49YXg=
X-Google-Smtp-Source: ABdhPJzRsNn/ZW3iXAiFXFjYWBlvEa8rQ9EXV+3AY+XcWyZNZ8+kCq2uQ26jaoD3jnxv9eBuvSPUEg==
X-Received: by 2002:a6b:c34b:: with SMTP id t72mr3370260iof.120.1598919515997;
        Mon, 31 Aug 2020 17:18:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c648:: with SMTP id s8ls1217423ioo.5.gmail; Mon, 31 Aug
 2020 17:18:35 -0700 (PDT)
X-Received: by 2002:a05:6602:22d3:: with SMTP id e19mr2955818ioe.197.1598919515689;
        Mon, 31 Aug 2020 17:18:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919515; cv=none;
        d=google.com; s=arc-20160816;
        b=CGfulBzPhLmlkrQ5Sdq+6RMRdZqK5G3f4cTjvVLGVIYk5YWfWVb7jobE4zYefBy8qp
         fMgOQ9XoUrIwyoCn1c/KMnGePO803/ameQRp0zpRSe/PFxJuc60w4OelTa5mRoGfYCWA
         3CSq5zMtsI12D+9Im6bL6VaV4lRqdfieUSZGVaW7UjJ0HkYmICk5OBaqiHtO0C2ZSkyE
         1/dDffDAuaHHayb5xoTluucMy8NNfuq+em2ZMWXckIJC14iBJd2OsObWd6aoGvXGWFoC
         sUFxdxwywOcGv7qDa9uSQaSetTc4zhBzU5hZqXyk48m8wRrvHZwgroKlT3I9nUyaE5eD
         VgUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=3f6P4/29utvTQL2GbGI3HgjsLcJrX6x4YOwPd3tFDyY=;
        b=cs9IcZTdHV9uUbOJfUPoI4va98SNXRUU8VEbw6GY4FIVY6nzfkSRJOquVrMz2IZvvw
         +IJg+/lKiJQvmEltTuYaJk9x38q9IVd0n7UFlj6vQp2xVYhOTN7cTRqbnMfD89BdLAUA
         qDvq8TfE5rU0Fqi7r2qj5NHL6x2MRz0Hxoq6j52W7KfzmyfS0Hb+CifxSsyWw1D+cNMx
         WmUiLwMqZzVZza8J9FSMDJHdha4RK9Zcjxg80QCR8gfeVmGDkT6roNOFepG3Y6eo5lUz
         bqIYGItwl/x5etHijVBkQ3xO5u5nYmGqEDi6yidxdtxwhExrJI87NAEEW7bp2t38fSR+
         qmKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fxo5RmuE;
       spf=pass (google.com: domain of 3w5nnxwwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3W5NNXwwKALglbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e82si606804ill.2.2020.08.31.17.18.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w5nnxwwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e1so11151307ybk.14
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:35 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:dc13:: with SMTP id
 y19mr6074196ybe.247.1598919515143; Mon, 31 Aug 2020 17:18:35 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:15 -0700
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
Message-Id: <20200901001821.1126189-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 1/7] compiler-clang: add build check for clang 10.0.1
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
 header.i=@google.com header.s=20161025 header.b=fxo5RmuE;       spf=pass
 (google.com: domain of 3w5nnxwwkalglbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3W5NNXwwKALglbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
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

During Plumbers 2020, we voted to just support the latest release of
Clang for now.  Add a compile time check for this.

We plan to remove workarounds for older versions now, which will break
in subtle and not so subtle ways.

Link: https://github.com/ClangBuiltLinux/linux/issues/9
Link: https://github.com/ClangBuiltLinux/linux/issues/941
Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Acked-by: Marco Elver <elver@google.com>
Acked-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* use a more informational error, as per Kees.
* collect tags.

 include/linux/compiler-clang.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index cee0c728d39a..230604e7f057 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -3,6 +3,14 @@
 #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
 #endif
 
+#define CLANG_VERSION (__clang_major__ * 10000	\
+		     + __clang_minor__ * 100	\
+		     + __clang_patchlevel__)
+
+#if CLANG_VERSION < 100001
+# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
+#endif
+
 /* Compiler specific definitions for Clang compiler */
 
 /* same as gcc, this was present in clang-2.6 so we can assume it works
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-2-ndesaulniers%40google.com.
