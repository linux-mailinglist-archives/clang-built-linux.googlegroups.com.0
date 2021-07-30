Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR54SGEAMGQEPERORAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C8B3DBF7F
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 22:17:13 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id o1-20020a17090aac01b029017730151351sf10725423pjq.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 13:17:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627676232; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZnxBCav8gKHP1tQ6iIMXsmxRk88mghLejv6PbN5wZ2M7MwE7DWEkFW5lfa4tvuLyw7
         4XAU8tPz5XXv6XnIMaJo7MJKoMSQu3jMTbc9x5BN+DpX+BiCkReJDsGLr4LOjVI4F5v5
         RyQM74S5lJDQTKvq9YLZCERu3uvx3cFCQcydLQYuJcQw8DM97lMZZVyvMiiNfnBQA0tQ
         weAheTUQUFSi7pZ4zy6emFZauHlI5107/q0ZIdvl/K28fgAlBX/RVXLJCbLajC8+rETF
         ur5z49B7/g9w0+KwTodoX56neua6IrfHrys/v3ul6xHxzxr/H1WKPyVBzBXrhJfsEXz3
         goIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rOo+6nXuVhR5nTy4QrUkjgvBKcDl0m6zVf1A/iMHyd4=;
        b=S+O6jln2pZLNMM6JVmRfTVsYis9guMUkjYBHJ290oYwjxedxRWuanidMiHtmI1NgUM
         M5y7XTgwrt70Us0PbRlKCtag4woau0kw7hxmv3BXwubki5vmdjvVpB3koxPojgVxKyg8
         XPvDGkHpnTBkrJmWjYHWgUjYDxrXvInnGHpLQQ47f7ZNrRLZD2VVdLexdRDDByOk7tlX
         Q6laIX0wtTbJGNnScjC48+GjHSXxGD4Ks1O+F0wid5ZpMhlYqGtin1AAOKrsXNWMINlU
         auR1oYcEyFXT7eZAnmABZQ4U898ZYlNWjNiWFwDTLLy9H5uouFj+3HZKNeW2mAvOOvvV
         8xSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ba2SFUQK;
       spf=pass (google.com: domain of 3rl4eyqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Rl4EYQwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rOo+6nXuVhR5nTy4QrUkjgvBKcDl0m6zVf1A/iMHyd4=;
        b=LyDq6Y9LBw8ApIVDYhJ6D58N/6BKJALjNHi1V2yDxXp7O3xizO7RT2f8gimzRiYLcY
         VTVuLpm+fw0G/6ccDqQinl4xzmySwsTESUaMGochbJ+AU0/zZhunhfSsGFv0La5Ek4j4
         xEQamZ0/VTVEcHvn1hLN+PEVVThy5rE6V5SToCHC6uzalHcipvXSWsWfoWOaZlSwPt7C
         dryUO8Ohq0upT6qE/bhN6YhcGmlvGqnb12kWUWqV7OqMjZk6e7RZDltTAFdNUjG7FDeJ
         Efk8IQXJaYfgjevLu+F3ao2o2fE9gz9vGBDNORAH9EeTbnlZraM4jFSHk+/843j3AkzQ
         HI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rOo+6nXuVhR5nTy4QrUkjgvBKcDl0m6zVf1A/iMHyd4=;
        b=gZneK6mA3n1wzJBZWZdqbbohK/8D2DrSotnxRx5f/WCrxluldRmCvDD6MnprsARf9W
         U6IDG7Ex6ohobn5vU5ZfIMCekavBirJY7G3Lw2wo6gzWpevLvpc8DMGVMxctX6d7lGY/
         dcncgHMlVzj9sRtpdGilNdm67iY4GY3kWdHu4dcX/vkXNteej0e6OTeoOzb03pWhOKKl
         9SLydcLQWnUOMVtnQ0QkVkg5c1Ba4TbZPo9Bov0UkOdAzDRyskquHxn1JeZvJAnLsbVG
         SkY38U93lfJ1XaJGvBkUuHikT7YdNMpBzK3zOdHnJdjtzvA8EYO2X8XR3bHAT6Vw5KKq
         vdvg==
X-Gm-Message-State: AOAM5308NpuuJWHbtuFQ/grDDM03ejhTKNhBIlnT6jrSTm6ZO6HrbhUu
	Kk/fCbSoPpXhXFOFdgIZMG0=
X-Google-Smtp-Source: ABdhPJzqrrhKyLvvTG3/ZVF65mSmhevwWipCUGEkqjHlqKaVaITTVicn97NlVnkSP5S/13Vk6bgskQ==
X-Received: by 2002:a17:902:6b09:b029:129:c61e:e31a with SMTP id o9-20020a1709026b09b0290129c61ee31amr3924983plk.57.1627676231627;
        Fri, 30 Jul 2021 13:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6487:: with SMTP id e7ls1235627pgv.7.gmail; Fri, 30 Jul
 2021 13:17:11 -0700 (PDT)
X-Received: by 2002:aa7:8b07:0:b029:2f7:d38e:ff1 with SMTP id f7-20020aa78b070000b02902f7d38e0ff1mr4659932pfd.72.1627676231079;
        Fri, 30 Jul 2021 13:17:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627676231; cv=none;
        d=google.com; s=arc-20160816;
        b=QK1cd5YFQzI3LgDl+iBTWGNJNxSXvIJpaWIs2vlV3v+Y1xWSG5su2+FBx3V1Tv6GCw
         rxxe2uqDFCaH1J2sFMFXsmD6ZXJT3Sze6LWAcW/dD2wv9qH3epR9MAoyvgVYDUVyF5vq
         TDQoPD74Um4UknrJazrTLknPQcBvwyZvNrM3GidTtFK3bdnI3FKsWBNTrBuGsGQrqROr
         9dIF/lTZmD5QwPDaNW7P5zGfKsdTQSkjwNBUZ+h88z+g1DhAHGiIjLxfGVc+230GUWCk
         0zjmYu1WgrKBL46x5YAC+lMKxuZZhrI5pMgM5Ln9TY7W4qzDiUUpgn2zfRs+9R+G5Py+
         9qNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bdaJ+2ov+VGokTpwDiU9B4WCnxMwARVW0/jkGqItkL4=;
        b=kQLqVLo6DVvFUIzrzWhIthGXyjPj+sCtrQaJWhzCNCv7aErYxjjuMVxE3spSRvcqFw
         HdvonYOu9n8/hboiKueTO3NiDW6dI6O/qmd7iuZWLvEchGaIJ2p9rEgKe9Cl8Qn7V6qi
         E88bit5TEAGMG7y2TrWUpbtIf0cZFA4jUFw5QtqXwEkzpNlPlYNkxD6lUTllX5YLHdL+
         /6Ywkw8d50YLDx1DKB6PcmndODfBEYlZkCCjFjsJ134SLSPFjJdJwY1TYAYvw6wt37hV
         q5ZMQkKzMU4o59wySwWJNMkgjDfna0347Q+7JZ279tBe5rQLyTgnv2MMjniNlLsaUfJg
         LBRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ba2SFUQK;
       spf=pass (google.com: domain of 3rl4eyqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Rl4EYQwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id j24si176638pji.2.2021.07.30.13.17.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 13:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rl4eyqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id l24-20020ac872580000b029024e988e8277so4970821qtp.23
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 13:17:11 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:ca8b:b433:7c1d:90d])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:134c:: with SMTP id
 b12mr3056998qvw.39.1627676230194; Fri, 30 Jul 2021 13:17:10 -0700 (PDT)
Date: Fri, 30 Jul 2021 13:17:01 -0700
In-Reply-To: <20210730201701.3146910-1-ndesaulniers@google.com>
Message-Id: <20210730201701.3146910-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210730201701.3146910-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v4 2/2] Documentation/llvm: update CROSS_COMPILE inferencing
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
 header.i=@google.com header.s=20161025 header.b=ba2SFUQK;       spf=pass
 (google.com: domain of 3rl4eyqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Rl4EYQwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
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
Note: Masahiro, I'm sorry for putting my name on this as you mostly
wrote it. I touched it up slightly.  I don't know how best to attribute
it to you. If you'd prefer to take back authorship, please do; I'd
rather not add your SOB without seeing it stated explicitly.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730201701.3146910-3-ndesaulniers%40google.com.
