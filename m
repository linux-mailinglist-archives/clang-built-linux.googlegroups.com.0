Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB65FVHYAKGQEUTOKOWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 738F812D411
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Dec 2019 20:41:48 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id n9sf28849924ilm.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Dec 2019 11:41:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577734907; cv=pass;
        d=google.com; s=arc-20160816;
        b=KtC181qm90Ow8KwRDylybSULL1pgO1vJZKIkKfpQ92hlXI2BxEG9NjFJaKKvLdm9sw
         1vapkovCN8kCSTtvPsNy9wqFQGIAY3WQq9N9iH8WPyLK9tZTcm0QBicLdB1VU7SjLw8X
         pWyGnX9s55wyssXeomsKJxeEFDapagmUuSCM87peiaEwONVnJipprLOIJH3KhKnQFc8F
         EBV7ZznfzIMNV7tsqESLo/sbVt0PyUT/Jom3ygTotvQnZAbcGi+AFvaIbXLMCxWQlUsZ
         Z9h6s8kfgx3Ns083njBFKQc49na+Ie5H9+qpLzbtNhg6hmeWCxwbuABnr/VpfN+vX7rV
         kY5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KAiZ4gvXnyYbBULZnRtm/vqjOPz+Ga5xGNWL7ncW6Q4=;
        b=S3/LaxwzBXNhgKIlMynwu/NBQGEArZCyVWPD49ymNpWUbruez8Owgz6o2HAEAc6Dhl
         /qSpF0zjmdKW8+73Hb1H+9Y+kSpw/Tu1m6tGIN7VbCBL/FQIFc0vxae9SJYvtuMV7bwI
         zWMoP+DMdr1dzyCJqYl56BQooZPbjUdiTRNFOMIvmrkwkxE2S+cOkaT32WhAwd+8l20d
         of9c/XWHN/fGz7yM7jv9U7aE3y1afYj683cFtcba+Ro4k/Hku5Noj7/kZjVb1v4WDjmA
         irsOiUG9ZThB9+bpEBWdz+I02dmU1YZ3B0IVqF6jx19u9lByjTirWxAPDobTrAwPyHgk
         RmvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VhyEFlYR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KAiZ4gvXnyYbBULZnRtm/vqjOPz+Ga5xGNWL7ncW6Q4=;
        b=db7vl5Yf6UWhmDTpNcdbj81Q9EgPIV6yoOFRumo/0yJAWEm4/rCb0IMJmc7V5b6fRu
         tMUadylUyXJsGeWNuLPqFqhy1WU8hpAqSMkMxwMEMHyC9yLrG6qth3POAX7TMNXspAc8
         5lSHStYj6MVU8VEphjYH2a8KloHz6HF0+ng8UEWXcHh7iCB2BAaE7ngY5F8caemi4L4e
         CLrkIg+EoEJNg67+1GCePIelP7Ws60j6RpSRv0QHD48KikG5kg5bC2q1HhOki6m+sGwT
         vjEKE7DjW+lgntfW18h9SWvS9RL7JYdM5bqMkLhrA/5YhS8NnNuItftGpQkXEriIyhHB
         KzvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KAiZ4gvXnyYbBULZnRtm/vqjOPz+Ga5xGNWL7ncW6Q4=;
        b=s4C6dbwsP1EpJuSK/ahVpkcR9B7w3Dc1ZuiL6q5o1mbL8xa65XyIk6uOatuwGXIRTP
         fqm85CZZa3NVdV2NiCblIuHTVEgQuuK6daOu8qs5ZlLyO/4yXL6fTLvZGhq4X+ELVjeR
         QUfuQZJcfU9E2WuijSZgOWjUQtQU5DUkR+YO4YhH9ynOkWdD/Vn+UGXZvJAo4SsIvk3u
         ex5bmDOl2SAcslVuSSgwcBheb9aB9Sx+IBRtMM4Q2VKKMYCRu5SOgKcAEU0w+e26Kyjs
         D1oikIt4i2FgPMY+/uRYatfUo6Vp5Ux17rQbfc0xgpgsC/TnLRlXrbIvwdOp5/olGbb/
         pxgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU7FZNCMXhqHDV1wuxQoNWSjFqpQ1rgrUXkn+nOXkOAzWf4M0pI
	+Qfw8XUgNSQK0PnxEOj7+FY=
X-Google-Smtp-Source: APXvYqwEv2xylEzLhAaShZN8YUVjSa0daQ0PtMaGLtwyamSAygOoS65uIO684wTWcYdbGnnAygqMAQ==
X-Received: by 2002:a5e:9907:: with SMTP id t7mr45963378ioj.72.1577734907112;
        Mon, 30 Dec 2019 11:41:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cc85:: with SMTP id x5ls3137794ilo.12.gmail; Mon, 30 Dec
 2019 11:41:46 -0800 (PST)
X-Received: by 2002:a92:9603:: with SMTP id g3mr59683025ilh.231.1577734906809;
        Mon, 30 Dec 2019 11:41:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577734906; cv=none;
        d=google.com; s=arc-20160816;
        b=rW8FbmSUD6pTBGnnPEkBvNwvwrRlh8HbnW04j66lmliraoCqVs2iiOqfOstOGpUuMy
         Fm/NYPIX6B5iPVh8hEZERTn5ECeg5xqxhoiQ6OrOhZGgTeNIDvMaclEZeUbpsgXs1fbn
         G4gG8F2Y0y6b0C6OFYe2QsySXtIKJZizeSgw4viMhFSP4pQDumla3EHbqCmTD3ej+Taj
         pP7lTWDPfLspoACjzIPsaOAGXC6dBXQolkVaXPqElnYuWrwmqtYV0xcKscDcJMk5c3KD
         vgeMMJzWhRQ52y1XozHMpVn3VxTFPaAlDllwlcxqzBf4OgZDiRrBuBJNV06N6EvRKCPg
         Dl8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PkkLXDj8HeyoAsXSUf7EB7C7ycPCZ7nOePq2CDe6W7A=;
        b=QWG5POo5kogk6W4o7llM6wGioCmvH37bIZQDTLe4sfUZ77Vj223IBMP4I3CjffmMIu
         E4kkOeDkl274tatpzeyPL0faArNuqlaXhpjDptz/rMhhVxzAxCA+olqUhYKtTh1fqyI7
         dQvlZMbPjiPjcS/k787a5FZtRfKWgogDPOKFdZ9F0dQ23spNUvRRpDo7tl/7Cc3NvuOz
         EpvS/s3uTHz1jhuan+d0GKNPU8iKa0TB4cB2XYHnHtzVr5skqt04c3ChGc8ABeBN1jF/
         wXl1c9vrzQC6YE48jP/uIY57+t9Ve8i5zdLDbDBNYcORNmSSFIsLOfREu9ULZYfxMdHn
         gwTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VhyEFlYR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id k9si2043383ili.4.2019.12.30.11.41.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2019 11:41:46 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id p8so11034722oth.10
        for <clang-built-linux@googlegroups.com>; Mon, 30 Dec 2019 11:41:46 -0800 (PST)
X-Received: by 2002:a05:6830:13d9:: with SMTP id e25mr73720379otq.134.1577734906535;
        Mon, 30 Dec 2019 11:41:46 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k17sm14025460oic.45.2019.12.30.11.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2019 11:41:45 -0800 (PST)
Date: Mon, 30 Dec 2019 11:41:44 -0800
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Emese Revfy <re.emese@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] gcc-plugins: make it possible to disable
 CONFIG_GCC_PLUGINS again
Message-ID: <201912301141.38C6F7E0@keescook>
References: <20191211133951.401933-1-arnd@arndb.de>
 <CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ=96VX34S4TECA@mail.gmail.com>
 <CAK8P3a1dH+msCgxU-=w4gp30Bw+x3=6Cj473DuFzxun+3dfOcA@mail.gmail.com>
 <201912120943.486E507@keescook>
 <CAK7LNAQKuyyC-bjSZ=8bhkd1PHjRa-LDEsZra_tFdYbL7X-Azw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQKuyyC-bjSZ=8bhkd1PHjRa-LDEsZra_tFdYbL7X-Azw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VhyEFlYR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::344
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

On Sat, Dec 14, 2019 at 05:56:34PM +0900, Masahiro Yamada wrote:
> On Fri, Dec 13, 2019 at 2:44 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Dec 12, 2019 at 10:59:40AM +0100, Arnd Bergmann wrote:
> > > On Thu, Dec 12, 2019 at 5:52 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > On Wed, Dec 11, 2019 at 10:40 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > >
> > > > > I noticed that randconfig builds with gcc no longer produce a lot of
> > > > > ccache hits, unlike with clang, and traced this back to plugins
> > > > > now being enabled unconditionally if they are supported.
> > > > >
> > > > > I am now working around this by adding
> > > > >
> > > > >    export CCACHE_COMPILERCHECK=/usr/bin/size -A %compiler%
> > > > >
> > > > > to my top-level Makefile. This changes the heuristic that ccache uses
> > > > > to determine whether the plugins are the same after a 'make clean'.
> > > > >
> > > > > However, it also seems that being able to just turn off the plugins is
> > > > > generally useful, at least for build testing it adds noticeable overhead
> > > > > but does not find a lot of bugs additional bugs, and may be easier for
> > > > > ccache users than my workaround.
> > > > >
> > > > > Fixes: 9f671e58159a ("security: Create "kernel hardening" config area")
> > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > >
> > > > Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>
> > >
> > > On Wed, Dec 11, 2019 at 2:59 PM Ard Biesheuvel
> > > <ard.biesheuvel@linaro.org> wrote:
> > > >Acked-by: Ard Biesheuvel <ardb@kernel.org>
> > >
> > > Thanks! Who would be the best person to pick up the patch?
> > > Should I send it to Andrew?
> >
> > Acked-by: Kees Cook <keescook@chromium.org>
> >
> > I can take it in my tree, or I'm happy to have Masahiro take it.
> >
> > --
> > Kees Cook
> 
> Kees,
> Please apply it to your tree.

Thanks, applied!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912301141.38C6F7E0%40keescook.
