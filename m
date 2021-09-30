Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQPT3CFAMGQEFB7WVOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E212741E3E2
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:14 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id bv15-20020ad4488f000000b003827388ecfcsf11976985qvb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040833; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUk1I6YHSD6whzBN302V0q2UwhiaOiU8aZO7vbYvfx0hC34XdzT3KRKNzx6kAulqk6
         0erbqyNUO/aiWiQlzPsqugtuqoG7/PGch2Fj7qVafKPDNTJVUiZwyC3+UzpDOLBaZyum
         rKMwKtmj/nhjLVsky5diCABL34aaEkWBuDpY/CpoXyBd1PARTl2RV0ilnzOXfXnEEvS1
         ijZrlKn/TJwoy5Xulw5yq8bvujXHdW1m0g7wfFdomTZoy0Hjm5smT9CYF+oyStS8UwK+
         2f0/8JJvyuCSo363oYL/DdytAhcHV8KrPFTrklbRXwjtXhR5jzaSSxM3vXXJj5zyI99k
         JkjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Eg7I3q+2lt/xdsDyYIv/O0FP7WAAp9LaiUB7dVKp8eI=;
        b=vC+6dQePIJSs00zPyYqAHxoHSn5ZeZbwrpNvMXbNKIf+0b9GWy6S1CQJXrZGdpInZ3
         8n1BF5BGcG+xboF320hOVl6962WThC9rtAYuwv7ZpD/lsvAdo7sbY6qhGpsiHejexJIe
         7m9x7f1pb03TLaCBixPIeNHAEQOBqV7K+JtaHMR3SQTwNoqgaAaaMeKr58DMVxroYEsB
         Fhtxr55WIDX+Kh2MkgM5JrgojRGVt0M9Z9B5fYrGS/6hUdXjHZ22SkT81pBrQBPNO1PV
         qiPKwY9kaHbWQd1z/H/fPlnKKrA2XgacSSdej8pw9MpGx6abZYXk+xKQuZkX4qj6ztda
         45tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M2T++KtM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eg7I3q+2lt/xdsDyYIv/O0FP7WAAp9LaiUB7dVKp8eI=;
        b=bEauTjIONvTe+8g6opVoV0fZXwWPR3eo2hJ8cZXJ+jqNmRLXiiZrNSAo0vfR/bVwgn
         2sCDr6UqURhmvFnz8ph+U4sJ/xnIBCLqNoZBwx5OjyH477MkHcMwxi+wWhYJWcywSveK
         ATj2lWhnJ6jrfx4/Ar9RNZ/oI7JXiELu1EGLRTt9VELuORultlYUevXK9eoLJ3DbmRWJ
         z2QBCzidWncrToXdEDZth2neKTbxWMR4sHJjm83kq5Pu9DIwFQ2Z+3KjnCd7QPAO5otr
         16nU2IK+CrF5RyzBqKNU6tPr878QmNGFWY3YxYWe9NJSGHnus9+z7jqRm/3nlT0fawH8
         1Shw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eg7I3q+2lt/xdsDyYIv/O0FP7WAAp9LaiUB7dVKp8eI=;
        b=bpLKuPVEzem2E7lPdBEOh7aSCfRQYk042W8RBK5J0wpMbARei2BoJWglOfhDUiy2S8
         wP0hRkBl7XJw4eYZcoWo5UALHJ9GX54CPraBuouab7BFoL65ZkpB/i/6em6VM7qmeuQ1
         DU+FVg9NZed1Eo7gLQDbZ5L6060lNd1dzL9tGdp0UiftBvdlRM1V7LXIhMJPsTpV3mNB
         3K5ApH3ohvjI+bZRXqn15y8eNqSDuZgf3vxCkC+nZzYJQSYgPRucHTnNjXcewmeC86kM
         A2lFqgGUvr3aGVeDCdtXYuEJBo46YowH+7KjCJbf1LBP9YGPz/Aj8GHNMo80zHBQRCVm
         tL/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZcyS3QdHsXu/Wkgv+7Vy5nRIMgsTtCZ9mldBqGqQZlWMMVzzY
	habP18+EWswqz5SCo6wNiFg=
X-Google-Smtp-Source: ABdhPJyNXJM1y3cKC+uMmIRTJpsA8VIO+T8TITgfl49tzCPcpKcjSIZAwmqNa7xXNfDCnouzQYJtlA==
X-Received: by 2002:a05:622a:1a1a:: with SMTP id f26mr3713449qtb.119.1633040833635;
        Thu, 30 Sep 2021 15:27:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4899:: with SMTP id i25ls3736569qtq.9.gmail; Thu, 30 Sep
 2021 15:27:13 -0700 (PDT)
X-Received: by 2002:ac8:57d4:: with SMTP id w20mr9154427qta.261.1633040833138;
        Thu, 30 Sep 2021 15:27:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040833; cv=none;
        d=google.com; s=arc-20160816;
        b=vfVFDaH7POxosrCpExl5YOcnTZgzWvtZ/hZpGc9t+K31awdIUU4rpMSfeUVNNF3b3a
         vScA6Gsxnyi3o2utnxLNd6ug6pfUMIe0EuzJKqZKB1gndxQHNUuaVw70ZhKuaANzgFlu
         X587VTn835LyHcygTJMhCNhuqJjodTQfpMuXbQEYN+APoIiEOwrQdCpKYlQInVDXKfIT
         K5uQq7mMQ9w7nSh/zj8etJbEIHM1RI/QSYhi1iHsfAHiYH1MAwBZEoaO9ZKLytXxVF6M
         aJuOjfUC1rXBQRaBjsnPW97gt0kLpzMgCe1TREY6qkySh/l1ZWMuIE3SJW+S8b6dt72v
         OjTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xTdlLb7GtJ4Tj/wecFW9tRbbhL9s43+6wka+jFobq0s=;
        b=gywCdykb7PEVV18IhhzQa98iIiK9BQgJdpya5sOe8tS2k2Zc7h3EiiCV6Q9lhvfDhS
         bLdLkncvluRCm8O7WX/wJXXbH5ybnT15aHWg9EXQgY8IhQ/uLsRQFtMxYcT52QegoQ0E
         +r+NHLnhZWrbGUtmmz+Inf7UDXOW7XKy7JGaC418fueVAkIH0sU6dgXA1HKVUrwPqGDw
         Xr6fy3dvMdAMLVO9YrSZaibs34jqpBbcbnuia05ttsPqVn/44vM3D6TpkhNtVDSYCUqW
         luX95eIGd4QJLhrPCkK5THIhYKhx+ttzT0J1TSc4HgKpAB3b0G39iu39v7Lw+piS8+Up
         vfiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M2T++KtM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id d5si270186qkl.6.2021.09.30.15.27.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id p1so193774pfh.8
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:13 -0700 (PDT)
X-Received: by 2002:a63:20f:: with SMTP id 15mr6733460pgc.319.1633040832346;
        Thu, 30 Sep 2021 15:27:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x20sm3606310pjp.48.2021.09.30.15.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>,
	Andy Whitcroft <apw@canonical.com>,
	David Rientjes <rientjes@google.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Pekka Enberg <penberg@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 8/8] percpu: Add __alloc_size attributes for better bounds checking
Date: Thu, 30 Sep 2021 15:27:04 -0700
Message-Id: <20210930222704.2631604-9-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930222704.2631604-1-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2486; h=from:subject; bh=9EqXOckHEyfKAa0MxxJtth0Elvb+UhJZNEFB1gjQABo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm4aUkC0jHO3VL+EQHu/RyvRmlitX3fuanr+Ryz L48wiCKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5uAAKCRCJcvTf3G3AJlTMD/ 9+Ge1+7x+F/NL44UJJEUkUcosWJRMsIVppsrgGAuv9sU+uQ4EUIlaCObfvfV8cQNsQ6mP4mW4VfHIz qmPEIPllZ1wNum6F1gGAV/KD8oEqyMXXMWBrbSbRfytOI7+SXvYiHYqBOFm/XXNklvYtz1lyFDHFUt AuMPhD6RyaLWnhEnXwBozDpbP82J42TANIyE76AFDLgdBSimeg3/NR8zMhMF+XU9kj0HP8P7kgyv2v YdPjj/Ee2gnHsydjY8nTzEyeFysOuiPmZal5y8Boj0gtOp2hLAkfizpXoSbdiKg1nG3zfW23FpzxZn gPXrPrXAn+bkDFTWB+HYm+GR29fuTj7b9z3P3PK0BjcvUcdV+phsUJ3RkAy96FW1dnKpp2M3x7wVml RitRdRvoVOsKDR0cll4kuoNbKO4G6KsF+2S6EHlFo1d/5dpcSys9CfUu5+W+aPDmtj8QQqyCLTJ9LH I7l/V0e+cL2qPK3IrqQ0Aee+DfUi3b1AZ13Lfgk9GlgKCd50Ee2dBkA7eq07PAItN4eyPZQrfvvtW4 yL3LBUFUy6u1QQh6VthSfwKccfP9tQTGi8HYX4+ylmAUpE22iEiX5zTe/fortEdfvzvng1owx9T9ts 9oZHuqVczFVK0m77+Cfv6mGvcMoLYzUJc7haSxVUqBrIcta3Q9NEyFol+T8g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=M2T++KtM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435
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
appropriate percpu allocator interfaces, to provide additional hinting for
better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
optimizations.

Note that due to the implementation of the percpu API, this is unlikely
to ever actually provide compile-time checking beyond very simple non-SMP
builds. But, since they are technically allocators, mark them as such.

Cc: Dennis Zhou <dennis@kernel.org>
Cc: Tejun Heo <tj@kernel.org>
Cc: Christoph Lameter <cl@linux.com>
Cc: Andy Whitcroft <apw@canonical.com>
Cc: David Rientjes <rientjes@google.com>
Cc: Dwaipayan Ray <dwaipayanray1@gmail.com>
Cc: Joe Perches <joe@perches.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/percpu.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/percpu.h b/include/linux/percpu.h
index 5e76af742c80..98a9371133f8 100644
--- a/include/linux/percpu.h
+++ b/include/linux/percpu.h
@@ -123,7 +123,7 @@ extern int __init pcpu_page_first_chunk(size_t reserved_size,
 				pcpu_fc_populate_pte_fn_t populate_pte_fn);
 #endif
 
-extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align);
+extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align) __alloc_size(1);
 extern bool __is_kernel_percpu_address(unsigned long addr, unsigned long *can_addr);
 extern bool is_kernel_percpu_address(unsigned long addr);
 
@@ -131,8 +131,8 @@ extern bool is_kernel_percpu_address(unsigned long addr);
 extern void __init setup_per_cpu_areas(void);
 #endif
 
-extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp);
-extern void __percpu *__alloc_percpu(size_t size, size_t align);
+extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp) __alloc_size(1);
+extern void __percpu *__alloc_percpu(size_t size, size_t align) __alloc_size(1);
 extern void free_percpu(void __percpu *__pdata);
 extern phys_addr_t per_cpu_ptr_to_phys(void *addr);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-9-keescook%40chromium.org.
