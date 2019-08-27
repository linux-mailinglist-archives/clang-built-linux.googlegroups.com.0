Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY5KS3VQKGQERFYJ4AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2989F44E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:41:08 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id x1sf312102qkn.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:41:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938467; cv=pass;
        d=google.com; s=arc-20160816;
        b=N6NDTQRGTjbRspGLeprs80qPETRQjVjOKql/P+BONviWmxXldnOYSeDkZUqIpmS219
         dJItLOAFUY1CykaRhXvC+uMEqi9sQ3BU1oR92q7Sk9SlaOL683oNDedVZyquxQRoMudu
         1TMQvA3do3w4xL7c6cYU26xTaBrGKXFbRmhTtkhZ7tvD793GYzJfqijw9ZRgwEQ2/yvY
         Ee2cjWWVpw8A4EQ97YNtspSPxZPcd6vMiEfH2JY12DWUZ6HAfIqDSBejAlflmls5WpUE
         nGibyl+BfzF5g6XkfflwnGd4ifyJlWwgs75l8IN/F+u+9kBnsV8C5EUxmLxMc8E+8g7G
         PtnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cUiV7rSo3OYwBnrNysEZR2INYKHp6efPKpCQhCzLDV4=;
        b=sgSs5yPAisjvAk21mEUHA5JJowM/NSACn9WowqFHgT4nHkKER+BRTnz7AkUw2z6EIl
         lW3Jop1tcLGClpfigLHDc+SAIrtkdPINb8Povjsy7+ab7FwgOlc1RBzYvEqnPW21xaF0
         o7mJBtoKgub3o2tJzO9Gd2tpF22+zea63yHRT6i+AOB7NS3WpSzzi2kDPVb0nm00tlF+
         lYuLA+jSdZ2/aBGAsUFxceW2lgVuKZKrGaOhkABtIdsUYgJjKKR3eI0Dl+N9YXEVB9Z4
         aX80CTOIUGKkLPR3B4JfsD4eRabuKYpOJCW/3k/ZyqrbdFnJhyonspNFY3No+GNSrD+r
         g3lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NHIhoqFM;
       spf=pass (google.com: domain of 3yzvlxqwkabq7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3YZVlXQwKABQ7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUiV7rSo3OYwBnrNysEZR2INYKHp6efPKpCQhCzLDV4=;
        b=cw1nNu6M3kqg/pto9VF9bHYaj25Gm/DaqlxvB3qljSC/IGzaqXjpLWoovf8E98sSwW
         rTGwUEtcxsSv9OmFwZZpjHxEVxUcsjYtEoxmJzv65PVLW695nM7ftFejVNWKbj+YAjR0
         yTpdiLUVcIKz080CkUAfbwJE4boZuM1u3OagHezu4CcS6IW/H0eZ1kslnmzWP/9QuWh5
         Pxt5/E0txZO3xDPQwnJjPYmd9tG/77zKJx99MmFtFF2lExgHds6yhBR9gc9E8fl+/yXo
         BXjiC45F2uP5mro6AXXSx+HNWGh3BmeMxD/ZyxGhSXsMLEgFG9unyWnsggrGXa+qxh+F
         E3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUiV7rSo3OYwBnrNysEZR2INYKHp6efPKpCQhCzLDV4=;
        b=JD1e3y38TWhZ0pmzNLBkGL+n8ylCdInBrd9lVfPiocgQRBIy5bxQJ0R/b6ojy0cd8y
         ewvk6MJAvTjgfKGOzqM1d+2YrhEJ6nAB4P1WlIndYsb8oK11K14Ho014ga4dDgtiJsZl
         4j0l3QRO3kLqjsakhawPaaQFkG2QDhf4fqRHEKKzCxJJI2tseS5RkH+cER72NYXwmbDa
         3cRLYT+c0NRsIxh69/+HnJAr5bE6Y4gBj5rNrcVjegv0HIlb2qHNcp6ouIMdFvvpH7NB
         EiEFIuzmGGrG2wSysK/iHFs+Z+r1IrtP2lXrX7DchZTQEM1rsu1GnWnMr/MwlE74XOuy
         kPWA==
X-Gm-Message-State: APjAAAXA4nTOhKMwZM8f2LIxWSwEUJSkMAlVIRUsD6VCZSNx9T1OaRqP
	9xlaxG19FAUNVObf5vhAdIM=
X-Google-Smtp-Source: APXvYqzKPNSSAso95XzBdU/UEPdMbbViLRaWlW4DsWGhZVIvNSSDbBTF7dqFwN785cTf3mKMOi6d1A==
X-Received: by 2002:a37:4986:: with SMTP id w128mr437852qka.417.1566938467134;
        Tue, 27 Aug 2019 13:41:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4c8c:: with SMTP id z134ls217511qka.13.gmail; Tue, 27
 Aug 2019 13:41:06 -0700 (PDT)
X-Received: by 2002:a37:4051:: with SMTP id n78mr500185qka.138.1566938466884;
        Tue, 27 Aug 2019 13:41:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938466; cv=none;
        d=google.com; s=arc-20160816;
        b=LDd77zrR50xWDMdfUSUSfRGNAB5zaqYyQRbhXdpXMpc4/Rimlm9CHXF/UsCspMmtaz
         hz3Fk+aGl8QSfdcd4ABoE1hiPLqx8tYTX+jeHyJuVnNSd8aREdh1sr/ncAkU/Vokj+o3
         hatNkWG8JimNoLPnBO8epU/KhASa+iGnteFNz3OW8Xe0CuC10Ym4XmHuqq8ovWjwk+Q+
         QzruKXy8VCV76cWbpqYErhyJmVsIY9uXd3wy0V5egaOfxyVjbn7rN4piYFagvqxgCWyO
         JfAQhpDkKdGbLHNq70nH2hHu7PdluF3O/0uEcw+qkvFmOS30STcHLrf7ZhnqgzZf6IHL
         V+vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xayR1eaTOStHF5jKNWv1XVdOT2EVEaLrqieyOudEAew=;
        b=LRW+bhBb14rFffAdDJ0KLG/agRGrN/p+tMzcxlNQG6Ae6rYowyU4eASGh4k1EbqRbD
         3kT2kpHraeA5zwFZ3rceZBf5ptmP4r/SRfpnnRKN+N9sdJ1iBV6pGniTJgjy4vlDPsVX
         U/WRjj2CB+8o1MRyajRgJlZSoRcQ4sqyX5TPt4g7lK4lnhjOuh4nhgXWoz1CBoneS6yF
         DjEaaJcOxvmar27qgpieycG5q56R0e/YbtohZJQVfErFLc1kuOIbpSGZvuJQa62xsInJ
         BnxuKbGAZD810oKhNPyy+ytch717iOOWdsrfFhQnx0JlTllXv4+rEs050AI8e/KCmVKY
         cloA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NHIhoqFM;
       spf=pass (google.com: domain of 3yzvlxqwkabq7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3YZVlXQwKABQ7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id c79si29237qke.4.2019.08.27.13.41.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:41:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yzvlxqwkabq7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id j12so194224pll.14
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:41:06 -0700 (PDT)
X-Received: by 2002:a65:5cca:: with SMTP id b10mr265201pgt.365.1566938465537;
 Tue, 27 Aug 2019 13:41:05 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:07 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-15-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 14/14] compiler_attributes.h: add note about __section
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NHIhoqFM;       spf=pass
 (google.com: domain of 3yzvlxqwkabq7xycue572ybc08805y.w86@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3YZVlXQwKABQ7xyCuE572yBC08805y.w86@flex--ndesaulniers.bounces.google.com;
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
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler_attributes.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 6b318efd8a74..f8c008d7f616 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -225,6 +225,16 @@
 #define __pure                          __attribute__((__pure__))
 
 /*
+ *  Note: Since this macro makes use of the "stringification operator" `#`, a
+ *        quoted string literal should not be passed to it. eg.
+ *        prefer:
+ *        __section(.foo)
+ *        to:
+ *        __section(".foo")
+ *        unless the section name is dynamically built up, in which case the
+ *        verbose __attribute__((__section__(".foo" x))) should be preferred.
+ *        See also: https://bugs.llvm.org/show_bug.cgi?id=42950
+ *
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-section-function-attribute
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-section-variable-attribute
  * clang: https://clang.llvm.org/docs/AttributeReference.html#section-declspec-allocate
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-15-ndesaulniers%40google.com.
