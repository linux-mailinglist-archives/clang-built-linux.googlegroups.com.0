Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBMD5SHQMGQE4QDVB2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1DA4A7AD8
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Feb 2022 23:11:18 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id ay31-20020a056808301f00b002d06e828c00sf315337oib.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 14:11:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643839877; cv=pass;
        d=google.com; s=arc-20160816;
        b=QyOSQHQ0iQZU1lyWJNnqfu/3GkwRnUkFdqv1D7aX1OpvbnjQ/40p3mMMoZImF0Fn2v
         0DZWue16SfrC+Y+KilxHHKeondMBqFu5zTVpBi35xWJVDVqHjStsbrtae3YpJkkhX0dp
         TPdtvDb38znaM+LfT0HIrD9jUudaA9ERrDYnTxw5sz5zF/MMePHmUIZXUhUmlcEHYfzb
         qJqR2absA3HbBSBvDBIy92c0Gp8gH9LJzbNq0DCxjQYGMgzLw4SYshU0RdRyxER5dzlb
         Gch6S1wxyUbCZ6+ZOGSFaqnSikKwFCnEzELhtOXUYxIpL77e0gg/eHV5T1TOreqTtu2d
         hSRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/L559Vu0Dv1oLDzzikEosLngYkIzkyWj7gnNlUaWh18=;
        b=WFw0qNtpOwzH/rcquzqCd2GncKdfCLi/jFJj6TQoCgfJa7b2uoIBdNG6sDI3MufU3b
         Ew1q5sGNTDqVueOEzDM5j2/YzXtNnm+fklhDXnA2+GgfpMZbYH3J4IY9WqYiL5hfzupp
         OpkWK5ouZgKg7npBJH1vqMwhhLZGBpNBpq11NB3q8971NTJ9HtEWBgv1pcRe2SNPpTvr
         iPi+0fPD/Y5v+HMu2DCOzJLFVxWnPM1hltAumYSmBJpa+uEegfK22Fpy7MPpOhfb9t4K
         Umip3tKTZCq6jh1PyOBkUb1qBcPKtcXlzTzDpthawVh9xWkIDYVtGCeFgd+xFwMHC/J9
         BBWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="ej/qevWE";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/L559Vu0Dv1oLDzzikEosLngYkIzkyWj7gnNlUaWh18=;
        b=nWCinvV7lhn118wQItXiX2jV0SgF4gqwfzxTEyxY6dhFYvESqDvtCL21A3yGwsXYh6
         idaA2yXiintfCBTcE8D4xevAqMgYgxPWrAmbuXKnT8SR7pmzseKrML4MYCokYxpBb6Fh
         pwPqCi+gKgjvgCq1QCxR3Mt4dCtk+NUyyZxiSjbotPpTKp64i57OW7x6AHfSBqgyZddw
         fyNLiKqplvz5YC8Nq5XLrsjrgqDU+tVbhYcgH8siVaYpCKE9I47qUPPSA8fmC0JzjYHv
         SkRc4vRiV2pNupRHi+fGYZjtUJWVTmcpUUUrxSZUk2MKb+SPX33rySnRJ3dCohWCdo0s
         Hocg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/L559Vu0Dv1oLDzzikEosLngYkIzkyWj7gnNlUaWh18=;
        b=a50YfyBWhuKfo1/K5SyoqY2vx6a1z2HBLizrZz1zTub5q8XNHuMeXyAFFT4AH9NzKm
         g1ODBmnxBIrKdk1uGCTkLQPXJeZmC1o0IvdhceLYt5V5L3onQcb5NFdOYT+duTGIp0Us
         JIC1eGcLYetkkoAR7l00MiUpbDYzD5HEr1J62r+wxHNPgKiB1A48Rfvy5+xYQZAhn0Ia
         QW4XVMGS0w/Xwz8WYUGtVU/S7Tn5ewtk2+2xgFSOg4tpviZYc3DHC/kvg4hv3a0sYt6B
         +cdI8RVXJUA6luXL1oGqWPxYUR+8lzricA7OpoS+3lE4M0jZW/qWpawgDuLovbNCiDYX
         pqUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w/ETj3pqLQOr0dRCYqrh5/nHIp9OXf/47dDWeONL8r9Xve4G1
	anlbXteDvB3NBujRRxEWCWM=
X-Google-Smtp-Source: ABdhPJzQegVyInqx2aHX6PdjFfSB4ildeEttZqLRNJj/SXOJ2gyjuLGgODvG/dAnQB2MiEljyhmHnw==
X-Received: by 2002:a05:6808:615:: with SMTP id y21mr5894675oih.149.1643839877696;
        Wed, 02 Feb 2022 14:11:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:128b:: with SMTP id a11ls10050095oiw.0.gmail; Wed,
 02 Feb 2022 14:11:17 -0800 (PST)
X-Received: by 2002:a05:6808:238b:: with SMTP id bp11mr5472387oib.95.1643839877223;
        Wed, 02 Feb 2022 14:11:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643839877; cv=none;
        d=google.com; s=arc-20160816;
        b=JT48+mJDZcueILZcXcJAMis2agdiOVkksl0WYC2lBwaaffyNKyz62ZKZ+9RSZdRs32
         sufmNkVmHkiZglqYesDUdmuQ2rhTOHcRliQKvfQjH7W7EhfyyhRGKhxFpek6rIhJS1qJ
         9I2oOjGS+G6TiTVMYx4LnM3FGya4evpLddbyBN0KJ2jCOAhfrkMo1ah5Vdj1eYOmsuLq
         Zp/wdAfBtglf/BZj+FHvb6PqiJys/KKYKJd8cdYcg7czTptMhAzWOO0Ifcu3tG6/ek51
         XNNndd0GXBkltpdVSQGq0UtN9MQfBHubBB/JBxKITcljHdV7G8U6V/e8aW1XjbDYa1Ll
         t7BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IN96kNo2GoNx6nkpd6g9ql6wx8bZFK4D4L/u8xLTqHk=;
        b=Q3VCX0dy1ZJ7HsNpFE3QwN4v5VPeVjh0i3Pxl7NLr/SFnxpiyqXRZ6sRIL6sSFO0Dy
         n7vJkGDisdwYGSED7zb7zYh2B4VZe7+PxZU4jDmtr9DmJ98Ff9a/LnOMGOP8HVejgzoW
         +auarjo95qf1IZckoHmLtKGDqcPVbVBBtFm6dJKsaEuStoI3UgKLvZe8UCj2pR22oJX2
         UOh9rimfufYe1Zbjd32m4cXxJuazMvz/wx/wFzg+DG7NnUGiWDIuplwbVw+Tqqofdu8a
         rJcL/gsQeg4hSOo3CrItk+toPz3dG5eUAfk4zOumWSqYdJXiYgFxvnyRoyreT70JNFuA
         aJ5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="ej/qevWE";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id h8si1602078otg.1.2022.02.02.14.11.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 14:11:17 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id v74so530240pfc.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 14:11:17 -0800 (PST)
X-Received: by 2002:a63:5242:: with SMTP id s2mr25560468pgl.435.1643839876557;
        Wed, 02 Feb 2022 14:11:16 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c17sm28402108pfv.68.2022.02.02.14.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 14:11:16 -0800 (PST)
Date: Wed, 2 Feb 2022 14:11:15 -0800
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 4/5] Makefile: Enable -Warray-bounds
Message-ID: <202202021409.2AA6A4246@keescook>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-5-keescook@chromium.org>
 <20220202160903.GA2337834@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220202160903.GA2337834@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="ej/qevWE";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42f
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

On Wed, Feb 02, 2022 at 08:09:03AM -0800, Guenter Roeck wrote:
> On Wed, Aug 18, 2021 at 01:11:17AM -0700, Kees Cook wrote:
> > With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
> > coverage, it is now possible to enable -Warray-bounds. Since both
> > GCC and Clang include -Warray-bounds in -Wall, we just need to stop
> > disabling it.
> > 
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Cc: linux-kbuild@vger.kernel.org
> > Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  Makefile | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index a4aca01a4835..af22b83cede7 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1072,7 +1072,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
> >  
> >  # We'll want to enable this eventually, but it's not going away for 5.7 at least
> >  KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
> > -KBUILD_CFLAGS += -Wno-array-bounds
> >  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
> >  
> >  # Another good warning that we'll want to enable eventually
> 
> alpha:defconfig:
> 
> In function '__memset',
>     inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);
>       |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> In function '__memset',
>     inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);
>       |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
> In function '__memset',
>     inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>    37 |                         return __builtin_memset(s, c, n);

Ah! With Arnd and Nathan's help, I saw:
https://lore.kernel.org/all/20210912160149.2227137-3-linux@roeck-us.net/
which is solving the same problem (just manifested through different
diagnostics). The same solution works here. I'll get the patches sent...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202202021409.2AA6A4246%40keescook.
