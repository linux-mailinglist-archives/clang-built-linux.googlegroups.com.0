Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBY7L6WEAMGQEZIQMK4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D31E63F0D16
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:04:36 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id b32-20020a4a98e30000b029026222bb0380sf1598501ooj.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:04:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629320675; cv=pass;
        d=google.com; s=arc-20160816;
        b=LplERnTX4fbCyZH6ScnfGRY410Tiu1UNKXIvPo1E3PevehrwylHnLpGdZUAXJ1oteS
         h3spgHaC0rzrD20hf3HA35w+Ak0V9tUrzDJO0GWaD8daPL6f80jol2bKsdz/JfF0x2pP
         pec4NLaDwpH9JiH2gBKP54fRDzsQior9YFLFsZnp6IhdT4LQeikv+LMi7HX31VJ14n/J
         75vX14ioubx/vschcRs+Y9Kz1w/sIVA3Pb4AUwC23JvmfA9MmGSElObpnRca2UaAtJkQ
         quC3Sf+5ecXibVOHRcrDP26pDoBzVaCbyGgWreCup5dsACWLXRhGmxww/oxsfkgOu86C
         d20Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Wbd+oRj999cHQKGU86mxKxtAqna/SW90x4foiTaMqQs=;
        b=gL9cZPv5B15yMyit4RyzQBiEbGEVOHetFXK144pzyp9TKWnCdybqjbyFar3s9CSfoH
         pimp/DS5whL7n6zPO2oNZe7mhnOy9LJAwreIjrmtED6L1DSgnXp+g1rBZOfOhQatYl8/
         2MirK0AEsCQTaNFu+Ut9M2kqHk1B12ibjx6pGEAx0UCgwWASPePIT3fqx31FC6hDUogn
         DiOn3VeWRrzrjna36as9QKhGI0FUeInSYbB4Ypj+wApkbQxX9gMQR3dBhwY5SfdQrWjV
         gFOXzP5Y57HxzHi54UYDbSfnUJAAH7D7cShbTTbIpAzj1fccNnrhaww2ZlHMpXvgXtSo
         XStA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Zqem0CoZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wbd+oRj999cHQKGU86mxKxtAqna/SW90x4foiTaMqQs=;
        b=Tr47qaetMl9bEEwgkN/qjQk41XHYp184z+PjW9mXbQMGzBUgePlWuNW7IoBDQDOEO1
         wHvJA3b6Q702nigon/GOBXKWVdN114F7kZdETRThW+LlZBE357C3NPW0c2ULHHEwEp7V
         836Uqrs+F3Y/FTt1LL1NQ/7WM0m2eaVWpS0zM7iR6984XpTEr9bDN0HH+VPgAb9zMGv4
         6uUh+4kQn9r6AsWf6GA7OZ3rNTnq0GPlnDlv0kr1WI9I7d8kmQSxLZHgwivsFoGTnP30
         UnXGxqzIjR/Jy0M8w7gv9Mc05M7J5fg7jo+f6LZ8HXQdMr4x5i5xjfnlzx6T10thHMon
         pi+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wbd+oRj999cHQKGU86mxKxtAqna/SW90x4foiTaMqQs=;
        b=fXQxTBRnrClMGkzGVbm3bEh63R6qpOjIwiAlZOzgmGJhVHdWus/lO1Idj39x0vZNQP
         q6bHtZNYhsfYyPiB1T+o9/e28HlgZDpNuBYQo19MJ+d54jLS+BCl7s4JRAKWgiJ+Z05L
         iJJzgUWDH3p/ZL3bj/E7pzfuuVf7gQRfP4fpUP/dwgNVVovIETfIW4SN0tWUPmvYnDmn
         xbX9XPRs9eLisBVSuybdOsV4xAeLrV4ivlPtQl3M8HsD5C2lmZlKzmxvpBZrp7bdSiwe
         YRTQj0ZyjwnzcoyW9oxoFEofW5/jlAREoj9Puho5LFfITdTQyOvJMkWzsksD7mBd3/YL
         EOqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531X5slz1IhR+D1gtG0ISAhxpaoQcXeYlI7sF/BKB8OW6+YOdy3b
	1MHVanEtOBV7yMXPIKJnVnM=
X-Google-Smtp-Source: ABdhPJz/uiM5Q2BF/Dp+tqycOwwmaFmu+cW0xIORwbrRqXV1zRa3zOLTUD9ql/9Kb532EV4OMgHCgw==
X-Received: by 2002:a9d:7299:: with SMTP id t25mr8866675otj.272.1629320675394;
        Wed, 18 Aug 2021 14:04:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1509:: with SMTP id u9ls991761oiw.6.gmail; Wed, 18
 Aug 2021 14:04:35 -0700 (PDT)
X-Received: by 2002:aca:6747:: with SMTP id b7mr170103oiy.134.1629320675048;
        Wed, 18 Aug 2021 14:04:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629320675; cv=none;
        d=google.com; s=arc-20160816;
        b=N5gEc67RgFLWXP4TGpMMgOjBzTlD3CJ1wT2n7LHqrnAj90yAGfXlEObMrLMq3FIN94
         GniqUdnS+QEQyqeuhFKWDbujvOWVfVViSLS0zXgv3T42R2tAZ1F3sAuyy21H5kVPv0qp
         u1+hyk2dQNlSPXj8//7ZNglVBI3FwVtaiTZVPT8whvhsWrXDl9N4GmLjN30+v8tFK9+j
         fQn7BjMQHux4CP19u4GN7v8LG84bK7ZvJ8a/0+lE4r16rB9QEu2Qe78wxmt07ZJFdTGg
         50sqg/uXFy4DEH3a91vF6DJqTQmp5ujhnvyjAyCJL9rGf821KINF5HlA0+zpUqsJ+7bR
         Wa2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IABWnr1aCDsDwxBBopzlg3HkRiMd7COJyG2pUzXE8/s=;
        b=CASWtw4BIpqOmrTFGUNVL8Yo3K2cRAKEZ0YPhcIsPWKP0kdTpoOeo5Cbmy8RmW62E1
         SDi4JO3yMHokIk2o6IC9vITe0eJ/VWvVpvyEHU2ewGdYuf1um2B8pfbIGoLWkSRxFN9I
         1wB1EVASTXmZQdyKZmaZ6NI2qSaRNWu9gFv7VIPMjZ7NbRoit4qYd5BW2cTDd3I0Vy8q
         w6wp9sWp0bKLNfSpl7PoxpKG8Qz+NO3gNdN5qqAXoB91rYByNXv37uUO64odHynrY3jd
         Qog9PkuEbiJ7rVuOGrtT79Z3wDChQ+QdmPUUtOGNNZKP4dT7aaxOa0tPNVyFeHVsJYRT
         lrvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Zqem0CoZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id b26si90633oti.1.2021.08.18.14.04.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:04:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id k24so3629224pgh.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:04:35 -0700 (PDT)
X-Received: by 2002:a63:f656:: with SMTP id u22mr10801321pgj.392.1629320674444;
        Wed, 18 Aug 2021 14:04:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f5sm687890pjo.23.2021.08.18.14.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:04:33 -0700 (PDT)
Date: Wed, 18 Aug 2021 14:04:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>, Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>, linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 1/5] Compiler Attributes: Add __alloc_size() for better
 bounds checking
Message-ID: <202108181404.B5E8739C3C@keescook>
References: <20210818050841.2226600-1-keescook@chromium.org>
 <20210818050841.2226600-2-keescook@chromium.org>
 <d326fbfc-dc96-b6e9-6fd8-31df3eb9f1cb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d326fbfc-dc96-b6e9-6fd8-31df3eb9f1cb@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Zqem0CoZ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530
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

On Wed, Aug 18, 2021 at 11:04:32AM -0700, Nathan Chancellor wrote:
> On 8/17/2021 10:08 PM, Kees Cook wrote:
> > GCC and Clang can use the alloc_size attribute to better inform the
> > results of __builtin_object_size() (for compile-time constant values).
> > Clang can additionally use alloc_size to informt the results of
> > __builtin_dynamic_object_size() (for run-time values).
> > 
> > Additionally disables -Wno-alloc-size-larger-than since the allocators
> > already reject SIZE_MAX, and the compile-time warnings aren't helpful.
> 
> In addition to what Miguel said, it might be helpful to mention that this
> warning is GCC specific, I was a little confused at first as to why it was
> just being added in the GCC only block :)

Yes, good point. I'll call it out in particular.

> Otherwise, the attribute addition looks good to me. I will add my tag on v2.

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108181404.B5E8739C3C%40keescook.
