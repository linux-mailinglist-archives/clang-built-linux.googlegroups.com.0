Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAFE4GBQMGQEBW6HC5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BE8360C23
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 16:47:30 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id l25-20020a6357190000b02901f6df0d646esf1499101pgb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 07:47:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618498049; cv=pass;
        d=google.com; s=arc-20160816;
        b=jxpCQJBdPG1lVBHNnQqphUAvIYzHLwkMGgacJGe8C/f3FRHLQDHVqQi3GRkfHRqMJo
         caZvZkxErnjr3GcvzzqQoDLkH6fkjCHFBXoOJcoMerNuusrG99IwjmqTPQRm2Pn+p7nD
         Hot9yFykV2z1HrQ++jl15p9VEECPoTzBj/mqSffvDEDCk7H2cU8JyRCL2SnKjhe0Sboz
         XebhsE0UDjCIIbqu4tmPzf7//8p1sjNFUWpjPcONBTf2jBilgbr77+SIaZYnE8aOZjq3
         Jj+1xs59D4Vi9IU37RJLKcvEePoCZD/AgVuWNm9gKdvJPXCKnicAzBgkCh/ddUH8OdXn
         KSzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DjGROPfDFVizPAJE78UzcADHVRu4nkEe7qN13aIJX6o=;
        b=lZvFyFxgv62T3Ve5cnP+11pRZRyd7CA0mjlIxxDNxazWhW67Ng1XUQ/VERuc4gzpuI
         lxW4xnTFWvhFK+Rd1FalYMNSfisj1Ntcu2H+rUluZ95VHj6hzVVvvR0AiQizfcgEtOu2
         3V48RQeIqqtjI1n86LUcqX81i/C6mSZW0Di+89yOVDA1wxYTpGc5DyQjoYfjGbOcDHrY
         IExwysnzdN2M49qHxkxYqMPWcm2SDTd1LaW8x1VxU6Q5iAyQoD/WjoSlbG3Sb9WQKn02
         HF9xQ3XCyU886i20Ly4CQZQRCDOkYPNa4fM1V79yHQs8rmgCDE4SGyFNCWWJQTLw8x9k
         r/iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ur71+nf4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DjGROPfDFVizPAJE78UzcADHVRu4nkEe7qN13aIJX6o=;
        b=gqDA/pK1ooYYz71l5Bc1IMGdviUEKLMJIE+BmBNpLSQz3CbeFWmZlOIL4Ei5AK7rjz
         vtlJYkTrmn0uslvwwQiVya8nMT5V5IdAJO3/895tmNrLB2bWu9wTzm6xVxEjhzlF00lC
         9AyZ3flVH71nHwB/lHafY1LF2B1sxoolhQRYvdHJjUaLSW/zJpILqW36dI+v72Z2/eoB
         MHOkWbGSJf4L4qgfHKpSAF7xYvRflClsO9gA+CMzcIYr+jcMOnln3UtjnPxBzVArbjFl
         DvH+myNzJyI5Z99UETFrxL9cH8zoM9TP04elHUoCOzgt8CjavrZptWEJILOUbhGfhhT9
         nL6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DjGROPfDFVizPAJE78UzcADHVRu4nkEe7qN13aIJX6o=;
        b=Hc/83CAr4NFB5/5D2+wjGI8cfkhyGSYWmQkK6cYG+IMoF1X/OZe9e7RlJE2sWy8y7l
         19Zm+4VgfUvErnrN8NhELQ/aodi0tceDbOX/trPQfz0akJA6ktca6RpSk2jxeo4uu2PI
         lbw2zLlWVKNqBAL0mXfUTlYAIXTccfoQRg1yD7a7sralYawXl7N9shClqmgTajCBpHT5
         tH/ZrTc+oWUBXoP1nnRXOejlJ0159n+Po1Uhypn7b1PE+wYgHUJ2ubYTQA87t8ILa056
         5R6mIRQo7lJm4ndwcP+rPHiEgF1/SoSGLJ4MnXXGpLOoDKSZDp02ErtlixH70Q3J/cGf
         eUbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532w+bDI1RMWcXOcCjzY4RjCvK2f0HpYFdSGR0b/LkhnaggEUWxr
	p3370qGIoxhfZCIuqVpZD2k=
X-Google-Smtp-Source: ABdhPJyxN0zTEjb1jHPh20RvDPjCrXycCFKmajYiVvP0/Vk0tlt32WyIZYceuwbsoorlI7H9NVe4+w==
X-Received: by 2002:a63:da0a:: with SMTP id c10mr3789725pgh.255.1618498048985;
        Thu, 15 Apr 2021 07:47:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fd4a:: with SMTP id m10ls898716pgj.7.gmail; Thu, 15 Apr
 2021 07:47:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:1354:b029:241:91b9:75b3 with SMTP id k20-20020a056a001354b029024191b975b3mr3375681pfu.5.1618498048418;
        Thu, 15 Apr 2021 07:47:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618498048; cv=none;
        d=google.com; s=arc-20160816;
        b=0WRMURn4U/9Bytx9Ed0FiF7Iwwe6WXQKnqXi/DXzUKEf9y4nfi1WwFcN28d8lFA7Ht
         MNUzNHWTezSQ6R+OBsTP2f+i7ujuFc45Q3fSaEo8R/eiCzOJciZ/53JEsKM/EbZj56vu
         8AbTJwZwk03GNXAICGvwQdsy5/JBLnGfJR3G6UlY95UGzeKUUtDtpg4FWr6C9H4D2Wi1
         W6q8HAyJwUeWzfQkRxK7rQtMFXeioJhaBNiB1+kduUxRa94s7JA9jNZMSDNwaRMpDaY8
         qOahLNVI39ZtcPqQW62mQYWmrV5hdITrFKJy2hMr18i9ttKyjutq5gh8xdWSDAtFj83e
         d+tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Yt0E+fDRtpKXGe+BjIE0cuh61mwnWfiS4xsqZGd4ySk=;
        b=nlisl6qD5hxwmO3xuv0YISUP3aRkoqBpRzEnFEiBUs1ka7l8TluYm4qH1nB1Qrb/wp
         6JQZp+SjVUhQECvll/XaswGmeat5Z3WW4D4sRwG8zneUv+R8BCANJQCtX1G+Vb24CG8E
         1QjiXkeKpTFTdwPuWf6DLSbloYcDhKus8WveW/eh6/VNg4+YJ6GayV3JBdelxUbKXKJ0
         gAQ41moLbrQc0IrwqE4Tnqjyret1k9IbAmm2xK60mEBbfxnXqdn+RYXdxfdR3i7LD4Pl
         pun4aArvRp119oimVuuXPubExBw3Ml7WzAYUIgRHqLfm59tqhTuNqTdz0L0tba23GJNd
         /6aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ur71+nf4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s16si160593pfu.4.2021.04.15.07.47.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 07:47:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A0B8611CD;
	Thu, 15 Apr 2021 14:47:25 +0000 (UTC)
Date: Thu, 15 Apr 2021 07:47:22 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] x86/events/amd/iommu: Fix sysfs type mismatch
Message-ID: <YHhR+l5Kmdy6OSSL@archlinux-ax161>
References: <20210415001112.3024673-1-nathan@kernel.org>
 <20210415075335.GA1954964@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210415075335.GA1954964@infradead.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ur71+nf4;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 15, 2021 at 08:53:35AM +0100, Christoph Hellwig wrote:
> On Wed, Apr 14, 2021 at 05:11:11PM -0700, Nathan Chancellor wrote:
> > dev_attr_show() calls _iommu_event_show() via an indirect call but
> > _iommu_event_show()'s type does not currently match the type of the
> > show() member in 'struct device_attribute', resulting in a Control Flow
> > Integrity violation.
> 
> While the fix looks fine I think we need to solve this kind of problem
> by better type checking.  The fact that we can use the wong type here
> without a compiler warning is the real issue.

I agree. Unfortunately, it seems that is going to be a much longer tail
project because of how pervasive this is (using container_of() +
attributes to get callbacks).

https://lore.kernel.org/r/202006112217.2E6CE093@keescook/
https://lore.kernel.org/r/202104021823.64FA6119@keescook/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHhR%2Bl5Kmdy6OSSL%40archlinux-ax161.
