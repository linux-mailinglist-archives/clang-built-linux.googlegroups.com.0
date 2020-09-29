Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXENZ75QKGQE4NXUAUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6411727DCD7
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 01:44:29 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id c66sf8148ilf.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 16:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601423068; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dX210RbVa9R6G3Eu2TVQObN3c6e8qq63qrq9DPOF/hB0nSQ1IcIiW/jR14tjKPW/C
         Q6u73Z+teoSMajBzjbiAU3P/VB8qSTO5yrzjnQXUJ7tUbiJD6aPn/+kC1vAsspSEBozR
         oeFKZtzmouUOMTTCFQGWbHcH1YL4e/tp+O51MIvGYJsrjOs6zNJcm/L8ViO9WkvHy8+n
         KObL15aghR75l8ZxK8a6DwDXe9dnkzM0IvSWHce/g2lWVSzdijq8ujaUSxYzbcY2F/cn
         vGPYTgGyIThshwRv4V+Jg6tNk/2KjZot85vjVUyhvG8WcQUSQBeOGiYgZitTwMFo84kh
         GCTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fO+Yc6MBNT52J9/NvedJcWAY1Y86i3OdtQ25hhVkR+0=;
        b=Gtjt4vpa8Y4N0dWlCEPb85WsFYp7a3LxYIkeYQqU2js9u0TyDI2XtM53TKkzw0AMms
         GkPz5iC7HBgLAteS4cW6tjdUeW0vcaaI51M9zlF8CbKxtE+tBUljTAicyxV99FblB34L
         w30mLi5AYYewLu95Oj5CtJSDFDGVjHUv/T1aIH6teS6Re0qhP/Ucyq5nnAcIiezJO/2A
         YFnw9uFHJ2ER7Xz4YscBhcxWPB/gWt7hz6VQ57VKrBObUmdS7hp808sUcjrpCQAnfuFm
         TQ4utXx5th0Zh3GdVuZZpRXb234/Tyutmqte1qzPPSJkBN5L+UVRY4mOKyTIo9c5Z7jC
         j6dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P1rBseIR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fO+Yc6MBNT52J9/NvedJcWAY1Y86i3OdtQ25hhVkR+0=;
        b=eLiWlhyjwjP6VG5TAy8ewcdXRwvXN6TSq85kMA+/HfasLIYkUOHeUbgYXZY5AxgtT5
         MWBa0RnZL4iWW+fklUfIWO8ptVoEnFTc6ogvQLMPZPpGUFnxYVfC8eiUbfEsWBxEl9q+
         YDkiQBJo1vy+dd4t+c3a3MWGif/nWx6K6uUKdii+zLFoMQwN/Rpl5Z381VmKM3GA9knj
         zD7b3OS+AApdwwpZQ4RIT+XLLv8botysR/E0P0gND9EnAscGHOjU5GUSclrjVCnPtMe6
         e842pSPypcS8WaSX4C3QzIAcjASzpJY2JKgvuUFHgoN5Tij/Yvk+7BdgKmp1oBMuR8OK
         qKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fO+Yc6MBNT52J9/NvedJcWAY1Y86i3OdtQ25hhVkR+0=;
        b=oUAKkg+Xyu/mTyAB7Ep16egZ6IeJVkJ/qbz3FxTNYcLqjwEBKSWXA5OMwAOF1erGCe
         yEGzGDIgDpee7nRRhikMZ9BUvs6TeLcwevAQ/sF1LeN54kQzB9mNA6dLGcKDJTh+HxVI
         mVVTbbaHXWtBfDpiJZ/NPDSzLP6vA6FrPyu+41wHU0GcmjHYNqJmC4q/XFLsng2533fC
         jvaex7XahNQsTE6QvqvHXAZQjCfe2CD+OGpM/3mbvJAlTBb2JsI8Hy19X5W/5QoEv+ng
         Mm/v/4iaj4YQQvr8Lgwt5mylv3ysnUZN6V63OvwiAcFa9dwltdSip8TchKbtI+608kio
         nCDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Xtkln+TF3StKbb4nKy4Z/pODWFy9dX4bYNrTRbAvAAJxB7Fcu
	smwouysmGeMnRr0er3HocEk=
X-Google-Smtp-Source: ABdhPJxt/p6JBvn0BSMK87e7X/EZmBmstLhSE7aKUfeRC5QysPn0VyLU96OngvfBEkQwR53sURJcrg==
X-Received: by 2002:a6b:700f:: with SMTP id l15mr4310365ioc.168.1601423068424;
        Tue, 29 Sep 2020 16:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4893:: with SMTP id j19ls108857ilg.4.gmail; Tue, 29 Sep
 2020 16:44:28 -0700 (PDT)
X-Received: by 2002:a92:1589:: with SMTP id 9mr5357838ilv.292.1601423068032;
        Tue, 29 Sep 2020 16:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601423068; cv=none;
        d=google.com; s=arc-20160816;
        b=SYyMQ5wSdKU0Z+8mP4q7iqA6qH4TYr+qT/uW5JnM9q6bwnipAQkVkdOu11/AMZxC4B
         IdvsmBrmehfebz3ZKFqDVNcDBOZWweUP6AlqeoNwQ7VPiQtmr4dRgjm+Kq3RWrUi8nns
         qGSRJy7lKgknHFXdJXb7+r+jkDQ+wM5hHnIY/siMIDQZwB+if2b70rOZ3oYtslDwi6fd
         Tgxc0NDdr/jXOp9VSIeytLmGa9uPTd+AZeOK4RJwb2tQ3BeEC/4zIW4YdMetIfWan1ov
         Ymj60e8WHBdKAtbl+BQOQM0GlFXSlt3GuUTNdM2C7hKgmEDcAALll/3zX7UjxkkNx3Vh
         tOHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LHFC3pSp/lOd7ky65H/yobNgw+7t15stg1Jz7JjkFbI=;
        b=QBKK9ms7FDDdipVI35AjVMbCFEpZzMlB6TELcUIyBbrl7kdjuBhXfPa6F3AaRGcAgd
         PvIFfBVpwT5dqoSYDxMm2YIGqFcSKSOxa0i3/fE39cmNRDLXHiaPiBHVEJ8u3IPXqVCB
         m6VHtdnI9rbhJ/YU6ViLCf/PbJpUqiuVUorBu7klxSusENTwOO3fjbRzzwvRnBpz5lZY
         lrlcTdo7gjB9UHn/CKxJIggqUr4S6IutlYoksVvnb7ZNDABjEJ/EYFhcoxpPqHzORhBU
         DTi6uiFYjdkVaQ/s50xQzTzBqNLwty4wMLBOCmPSfaX6E9y4Dtx2wKrkzh5i5txq3BPv
         hSmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P1rBseIR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a5si575072ilr.3.2020.09.29.16.44.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 16:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id s31so5280415pga.7
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 16:44:28 -0700 (PDT)
X-Received: by 2002:a65:4342:: with SMTP id k2mr4984144pgq.343.1601423066988;
        Tue, 29 Sep 2020 16:44:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p11sm20964pjz.44.2020.09.29.16.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 16:44:26 -0700 (PDT)
Date: Tue, 29 Sep 2020 16:44:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	kbuild test robot <lkp@intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Matthias Maennich <maennich@google.com>,
	Jessica Yu <jeyu@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] export.h: fix section name for CONFIG_TRIM_UNUSED_KSYMS
 for Clang
Message-ID: <202009291643.97AA3D46@keescook>
References: <20200929190701.398762-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929190701.398762-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=P1rBseIR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Sep 29, 2020 at 12:07:00PM -0700, Nick Desaulniers wrote:
> When enabling CONFIG_TRIM_UNUSED_KSYMS, the linker will warn about the
> orphan sections:
> (".discard.ksym") is being placed in '".discard.ksym"'
> repeatedly when linking vmlinux. This is because the stringification
> operator, `#`, in the preprocessor escapes strings.  GCC and Clang
> differ in how they treat section names that contain \".
> 
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Link: https://github.com/ClangBuiltLinux/linux/issues/1166
> Fixes: commit bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

Do these other cases need fixing too?

arch/arm64/mm/mmu.c:u64 __section(".mmuoff.data.write") vabits_actual;
include/linux/srcutree.h:               __section("___srcu_struct_ptrs") = &name

-Kees

> ---
>  include/linux/export.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/export.h b/include/linux/export.h
> index fceb5e855717..8933ff6ad23a 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -130,7 +130,7 @@ struct kernel_symbol {
>   * discarded in the final link stage.
>   */
>  #define __ksym_marker(sym)	\
> -	static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> +	static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
>  
>  #define __EXPORT_SYMBOL(sym, sec, ns)					\
>  	__ksym_marker(sym);						\
> -- 
> 2.28.0.709.gb0816b6eb0-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009291643.97AA3D46%40keescook.
