Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW7T56EAMGQE6AIBKBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 323F23EF13C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:03:08 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id z20-20020a9d65d40000b02905173d569315sf6846594oth.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:03:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629223387; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1foh/JzBYicLycdZpHQWWSp/fUcVGdnLAWwpK3vSJiCx6gDFJmn/2w2w1Gg77GPLI
         MUlGGGRJ81NVpd41Ka+ddl/U27rfzTjq4xaFWKeFzKDMOmp5qz+hejkEhgaZZ7KvDWfK
         NXyOH0nQIw93hteOBAQ/DFrVnN/GIyZVqmU51OV/kGQ1nhTn7Xq4qKBURLqsZdbhU27D
         YM3sMUwRP/T7lD0RgUuzt1gCVv3BKnd12RcWYIxVOeMZLNUohbYyK0ATYfjeTXYuKNob
         L5ptAKgM9nSonA+Lrd8RHv1lqseuBgD1G6Yj+TuX5EPkGEr17xk5vCjfkWyvSd/M46cO
         iCMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KZWIxk+Rhld/tlEEI2bA/IMuFQMBGfvOjZFkY1GbYuo=;
        b=vmP/O106eeBfX/m8sqt/pQwpvwypiGm0eUo2Kvn9aefA0oYkkbpMhK3k6BXLVYfVI0
         htDpaHt6GYxXYX2jmtxXzXCyf3DXI/YPDXK8C3l3uZ/E7XXY6+ByXFbINHGdnSZoggXW
         ajX/u9hWJMY057QLyx9tfQZ21lw9CnbkMWKUlhLmMUT83xgpe/oeTM76EPRDQJefUIRu
         5hWvqJc2aGrokCZOQdcr0jqSx5uGWMn7JMMH7gKQR0emMll9WYu4+h62oatlreHXbBd6
         WRJcEjruDhgywDZBW/v/G+wykqOln44sF1SztWAIfImK0G39eo6vZu2BKA9MUS3HMozl
         WoPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hc7K+Fgw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KZWIxk+Rhld/tlEEI2bA/IMuFQMBGfvOjZFkY1GbYuo=;
        b=cXIaiPxjyLVwOndGfQ30jyGu0vOea641xNHJjDtKc3qihTskB6Pq7HWvSnQ5XdOgK3
         sP1c5elStWE03kS7kG9yZiizw3kuvmzp7PnrMN6KsTyLy6z0pzoxD5W/CRoA36+AOndC
         nVcDpk1anjAfwgiPfCMAGovHJBeCYF9a1r0M7XHcjlylS7BlCMcZRpPk/EoV9g1tq51P
         Npi8vuGlLrEwQvk2uIJ+4/uvaMzJI3JbwbHErdzPnNq+OxT+NXRYeG8bQlHw0do3MKX9
         f6CC/7Zit9/tUlmJvA2DWOo4fvLvkU+lQ6zzNbibrv65o9z4hwOjBbd4CF0oLVB0rNwF
         ev3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KZWIxk+Rhld/tlEEI2bA/IMuFQMBGfvOjZFkY1GbYuo=;
        b=qI0PgXVYRX9AesZgJxhRSs2ORd0t5au5R3DBaD8H5DPDf8OgiB4z7xdeXm2kUV9REu
         U9UVFBwPDMuKBHJpP//h+r/DGWTM4UaQumFgyN1YWODH5IKpYeM05EGWOcQwNab9EIMV
         Hu1TT3dagZ4YW6iwXJlXrj3HZ7EeGvK5GGy+k7MJiwtL8WJJel44A/3ldqpEXJ5i/rza
         ESj2nl+lw/C145XsZnLXOaJ0pc1U8xoCCVQ3F6/taZaX2zH5MyU44iFLrW6JhBXzDYtT
         mk0Bm5oDKAgjhmH+0efzUKxqtwULebbn+1aN0a9NsKpCSHDDCh7OBjpi4KawR4DDNWLF
         ASpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nyrD7MT1/b1CWQTEVrMtxrubMvjv2pG9ZnK0HDseA8Qk9CQNG
	tT7N7CDZpxv5lIWU85txhiM=
X-Google-Smtp-Source: ABdhPJya4fGYwqDoEzAjSlGMLte/FfL9zSg+7+zAJcVGDc1RPFFU+AzqvesZFJtalvkGq3KtkdFFsg==
X-Received: by 2002:a9d:4d85:: with SMTP id u5mr3482128otk.51.1629223387156;
        Tue, 17 Aug 2021 11:03:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66c4:: with SMTP id t4ls701132otm.5.gmail; Tue, 17 Aug
 2021 11:03:06 -0700 (PDT)
X-Received: by 2002:a9d:4d85:: with SMTP id u5mr3482100otk.51.1629223386731;
        Tue, 17 Aug 2021 11:03:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629223386; cv=none;
        d=google.com; s=arc-20160816;
        b=nLFrX9+g37O8teg+N7avYO8rw4fML2toKuhB73rHi1Z4Xne+FYNrxQl3HZf+pXZNXS
         nB/Mc1ib23oNSDVKe+p2MuIyvma/bNVCPRr7PwCSFFVWgA5KG1RhMtZkSr6KCNPX7JHD
         E5/i6VOG4wUJdsPIiGI5GX3QBOGdLJaCUYpRyIVqju+HMkHvTSDhcgyQDL9mxzXDhxdC
         2Pg5zbQaN2VwFjx9nVLuywZUz0t/u2ucD5KVqpyeuxJ69r/tAyolmK8+2g9y/htjkZO6
         VZ8wSYqdXAfEd/MdalRUE8aZGgvtyGXvL6nBP1EuBe1HTGQgWEZBvIwb524DNFyNNpji
         riqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6lswvnaMe+F2ActgzyrTI+M1fqtFvqoQVjkUc9W7PnY=;
        b=f2c1tLfg8xhp+VQfRMe/S1CAO5iS0xbq3k8IrhoOH3TGQu3ui2REg68kl6ThydcMSW
         s5cPsochIqLOqCAxiHBJaLhCnV51zCYA9jFFbkBzbyIk38Rlbfa0Q7Lh9GJyOjkdGJ8k
         rtWZ1MfMlnNx1GHLyFCEEsajI3uMCo6We0IKZDj6UliGR/LfLI5lidJm+thXFLD/+DuD
         xOVTMHegZhEwIvt/+eVclsCPfi7SjnE572oyDlWHcT0Pl/OwBCMY/93jRbM7qfJo9goX
         wUV3SUgoXdW2lKkzke7ixq3fQzj13cPuF+LM2Fg27ZWSB/5e1w4ELdOuFUorX7cx2odS
         fquA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hc7K+Fgw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id b9si282252ooq.1.2021.08.17.11.03.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso6574471pjh.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 11:03:06 -0700 (PDT)
X-Received: by 2002:a65:6398:: with SMTP id h24mr4682422pgv.367.1629223386078;
        Tue, 17 Aug 2021 11:03:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g2sm3325769pfi.211.2021.08.17.11.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 11:03:05 -0700 (PDT)
Date: Tue, 17 Aug 2021 11:03:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
Message-ID: <202108171056.EDCE562@keescook>
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hc7K+Fgw;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
> If you/Gustavo would prefer, I can upgrade that check to
> 
> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
> 
> I was just trying to save a call to the compiler, as that is more expensive
> than a shell test call.

I prefer the option test -- this means no changes are needed on the
kernel build side if it ever finds itself backported to earlier versions
(and it handles the current case of "14" not meaning "absolute latest").

More specifically, I think you want this (untested):

diff --git a/Makefile b/Makefile
index b5fd51e68ae9..9845ea50a368 100644
--- a/Makefile
+++ b/Makefile
@@ -859,11 +859,11 @@ KBUILD_CFLAGS += -Wno-gnu
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
 KBUILD_CFLAGS += -mno-global-merge
+# Warn about unmarked fall-throughs in switch statement only if we can also
+# disable the bogus unreachable code warnings.
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough -Wno-unreachable-code-fallthrough,)
 else
-
 # Warn about unmarked fall-throughs in switch statement.
-# Disabled for clang while comment to attribute conversion happens and
-# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
 KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=5,)
 endif
 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108171056.EDCE562%40keescook.
