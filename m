Return-Path: <clang-built-linux+bncBCS7XUWOUULBBJOOSOEAMGQE7TYULIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7453DC3A7
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 08:01:11 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id 16-20020a17090a1990b029017582e03c3bsf15748975pji.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:01:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627711269; cv=pass;
        d=google.com; s=arc-20160816;
        b=NFEh8mjIyDCqUVcc2AYGrcyog5IPwDEY1kqrUFs+u8XgkQtqWRwXT+ONaenlSSN9tL
         JluQS5JfEDBFPxItkABJhAaWVj2jzK2dzR64wyJbMOeHNWIs7UPeHIpmwrz5qN9pZn1x
         sBAyz6kG7RSOeK326L8mbLJfiQ9P2N9ajZE7cADbLY9N2dbcrESG4PF/dyDkKT9mZXUc
         5C8A519sLSmC/LRNDy5E1K4S4eYFsKMxrofKlKcD2AXSLgAWmRbDetDUoWz3V10qtHoi
         1W+QluciHKM/fPlX5P64ae+mFsXNL2IUf87XPyDo7zj5Am9uHasUNW8lTAjBn/MovV4c
         u28Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qnTtwKKLIRXFSsUoPnAnyTI9X14iDW6jny5yadOsZrQ=;
        b=eFfbqOE84EsS4KuLG2Q3qqZXybKfIJaoRyvJl0zXU3UAZbX5yAyBJTtfn1StnvwNWe
         a4izGKAoBfxQMQ2dPSk8ogY9OiQN9V3FFHd2yBuq71A41iRSGl+wCuo/UfViqSNLEx1a
         9uTsK42H7tPhCofPdb7jF7OFMugdcnMxv5xeM9H9JpUZWQ0IFNs9Dc0lNBU37fhiSF8a
         sO4key14N/+TwJZVau5Xq+6rZa7dAhy6mOY2EcFjyM+zLVuT0yWhGfMhC3EATyuI+urJ
         MIxgKHUJQCBejUKBXeBcDxUpHyAijT1ZY/LAwco0cEzWYi8FEAbnZ6IUVPm0ZyDsn5BT
         zM6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=azNSPWyE;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qnTtwKKLIRXFSsUoPnAnyTI9X14iDW6jny5yadOsZrQ=;
        b=KwCgyRrHItJszXuxRu2ytCzwXiDzmXYQDh0OeajEYdaPOy9SjV1SedXFSCvJ7pxHUY
         Y0ZOffWi5LY+wdwyYBpWZm9Resuz2SEnnMax9o9919nvCdm6GQVUjHSntRYZn8vGb39t
         gGu6VHxPqWSJPcACLIuOu0qR4vEduU9fdOooxsVKZVTrdhs4rtv8wj5HP70kiLMPSkRC
         Y0E1alLaruehhgU6ppvZ1S0vvwPJvrKFJri6EUH8H+0+UR0Chjt2kQx3uGPPIXFvJ4v9
         XTyCBvfYsPhl3hxcOoAYNLgECW1KfTV6xYRtd323IYmMA4rP9szXaoQSKYxwtoRq+Tr+
         fzcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qnTtwKKLIRXFSsUoPnAnyTI9X14iDW6jny5yadOsZrQ=;
        b=hz6CWKveu70sDyfjttngMT5UZwCvdEAKf7xH89VgRCGi16lHqoFpSwab7ePcvz6mRQ
         jvcnpHu9iBw1WxBY1VKu7iBcEuvlOvVCESGQwVPZKGJgR6Pr2x4YXonVNbgUoB2LAmDm
         ddTc3zDNcSQH1H2EMB3/0/yVi1So2iPyyCT7o8IQTzxM2pNIBxeOsICMZ4yQGO7MPHED
         pczfG/bdW6ZJ0k5+FWRgDIC/e6r/uqrIAMOcI8/M6fYoZGJ2mf3nvp/KJm3qTAldtt5g
         F3rOWGx0J39dvNsFw7QKk7iZAQPXGoVb5rOKvdzbXcrUQ3B3Nx6L8HGH3y6RQVnK+ybF
         OpCQ==
X-Gm-Message-State: AOAM532YtSm5mN44X3/yF0gjARrljzDUn0sTxJ/t5GMCaAXGqJjD9eH5
	P3Das7xwfUZrw7FYIykATFg=
X-Google-Smtp-Source: ABdhPJykO14Wyxt7YR7MKkQz2hfeHijSNUbPA1eXXlLyZOyNBhHhSDz4vYpJU8bLSjLAzwAuyyFb8w==
X-Received: by 2002:a63:950a:: with SMTP id p10mr1124472pgd.362.1627711269687;
        Fri, 30 Jul 2021 23:01:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:a1a:: with SMTP id p26ls1442117pfh.9.gmail; Fri, 30
 Jul 2021 23:01:09 -0700 (PDT)
X-Received: by 2002:a63:fd43:: with SMTP id m3mr38839pgj.210.1627711269132;
        Fri, 30 Jul 2021 23:01:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627711269; cv=none;
        d=google.com; s=arc-20160816;
        b=L7t9kwW6jm7bTY/ZOhzNk/leJG4AJd7On96K+DcOcxgid/cWMbR1H2oeTTY2rckn+o
         +tqcMRznaszcc4/KNYxD3eA0S+E2eVpv1pKRmray676a+0qnvA7zkod/qBjAjzFpMsZ1
         05ua2vWVZ9gPbUDF/M6aOqQyJNtMMeRhoSJzTviigL+6Dasn3YLQ97d26PlreBkelYoZ
         DhYelTCCEUh3tgFg5jFRAZCLPY4RC8mhyxUtoQhxYMWaE3ayw/P2gnezZ/SwTAc6Z8zc
         FWb8vp0Pk/ZrRFlKFTic+/9cTSJ7p7aIhzPgTaTtMNMhKtqtdmSuZE2ayyGBmQWsAWC2
         v/SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RnJbeFRABx8gv+E+NAXey4lvwWkcIEVkiEIkxS1UNwc=;
        b=wpzv0QbjyJOTZE6ugwhk94ze0rBGZAX9fIdmg0zAHIzGGSMgq26XV6n8R0N0KWnWQX
         dOgHm5DOc38fUeLMFaaYy2F3XYC66GDDEDaokKutWoU4kYo7GNINU+IcgdvkxbBuo8DK
         5rEoh8gQ8zwjWVtNskf+Nw6fPGGqDbUV5MYTFQCzrfrgWIqbbaaqFKkpcQ9Zm2Curv37
         2Hj0oS3c+SAPwqgFbfi7xuIvfkJkfPP2y/bZmGYvsBGqk4c1JUy0Xp240xCl0TiNf5Wx
         fnYv1ekTcu4XI9j5sKbW1v/RJ0jbt6qqiP/c8smUlj+76aziDeMQtRDj00o/nkoue31J
         vLIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=azNSPWyE;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id b15si173601pfl.6.2021.07.30.23.01.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 23:01:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id z3so12275738plg.8
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 23:01:09 -0700 (PDT)
X-Received: by 2002:a17:90a:d596:: with SMTP id v22mr6926387pju.51.1627711268627;
        Fri, 30 Jul 2021 23:01:08 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:160:995:7f22:dc59])
        by smtp.gmail.com with ESMTPSA id e35sm4090000pjk.28.2021.07.30.23.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 23:01:07 -0700 (PDT)
Date: Fri, 30 Jul 2021 23:01:02 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH v2] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
Message-ID: <20210731060102.3p7sknifz4d62ocn@google.com>
References: <20210730223815.1382706-1-nathan@kernel.org>
 <20210731023107.1932981-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210731023107.1932981-1-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=azNSPWyE;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Reviewed-by: Fangrui Song <maskray@google.com>

On 2021-07-30, Nathan Chancellor wrote:
>A recent change in LLVM causes module_{c,d}tor sections to appear when
>CONFIG_K{A,C}SAN are enabled, which results in orphan section warnings
>because these are not handled anywhere:
>
>ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_ctor) is being placed in '.text.asan.module_ctor'
>ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_dtor) is being placed in '.text.asan.module_dtor'
>ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.tsan.module_ctor) is being placed in '.text.tsan.module_ctor'
>
>Fangrui explains: "the function asan.module_ctor has the SHF_GNU_RETAIN
>flag, so it is in a separate section even with -fno-function-sections
>(default)".

If my theory is true, we should see orphan section warning with
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
before my sanitizer change.

>Place them in the TEXT_TEXT section so that these technologies continue
>to work with the newer compiler versions. All of the KASAN and KCSAN
>KUnit tests continue to pass after this change.
>
>Cc: stable@vger.kernel.org
>Link: https://github.com/ClangBuiltLinux/linux/issues/1432
>Link: https://github.com/llvm/llvm-project/commit/7b789562244ee941b7bf2cefeb3fc08a59a01865
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>---
>
>v1 -> v2:
>
>* Fix inclusion of .text.tsan.* (Nick)
>
>* Drop .text.asan as it does not exist plus it would be handled by a
>  different line (Fangrui)
>
>* Add Fangrui's explanation about why the LLVM commit caused these
>  sections to appear.
>
> include/asm-generic/vmlinux.lds.h | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>index 17325416e2de..62669b36a772 100644
>--- a/include/asm-generic/vmlinux.lds.h
>+++ b/include/asm-generic/vmlinux.lds.h
>@@ -586,6 +586,7 @@
> 		NOINSTR_TEXT						\
> 		*(.text..refcount)					\
> 		*(.ref.text)						\
>+		*(.text.asan.* .text.tsan.*)				\

When kmsan is upstreamed, we may need to add .text.msan.* :)

(
I wondered why we cannot just change the TEXT_MAIN pattern to .text.*

For large userspace applications, separating .text.unlikely .text.hot can help
do things like hugepage and mlock, which can improve instruction cache
localize and reduce instruction TLB miss rates,,, but not sure this
helps much for the kernel.

Or perhaps some .text.FOOBAR has special usage which cannot be placed
into the output .text
)


> 		TEXT_CFI_JT						\
> 	MEM_KEEP(init.text*)						\
> 	MEM_KEEP(exit.text*)						\
>
>base-commit: 4669e13cd67f8532be12815ed3d37e775a9bdc16
>-- 
>2.32.0.264.g75ae10bc75
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210731060102.3p7sknifz4d62ocn%40google.com.
