Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGMDVP3QKGQEVYKQLRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9B21FDCAE
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:21:30 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id b6sf1460279uap.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:21:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443289; cv=pass;
        d=google.com; s=arc-20160816;
        b=UIyP1BO6fhGnC5wFmQ/HL9JZrHc/0+yjBU4vMCHlZw8i7F8P5+ZxGMdddVqz6FJUaJ
         HVkFwmG1kuzC7MxAxME+z/SJxPP0ySml3tjpicqzrcdCeSyJ7aDa53PMwl+zpifYtoh5
         TTutM2DDG4U5cXBifJI0paQ91d4ylwJv8dDCwxu1JJOQz1Gfh60yTKbYR6PI2c89lqOW
         kfERka1hd1kQ1BgUOFglEjoL2Ur+RImMtWNrBxqa5h7QRH8i03tcMGyaWBFp7Ul4QfjX
         lZqGbgQC3veg+CowQvaqbQ9OPuHDdo3hkfPkLs/m2NXSM7BEqNu1VFlWeuL/J1VzlHb+
         VWXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Lhi+3i6sUVyCNh+6fN0T87ec7+lK5/9zqROhivfUQlo=;
        b=wFCwl72VMD3eTRyGjmkcW9nQUqgUIEZWSEigFMy/npSGZlwk83arcqcTjgxe+z9xJV
         x+MaPuUXgB9r8J6fdqDiG79WMwrsx3R/5X/GYSwXx+weLikfM1iaC4e+gL0pqfrsXHE9
         S547UGuXSQljMzkGmFInIrfMFwqtlw60BcWRLgi+VpXAGW8+cVc6WjijbeLKxfUEhYMY
         8BmogHm2xRxtxPqrZYwo0xTS87HOyeLZ8KSLIwA8I43yNAReEDUTqXWnMU7NFOeSAFk5
         zAgi3mOjJJRYhr3idw13vhTJZUzUUcxLW9qguJaj+IcK9tMWHNHOQitdjf7IWfJYN6at
         8L2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t8VK7JBC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lhi+3i6sUVyCNh+6fN0T87ec7+lK5/9zqROhivfUQlo=;
        b=HdV1v8ZP0NfTBY/hkuU6ZV0z6VHL09r76L1ZP2g8Ky8NPy2AKlbXxqRGMl622VrroE
         5JoSnQyKiT3KYeKcu4h6aknvvyaEe/GziICf70D+T5SvQ1EXO3QM76/uljii55KnuEJE
         OQlqPQ+yOv7+cuqPm0vB8RpjhRE9R4x+MtK8PzrjN2738BZpfEXHricZ46rDQtioXDwd
         1MVjXSR3AXF0fmBisHdt7F67RifCQtvfbQYIhO/wW54ct0PvsY1aCRoWqH2F9nrNCDQi
         b3LQWUL3jQJJbRUKqEN7iLRM+NWvUS8WSgmqd9Dh+6tB6vB5fQCQJgw+Ekf21PhRfxAe
         LbAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lhi+3i6sUVyCNh+6fN0T87ec7+lK5/9zqROhivfUQlo=;
        b=e0K2sTHAYz0KTkp/Si0IqSfDcILOnN4M/YrSCZgfuac88YtuVtcyhinA/7V94cQYrw
         Yi4OPU9wnH7uUP0TqrEAcJPRbBfx5iVk0KtmVT/lo0OdWlIb04XynuBt2ZB72Y3b62Ku
         FOqxoepHq3ANSFgH0saaPxXyGZU4Nqk2eVp4Qus5E+60uEpf13AacpTQPeccJrWg+QEm
         Cq1MgKK8StcuMq9tjhAAPkXbzF8ATgPhsfu2878a8tyI/JZP5UyWwnsptsi6aZWu4V7e
         OlUJjA335SbT6RSjEQjFZR0OfQYX5M4o6Xcxm3p5gMZR2By5V5BE9m38oJgjKEuZY2/j
         tbfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kvCtBOcgE2MgK2r1Ru0tBE/MYb/LHMAbzJrVgA+owcGYM9Ts5
	nEC6SaW5JuP0+GaEyUqANac=
X-Google-Smtp-Source: ABdhPJzXKcJbgj7+LY+HBR8gc33ZWboMHoPyE+YsmlKjxyMEmjUKIrIZ5jGHPoObqruGpaqScm0T3w==
X-Received: by 2002:a67:db90:: with SMTP id f16mr1516692vsk.132.1592443289365;
        Wed, 17 Jun 2020 18:21:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d8e:: with SMTP id y136ls527296vsc.7.gmail; Wed, 17 Jun
 2020 18:21:29 -0700 (PDT)
X-Received: by 2002:a05:6102:405:: with SMTP id d5mr1627677vsq.203.1592443288989;
        Wed, 17 Jun 2020 18:21:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443288; cv=none;
        d=google.com; s=arc-20160816;
        b=kQLwQl601XaIZArCBj4pf25/E7yYMqXbM67bXvq2kZrWf8kAiwPwMvyJAda5CBb1wd
         j06H8zbHGkJwZBuhG2DKZtoDmCehOpr9DhJDVhzZY+heZkvWHcdW43fPlwqmY/qFpftX
         3iIBA3vVXBBKYOjkD7ez/ANzoH4qqrwlBfKuRIzwKMa0U4qhT7O5wfsy9e5s/44x/w8n
         mjjHYcFez7wIMH4LvPfHH+I5LvqBY5BohqFEjXVtzS2lomUiq4ToC2fiqTaNB/95RUbD
         Xzd+cTJFNpV9E69w63lQMU9asVgy4Gzljmqca+UlKm+5mOgjRJHa4dLx3plTPE/6cV9+
         NQ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DQb/gfMzQ3c9LF666b/FVBTpzcyc6ApsV8kCcvMrzYs=;
        b=ZNF/LMDJgtddHPLS1y2rC5UeccFyACT72eq1bDkkV9f8COZ2w8cLZNtfJHmDH2jELu
         AjigzMgPFiyKzJsiSTtQ+xV/fqcHs3bB0PkIPlqMaJTQjLFGqBrts6lYiIMHAfGYfOwM
         o/liESwa005WoXTmE3p0tMxU2DXuH/PSWyLyW2M02UvAq2dquWKQvOQwkz1N9s6AGcLz
         WjVn0cyUNgRE4dwJffUFp5S7vSrBeOSP7niqtVZnx+wr8uo/rkN3ZGCzb6ZYaJ/7stWj
         hVKFKjJ1qXuKUf6sTCQUox6oaMFuZZ8nWBtKbZi1MqZhT+b6y3mC63oXCphMTo/KddXs
         FXXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t8VK7JBC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t9si106613vkb.1.2020.06.17.18.21.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CE0A320663;
	Thu, 18 Jun 2020 01:21:26 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 230/266] include/linux/bitops.h: avoid clang shift-count-overflow warnings
Date: Wed, 17 Jun 2020 21:15:55 -0400
Message-Id: <20200618011631.604574-230-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=t8VK7JBC;       spf=pass
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
index c94a9ff9f082..4f0e62cbf2ff 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -57,7 +57,7 @@ static inline int get_bitmask_order(unsigned int count)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618011631.604574-230-sashal%40kernel.org.
