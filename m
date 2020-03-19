Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJVEZPZQKGQEXPLYSDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id EE13918AA84
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 03:00:07 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id x192sf264150vke.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 19:00:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584583207; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLDf9dznyiAuLi+TIOIz8YvQeAard/4lvDfuQzLPco4ryOhCAvk5/+R+XYh+PO32l2
         WD8Dw8fe0MNsGqd46SP/BK4N/mCfb81WRqcyGv0dG/8Te5+wxQMvQP0PHfMKaic3RLX2
         /P67SADkFNtLBFphsHMaNzS84mjK9pWaAhWQfb1PtR0nscCTmMztiPF8jOtS6D/7fvMG
         inaeuSNjwc/oSexKYa4AcDkaEB2hvyKfnqH40npMq1YXR8PeHt5xMRX5GkrcApnJZAcg
         lnPqPYf3u9ZaFDR5S7XcqZSYsocHV2lzm+UbXDD99g2JA1bxiygI4d44RRYkjIS6CLHI
         Lg+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=mOahNUNrS7/ml82mGpJ9UjlZZ9hnvRcA0OU/4DEWK3A=;
        b=ZYwDpnqzWUc38HF9d2yw2PMTKgu9XKwkY9K0paDvN944ngZtyKbA3ptd4b8LkXyS78
         0l2qaWGnmHmMHCNEZ3Ct9f6dwuWonw/QrIMYR9ndKOjyAaBwlHCZjEa/QIpZKLO7RdlG
         WTGbZlSFt5BXMmzfhkwjVko7hSQ36Nb5SjEZ/cqH3Vyu9RJlMjXgBQNRF7Ch9zZ65lI2
         a3NlZU38DnBuBfYzhzcloTWagCQeNzLkOM0/bOD9AcCfq5nPDGh9oBC4oIkjASQurYER
         FwAk9AYAU3BmDe7WacboEvsSevSS6rTjmQfLslNP/+NKXTIcGx+nOaM5MT5MgCUbpG9j
         kO/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AWbpJB7y;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mOahNUNrS7/ml82mGpJ9UjlZZ9hnvRcA0OU/4DEWK3A=;
        b=qcpVtplaWLcyDwr3nmyPdx0CgD5IC64xZ7DopKA9OOpfpAU03kDZC6XvJ0POV4/jxv
         uYfS4pei2MgRTovzWh8J5fVE8gwaihS1QaITnH79m/o0G5AsAq8P6RhRSgVUgG8VuIa1
         rryPAv4P1f0uZ5LFcEO9H++sUURF4fy6fEPY35vH2jBFA7BGq/4mYpEwDLhKK8er22Pm
         LoXlml5uaLcW3so/T8P1/GNcbYROpAehk9Tj/xya2ooR8GoBI7ZIo+NgzicpsVRf44QB
         sN/g8ve8hM1wvqLc9lLNHCRFCJM+LGFy0ZDEhLTWGK3l+6WV51qYLXhUWjLObrUOjRRP
         17wQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mOahNUNrS7/ml82mGpJ9UjlZZ9hnvRcA0OU/4DEWK3A=;
        b=ZwsUsWW7j0Q7UfcAY0ny5czT7+KuLPFyj2DBJEltaXXY1PBckinO05zNaxncF7csUP
         jIIPFZ0i/9pO/5uoy7Ch2NRu9ey7Ex5dlKgP/c47lsNR/cckppMpS5ZwPbE4CmX813Sy
         P7JSQ4wjXGBxY0Z+5/gUZJfF06W2EFjrLOqmCBTWTw2ZDUHOfKCDIBX7xTxsNWCLur39
         LrhH12GIuoz2tbI7GmNtXP9/sNGI5AKp1bKzW0wjT03beCUWbLIydSccA2r2NT0To0Pc
         UBclKqYIPpuOD4US75TiPQw+7UDdGyvL6sObGn4WSCi3bJT72kbPZkW15/31Mv3omnW7
         WNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mOahNUNrS7/ml82mGpJ9UjlZZ9hnvRcA0OU/4DEWK3A=;
        b=S/1oyFbGpYHIU/rgr55l+jBBIMYSFihaD5NTnqz3y204DD5HmHIB6nGZRXv7JYuGdO
         A70c7kOJ12PxBgUOjcDN6NZWaWj4iCHhugXHnGKBFM+Zd2a8u4z2wDMSgli8ShVEe6nm
         U/PM7ZK8hvY8F0oqSA4fkjT5JRw3V3WFKYAI+itUYGFIWMr7lzZUFvnGAoXEEwYX9XM8
         vhM+/YtENE8Gut1rv0nRS9nkAfB1g+bXKG62SHyjZZkTBxinsN91zyzb9PprGy0ahKfO
         1YeFLqYMGBYfd3v8acBvBwBnULaxw0Ew5D77+pjZsH3IqkKgw0l36TuVVt4eopWZAhwa
         TVpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3mveilfe/ggUPe0ZbvO4fZX0svk4K0cr0sKyRBNBOmWtseOfAS
	sfIdGgzHkkJnC4D3hjQ1L0o=
X-Google-Smtp-Source: ADFU+vs1PQIuc1G2k3Oomw+TESy5hq1wffzkEJlNzzyoxIBOQrLEjRC7E+Aqc4Q3h6LzHEbj7FzEuw==
X-Received: by 2002:a67:4c5:: with SMTP id 188mr401829vse.43.1584583206953;
        Wed, 18 Mar 2020 19:00:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ce9a:: with SMTP id c26ls128417vse.7.gmail; Wed, 18 Mar
 2020 19:00:06 -0700 (PDT)
X-Received: by 2002:a05:6102:386:: with SMTP id m6mr419709vsq.49.1584583206545;
        Wed, 18 Mar 2020 19:00:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584583206; cv=none;
        d=google.com; s=arc-20160816;
        b=kDzjs8889fknx8M/or9UiT+1q3g/Vy87aIm4BsmXyeoPVnIIT18snIJfU8Q+FJ1VsL
         e3OmXn71XPosjVghi04W+5UEuIgLGew9LD0MJOdJQhjs01KldxKXre6dL3Gb3w3Tk3yU
         OVSfeqsYy3dwjP9qK30zVMEKwCJq6gJHyGuqpt50q5AgsC1FEUlmONdb6nB89NtON0iY
         +0yXexX2XrycQEkJYKmir+ttW5hFOSlOR72M+AIagORaJh+ITbvAhNVJscLbkJscYtYE
         rje+LNIHiUBHKhkyifjdnbuW8Z5+h5JxHJwRf5QbYutnTE/58D5BKGJ+8s1IZWuE/Ug9
         dH7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=imF7ST2MLfxUreXaGENTzkNj4f/nZW7foh0Y9cYT5II=;
        b=q7n+kcRPlGl8JrpLZQReF+P8mGzl3pY55sPZ1wmpjI6KhpvRlK3tMgutH2A4tofysP
         RnprVHRFJgs8/4nRIvcp+vG3nwhfbaYSBIMvPbwT+HKsXzET1fehnwZ2Z0YnX0OIZpnK
         OLFIjr/yrHgbAaXSJA2B1TSI728+/Gp/BgPgsIZEGBh47Hz/n08oadvfO/sE8TbKXE8O
         g76OUlHuqZpYlDw2vs4xPkW47sZXIG/ew2AG7Ys0DsuIFlD0QGTn5Qxyz/tWI5MtMM73
         kb3K+o9CzLuF4DAyFKIpNcTV882WbdV5ifL3QOInzB9jxVylfVnjktbQtpirN0VtcetD
         BpXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AWbpJB7y;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id i13si71894vkk.5.2020.03.18.19.00.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 19:00:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id e9so757166otr.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 19:00:06 -0700 (PDT)
X-Received: by 2002:a9d:65ca:: with SMTP id z10mr509809oth.86.1584583205893;
        Wed, 18 Mar 2020 19:00:05 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q22sm331243oic.22.2020.03.18.19.00.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 19:00:05 -0700 (PDT)
Date: Wed, 18 Mar 2020 19:00:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] tracing: Use address-of operator on section symbols
Message-ID: <20200319020004.GB8292@ubuntu-m2-xlarge-x86>
References: <20200220051011.26113-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220051011.26113-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AWbpJB7y;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 19, 2020 at 10:10:12PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../kernel/trace/trace.c:9335:33: warning: array comparison always
> evaluates to true [-Wtautological-compare]
>         if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
>                                        ^
> 1 warning generated.
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses. Using the address of operator silences the warning and
> does not change the runtime result of the check (tested with some print
> statements compiled in with clang + ld.lld and gcc + ld.bfd in QEMU).
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/893
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-4-natechancellor@gmail.com/
> 
> * No longer a series because there is no prerequisite patch.
> * Use address-of operator instead of casting to unsigned long.
> 
> NOTE: The code generation does seem to change, unlike every other call
> site that I did this change to but the result of the check remains the
> same as noted in the commit message and I cannot really understand what
> has changed in the assembly. Please let me know if there is something
> catastrophically wrong.
> 
>  kernel/trace/trace.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> index c797a15a1fc7..78727dd9a6f5 100644
> --- a/kernel/trace/trace.c
> +++ b/kernel/trace/trace.c
> @@ -9332,7 +9332,7 @@ __init static int tracer_alloc_buffers(void)
>  		goto out_free_buffer_mask;
>  
>  	/* Only allocate trace_printk buffers if a trace_printk exists */
> -	if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
> +	if (&__stop___trace_bprintk_fmt != &__start___trace_bprintk_fmt)
>  		/* Must be called before global_trace.buffer is allocated */
>  		trace_printk_init_buffers();
>  
> -- 
> 2.25.1
> 

Gentle ping for review/acceptance.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319020004.GB8292%40ubuntu-m2-xlarge-x86.
