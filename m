Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGXATPZQKGQET3EJQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2483817EE0C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 02:40:43 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id q7sf8128711qtp.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 18:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583804442; cv=pass;
        d=google.com; s=arc-20160816;
        b=G28YGtmpZlgvIIHMdYF4znIAop43fnzb672GlnIFL8EVOBqAP/AhgJ9NyUyYQZqkFI
         /UhOv0B0zc1qnGUC7tYr6Tc8+gSzMUIhFmvJfQJPkyQzA6mplxml97DCnYnyxR6XHseM
         Z0NgRNnjlTfPRdCHXy7pex0q953tLaFVdNZ0USk0iTUSdBeghTGlQR+a5kvRtJm5eP0N
         rZ7bPlucTs2ycH5rE5hPrsmfl0QarBZEVL6mCpeMynS0FVBQBny+nlXNO3qFxInHqxLu
         klbdh8FkBVJIfUpp1iHOqNWoWKb1Y0RtdyVe/ir5Wx0f1ej68OHu43efCsaYnDnyJgwA
         anTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ZB41pE2jv4Q4IfCWbUHtZZFjfup5g2qeO06G6zbVrKA=;
        b=tGgLravbR/indc7D1+eQOBTJ9pnlu3PUC1lUhErpVtjyyHSP8kBNsmRH4vDjXQ1I/6
         3ehO4PYvLMLuY2rK5r8jaesEZe0vfNNazLbUZWco+GbvsXSQFstBqWJzIswnNUfpTGr9
         uGTyUDrLXn2o/sMmrL124bPUs/1Ds0goe+clv1mV9QOO29RimbUyIMw13vVtjLZjLhU6
         y25nJsP432Q3sWnIpLzjYokhUHhNSs0oQIG0OF0fVROreePsPutGrKALhbx/dGmxX4Pj
         +4TqaaRtnrsfOZNFXdE/2oK8X6cV0+XngaE1ZQ7e2FC8n6WVRDRlW4oWBUcsI9gNU9+G
         HtlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MI3LsZw7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZB41pE2jv4Q4IfCWbUHtZZFjfup5g2qeO06G6zbVrKA=;
        b=ob0TAT5juxtlUpvC5b8g9PPwrsdmh1iWLTb3/HXD+nN/kHmkAh0l2zoXfVxjkSqCLM
         ulqlV+6Hy9Y3lOP0W/cUIznwMsGuKkygJaVpMwBWQgvMWCkJ/GY4xPYgKsssYuRCwc9O
         APiq4WqFr+Eg5hKnFudi26YbGWmjY3vUWz/csHvvlFmQCA+qJVaQAllvT9Sf1IxRAbLN
         ecd895JZoatqefjcfSsMg1G+GkD19GYpmzmJza1X7LxPgILhiq0W//QMe7cqFU6hNvQK
         12abzx0YK4muVDASwSYPDIGuL/ZMUBfny0iOBZ+cjZBFOH7hIENFhjbaE3BYzHsQFHKq
         m16w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZB41pE2jv4Q4IfCWbUHtZZFjfup5g2qeO06G6zbVrKA=;
        b=QeWqYi02q6Bt4Y75E+LS6SSSww1kQ+t0Io1hYU9xs7FQbTW/1KUZTMES5WKwU1GOZR
         hDklZiAqEN+i72GacdE1cHayQjZEsqARrSUZPE0NdJlWzYCOdGpIxVjF0zxy3XbZOgQT
         2992KQ+Lw7nxClhSflb0dQcxeUcjDW3CBPiD4eYKGQuijPbSOhYcH9pyo9oSYH90SnAR
         dA9UQwfzF4LODk85YP9wWWXFb5e0MxrD+J4B/sCxulcv0EtpHNOKryTfYEW9vsrTV9nF
         j0/Bj90p8NdU96dbR4KrLxOZDRFjmVC8G+Tf1oIr2AY1l1ysdHJnSA3pUupUkoB61X4B
         LVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZB41pE2jv4Q4IfCWbUHtZZFjfup5g2qeO06G6zbVrKA=;
        b=pmUBJNc/+GYuaHlt5RKP1LK04bKn9jPA7iev8lQgiqjb+0wyKfKUeD1YFWOKi5CeiT
         1LU/Xl2mONjv/KQhvX5TRB7lzkZAs3aZacVHt0BASYKfyT0xywiv8P62WEGjkD5eEXs3
         fCuOXb7RSDB+9qgf6FRwZLJW4YHShRAgfxqup5otTcJFnwaX3ry15TYCKvRAOakexUTW
         zxZ/ZdBPWsGCPAJB53zXeonr+P4Vp5teTnnyu4Bn4stl1e8V33Mt09LTxRD352mUSRbo
         h01BeNGRWDH4NnMS9vJJ+eRkeJuAPDMlsZIuUcWNAAQlWdUQ0n1NUl5e7vdKjHp8sXDD
         jd5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1oHM/SVqHAv6DA7/kn7Z2jgu3MzzCxpPAD8XX/CuPNwBFueHHw
	2NPMQ8RAbUCBmTcTx7nm+z4=
X-Google-Smtp-Source: ADFU+vtQjru5gV20LSNaXQwE5DW4pCB8MxzGvVRHtRqiT5azZGMyGNKucZ2CMOq4bKKvIQnvrMMDew==
X-Received: by 2002:ac8:7454:: with SMTP id h20mr16656716qtr.371.1583804442138;
        Mon, 09 Mar 2020 18:40:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5441:: with SMTP id h1ls2773817qvt.8.gmail; Mon, 09 Mar
 2020 18:40:41 -0700 (PDT)
X-Received: by 2002:ad4:4206:: with SMTP id k6mr16666907qvp.242.1583804441820;
        Mon, 09 Mar 2020 18:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583804441; cv=none;
        d=google.com; s=arc-20160816;
        b=pJ8KjCwsc3ie8oF6j2oBryTc7tnkKIVqXjV7IcC4jah5h/WHpIUtj9y5MtAOnsDdL/
         BZuLkNRaligE+5MwjsYwLTekELKtryxlUqQO9lTBQB2GcgE3aeMXxfyC1Dw+9s4JXeFS
         YKdniCOkOoNzDRphjk6rZCFvQ1dnzt9Iais8t6ZFD5tQAn438HjXWZSHdWj7L7APJBe7
         orTTkCKcDECYUHPjZWvtc/9pu0PMq7vCB6Le0jcWnoL9WqVrdU70i1ss//dIt8kUzf6l
         xJXztLhXwTVf1PsMJ0KJcBMNJfzXlaokpNuTCc9RTzdwcPjh86c9CFVM4W9SnB/95ZvQ
         QHHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rJK9U08Zj+HB08iS4A3NIowl4Auq1x6GFauaG9Dpfhk=;
        b=0NX2A+o7PNN7kZhFWergjgmq4kOCKkCC7DD+U9bmNRKHoV5DrE2GnI6565x1OVyRFj
         0gQyIVh7NJbhvg1kB9P029kzBrh7wCX2dFYWgs31P4CC1QnfFZHnuh7yB0eJEySGORVT
         YDzJ6fY7y4PYrjiCZWy+JVCvkIUobZ2fgt9tO4QBf4+nGr+R7nAsJR1u0gNtvnbPBtCQ
         JSbhzhwzzR24s9Qp47psVaJ9+TQeyS9nfH3vVYx+o0qj/P6Z0CJ2bXHx6rtxqYHmlRCt
         7L8tMRlMwOblT2CGZwmrHdD0Ya524CAXGf6wjMjnErIFDzYWBM1ec+AR1PCNNGqNMBYZ
         ALLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MI3LsZw7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y5si190681qkl.6.2020.03.09.18.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 18:40:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id i14so11664116otp.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 18:40:41 -0700 (PDT)
X-Received: by 2002:a9d:4d8f:: with SMTP id u15mr15193747otk.261.1583804441415;
        Mon, 09 Mar 2020 18:40:41 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k21sm2096097otn.58.2020.03.09.18.40.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 18:40:40 -0700 (PDT)
Date: Mon, 9 Mar 2020 18:40:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 20/20] arm64: vdso32: Enable Clang Compilation
Message-ID: <20200310014039.GA12211@ubuntu-m2-xlarge-x86>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <20200306133242.26279-21-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200306133242.26279-21-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MI3LsZw7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Mar 06, 2020 at 01:32:42PM +0000, Vincenzo Frascino wrote:
> Enable Clang Compilation for the vdso32 library.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/kernel/vdso32/Makefile | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 04df57b43cb1..650cfc5757eb 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -10,7 +10,18 @@ include $(srctree)/lib/vdso/Makefile
>  
>  # Same as cc-*option, but using CC_COMPAT instead of CC
>  ifeq ($(CONFIG_CC_IS_CLANG), y)
> -CC_COMPAT ?= $(CC)
> +COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
> +COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
> +
> +CLANG_CC_COMPAT := $(CC)
> +CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> +CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> +CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
> +ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> +CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> +endif
> +
> +CC_COMPAT ?= $(CLANG_CC_COMPAT)
>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
>  endif
> -- 
> 2.25.1
> 
If CC_COMPAT is ever specified on the command line as clang (maybe by
some unsuspecting user), we'd loose all of the above flags. Maybe it
would be better to build a set of COMPAT_CLANG_FLAGS and append them to
CC_COMPAT, maybe like below?

Regardless, the current approach works in my testing with clang 9.0.1
and master (clang 11.0.0). This patch specifically is:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build

==================================================================================

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 650cfc5757eb..df5145fab287 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -13,15 +13,16 @@ ifeq ($(CONFIG_CC_IS_CLANG), y)
 COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
 COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
 
-CLANG_CC_COMPAT := $(CC)
-CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
-CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
-CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
+COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
+COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
+COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
 ifneq ($(COMPAT_GCC_TOOLCHAIN),)
-CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
+COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
 endif
 
-CC_COMPAT ?= $(CLANG_CC_COMPAT)
+CC_COMPAT ?= $(CC)
+CC_COMPAT += $(COMPAT_CLANG_FLAGS)
+
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
 endif

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310014039.GA12211%40ubuntu-m2-xlarge-x86.
