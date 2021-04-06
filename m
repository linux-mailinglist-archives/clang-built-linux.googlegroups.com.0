Return-Path: <clang-built-linux+bncBDV37XP3XYDRBGMLWGBQMGQEPGFF2AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 823073551FF
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 13:27:22 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id 11sf10016707qtz.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 04:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617708441; cv=pass;
        d=google.com; s=arc-20160816;
        b=HiDjh47BgtruOPKORD142uiXkYnyuWUaG0CkFBQ3casQnqZMzFUEw1S1qrOIVSXCB1
         1dUfiQCd9Q92uD5nNuSwrCZ7Mu0YJXQREC3pHE88uYNZdFCSAy0qKC0V4yAmWldtTP+L
         j3mCwZZednL96skzm6CIfJxyIFk+CDQQI7HbxNtuo+3wVkvPlAYr0phYXHBOIDlFuCbK
         qYmqSXwKOLnyfcygNvqzZnNhWCM5VayKzF18Ejh6KTn9MBXjPRg1+W0i8j1xB0X6+zn2
         JdzSw6z+MKUCKNLb5Tziebx67c1nDd7zeWzJkkyCkQBOo+zWewHR4IVewJNzmlocO6bJ
         1TUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZHL33A6JWM1+x7CJhjAJHEgkgKBh6vM77AvJYc+5B8Y=;
        b=s0B3zk2+jTgaRRJpWw59xeI+epijmVcUIc/R0YNP8joO1kTE5jB/05iyczP32I1AB0
         ni9zG2TlCQy8oryWgK1w2nnqa3LuFmVRXNggGn2S8E6xTWusMlfh5O2iKG75nAcAywhG
         GNtvj2itfWm3m8u/1UZxdT+oaY1F7QCkyvds5G2tnfLkQUFwtMskwOY/yUDZkIRn7fNn
         CbmpZE8mpvUXQaOCSSoSxxxuN0Mr685xcBdHueIqHvq84W0EcVqH5nVoYiDRnOq0qhbY
         IcofsDkRGOY3PwUrfO37nWbYZScVX6P01fUjQe7HL0xDDjUXY6QKulOJojFYW67pM2ga
         WBVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZHL33A6JWM1+x7CJhjAJHEgkgKBh6vM77AvJYc+5B8Y=;
        b=FeUcjCauTVLP0rpoUhKSSGcZVUqpQbsYaHeMxbByRfp+jN79hzFxUcIIN8BH99/VKB
         GkGYY1/rAOr916iqBn8A2G98TM+RmRfF3ncm/j9/lgKVTP/477Y394EDHowG6EM1JjpJ
         QZK/+weKiy8nIlATtJapQRAhdrjFioA9d3PifMOUsGXKeB+UmbNX3GOsjSJi656Z6Ysd
         bGGR/gm+vEzrRWg0+2VrwUIt9mTFv10e1Kv72H7pjbwLAjB5Pv175RjF872igSyXO/Dd
         jASCbhgtz683CTV0qTBojaYF6DVnBEN0viunH8ZdyMgxA7XII0vtzfnrlayC0X48QIq3
         ZR/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZHL33A6JWM1+x7CJhjAJHEgkgKBh6vM77AvJYc+5B8Y=;
        b=m4DNveUWrIcXWdVw5K0Gcl4y+CIZikyLvO/zpVtsfg02/rndVwAu+uLLS5QmOaNJfw
         Bw875mJKbNBqWV7pN5RqtRVA7us6RVJLZ2awaXVmo0RB82iIPH/DcJpoDnBuQ6ZWcvaM
         tOXdCXTWfeJILiwbDfowOv30JoenXVYS7R83chfw+rQjSq00LmQyhf94wTwOSA3w4HzP
         I5qZdTu/Yvtak8HcMReLgHcRH/qFNV8WgKqH6sxqEb608XqwycJvYLPHcxLmcYrNdPt4
         1Pw/Y13NM35WcZrjK506eAM+gEWtn2uOwjGVdQjOPcDfoBs+d7MHUJt22bfWm9Czkw1+
         MquQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320o5g/ZKM5dN6irbnf9wCANAbAt3qvat0VoCzZszVWnqh87Tbw
	l/Gfd+ZDGUBnSrlbeKwRey0=
X-Google-Smtp-Source: ABdhPJwDlvePis5sdMwsYWUhfFMp4VHP6R8e5KPtVxc6dNrzTNA/bqiuEfBEK+bhkgIbOPoV780UZQ==
X-Received: by 2002:a37:e4e:: with SMTP id 75mr28727082qko.54.1617708441386;
        Tue, 06 Apr 2021 04:27:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4455:: with SMTP id w21ls10409513qkp.7.gmail; Tue,
 06 Apr 2021 04:27:21 -0700 (PDT)
X-Received: by 2002:a05:620a:13ac:: with SMTP id m12mr29216077qki.458.1617708440931;
        Tue, 06 Apr 2021 04:27:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617708440; cv=none;
        d=google.com; s=arc-20160816;
        b=e71IbzOlL2E4MuXs12kl+3AQ7BrUnKfA4/jlVrgFtMc92rIxtjzy22SrGOMw2m/Ezn
         k2cf/qTildf/eF3ZtcIHeO6AkFnXdUXSyu918W++HPVY4CB2H3XU/cUG76bEWJyVVSLw
         LMydCMCLwjuTPFeWeVg0MsWpp5MzSEVFZO7IqkbFFlepKtITmVhOxht8rsAtCybJWN7g
         EqOgIb7bkL2gB030diD88BqPphSfT2SKBSW6Gq0E8mwRr4eCVd+a5aXnAHDvxPQXXhxk
         i9tmbsbKCliEdyRrYMasrZBzdKEbwqaJWpQjZ245207cWFIK7sZZ+AsCB9Lx4U+YXvu4
         fuoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=LpsBgOP2xwa1Vm6ImL2BDmjPmOYwK+znG/Ik52bgLi0=;
        b=PhfpLIXOZAAUWxcR2t/7GzHRGmoKyb8bUDlgTsZ83WzQV+E459nwLp8YxVlKbYtJyY
         RFIMjZtPaBQabiUIGpnPw8MawruSyDC4afywQqjlIXmNqhittDkY4fGA4lcQBbHfWatZ
         TPBU8YlBvwJzpd1yQzR1QI/ATC/Oe1grZYgqizjwIPPpcnm1Cy7Usy5l6bwK859Bj+mq
         jc9+b0eI3fLdJCNJw3KGZAgWhp7UqGypG+nQTbGdAh4Q3YWDCT1ceHXtu77E8KEMV32h
         S8mbNvtqfOxGxPKIKA/QI67LwpRVCGHh6Z9VrsRho2qRiz93UnhkDC+Efd7NjzsSdazf
         1BtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d3si514455qki.3.2021.04.06.04.27.20
        for <clang-built-linux@googlegroups.com>;
        Tue, 06 Apr 2021 04:27:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 43D8E31B;
	Tue,  6 Apr 2021 04:27:20 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C66723F73D;
	Tue,  6 Apr 2021 04:27:15 -0700 (PDT)
Date: Tue, 6 Apr 2021 12:27:06 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 03/18] mm: add generic function_nocfi macro
Message-ID: <20210406112656.GA96480@C02TD0UTHF1T.local>
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-4-samitolvanen@google.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Apr 01, 2021 at 04:32:01PM -0700, Sami Tolvanen wrote:
> With CONFIG_CFI_CLANG, the compiler replaces function addresses
> in instrumented C code with jump table addresses. This means that
> __pa_symbol(function) returns the physical address of the jump table
> entry instead of the actual function, which may not work as the jump
> table code will immediately jump to a virtual address that may not be
> mapped.
> 
> To avoid this address space confusion, this change adds a generic
> definition for function_nocfi(), which architectures that support CFI
> can override. The typical implementation of would use inline assembly
> to take the function address, which avoids compiler instrumentation.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  include/linux/mm.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 8ba434287387..22cce9c7dd05 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -124,6 +124,16 @@ extern int mmap_rnd_compat_bits __read_mostly;
>  #define lm_alias(x)	__va(__pa_symbol(x))
>  #endif
>  
> +/*
> + * With CONFIG_CFI_CLANG, the compiler replaces function addresses in
> + * instrumented C code with jump table addresses. Architectures that
> + * support CFI can define this macro to return the actual function address
> + * when needed.
> + */
> +#ifndef function_nocfi
> +#define function_nocfi(x) (x)
> +#endif
> +
>  /*
>   * To prevent common memory management code establishing
>   * a zero page mapping on a read fault.
> -- 
> 2.31.0.208.g409f899ff0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210406112656.GA96480%40C02TD0UTHF1T.local.
