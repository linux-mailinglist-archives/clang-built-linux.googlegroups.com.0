Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNFGQ6EAMGQES6JHE5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3983D97F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:59:17 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 65-20020a9d0ec70000b02904d36d33dcf7sf1451912otj.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:59:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627509557; cv=pass;
        d=google.com; s=arc-20160816;
        b=mP9+V/uoiUHsUsLeAmAqUqbwIi5Vp10ywr/f77TGuInzoHlbukcOZe+0vGVLUCXvjG
         b5Ju7EDwVdzCl4ix34x7PMjADiJGFenpm/AfEOjarcmcqeRJSSZvjEyqcroJCefgKJFy
         SgRIKab8suvYSoDNIb7sY/fWWFC9LOmZyUHXZAcyvZuCMRcZsKUZ0Fyfh+TISf6ZCt5+
         L+T4grjDfnxBIxWvEsY5SE3i+LHPIKlEJmbYN39li/ykQUeklpMWUzkRGAk6Hw0Mq47Y
         mAlz1y5mZdPVFJaDH1v1k1AUI2PTD6Q/aAqD81nZL01hGBnKvz/3tlegJ93jIgYVS6zI
         QI2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=idDDiQR171BxuMz0doPMrnXGSbNVTPQuGp24e7vjKNA=;
        b=dWADwBnXapfhDFTJPv92prQdrVrJ9i6PG08UuXnrQntYZ2EroNy+Gr+3m/MW1hLa8u
         /hOUwBMVGs/VV45GhRqi3msSoujwx9OXt0D+h8j5lSvkqBcZXvR8epzvrhwIsXDTdbZZ
         1F2H6nbJQ8dP5CEmLg4A0UvcVqPwCW7Ilw1T8frJHAC0ESoj6t+JCT8buTpl7sfoJRXA
         kQr/V6mhoUR1fFSTmwpWnegK8KwL6DZQdgKB7SlW7qQEJcQlABZ9ECEDYLccKNrccKAX
         TThCV/wlD3G9JGNJVn2qu0ED+OMdfJ47OnamxpEOS/gOVwgOMzVQKg3LROeN3rmJs9Mn
         SvQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IGRqrDLs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=idDDiQR171BxuMz0doPMrnXGSbNVTPQuGp24e7vjKNA=;
        b=h/ODWtmaWaQTAlarCTYdXGu41W67GovoYXVaWqDu2eIMjSgQACnING2vK1CI3Pkvmg
         U46nXds2cD/fcKpGN50ziL3NSMO5RRyUvS/IzJvZ+q1h5BrLn+aVQ79bGN2tDRv3DoZ+
         ylvNVJ8SOzLGq8Y/BIY37fev2oZ1ZCNwwxGRtgGzDJCBQEPlRzI6ZEXFFXe4E4Yo50R4
         MCw7xvRBI64cWFR4PXrzHLrXb/7T6SWFvLgmLzk++MfBe6SRBAAWGA1HYUc/XajSeWIF
         mxp9m0oe93AwC39ai2glD5fmLA9Lft4s7UqZraes4j92UynGoxGh2X4feZofguq9GgH2
         Okpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=idDDiQR171BxuMz0doPMrnXGSbNVTPQuGp24e7vjKNA=;
        b=ewFupVw/LH2/LNfmryky21vAybct3RvZo83YGDXRbuXqwGA6d/HR1WO+xw+QLWAR35
         mbb+iORhABoCkdqD+Uh8lmNlukOfoi5jN1lMkldg4rYLtzOLC3+gX9Ufb5ZjBOuKtahG
         sFJh2v4bPnw8rqVSnPlhNwm3Ekv6V/6YeANE/j8TyWb6bxAdil15XX7w63gw88jrgmqv
         FtdowFevz94wG3i2mqqVQfZ2ZAHPIXkCZ43wZU12q3guajfREWcfHfueA4EtsG6SMagO
         057+UnQWpCuSray6Jlidxr1VpHelRwLomFuwDSB2Tek1G+6+9W/2vwXTX64VOT6Fe7li
         wqVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vdjv6oqKQw2Wb9uZwXPb2M2a7yPZ9IYC2ZwgsXUz/cQy4kwMQ
	yjrMk8NwGdthaDFBcGjOer4=
X-Google-Smtp-Source: ABdhPJy/5uUxLuXaLspfbZ/9xy6mt9WentBHHX+TQmFYdLe9bSXgXajJmPc6L8u8Cea3mGMlIP44ZA==
X-Received: by 2002:aca:350a:: with SMTP id c10mr8162983oia.60.1627509556767;
        Wed, 28 Jul 2021 14:59:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb5:: with SMTP id 50ls940098oth.6.gmail; Wed, 28 Jul
 2021 14:59:16 -0700 (PDT)
X-Received: by 2002:a05:6830:44a7:: with SMTP id r39mr1425819otv.25.1627509556358;
        Wed, 28 Jul 2021 14:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627509556; cv=none;
        d=google.com; s=arc-20160816;
        b=HYVusAQU9lFr2MfNhjQC7j2yEmAD+b5H6v/rsH4PtVOSacLiUm1kex7llCRx9mursi
         YcfIlL+82AJDTCPf4mLELrbCyFtF7rIln4bgrDqd3DOS+Et5SUBikhSB6s0YleIILTQJ
         +YpgtA5P2CfgXRmXjOzbgX7fnrQ9Vaw1KIayiH3P6uf0dDL6TX4TXfXNBWNP4FQugTrX
         G77bPQllJZ/6FXZzkmZK/ISzCMMRjhnYOqwYDHeEy5YQKefYEnJdoN1OmWaHKywwcDy3
         FUba+QdF8Je+BQ7Rpr+X1QkCC4qMfJNOTZqVsAFWybpMN6y45iC9wzBwChAcuemfZIDl
         a7QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ry2so8wkWIDOCG/sQogiwuE+9Zyl4IrepEHbauTvq4U=;
        b=XobMPE23liXiQF7cXj06704eKSOqDKVHUE4FQAkZxjo7/lTStk5Y/IOA66jwyDbFdY
         SQNmK0h975jMRWnVdQYZN2uHW16iOW1XHSkwSKzh5FIumlOXR2U3shSqsmdJzABm50/I
         ApnvjOExl1ijUssDz3WHlcw3xR5oNRT6s0iqud3FceNUpdRt08uJB/18ztXcBcDH4VNs
         BK2gsqmaiusYyuaNJfOoNBTZ5W5wtWG2XCv7XuWGDm3J8ol13fKSvWapYo/EJd8GrbTw
         0gjnHK1E8Ox7kBSrTjZbI/DulOtbbqs9IribXxbdkcDjmvq758nw/sZ/96U1tGrfyDWO
         T+kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IGRqrDLs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id u9si58292oiw.4.2021.07.28.14.59.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id mt6so7298074pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 14:59:16 -0700 (PDT)
X-Received: by 2002:a65:498a:: with SMTP id r10mr928037pgs.7.1627509555798;
        Wed, 28 Jul 2021 14:59:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 30sm1011862pgq.31.2021.07.28.14.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 14:59:15 -0700 (PDT)
Date: Wed, 28 Jul 2021 14:59:14 -0700
From: Kees Cook <keescook@chromium.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: linux-hardening@vger.kernel.org, Keith Packard <keithpac@amazon.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 04/64] stddef: Introduce struct_group() helper macro
Message-ID: <202107281456.1A3A5C18@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-5-keescook@chromium.org>
 <41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IGRqrDLs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034
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

On Wed, Jul 28, 2021 at 12:54:18PM +0200, Rasmus Villemoes wrote:
> On 27/07/2021 22.57, Kees Cook wrote:
> 
> > In order to have a regular programmatic way to describe a struct
> > region that can be used for references and sizing, can be examined for
> > bounds checking, avoids forcing the use of intermediate identifiers,
> > and avoids polluting the global namespace, introduce the struct_group()
> > macro. This macro wraps the member declarations to create an anonymous
> > union of an anonymous struct (no intermediate name) and a named struct
> > (for references and sizing):
> > 
> > 	struct foo {
> > 		int one;
> > 		struct_group(thing,
> > 			int two,
> > 			int three,
> > 		);
> > 		int four;
> > 	};
> 
> That example won't compile, the commas after two and three should be
> semicolons.

Oops, yes, thanks. This is why I shouldn't write code that doesn't first
go through a compiler. ;)

> And your implementation relies on MEMBERS not containing any comma
> tokens, but as
> 
>   int a, b, c, d;
> 
> is a valid way to declare multiple members, consider making MEMBERS
> variadic
> 
> #define struct_group(NAME, MEMBERS...)
> 
> to have it slurp up every subsequent argument and make that work.

Ah! Perfect, thank you. I totally forgot I could do it that way.

> 
> > 
> > Co-developed-by: Keith Packard <keithpac@amazon.com>
> > Signed-off-by: Keith Packard <keithpac@amazon.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/linux/stddef.h | 34 ++++++++++++++++++++++++++++++++++
> 
> Bikeshedding a bit, but do we need to add 34 lines that need to be
> preprocessed to virtually each and every translation unit [as opposed to
> adding a struct_group.h header]? Oh well, you need it for struct
> skbuff.h, so it would be pulled in by a lot regardless :(

My instinct is to make these kinds of helpers "always available" (like
sizeof_field(), etc), but I have no strong opinion on where it should
live. If the consensus is to move it, I certainly can! :)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281456.1A3A5C18%40keescook.
