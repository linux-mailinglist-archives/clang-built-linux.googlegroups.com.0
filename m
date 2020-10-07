Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7GP6X5QKGQEZFY4B3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DF02858F6
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 09:02:22 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id s4sf792998pgk.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 00:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602054140; cv=pass;
        d=google.com; s=arc-20160816;
        b=ulsV2QaJCZEC6gr1htM2nq/rBYcJaJluCDpaG/n+OyHP86zJ0/FkzuOdDLzYL5wnrV
         fY0UJ/e0uHRaCEL5K8AGhouOaCmEe3Smo3uj/g4xXfWYBSu1rDtp2neqw2U5kMQ5+TTT
         4xdHJcXsLBTue6SNibXtq7UaV5CNrsghuSW8tBDH4CnCpAYEgAmf+Kq3a1Mz9xSCqkrg
         opFCJ0VXALRwPfyxWAOvn9O+YTWNmSZpZtt7gsRUt3bWULEZ5kS1Ge+xmnHQwNdERz8c
         2G5Ncw+v7wQChZOUjTAFtedkUms5Hc5LkP9J5s6cjEYTloCa6A9ABeN/3CI1+Kz4oFv8
         dkUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lxRHAXFTQ6TdfMjJraWdJoVM3DPZ1Z96pj5dwGyAkYU=;
        b=Oeu1HE+aslr6q4aGMTdnRwni9fUJrp5WuclWl1KzNi1ZELp2vUDtZfoKc77oP/eqpO
         YjWQVw6nMUEGWtr91bR//ZXv2KFEPeVVe6IspLWM2TRZUqDFeKYLieZDDnHG75nM+tjM
         /duiYeL9wF1IiCaPwV7Ppmxx33z0aUCB0iJH+g6UFxcVxad8/4wUUIVYl1fqpYcthwDH
         IBwQr3QXmDkZ3iRMUifDGctG9dJF4GzGfIWw6ER6nMc91eqFztgOnx5+B8h333sBhvmz
         EXgodfx4aIFyv/KoSsObaIhgX7FhfTas+P/xtNVDXKxFVQq6cY+5QHyWaPza2ncouF9w
         Ibxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YhZGcgka;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lxRHAXFTQ6TdfMjJraWdJoVM3DPZ1Z96pj5dwGyAkYU=;
        b=a987Tr6DvLhMNBCkQ8WNnUaxdXbEJPHG27L6TlaghaYS3q7pKFpXZ/uhNEUSGYtbOx
         Brbn8gS9deVb43jC5pLxsuq2PUf9bGW4X0EfGEiyAUyqwIJKD3KvsXoIas9snNUBZul5
         mRwQiy4y/HTxsG880I8eT7KrigwfrG4V+ESlcSZ1nvFW2NOnqbVBOgubGqhgLau2Qtck
         r1odgX1w9rAY05oTnjO6ihvFs3wJazL/XmEZkymmvCE7dJKe8OAsE+Udh+xhP8ecwjvO
         DPekSJH4a1pvTDgTEnfowabHIpHIsoTrZsbF7xtudWX0voPpqqIPQ2igbjhOl4K5+E8b
         e5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lxRHAXFTQ6TdfMjJraWdJoVM3DPZ1Z96pj5dwGyAkYU=;
        b=rfaBUeEg9Dzexi/LR/4gyntVzdxx/S/cvi1PQMg1ANQwDFuGGAKGcrnGG2T7i4bfZf
         yeogGjhg6Mvwy4vcnk7VcEaq48XULOKubH/DClEHlCRJ6Es8ul6QxASPZKA8lGzKRbG4
         LLRC3d/or/b/npih0lvuhA80s9+TU/qkQjbbmr36xOYa5mhOCtWZ4a3Epi1bMjlXMu0Q
         hAV1CSNkDkTXLe+DtM1D7FespvWzDFP2pwGqv/ubWY/qMJQrpUh1kcJd3udQdjzI8WoW
         xYFSmOkS18f5OiLGFtTGrpNhKKiqkyEzpmnFcNKtjOavTGVqs1cjECKhrMaEh/bEoRH5
         Ji9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533q9NmU52ZKlYUQkbH4Ca21LcHDTU95f2ldx2QSNE6tZasjztUT
	X28SxEvPct1yrKqkxRhQ9Wk=
X-Google-Smtp-Source: ABdhPJyHHE6jFloThEetltuafFJ8Jik/2WrGtfm5PBxmZmwbNDWaFHGpvOmj5sV4ShDisGAmo527xg==
X-Received: by 2002:a62:be0a:0:b029:142:2501:35de with SMTP id l10-20020a62be0a0000b0290142250135demr1828434pff.62.1602054140278;
        Wed, 07 Oct 2020 00:02:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6381:: with SMTP id h1ls598309pgv.1.gmail; Wed, 07 Oct
 2020 00:02:19 -0700 (PDT)
X-Received: by 2002:a63:cb0a:: with SMTP id p10mr1838011pgg.314.1602054139739;
        Wed, 07 Oct 2020 00:02:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602054139; cv=none;
        d=google.com; s=arc-20160816;
        b=GuBWSXLyT3OVISmP7wFj5XolQkBlgRvL14jYK27mihchwCkzoWq1hzrcSbFPVkEGC8
         akLDUET2/0RgXY3/TgJ1fDivbkhgmRQPOdXtb2wPGxXyMlkRavfza98y8B7CeEd87bTB
         Km7LqN5A9Mvbz3B8tp9oKdnqtwkK/twY2CV0UUf5bNMQXP2iO4gZp4+ZnDr19xYkjyk6
         2UhIKWQv9QPWAp38S7mTZ9a7BdzTvbmr+pqf3xP4v1hBu6fz+oLyZTPIGNOaSlwFNxKh
         kWqhOVUPRgqiSv3g9aDotIuaqJ7tK6F/l6uEZnlE7z51U7YpwOkiqAJNoaJWn3vqIoCl
         rB/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XdqKL5aXm7UjHedQ8Kmd06CRP6H67L61WFTIrlc1Gl8=;
        b=U4ROPYLd9Moaym5vEuDDmBEVVBDBsPSO9EHhn4ZI8fe+sCH+mX1Ict+g9T/cN6jGGt
         e2lDA8ISYh6pUvZh3yM44Yuy6Dx5Fm+BlKfo0z2kkdxL5BSCw1oB26gHPNKdC3WuHiOq
         nior/O/+/gB/0JjN2vZAL9c5dCM14kreaGmc+pSQc5KAx7so89RafoGxN+HNkDd7VV40
         3aTmqUIr0R8f0VQSnsui+TEXJQ16zmYeYczOWq1J46qe3uB/x5X7JkBb1WWnbmoabH9M
         wwYJss/QPlhFPI6WznAa5yMGdpbFbI06ZR63t51x6tXaXNXtHd682mjaP4ko/3/X8faJ
         MQEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YhZGcgka;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i4si432695pjj.2.2020.10.07.00.02.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2020 00:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id b19so540987pld.0
        for <clang-built-linux@googlegroups.com>; Wed, 07 Oct 2020 00:02:19 -0700 (PDT)
X-Received: by 2002:a17:90a:3f10:: with SMTP id l16mr1664591pjc.110.1602054139421;
        Wed, 07 Oct 2020 00:02:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h20sm1556665pfo.168.2020.10.07.00.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 00:02:18 -0700 (PDT)
Date: Wed, 7 Oct 2020 00:02:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: James Morris <jmorris@namei.org>, KP Singh <kpsingh@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] LSM: Fix type of id parameter in kernel_post_load_data
 prototype
Message-ID: <202010062359.01DD51D3@keescook>
References: <20201006201115.716550-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201006201115.716550-1-natechancellor@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YhZGcgka;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Tue, Oct 06, 2020 at 01:11:15PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> security/security.c:1716:59: warning: implicit conversion from
> enumeration type 'enum kernel_load_data_id' to different enumeration
> type 'enum kernel_read_file_id' [-Wenum-conversion]
>         ret = call_int_hook(kernel_post_load_data, 0, buf, size, id,
>               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> security/security.c:715:22: note: expanded from macro 'call_int_hook'
>                         RC = P->hook.FUNC(__VA_ARGS__);         \
>                              ~            ^~~~~~~~~~~
> 1 warning generated.
> 
> There is a mismatch between the id parameter type in
> security_kernel_post_load_data and the function pointer prototype that
> is created by the LSM_HOOK macro in the security_list_options union. Fix
> the type in the LSM_HOOK macro as 'enum kernel_load_data_id' is what is
> expected.
> 
> Fixes: b64fcae74b6d ("LSM: Introduce kernel_post_load_data() hook")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1172
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Ah yes; thank you! Greg, can you add this to your tree?

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  include/linux/lsm_hook_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/lsm_hook_defs.h b/include/linux/lsm_hook_defs.h
> index d67cb3502310..32a940117e7a 100644
> --- a/include/linux/lsm_hook_defs.h
> +++ b/include/linux/lsm_hook_defs.h
> @@ -186,7 +186,7 @@ LSM_HOOK(int, 0, kernel_create_files_as, struct cred *new, struct inode *inode)
>  LSM_HOOK(int, 0, kernel_module_request, char *kmod_name)
>  LSM_HOOK(int, 0, kernel_load_data, enum kernel_load_data_id id, bool contents)
>  LSM_HOOK(int, 0, kernel_post_load_data, char *buf, loff_t size,
> -	 enum kernel_read_file_id id, char *description)
> +	 enum kernel_load_data_id id, char *description)
>  LSM_HOOK(int, 0, kernel_read_file, struct file *file,
>  	 enum kernel_read_file_id id, bool contents)
>  LSM_HOOK(int, 0, kernel_post_read_file, struct file *file, char *buf,
> 
> base-commit: dba8648dcab90564b8a11c952c06a9e1153506fb
> -- 
> 2.29.0.rc0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010062359.01DD51D3%40keescook.
