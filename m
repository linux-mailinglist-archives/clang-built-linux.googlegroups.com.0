Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBGN335QKGQEGGPJM6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7A1281E11
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 00:15:33 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id i18sf2277530ils.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601676932; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cxwc2tsc0AqPtvMTTBwjdTdHeg5XcGxmD/U2/UXCx6J+1VxuSsI9bTIAEkf912Yg3k
         m4a48xykYozntvk/0BeP7O+B0VVlP1ONFg4TKylx4GeeY6ZPvk6Hk7noLhj4yr0gkOrU
         99XAD+QGdiYPJR0gVfDDx1aFqf1mwZT8hOhfJ+RzbtVXcjza1Vuv2+k03n8yeTcdIbeU
         pRUjynLGOW/SoHuLXLwbaWf90RKcgCf9xyLRGhUyIi2wgdgj3AOjqAahTdhIIbNx/gO1
         ZAPEmJYXXudvpfb/uMSa76jbcHGQPA9ScWh+AmSEQccGMTMVI3XIO1rydd2QAlvDjHsv
         k/kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7hZ0lqa0weu0Q2p+cP9IDlFfeTnYQ242/hAi255OHag=;
        b=dq8aHVvPsIcfZ+whrEelBPU+s9V3VtDw4OELVxVm5hHJvM4S6D9QglXmuBcIiyM+N6
         TvvIU5PSlavlqFeGZqbR99NmGNqIL/NuqqiEYiVDfUUXQSF6borA0YnNpEqHzL8Uza3U
         VB9mk3fJ5lempwDl89oFcAwDtHIAPdi5qxE+Z207rtJTtnYcvCAFYScrgk8cNheRU2f/
         huTq5o1JJBMJVKUo9ESf6ypHxaaNiPjEMR1LCKOPGlEx2RRg42PyJaPoz7x9OpFG2b5u
         DXKhe9abSNwQK9pPOt02QpGvkYWmevybNMKVz24go7SySrDsNG4JVFTyuEjhWDCOL9DX
         nV2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NspRsNBo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7hZ0lqa0weu0Q2p+cP9IDlFfeTnYQ242/hAi255OHag=;
        b=HvmrdFpjl5RvHn3rvfV+VYbYPOyugu2qoDGlAyFnOhehA8ccQz7AY+GnqNxo+oy6Jk
         XWHrULNV4TwBHtrFWNlPpkg9YwxpgMRNG3f85qLWz2OR038Iy/VflnSIupDWK2uzSHxn
         JLupRxB6wxWiMIfkE0H6NQhSZoqLKNEtniS0AMQugvJBmK64oWz1UmxkRsPZt/iRfEYh
         kFo3DmBRhyYQc0x1AcWguo815JHv9kLewcMr0B4Q7ExUMlDi/55kvm0xCGGrVkXdXmqE
         dRtW25lHAE+el2lHQspRVhO2wPFKzuLwMD8GuUnm5OfUg3fXjDmHIj3S09H1lYuscMgu
         R69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7hZ0lqa0weu0Q2p+cP9IDlFfeTnYQ242/hAi255OHag=;
        b=AeVdRi+MhWjtxxe/ljhbzrYXyqMvMTGXM33bWEO9OWvqC1O/szAHKZXUWbdg/H7isC
         8ivI0Dq4ORD7WDmYC2y7R3CcUWki1atwjDo1banH8bY+TZF8JVfeL73CewPBtcyFMXp1
         4/0Di8T37OfxslYNLng/42GBl/ZdGgguA7l383eNHBkTtOyTTjzSq3MzM7LTlt3UJLQI
         QEUK9oRYudmpeJo9r6vFvAq6mwOPAa/5D/0QleGjKI4d88KPqPD/PGcSlR1c0xxh+BN+
         IOBX42wtOYrues4Irsrtn5iWLAYiiRfCx62gRSPA6SjVKnbJQiOQVYY+hR8rFmewiIAG
         E5SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/+QiCpEADnJ2iXe+kBi+E/UOW9dyzj6SDJAm6sLp7lxGyQX5v
	wbx5BQVVnEObI4/YJhC3Ufg=
X-Google-Smtp-Source: ABdhPJyPTtjAKWos5ocd8cB4oud0YISSu486rST1UxC7VXot/tJTJszgg5P1aH+J9RnG6ClyUqwXLQ==
X-Received: by 2002:a92:d986:: with SMTP id r6mr3529299iln.302.1601676932329;
        Fri, 02 Oct 2020 15:15:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c805:: with SMTP id v5ls738351iln.1.gmail; Fri, 02 Oct
 2020 15:15:32 -0700 (PDT)
X-Received: by 2002:a92:2602:: with SMTP id n2mr3649244ile.82.1601676931991;
        Fri, 02 Oct 2020 15:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601676931; cv=none;
        d=google.com; s=arc-20160816;
        b=U+Ha4EUtsD6NqLa3Pmuo6f/gRQpArxUkw9a2JgJlRIvWWY9gktn1XGzPQu5T/CDapc
         J1XzhB9JrhJTE8O2tVYrMNRlFKNNeIOyavDwl444+LU4Z56qw45NL0KM/CvzPHnQ/EG2
         PWpuLsW50x0i0bqg8f7eUeDTVJ5JpApewcJilYfTVeG+hrZpH0XjHkrP5tjT2iIbbl/u
         RuBrwV8HhgHcWgYblMhIz+EpTdzilqa9qZzMiJwBDzXBiN7jwIOGQULGHVLFMH00Lhup
         RqD3f+/08vzYlclAMVzurTu+6cyRL8XIisvX29ObURfatjYb19ReV9ZgM3Dt5afcRyxU
         xOGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=V0SUsmWACvD3dNMBDG6SPv9xQ8I4+FrehwcPDr9x9nQ=;
        b=ya8G5mOP4IktWSDToEncacSbvz7+6AdGLwyXzq51nCQjKMFnSbcj8LZh4bUBVsrMXo
         +ZxP6scXZtQbKcXorXx5LUEBtbQWykWhLYJS5xFeUH/M9/ilCyKEzNRO6uZHO2suBTJN
         k0cRjyWIMVUotKWKOLXUo6js+fwx2Dmnc+dRm3ZVGzbcnOzF1nFUpeO2cEIGUIoynvHb
         8iZ6WvwsPc7WGcot7MnCC0t+Rz7rrOEzvrniedp2fz5M6xGp31GAcpbXFqXGKTFFggGH
         cYVxqNJ5uN3hH+/4onlRihPzBhynIJYqiFpO5dKCzcQAIV5BYaBmgwCAItDB62wpBzwi
         4wNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NspRsNBo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a13si205634ios.2.2020.10.02.15.15.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id g9so1222255pgh.8
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 15:15:31 -0700 (PDT)
X-Received: by 2002:a63:794e:: with SMTP id u75mr4097073pgc.233.1601676931560;
        Fri, 02 Oct 2020 15:15:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k4sm3349568pfp.189.2020.10.02.15.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 15:15:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] ubsan: Disable object-size sanitizer under GCC
Date: Fri,  2 Oct 2020 15:15:25 -0700
Message-Id: <20201002221527.177500-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201002221527.177500-1-keescook@chromium.org>
References: <20201002221527.177500-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NspRsNBo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

GCC's -fsanitize=object-size (as part of CONFIG_UBSAN_MISC) greatly
increases stack utilization. Do not allow this under GCC.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Link: https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index c0b801871e0b..aeb2cdea0b94 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -104,6 +104,9 @@ config UBSAN_UNSIGNED_OVERFLOW
 
 config UBSAN_OBJECT_SIZE
 	def_bool UBSAN_MISC
+	# gcc hugely expands stack usage with -fsanitize=object-size
+	# https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
+	depends on !CC_IS_GCC
 	depends on $(cc-option,-fsanitize=object-size)
 
 config UBSAN_BOOL
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002221527.177500-3-keescook%40chromium.org.
