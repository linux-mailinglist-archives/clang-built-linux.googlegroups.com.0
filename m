Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGWZ53WQKGQEIS6AUAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF84EBC89
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:55:07 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id w205sf6328247ywc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:55:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580507; cv=pass;
        d=google.com; s=arc-20160816;
        b=ynC9bjG5k7llMb2cnoJ2BxeEf0iMXlcRKgNyt7IQK8GQvE3fRPN5XkTZ8BuTdxjZU0
         18SVw/FNHZN1psW8KnVVeLzF3J8/WCvO3klOlLtqQ/Sh+SwaSBdMguo/9pp2TJ3ZmpO5
         B6YmD45P/qQoFNT1IaQpRcoaK9CU05ItEW02WSV26RjPr8tT7XL9z36frNMMsZgT6XZb
         S9U/MKf/SCTzb7M5wzcQuea1mv2BkC4SW7ffGDwTm1eeV7m/waMW7f3O5NlkYeD3vuyR
         +3L7EyTjqCkJx0Pm0FKlA+gu1T3UyOiJYatCBZ/EBH7M9QOtd2+LSPeqfoKgDs/OkDdC
         nWZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aIbnHrFiJz1mV1wQ9C7WRsiyF50SGFCUHoTcKgO9Mjk=;
        b=omQS4GOYHhwuczX8GRsRhrO0U5e2NNYAca+OgGFYbTvdFtiuXryDUHX7npkaHsnd4I
         q4JzUFxDZQa4U+9MsgexJQ7HxC9g7QnoVLxfZQm3JxKJMN366LQRM4neRXcLAyLfNgat
         OewN4sOH6kTyNj30eKRYBXyIcLXMRpWD7M5E8IjD7tDWYRjjEPGEvd4V7UEgfeOzotb4
         WY7iJTJN8JQunNkiMmTWoWsAJ6b+hETtSNTONtaFptObAmdFWWMbCnJImES9D0Q73hio
         Mm18BmpQV70PLT+yvlGr6e/PNWS/4FIlVCyCRePgFFLaB6sVkoxFMHDQqvLkqh3iGoYZ
         d5yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gdpHWq36;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aIbnHrFiJz1mV1wQ9C7WRsiyF50SGFCUHoTcKgO9Mjk=;
        b=UgeIISOOwktV0Gg/xe+ar2M+b3Gbxmv7KZ9eA3tswnAhnDH7Oqg59q01Cai7qtzZyh
         G0GXvSrl+OsRgnssRA6GCvXAP4dCJK4nDdrVrn9P4Xd0di0bBs4UKCpRqe3VlcY2b/6O
         66Xkn3ASztjHHG/aHt5wGuPno9z7GOHOLFz13mayw+KYkxwwOuuM9Gdy/8huGL0oMFHv
         NYPM5il1q7nv6wg/z75vKkNpv8jlJvBhmpRqw3ef8nIdA2s0mgZmcUD0EObd6HvglNfu
         2+2Ob3iLgXOnc04s7V3vLecE2solnHGrOzgiQQcDQmg4SYgHFiFM2hnfiBFyLqzAYqNq
         gtRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aIbnHrFiJz1mV1wQ9C7WRsiyF50SGFCUHoTcKgO9Mjk=;
        b=Dobr1pDBW0nZg+9i/gWGs6YcFuD1DdBH7eVsxHoZMkpKlXdYTFSV5gVP6VcE/C+sNL
         NYiuyo7ufoqTjTvBfEJfC4fXCr8g3s4ebE6DTCYvCj9yeNSSm4NbozVO5X5MZrHx3V8l
         ebZarP6r1NDTWcAwdHz1XUgbZ7tcnKO3vYNSlARWdm0ks48SpQmV+bF43Hmuz+SwZ+4+
         ZsivIpeu5pmiNrQmerCs6e1kdJqQfCl+jqa1TVRUXNlzALOow3RAFWY9wzZzN8dGtCrV
         YyFrjR7HL40A2Zn4jor7+KWnDvBms6emRYFpF4zjzQJjIzwRKmM9bKov79Vx20v8irGx
         6d2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWNmP2uuW0PmJ4Vt8SsBxSnbcr9grbCPTqi/WF6JP6VGzHklNg
	i3bipnxs49lWdxYcKipThrY=
X-Google-Smtp-Source: APXvYqzmO6v624U56Oj/IQ/WEYEMaxQW/MZrHJLk+HOftB1/CD5K1HwHZYI4c2aaa8tH13chI8EnKw==
X-Received: by 2002:a25:b8c:: with SMTP id 134mr7324292ybl.115.1572580506898;
        Thu, 31 Oct 2019 20:55:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6b08:: with SMTP id g8ls835023ybc.15.gmail; Thu, 31 Oct
 2019 20:55:06 -0700 (PDT)
X-Received: by 2002:a25:388e:: with SMTP id f136mr7698389yba.18.1572580506437;
        Thu, 31 Oct 2019 20:55:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580506; cv=none;
        d=google.com; s=arc-20160816;
        b=EYMF2+RdREv86oTjwpXM6jINxljpos9oP3c0thSccvrsJNHgYT/V21kewOUDGrPZLB
         sqKbYrG9kl/Lfvi9bh+EhVMwOmP6+SYoGQfQDrZNYSAEuhI8n9FXM7tRoV+T0W9N2ahB
         +ELvVo/+CCzoCNQbRXC4VSbTkeSwdyN58c6ZbJU2iDXwTNQBv2S32EcMKU/ISDN43vwc
         G6Xo6K++6NpLcN7wHWREHcQSTDCxB4M3FwSYeUL241p0wZ/wmsJi7KyJSXqKDjGZHFFl
         cvsTgD4R45Ebkjt+VTqX03hqpAZekFcoB2zzv1kg7MTWrsnxnVzZB7Acl88BwZuabTal
         FkiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zSoUcnGkSf7yfDdI4UPFWole6s3LI6NqVWKcqfKw3S8=;
        b=WhQcU/utmQv3uIlvhltxJkclLstNr8F4VajQnsWWoC11GNHzBYsJLqwtkYP7HwqzW7
         SM4oWKhEBKSN8kODJz6pokcJMV7YldqgQkr5HDG2+XNIsk2JJ64cxmgLFjZm4kUDSBzw
         apgeFPL38A3g3Oni0UnwZY4EaO00qyu9iYzGGJ1k87cBdHIzSs66AsXxGGUgkFhgo3v8
         qLY3qx4vW5gVIxMmH+u97Ocnm3mj7lV5a8i7N3NhLfRX2pMcXni7ZXzvdnEshLwyBRKY
         h5Tm8n41DQ2hgcZUlDP20gyE3y0FEka+VvDCD7Z860PiF1MxbARIij8qkv4yzBVGUG9O
         CRMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gdpHWq36;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u8si438383ybc.2.2019.10.31.20.55.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id d13so6096571pfq.2
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:55:06 -0700 (PDT)
X-Received: by 2002:a17:90a:bb0b:: with SMTP id u11mr12349099pjr.94.1572580505585;
        Thu, 31 Oct 2019 20:55:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f25sm7693672pfk.10.2019.10.31.20.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:55:04 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:55:03 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/17] scs: add support for stack usage debugging
Message-ID: <201910312054.3064999E@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-8-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gdpHWq36;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Thu, Oct 31, 2019 at 09:46:27AM -0700, samitolvanen@google.com wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.

Did I miss it, or is there no Kconfig section for this? I just realized
I can't find it. I was going to say "this commit log should explain
why/when this option is used", but then figured it might be explained in
the Kconfig ... but I couldn't find it. ;)

-Kees

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7780fc4e29ac..67c43af627d1 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_DEBUG_STACK_USAGE
> +static inline unsigned long scs_used(struct task_struct *tsk)
> +{
> +	unsigned long *p = __scs_base(tsk);
> +	unsigned long *end = scs_magic(tsk);
> +	uintptr_t s = (uintptr_t)p;
> +
> +	while (p < end && *p)
> +		p++;
> +
> +	return (uintptr_t)p - s;
> +}
> +
> +static void scs_check_usage(struct task_struct *tsk)
> +{
> +	static DEFINE_SPINLOCK(lock);
> +	static unsigned long highest;
> +	unsigned long used = scs_used(tsk);
> +
> +	if (used <= highest)
> +		return;
> +
> +	spin_lock(&lock);
> +
> +	if (used > highest) {
> +		pr_info("%s: highest shadow stack usage %lu bytes\n",
> +			__func__, used);
> +		highest = used;
> +	}
> +
> +	spin_unlock(&lock);
> +}
> +#else
> +static inline void scs_check_usage(struct task_struct *tsk)
> +{
> +}
> +#endif
> +
>  bool scs_corrupted(struct task_struct *tsk)
>  {
>  	return *scs_magic(tsk) != SCS_END_MAGIC;
> @@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
>  		return;
>  
>  	WARN_ON(scs_corrupted(tsk));
> +	scs_check_usage(tsk);
>  
>  	scs_account(tsk, -1);
>  	task_set_scs(tsk, NULL);
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312054.3064999E%40keescook.
