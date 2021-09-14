Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ73QOFAMGQES2CVQNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2713A40B863
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:53:40 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id i5-20020a056e0212c500b0022b41c6554bsf189136ilm.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:53:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631649219; cv=pass;
        d=google.com; s=arc-20160816;
        b=APpC4sHTzbgG/Yq3kEXASsnlf6JtDTk/4We8OYcFCfJOcZrEhR5XScFcpWXB79abhp
         b6B4TJMWLgoipOfgc8baN7Uqv5yMpRVKY7soeluAsG/ymc5TA4I4abf0LixfbDTitgoU
         +80/ER98IZ/9DGyK19bH2rl5lGkw78zzy2SPhj9bqczhokE1uQPMump1x6evp8xdi/W8
         ZCHyn1rtKRpjqY5crHPPCJHEWQEnisy92woZ+DImQlS0zxMZtFhEv00E5PQPDL6P7d8+
         LZOwLSysS7T9z5e7ECV3fYxjRnEMQQzTPZH/B89GI79R1jypdytVO2MmoaVDb05jL7N4
         m1TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B2Anf9HeZtt+II0WSSeMGkq0iBHJl6RbuyNcw+TTkR0=;
        b=Rwtt/o5ccTRgAMXn3bIjaX8g5OiNbqL2EutqQWvxeDRB+/VDZ5wNE51LMFZVo8TCGc
         7A7SWQB8rcJL4U3H5B63Dll7+0VpV5kzr+DbAa/ecMSW+s1xprI/3sd+Hs/q0cjOZ0hZ
         7DPjdLcQjr3AeoaaPInOXAaMEXmHS/KMMbWdt5hHtMuYQbXV1mQlcieip8grRrDGQ/1D
         WL5HgUN7ouyayheruTY5n1iXCFK09Es+tYbeOLXaJssF6SxBaREYGtESTAdjK7vWjXbo
         ZfxauVoTELpB4fqb0vi0wZlIrDsxdBRfXnpupCaXLXP7qh72uqRlwfjemkZ7QeXCI4SC
         YjCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J5M0TLTr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B2Anf9HeZtt+II0WSSeMGkq0iBHJl6RbuyNcw+TTkR0=;
        b=gm6AjDeQQGYPEVW4Jcd9hbtTOrIQIj8W9iuOEaQ2IANdXUPwqXQVyN9agrVT32TMPT
         +FAx1apVDpVGL5Ystpn9LdgAbppzQffBSgdbWK2ZYog8KY8Yy7EXVvpyDq+/sMHNM8bY
         zfW2anWNH9GE82V30vjqu91pIPRx6zrUE4+3EjqJeiHRIKrwH8O66906drzpu661LTgL
         b3qRgu/f9zbt/7adY1iIFONxMDSw7nSjr3KDGUxGe/VMLntJrvBJ0ezIQXMa7wNQxjos
         r+l9IjSBZMiJ8K65dIyNr6XSbUurt/ZJE9dHvORPO5QxaoQjrSc2NWGZRuLhfZQg+2uS
         4/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B2Anf9HeZtt+II0WSSeMGkq0iBHJl6RbuyNcw+TTkR0=;
        b=SALnfZmfFLo2buC4mCU9kEE4bG87EZ6xEGAYKcnkmZhrySiFqfgfoWO/0Vx+bGvHFR
         zPBhrQ3ZEF0kcDlprrupqG/Ax4DBgP64xgLFsWwaypgsnApxlRW+ZHPlklYrtq0LzjEi
         0tVen23trA+IQZxd+o8WrZogeyrNbY34j8EbvFHSy0E2EfbiyL1+gawIdplyU0N6+b4q
         eS6iSD+7FzovD1U9FKBHGT/Yi0QKAdz+D3Zb5exzmO60DLDTOPjnRIhnnux2p0bxy8BT
         UXKjXNE8VKui0NtGGkbLGjGwCWhmhErvmXi//XzHwfRZM9NTEBnIIb2cU8FhNJUYyMzD
         MWQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aoRVD+zoj1D6KEgcMG9vJNULCC+n/9uMDCCpGatHSXT+/0KOH
	riMgCFDi8UZatXE5VHe3u4s=
X-Google-Smtp-Source: ABdhPJx5DcLExRBH3XxnSSQbFJrgmvfC7KVdv9vvA1hMTHMwwrQcazSn+1+5BIKnoI8yDpllERS9ZQ==
X-Received: by 2002:a92:c8c3:: with SMTP id c3mr12549525ilq.43.1631649219166;
        Tue, 14 Sep 2021 12:53:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:589:: with SMTP id v9ls9905iox.10.gmail; Tue, 14
 Sep 2021 12:53:38 -0700 (PDT)
X-Received: by 2002:a6b:ba57:: with SMTP id k84mr15070146iof.131.1631649218823;
        Tue, 14 Sep 2021 12:53:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631649218; cv=none;
        d=google.com; s=arc-20160816;
        b=vWrZ6MgccvPjVFzmDyC7hg4btZqXBFXQ4h04zTrv9KZDQKQl2sz2HqiG9jAxG69IOn
         4kx6/BxnAJLWQpvKZAovN/dASQz2AnDdljIjnG3hSuiVSMHSJvf482z2gNlFNu66yMoi
         1/ObdxIw3Q6EzrW6pGG3d/5f0xhgx2LrKHdJZf0CtapsrSi9WegmJtGyX0dtXF5uYK/5
         2I8zKCR9Ah/x++XEQtIPpK2VgrE+NwalFIqmuG+hlXTIU3oFPH+q01ymp1XWiW/p4cbb
         iqMnNxP6mAl7PACZeJ2grZQZ629gb/hVBnXwvk8ZJORvCtawN0hmKcKVfhNbkqGs64EH
         jqBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XR4goFr11TpHKocFPAG75Zp4IUxQ5WCg8dAJS8c1qoc=;
        b=QkP0/WxDCpp2T4hGU13L9SE0Y3/ihsKR2WdmYX8JbkKQW9dzfGOC7awWp8QR8ypine
         n0pxYqKj534Ee6DCJVvjKeNdbQ0C45q0YPiCOWP8lkiVzZSyrz6xm4e/AVnRXbv2i3pm
         nf7FEVxqESkYhRIrO3E9a3ZCDf7LihF/L4WG1s5OhKgiJX6C5K7VFyZbajAcWOQ9xPDy
         kYRez2FshI1Ha4983UTGUBustN5LZEXZynPd2Ei14FfOTTFQkJVaayRRDXNOBGy3S/yb
         nizBhQemlUgaB/VwBKJkj/GWkfcg9+rOmER2aGIbMo3kqpGE2zABn4uTJU0g6PGsw3f9
         CAtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J5M0TLTr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t19si979861ilj.0.2021.09.14.12.53.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:53:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3760161108;
	Tue, 14 Sep 2021 19:53:35 +0000 (UTC)
Date: Tue, 14 Sep 2021 12:53:31 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Jason Ekstrand <jason@jlekstrand.net>,
	Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
	Matthew Auld <matthew.auld@intel.com>,
	"Michael J. Ruhl" <michael.j.ruhl@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev
Subject: Re: [PATCH 0/3] drm/i915: Enable -Wsometimes-uninitialized
Message-ID: <YUD9u88IGvdZ7MqW@archlinux-ax161>
References: <20210824225427.2065517-1-nathan@kernel.org>
 <YT+QmKyKCdotTcqA@archlinux-ax161>
 <87wnnj13t5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87wnnj13t5.fsf@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=J5M0TLTr;       spf=pass
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

On Tue, Sep 14, 2021 at 08:10:14PM +0300, Jani Nikula wrote:
> On Mon, 13 Sep 2021, Nathan Chancellor <nathan@kernel.org> wrote:
> > On Tue, Aug 24, 2021 at 03:54:24PM -0700, Nathan Chancellor wrote:
> >> Commit 46e2068081e9 ("drm/i915: Disable some extra clang warnings")
> >> disabled -Wsometimes-uninitialized as noisy but there have been a few
> >> fixes to clang that make the false positive rate fairly low so it should
> >> be enabled to help catch obvious mistakes. The first two patches fix
> >> revent instances of this warning then enables it for i915 like the rest
> >> of the tree.
> >> 
> >> Cheers,
> >> Nathan
> >> 
> >> Nathan Chancellor (3):
> >>   drm/i915/selftests: Do not use import_obj uninitialized
> >>   drm/i915/selftests: Always initialize err in
> >>     igt_dmabuf_import_same_driver_lmem()
> >>   drm/i915: Enable -Wsometimes-uninitialized
> >> 
> >>  drivers/gpu/drm/i915/Makefile                        | 1 -
> >>  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 7 ++++---
> >>  2 files changed, 4 insertions(+), 4 deletions(-)
> >> 
> >> 
> >> base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
> >> -- 
> >> 2.33.0
> >> 
> >> 
> >
> > Ping, could this be picked up for an -rc as these are very clearly bugs?
> 
> Thanks for the patches and review. Pushed to drm-intel-gt-next and
> cherry-picked to drm-intel-fixes, header to -rc2.

Thanks a lot!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUD9u88IGvdZ7MqW%40archlinux-ax161.
