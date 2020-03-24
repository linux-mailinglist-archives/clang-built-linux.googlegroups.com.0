Return-Path: <clang-built-linux+bncBAABBN4T47ZQKGQEOUJEFBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 3629D190813
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:50:01 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id go23sf2019535pjb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:50:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039800; cv=pass;
        d=google.com; s=arc-20160816;
        b=K4UUGSc8JsNuTUyVxClBbUphvH1F17mAPJYCBXePhwg+u4C1M4fg3n2WIOKU8p8Zx9
         SQmVny/fH+Q2RaZMA09MPaNoyaDHtOcNsOvOD0CkcZmIpSe0WTL1VBWt+qginRxxtQdM
         GOOT+diircIm9ZLXOviNvSVfmy10kx7WnRFslgRi1qo7/1whxEWx7+KJaCrojX3Li7iH
         ZatnOrZ7ap2utlYpPHVm5oPcLGCjxjk7qKuQIag2ad1hppf7DWjTj9KPdyyvBytszTtd
         x20QQYn+SK562t3Wm1zRn4uyNdRxqtszsRl2GQ3/8TCbQqZv1TbB0aVn9jXs6dLmH+rb
         pjjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=Xdv6jLkFkJRgsM2Cp/vTKZA9Rnwy6myaEPyMuDT6dwg=;
        b=C4K/Okh4BHctIRe3FY6sfyrKmIc3OjR/kA+CSjWla0ZapZbW6Y4+5obNEgXahhpvPR
         Ip5/QR+TrFOYgE7A8ntptzGzoIZlM36gyFv0n4iL1yuu+dtCpk1OMPCSpP+FHKjO6spA
         McGxdHHKEUrw/nCSS5dDsaoUrcgC5s6ezMoIaLqYEgxAhE3VPbpLzDRFetyAwjNJkE3X
         QQ6S+MkEhbvTnYI4EeraI2y+KmiGqGojqSDr5EW5QLmwpWg3BONaFX266PzEiDhNpFGI
         Z/yo/5xuHw134AMsuj68G6ucVu8JTBQTUb9sWPLyfxsrsI+hhdK37ZFhAVJ2sltihmo1
         o/Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RaI62uUS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xdv6jLkFkJRgsM2Cp/vTKZA9Rnwy6myaEPyMuDT6dwg=;
        b=SvmnfX4Hvzj7eDanrM3q3c6HNSQj9E+fmigAaxkgh8x53tunvv+fFMR3dstyJdHRGv
         aqU8SEPnNpWGAHVKJD/0KeyGeO4NziDn9ZbFlZTyqBlpqJ4m4rmdh8HBnU7Qgfxipu+z
         OReiX37SFOsJb2vEzAEhOm40ChQ7RuDM0fmqCrrD22zZ1l2CSS2xLw2plqUZhMnPZc9W
         m94UFcDbeP5xkB9YcxmWgVFvA52X7GLqHFbaVJUSaBzLHL4QJGka/kPZQcdY3Ss6tfPB
         CmUL0vXphA6AJCw+Z/at8IphzjSeOJ6bMvraCG7PiwIQrPbxoefAuXILj6F9D4Vg0mZj
         nHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xdv6jLkFkJRgsM2Cp/vTKZA9Rnwy6myaEPyMuDT6dwg=;
        b=lsThlUkQiPxwTgd3H+mph6dz9RbOFNq6WYSXMxf1Ve5GdPoBGWPXC58JVhQAe4uUYg
         AjX4xneKtyLGyTwoSP5zIXROiM+qGOhDYaSUQFkDZMsfrXg5TTmZzd0L6ZUEV3w1Ayf7
         w5H+D42sdjaRMvsO7p86RuqXmCFEOizdITeSIfcCp9si6/ZDSY9G+OhUF2jzaTq958pi
         B/AQH3xwZf7x+KV2WoN0i7I6JcyszQDXv8DDKpqAZ9xQ4sMFXd2e4ZFQPkZ4/Bfavyd+
         Yqx0b6l67Ft+Jjvc5kpNKHEW62zAI9s6mhrXROR3rX5IyKxAIeSWb+giccBM1a6InFXL
         GWtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2dSxpunNRoemyMiRLmH32ShEZO85mN0RT3W7l8Sq/kmJ32e+x2
	gaZolRRHxFxoPy8vyQO0Z7U=
X-Google-Smtp-Source: ADFU+vtODti6Mo5oxBGNIGs9S+a/r6DNQOm7OqNCF/+NwBAw1d0bIDUMAmjlaIiIE27o8Tpldsls9g==
X-Received: by 2002:a63:6dc2:: with SMTP id i185mr27288225pgc.314.1585039799945;
        Tue, 24 Mar 2020 01:49:59 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls1513771pjo.2.canary-gmail;
 Tue, 24 Mar 2020 01:49:59 -0700 (PDT)
X-Received: by 2002:a17:902:b181:: with SMTP id s1mr577840plr.142.1585039799628;
        Tue, 24 Mar 2020 01:49:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039799; cv=none;
        d=google.com; s=arc-20160816;
        b=LCg18ET6FwlUu1PtlAvmHQobrJiIYKn20y34ru+o/4cRmic6rqSsACxxHTA/G9jCNz
         ZLcx5qcBrXdbkilvSK0pcKioiDEYpo9SIi8feSQpPd/kpUE6PUUILnMzBz1BRFkR9FZn
         3uOOViicqJ8wjZ1iIqiVxNR851ERFHphvilNLFwIRYukgFkDxkT6zSbwmmZG9l7QuP97
         T9RahPY3vDjfDOEKryI0dMf8fiS6GrXx18gbUHNBB/ANAPjB3Hc0lgUWdtGGbv6fNNMB
         YtpxTTe6xE9sI3nDGhoEMIVsX9TOFbh/L4NG4EvLnqkahPc6aJyBmHO9ZCj5r59riBQf
         h9JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=EKZjb7DWYR4s7jGHGhFrynB+pQ1ESbu9YqfclUuLIXQ=;
        b=jEMlt+gOFIQafKaMa3o5MjgeZEJnlSgqXKV0zD36vWB/53cs1OO/fRRWVhR/l6hst3
         oZu/bip00Etv8mXHl9ha7wOR0qhhCkdv01s00+zqdwEr7yvqAecefs2s2Ho6dPZ3bsuN
         BaWIqtan9zDYoOufcwuQ9e2x2xYE4CAzLeAEHynn1nESDwPwRFJszqIRgTWDshJKdxxQ
         glXlLXnesh4vTqWzBXon7fowirsySQ8LVrw7VwIzSrRwR0g9HpU5uoMoq+3Rg4JDpJsz
         ViOifoEJZCDD5bATXSEprfGpXHvoG9nbxJtlp7db6dovn13OEv1LxGk071eSk8G6sH4l
         pLaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RaI62uUS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id m21si19358pls.5.2020.03.24.01.49.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:59 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsh011219;
	Tue, 24 Mar 2020 17:48:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsh011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/16] drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
Date: Tue, 24 Mar 2020 17:48:15 +0900
Message-Id: <20200324084821.29944-11-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RaI62uUS;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

CONFIG_AS_MOVNTDQA was introduced by commit 0b1de5d58e19 ("drm/i915:
Use SSE4.1 movntdqa to accelerate reads from WC memory").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_MOVNTDQA, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

 drivers/gpu/drm/i915/Makefile      | 3 ---
 drivers/gpu/drm/i915/i915_memcpy.c | 5 -----
 2 files changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a1f2411aa21b..e559e53fc634 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -28,9 +28,6 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
 CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
 
-subdir-ccflags-y += \
-	$(call as-instr,movntdqa (%eax)$(comma)%xmm0,-DCONFIG_AS_MOVNTDQA)
-
 subdir-ccflags-y += -I$(srctree)/$(src)
 
 # Please keep these build lists sorted!
diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
index fdd550405fd3..7b3b83bd5ab8 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.c
+++ b/drivers/gpu/drm/i915/i915_memcpy.c
@@ -35,7 +35,6 @@
 
 static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
 
-#ifdef CONFIG_AS_MOVNTDQA
 static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
 {
 	kernel_fpu_begin();
@@ -93,10 +92,6 @@ static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
 
 	kernel_fpu_end();
 }
-#else
-static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len) {}
-static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len) {}
-#endif
 
 /**
  * i915_memcpy_from_wc: perform an accelerated *aligned* read from WC
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-11-masahiroy%40kernel.org.
