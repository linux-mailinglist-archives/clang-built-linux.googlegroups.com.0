Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBSHHTWDAMGQERUNYKKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE413A69F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 17:20:43 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id v1-20020a372f010000b02903aa9be319adsf16316433qkh.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 08:20:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623684042; cv=pass;
        d=google.com; s=arc-20160816;
        b=t7sDUTgoCIVAEXdCew4Gwtk/ar29U2+nTOXmthx3+Ue9xJygHaAAUNTpFQR6SkXzca
         GbpRbtvETuaXaN/iYKOipq+11qH/TArMt+V/+j8ZbB+X15ldmXqG66dG24OYkgu1202t
         NkqhROdGjp0DK7AhauE1rS8i13pC95+mHiKIhudryKwXcNYAk3tOkUFovp+jeDZpS5/s
         Yl6fnxCbkiVtXOLj+jRcgUjzR6wt/8OpjqzkQspxdSy1pze53sMnBwydfmbnqMd/hreI
         o4Sme8X1NaI/9mBbZFzY9SLFht8TPtfunF+mZunZSIqCEOxF60M87r4Bzzz2z/ZtGt5D
         eL9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nFP2PFpQTZ6SFu2Mi9DgLrJPZhZj2pejghzb7OgjEtk=;
        b=uWbCQ3KAMw25npyR/khMV+lxPRVLdP0gPEYNk9Al3WC7B/JQikZ+x6R0hMHTFLnjHI
         537S00a5FrIg9U2nAwzou28ntDHND8kxzE9xSQMmP25ibduyswcijTUI890+Pz6xQZ/O
         AMvb/T37VhokboJUP36qbrPFWDi8tpzZBY5nuNzUqFsFUTh/m221RTrV+vsbQVbFz7X0
         8h++iLeqYRnJ6ubNYIzaGtOCDoYs9+pWel6KOcb3jfZGkVnWWWisX6p9NvJrueedvB5M
         3lV70fzVVuvhFx53+lkBERkdSYMZ351FwhGRGWe9m7OxfaJ4JCpwWiLNSnPwXo+fAaLZ
         TtBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.173 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nFP2PFpQTZ6SFu2Mi9DgLrJPZhZj2pejghzb7OgjEtk=;
        b=Sg5f8xOjKn9qzXAPsuzyY/r7faB0zXlu5+6nBaJAJbOVSF5ztADjXg3XmuUPXqODLT
         2ytUTZy6ZikoxYWBensHePJES2gC7Rbz40FH4Rcy3VeJwBZKlYIRB9jzo8MT51ZBWeeI
         iaogjvVyjGhQ/8hbyxXN7/OdmmHmnBVQEyBYIWypkKTX9tjJsmL3z822nN2XqXkzIw+3
         HeONUiiPwHdstiOS4kxgEgFgMXixTbkk+5UWo2AlNwpiVJlwf1KNsz9cQs5EDDy9uChC
         iqgN3m4DI6qYPW32QARTl7Tg5Sx6Fwz2DvENR/NlPuNBhFlHv7pUiau+AVK4Fj+BxBNp
         AijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nFP2PFpQTZ6SFu2Mi9DgLrJPZhZj2pejghzb7OgjEtk=;
        b=lX/NH6kKpnQz+cwLD5UhebfnOLKYlXgd8R9SRji6W+7dzoIPo/PWA77tfr6U6Tb208
         Du6aiIHrEr8RBYqmuA8tOpbZ9/IiRHPzKh7MQU56BP+Ayd/qllV5IsuSdRdkjoPr8vEr
         dmjr1LYrAI5SlG6VD4rR4Ty2pxetjR3+Y7tnSGxXJi9DLUqWTvyQ+CNnREi4/SlVmF5V
         v7sRq5eGpkTR1PfV2+kUJ7NsYhmgjsR++xQj6DKXJe+EUtHP6bizRp1pRMUUnhjpGCIS
         oOSxZTSJPRMTD7AHxBU42nUFW3WaR56653rN8VojPhEZFKXfczrFepLPr/HjoQ9k6zzr
         /TSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oDHYbmd1sYIRBc6RUmZuridu2hizdrlK/KV6c1HgADtOK+gD0
	7YDIk9fy4uKDgzUSW8H9YX8=
X-Google-Smtp-Source: ABdhPJzlW3CIHgwco6Aam1br6WnrUYVAlhfYvOoJYqnCrv92P7nmxUEym9FzSLw/3j6ktDiwtXRUgw==
X-Received: by 2002:ac8:7f16:: with SMTP id f22mr4080106qtk.55.1623684040287;
        Mon, 14 Jun 2021 08:20:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6a17:: with SMTP id t23ls8257304qtr.2.gmail; Mon, 14 Jun
 2021 08:20:39 -0700 (PDT)
X-Received: by 2002:ac8:5c51:: with SMTP id j17mr9722181qtj.171.1623684039812;
        Mon, 14 Jun 2021 08:20:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623684039; cv=none;
        d=google.com; s=arc-20160816;
        b=PGlkKb5cPZyWpJvjDCNxtBudRT8wBbW0CVq4xVeY5opoRaQtiXAS32GzJIKkt7c+0o
         d6iMzd2o4xUsJSBRaJVCgPh3HZo57D6VlBROVI89O783wTfedLPYxBqfXvAHwFjM9Ro0
         ynaC6yXHVmpWwSFYR/jHK/ql5isEl82Z+hIi7QiBsvMYHkhr2A6la7MsLnhjBbOvfGRH
         TLnaGirwEV9SkeMV+Jm3BahBjv8nOaHNKg19BefuRDEdOVxmpbFv209POo5U0X4K03oU
         hXYzNjC4dwOHE2maI+S30UzmywiUnnYW9o18AN3gaZAiYmiFk2MCeIj5gOsGaa13q5EY
         ua4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=gbBfsd6QEJyPQsk1CFsyqjVRFq1U4IMEejVMTtFMNhw=;
        b=Jqydv8vRE3Gi1QeDFK5pLyXf3+lK1KHO9vRMzQSVRJWxJeNCd/yVe14KdYws0WwUPE
         JZXDvdfwJcH4NKXS7TP8Yjyw8jzr+/33+WT4UwDNrMm+bb1wCQw13gAsGOKdIN1k0TWZ
         l5zUtK65DTsQ/SapBPt3tyUmNqmLSIF86jHkbTcAH6W0khgWNjIGl/xMbozOWQt7TcCJ
         9Y5RP4kkiFwUUl16Hr6CHmpDqavrR5tkWZ/VWIBI34m/e8BubEf0uJRvonbMnqCFhHZr
         SyOlxWWUTL4NZzy9fedD7ecdgMVVGN+JKOUf6AiJA/WQPKPBLbkMomi6+pyl9vPjJdbQ
         4Ufg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.173 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com. [209.85.167.173])
        by gmr-mx.google.com with ESMTPS id m9si1949713qtn.5.2021.06.14.08.20.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 08:20:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.173 as permitted sender) client-ip=209.85.167.173;
Received: by mail-oi1-f173.google.com with SMTP id x196so14751568oif.10
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 08:20:39 -0700 (PDT)
X-Received: by 2002:aca:b406:: with SMTP id d6mr10830977oif.71.1623684039411;
 Mon, 14 Jun 2021 08:20:39 -0700 (PDT)
MIME-Version: 1.0
References: <1623318039-57133-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1623318039-57133-1-git-send-email-yang.lee@linux.alibaba.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 14 Jun 2021 17:20:28 +0200
Message-ID: <CAJZ5v0gjjS=f5jmA4+SL=K2D1073y3oa5J1yaeFqwkC9tUv2yQ@mail.gmail.com>
Subject: Re: [PATCH -next 1/2] ACPI: processor_throttling: Remove redundant
 initialization of 'obj'
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.167.173 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
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

On Thu, Jun 10, 2021 at 11:40 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> 'obj' is being initialized, however this value is never read as
> 'obj' is assigned an updated value later. Remove the redundant
> initialization.
>
> Clean up clang warning:
> drivers/acpi/processor_throttling.c:409:20: warning: Value stored to
> 'obj' during its initialization is never read
> [clang-analyzer-deadcode.DeadStores]
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/acpi/processor_throttling.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/processor_throttling.c b/drivers/acpi/processor_throttling.c
> index 0086afe..017fd02 100644
> --- a/drivers/acpi/processor_throttling.c
> +++ b/drivers/acpi/processor_throttling.c
> @@ -406,7 +406,7 @@ static int acpi_processor_get_throttling_control(struct acpi_processor *pr)
>         acpi_status status = 0;
>         struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
>         union acpi_object *ptc = NULL;
> -       union acpi_object obj = { 0 };
> +       union acpi_object obj;
>         struct acpi_processor_throttling *throttling;
>
>         status = acpi_evaluate_object(pr->handle, "_PTC", NULL, &buffer);
> --

Applied as 5.14 material, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0gjjS%3Df5jmA4%2BSL%3DK2D1073y3oa5J1yaeFqwkC9tUv2yQ%40mail.gmail.com.
