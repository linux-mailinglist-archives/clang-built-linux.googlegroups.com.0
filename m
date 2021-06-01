Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOUE3KCQMGQECNHCVYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C723397A40
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 20:53:47 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id a16-20020a63e8500000b029021ab84617c0sf48094pgk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 11:53:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622573626; cv=pass;
        d=google.com; s=arc-20160816;
        b=uLz0FKOm5CWafPP1IRg9xZRKd3l1UDlArEqQNvTPCiOJ1lULr6QNE/4FI3hX+Lm//G
         1J44mc/0S2wAOIVrb4gXljPfhcTOofGB/RsdfhX/OZy9ob0Mh66VKG3yWtZeQIJfhh2v
         MndwN6GH5MIBbQaLduqOlhimfNEwuUEfHXe+XStWqu0pV4dMEXHxXcpsF4zUHdbrmUhT
         eSjBk8QE+cPZ4hymI5U2d6Y/1VW1LCNViHWWv9ldDh8o8nmnYSYopgP+1LzSTm8a4ZqE
         ev225SbSPTzBb+DGQRumQGvnFtIqHpC7LHKroboG/121myzhWJ7pxi4tXBPDgeiWGYXx
         4TTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Rr6WZyhj08xil7F7Ds5GNYFbF4veBM0Qm6DgQXf6GY0=;
        b=BOpzDv228CSn/yMVlJ//wdtLrRE56GcKMM9xPgFUq5VaFYJYLk2/qvVX4Dwiy61gPG
         Y9lnrFqmjDiAgjyJcMr4AME+UF7VmYe7qw+EKf65UDwKTqzAWG6pOTN4n63Mib5/Jzed
         Sn01eRXeUN/sily9sQU/vyrSHKTjAVd324K6bZTPBMfHOBW0fDSMxn2h0+2wzaP1GHWq
         lrZMu9m2svQNzpk8zGoXbUriWEJdWnmEsLbPssIXlCmdtnGKywdDpBaHc4C/zTb6n81n
         WfKuvL3f1bm6bhcvfj7fUxpN30DC05tESAwonoOMtLYZvepZRT7+l+qZ2WA9b+G4XfnI
         mQAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cycELX4S;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rr6WZyhj08xil7F7Ds5GNYFbF4veBM0Qm6DgQXf6GY0=;
        b=onvtCkaItQkElMEsY2dL99cZeGO/lm6736MQkBDjQlqa6VZBI//5B79iyQplHuJCOp
         XnoBE6/TUVOTf8jWx1dPN+I3A3E5Z2W/bqC2hBklZ5sWewWVrvEge5/upMbS80i7tFWw
         Vp25e9MoPJlO61RvmM01JQbZcSHQ6iGAE8ogj1Tr1AdmZaRicwvi1/YZMqfDbJbG1nVJ
         TspqKgmAgdNrKDfumcutIOP9pr2jjrPIPxKL0lKVxFTAXclgfXtdnuM+DT7FEDJe6R2V
         LraxeRo1f75PIotjPM/fDNIfOvpJM4jOAydUpu90OL3hblKU9Ubg4RPCx7gQZKAZjtzM
         6yfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rr6WZyhj08xil7F7Ds5GNYFbF4veBM0Qm6DgQXf6GY0=;
        b=NejNFRsSNTaRCaUEvyxOri90nD1J1GoVvOzfeGGbLybOrLD/2Dzg+xciiVd+Frqy/I
         xX+o1frskVvzvji9wDEj3QQFXHWCdOlVWyaP/5V3bsTVKqcGxAu59IRQWg43Lc7Tq9ib
         CfDgUsyn2M8SF4K9nBVnt5BlQHlbZ3HKfgpBBb9/8E94i/e6C+ozlgPFwGEQIhOmGaim
         k9FtxFFsCib2tyNycH4bBJOLI3hIZPqklSliUL4acjBIkbpb6YYQoRnTygCd7h1ObCP1
         AKLyL1LUqcbITFCecgg+x+cQBpeBJTsKPF4zAJmhar+uKX52Z8LLAtxnp9XYtiRV1TFn
         haXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BYSPjYgv1fsLekAClIZ6e/vaRseD5klGV4a4Cz/meHekjfrOm
	sZSI83H/RGaBvscvt0uz31E=
X-Google-Smtp-Source: ABdhPJwFvHCT2R/2rodaHAhJbv/4MbfBhMI74LVpszXnqV5begTjqW/HJpv6fxk8mPu3uaNaQRkUBg==
X-Received: by 2002:a62:3106:0:b029:25c:cd66:3be1 with SMTP id x6-20020a6231060000b029025ccd663be1mr23291409pfx.29.1622573626216;
        Tue, 01 Jun 2021 11:53:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4b09:: with SMTP id g9ls2090078pjh.2.canary-gmail;
 Tue, 01 Jun 2021 11:53:45 -0700 (PDT)
X-Received: by 2002:a17:90a:be09:: with SMTP id a9mr26457391pjs.58.1622573625626;
        Tue, 01 Jun 2021 11:53:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622573625; cv=none;
        d=google.com; s=arc-20160816;
        b=KRffP7VLHJUBBKUhIlhoj5JzAGW1bfe4b1UHHA2nAlAz7pslmBon7M30OQnEs8pQqT
         iWeNTcK6Sl04octN9+5N69zujMVrkBpWmR5YCtykxJpvgIsdkSCXOuyJlX6tPMoh43mI
         co8HDhDXLMHfSkvtWujqxEalH5bzx5JcmpbZH7zS+dvkDO07WJyRYaC6nQZOP8+t6eGo
         63du/Fw4ed0APDZdj/zDe/zIrAVKTl5+D6VlBUq0TvZ38kK5tg7RLFgWqJMoR6N1RcSj
         ddzIAX8U0x06nizJUHNpXyalQ0FDQ2ThWcEo00CPcyX/8xb8BQdE9M1jeKndT/m6raWp
         P2Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=MHR82u4ojdl9g2U3dRKAkiZwMnhIgA4/mtysswjttjY=;
        b=d0wlne2ML+5IO7MoPNTHHgqDlJlpkPBq3jR/h4oNDpQ/8wTSox3AQPqG7tx9VuS52l
         SLQuaMC4w6yyIsbckiGiuQllBBVHfDiL0sfjdBZS6+TIeXQvB3A1dgzBBe5SptJsNAiB
         sP+5Dma/IZX6cCcXNzABS4JubpuFcaT18OcQgNpYoikD68d7t99TVM0V5fC2f05wi779
         21lN87S72KY8werRvoxw7UxOhQvkt7ngHR/qQ7XfkHnka4aNCqaDDtZKIK+DT59Z+m7o
         YzKI+wXG/pWpTXm+9ZM6T4C6B8KNHuuf19fGAZAIU398QF8J3SaQLEr1RAfC93AO2xl6
         K43Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cycELX4S;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id f3si395885pjs.3.2021.06.01.11.53.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 11:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id z26so220657pfj.5
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 11:53:45 -0700 (PDT)
X-Received: by 2002:a63:dd12:: with SMTP id t18mr29542213pgg.361.1622573625331;
        Tue, 01 Jun 2021 11:53:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d13sm13536941pfn.136.2021.06.01.11.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 11:53:44 -0700 (PDT)
Date: Tue, 1 Jun 2021 11:53:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <202106011152.9E91FF6@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cycELX4S;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
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

On Mon, May 31, 2021 at 02:12:46PM -0700, Nathan Chancellor wrote:
> On Wed, May 19, 2021 at 02:37:26PM -0700, Kees Cook wrote:
> > I've added this to patch to my -next tree now:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=for-next/clang/pgo&id=e1af496cbe9b4517428601a4e44fee3602dd3c15
> > 
> 
> Would this be appropriate to send? Someone sent some patches based on
> this work so it would be nice to solidify how they will get to Linus
> if/when the time comes :)

Yeah, good idea.

> https://lore.kernel.org/r/20210528200133.459022-1-jarmo.tiitto@gmail.com/
> https://lore.kernel.org/r/20210528200432.459120-1-jarmo.tiitto@gmail.com/
> https://lore.kernel.org/r/20210528200821.459214-1-jarmo.tiitto@gmail.com/
> https://lore.kernel.org/r/20210528201006.459292-1-jarmo.tiitto@gmail.com/
> https://lore.kernel.org/r/20210528201107.459362-1-jarmo.tiitto@gmail.com/
> https://lore.kernel.org/r/20210528201213.459483-1-jarmo.tiitto@gmail.com/

BTW, Jarmo, if you haven't had this suggested yet, I'd recommend using
this kind of a script for your email sending workflow to get a set of
threaded patches:

#!/bin/sh
set -x

MYSELF="Your Name <and.email@goes.here>"
prefix="PATCH"
#	or
#prefix="PATCH v2"
#	etc...
SHA="SHA your series is based on"


format_args="--cover-letter -n -o outgoing/"
maint_args="--norolestats"

mkdir -p outgoing
git format-patch $format_args --subject-prefix "$prefix" "$SHA"

./scripts/checkpatch.pl "$@" --codespell outgoing/0*patch

${EDITOR:-vi} outgoing/*

# Send patches
git send-email --transfer-encoding=8bit --8bit-encoding=UTF-8 \
	--no-chain-reply-to --thread \
	--from="$MYSELF" --cc="$MYSELF" \
	--to-cmd="./scripts/get_maintainer.pl $maint_args -m" \
	--cc-cmd="./scripts/get_maintainer.pl $maint_args --nom" \
	outgoing/*


> 
> Cheers,
> Nathan
> 
> ======================================
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c45613c30803..0d03f6ccdb70 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14378,9 +14378,13 @@ F:	include/uapi/linux/personality.h
>  PGO BASED KERNEL PROFILING
>  M:	Sami Tolvanen <samitolvanen@google.com>
>  M:	Bill Wendling <wcw@google.com>
> +M:	Kees Cook <keescook@chromium.org>
>  R:	Nathan Chancellor <nathan@kernel.org>
>  R:	Nick Desaulniers <ndesaulniers@google.com>
> +L:	clang-built-linux@googlegroups.com
>  S:	Supported
> +B:	https://github.com/ClangBuiltLinux/linux/issues
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/pgo

I think I'm going to keep things combined in a single tree for now since the patch rate
is low:

+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features

>  F:	Documentation/dev-tools/pgo.rst
>  F:	kernel/pgo/
>  

I should likely do the same entry for CFI.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106011152.9E91FF6%40keescook.
