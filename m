Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXNL6KEAMGQEUUHBYZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7363EF9C4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:08:46 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id d205-20020aca36d60000b02902241b7398a8sf891551oia.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629263325; cv=pass;
        d=google.com; s=arc-20160816;
        b=AlxJsQYp8BwDSg0AHQDeb64VIQKpCewikw5cAncU2DCZn7QK14Pi5SYJfG6Ik7MAPF
         IBTmT8RxRmYLtrD4dgT1dSm06mBCZQLPS91mJg5799Wzv+Lc34Hu6BQ52qbcl+T7z85J
         ShoJNcFsWcJMR0+S7WDzQhNlH44uiTlAXOokFNzuMobfsEDGpKELd+OPKrDx4e62w0SZ
         vWaQy2ND07q0r/g4/gVi/6O+kjFoRjcAjpl1jyV+DBHZXeKWXFLmvcVf0gWDsmL8TZYZ
         DtO1YeDSxKc4gqcmeX3g5LRZyFVAmDSsrfDVIp5uyzgO2Sk5Y3kJP+uA5E4nHsFRf6fn
         mgkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XHJmZLHVgw/Pce4xA4K1Bg3JITHxmlXnpa+GSrSW1Y8=;
        b=WVcodeHdj+68E/SBAM7tuTWRq5g71Vk4bdX1ZbKce+ULpymJacfOG0/hbKLIYP4mCj
         a8QFD4cxnpg+FS/RPOYY7RUojn3bN+rH9VavXsmFIHTlC8/BrNgxlJyn5prRzWRgnvAc
         SrCqNWGi71RbjJOLvIlSV00fIGVHn6WSkbm/IjV0E6FILLzNRIR6Io9QDraMMckiOsIB
         /2iAxUED4DLmupvd9/alXYoB4QWjvsGiMz51hpS/v1BKGdyfFYJX64GBnYu/Rk4oysvG
         yojsHjr8uI2sxwn1dZkceZMbc1AMQfl1DvEkCMtYJmxjfwhvjPaIshxlfdXkysOOydcB
         CEjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VoyLbqvg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XHJmZLHVgw/Pce4xA4K1Bg3JITHxmlXnpa+GSrSW1Y8=;
        b=BR5eRUXHhHXNLqgYCKG9c1WMJIR5aVqJm/E9I9vyL320e9+xAZzRJOONPvwobIGMTY
         vz2xX2G9rQJtdx6gxJMzrphQoulYF3EShm9ljyVDFq0j3m5cplvUnPkhroNJtl/jOa+n
         JumdL9lq+yPui9g7uPY6caVGCsqLiITuiYdra1AHaEYb8qOLOWGLX6KLkm8yjNNiIBEg
         RPoMk6eNWh/hiQnqRDNFkQONaAu321DC9DfizxoBty7irGmxa+fXVxjH3aPLOD4kT3Cw
         bEXk7GDYkOJl83zDn6z+4tZo96zZnjwyqidHHTS0q+6FvzI5pxAD7Q1OfC+YWgBisRGq
         ZNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XHJmZLHVgw/Pce4xA4K1Bg3JITHxmlXnpa+GSrSW1Y8=;
        b=kNKP+RKjdD+I1V6MNmjMaXpSM6xIANLopsM5uKCILNm1SEFQ6ZKX7LNROvXKOWbeVR
         Dw6j6nffW0OKtjBbxblAqsV7Gb68/BPBcGvl0p04yY5kARRYyxwjFZsB9RI3T0pR1Fdr
         YRf9PFkftuIXMqeeaE3oIJd4nvRq4jUF/asJ3ecwlkU0i9vaAyMGOlBAJ9vMmf/LeV3s
         hNUKBm2O7LzRLLql8p7NUqJBv49h/h5KNu+/ECA3SvwyNSELpEJC5xiHjiQluLmDTUeW
         OY+2uIenMSZO281kIYunWk1U+muWayIVdoA9cc6AFn0YidZHRxDw035izPrbxW6KPvlh
         f2fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314D+6EWh2UYtstP27TuiliHLZI2rCRmxF3CJsustesYqBRSUbN
	coMnP24l4fyYx7Hp5A3Kkq0=
X-Google-Smtp-Source: ABdhPJxcgnMnOlArl5NkSVXawLiedOjb3H+ZJfBcdc0X7ZXGvvvprdgX1Ji3nKb+1oGm11PyaWS7uw==
X-Received: by 2002:aca:6041:: with SMTP id u62mr5401820oib.178.1629263325326;
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2689:: with SMTP id l9ls260296otu.8.gmail; Tue, 17
 Aug 2021 22:08:45 -0700 (PDT)
X-Received: by 2002:a9d:6951:: with SMTP id p17mr5527118oto.74.1629263324971;
        Tue, 17 Aug 2021 22:08:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629263324; cv=none;
        d=google.com; s=arc-20160816;
        b=h3v7VxTxHYOXmgZzHaIPLWoCSgh+loSgGKvMxds9qqffp94aSzbFBlAs0JDXH4J549
         QB3kXPlmWMlwDYaIUwVk1FiBNR4DCF3WsO+MtQDHyx0bk8ZeS2hhEJGLEK2CpuC6bNK8
         9D4Cn/kUriCsVazMmWsFsx+KqJlqljxWiFMvm7HbyP+00ERrcjfuvuHi6W0JUmVNoJFF
         Qh7l4SSvaUFttskiByHPvlpc4CpASgQkacGpCvxsxwslZjos8BMnhEH2b7f9YbW2xIlc
         28Gr/ATueW4ZizuYCz/y+wgK+1JSq3aGRbMhyGs4RuVtQ7TQreMma7C0ns+EtWqRnQvy
         8pPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L74a0g3OkBh38ZbWTWhzU9iYTGh84NVXbR3tMlDhDzA=;
        b=qlWzvWd6ptMjdS9OT2BKR3TOXh7Ts3Yiqpkhnvkhx5e8JfgfKpkmSKNpxiKh1yNzYQ
         i2HPY7hOm/GqPSxl1rpRTv+rHa34RzqrUgVD0Qlntg/LJ0a/ZGCEJV+zqzMxkjzOekvU
         1SpNVtI9QaIotVHCYRnO18IQA66meV0JAihGG/9bgICByK/IFd6Qkc81X+jkX2zTN6Gv
         3g08tZ4kl5LX0jTxwUaGcBRas10TRTiuqCPifEM6/FzexIUMcRFZNVTamtYO5lGyZT0/
         MmaHSc6pNOyvgX1JLRh0NMIE0SELffY9NzlAw9YuoGEhrQnQytFg35Oi7hynUAEHdfQ/
         S26A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VoyLbqvg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id bg37si335101oib.5.2021.08.17.22.08.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id qe12-20020a17090b4f8c00b00179321cbae7so1560147pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 22:08:44 -0700 (PDT)
X-Received: by 2002:a17:90a:420c:: with SMTP id o12mr7336775pjg.101.1629263324383;
        Tue, 17 Aug 2021 22:08:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y3sm5280769pgc.67.2021.08.17.22.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 22:08:43 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>,
	linux-mm@kvack.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 4/5] percpu: Add __alloc_size attributes for better bounds checking
Date: Tue, 17 Aug 2021 22:08:40 -0700
Message-Id: <20210818050841.2226600-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818050841.2226600-1-keescook@chromium.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1834; h=from:subject; bh=AKWCsy+JTouHpICDr1/00oSv9FpxEYB59HC7kt38kf8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHJXYZ7sr0DkI4785A86/V1s6T0JSWbDIAWTqa4IF o+5sgRyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyV2AAKCRCJcvTf3G3AJl81D/ 9vI9JuIir2OOD9eLSzFPss/uOq6+mj5CUm3OhDzeeKcY17QuKv8oZHV/r5p657bW2OcfeR+11HCPEq 3tFGsUIJBkGa16Q5uTm/DieR3q04KNo5M2AGU+XoQMeTmQycXxOOzTL4FLNzsvDgyeIvKuy6LKnAPK DWu6IttP6pgUPRKdSSfRSHHCQeD6CuR3m10veketQgEmTRWLqGPcGdEA9sOVhwlW0htfsprMSKUaDc f0SM0OOKwjPd22H9LkxplH3npRzVY+5xnMfxOcKZoot02ORxcmUILGtHUY9ePhB+pbm7A2VeNXZFlN 7nvLv/XTt7uqlm1eLNNZ4jTzLs9EZFAKQ7jTxeDytxH/N6CSoAmSylYNQyOWca+5t3RYmG6zCjrOO5 5U7G9wyTfDSS5DqJXkjb6DRFujbBqDg5jcBjCoCWqiGVAkiTnpu7NgoLR6zrsDsImoWrSWiCVuwua1 BJtEexhJLfjIJ9AhNPUCEcGCHnpTujcSfmd87HQt4V/6xvXPg57q9gY7Mrf1Nb0JwGquIqLT9YZlnx YMxItzlYJwB9VD8fq13icyty1atksKU4j0CNj0iLHOD2bqqLTTax+bcbfNV5rE9LdnVZx9QxDAlQvL JVOSkAac4aqRz/QlcLsLdDf5rkeWwn2zz2kilbDBVRc7qFw1qEFD76tf3fTQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VoyLbqvg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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
appropriate percpu allocator interfaces, to provide additional hinting
for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
compiler optimizations.

Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Cc: Dennis Zhou <dennis@kernel.org>
Cc: Tejun Heo <tj@kernel.org>
Cc: Christoph Lameter <cl@linux.com>
Cc: linux-mm@kvack.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818050841.2226600-5-keescook%40chromium.org.
