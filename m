Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBP7T3CFAMGQEVN3O63Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id C086741E3DD
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:12 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id x23-20020a4a3957000000b0029aff3ae536sf5830011oog.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040831; cv=pass;
        d=google.com; s=arc-20160816;
        b=YKWwmm1+m5U7o5BiTqT7TKekJGE3CsZS9QFjJNOVdEIPoFay+O6VrAXVmlQJ4YJwp/
         55UrXb3oNr85N/tVmZ/BIHq0a4WoGWgnpIaFJlZXI3v1mD6/hqozZa0PAU8nBfPcJPvt
         1X5LNa1OxCfDJ6HEc3kQc1fijetiBbfyv79zr2tGe1IMK7d8+2vUufoTkrp/eM9NkzcE
         bsF6sDDdD+fmsysgKJsCcGIt01X7sIElH1/FpouVIVtpjnOKqhEP9RvLF7w2NfdzZQAr
         tA3XCfTNKT1GuLN5sgiNugYmjOTfoxUfeo1kcm3FU829cLyvoFLQkOyk6a/Rl86hV3Tc
         g+AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6oJWZD16Z+xes3V313Ujwcs1TD3oJTk+hkLcDOmxFIw=;
        b=Yq7bU7M2JgWUJoCHYZtKPIgj1GJbcjfHKG6hc97uHbxzNSD6CUsiwxh2pwgmqVCtRI
         jQra493nVDGW+zYDG6CP8fayIbrFY2uKoM2KByZLU/nrh8e1Y9jQMLqxaIF/ukPDyTyY
         m3ne5cmu9chPn/NEYGDgEnQTPC3mpN5iQzo+Kn+XnAQtn8jLAJCuMyb4833OG200w8sU
         XQ0+fuVynQhhgl6Oaqo6KIhBXrcZQbEapdomDZ2Mb1riqC9zGmtGMzKCo8fDTWh00YoH
         nsl+C7aDhQ15raGGvWEGUkHGl+qbXnhMb75+fiS+uFbaiH5QPnDWkm6cmL9X2Xch0z0r
         uG1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HzrZAfth;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6oJWZD16Z+xes3V313Ujwcs1TD3oJTk+hkLcDOmxFIw=;
        b=Tmvke1vivj7EhMgWFKYytDpGS4pGMMdlK1kgWpB8CBGfLLI7CQ5JCxdEEiTMbp1tkN
         gUk61rM1bHvnxstIkveLh8OyRpI1R6e1CUmUnSym8U8ZM+eRbXD1f30eXX/+kElPaiAw
         yKUAhz4V/HiU+Vt+9zdiTugmDqz0R2wdmTTxcYYBc94OI6NmHlx/nvh990XPdVto3tO0
         cj+ScnfWGqS2qrNm9yydtpH8sP4ZPMqim8jmzzacR173dEfCB9IcDqaGEVXGg5hDLUpU
         52I+e54nNx0LN/a2kh3oX4oVi5NNr2Mc5NzSIEiNLy51bME4a4s+STBLW6qjZQ6QMAz8
         Sjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6oJWZD16Z+xes3V313Ujwcs1TD3oJTk+hkLcDOmxFIw=;
        b=UuCY3HQbNPV/WD7n6UAlvRT5Td3D98op90fTOraxYgWy9JVfgV+DsFcFcK9h6l8JL6
         ulAlk5xo10TTieVaD0yqRwDeljGta6YTPUirYSJDtkTv3khJ9eOF/rdg0FqTaL3smQLI
         cghvBEAn8RiscDf+oaezwLhvBOKl89rN99VeIh9Hxb1DVvwgfVd0e8pFGGX5S1kexrxo
         eIvfExGqJ8z6lFAST5kM3tzE62+1HRRxyI9CtlC7fV6R1JxhrIuOTqeNknNb3Vng7L8M
         7m1LS6NO/vWiirgtH4TVakfOKUaSIO9j7YKb6REwjBIaHPDhMMxzM+v1xhK0OacexGm6
         NT3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uHoh4NMQA6C+DntdH/wdsYQ8LW7R10/vS+3qv/DPp2hsGAnYK
	Pa/rEjd7BufaCEOTyZCOgiI=
X-Google-Smtp-Source: ABdhPJy2E4kJESGm3HaPtF4Ctka7qNC42CzxC4xg0Qmz7nVIOTAXOSlC22CiPb1Z0YaIafNojGMzjw==
X-Received: by 2002:a9d:6209:: with SMTP id g9mr7235997otj.259.1633040831680;
        Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1010:: with SMTP id 16ls2511796oiq.0.gmail; Thu, 30 Sep
 2021 15:27:11 -0700 (PDT)
X-Received: by 2002:a05:6808:190a:: with SMTP id bf10mr1388923oib.84.1633040831099;
        Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040831; cv=none;
        d=google.com; s=arc-20160816;
        b=j+iQSUQJMKWT1XoiR7kQCXiQOIcU8eVfTWYBhfUrKplBYhjZegd0nTNIrEOzv90MGy
         Hvz1jYrfixOL5DVvi3B9jaXrCtt6WkBspZLYqmkQbpzYEyHQjuVaG8v/fMnv8sodImct
         TCt9t++un99l27n13mlE5W15bPn19JHUgpUmM5C6SW26uJ15CQ+chW9IqMkcPHE6hxQF
         FMjj8hgUMWT4gG2z6j7azLkQH9+bBFfFgmDmXdIXc1111Ik/1WD8TNqfKDMhIIFtE7nc
         kryi3K4fxAGM9X/GTR34M0fsgcLaj51LyuL5yLK8a80khZVeQbUb0hLusmcgcQYbHV02
         qCEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ESYAKcpw8CJ6aupot12QGhm/1PtWxxa9SFKXu5/HUJo=;
        b=mZc+fHwwCaMebyVjirfrd5OgX8Jf3M0DiwXSfWZOY6KsdVU8lX80n+aXDFq0nr8KhA
         uETUhG0puTBrLKabP1kPBJafsY4IVa6z6skH9M3ACGBAbL8KRvD4mHVQYBHK/bDj/Z7w
         5rXdnyp9xJTgBMjNhc8Ks0+1DVpnOr8zyHWrDTOxNDWTHsTGV+GZBTs/7dkSVN/2OdEX
         75TUxfFrrSxh585CNmKaXSIJ+EI8e998gzSYmNrnDPV6KLN23gZ1/ZpkSvoxH1EDpoI2
         IASv06tBghiseY+Yc76jnkmmm4lSoIrrcEDddoiTVxKgrnaxw7p9KbSMXHgJuhxYgnd6
         Ovdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HzrZAfth;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id bd5si775673oib.2.2021.09.30.15.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id y8so6252727pfa.7
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
X-Received: by 2002:a65:62d1:: with SMTP id m17mr6913015pgv.370.1633040830779;
        Thu, 30 Sep 2021 15:27:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q4sm4066225pfl.50.2021.09.30.15.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Andy Whitcroft <apw@canonical.com>,
	Christoph Lameter <cl@linux.com>,
	David Rientjes <rientjes@google.com>,
	Dennis Zhou <dennis@kernel.org>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Pekka Enberg <penberg@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 6/8] mm/vmalloc: Add __alloc_size attributes for better bounds checking
Date: Thu, 30 Sep 2021 15:27:02 -0700
Message-Id: <20210930222704.2631604-7-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930222704.2631604-1-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2969; h=from:subject; bh=PqMG9LUKCcMh794yj62SW/bUvosL4x5yAHHZWjpUkyg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm34phzSlXdvuTp3+opvclRgdeGSmO+NwyepuYM EN6zSnyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5twAKCRCJcvTf3G3AJhT0EA CJkQ005XqUiJSOcNF6agctDoJhc+CVk4wZ2PG6HQUVmHJKwFf67w4PZ9g3p1fsjzXDp9eaYZefJFUi 6JHZRF5jjU0UYYfYT+DIAnlZM5F59JkpxVExn9yFX1HQyiWAe5/l+5ivLQmIspyvdgPt0GkAfHmeO/ SAzlS5DsbIsmGTLy3DBecFEarOb1YWkPC2Bv7+6PBHt17TVvlpe3KrKvykV7blZWLbAXP3gFo73aO7 YKXx06jgVvyoFXBmYg1fbqfB/TuIRdafZpd4e4IXdqUM/sz3BfrZ5Sszh4wefHDCoDpNdwCNaq+coA W1Hf6kjXkHCK0W6df8mlNFWzVvlCrt5xS488eSFMmPYbk3ImPlxfMNlYoW21FSY3z2SGV6UMa9UTce PW5Ozc21RqIbDwIc1m/H97hfNvFCH0evpi6086NOBh3kyFU3RbIngjeRpk+C+awlD56ONUjPYf4dwv 8DssvV22U43dK6J18SZPEd1qOnylxxE5blxqg4EpCCncxUm7sQEmCYqMwp4O4BK73wNhCzMt0+Qi2u AWPmBNoHgN9dPBao7l6NRLBvFtVtgn5ojCl6tSMu0ueoGwYkLf2APnPgslcTmsO0a6TiP0U8MDgrpk OD0LxB+07EMcZPI2t5HQuWLuU9N2QxGPHO2KQqts1PVM1qqJ2ZwHw3aPkKWw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HzrZAfth;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e
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

Cc: Andy Whitcroft <apw@canonical.com>
Cc: Christoph Lameter <cl@linux.com>
Cc: David Rientjes <rientjes@google.com>
Cc: Dennis Zhou <dennis@kernel.org>
Cc: Dwaipayan Ray <dwaipayanray1@gmail.com>
Cc: Joe Perches <joe@perches.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: Tejun Heo <tj@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/vmalloc.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 671d402c3778..0ed56fc10c11 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -136,21 +136,21 @@ static inline void vmalloc_init(void)
 static inline unsigned long vmalloc_nr_pages(void) { return 0; }
 #endif
 
-extern void *vmalloc(unsigned long size);
-extern void *vzalloc(unsigned long size);
-extern void *vmalloc_user(unsigned long size);
-extern void *vmalloc_node(unsigned long size, int node);
-extern void *vzalloc_node(unsigned long size, int node);
-extern void *vmalloc_32(unsigned long size);
-extern void *vmalloc_32_user(unsigned long size);
-extern void *__vmalloc(unsigned long size, gfp_t gfp_mask);
+extern void *vmalloc(unsigned long size) __alloc_size(1);
+extern void *vzalloc(unsigned long size) __alloc_size(1);
+extern void *vmalloc_user(unsigned long size) __alloc_size(1);
+extern void *vmalloc_node(unsigned long size, int node) __alloc_size(1);
+extern void *vzalloc_node(unsigned long size, int node) __alloc_size(1);
+extern void *vmalloc_32(unsigned long size) __alloc_size(1);
+extern void *vmalloc_32_user(unsigned long size) __alloc_size(1);
+extern void *__vmalloc(unsigned long size, gfp_t gfp_mask) __alloc_size(1);
 extern void *__vmalloc_node_range(unsigned long size, unsigned long align,
 			unsigned long start, unsigned long end, gfp_t gfp_mask,
 			pgprot_t prot, unsigned long vm_flags, int node,
-			const void *caller);
+			const void *caller) __alloc_size(1);
 void *__vmalloc_node(unsigned long size, unsigned long align, gfp_t gfp_mask,
-		int node, const void *caller);
-void *vmalloc_no_huge(unsigned long size);
+		int node, const void *caller) __alloc_size(1);
+void *vmalloc_no_huge(unsigned long size) __alloc_size(1);
 
 extern void vfree(const void *addr);
 extern void vfree_atomic(const void *addr);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-7-keescook%40chromium.org.
