Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXVL6KEAMGQERCQ4J7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2947F3EF9C8
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:08:48 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id x18-20020a056a000bd200b003e14701b71dsf628126pfu.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629263327; cv=pass;
        d=google.com; s=arc-20160816;
        b=y9lJ2Zs1UFe+bWt4uSbtuocZ14caO5jcvPUK48e7hZKfMIz8dP9G3l25S+YAT3ymrp
         /TrPECaCsAG37RToeM9mpRmTj42SwFwCLNfOU07ah5czNIPPqqwFWiQolkHXlEif8C4a
         ZoVnIfRDB2MdQeP+5Rqu71htMhAXUFo9HQA3KfwTi5UwdwwH1aXVfJp9Hg5cnvOSQaO4
         p76zxYoReUDARaikJkeeDSmKnMbcUOoa22uvUCqFk3n4eR3hz3vcL8iaCxt5m1cH5MGY
         2OkJwX9Ly5H8XLbu/jCsbEdaNAoClq4WLifcgZvost8tG3oBPKDD89B68Z77hcJegzcV
         kHHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Z2WOnnuNEUdBPk68m+i9m34qd0T4rbvbxZvduZzXuWg=;
        b=vi59KOVG6iLmFBWpfioOYsZj2l5VRZ79/rFGVS9VQK+9+2vxXTXiSAoK2nxJ/326Sq
         j0HPCzLVHSIISnqi5Z7GJsiyLISmaRiLEBOKA3bNGLc54qGjht2zilY3fACVB8L2GlBa
         E7QzrzXe5SCb5sOXFwA4McIGIQ2KxjokS/Vxf4/7uckuiFYr6FpUhfsibYrRVgyt5eFZ
         yuLT/0D+bc20rFUBNbwxoV8qi2wzEIHhxb6/79VGE2ajJjvFXVimqBULdKbBTofNs7fQ
         WQ9VdyBHmEhji5hinW28Dm0uP1n/Tcxvr8KO5mNgmg/nC0HtOkR8K3fJIdVM+Cik+wsF
         TGDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MDQc7Qo0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2WOnnuNEUdBPk68m+i9m34qd0T4rbvbxZvduZzXuWg=;
        b=YmUkByqfo+ngPUZBnd7KbZP77uwvREUyjmMePX+l4qITXkEvohaFQedEzl+gcUcPOY
         YazpaVYt50X49f/ihmUw3KyOnuzrjgO9rep24U+OvyoysozX058TPtO3HFbZU82iswwI
         fApsKANh8d996jYQLyf/TFILNYJ+Vcyy8KaklyWEfsbDOHO/yjPK/do+HTF1fStfimYB
         qiTR8/LSJubaqDb3pzgynSud8+bw5yx2C+X25knYwcKh++T2ZriktjmNWDemOIEw52uq
         ZLDeUefIaEOjyr8E3198XX91lnvWVJTzwwJYieIf1Bq6BgY3UgACvpzzj8P3dS/fRYtz
         0kuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2WOnnuNEUdBPk68m+i9m34qd0T4rbvbxZvduZzXuWg=;
        b=Acu9GRzzcFlI6Z9fupH5JGFePEI5gVVWX3RSaC2Zvmcto3kfPU3bwhs7e9mxPBsakZ
         C7hInidkw+8AZLko8QLEwTTzTTECA1Ue1ihcteUxzMuehGxpfrDez5GUsYE5xBceqACT
         Gqqvj8cAETHgR8nz4JJRySEvHYYPktO+WhxfY0VZ4LLtZ3wyQ2rCrx4qsZbHRY+Iv64j
         l1yW7vHTV3iGi/nbhyr6C5BsKP4cbktJ99kZYPO+TnIiJWeT95d1dhit0ugdCwW+XY3L
         mKqI8U+95O7ShcjpO/uqqzYPAg+K9H0GwtU/uhazwD5DhtEtCxMgXxfD7nctkwQrdG6c
         O+wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FPaU8hjDGiawhaOaoWif4r+vY/6UAgmNONdFtmLsieYXWxtzG
	aPROZUvXjOvVn4d+rCeNOpo=
X-Google-Smtp-Source: ABdhPJwkCRkPHvBZmjoFWQtAxymBDb6riUS76HKVhy7Q3iwZeTBA0rZvvbXZvT8tsuiBNVQD9cVKhA==
X-Received: by 2002:a63:1914:: with SMTP id z20mr6946600pgl.87.1629263326862;
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6d82:: with SMTP id a2ls2140236pjk.2.canary-gmail;
 Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
X-Received: by 2002:a17:902:c286:b0:12d:c7de:5ee3 with SMTP id i6-20020a170902c28600b0012dc7de5ee3mr5920433pld.31.1629263326354;
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629263326; cv=none;
        d=google.com; s=arc-20160816;
        b=EFyHjlkpXQhSdhKZwd4X7J1nhdfDMD3eoTvD1pw6U59QhZ/zfiG2oVsdIlPOPB1/n5
         ekh06o/X8gwYuDvASKZyjUDRxg+hFcgy63s4YOLkpzUHRhG959EX51oCWKFLHDiAG7f2
         ZGmrpdh+AD2Ud8H5BN2/ZLl7sc/sJdzuqhCaQTG7xRm4gUbnKaIVNAjAw1feKT1tfbol
         nl57n3KOfPoebzgLojilVk+QOGSXBYUZzGQHumM1s/oUL5/U10c9/v+5vDpP/1Y0hULa
         50PEwK/NLGIgiy8X16RaaUigqyKHecc46pSIOo754RunCmaPfP5b4NjuQNB29G4XTgIU
         LL+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Kwe+7x098AFAsp6HObDqzLfsA9AaOtdAmm10Ri6lneY=;
        b=X6P+NPd8GrNLGRqHrvHyj127poLTj+fS4z2wRyQzpjxBc8XCvtk0gNCLDHdPAAf1CQ
         iZEYOq9vJ651Ubf3NR67GZ5cFoidGlq02SqeZp01b39AqQweDjgh55aCVDimni4b7/sM
         6Xq0ZZC7tPuppYKrBLBujmsZ4oWasgTG4vFNt3Q3zqmeO9u/TA4uKe5atpLDGdmkU6dv
         XWSbfvk3TkPTBT408jFMzf/Fb+kVDtShbxPS5Er1XMf+VEEx+wNNas9RYnaDIY6e6P0w
         sqhU1RIa3Cr9ZvF8KJLKqShM3mJ40+u+teuSEdZWTREk4HJcpKzsNHmLPiNVr1+L1UBk
         1Ftw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MDQc7Qo0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id r14si374863pgv.3.2021.08.17.22.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id w13-20020a17090aea0db029017897a5f7bcso1516935pjy.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
X-Received: by 2002:a17:90a:f3cc:: with SMTP id ha12mr7432352pjb.195.1629263326119;
        Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a6sm3604432pjs.40.2021.08.17.22.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 22:08:43 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 1/5] Compiler Attributes: Add __alloc_size() for better bounds checking
Date: Tue, 17 Aug 2021 22:08:37 -0700
Message-Id: <20210818050841.2226600-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818050841.2226600-1-keescook@chromium.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2380; h=from:subject; bh=Z77R0+fHluP6o4NcvIwdkfyyrw0mnaqgtPexTL+jzKw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHJXXXWv8HAUEH70BjLM8r9L44FwLbXyX7U2SbMJG cW7X2W2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyV1wAKCRCJcvTf3G3AJs7vD/ 9D6DcToe9pHFn5VltA0eOO5yqBac9LT4thRelqAQ6laxUduO5B+8FOxZL1OSulQlHAssoA3PddQ2rY mVpL4OrFcFpbtY2UXGJ/x/aqyeSOQ9uqc98i8zR47nEaK8YS6Gj5t7MqZvza+An/3E0WFvpeYSr4/P C109T9G+TfMaEsTELu5ATpiYLUzpDfADQsOuHv8ArEwVqwmZKZ4Uypjg6BZ5K7SyiLRaxytnIK5BKg uvC9PDWqZf8t2bpKtUpMipLPG1jEJqzfUOYTbXStV5WOYALSkvEOW+DZbDVYb+LkX6Pclzw4hSr2zZ nMKVnI+7XYK8ZE0/JBfW1KGNsgBfuRh7HYEgbypFfqzhX98Io6pNdGs0gecrX6MWNRDKFXS5JDgzmI nlCUKfV+akKM7wnefg8W5jF68bNPS3imqX4Qs6vrh4mF+0mHsK3t8Gxei0V19G0KU1BQYa2uFFhTtd ZYKAJCRrLu6r5YYTsW9eaPk9EYHpBnOMd6jASQ6WdPQFMsyzMb7x2JzXNNx9Q1v3ZnJL83pxj4g5L0 Bai0QE6rMeDH4kkazpjhSSOdOoZeUYJrcTNmlQD0MSJMK0LDVtjsvvmzdjwwPZQu9fJvsGuoAKk5Za +sS3ucLwhHMw7F1zksA5eG5+qFMGvKGBpn9fFleWOuKlJMxDM/tV5rrm7ukA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MDQc7Qo0;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
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

GCC and Clang can use the alloc_size attribute to better inform the
results of __builtin_object_size() (for compile-time constant values).
Clang can additionally use alloc_size to informt the results of
__builtin_dynamic_object_size() (for run-time values).

Additionally disables -Wno-alloc-size-larger-than since the allocators
already reject SIZE_MAX, and the compile-time warnings aren't helpful.

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
index 1b238ce86ed4..3b6fb740584e 100644
--- a/Makefile
+++ b/Makefile
@@ -1076,9 +1076,13 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818050841.2226600-2-keescook%40chromium.org.
