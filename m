Return-Path: <clang-built-linux+bncBDV2D5O34IDRB7544XZQKGQEZPZYZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B89F190332
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 02:12:33 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id np3sf1257611pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 18:12:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585012351; cv=pass;
        d=google.com; s=arc-20160816;
        b=bTB1zGNxlZ1tpLOp1K5tbYtPIElebv2IPmU81QSjy+t/yDNm0Uwu+HSHOkLg1Gns4g
         CXlm8tkSNtZ1ELei7u8zfaSDGMo7vCK06GxAq26n0Z8Kq1Bo+VkM/kGDykLOAvRTIXru
         ohE+69yT+aa4Lyu8DmXLygtwuPFsFj5EL+x8Vj3p/totvaaQbKWZqp0t4UWk3yDTlmMr
         myqeFjfSzGTBymuJVpNZAX+DKbsD45U29jE9g9NztMiHuHdU/lVt3U+sVi8IfFR1RSPi
         E9r2kTH1F6qfCkT9hA213FR4jGJkbMbQW99aVOS7T6B/Ss/hL/CSngJL1wuFYHlGeVTC
         z1Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vLde5HLCB+0x6/s0KjRE6JJZtWxr6QbR4TC3E6BUkPY=;
        b=yo90Hb+c9AVOukdvjnkbZU4fptVH6LrOBLozEwmFQs7Ew710iZcz4pLzSND0CJu8Uf
         5A5JFbhYwnB15KeMfnLwpL+XeRzEoEi44YmTg2J/xmlo/qz1NAITOG0tZ7d87eqy2oGb
         lZ5kDLpDiW4VVwNRxT0dUVHAenI4BMYLbQCfg2nJtjDMFeN9JKzEVNPAO8dCyjMeZG8Z
         COQ8w3QyrlVRFZv6tvuKW8Xg9cb6mNRRXm3sBfAdM5lDtxYnXQD4aDw+t9UGvz0L/AV9
         Ck1H7hc3fdMtfEZnXq+r5doR8Jeaux1OvQGwZuuLnSBvtpe7aT07DFYndzVri17u4YKB
         nSSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=lerPhT70;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vLde5HLCB+0x6/s0KjRE6JJZtWxr6QbR4TC3E6BUkPY=;
        b=ayG9ZMhBK3U0sfExGG5kyPbw95yKkAsab1ivRv32kpoAteM7jUHLA+A4GDpntVwq8X
         5hQHo9XAV97P2lAhsBmICL6prW4M7HWJg2cojEZzQMRjO8LN9/zdhqdcz51GCjlXGu3B
         dg7oJK7uM186DhTb1mbf/5Lh4Alq2RXJZoeFQg0DMsaMcp4ULStJY48HtjRlZ2TSTJfQ
         EAT/ySKvrgnGLRw1/YshQt4/UgVMtdVRIQf7SfyoTUPYjWWxtGm47nR4DQZXCPzKuDJh
         zBSwbmq2p7sqEXGFt02Ndv0H5zUIRvwhIPxGeK8mRs4+cbcqYP5X+GsY+IPcapAG363m
         RvLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vLde5HLCB+0x6/s0KjRE6JJZtWxr6QbR4TC3E6BUkPY=;
        b=dM/SVIBW68e7clQj+gqPJFLH9ENNBCRBkoxtEox/eWufjZXkDmuhIhes3bTKxtmWjI
         I8GxPVXwHZehSZ/f63bEKvYa1Ph8RKyXybTzpZyHLvUUHz7n1dm+2WtChrvar15uGIHM
         wuP96lrtLcWK51mFzTY70qMU5lWNI7/lMENxaqWzMdzvLFqt9dioGjEEM9emGSqbseq3
         AQ/ljJCRf5t6V/I66LjDVpX/FFwnyNCeW2GBqqSiuPIg6q0ZF+Lh9ZIZhK82WEdReRzb
         v9KKO2PKsPWfKbchCuuO4GGWf3yo8zdJR4nEHvATbTUqCvz/vteIXtd2S8ca4iKYVc1I
         AkRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3sfah06gBVpeJgx+YbaOpG9De5etkNTozXsak70NF72MLhJX58
	Hi4NMyF1SJctIPbZvmTzFLk=
X-Google-Smtp-Source: ADFU+vtZ1vXCVCrLehaJfXBl0JusFQskuV3DjkUodJrbBE/8kJA8SK4cbi9R+v20Y73gqvkCBZADhg==
X-Received: by 2002:a17:902:b785:: with SMTP id e5mr8008778pls.175.1585012351487;
        Mon, 23 Mar 2020 18:12:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:58a:: with SMTP id 132ls8390453pgf.5.gmail; Mon, 23 Mar
 2020 18:12:31 -0700 (PDT)
X-Received: by 2002:aa7:97a7:: with SMTP id d7mr26970624pfq.194.1585012350960;
        Mon, 23 Mar 2020 18:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585012350; cv=none;
        d=google.com; s=arc-20160816;
        b=DGcM1cLqXcBjwpBypQDgdEO0I+0Ud6LDIRIrM0JOYRLJi1oWFdZcUmNyV3DUWYHMav
         cyN63hdfy+mYV/nKWRPfey9Nw3vcZIbuplm/pwjHM/kiVbsTeEBb2IISjgxIom5pJYIg
         nq+/rm30Immi/oPaH42BeKjLEyMbqjkFj0eo+lax9NftSJ9CCrUrM3ZdWRFLmY/NqLMI
         UVHjWNyAYHA0Cew2ijSbjSZLjBK7JoT2LRehbo/ttiSVW+uOGXu0HGbuDHUkBhxUSK4f
         wc0J8V3Vf4615LcILMEnZYdHkcbZsmIVyGBGEtgPw9cuvYbH+za+KpNuFux/A+WMym3v
         xMUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PZYj1qXP9cUJY9iynaNb4XscpCafoCGGtBKmUDfUS/4=;
        b=ui18v6IpAUaSQ/VdqPMrc1amkRNA097FVEsHHmqrKH9VAfHNWn/J/cfFf2tNsi2OMI
         jzWKrWb3JUeKjwdJ+N0SR+EP1pjqutmxnkXvRqJSbDI5r70iPvnC5+Sj9b/uWQ9yw6hh
         O/AjDBHqOrmH32X7m2evppJTGM6T7oYc2/7b2AluItVHtx2PZCM1X4ojWiwSIfb2b0i6
         bTAiNVD5MBDNQIUWG5sdV7TkXhTo/rw+kwGYSFe1K27TheYuz0Ctbjvtb02ewVHGkvfM
         EqvRh/fIvjS/VxeXpcNS3Y79Y/XGUHyuQozbLUUgEUVvZmum4kfi+1o45XweSuioNnYN
         rbQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=lerPhT70;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id 138si285479pfa.6.2020.03.23.18.12.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 18:12:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::19c2]
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGY7I-0001a8-UC; Tue, 24 Mar 2020 01:12:28 +0000
Subject: Re: [PATCH] objtool: Documentation: document UACCESS warnings
To: Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
 peterz@infradead.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Wolfram Sang <wsa@the-dreams.de>,
 Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>,
 Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
 <20200324001321.39562-1-ndesaulniers@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f55972ee-8e4e-844f-1678-cde1cdcc1fa9@infradead.org>
Date: Mon, 23 Mar 2020 18:12:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200324001321.39562-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=lerPhT70;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 3/23/20 5:13 PM, Nick Desaulniers wrote:
> Compiling with Clang and CONFIG_KASAN=y was exposing a few warnings:
>   call to memset() with UACCESS enabled
> 
> Document how to fix these for future travelers.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/876
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  .../Documentation/stack-validation.txt        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/tools/objtool/Documentation/stack-validation.txt b/tools/objtool/Documentation/stack-validation.txt
> index de094670050b..156fee13ba02 100644
> --- a/tools/objtool/Documentation/stack-validation.txt
> +++ b/tools/objtool/Documentation/stack-validation.txt
> @@ -289,6 +289,26 @@ they mean, and suggestions for how to fix them.
>        might be corrupt due to a gcc bug.  For more details, see:
>        https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70646
>  
> +9. file.o: warning: objtool: funcA() call to funcB() with UACCESS enabled
> +
> +   This means that an unexpected call to a non-whitelisted function exists
> +   outside of arch-specific guards.
> +   X86: SMAP (stac/clac): __uaccess_begin()/__uaccess_end()
> +   ARM: PAN: uaccess_enable()/uaccess_enable()
> +
> +   These functions should called to denote a minimal critical section around

                      should be called

> +   access to __user variables. See also: https://lwn.net/Articles/517475/
> +
> +   The intention of the warning is to prevent calls to funcB() from eventually
> +   calling schedule(), potentially leaking the AC flags state, and not
> +   restoring them correctly.
> +
> +   To fix, either:
> +   1) add the correct guards before and after calls to low level functions like
> +      __get_user_size()/__put_user_size().
> +   2) add funcB to uaccess_safe_builtin whitelist in tools/objtool/check.c, if
> +      funcB obviously does not call schedule().
> +
>  
>  If the error doesn't seem to make sense, it could be a bug in objtool.
>  Feel free to ask the objtool maintainer for help.
> 


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f55972ee-8e4e-844f-1678-cde1cdcc1fa9%40infradead.org.
