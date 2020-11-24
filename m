Return-Path: <clang-built-linux+bncBCK2XL5R4APRBJ7H6P6QKGQEHTXA3NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 084922C24F5
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 12:51:04 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id g25sf3127227edu.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 03:51:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606218663; cv=pass;
        d=google.com; s=arc-20160816;
        b=fbuJVXHeaYY5T15la3T7r0v/RW0CjevjXLbSk/xBNMg3o/JqV4oWqTtAAT/bsHYX6A
         yhFSrMK4+DxcNsDrJQxNVAPdO9LtSQeZHfVEv6Xds1bJvjCFRBRH3wN7pAEiC2dG2uOi
         8rNPAARkrPJ8b8A6el4qKbmn/E3cpRsu19PBrg1Web6fAlOaABzybU6DwU6GRDuYeF+D
         kiqMaCB8ajaEQ15DB/JQoNNz/o5qdtx1iuxDfDBDLaBeG2FeM+Jm4c0XRhZEV6kZIke+
         knCQ5fguuncWfGOBCzjS9SBVXwhSeqzth8Sp2wQMNMvnvVAqX+PnSrTnIBkiXvHzRJ/a
         fitA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LY+aZ+wCeVIaJVZTUjacCR3akUqRLcu6zlhVtDo/UIY=;
        b=NS/svO38a1qHjA8lQJdIPNrFUO4+7IeyDW92zGNBu+ZnTTMuIqMm52GKTWsYiyiCm9
         GHR/U+XdVRyy6g/zuquCEIGDlJsO8cmmM+hPSFkcMNlVP1YxJB4rn71go5NEY++PjBHF
         OLW4nOhcPMS8jQxVBsrG0jU+x5GkPt5gfRRd0APGK8ii7NMX5EloNGxH+VklB3r+qJbT
         whSxyv9uf03w9wgkWxDxT1ULYNA9ooHjIC7QMX1HSsAoPHt9QYf2pfoNn/ppNXElvSLF
         APdFbPT41XMNr4fCA+VKn0jN3IFCXo0HGL3TQXd5K698Fwdij4QLxg7Xg+s6rlcbWS9H
         7kNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hKJIBhFP;
       spf=pass (google.com: best guess record for domain of batv+cbe268a5dfa7b983a02e+6302+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+cbe268a5dfa7b983a02e+6302+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LY+aZ+wCeVIaJVZTUjacCR3akUqRLcu6zlhVtDo/UIY=;
        b=ROcqgefvMKCUcgNR4yYefMFP1quVUcrfmZQyUfGWf5f4lMpZ/mRQIKvnkkRWtxG1X4
         o/gUrVx6OPPZcEEKo72FWgZBM0zmsRdjnb2e+nS0RppruCqw8WhXoWe2k3cRZVJ5fvcA
         Ydtm7LZ+/M/X2bVdPVYPvQbOYIrzuC33mUr49zjg4ncoD/nfXDSYdzVUOCKciamn5Tgk
         fUKv8RO0iCWfjL+a4w9ezr8F2IAJ8V9Z3URF1JuKX+YdnDpCwcaJRYyBOQHJafRB2mGr
         ZtAgXRgngZ5T8wHjClVRYCDCybJGqYd78mzr9WEWSLTB8YNmiOqp3q83gNJZD/c4f2eA
         9+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LY+aZ+wCeVIaJVZTUjacCR3akUqRLcu6zlhVtDo/UIY=;
        b=P9BhSlX9lS5FgNDChOe5xILmFwNybDcHwgnWNeqODY6bb0PeqUZyTCbexg0YFCmlk4
         ixO8AGODjeVj/Ji4/RTkOhWAtkkjs4MwKYjN2TKZRdcfbAeR6Z4QKDnRajmH7oDZTbaA
         dP1nRr3lbHGg8jt2/WxoRF5bi5TBb9LBhH7TK80aHFjmOOmdHqToA+J18FXUme+k8xhV
         YK6VtIsxbrcpPfOXHiwuTsNX4rdpW0Q8vHceUdyvNU526W4Q/VC83de5biuNhagGwv7u
         LKEv10Co5HqkKS/ezFwwRdUqKWlTuWg9UbLpBFKMoGHSWDcLFTEnSZ/qYcPqRJIWazri
         4sVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EPSbRtMCs+RvUY0qF5Gq4WafeL+Eu7sZgSMJK127ljmN2RpQv
	RHN4ZRRq7y79NHTHu9UvO4Y=
X-Google-Smtp-Source: ABdhPJxkXbPe7S+IruWPBR8ZaVcJW50oBFnK1VFyjA9uw66NK9cCA15Pn750yMZxCsYEV17kViBXlw==
X-Received: by 2002:a05:6402:2065:: with SMTP id bd5mr3453418edb.48.1606218663818;
        Tue, 24 Nov 2020 03:51:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:20e6:: with SMTP id rh6ls7522154ejb.11.gmail; Tue,
 24 Nov 2020 03:51:03 -0800 (PST)
X-Received: by 2002:a17:906:f881:: with SMTP id lg1mr3937692ejb.133.1606218662948;
        Tue, 24 Nov 2020 03:51:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606218662; cv=none;
        d=google.com; s=arc-20160816;
        b=u6bLmRSJD28liNz+ljU3vGq9QL+uGnVA5PfHfVquqpJJhMiL4jhlpfGsXfBftErEO1
         DUrBUEdCIRLTZDfkuwNDSR+zhd+W2TJuQdcpJWHm6kFcD77Nn5hV1vENPRIw7T7iDs36
         MkQykOCmPY/eukbqjaSDlaZdG2JDWtWQDhetP3S/9VlfjNddhE02AAsui2h72rzIpofS
         cKRfJlUGK3sGxM4Lk1sf2cDa5Q3jaiCvWP6aBTdL38JYUE7DP8Cs8Yj9K0iTzNzTa44M
         B7mmPMJmgwIszznBVlkUSnWfC9ENPUXZC3+WkdW+coICY51vULPOtsZekgCMkXdXvkge
         3QRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5kw0QxLQoOgDyVGj4iKmiuA5NMWKFQFej/HFL8JZlH4=;
        b=FSCuS91Ljg9+14ts+pxVKQMM3buCSB+yzIBFxMd0hxoQUHVZGcEzRzn9itzJZGO0ZJ
         7+S5qbFQKwFu6rW5Z4q2/SJM83F1b+dFSTrb1QV2ljuTaaiEQDQqbr+J4fypB++O3lq6
         VrnC9NREA1c/dYHShkFRlI5ei8jrey4mXwvlHBYh8Zwpdn5z7I5Z5WrqgvfFuZgWrJNq
         ZyJdxnxpsKFuaKMSXDCnwwXi8+bByoydJNwr7EU2mnhbJxLRCIz0PXZPcVxejC4F44Qx
         Qy7S+kTxzcixYrnSPefuHl0jvyhNvbMD134DFhK2AeMM4q6ljNmJQz1atitmCNIVDeu4
         nK+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hKJIBhFP;
       spf=pass (google.com: best guess record for domain of batv+cbe268a5dfa7b983a02e+6302+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+cbe268a5dfa7b983a02e+6302+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v7si801620edj.5.2020.11.24.03.51.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 03:51:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of batv+cbe268a5dfa7b983a02e+6302+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khWqY-0000NM-3G; Tue, 24 Nov 2020 11:50:58 +0000
Date: Tue, 24 Nov 2020 11:50:58 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jann Horn <jannh@google.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel-janitors@vger.kernel.org,
	kernel list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] zlib: define get_unaligned16() only when used
Message-ID: <20201124115058.GA32060@infradead.org>
References: <20201124104030.903-1-lukas.bulwahn@gmail.com>
 <CAG48ez1FqJYay1F=LUt84DVHd+k0=gXohwhTnwv=t1sv=hTSjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAG48ez1FqJYay1F=LUt84DVHd+k0=gXohwhTnwv=t1sv=hTSjw@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=hKJIBhFP;
       spf=pass (google.com: best guess record for domain of
 batv+cbe268a5dfa7b983a02e+6302+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+cbe268a5dfa7b983a02e+6302+infradead.org+hch@casper.srs.infradead.org
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

On Tue, Nov 24, 2020 at 12:08:40PM +0100, Jann Horn wrote:
> > Since commit acaab7335bd6 ("lib/zlib: remove outdated and incorrect
> > pre-increment optimization"), get_unaligned16() is only used when
> > !CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS.
> >
> > Hence, make CC=clang W=1 warns:
> >
> >   lib/zlib_inflate/inffast.c:20:1:
> >     warning: unused function 'get_unaligned16' [-Wunused-function]
> >
> > Define get_unaligned16() only when it is actually used.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> 
> AFAICS a nicer option would be to "#include <asm/unaligned.h>" and
> then use "get_unaligned", which should automatically do the right
> thing everywhere and remove the need for defining get_unaligned16()
> and checking CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS entirely?

Yes, that is the right thing to do.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201124115058.GA32060%40infradead.org.
