Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJ5B72EQMGQE5LZLOJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A6E409B4E
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 19:55:53 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id f16-20020a92cb50000000b002376905517dsf821103ilq.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 10:55:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631555752; cv=pass;
        d=google.com; s=arc-20160816;
        b=JnKjxjOHG8GOy6aqqLk+ztlZDfc3n28jKdI5dNdOll45C9GWGmbrjqM8wJBox+tatD
         DotrPHvErcEWUojAgq4EamGUK2aWmceEQH4W1YNLNzfJNt02TdJOr++XMlg8yB9f+43p
         FrtkN9WY4JYgt0w1/tNvAqZ8UzwMo5rClK4VAL7WzQ0iPyqEGgBxM2P9D7Q9UamwUlhZ
         8jmoaPfGMPhXD9S/FqgL4feOq1g6+1+xd9Hhjj/qnkdv7Npt7r4vfiCyzZkkqJfPH3ps
         froklmD4TR4zzcroMtYwJvqDtGG2VI9oGs02soM7dvYkG6O9dyQCF78xaPnUNI5kY9VY
         E5aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lBIlnwDSlMJdvxjq1iXZvinAMV++xDUY5jMV74PQuSM=;
        b=qiVmMe0GC20QoaTJTh2tV7VmEcIzGVZV4o9BrjZ/osQhSNlqam8KvtY1b4SANlePVr
         x2KD6pCwY+NsAOHGA/WZ8+JcfRePcx72YyJEjNCit9I6nWqu0NfK4G9pJGGAHdJIIB6H
         UuWSG/NjvIJ3A6G0xLTqyLVLHXdxacp47CisT5eECvd9hhpZLOmyRIAn7nfh1al4osM0
         kddmQuFkRJfWggNUoX17ugHo8CaXQseDQ6QBmGRg37aFzUlcXyRv6CEypmgihnMzQxW6
         aYt9murRLTnqnpoeeVxCBs3uHX7vo6mhWtU3/YYgpRErJMCBG3fSXmJPj3oQDenyNpmu
         mfiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kCzjSSdC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lBIlnwDSlMJdvxjq1iXZvinAMV++xDUY5jMV74PQuSM=;
        b=QlrMn+1qrq52dnwK3Wy8Dc/UKY7usBdjCS/PhJ0wAdLrYtdN/Y7uktrJ6dTXHL0cXE
         SnRu6mjWwX2mAbPQakQ4Z0KKIPJz92Ge5NrXxWZ4HQ1XfC14umOkT5HzKrCEYHwa5b9M
         D37mQHGXFMKMGkdp9UVcsco1kE1udnORf/mooVtPDdxsNeQOvozoq3P29x1nCg/w9bKW
         ynNf/JwT8XmQth6LKB296ebZ29/Jv/bUPb13aYB2pIrrCPI6IWfboRRZ6KjIO/nd1+2X
         UIUptWmpWcC1KFFb7n6c9TSZItgQOiOOlxIYT5jEjMiJ8RwCwVDNca/9VHXzvlto9NwK
         vflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lBIlnwDSlMJdvxjq1iXZvinAMV++xDUY5jMV74PQuSM=;
        b=QKZm73OGadkdXsIwNqBH1yuw21gb7EP2fI7OKyKcZznVgoWmFf2R9AcLzhof9ZeLkW
         LcX2o+EmoReMapP0L88zM9fexeslmQvOc1Qnn9VKoO0Iu40EuscXPdrJzkHK51rCO7ez
         spt+xyWLceSRvWk7CpYvfr1jC2DyONPXbLIIgAWaQWm6RgqKPicA3vzgfo8plNB/UqTJ
         aQE0ZkAOGB+CNAAIdGcUADOHwnWC2ImUQaugabvpGMWDMUfHLtp7Oq5TEjYG97RKARpo
         U71NBC3UegQORB0+NXrfs2Wb2LZtQj4cBARTRcnFbAxv+BSZhabEZ5pNzW2vYgvuZowm
         92Kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311xnvTrSWZZW3aH8P0/jCT4DI/enSkFpgM7FgbPuAdgAlXAHn3
	3zHlImpiPF+hZ/YClPB9GV4=
X-Google-Smtp-Source: ABdhPJyxqpfDRidQzhGXmPsk6MS9REuRIAqYem/jILixg9bKxJ2riVa6fQiqsh7AekKZ317VpYHovw==
X-Received: by 2002:a05:6602:22d4:: with SMTP id e20mr10041410ioe.203.1631555751890;
        Mon, 13 Sep 2021 10:55:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:9999:: with SMTP id a25ls51425jal.7.gmail; Mon, 13 Sep
 2021 10:55:51 -0700 (PDT)
X-Received: by 2002:a02:2712:: with SMTP id g18mr10680970jaa.115.1631555751530;
        Mon, 13 Sep 2021 10:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631555751; cv=none;
        d=google.com; s=arc-20160816;
        b=bO2t9uTnOn+OsCZX1YPEmOeun3eVI4ytb5/KzHOsmWwYEIZSx3VngQlrXSzXW6qH5C
         3MDsN1Fjm3p59enEX99AHcjHezoYvdlriUDuBITYtKHpyBjHVuF20Hr8bVg3uq4e7tIS
         Yper/CSFn7RA85XSlozNVUtdbV0sVXV5+mkyazDTUmq3JM6DVqf1AqGk+M4muhvWIBIv
         2YvrKiSOYvcAS3YD9Pamr7oDUz8alz4JE5pA8cVDfRwWw+oG/NMaiugb21sazC9l/6lD
         zYN3Z3MQgi9uVje7r3/IXqMp8FzAxdacRd2kEY+sCzZfTOAvIeWaVWwU4SrNeL2qdIbz
         /WpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TOoZ6YPgXH5WtzaP8SahRYuZ+H7K6nOGgWjJnWG5BdQ=;
        b=V23WUwSXJJmcmHtMClHjHJjys9e1eNAGuv1xVJlRsL3VN+PA06MJ/V9gyD8OKzBO1B
         jcMkUlwNTldRGmBr8b0VhhA10q+R9j9zYPlwatOQOy3/APaF8nEm3PwaoQ3rIMY9Uz01
         SUPeS50RRtKs4UCJ9U598DTPhMROt8O93FQey6mzFensmCm/Pg0UdFTFjIXtNAaThrk7
         yrzwL1+BkC2cOysKI9sMre5E4CkMPL5Gxv3QmIFsdyk5U5Jx8zzPorummZMO9vTzLKme
         6f56qWvBx64A7cr3uSrgU39pG0W8eHc/BXcms6R7m9T1zZLLyLMj43f0Dt+r4sOGw/X7
         KAyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kCzjSSdC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si788508iox.0.2021.09.13.10.55.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 10:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A1F0360E97;
	Mon, 13 Sep 2021 17:55:42 +0000 (UTC)
Date: Mon, 13 Sep 2021 10:55:36 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>,
	Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
	Matthew Auld <matthew.auld@intel.com>,
	"Michael J. Ruhl" <michael.j.ruhl@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev
Subject: Re: [PATCH 0/3] drm/i915: Enable -Wsometimes-uninitialized
Message-ID: <YT+QmKyKCdotTcqA@archlinux-ax161>
References: <20210824225427.2065517-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210824225427.2065517-1-nathan@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kCzjSSdC;       spf=pass
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

On Tue, Aug 24, 2021 at 03:54:24PM -0700, Nathan Chancellor wrote:
> Commit 46e2068081e9 ("drm/i915: Disable some extra clang warnings")
> disabled -Wsometimes-uninitialized as noisy but there have been a few
> fixes to clang that make the false positive rate fairly low so it should
> be enabled to help catch obvious mistakes. The first two patches fix
> revent instances of this warning then enables it for i915 like the rest
> of the tree.
> 
> Cheers,
> Nathan
> 
> Nathan Chancellor (3):
>   drm/i915/selftests: Do not use import_obj uninitialized
>   drm/i915/selftests: Always initialize err in
>     igt_dmabuf_import_same_driver_lmem()
>   drm/i915: Enable -Wsometimes-uninitialized
> 
>  drivers/gpu/drm/i915/Makefile                        | 1 -
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 7 ++++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> 
> base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
> -- 
> 2.33.0
> 
> 

Ping, could this be picked up for an -rc as these are very clearly bugs?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YT%2BQmKyKCdotTcqA%40archlinux-ax161.
