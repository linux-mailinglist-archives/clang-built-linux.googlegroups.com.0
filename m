Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRMR6D5QKGQEUXB7R3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 637CC2845BF
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 08:03:50 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id 12sf2819570oij.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 23:03:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601964229; cv=pass;
        d=google.com; s=arc-20160816;
        b=XftPZ8vbeZFNvMBLmvGZdvwbWyrdeW9sdyhOPd/+9P/hYqDwl9uR/gIrUUuVi1UsjT
         xO9FzB/7eDgnDYf6QfvJB1NcmlrPMCNwqVpFmy8w+w9ttZsDISmXDQR++4gGG90O7HNd
         JnXOKSejxwotAW2spebX+bujauzzwJYbvr8VNjEpimgYwrmdQg1SDN/6WK2p6nCOQ6Ko
         efEBhk7O71y3f4C6qKdjlSsw5usXUn+hpm8IyANeAadIawvoQe88j4JJN3dRfNGbdLQy
         2H/zQHFze/qGau3jeoGyYrCcZeAI+pHX1frgfnZuasQ1eieJt8yCTG81y4dbmvkR0mo+
         RShA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=t1Jb/ipKm76faR1ODSxRsjBxax0bN1G5+dq38TGq0W0=;
        b=s2NjCu0RgI8UCD6DA6hcMX4nQcIpSxs2wXrrIWJhYYZeWvH6FA7WZL/c2sfPCRljvx
         q1zqbhkpbUM4aCzK6+10+6lpzgOv2VsqZG3YjG5BNNreVMjZUepCe1owec1N7UrLLhj8
         x6QRczATvOmnWI3Z8bFMxT1W6y4qJPEQyY/4wDZn5SvSAp1YE0W16tgdCpB4EJ2ll7jT
         rZGYLv02ZXdv9Y6MfBETV2fW7H5Y9QVf/o6vTasXpiPBqxd8i8MTvkUSsY4bbfDO4Hui
         mkXh8uBqZPz+f4OHKNbzaHmuNlyx9OQr/FimXbG8Lrw70Pr36SLu3spw3/zfIHkP3UzH
         lzZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AKn2a5gA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t1Jb/ipKm76faR1ODSxRsjBxax0bN1G5+dq38TGq0W0=;
        b=cd2IwCPsPaCtAILDHwC6nVcF4kUtdbG8MS2V+CeYKaRc0BAjln4iSHqdin8iuIKJdW
         8s4FPsnka8YRpNrPoiO09CeTYxMlmpiOH+L0ewPe/DpMY7a3jTnpeR5MEWRGlUEdY3Cl
         rJa7S7oxS9cFPb4FjiB0IR7x1biDbljCKgbO0f5blRoUSx1zUOVFlOWH431wzdIvkAig
         p7Dn2mdPnrkkuv/WE5SZP4dh2eI4gbWOcJg9qZg/OLAqJNNqEinSLzjouoCp7X4QpBA0
         R0xNF28HZCTKUOE3luVYvozE2TYsGTNiXe5damNveowBO/jXEGgWZTVdijTdEey/vLYv
         5x3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t1Jb/ipKm76faR1ODSxRsjBxax0bN1G5+dq38TGq0W0=;
        b=U4hqxSjNHOA9lNhaEE2GAAB+31bn14v49D/T7VbOlPApYknumFXDbr389mxSqtAgB0
         9jrLt85B3pI6qAYoYy/GW62a8nk5/Jv+/Jj+2C4Cd3ZIohENWTDvQh3bZmzJ5FhmL4l3
         tWSc7dpCUCNGGxi7znU400boaE7Wc2NEkybX4JD/8tOvyQcyNIVOdSXE3SpRJ/5obQSL
         vrqjHldeINRZIMASTd4u6zpzRPcBXhJcXcDQhFAVWPnWMTUo1a4GM+mKZATtcts5gDjz
         3a5SJekiGQfhYC1xhxfBL53VyxjUYPBNE4COdKgxVePivHTHT2d8Gi86CCuM5apM6XZU
         uXnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533unh6s7k/ORB9EfRPDZ3tgC+0kSJ4hN5PrbJHT9qH+9xMtzhpn
	3EBYEFdgYnRcm4KbpFxc5MA=
X-Google-Smtp-Source: ABdhPJzkMDDQBwm1IwdB9h2+5mvw4DmHSr5uR+SaIt2qtyhSGcCHhr7ImbtHJul99XLOOnbSeDJqGA==
X-Received: by 2002:aca:d982:: with SMTP id q124mr1847299oig.103.1601964229341;
        Mon, 05 Oct 2020 23:03:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4792:: with SMTP id u140ls218778oia.0.gmail; Mon, 05 Oct
 2020 23:03:49 -0700 (PDT)
X-Received: by 2002:aca:df84:: with SMTP id w126mr1872662oig.103.1601964228870;
        Mon, 05 Oct 2020 23:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601964228; cv=none;
        d=google.com; s=arc-20160816;
        b=SaPVhTKts2OHdOLPXLVpvdwbCZGI95+CXHLp0xW2rfTsvWPYYh6ooA8iMexX3BWsME
         rf54oFhmDa3Jh3lNUShD4P84IwXGsYTyDk9uXCpZEVs/AAQiIqdML14OF8Rr6hHqQXje
         4P4wPyx/+nCSh79PnGhLalm/wDSTc31sq3lwZwz2TwveL09I2lfx/sij9UwLmuDirfYM
         EMUWqrMz64flcVbhqxTtdaIIBtJVVegMXODJf7LhaYkF3wRpgyPhP0i8tDVTgs5Z2j2V
         IPBEhoQMGlMeNOdOw5RIVn6c819e097TV0PsSKepfrP4U6LvSo+4fIxWaUd4/HbhPfwd
         AtQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o+1mE6CyvtWobK1yelGFLZic7reL9nnvtSTOf+SbuLw=;
        b=C7gkUq3P/IpWKKhmDnl0vqAqSALnjt2zBG9ZTyxWTaSsKJRMD0hX1D+CC4GJXQPXL7
         o/Hzb9c0mEZJQQD1c/3j553Q1qV4SpMRTUMSEVJXetGupaflF2r/2F2WcpdogPow9ES6
         g+uCn29/uIdX4vOjOCakMbnLqKGVPZ4Q+sKZAaDnX/WscCGh02qgi3+q6fHOQznSkvfN
         WD+V4ifV2pZcipfpuSRojTS4TX9r8Lr8qQFPl/BQ0FNcHuZZSQAm+aHGuA1IHEiYmkNE
         0B3IRAYFT3Gy/euPQDfVxAHaaJ+LlOenzIguzbnC+ObVmZ+JY5H1L1BvHDxjWlbPfo7p
         49Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AKn2a5gA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l15si334045otb.0.2020.10.05.23.03.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 23:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id m34so7384991pgl.9
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 23:03:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:2291:b029:142:2501:3987 with SMTP id f17-20020a056a002291b029014225013987mr3072038pfe.76.1601964228199;
        Mon, 05 Oct 2020 23:03:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r206sm1942936pfr.91.2020.10.05.23.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 23:03:47 -0700 (PDT)
Date: Mon, 5 Oct 2020 23:03:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] ubsan: Force -Wno-maybe-uninitialized only for GCC
Message-ID: <202010052301.CFBC03C72E@keescook>
References: <20201002221527.177500-1-keescook@chromium.org>
 <20201002221527.177500-4-keescook@chromium.org>
 <20201004071614.GC1650@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201004071614.GC1650@Ryzen-9-3900X.localdomain>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AKn2a5gA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Sun, Oct 04, 2020 at 12:16:14AM -0700, Nathan Chancellor wrote:
> On Fri, Oct 02, 2020 at 03:15:26PM -0700, Kees Cook wrote:
> > Clang handles 'maybe-uninitialized' better in the face of using UBSAN,
> > so do not make this universally disabled for UBSAN builds.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Well this patch is not strictly necessary because Clang does not support
> -Wmaybe-uninitialized anyways :) its flags are -Wuninitialized and
> -Wsometimes-uninitialized so the warning stays enabled for UBSAN as it
> stands.

Ah, yes. Heh. Well... perhaps I can just drop this patch.

> However, something like this could still worthwhile because it would
> save us one call to cc-disable-warning (yay micro optimizations).
> 
> Maybe it just does not need to have a whole new symbol, just make it
> 
> ubsan-cflags-$(CONFIG_CC_IS_GCC)
> 
> instead of
> 
> ubsan-cflags-$(CONFIG_UBSAN)

If it gets kept, I'd still like it gated on CONFIG_UBSAN in some way
(e.g. the patch has an implicit depends due to the "if UBSAN" section).

But yes, this patch is rather a no-op.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010052301.CFBC03C72E%40keescook.
