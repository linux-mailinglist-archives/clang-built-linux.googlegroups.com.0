Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWX46WEAMGQEZUB3U3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEB03F0D88
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:43 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id s10-20020a056808008a00b00268c82cc7a0sf1170123oic.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322842; cv=pass;
        d=google.com; s=arc-20160816;
        b=FUlZYfpI40fXOt8geSc2o6f/A3XPGDqjMzq65mDWEwflAp17QSriqkvJFMRW+LsUhD
         FV4nnYSNO4+xsmVsRL47ImFUVHwObjw0lNGW2LMF2TfblpXrx4sw7vfQMuHhrXNNwdZT
         qzA22o0f4UTE2M+jneIiIY2vlKX11ga+Rwdw6hshNeX8g3Lv7sjlzNSrAXDavEjdKmfX
         b21XmueWL2qKP419rcTSRIhtutD3K6PprS/lUw7Kb+GZSUWfVHEohLkEloxRTKqPJbP0
         M15CHdw/kVQy5tuSnnqyYBCDmtBBTzhdD/Wf3eegYQK3enq3PzNL4vkdp8YbCDO50DeA
         cRAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0ixTqNbY3EHUA/mjmyly2IJyr54HmYH9WUmD3qpd4BA=;
        b=0CpIovvzF1QdX9+OTQWwtAr7gFji7AkSvhAc8aNNtyuYkQYuhOzpfnZS3y8D+clDaZ
         kntPpn6I7mVxEocxeT4uOR/Tq+fMkGRtZXIir2D/cF/kEAeQ7fvHyrwE2zRj4hY8/GnW
         ijR7CBuXEZoSMj/W35YbKN9t7vYFU09v908nTLrcS0flz6VYfNEPB5bqnA33W4xg5nnr
         eSB6Z0rClgkBZ0+YVtgTrwdxaWvEw6PvwrNNjGFwHT03Cdwt4+DtS+7t5PmXBi8jHqkO
         RbABE5LamXfwQC1kmdaAy4NM4H8GVc/Z/OfXCmAcXNpKKF659FPMR+GozDuRKfdfjXwL
         1phA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gfoOfwCn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0ixTqNbY3EHUA/mjmyly2IJyr54HmYH9WUmD3qpd4BA=;
        b=NPDyinmCO1+Gwyrv5QzwRi2JE+afCBCIqrmHTsbYVC9L/Td3BNo1cf+M7HEm1363DK
         5ZObWA0vyHbCxHTPqeSw/t7+1hoMmfedSS2ltuSo7N9pPGbkc4e1MfoIEgaKfcOrzCjg
         p7+M06DVL8d3vicIRKJvMzKjcK0gS6ZHWwLWN5s8OZTkUNEC9p58uSesGHfWHQFIfjuM
         Im8rTU2YIsKLzdpOGramkiudjDtI7qHYOaKMmw0uk1Mm30ierY59gDUt+tAHs00my3/y
         s7rRgp4eFRKm3sgSh2Ikre/QfVxzpPO1/hgd2TaAPC1oRnWWcjPCLcjQxQdgbC8M+0yo
         ejwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0ixTqNbY3EHUA/mjmyly2IJyr54HmYH9WUmD3qpd4BA=;
        b=fYo1mawFXRfv8EghjhgdJVbnX2vyqviq26N4JQbh7B6vJq/aq4k/LAnvQNqSWfNOvZ
         irujBr7jCPQUSQigaSoIftcmBUMigrgq3ZXv4s6ii0t+d3do04AeVyEDWEr8u9BuzXXu
         mZa0DygQJ2njjhDUi2NAHHnESxhcv8122OSf65WSLviM+3HLqAs6/mP5sCWbIM9oG75T
         bMqthZaxnWweNXEdkOJfo4XpF1kQZDLSXnxsFdQk4TGPB1t4U9wNHrUlXkVAhiTK8e7I
         6CXqDy8RsHJ+WzacoDP7RbxqgMxxVaQeHSBMtwtPSZnLr88Aci3tluxH6mAl6To0GzKw
         8nsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CRFFIGrqhBElMAWssJOampgtU87zPIG6W0EXAYglPSuJoyPkR
	f0zBoJOUERhmjkd5iCaNH14=
X-Google-Smtp-Source: ABdhPJyhOJZfVHeuPDTw2RqMSQhrH39I6w+BExa9y/sgHj6NsMDSopG1X0jdLZGCJ7q3OB0JrIJsYg==
X-Received: by 2002:a05:6830:3181:: with SMTP id p1mr8857932ots.210.1629322842667;
        Wed, 18 Aug 2021 14:40:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2689:: with SMTP id l9ls921903otu.8.gmail; Wed, 18
 Aug 2021 14:40:42 -0700 (PDT)
X-Received: by 2002:a9d:5542:: with SMTP id h2mr8875479oti.25.1629322842302;
        Wed, 18 Aug 2021 14:40:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322842; cv=none;
        d=google.com; s=arc-20160816;
        b=OpAP/IsMOvvSO+3kotWoNV47tDXNaNcFFRRNvNWKBf5S5lnDy4yJtVBYHp4t/PVLW6
         ++XQ34STPpo4CUE4MzFf2S4QfL1X7t+v4GRPIE3SvKlGUytZm0AQnYh521gAqq9N+QCY
         KoaSMUqxls5aZXN1ptqgnlkjbOrQ+gqSdE9CAnVr6023gelVs04UeNcfeEwkfGb7C7C+
         0ZktrpTpcilsWa1elbRFd9wEabe9M8DBRW1hKtcV6qBQcSodDzjzPJxtyyLLF7V+KNUp
         t+glN4U4dZr5IQF6rPFQliG+IWfI8JqYxkLHvVqRICuOVkaMAAl/fbjGsyarbLL7AntI
         azNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=obyCsyhTKD9ULYgdRm0xF6fBRvJ21Igqh3M9baDJkzs=;
        b=CkSPz3EyPjfpgSWpzTsNBOjqWfV79VkwQYU+p7DHpyj21A5o+v4mSrlvoEuk4E+xwo
         TYUmnU7cS80N8UgXqITaQWlvFnB3HY+QwRW4dYb3JZeYdiDSvMjYqDGH0cNjP5FxbrU3
         UaKr2QA31OiY4RXxHVnexISnHqhmbgffpOauu+cx/rb28bTSSqYEawT3gpiW5s6/AFNP
         jGPXnLsizAXig/YcdJDiSjCqUp75HjE2xB4zHquZyAM/+LGpYGS4XmnreBwg8i6hdeML
         FtvwQYapkh1/nFR5lsdaz0SPU+mSvxE3HfQT4qU1VjL/3LU92Twbsbn9NcEwR79WaVtU
         ilAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gfoOfwCn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id s20si100310ois.4.2021.08.18.14.40.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id q2so3729103pgt.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:42 -0700 (PDT)
X-Received: by 2002:aa7:9086:0:b029:39b:6377:17c1 with SMTP id i6-20020aa790860000b029039b637717c1mr11523853pfa.11.1629322842023;
        Wed, 18 Aug 2021 14:40:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d22sm2428pjw.38.2021.08.18.14.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:39 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 7/7] mm/vmalloc: Add __alloc_size attributes for better bounds checking
Date: Wed, 18 Aug 2021 14:40:21 -0700
Message-Id: <20210818214021.2476230-8-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818214021.2476230-1-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1906; h=from:subject; bh=zZAhvg0/X2ZvejN1Ximar4dbpGivh/+QQFsXl6ok5Vw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5EQcnqyfy1qEIP1S4mcozbG6+autpWOD9SsOFn +9NTZ52JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+RAAKCRCJcvTf3G3AJkdcD/ 9jF1T7G8iKELXphXJtJn6dWEfa0njsQ+5w/PgRzIb8ou0ZSzyTfJxwPTEhiiS8YfBZIbgG1olvXO1/ 9jlS/Jl7O6s1zJrbjTkAG+0YryyZeUgN0ikB5brvDOQADIQKa8Qv9p0nJ8PfnTzf3Y51GwQnLYTYYm m1pgQQJWt4Me+uYokWJyi5GZRoplJ7c7nEUJ/wfR3DD9fKzuP2kDP8cxiSFG+Th587g8qd0y/jaonj m2Phd4OY38vdxSbHtXYJHgVrnV4mdjhJI0fq7+/X7e6DsXV0seK8QO6/wgQP4hqUSLSUCQIunNHA+L IB2DZ95EFj6p7mKVVqGUNsqZZtAR40ad8E60M1SkpPImENeFhkBvCxk64cZo8j2rNryfFZJPYqD0/5 fVi75RuDWLa74deb59h0nK9wYA8qe62eXlCl0SZTz0GPBhPJXbgRwD4e0gHoZA5I4nRYjc+g6SYrl+ cBJNjVlr6nOYr59zb63l3gaBmo7CjoRlYRLlhlOor0UwVo4mDt6HgFO9Ns0hm7Q+z9TfKhBgVvJfgm rUxXWyozpmm26ROVdgGw7jhw1PCulKCVaFADIaMLXfZ156UUZirAS1jaQQQ0rhFNtKOUrtoGZJsmlD SO/O279GWNlF3ovkUXiQFuJ5GbVSkbIwwuCdsVeHSk0PssdSMAWKGEHE637g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gfoOfwCn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

As already done in GrapheneOS, add the __alloc_size attribute for
appropriate vmalloc allocator interfaces, to provide additional hinting
for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
compiler optimizations.

Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/vmalloc.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 2644425b6dce..1521ba38957d 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -136,20 +136,31 @@ static inline void vmalloc_init(void)
 static inline unsigned long vmalloc_nr_pages(void) { return 0; }
 #endif
 
+__alloc_size(1)
 extern void *vmalloc(unsigned long size);
+__alloc_size(1)
 extern void *vzalloc(unsigned long size);
+__alloc_size(1)
 extern void *vmalloc_user(unsigned long size);
+__alloc_size(1)
 extern void *vmalloc_node(unsigned long size, int node);
+__alloc_size(1)
 extern void *vzalloc_node(unsigned long size, int node);
+__alloc_size(1)
 extern void *vmalloc_32(unsigned long size);
+__alloc_size(1)
 extern void *vmalloc_32_user(unsigned long size);
+__alloc_size(1)
 extern void *__vmalloc(unsigned long size, gfp_t gfp_mask);
+__alloc_size(1)
 extern void *__vmalloc_node_range(unsigned long size, unsigned long align,
 			unsigned long start, unsigned long end, gfp_t gfp_mask,
 			pgprot_t prot, unsigned long vm_flags, int node,
 			const void *caller);
+__alloc_size(1)
 void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
 		int node, const void *caller);
+__alloc_size(1)
 void *vmalloc_no_huge(unsigned long size);
 
 extern void vfree(const void *addr);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-8-keescook%40chromium.org.
