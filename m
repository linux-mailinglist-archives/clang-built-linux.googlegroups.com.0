Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ52X2TQMGQEEGE2KHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFA778DEAA
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Aug 2023 21:49:25 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 46e09a7af769-6b9e081b9f7sf260538a34.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Aug 2023 12:49:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693424964; cv=pass;
        d=google.com; s=arc-20160816;
        b=c1dC2cSqJYmOGIQ44x4LFyzYmpMNu+2MDcP7DGWLKhooEZYMKe7KSuyPumYo/lsQXC
         hBRty5KaaXBlZLDh0HSgeZqLiCYZjoVpw9gRL7nIVPnk+ITRtj5CuwX9iBidckJXVaMZ
         STnU9LUoQSRjppsM/nELhObKB77ss9jbGaQ0H/atJgTTxpEvuZ7H0X7ff/lVRgeKqoOq
         YnQfbh95cqT4yQsD2cs7iQ6E6XBO4gM0R0EfDoHjH9UNYwt8rqj96RrShCIbseNZyDHa
         RFqpwFAn2ae5adr7Ijou5mWY4Uqmdh91ON5U/KV5r9bMTtwxH+nqvKiyBp9jV0rqsSdy
         Z7bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5ylcxNHkO2OsMpq+6dRdOQljgOFHFwZvI/MSXNNvrA0=;
        fh=qYa92Ea+t/qnONs5mgi9f8HjzdyVO0QUgTv1qP/FK/0=;
        b=LGoc/bBitHcXSFMUPBnOY7vDm3ORR6kOI00cOq33uc1Uj33wwWt0Khy1DdsZjhtDhW
         B5CU7BmYWOwPCaB6ScJxCpzwmFdDqGl68aaiLn98VvUSDycfthQIwmQRurTnTaZwIglB
         N6E98pU9PEOQ3Oc4lFaeFi1nVwUsSOdJAIXDylWQ4ui9Jevs84i1pBt/vqcTgHoukQHw
         GVziThi3wS+FHU3KC2c7DwDhvO/o1tpt1yx3CvLttqD/w30/T279ClOkHr0nUEKNHiML
         VL6YziMm6wbljSQqYH7QzUYLfF+qtY8WU67zIiAhqVNtwZrdOQ/rP1bCrzDXN3xsoJcJ
         FFeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ptWMBRJq;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1693424964; x=1694029764; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ylcxNHkO2OsMpq+6dRdOQljgOFHFwZvI/MSXNNvrA0=;
        b=ZBBrkm9ZjvbYRiR+xy5zKrTLyRM7ZLySOApo+3Rhrxxt58n7cC3M56b3CefCYmrdKw
         T2ZM5QwYjLhdf8qxA1kALVMTi2SZ6BRnDeL8VOwSH/TdYg39LXacmmCWIighTmWTxn7R
         SRtQNLWh5zFFjQEShEivmjTw28rD/ShRVmcDRFwOwKA6kpHXg2XSUCl+EYfPah8A/pxw
         W2U+G7vvKMzT5lYXgjBRhsQ4iTCXVhYo/ahtdgOJBVBHQlh2PqB47oe+E/c73bbWuodS
         5Yu/zMdSpaf6BctGm/7QUVYxBqeFIUxVFHGbBDTTUVMay480bWBfOAUCkZnFf4XIO0zF
         fHiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693424964; x=1694029764;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ylcxNHkO2OsMpq+6dRdOQljgOFHFwZvI/MSXNNvrA0=;
        b=WMB410mRP2BOOxeZfNTLWeAiMpAPJA1kB8eqLMrPIPKsJIwcqtdp5LoVCKZzxH/R7f
         eQK09X319UxzTmY29Gfa/nd2CXEBtFbvENvB9OMsKXmqUebBOcg21x0t34ibVBuqaddE
         jUbnl+kvj9R+qbvmADA4AAoFLyzXiBut3KtbzYr6akFPYQTTKjcduaCfTPtuzDcPCK+N
         SmPEtWeBT3ZzSKg2cGbW6U9UcH7wsIrw094YkGhbmB7D1dD4mJSxfHy1s+Dz0k7woSs/
         xmnQ+8XbczKhuTRxMJ4zSqdC1cc1OlhnDPUjw5/912w+RVDrMnYNGo1CkA6n3KmhDptW
         wQmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0YzYP0DPRLNPjzZeguIGuvNCjbfEmpcJeMLFu7j2WtRWgx/kpOlG
	qeH3TIQLkaQlXziF+l3MixE=
X-Google-Smtp-Source: AGHT+IHxThduXxsiVCknK20l8KIF4YQ6yehngYm5rix1o2aq2kFGImzMH7h+qUZkN+5UF9zhrQfz9Q==
X-Received: by 2002:a05:6871:111:b0:1bb:ec07:83f1 with SMTP id y17-20020a056871011100b001bbec0783f1mr3268874oab.43.1693424963853;
        Wed, 30 Aug 2023 12:49:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:330a:b0:1ac:e9c5:77c3 with SMTP id
 x10-20020a056870330a00b001ace9c577c3ls41658oae.1.-pod-prod-06-us; Wed, 30 Aug
 2023 12:49:23 -0700 (PDT)
X-Received: by 2002:a05:6808:1494:b0:3a7:5453:a622 with SMTP id e20-20020a056808149400b003a75453a622mr3713003oiw.17.1693424963182;
        Wed, 30 Aug 2023 12:49:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693424963; cv=none;
        d=google.com; s=arc-20160816;
        b=Est33NH1EKaaY7EAwv2rKJGrC5HvrSgE8KR3PC/W0RKqFJScdMmmbh1oQgnqMjv9SH
         5GDzg4Bpo5Z0G5jCuC71xPtql1YaRbs8NU4LZO4lKpTXgpW0Z69TsOAMpdmWxqflXKTF
         7IOISElj2/hIAev4NGcoGEyygLojrULsoZ7f9dmNawFzRa1QRLW2YGu+sYiYbgz2T/5D
         TRY1Mmet6keHbNwZZAjbhkAdBgz5U8GDO3VtsPJ9gozk/eFBeVOXaBULJPL5s/iqINy8
         RBxHvO3dRxZxbpXbudRXrA7J2Suzs4fJBnQVgFQRhddEeFxdggBeNGXHtrfzgJ6UgLEG
         QceQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ByhnsnpXSagGYlvgTl40yXQYKZVONSV0SaQyn34RiA4=;
        fh=qYa92Ea+t/qnONs5mgi9f8HjzdyVO0QUgTv1qP/FK/0=;
        b=OEeC7FqL/sOoZserIR1uttjDfMVsdO4m3SsIvNBHuHeVR4PkRc5ynFzxoaYVaxfLqj
         S1OMjeTGi+x0QMUlLmZld6TlzsmesY/HC84tac5ZBzV1+nK3AjOAVuIyK1IJZJKeWCQ0
         qml8m51zdYYNuKrmBg2x9EsQkxIBBIkJwg2eKdkx8rOYdlHsY2ekgrYuwWVXftslH0rM
         9EnJWb83blu311y6HW2S3+gELWBfUhKiuBFL1G7mbtdhG54pG+J6NtCuMeArYmYTIkMb
         JYd7LntVEmxhsZJiUmRmyPq0p4kpeb6Z8OiqkuB9IJt30FEmBIwnFU346Xs/6i7+XY/9
         tSWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ptWMBRJq;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id bk1-20020a0568081a0100b003a7cc78b4c8si1830718oib.2.2023.08.30.12.49.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 12:49:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E41CE60DED;
	Wed, 30 Aug 2023 19:49:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 234F1C433C7;
	Wed, 30 Aug 2023 19:49:22 +0000 (UTC)
Date: Wed, 30 Aug 2023 12:49:20 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <llvm@lists.linux.dev>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: RFC: blocking posts to the older mailing list
Message-ID: <20230830194920.GA2263564@dev-arch.thelio-3990X>
References: <CAKwvOdk_GVOdT==9=X=+s=xaD4PrvwXWoKePNJJ5WRmYHkrTqg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk_GVOdT==9=X=+s=xaD4PrvwXWoKePNJJ5WRmYHkrTqg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ptWMBRJq;       spf=pass
 (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as
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

On Wed, Aug 30, 2023 at 11:46:39AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Hi folks,
> We established the newer mailing list <llvm@lists.linux.dev> a few
> years ago with archives available at https://lore.kernel.org/llvm/.
> 
> This is in preference to our previous mailing list
> <clang-built-linux@googlegroups.com> with archives available at
> https://groups.google.com/g/clang-built-linux.
> 
> These can both be found on our homepage
> <https://clangbuiltlinux.github.io/>.  While it was our intent to
> deprecate the old list (and still is), we have not yet taken any
> action to actually block new posts on the old one.
> 
> RFC but my plan is to change the following settings on the old google group:
> 1. Who can post: anyone on the web -> group owners
> 2. Who can contact group owners: anyone on the web -> group members
> 3. Message moderation: no moderation -> moderate all
> 4. New member restrictions: no restrictions -> new members cannot post
> 5. Rejected message notification: off -> on
> 6. Include default rejected message response: unchecked -> checked
> with link to new ML as message

This sounds reasonable to me. I am still subscribed to the old list and
the only stuff I have really seen sent to it is just junk/spam, with the
occasional mail that was sent to clang-built-linux@ and llvm@, so there
should be no functional loss. I think we have been clear enough with
people who were still using the old mailing list that they should
completely switch over to the new one. If they mess up and get a message
that the mail was rejected with an explanation of why, it will be even
more obvious what to do :)

> Then update our homepage to note that the archive for the old ML is
> explicitly deprecated.
> 
> I think that will prevent further confusion, and sorry that I haven't
> taken these steps sooner!
> 
> Thoughts?

+1 from me

> Another outstanding issue is that it doesn't seem like there's
> available tools for exporting the old google groups archive, AFAIK.  I
> would love to be corrected though.

Unfortunately, the tool I think I had looked into using at one point is
now marked as deprecated/broken:

https://github.com/icy/google-group-crawler

So aside from us looking into how to export the archives that we should
have in our own inboxes as mbox files or seeing if someone else has
built a tool of that sort, I am not sure that we have much recourse for
getting those archives out of Google Groups... Fortunately, I am not
sure that we had many discussions on the list that were not also Cc'd to
some list that lore.kernel.org archives. In fact, you can use the c: and
t: search option to find messges that we sent to that list that got
archived on lore:

https://lore.kernel.org/all/?q=c:clang-built-linux@googlegroups.com+OR+t:clang-built-linux@googlegroups.com

So I think that might just be good enough to say between our issue
tracker and what we have on lore, potential loss of access to our Google
Groups archive should the service shut down or experience some sort of
data loss should not impact our ability to look back for answers about
why we did or did not do something.

Thanks for writing this up and keeping us consistent!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230830194920.GA2263564%40dev-arch.thelio-3990X.
