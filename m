Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHLSGEAMGQEDVVKX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B4B3DC093
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:57:21 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id t35-20020a05622a1823b02902647b518455sf5138395qtc.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 14:57:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627682240; cv=pass;
        d=google.com; s=arc-20160816;
        b=zeotQdU/c3WQHo6Ytjx0P+Kljs7k44x16NfhguBrSmFTGVtvtleUOssgpnW8a4VagA
         dMUPttGtlgImo8+I8u7SL2q++C6XAg0Uv1MJCuJ9GVPmKKEJRWvQEcv4uxU+lwE5g8SH
         XJ2FM4/efcdl+l6/3L6ATLHloIey8PtpFI1D8nwFVg7GeDp6EHEUG7zq7kiPjgQGUAoN
         vsB5+QG8SXgiJ1QqdfJKAsoTMi98NTxtXNNxIpmfAt8dBIM4+ngUpZ2v63GiqNRpVA2+
         3G4wpjkHRpJOfYgwBAaI5dsXBj9ULefaDIKj6pQ0dpRR6ZGgwZTYPIN9yU5rHLzdACeF
         HEQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=brloz1H18xtUF9n7yYWx690wApHR5289cJdyZugaEDI=;
        b=cZ6f3pA5Nq7TxAl7uTCnwVBx3gDvovJStJyyL7XrHxSeuTGPKyvC9RCt7FLn/Yoc1K
         tuyLHMbmfUn8Iuj3R1D25csq3kus+TExUwLjyFXWtiNLfCrbgVvSgn68zfjaTRLD5P4h
         7IH01gEw3siTW0sTjX5nEF8y0HLsiyViWOdWUxhqmKVfkqJd6FAphHK3CJ7P3WohVeZq
         smYxho3TJffi4y5S2PFy60UMOnivaa7eYAPtkQ0yzyZGEVYS0FYWVBsRc7HuFCM8i660
         U9aqkUr+ZHnaD3cl+JrA5GHZoWcj2fX3iZ+rs8VGscnDVvhUZnCb+JFyI/qzum1vtua8
         GtjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U0mvENCW;
       spf=pass (google.com: domain of 3v3ueyqwkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3v3UEYQwKAMo3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=brloz1H18xtUF9n7yYWx690wApHR5289cJdyZugaEDI=;
        b=oq9AnlqE0QMD6arg/o/ohIPpAIuK0CeEa30i/WS6QqnYhht2uZbYTWaGjfmBIyz7Qr
         Hq/WQdeOkBA6vg+a48yp6ZtchpAq0DJ7cQqWYjAmXsJYBQy5u/3W+3qVaBJjTslcZJO7
         +l4Z7voWLee+v1V32+0mcS4sIvLZzvC48WhUsXTtiK5aQfpetsDfjNEA9yTZmgxNxSks
         5wBha1fOa9B8y+o770DDzG4YQCNHKB53oyShcSM2joNV/ishndl781unZXVYXofuEl0O
         Ugt2ikiFB3COsrGC2bXgcsUlsDYcBZn6O720ljqXIB+kShELFEJMLuGGtb56veRH9nFU
         trTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=brloz1H18xtUF9n7yYWx690wApHR5289cJdyZugaEDI=;
        b=H7KRLHQJrEQxpw6JEdzQ6t60TScJOJUjOmXV6uJLbM8TO/ncuJ7f/5DFuWghNHuSwi
         htzmV8u01S+wO3lX8hGTfuy65xFVh0Epq7JY4TsvIRzN1fYwpM/37S3Jp91AqeZ6+Re4
         Lk4TvZDGTS89JCzE8Ku6JGt9OwhS2WcDX13GQez7NVju1SEIXUHaACJgiDIuauSehnXi
         +YweFTnMTVIy0CURJJO0Yxs3n5RkUGPI/xFbqd0seJkCp8q2A4jOzzG7ZoDR/TIBCTfY
         zplDVcmebLB2rbuKxfZd9erYTTAI8JE5/t5ImUZZKm+6SGF8NlxYw3coWmcZK7/iOCLs
         okvA==
X-Gm-Message-State: AOAM532NU53T8wlTjvLtKBdwjx2KQSzz8RhNziIaC+9+OFJtSNzMvICS
	8K+wa4xtXKL4Od10kQNwOhc=
X-Google-Smtp-Source: ABdhPJyERHp4SkjcahOklsoA3R0V+PXH4sTspOSGgLtJJ47E1FVvehH1BILiSinho0QUPZzxHKOjKQ==
X-Received: by 2002:a05:622a:13c6:: with SMTP id p6mr4232325qtk.253.1627682240285;
        Fri, 30 Jul 2021 14:57:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:240d:: with SMTP id d13ls1999881qkn.1.gmail; Fri,
 30 Jul 2021 14:57:19 -0700 (PDT)
X-Received: by 2002:a37:9a4b:: with SMTP id c72mr4243568qke.302.1627682239824;
        Fri, 30 Jul 2021 14:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627682239; cv=none;
        d=google.com; s=arc-20160816;
        b=CdXwSbmEK63hKuIqPru02pU3/mxzUPxmBwe/1BKj01uvNxo05UemxWzWclmfAc5v/k
         VGODjASHgM1YwwnNd4xmc2txNr30iXXEaRjESuHCpibVmtqdmJ28XVCkKlAtukxfusGi
         hN3MwZMcgMmVIxABs0qMjvzL7hOqobMjTLeu4u6CKrqjIjl+v4pxeZrpf68ISjWvP8Fl
         t+DUfSiYf8gg4KuSZ/LJho7Bzy1EU1uxfcaJFIZ6V0YJ9UXDqt5LR7AiFDGhwNfJNQ6Q
         rg5/Qki5KkCQECmWs4/2P//o43CEtPHwnh/HwC2wwQipvLqihuUFrUpf/Ke80pUmB+Z/
         VzDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YFm85Wduq5y+10ZdlPwZKrCLoXRuDpiE2SUIBEh05mI=;
        b=FRvvUlrRzzgUNvWDwTESGZOEdCIu9X1bQCc34RU/rZI5AILvgZp8L93VxoUiCUx/5o
         9ebmUGzboqI4A/6O28j2WiFkpTR4+gliu4LsRn3D1qUDcvaIuM7WdixsAneKWn/hp/hn
         sP4FQLhSD9dlpqWwsx/fApIAFWv8+yGVqWwU0aMum4MM4ymVUbn3kI7OzxKVZQgTjpLw
         1rHGMWOAccy6yuqh51w1juuDwYMPs3A0CORxJRGJVMzSQkbJMxzI5ALD7FUIEsed/2W1
         Hsr/Tru1AaFilMpvNRx9LKLFiswuZn7G9e5kz8AYVOwaQIw3Oi//noCTdjxhgCHaNGnM
         +10w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U0mvENCW;
       spf=pass (google.com: domain of 3v3ueyqwkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3v3UEYQwKAMo3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id x10si145968qkm.4.2021.07.30.14.57.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3v3ueyqwkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id q3-20020a25bfc30000b02905592911c932so11376591ybm.15
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:57:19 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:ca8b:b433:7c1d:90d])
 (user=ndesaulniers job=sendgmr) by 2002:a25:aea0:: with SMTP id
 b32mr5811780ybj.474.1627682239441; Fri, 30 Jul 2021 14:57:19 -0700 (PDT)
Date: Fri, 30 Jul 2021 14:57:08 -0700
In-Reply-To: <20210730215708.276437-1-ndesaulniers@google.com>
Message-Id: <20210730215708.276437-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210730215708.276437-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v5 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U0mvENCW;       spf=pass
 (google.com: domain of 3v3ueyqwkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3v3UEYQwKAMo3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
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

As noted by Masahiro, document how we can generally infer CROSS_COMPILE
(and the more specific details about --target and --prefix) based on
ARCH.

Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Documentation/kbuild/llvm.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index b18401d2ba82..4292f0686316 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
 Currently, the integrated assembler is disabled by default. You can pass
 ``LLVM_IAS=1`` to enable it.
 
+Omitting CROSS_COMPILE
+----------------------
+
+As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
+
+Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
+``--prefix=<path>`` to search for the GNU assembler.
+
+If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
+from ``ARCH``.
+
+That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
+
+For example, to cross-compile the arm64 kernel::
+
+	ARCH=arm64 make LLVM=1 LLVM_IAS=1
+
 Supported Architectures
 -----------------------
 
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730215708.276437-4-ndesaulniers%40google.com.
