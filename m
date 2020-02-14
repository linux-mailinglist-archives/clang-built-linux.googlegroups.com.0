Return-Path: <clang-built-linux+bncBCLMHO6ARMORBSH7TDZAKGQEDXOWDEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A6815D244
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:35:54 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id o2sf5441623pgj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 22:35:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581662153; cv=pass;
        d=google.com; s=arc-20160816;
        b=av+Jx7cByooaipKWvDuV/u2PATZVCmmHcUSPW5mgufTjepWK+by2YR0f5N0VmmK75F
         U8bwCDFm1u2s2WDUotyCzRCkqiYVJ0e0AXTUC35VfIg+W+hE85m12A8MfQ/WmP36V6Ca
         wu8CMZ2vENcagTzjUZFGkunskWurb1Qpr8gZmanKSRa9R4k/AKul2Etu0pKLfPN1FwL0
         25beldapPsy6GRNNr3X/QQ+7i6oNb88nDbeVJ+GOCeFoQDl+iwmNqKVMUjz/NSPKiqvd
         bjdSPIRJFtChgiCUJVxaaZXoZawyE7CB2NLsLzuu4/TEitjp/xqcr4v/a6bjzSvjsb25
         4QBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:sender:dkim-signature;
        bh=wMan3m1fBu8VMvvmrJALpvDk6JjGpBR7hbAj51tDpzI=;
        b=EWLiemTgpc9oW+uYQC2G0k9EdVmosfNRO6DAcFlYGMKlAqhJYlqs9kJcSM+UbcrPsl
         9gduGXdyY4AhmcRD80qTee+0JoQl6ZJ08IytQ/1qji+tp6V2UY2mzmQ/dTgXcOJWYIng
         UhBwOqFw3e2H4TK0GbgeHlvD0pIamEbWoikKfCtUAHJfF74D2oLTZHQOYQ84atm+e/cE
         PN5uiA+fcdWccG9Y8kFRuO4jpubgF8mWDvEjziVwXBi3wOMxQ3RkYadI6vRNE9/RU6bx
         MtyxI/rMj/aGOCI46GUM36VlnGbeM2arqeb+hqpvIcnoQ6nvbKX0M7XT0rk8XAfj6tLh
         Xhiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references:date
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wMan3m1fBu8VMvvmrJALpvDk6JjGpBR7hbAj51tDpzI=;
        b=FA2GNxfLJiSDGKFjNX5Qq9D46/zJvnfg6GNV3Z5BHPce+BqMnnrHah2/DjEwVrM348
         c1/moh120CaC1SSxv9rOrZd2iDJr3HR5fgdaIGN8P/1bJzPih63brdMP0+2xgvvk6R6m
         w18uujYoLIYbHmQY+teB+CbBNq27HUhzJH33Y2cfioybLpqv/HWac2hX+en2kO/ArCFX
         krVsW7Wbdg5Qu8scCMdVSSNIDJGrnqQ9e0GPIrtDpByjDihsqYM5pKT/cXLkhFWxAEhM
         fThpNR0dNch5CwQNgS4fFf/HttsULG9cmcR9cq6DqRpZ09c4Nc1qZxNJ2pEUgquTFfMW
         vkag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wMan3m1fBu8VMvvmrJALpvDk6JjGpBR7hbAj51tDpzI=;
        b=Ktntp59BQCcZCO2rahmydtAnsz4R+aI76BSGpXs0Ayl1OkcYL8TcoNZwu1w3dsocke
         14MD1QuMHTkykXgT2xUmnkJWYuV4d4bjsLXzSP3Ev6KlgCq9t8zYC1oP3/pEQL6fX4Wf
         VakygiZzOD7Vy71y2pD76VGfq97pZAcjVtIV4lYtsQcYaze+RzvyLo56xbmxCaEDZ5Il
         V3TQQSvRXzNKc1hnfXS4MAsdaCSMBXfpTRQp8lc2T+BXutWeGDxD/9OncToPf5pPVDKt
         hIx0GvO1TemlA3UPutLBIu+/ESRIllNOpLQKXJUE5oyQI2U1gYrruykU3HF32ceUkU8Q
         pgSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5mGMqprXxREuDZiUfuSH31y8ikR8d2Mfjd37+Ky1MXuq3hksq
	6OzJPgG8iPP6Lqm/nrW7fCk=
X-Google-Smtp-Source: APXvYqx/6hFeONUD93pq5Nf8l4XKO93mn99N034XzEqy7pJ7N0KQVdw3ZRjYJqoMBsmcf175Dwtvfg==
X-Received: by 2002:a17:90a:ca12:: with SMTP id x18mr1701807pjt.66.1581662152678;
        Thu, 13 Feb 2020 22:35:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6644:: with SMTP id f4ls1242592pjm.2.gmail; Thu, 13
 Feb 2020 22:35:52 -0800 (PST)
X-Received: by 2002:a17:90a:394d:: with SMTP id n13mr1706577pjf.1.1581662152234;
        Thu, 13 Feb 2020 22:35:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581662152; cv=none;
        d=google.com; s=arc-20160816;
        b=L8KBolYakmSs+SVI6ixh6+O+YynU3JiQieOBBGD3ZZoxBYswNr/4aQfReVMhACRWGk
         Big3VNdBI9bFaQrj3IntNcVtketTcOYxqug315otyrLQhM3NXjA088XnELrOZFZrycGK
         /Ek6pZKnxIBmCHrSmVGcQ/3MZgDq3DOCHQj/muKKReQn0c2fdQZYKT5YSzbVvlKPT1BH
         Ax2a8ElcjECnjZk/x/rtZN7pVn1SsHintjGZ6sMAVCwWThkFkF1VOVP722VC85AMO1GA
         i4omT2+7QSvn+eZ04BmdojNWoB7jQVoRSQEstSeCaKfwSKEPO/WrBPjti1ZKeUSRCUoX
         rn5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :organization:in-reply-to:subject:cc:to:from;
        bh=46fbINOeSS64FxBrZHwk+7gfEUcY2LdLAh8eJ/BPk5E=;
        b=WLfevCMASgPTIKOsDM9vlyiQojH2qhkNsuPqGaKfriS5/CRgpmuz8rZoirpTcE7XMq
         BHljVq/T1S+8jc61xqTXhStCNJVsaVDFj2vddITo8FUhy0DZTOAOheyDDz7sP9dHNq9Y
         dJ1CkTUV5I8w3bGZI5V4ZW9tdaWLMsQjOkBaydIUtvWvy5MiE6zIQ7dFw46+4ENfCUE/
         ybaAsAlfHTqtZC1tXdP0e/+e1MDfrufB/M9iPlMHf7qsLSfWy8Opnlp3qDbnKMMTrHiX
         a1kLOB6LwO+A1M1DsGmL9GgRWPkyzQ8CDSDKrf8Apgb3WMrIjtAiRTOAaN8Lpc4Tt7hu
         HTOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id 8si304693pfn.1.2020.02.13.22.35.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2020 22:35:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 22:35:51 -0800
X-IronPort-AV: E=Sophos;i="5.70,439,1574150400"; 
   d="scan'208";a="227499154"
Received: from ablank-mobl.ger.corp.intel.com (HELO localhost) ([10.252.39.179])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 22:35:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan
 Chancellor <natechancellor@gmail.com>, Michel =?utf-8?Q?D=C3=A4nzer?=
 <michel@daenzer.net>, Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
In-Reply-To: <20200214054706.33870-1-natechancellor@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200214054706.33870-1-natechancellor@gmail.com>
Date: Fri, 14 Feb 2020 08:36:15 +0200
Message-ID: <87v9o965gg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> wrote:
> A recent commit in clang added -Wtautological-compare to -Wall, which is
> enabled for i915 after -Wtautological-compare is disabled for the rest
> of the kernel so we see the following warning on x86_64:
>
>  ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning:
>  result of comparison of constant 576460752303423487 with expression of
>  type 'unsigned int' is always false
>  [-Wtautological-constant-out-of-range-compare]
>          if (unlikely(remain > N_RELOC(ULONG_MAX)))
>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>  ../include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>  # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                             ^
>  1 warning generated.
>
> It is not wrong in the case where ULONG_MAX > UINT_MAX but it does not
> account for the case where this file is built for 32-bit x86, where
> ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.
>
> Cast remain to unsigned long, which keeps the generated code the same
> (verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64) and
> the warning is silenced so we can catch more potential issues in the
> future.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/778
> Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Works for me as a workaround,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>
> Round 3 :)
>
> Previous threads/patches:
>
> https://lore.kernel.org/lkml/20191123195321.41305-1-natechancellor@gmail.=
com/
> https://lore.kernel.org/lkml/20200211050808.29463-1-natechancellor@gmail.=
com/
>
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu=
/drm/i915/gem/i915_gem_execbuffer.c
> index 60c984e10c4a..47f4d8ab281e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1430,7 +1430,7 @@ static int eb_relocate_vma(struct i915_execbuffer *=
eb, struct i915_vma *vma)
> =20
>  	urelocs =3D u64_to_user_ptr(entry->relocs_ptr);
>  	remain =3D entry->relocation_count;
> -	if (unlikely(remain > N_RELOC(ULONG_MAX)))
> +	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
>  		return -EINVAL;
> =20
>  	/*

--=20
Jani Nikula, Intel Open Source Graphics Center

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87v9o965gg.fsf%40intel.com.
