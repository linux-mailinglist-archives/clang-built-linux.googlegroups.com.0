Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBMFVP3QKGQED6C6R4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCD61FDD3A
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:25:26 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id w20sf1844142oth.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:25:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443526; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/zkuBVUTLm2zDP7JQr4STSYZDZRQm4ueUmJO5aB0NnLeHSzo0Kfp2VqNHuhopdSSs
         StGdjfb8qo/XaAKZmS+R8BJT6fiMZNEMhPBX9ydPjqbF4UWobAaFZh/rys2KkQFDQfDA
         C4sINLPrSpBn0L9cB525OTCaW+2gzWhTb+rnYRhsgeYyrHS9293eLZIaLe3RMTnAe6LM
         I+0d3Lg+L1JZomW7qN5dnQvg8Gem9Y+rtOmNRj6mFvbff5upcw7tV1ER64bZcTLVLYhl
         6g6qsSe+ajJWrIm9Cug2s7VBjYN88EC9y/bRCqnu8IrKYSnT0Zz/F19KJNFb+NywNsBv
         r71A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8vLVtVC55Mr669gklN4M35/+4ZpTOECb7Otv1kBsuh0=;
        b=lM6aJU7BzcP9sy6NokJKk82CGT8kTuuDFiLikcGOiIlo1qfHXIHS9/vp/sKjhWF7y7
         rmJVRtYlZjjLGf7neD4H7o7s0kt/yq6Q1OSzkPUsPoMwsNZW1pRK2F0qAG8fgj9vDfu5
         Q+QetGyU92PdcZlzJOfsVw0o9TpGbEdXrdXIUWw4xlz7r7WvDjCKmFccj+kPnTeBZomh
         TyW6vWm4mzHm92QQmAj5zVOAimrKmKs5cYkX2enWcIZyr2C4gWqgmMkhBdD0+L6Z2mO3
         i5j87agLnRZ0Fu41WXti34TwoW91FuCvTC5SDSGCwSA65ie+rc9HkWzG+Ej6udwJ1FAM
         9Qcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lkTDQ7Rf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vLVtVC55Mr669gklN4M35/+4ZpTOECb7Otv1kBsuh0=;
        b=i0EjniUgfv7SprI9lJYFBeFIMxU+em/Wndkighfb/rQs51q9KQLPBTNOgB9CCKi78J
         /F2vBhrEDm2ierLg1BBF39jRIDrkMKL1fQ4a9wRIzYP/D6wqMOMbBZIzkVDB9eu3Ws16
         48ss1faN5BHgm80jUNrAXMR74XJeZbjvSQOnytECMjSvLY4KbakrI1m9GBv1kCXCME6J
         V9pwgjGxi8h47VLiTnZDut0Duah4qVjKumEDL0TEHFRlVjXu3q1G0bjptFyHGu+q7s3P
         EShH41BsNtmO4wNWrKlbYRtaLKT93H/HGyFgVScRKlrq6S4REXNNtl5JXkSW7kU/A0zL
         uEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vLVtVC55Mr669gklN4M35/+4ZpTOECb7Otv1kBsuh0=;
        b=ZeCz10vhx3ZZK4see5ua17kjfCxjnYgo74BXKQHBt5dL0t/JACFfPxro0EUv50D0+b
         VrueJ/XNrXrTTQxyRL0Te07qk7BfejbX9MLAGJGHSEZkRM6xttFdMyVU39koJSMWWmny
         +l0bHsLYbGEcwb/g943/uKxXxwC2FNOpMKnzSTfmq4FTMDRz/oSG8qq269IJZG3vmdoZ
         fMhgng/x9rJiXx2FwZ0Ax3Hva3P+oVKlq/k7HZkuj9rPckBEa1K6atmQUujXm9hDtC4g
         NIiMJD0g9SttjYOoy/KP4c3HbIXu/ORG4qZkMgX6pj1jb1Vd9ocOWJDhybzliCa8RRaa
         GpRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nAv8kv8g0aGpt8vlomOq4v9qHooeYIpZotxcCAf8MUTpVeplg
	FV0f/XVwyvy4b2ZkVG/zxR0=
X-Google-Smtp-Source: ABdhPJyIgdex10V/IVouYCkKN7NXmNkKseYjW9sjBPdr3SHnwd78T0lKtYDCs/4rUj5dEoZDBQDxYg==
X-Received: by 2002:a05:6830:3104:: with SMTP id b4mr1566884ots.192.1592443525866;
        Wed, 17 Jun 2020 18:25:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fc3:: with SMTP id d186ls829423oib.1.gmail; Wed, 17 Jun
 2020 18:25:25 -0700 (PDT)
X-Received: by 2002:aca:f48c:: with SMTP id s134mr1239198oih.57.1592443525552;
        Wed, 17 Jun 2020 18:25:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443525; cv=none;
        d=google.com; s=arc-20160816;
        b=x/dFrhju/fTih1baz196oljPn2MG33L53+gHv7FDrISktdlr9V3qpkmVgiTMp0lA/J
         Y6y9DofEnzF9lUDOE10cK5KRhiq8hX56T07dwPGiSqJJvJUWSpo8kE3+Yjy211utJn0j
         vRbYRnMR8F/6QOow3PrvYhUPq0Bc70Vin/lVVn+zx8nki955BqQnQ04sgJUey/ZD0J5w
         Q51PdLETZ4BrziZawbEqgh8o6IM0ANn2l8bFAEeMkwQP5OL7OjdEnqDYfBSTXTqzkHZc
         lThzuODEfmT7k+dO32vjQQAgmly/+k7vWEe1RVbXDpcCZeKxm/JCBhsr1f9bjs87Rin/
         mezA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mxFx6W5aBo2YXeRDyIYtsP32jmdSekfY1F2pfuiCY+E=;
        b=kQQxi1bnexmC0oO7jAg6KVLxQvSOY0JY0/x1TAONV1vi9/mmGq30aCDpL6gOGCMZSy
         yfX+M6lfe8QKTUcFAg35LAia6QQ4EM7dnUxFAtlWAiWWk+zCOXHnWD+WjNuV01Q3wLwU
         dxYFxu56i64DCf6HWkJalxRbSTR2mlhc8e7M7kel562tMqNYcKmqWZJCtSN17AVyzNig
         cM1QSnlhgqJxVZUSs+Y86IAa0skVjHR1Zq9xbsZrIFlJJYmLfVl9RwGzVAciG9YQs7G4
         eyEfRZtlRxPRDFwCV29wNZheCq1SewO9GpBuN3m2ThVgDP/nJNZ8lOHhaEjDGxn6TQRF
         BBuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lkTDQ7Rf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l18si84892oil.2.2020.06.17.18.25.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 97C9F2083B;
	Thu, 18 Jun 2020 01:25:23 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 146/172] include/linux/bitops.h: avoid clang shift-count-overflow warnings
Date: Wed, 17 Jun 2020 21:21:52 -0400
Message-Id: <20200618012218.607130-146-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lkTDQ7Rf;       spf=pass
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
index e02cbca3cfaf..5c1522ed2d7c 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -50,7 +50,7 @@ static inline int get_bitmask_order(unsigned int count)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012218.607130-146-sashal%40kernel.org.
