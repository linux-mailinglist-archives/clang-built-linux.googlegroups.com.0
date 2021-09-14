Return-Path: <clang-built-linux+bncBCS5BWNH3ENRBPVPQOFAMGQES5LDHYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0E940B5B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 19:11:26 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id j1-20020adff541000000b001593715d384sf4221578wrp.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 10:11:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631639486; cv=pass;
        d=google.com; s=arc-20160816;
        b=cubf9xOgGPWPjQF0us63aOiFxuum2BYff8C/tXP8PnTcUUqC76pfvbpDicUbFI3Sqy
         jrDEJYGcevoOWs4C5Da9ZR0TRiyz4zl1COLwZz72hna7YAMuxCKRq8aCTziHiSNfxN90
         ASib1xVYd7kj09W4kQslIs60vIAyNkYT2RpGXFzZKIuMUsOHoeVPDhjKcMdTePap0awg
         ooWHx89t/Sd7HkBZhojCSsh9N/kG7P3y+16gKqwVxHp58VOqwLC+xbEhhSQku4O4ILji
         l/Cgw2+jppPQockJMW4/mzRQcLOTHloYM9clQll3aiGam+fGRb5kRV3UIql2j9SXMJYv
         BdEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:organization:in-reply-to:subject:cc:to:from:sender
         :dkim-signature;
        bh=Ie0fpbdyyad+ggjthZNL4ndkJcoFnmgvZN4Hn26siok=;
        b=CJf4HlRz+qZxnWmr5+XErPlGdwvzu3nAdKZjl0hfrdZWa1UCgPd2wPtDi0UPIPJJ5G
         jFbnOrB4/e6RVGYAgvAKVWTeSd9CqZgDQSXMFfJJrvgXM+bbx8tE7HbfR/k1JVQc+yxL
         FzMBmVkDOt4ikEwR2zJ7L+v3H7ZWj/gPHLpp/DdlXxFhQ95O16ORkCVYhjNSBP87ytCX
         ycNuqBDhCrIsD/vgpVkuyxeWRTe1sShBF2yERjXnA+iTO9Z3452v7kdrEMrShZ/WV/OI
         8A0Vn548G1eJJeZ0iROvji5gv69W/9DIuuOpWBsfyaaRDj86VcNexOTyah4fJI9tgE3S
         7qTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:organization:references:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ie0fpbdyyad+ggjthZNL4ndkJcoFnmgvZN4Hn26siok=;
        b=IHv6ezy1/5ouvDXM55RtosnqRfbddnC1pe1qaBr/ERLUHxPdEjuRYktpVFOhOK/B6A
         LnFX7y9hdW7uiuK/hDGGPdG4n15Jc3nzL30rY+wP9M7rS57hT6VfNgfRYxoCB64OBCeu
         1jgt06jFBrns0OHLj+97ddLPaqh1DTBpbnrRRAYqbj1QG9KkzjucXpJPqHnl6BrYzJs6
         dAyk3NjmcO/SQGcZvIyRrSxnmY5oyIUxe9BuvP7+qWEE18/+ECsHXjtJmtXlyiAFETop
         w8V02HuTHTfUfdGtGC5fgv+EucVLvldpTdlwS0xx9Wz8TmHJeuIOxlX/7Pjo+xInOnhE
         7SjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ie0fpbdyyad+ggjthZNL4ndkJcoFnmgvZN4Hn26siok=;
        b=cfve+qpwfNf7PhckMnyg7EnCQwkXexsyo1T0dAP4GCHHdnLp3t6mE5yeq7IAUtVIK1
         64OvSI5FpFZMk6j4xrGd5NS2UEGjj2XU5DrwOClREdIXs+RhNjJzEa0uIQpwAVvrbUb6
         ds8fb4RGECcRLxQz0ioci7wl/vyJ7duP+i8GpQrUBGXI1xZr+kRsO6/Fq/+Tl4xvIjHg
         kVju81KQDWXchXDOzDxCQwam7ygTMpRceZTrW+ERlZ+SBfW9qpcscruy6tVTy92bfUV+
         QPWDhGfScn9/gMwqcAValLfthVc0BGdghHcv057KgXHU2Hlq6TYmmf4+d8sQCEpw5mpn
         e9Qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532USGweW93nFCw6c+uBA3mtQBlTip8aW3O/S2XEmz3ayoUg7AwP
	tpMQLpMX1W0nMRB85olMoeM=
X-Google-Smtp-Source: ABdhPJy7hwgxmNt+ncsKvGsZo36sBQfUfrbZ6RQPqOKTuSOlWJhpexUUz6V2q3gWiAxFVVaOrFl0rw==
X-Received: by 2002:adf:f207:: with SMTP id p7mr273817wro.166.1631639486734;
        Tue, 14 Sep 2021 10:11:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c3:: with SMTP id g3ls1226576wmk.0.gmail; Tue, 14 Sep
 2021 10:11:25 -0700 (PDT)
X-Received: by 2002:a1c:28a:: with SMTP id 132mr107789wmc.101.1631639485713;
        Tue, 14 Sep 2021 10:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631639485; cv=none;
        d=google.com; s=arc-20160816;
        b=jV1ke7fw65DERacCOKl/WDaE6FdmlgXi7Ky44lCxlF95GzQPt5/L59LMWQolfK5/D9
         wHR1aHK0hNnttodFpbrcRSQtu1+/JbkcmEVMB5KV2rgh7gIVX0fH7TncMqE3S8+Xuvbg
         NMfljo3wa6BrA7lLN+brhOLU+Fw1xknbi0wKmqjn2wf2vOJG19LZ6bHS8ufbPVeOa3w/
         1/2TkY/JycMGCmWI7/DzhpIB950ZQj/Rf7VzWF1gFFa5g978vnyi5JpwW9tR4aIhr7Jq
         6s3FOWYkWI4y4Kwm2H3VK+JiBXcG8dKzGLW1j36Wo9reeLhAazO4ErttIBdZREjQDjDe
         WeAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from;
        bh=11lHiTaYi7vjyhXZ6njM+gB9JPteQ01By29VZEgu/aY=;
        b=uO7if3tI3FQkTKBEbng75EQL2tVvX5hMWC68sAXqGdHz4mwCdygedEp/FqyPsiPAQ6
         rKHG4itt/xlGfG+Ke2T/3Lwl84LPjG8nAvKzW6awroJbVxC8ImOFx262CvJX7lW1AIwv
         3kgxa6h4i4hR4DnltUVj2K7KlHE/9WrGR66WD5ov/EqNT+wJu05Snye33amQd44HC90I
         FqR0R8ByCuVjOaJPjqkTPULwRd2oPHMJxrpelSIm1n5htOp9Xg6z8RxcbnFLxip1CYbP
         GQzOXxFIKE3+4SkY7u2IoQFbr/b1/utrt9x3Pst4xXZXtHNPYAFHZegnVRwfsJfz9MOI
         ZbRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id 3si1079681wrl.5.2021.09.14.10.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Sep 2021 10:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="285762638"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; 
   d="scan'208";a="285762638"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2021 10:10:22 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; 
   d="scan'208";a="544188720"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost) ([10.251.216.6])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2021 10:10:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nathan Chancellor <nathan@kernel.org>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Matthew Auld <matthew.auld@intel.com>,
 "Michael J. Ruhl" <michael.j.ruhl@intel.com>, Nick Desaulniers
 <ndesaulniers@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, llvm@lists.linux.dev
Subject: Re: [PATCH 0/3] drm/i915: Enable -Wsometimes-uninitialized
In-Reply-To: <YT+QmKyKCdotTcqA@archlinux-ax161>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210824225427.2065517-1-nathan@kernel.org> <YT+QmKyKCdotTcqA@archlinux-ax161>
Date: Tue, 14 Sep 2021 20:10:14 +0300
Message-ID: <87wnnj13t5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jani.nikula@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 134.134.136.100 as
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

On Mon, 13 Sep 2021, Nathan Chancellor <nathan@kernel.org> wrote:
> On Tue, Aug 24, 2021 at 03:54:24PM -0700, Nathan Chancellor wrote:
>> Commit 46e2068081e9 ("drm/i915: Disable some extra clang warnings")
>> disabled -Wsometimes-uninitialized as noisy but there have been a few
>> fixes to clang that make the false positive rate fairly low so it should
>> be enabled to help catch obvious mistakes. The first two patches fix
>> revent instances of this warning then enables it for i915 like the rest
>> of the tree.
>> 
>> Cheers,
>> Nathan
>> 
>> Nathan Chancellor (3):
>>   drm/i915/selftests: Do not use import_obj uninitialized
>>   drm/i915/selftests: Always initialize err in
>>     igt_dmabuf_import_same_driver_lmem()
>>   drm/i915: Enable -Wsometimes-uninitialized
>> 
>>  drivers/gpu/drm/i915/Makefile                        | 1 -
>>  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 7 ++++---
>>  2 files changed, 4 insertions(+), 4 deletions(-)
>> 
>> 
>> base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
>> -- 
>> 2.33.0
>> 
>> 
>
> Ping, could this be picked up for an -rc as these are very clearly bugs?

Thanks for the patches and review. Pushed to drm-intel-gt-next and
cherry-picked to drm-intel-fixes, header to -rc2.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87wnnj13t5.fsf%40intel.com.
