Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDUNTTVQKGQELYOUSAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E78C1A0DDC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:15 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id y22sf801326plr.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032974; cv=pass;
        d=google.com; s=arc-20160816;
        b=VM+yuh9mhujC+paP/kxmEUemlOHyUFLYZiAbr9YRdl2MWwF5XysWGN/FJ0S5e5zg67
         K39JCtAgg7D6ekr/3fcNGNS3v28HsZMidxGhSM5hMdnIvFdSp45bg4or1AJD5AMcp4lo
         PJa0Ifbaj+h78B9OmLVJqAfB5s8BXp7LfMVoLyYPRPpr+MTEmNQrCo6M8OjhQAWmKb6e
         VN1KEa130KwyvEGQ/sxAImdnWd0sOYkyEO9XKKMDiFwDHg3nPDmr8BM6jY2Aywn+op4b
         VaWFcDS7BXbSlY3Aj9xYJ0qzMNErmZfvbLmUwH1xuzPDwy53RFktUB6k6+hzcSEP2c9J
         mbYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0LUKpA9PaTF0RG3zgEK6OjkshmtOfP5nfl4xNWI/z9k=;
        b=RoQfjA4cgELkrjkoHgGe7QmAp/tKJKPyM22gFgV+kxZvKX5b5v3ipT7+KqwvV9UaLg
         PCuOIGRyOWEtt9EMTMKDm0DL4nqbON3d5qR1pA8BEB67+/fvGbrskWSSq8xh7NTZNH0B
         ohE8esIEuiGL/81BNOjd1vWrRB2BETwXRUn8trK6ZTDikX39cOdQGI8Cq7Trw1uncp2P
         LXYvWUgbcpdECPGMVHS59FQMVTB4qYzAjqeXdUoMIDCpan8CrfrF9Ht9nYX59JTsJiP0
         tu3USRP4JLIaA4Dayy36MeatEyqBzVvwfHv2BZvzBn5wLlfZn6a6N1Wn/webZGZbPGxy
         /qwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tYltaOcX;
       spf=pass (google.com: domain of 3jqznxqwkacgrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3jQZnXQwKACgRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0LUKpA9PaTF0RG3zgEK6OjkshmtOfP5nfl4xNWI/z9k=;
        b=arNxs8pkT6iPRFmayxY9IyPfNIFqZGKwBa6bLdn19/3OfLFr80E4CE+UcdvKoRdneV
         lNcTTUuAdhLC/6e3kPq/SBeUMY/hwKF3TBFn0JnG0HG49Js9QzWUYiJteWMbPXZo/mz/
         3fOpnHfRxbItFeenCj5mXQfIF7HhTfpiTFKHXq6j3u5Wax/fzpUYaC8nYt+X66JN2DhP
         vsYjZyWNFqLIRYrXhFXZ/TxpJ4lAFFjkPQydEDA6FAVpKdcV5IgDbs5P0cxVO64yK8T4
         svJqq0X/ySB2VgxfKuLtPo5A9BeiGTKxyP3FfQvvYu1ohACooA5kwUGK5KDPpqhN+RTc
         R0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0LUKpA9PaTF0RG3zgEK6OjkshmtOfP5nfl4xNWI/z9k=;
        b=BJ0qx2gz1BlW57nhjQ+oa0+i9blsfSY9XHIhrh5YhNCR2Jq9Jn7ioIpKFB/+DdT4W4
         mr0BkjemnKy2kRao9WrV1JvxVipic1DswYMJYmlJevnJva7PKVKZZhA3QbWoLo60IEjO
         BvyM7UITsbp/Sp2iIihjqkMfUoThFTSm/EghvMhrcR6kW09DsnwsOXngsc2xrOqaULPA
         c/k2fp8bnzNv85YsMbEZwE+cKZYpNqNj/+EgXLafesk1xxFsTqgBEWKltIKOa7e3NaB9
         2SmVoRrcLOqvwC89KdzC3a/LQUM7KBy7H22aNNhBmQUveyDOnhvbPIELPSG1aaMVxyHn
         ksIg==
X-Gm-Message-State: APjAAAVgkmT9b6BJbqd4DfR5G+6O92fpLmnuraVWst3ulBDmxmYBsysk
	azaaelFrdVlyzKfBlWmLEgA=
X-Google-Smtp-Source: APXvYqxfgNbw8Nr8iagRFygaAmw4rZZ3iP7TRJ+APQIzmqIBBJEv0ruh56vgyF93qxmzol4fU8Qnsw==
X-Received: by 2002:a17:90a:2629:: with SMTP id l38mr6825231pje.71.1567032974467;
        Wed, 28 Aug 2019 15:56:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a4c5:: with SMTP id l5ls79485pjw.5.gmail; Wed, 28
 Aug 2019 15:56:14 -0700 (PDT)
X-Received: by 2002:a17:902:b115:: with SMTP id q21mr6453568plr.76.1567032974215;
        Wed, 28 Aug 2019 15:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032974; cv=none;
        d=google.com; s=arc-20160816;
        b=SN7FkslKf4iMgToNYBQmRyXsNbkEdQDgKKMLLcYc3rN4ch2vvD+fzRbmV57QjUbYmf
         pmR32rRJ+OoeWEocQ/pVYJ6RhdIxjrCPaTtn128IKzAH44ZKOUPOfbdH1JnTV/rs6NOz
         7gPTmQR2QWI1eerIHMUbefukVldFsLpBnJUfXzzzPxeBq/jlPSjOrVVj2k5OdSwYQ6mo
         ac+IVPEKNIvWHSpcYE+MF8sg5F1Tc19Wkmbbyu+9TggGSmAn0xfvy1A3a79Y2ACsuKMu
         z8LUe1lpi3QTxztr8M1QKYBSwznwEXMb1B2VTFcVCi7if/zFVXdroh25EfQFEJUwwRnX
         TqJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9sn2Js9Jk/bJ5Zg7h20L566WLWmk48WwAynvNmd3FH0=;
        b=FEeomDlYK1HGmvOnrTnx+7u5Uu/J9WGgBsF9u2EkkiA12aHwDDn2tJf8TSc0XtFUlO
         /8MbCkNwGHiXZMNX5On9tTvpTfgnhzGOnlpv9wq0kANKCfqwmA1qXZxO9oqDsyZsWaz+
         s/CINPMlMIujPkLCBZ8bXG7JDCL0rPc+6eJrNTdvTIL1VA+lYg588JfpRw0Cu3DE3xgq
         4uD/VmOcaRxBHUN8lLUPYn0i6CLMM62tPT3x3lQbw5E4+qWr5b4oTYhURiYoepl3HJQS
         ayrJUDjl/8cLTDPY3Np+9mxCenk3XUT+5ccnM3dRbv+8GK1+slVMtc2F58GKnqGXxOtG
         6upw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tYltaOcX;
       spf=pass (google.com: domain of 3jqznxqwkacgrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3jQZnXQwKACgRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc4a.google.com (mail-yw1-xc4a.google.com. [2607:f8b0:4864:20::c4a])
        by gmr-mx.google.com with ESMTPS id t35si298910pjb.3.2019.08.28.15.56.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jqznxqwkacgrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) client-ip=2607:f8b0:4864:20::c4a;
Received: by mail-yw1-xc4a.google.com with SMTP id m19so1071780ywj.11
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:14 -0700 (PDT)
X-Received: by 2002:a81:2d46:: with SMTP id t67mr4917695ywt.512.1567032973325;
 Wed, 28 Aug 2019 15:56:13 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:27 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 06/14] arm: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tYltaOcX;       spf=pass
 (google.com: domain of 3jqznxqwkacgrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3jQZnXQwKACgRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/include/asm/cache.h     | 2 +-
 arch/arm/include/asm/mach/arch.h | 4 ++--
 arch/arm/include/asm/setup.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index 1d65ed3a2755..cc06079600e0 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -24,6 +24,6 @@
 #define ARCH_SLAB_MINALIGN 8
 #endif
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
index e7df5a822cab..2986f6b4862d 100644
--- a/arch/arm/include/asm/mach/arch.h
+++ b/arch/arm/include/asm/mach/arch.h
@@ -81,7 +81,7 @@ extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
 #define MACHINE_START(_type,_name)			\
 static const struct machine_desc __mach_desc_##_type	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= MACH_TYPE_##_type,		\
 	.name		= _name,
 
@@ -91,7 +91,7 @@ static const struct machine_desc __mach_desc_##_type	\
 #define DT_MACHINE_START(_name, _namestr)		\
 static const struct machine_desc __mach_desc_##_name	\
  __used							\
- __attribute__((__section__(".arch.info.init"))) = {	\
+ __section(.arch.info.init) = {	\
 	.nr		= ~0,				\
 	.name		= _namestr,
 
diff --git a/arch/arm/include/asm/setup.h b/arch/arm/include/asm/setup.h
index 67d20712cb48..00190f1f0574 100644
--- a/arch/arm/include/asm/setup.h
+++ b/arch/arm/include/asm/setup.h
@@ -14,7 +14,7 @@
 #include <uapi/asm/setup.h>
 
 
-#define __tag __used __attribute__((__section__(".taglist.init")))
+#define __tag __used __section(.taglist.init)
 #define __tagtable(tag, fn) \
 static const struct tagtable __tagtable_##fn __tag = { tag, fn }
 
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-7-ndesaulniers%40google.com.
