Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBK4AVP3QKGQEK5GZ2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4FB1FDBDD
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:15:24 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id h74sf1062938vka.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:15:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442923; cv=pass;
        d=google.com; s=arc-20160816;
        b=VoZfseGXfGGE91XBwXjCTQu1mV7ILYfe4XuZVaJloIICjFFF/7c4uN34VvhX5+k/Fz
         tWLdUAr3W/0rkeFq1Dg/SGkMcj2Tc7YIfG2AITptQu18G/MVcqdE5Lmr/ccN1oIsgUkj
         /Z3che93F2SW6iymoMT0vjp4l/kGl1Y4iBFTb2qchv4rbLPTJOWH87O6z7HpEUbFtMn3
         /fl/Vhwelspo6iZ0M8YOS5qdvZtvHv97ANbNJnbgcjqbmG97wx+gT+Hxjc9tR/CMOhXw
         TkJaVty8NbCm9mfXG2nAOhARrHMMpb5PyrTCUVvUv9n44ywXGAq5KnaldFXYoFnmS/Qm
         GU+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kTf+5RLhgxXYa6o/qUjd41Qz6FAPwkbJnMql4tQ4dn0=;
        b=sivfOb5gffHBsXj2wG96AXgjCiEa06EsvnpzsAh3wrdNjcG4L5J552I61ihgXmaYrd
         wVmBo/pxrYH7E3IScr44aUp+y07lxI/usjExYhGRhO7ISyLWEzio5CxUbqqSbdtN7g9/
         1GHRnuTY4gQg9SFcKixvCxJu0uSmRp6iBzfh5HBC204N1c06jCqBy2K6B/TCHfP/Z2uU
         fVCWYSo/dHZP2FYdTP2OSfoDhCPGk2mAJiwZ2ZiD6ZtUDUOHTuEKh/P+VAot1wHFnBJ5
         fI6/NCUoB+SUfWitA0LQOoP/trIdSUxEJAf343OedrqFm//iXUD2YcNpkAl8M8COcbn3
         oDiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Cs1SkbEK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kTf+5RLhgxXYa6o/qUjd41Qz6FAPwkbJnMql4tQ4dn0=;
        b=kEM6aCOSYqFEIt/BPKY75M3C0gFaBYBj/qEQPa3uAsIVa9EPg8cAiKJfnsgQdTFyVW
         zV4gtou49Hv6837s837NKRKirCAd+itMCOoiEGt4+FbrTOiAPYpI/0teZKX2RtwfGEBj
         qD5Ygehki4Chty8KxxcwIr7bQMti8+2kXDZ3fGYbewmvRf4jIVnhD09BLmqqGg+ADcwM
         0aH0UG2u1Pg50MDU4kgGT08gI7HDog1cblIuJqZvMi0/l9gT7Sqi/AeF3w0Z9K2HjCgv
         J/S1D1yzaGjy5x7nwQJJO6Tqhus2YmRQfiVxvBOlLfYGjzfBxWWkzjzuQcdosGA9Yajm
         ygvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kTf+5RLhgxXYa6o/qUjd41Qz6FAPwkbJnMql4tQ4dn0=;
        b=r700DFQe3+b20qWuPlRJquLMYT88MVynbwBBd5jKm/Hc5tcHEhCAQL77cEoyl7th8w
         psCqqAiaL63Yj0Lr6GEN1izEiTQ81I1IUg5gSuMevxXpUoRSPoOe/Zj1SEHP3e0bX3IT
         wmQPjdbCUY/HMZAvZQQ9ef7CLw8zuvRQF9yV4OBHGrZluxcYx2pWlllFCgPZVAXOtqsp
         H2Ql/UCjFExTrZ6taq2e1zfP4Wb+4QGtdu5/jqoYzoyQpHSfbFWW7dvSIsf7mNdfarvO
         2bC3ABhvVi1mCda6uyV5y/UM8vRsunu/b1pat155PNt3RBp+noPCzdMTSmqbkh8ffPR9
         H8tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mHQKyH+bM6mIngdXxOoTFtsPzONLElblBUyQKQuWOOtLXDJ+H
	/h5NcUa2DHTZ+rvyHLN9VAM=
X-Google-Smtp-Source: ABdhPJyNm6hBStnpQfy2FXHuINLr/LIDK144wFZNmYGNsg/WyTUUaGXCusCwn5nvw6yFEQLPTXofkg==
X-Received: by 2002:a67:79ce:: with SMTP id u197mr1669731vsc.17.1592442923771;
        Wed, 17 Jun 2020 18:15:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7c0b:: with SMTP id x11ls526067vsc.2.gmail; Wed, 17 Jun
 2020 18:15:23 -0700 (PDT)
X-Received: by 2002:a67:fc08:: with SMTP id o8mr1602666vsq.188.1592442923367;
        Wed, 17 Jun 2020 18:15:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442923; cv=none;
        d=google.com; s=arc-20160816;
        b=VUOh/fUhZICRbriNXgKPUEOSc9DiLitd7ObZNEYAKNlxppndN/8l2CRf/3kRdfHWqr
         /6eQgWgUKCe6Y86UqxTwcvZK16Bx4UUbxNCQq7n6wpStGvZy7NBWXTiVJdIvr4ZeejXK
         H6BjvbuVpOO7i+FPMg01wATRT/5fXdfqIUoJJwN1RfYWvRo8giNGjaLKg2TKMSnv36FI
         T9ZcFxbM2sOsP0J7SFdzU8HHXeXaQJCQU/R+luehOOKsQO3Lxkb0CkAC0GY58ZfRR37N
         wQtlehlQcBHAZHyEJbOLDXOyZOSQ+YKusI4wFNHo4o9KIzjjRbjzze7gdq/1OUYceAMa
         aMig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sycbI1kMLpA5HRo7KwhiVnv+CMOO7q8A1zMKnQKrDzo=;
        b=nSKXZ9pOGfDEe1Rx1AsND6SFWn+QeP6iMx6eE5UFPXRa6ot8RFqU4BOIJokFmYuIDY
         kXEX8r8R6p3c0sygR8Wa9Wsjihd+Xg6XkhsAEG8IbGnRhssoQISJZnJ82qZZLw23aE8t
         HQzddRO1D68/9ZSMQH+UfEBG49rZk9u5MBxt2uDd7ED9JcKUYy6NlLIAbgB2jy4ntF9/
         9skbf2PAVqTSh40HAT9kGd/yedKslY58OoXY52JH9q1oS6NjttDTcOZ8zxkLRS9FvnuS
         6VbJc9xLjNoQJWKAFGUniWzBgnbKdWmq9X8cQc/oPf+Kmc1XwWJzPdCOL6YATvrGvNNB
         Ka6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Cs1SkbEK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i11si140039vkk.2.2020.06.17.18.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1136D21BE5;
	Thu, 18 Jun 2020 01:15:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 337/388] include/linux/bitops.h: avoid clang shift-count-overflow warnings
Date: Wed, 17 Jun 2020 21:07:14 -0400
Message-Id: <20200618010805.600873-337-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Cs1SkbEK;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit bd93f003b7462ae39a43c531abca37fe7073b866 ]

Clang normally does not warn about certain issues in inline functions when
it only happens in an eliminated code path. However if something else
goes wrong, it does tend to complain about the definition of hweight_long()
on 32-bit targets:

  include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
          return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
                                                 ^~~~~~~~~~~~
  include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
   define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))
                                                  ^~~~~~~~~~~~~~~~~~~~
  include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from macro '__const_hweight64'
   define __const_hweight64(w) (__const_hweight32(w) + __const_hweight32((w) >> 32))
                                                                             ^  ~~
  include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from macro '__const_hweight32'
   define __const_hweight32(w) (__const_hweight16(w) + __const_hweight16((w) >> 16))
                                                  ^
  include/asm-generic/bitops/const_hweight.h:19:72: note: expanded from macro '__const_hweight16'
   define __const_hweight16(w) (__const_hweight8(w)  + __const_hweight8((w)  >> 8 ))
                                                                         ^
  include/asm-generic/bitops/const_hweight.h:12:9: note: expanded from macro '__const_hweight8'
            (!!((w) & (1ULL << 2))) +     \

Adding an explicit cast to __u64 avoids that warning and makes it easier
to read other output.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Link: http://lkml.kernel.org/r/20200505135513.65265-1-arnd@arndb.de
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/bitops.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 9acf654f0b19..99f2ac30b1d9 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -72,7 +72,7 @@ static inline int get_bitmask_order(unsigned int count)
 
 static __always_inline unsigned long hweight_long(unsigned long w)
 {
-	return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
+	return sizeof(w) == 4 ? hweight32(w) : hweight64((__u64)w);
 }
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618010805.600873-337-sashal%40kernel.org.
