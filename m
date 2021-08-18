Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVX46WEAMGQEU5KKYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4753F0D7D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:39 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id s8-20020a17090a0748b0290177ecd83711sf2042463pje.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322838; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENFf7e+AAtpGg/hOlXO44airQSsQWK15qo+BlaNcYhPO7m8R7vVfDfp6R+fkLc3t+n
         LyFS16vot7BtBR0IFbpr/LL3AXG4JWuQwFRULzTu4vlws1q3cGgwiaJIEn1JtU4E9+u/
         47IOWleH4Q23rs0EGfB+kfyBXKz2Ys/vKcS/nJgTnuhl6jzWlWUcUyJlUWOOCzn9kHXk
         eoA6tr0C1jxPxcuIcaZaZUionCHKYwEK9m3N4DrXaGV+GtbVdOOt151MFBuLpviVaSLu
         N4/fgdb+Rwfn2X2I4JV3gBjgL2hEs5q/ZHuyyCb67miwRZzgcZNFbqwGY1b2zkeUchhM
         y3Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jh0/ComPl7jDdLhLANiVbOexutNz89eXV0e17tRam6s=;
        b=I6hMzRVB8qalDdBYssaZ1CIc02li93mwPUuiu45I8xiIQlJ1QdvIOnOiXNBvz8HtMe
         Ifj5bLj+IPsGyS698VJivc++v1MrBLpiibaC53fK+qS4UCJ3jQOjxWL1OF1Z1Msia+2l
         ipaWfLndMOPxJx6AA0WDekKLBssgtSfPH/I8+FPUvPZ+xvubt7+F99dXvvPZ/gJ3sosA
         lgj1uTVSTltRW+qiO8sSi2B8eKa6QqV+ba+tqLZgnix0dt6s1b97SECQXv29RMmAJPoh
         ALgXXC2CyvU4rjS/C9e4nWqKfH6JuNTgP6RmZFRlFaLp2w6LWgqcNb7l8bIjdcAbukBN
         IQ3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iGBFjWUF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jh0/ComPl7jDdLhLANiVbOexutNz89eXV0e17tRam6s=;
        b=HB6NUAjZ5kMr9uUVD3t5V/kD9hyDWolW4Z5IOaS2i6BO8gDtWL653Wt+zH0NpKsENC
         1LJcWnu5aZiU1LAw6yDtBz3nBCASKBUoMjHw4cfBf/Ni/CGdAZdiPPS9rqJ4PbHMACMD
         3StEpJJ3Ag1zhMZIVxCEZNUZEyodrpsDPwRxulJOuGH3DY4RA2I/jsyLqaITWOh+wO0T
         4DjuduLG2YY1xybISWxx0GfOXyAavO1W0ik1cnFOtcTSSEZ+reBiptLzDVOLRtx8CZQG
         xt+fk62++5IhPaPM2g+5g7GNCZjWscoDhiYh7narvB3VEDqYg6z5MaNPBm3pb4Z8PpEg
         uffg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jh0/ComPl7jDdLhLANiVbOexutNz89eXV0e17tRam6s=;
        b=h8sfbdrqCd3L4esyI01BF9dXOOWM9lIbYdu36ATAwuqg83W284fy5nbwx922R9dqeJ
         31ogDfEnDrVSHbBCb5ZXaZYdxVMXzW8qql7NMwLrnwgSF2yAxKxqz+scSIfGKBA0NTPN
         FyVDUZlUuU8Zx+E/1tL09qcwm23MxhrSKHd8FDc3ihEKDmoPcYvUNdgTI78JKxElWDQA
         U+GZ3AusM7g4hYk4nhGzfVzKsiRNRCji2OttcNKWPddgx88UWgQLTEv+KCwUh45RNrvR
         huD69T959ePZ/5Yb+TcNKRFtjojziWRds1nxAJ3gbyWZpQicpnIIlvddbcDkrQAQTog/
         eC2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YiURqvdNtK+rlsyey3VolVvVmx/6RoEF9mGqNcySx6W3xkj1y
	YT+1+AkXZhcIO/V6gononPA=
X-Google-Smtp-Source: ABdhPJxeMInni2bUb6aviPLw8LgS62ujtU4XszrDvbLqRX2Iy79/tNwt9ZmkECNxn15KZvnjewKHTg==
X-Received: by 2002:a17:90a:940d:: with SMTP id r13mr11775349pjo.124.1629322838327;
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:9e:: with SMTP id c30ls1426810pfj.0.gmail; Wed, 18
 Aug 2021 14:40:37 -0700 (PDT)
X-Received: by 2002:aa7:8597:0:b029:3e0:1b4e:c92d with SMTP id w23-20020aa785970000b02903e01b4ec92dmr11652559pfn.4.1629322837766;
        Wed, 18 Aug 2021 14:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322837; cv=none;
        d=google.com; s=arc-20160816;
        b=VWEasnEpldHR5o0zS4ctjMVl3dM1EOPIuhm6q3TEYeO4kSrhQcOVEMLYz5l45/7yRL
         NaqGZa6GgtbAaXuaGM6WhDqishzRhnhbW3zpA2iyVcMmRber6dNOos0UDOM0MDYTJR4C
         ZQKjAT6U+614/5o7dabA9gVEXUwFufBFcPV6ejxgqADOoFECd4RsGDR12zjeHqyAIyLS
         cCQ3JUpy+QXukGhvz7q45IzjsFOaYhOQ3DMZSF3iUJlQWu+vCWYUo2UReY0LsfuvuxWj
         Bol528e/M3GKIyT9BerWl7W9XwTZMRSjFg+ujr42thkz09Tv0jpAzrVajH5vq1fUjHIk
         zCow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XLWKK7LIN3Cbqy3W2WG3JLeHKbBTWFft4ZXFdFk9oXg=;
        b=CVE7pUlNWZH72gmFBs37inHNbP0TQANFS5qXC0XQAVIZNKoBUttVX0PMz/lb8MxB0D
         6D043p7gPTTnQfqi3HeQ2+pxBru6uZfGVrsR4lMENdfhsu1jwzBZiat8GhVoEuY71qB4
         tkYdVcaczFexz+56zwNBY/w96hB0gCen8V9YisQkwypVPKqgcIFr7lPJz8ozo1QNt5/a
         Rr+Kr5Uk3B7g/EzYcSRC7/lq/4/JAHB6AAKCT7RXmanM+pVq1CPiyNasEErCCPCPswgC
         XkLaU3zlSPkdXRByfw3hX+sQOhkdjo3UuQ43znTI67TTmTb8foLoD/4pflF0MSD/q3Ag
         mA5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iGBFjWUF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id e11si151075pgm.0.2021.08.18.14.40.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id y190so3530878pfg.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:37 -0700 (PDT)
X-Received: by 2002:a63:4a55:: with SMTP id j21mr10729161pgl.187.1629322837472;
        Wed, 18 Aug 2021 14:40:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p10sm733567pfw.28.2021.08.18.14.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 1/7] Compiler Attributes: Add __alloc_size() for better bounds checking
Date: Wed, 18 Aug 2021 14:40:15 -0700
Message-Id: <20210818214021.2476230-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818214021.2476230-1-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2756; h=from:subject; bh=kP6BgOKRNS6IGb207/dpbelm3mOMw4/bS5t0UhzraAE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5Dq2QiOaeJq1Tj5NGc1dgSWvBgwfJAXIGyj+oL W+yI7feJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+QwAKCRCJcvTf3G3AJnAYD/ 9S/10XpWJFiW6irIxn1Dci3UXeTaYnlapjvA0tEslOoyvPQVNvDbbtNLWWHgdV2hTr+XBIHJIur28v A7Xakugzm+7yFl6YeZTUQe4KtY3TnrzpIW/ADLn9VeJEwbm3Z6guch1tTPonEB/fNjrPd9y+ymvn3o V68VUOEp3Kl1CaGJnfxPwylMu75z6hn8cDBtpx0YXGTNSiR61ScVZIvqdWYmcJkgHB5FCdUY8PddHs cbYZQqMm/AO1/bb/BjABFx3hJ1OBH4L67gBqXXF4rp1IUzx5+r8buFg4dnfe96CAoPaYCTUq32ooKZ 8bCw/3fuM14Rkz9Q4clEt2Ip10fu6f8dY7bg6H2X+66buRxpc84yFlm68N9SeHZatLiQzU361cSscZ HpjrBWBKG8IZFX/yb6lbpbmEpTUJZg+HEK1z0M+bqp+YIsXoV3P04y9YvpfzuJxI+2Y0iuMQcoVK2a IgOCkNBJXpJOYyT3/ahDUhL504XWhbMqxUycST3NEOKK9Qre9M6eQJnr3AwPBl78mvjJw0dpL3Udk4 ocFoq+Kgk1s0F4/okTEQq71CGxjVrdVyJEPDcOOw28/r+NdKvytkpxCXgtV5kxLkKHC3OpsNIOh/ox UjFVO4rREbJdr6qsgDDPo4jDzWk1N3E/oIFKRyk2wCZwpsBPogv1hwZyjZIA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iGBFjWUF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

GCC and Clang can use the "alloc_size" attribute to better inform the
results of __builtin_object_size() (for compile-time constant values).
Clang can additionally use alloc_size to inform the results of
__builtin_dynamic_object_size() (for run-time values).

Because GCC sees the frequent use of struct_size() as an allocator size
argument, and notices it can return SIZE_MAX (the overflow indication),
it complains about these call sites may overflow (since SIZE_MAX is
greater than the default -Walloc-size-larger-than=PTRDIFF_MAX). This
isn't helpful since we already know a SIZE_MAX will be caught at run-time
(this was an intentional design). Instead, just disable this check as
it is both a false positive and redundant. (Clang does not have this
warning option.)

Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile                            | 6 +++++-
 include/linux/compiler_attributes.h | 6 ++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 72f9e2b0202c..34cffcdfd5dc 100644
--- a/Makefile
+++ b/Makefile
@@ -1078,9 +1078,13 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 # Another good warning that we'll want to enable eventually
 KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
 
-# Enabled with W=2, disabled by default as noisy
 ifdef CONFIG_CC_IS_GCC
+# Enabled with W=2, disabled by default as noisy
 KBUILD_CFLAGS += -Wno-maybe-uninitialized
+
+# The allocators already balk at large sizes, so silence the compiler
+# warnings for bounds checks involving those possible values.
+KBUILD_CFLAGS += -Wno-alloc-size-larger-than
 endif
 
 # disable invalid "can't wrap" optimizations for signed / pointers
diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 67c5667f8042..203b0ac62d15 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -54,6 +54,12 @@
 #define __aligned(x)                    __attribute__((__aligned__(x)))
 #define __aligned_largest               __attribute__((__aligned__))
 
+/*
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-alloc_005fsize-function-attribute
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#alloc-size
+ */
+#define __alloc_size(x, ...)		__attribute__((__alloc_size__(x, ## __VA_ARGS__)))
+
 /*
  * Note: users of __always_inline currently do not write "inline" themselves,
  * which seems to be required by gcc to apply the attribute according
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-2-keescook%40chromium.org.
