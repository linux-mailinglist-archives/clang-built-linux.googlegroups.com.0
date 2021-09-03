Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFP6YWEQMGQEIJJWOGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D963FF8B1
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Sep 2021 03:49:11 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id v21-20020a05620a0a9500b003d5c1e2f277sf4886340qkg.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 18:49:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630633750; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8dNWCLU+LLw0VfDWgtiNhH+INLn/c9GFfTZW5HYuUvFPJE9683KzRcBKQgDPklp9F
         uVoWJbKcqSEa+xS6QHYgIRjVtsglP2umB7T7fpKqNROF0kJizXfzHYEYYIIMmnNvHIib
         UhQHtzXtxAxpRONJzllX5ifpkgI9SWRFNPZ0BOutydhH1MaU4bDOBfD9clgcv7domCXy
         s5/K299F95XVgUoNqYxCWv97GQEO5PQilAevkTO+VhgWWTtqGDB0ZD5Ku6FdaUend94j
         NowzDfd/4IG9H+MDgrfokSfv0pJHPWzFOm+oY0CNUoWZu2rFp82//1meeVB+BU7aZhRu
         cPiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8xENqonJ/fA2bbCHtmuTA1/A1q9VdBxPP8mZ8uEYFSM=;
        b=G2XAQUYFglCJnvA7QNkjwOiK6zfoimdIFzBcrGoZUxNF3VQy/sYlLKYC9GQm9wPfUy
         XAHu6W88mrcakAfkbprYmnt2OGFe4KH9JG67Wb6vAOSPlRlDL70yp8bxluxI7tZXwSKt
         EEfqiiy9i9TimaXlJbhKMP+94opo8R8VTtYrvLxCGvLhrHnKEL+4c61aLGgpniioEGar
         y84FWTRGgoCaqJnjQBvxPcBwrSwKkr8BhE7WgZxlKpB86FosgTWQdcFGgVLoNG7vazn6
         420C6wq/k9+UJUSZICA8vAx/3WRaVXGwZ3JNaQsrJR23DUBUx2tqhEtEqrxVrQsNCRAj
         YjKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=icoXZURe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8xENqonJ/fA2bbCHtmuTA1/A1q9VdBxPP8mZ8uEYFSM=;
        b=eFTm7KoaDxGkln3p0OSzXqYPL+GAspB889nsRGwUkBdy3TvtvQVOM4nMnlwGmM/Nk3
         0V/KDyMMJSpdRKlj+5tkp1diovom15fT8XIQ/xzdy9PJZzLznPeHeNz5fmqYPSOX4Obc
         DdQqHfzJwQ+JXxOccRG0ETnBQcDU/dx12wMp4vWLNWG46femZ10AMHLRw+ohH80RkTty
         EfiQo0/Hm7/n4+I2trxYHdHjBBGclVy4Ty2xteM0c7Sj25q9QoacWsA2D4PFR5DiQqMe
         36NHft4q0c+kVDAeqkCYlxS3vFhO7hsfWhya5ZsyACHtvVPOiKpxWxssDyKsZZ2/5lXc
         WM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8xENqonJ/fA2bbCHtmuTA1/A1q9VdBxPP8mZ8uEYFSM=;
        b=TbJc6SUgxKup1I2YhNluEidFH0h1hPnta6nIhDdi4ZEuYjhxbOcrOexY0ugqi1WJdz
         ydrgslNXZIOldFfEDoQgQjKuagVLsGib88635r2n9tpYRsQ+0EFHgMkRxAQXbRI0GmHQ
         KNzb/Yk0YWHUD08wYt0l3LxsIGE6ymdPtOCE89PzaGERZ3W9RvRl8SRYeN7Dgnd29tg5
         IDgJY4pj+uUKdxhP++9R7RIGoIBPp46xriq26ICSgY9MB+nOvAuLhiHvuXehMB6VVkW8
         Iox1/pkyV5XkwjLrONYxf0P40bllc3XK4pAhdquD/iCVIyGNsSX9NiqyV2UWXLQWihrr
         /2lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Z4yl50rl4BPu1fWdiw+xV6VbYb3JZfkaw+tFnyBeBPtTfEf0b
	9qZfeqX/o5w3SPlLTkSUwq4=
X-Google-Smtp-Source: ABdhPJysb7gDvPxGcJGUFZAryuPS7YJ14YGcYHfANkbJKgRBY7LCMX8WPb/1icxlEYBPf6lb+vygHQ==
X-Received: by 2002:a37:61d5:: with SMTP id v204mr1130802qkb.308.1630633750108;
        Thu, 02 Sep 2021 18:49:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:506:: with SMTP id u6ls1958319qtg.10.gmail; Thu, 02 Sep
 2021 18:49:09 -0700 (PDT)
X-Received: by 2002:ac8:7594:: with SMTP id s20mr1454631qtq.381.1630633749624;
        Thu, 02 Sep 2021 18:49:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630633749; cv=none;
        d=google.com; s=arc-20160816;
        b=hPGZ6mTwwmgq335l2Cxn6NIOpyexsUOaGy2VdHO+yWlDjwDPJEWTYZsfAM/m5kb9d1
         i7W5t4iO6hLkFcALe11cOuKtWDbuTrQkMBe+dSkfWf3ImQ9jxB6E0uNpAvGMLHi4e69U
         yMDC4OfoBIhwmAWKeKzxTPTns3ro96119o+Upvk4FMOeUwi7gTxnCRd/GWlF7gMVZ3/2
         TrTqnpst5F6UGKdeb3lACPpdammvCClzJWSzjYdLdqBHj4mUJcduEbxTsahumhfgHX6w
         dQ6G2WB7X2m9DTM4Wo2SIJ/nZy4992Dw61lyb25idrdfzXvCfuYJ63Dvy7OLmj7wG/LC
         IoDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OLp//nfnQVqKYRvh8OZNt358NVX3SdBTMM+ZOiaxVfg=;
        b=Tl4luGh5Eq914Qa2zCppDq3Ac875IYAKU3Kt/Pfojm7Hm3Q513QkcHbiENm6u0hPXB
         KqzPy4pN6HeoH0AlKjMJXZn9oVKc63fzpeD94zK5odDqlPvhjBcmak3F/xdce7rjp/Wx
         rngiND0IdVQu7Ltlwi+Hkv180fjuqN7xmEMCjQ0XF9t1xwIJf2w8q6JCFFRHQHZn7zEP
         QxedBhwP4p/P3N/cqFaV7FoX7iocuZPaP/FUmxahYGVG8/g/dEGTWtnli4StA/0ADFgW
         NoR4VrynY4Z42KnSI9V1XWtlnI4/sHN94CuHkwS6WVhsFB013eOicLYxcl9jewFGmIrV
         SK9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=icoXZURe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id g18si328140qto.2.2021.09.02.18.49.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Sep 2021 18:49:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id j2so2359640pll.1
        for <clang-built-linux@googlegroups.com>; Thu, 02 Sep 2021 18:49:09 -0700 (PDT)
X-Received: by 2002:a17:90a:4148:: with SMTP id m8mr1088901pjg.185.1630633748778;
        Thu, 02 Sep 2021 18:49:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n24sm3909040pgv.60.2021.09.02.18.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Sep 2021 18:49:08 -0700 (PDT)
Date: Thu, 2 Sep 2021 18:49:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 06/13] kbuild: reuse $(cmd_objtool) for
 cmd_cc_lto_link_modules
Message-ID: <202109021848.48ED7384C@keescook>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
 <20210831074004.3195284-7-masahiroy@kernel.org>
 <202108311034.D4B1410@keescook>
 <CAK7LNATkducKiw8==u4477JGfyb5vnvbp2gM2s9ndZ_8owXfeg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNATkducKiw8==u4477JGfyb5vnvbp2gM2s9ndZ_8owXfeg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=icoXZURe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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

On Fri, Sep 03, 2021 at 09:39:14AM +0900, Masahiro Yamada wrote:
> On Wed, Sep 1, 2021 at 2:35 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Tue, Aug 31, 2021 at 04:39:57PM +0900, Masahiro Yamada wrote:
> > > For CONFIG_LTO_CLANG=y, the objtool processing is not possible at the
> > > compilation, hence postponed by the link time.
> > >
> > > Reuse $(cmd_objtool) for CONFIG_LTO_CLANG=y by defining objtool-enabled
> > > properly.
> > >
> > > For CONFIG_LTO_CLANG=y:
> > >
> > >   objtool-enabled is off for %.o compilation
> > >   objtool-enabled is on  for %.lto link
> > >
> > > For CONFIG_LTO_CLANG=n:
> > >
> > >   objtool-enabled is on for %.o compilation
> > >       (but, it depends on OBJECT_FILE_NON_STANDARD)
> > >
> > > Set part-of-module := y for %.lto.o to avoid repeating --module.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > >  scripts/Makefile.build | 28 +++++++++++++++++-----------
> > >  1 file changed, 17 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > > index 21b55f37a23f..afc906cd7256 100644
> > > --- a/scripts/Makefile.build
> > > +++ b/scripts/Makefile.build
> > > @@ -236,20 +236,26 @@ objtool_args =                                                          \
> > >       $(if $(CONFIG_X86_SMAP), --uaccess)                             \
> > >       $(if $(CONFIG_FTRACE_MCOUNT_USE_OBJTOOL), --mcount)
> > >
> > > -ifndef CONFIG_LTO_CLANG
> > > +cmd_objtool = $(if $(objtool-enabled), ; $(objtool) $(objtool_args) $@)
> > > +cmd_gen_objtooldep = $(if $(objtool-enabled), { echo ; echo '$@: $$(wildcard $(objtool))' ; } >> $(dot-target).cmd)
> > > +
> > > +endif # CONFIG_STACK_VALIDATION
> > > +
> > > +ifdef CONFIG_LTO_CLANG
> > > +
> > > +# Skip objtool for LLVM bitcode
> > > +$(obj)/%o: objtool-enabled :=
> >
> > Is this intentionally "%o" instead of "%.o"?
> 
> Good catch.
> 
> No, it is not intentional.
> 
> I will fix "%o" to "%.o"

Ah-ha, okay, excellent. :) With that:

Reviewed-by: Kees Cook <keescook@chromium.org>

Thanks!

-Kees

> 
> 
> > (And it later overridden by the "%.lto.o" rule?
> 
> No, opposite.
> 
> While building %.lto.o, we want to set objtool-enabled.
> But, we want to cancel it for %.o
> 
> 
> 
> 
> -- 
> Best Regards
> Masahiro Yamada
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATkducKiw8%3D%3Du4477JGfyb5vnvbp2gM2s9ndZ_8owXfeg%40mail.gmail.com.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109021848.48ED7384C%40keescook.
