Return-Path: <clang-built-linux+bncBCT4XGV33UIBBVNA3OCQMGQE2PULGIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA45397DA8
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 02:27:02 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id 67-20020a2514460000b029053a9edba2a6sf1152087ybu.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 17:27:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622593621; cv=pass;
        d=google.com; s=arc-20160816;
        b=f5bDaXrN6X3wy22M8DJ26Wtfge/hF7eD9lpuTXGf8962c9B2uC7ELpOS5SJ9e3omje
         s5cOLcsv+VyIXlpsBmBIjcgV+7lSBhTXwSehpNTJxd34xwXzVfab9GRv8CgS+jlEukwP
         Pw5gpH8eKMrMuYf5q16aiaoVKrUF+DGtj1ATia+1Z6Rzu0YH6DvorgnS+6EbNS23Rb7H
         gKhi96Zu/PUCDhusIxyvMVc1/1194W/lsjXObzGm56lZZyVSiBFsgaZNeA1MQ13jgZlR
         lDQPt5xZD9y3fY1DF7ZoBMweBN3/vJYCPOU4YzzNZtE4jegrj04H3lf4TwZy0dzsOWSI
         Rj9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=yjLhqdGq/P0DzOBEBl+blNSRqcJ5bA9mW9NH7slK1FM=;
        b=IZBJd2lmO0yMIUrWpp9R3qWYdOfUqfq0gcgZ11kwwAxjghOnSa/833uzbFgPhIO9pR
         FKn/7rSWx/Oc8NmBcnpSbQMbljz6m6KKCR/nM/c8SscQEJTMrZaGhgfA47jE/+/HHUSe
         excM1yuV+GqkNGB9gAyoLeWm7/dxvuxkRtMekVa3hascRPNGR48rElwrmWG4W5XT1Uad
         VocciM61XqKKTQ/+NnCvKxUNCwEnEtIvCsrknhHDWqbW/MDqnH/zGOH5QeAaW/AsYEjs
         xdx3pQ52AfAYG73KPzbHskA2nbPfMVF2/nmunE5WOH1jRE4szmHs0XMU5HQuwL5Aq/ee
         UF9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=TeHg5CyH;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjLhqdGq/P0DzOBEBl+blNSRqcJ5bA9mW9NH7slK1FM=;
        b=tUgVYl8FdaLPBxmRRKap1+DwislwpgkKd+ELIXjnPz7BekTLtLdfpmqM5BODWCXQhX
         F3eaul7wd7mimKwNMKvPXZYD9UGuXf4YTUHbSjvZAFr2tXA/eqZGGish3Skd9W1xUGS2
         XIqVYtF2sak5k2bsemash4xSHlUYXiyvDwtOTPDbWIh/JRQTycBn/REFjz3oUvoydP/T
         v3kq8lhsyPx6ZxyG/r8mghqMS076+2OQKx3KT3ZsadEw+joj1VeH7ebJkMU9PsjXe6B/
         a2YRhP0aq9lF+iLlfbfBl2emtiKRHkj+M3SIrA/4tgm9aMdwaZw+JRsBL15q6qPz5LqR
         qopQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjLhqdGq/P0DzOBEBl+blNSRqcJ5bA9mW9NH7slK1FM=;
        b=goY/F3fXWRNttJTJLBf6xN1oHKbln1jriBE2BjIJzRwGLcEYyUouneLrGUbxM/TEHy
         mWAitJ7x1u76WvOSeb1+iyvJCxhc7ABuEDKHt9xaI63LL/GwPaR9dd81aecuBjXBtzpS
         vj7DBSpKkZDt9A2+g4jDT8sFUWBhEUjzf1ZUq+EKUlrvRcuHXChv8L7cppLAw/1R1QA5
         BOLwSl761oH2b+96WxjzrfZZ9fx9/JhFgd2/5EE9iPISru5AONMouXZlV+CRbQhHbzUR
         WSpyCbvj6VVvvUM3r47T91eOhm+VCNBn5b/fbgs9jaDaIKD47T0mCYgFUfXxgkI+kzde
         zbkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/cxDllOepQcdvTlL57pGbfOEy27Zg13fJUTNAGI2FLx1OSggc
	G+SBnVeQuHrU/91y2SkV92o=
X-Google-Smtp-Source: ABdhPJxovONu1zqxq4gbvOpezQIWKyNP+/herEkWmYQ5/tGxETKsqnrLxwo1P/sx2nXtNwlCqRcuWw==
X-Received: by 2002:a25:8884:: with SMTP id d4mr42492676ybl.410.1622593621447;
        Tue, 01 Jun 2021 17:27:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:be92:: with SMTP id i18ls9336402ybk.7.gmail; Tue, 01 Jun
 2021 17:27:01 -0700 (PDT)
X-Received: by 2002:a25:3342:: with SMTP id z63mr43594217ybz.46.1622593620922;
        Tue, 01 Jun 2021 17:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622593620; cv=none;
        d=google.com; s=arc-20160816;
        b=zx4rXyAOAyL8XMuhpgusWBtSKc1DKiugkAOM85yzeCHFHTfgSRDbMK6T2CS1zbpoKS
         Q/sGJ1EzJUtPQ0MoLRnRYba1G6aB5FL67y5MjX2IhCiZNdA055tsX52IG9W+X1i/e0Lz
         fjSziT8PXXp53d3NR1iHgfTj8hkFKj6Wh1HuaTUaaLn+mdYYkbBoum2LHdB+sD7rULMG
         pxzZ8nRfKEf8Ga2VF4FtdmeGc0VmlHXiPF6ivmmgsbikFdEv3rRDYlBp+0gaJJmpmWTv
         FPW2740BjdA+VPX/Kgc6opIgyi6+QjPmW1x9fq6pk0TgowDExMxuvtA/bUgGElRRzcV7
         9UMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/bS3mog/Y68MAU0OqICaUc/o6X78NNN07GBSSy0oZtM=;
        b=T24iMlrcN6pXcSMkyZ/BbiLVrjaV2ZfblTyqS3XJFCeeZqjrEfbXnVpGAzfhe4tcef
         5w8Q1TSTEdfQfcfGogLADAmPqC+67hmycJEGLQ391Zrz+AClfY0cODZnUI01BRRCd7J5
         IT9DXFu7b44zH3bPPBXZUqsIW6syK6oMEbdm1jHvACE7tgGdkmFioQ0QJwkSOUHmXbvR
         WqKH4oRU0wApOD/wUQwMucyjf+v11/pj6a9n0owewdH7T4g1i3ER4U2g2C6fq4i4rnBI
         h4e6L+hLRdbrlFppinF5fgMTBI0iq3LWJd3XL81AxUisNHs5C230psD8A+W67/8lNwMM
         Atgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=TeHg5CyH;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si1210952ybo.3.2021.06.01.17.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 17:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E2BA6124B;
	Wed,  2 Jun 2021 00:26:59 +0000 (UTC)
Date: Tue, 1 Jun 2021 17:26:59 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Stephen Boyd <swboyd@chromium.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Linux Memory Management List
 <linux-mm@kvack.org>, linux-kernel@vger.kernel.org, Christoph Lameter
 <cl@linux-foundation.org>, Pekka Enberg <penberg@kernel.org>, David
 Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Petr Mladek <pmladek@suse.com>, Joe
 Perches <joe@perches.com>
Subject: Re: [PATCH v3 4/4] slub: Force on no_hash_pointers when slub_debug
 is enabled
Message-Id: <20210601172659.fd8c40a6548a1bd43be1bf11@linux-foundation.org>
In-Reply-To: <202106020644.UDFIJOUU-lkp@intel.com>
References: <20210601182202.3011020-5-swboyd@chromium.org>
	<202106020644.UDFIJOUU-lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=TeHg5CyH;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 2 Jun 2021 06:45:55 +0800 kernel test robot <lkp@intel.com> wrote:

> >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
>            if (static_branch_unlikely(&slub_debug_enabled))
>                                        ^
> >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
> >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
> >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
> >> mm/slub.c:4464:6: error: invalid argument type 'void' to unary expression
>            if (static_branch_unlikely(&slub_debug_enabled))
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Thanks.  Stephen, how about this?

--- a/mm/slub.c~slub-force-on-no_hash_pointers-when-slub_debug-is-enabled-fix
+++ a/mm/slub.c
@@ -117,12 +117,26 @@
  */
 
 #ifdef CONFIG_SLUB_DEBUG
+
 #ifdef CONFIG_SLUB_DEBUG_ON
 DEFINE_STATIC_KEY_TRUE(slub_debug_enabled);
 #else
 DEFINE_STATIC_KEY_FALSE(slub_debug_enabled);
 #endif
-#endif
+
+static inline bool __slub_debug_enabled(void)
+{
+	return static_branch_unlikely(&slub_debug_enabled);
+}
+
+#else		/* CONFIG_SLUB_DEBUG */
+
+static inline bool __slub_debug_enabled(void)
+{
+	return false;
+}
+
+#endif		/* CONFIG_SLUB_DEBUG */
 
 static inline bool kmem_cache_debug(struct kmem_cache *s)
 {
@@ -4493,7 +4507,7 @@ void __init kmem_cache_init(void)
 		slub_max_order = 0;
 
 	/* Print slub debugging pointers without hashing */
-	if (static_branch_unlikely(&slub_debug_enabled))
+	if (__slub_debug_enabled())
 		no_hash_pointers_enable(NULL);
 
 	kmem_cache_node = &boot_kmem_cache_node;
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210601172659.fd8c40a6548a1bd43be1bf11%40linux-foundation.org.
