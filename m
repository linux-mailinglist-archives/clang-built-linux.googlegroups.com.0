Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB5WN7T7QKGQES2JI43Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0110D2F507E
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 17:59:36 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id u15sf443874vsg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 08:59:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610557175; cv=pass;
        d=google.com; s=arc-20160816;
        b=V5hZz3oQqH4L5NPktAvmzEMgFVfPmBmnz1muVW1gdEF+b+mBy9dw2PHrEXUPjmqVsw
         jsCwT5ftYmbLufv9G3J3qvZGU3GWR7pDvfMgY+C23Gs2nvuGQgMzb4neyjZWeJuPt3bo
         Ehyv0vBu1N1yb7FVw0xCHKP10k33XCOaGLAyob4udhg6d8TzhIZ+bKIK5RFhcOIkB7cP
         tynkcsfxHzpivHSY93P9zd3ITaPdqd/dC2q8/qh1+41vsRgV5EzS+NOOrk79uVpbFqAY
         /lxRPEjuW/CZiB3RvlcQpSfJ05Krx63erLoQjCF/VSbNuBQyZyhOtXugIucMBPSxZQrp
         gz+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PKvL8w+UM01uNJmRtDDomCMZLmhy70q7/DSEh6DYOGw=;
        b=VWdnu2QMWzFWEUOGi3NQtrorimRSoFPyb98uxhDZBTxng2DmnlsuGaytiZpFdH6cDO
         1vJ3hqD17BRFjOHw/ugNPCLG4W6cpYMIg5r+IFp0cXxz2lPvexLkrofoI+bwOAH7BBhO
         Yhy/PJYYPvGn1rH28Xgqcc8Lp25tAO/7oXAdvzvwWDXCkzRfo0feKFCqGXmJjRrhAiF3
         M02KmouFpFbKoLtwgA4a//WelzNpJllidj/q7rd6FZMBcznL+SB135SLn0O5BfAqMe/l
         xpkKxIS0EF0z/JwVm4292whZSFpvjj+mrCsCIISlP3cEHQsNdR0VXYmoJ5eIOVDx/f7u
         ZlzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZDcwqKbm;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PKvL8w+UM01uNJmRtDDomCMZLmhy70q7/DSEh6DYOGw=;
        b=htzcYeCpuyMy4Eokiwfqs1meWO0nMs596Vp/aO3SYxgGCE1B7uFUz3lF4QuNfqQo1M
         KhIpmF8xatWdn5KhSuCsrIpsgphCCTBS5rC1NRIAtlV+Ar0QI5oY6T+WhPDR9Mn7wEW4
         Y5snDBEQGcR4c3G5lWCN0LvZWxvJgfOjHUIL5HT1TmbN3JQFsHE/k2CZDC+eLnRi9Gc3
         gOmZuO77ZRy7HyK0jIcRPREpb1ETn++n+mKNsaClU2gjjhAVOvjfHglyEB3n8+dXXeqx
         vgVzgc8vzwC+ZmcoURCFhnfQNf5oZIkSVav7mTHqpp35YoacLOR2k3CA6Q2ki1y3ROjW
         awSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PKvL8w+UM01uNJmRtDDomCMZLmhy70q7/DSEh6DYOGw=;
        b=ubPPHWoDAzjb4d41M6FNiVnfAglze3wRRBwDcxTSXLyCCo/vMMYnfC0QYm6h4xikm+
         JQUsiVtY253/EUaaGWfPWH+EfWEbWLF/Fi0pPjJTm6lNhXV9Ax/T41YlZ/RwNLLw3P35
         dCd/clay6dX/zMsUGdb0s4ZRLhYYh1TT5NwPs12M6WZCt10vhhGVBt11+ySktV56PQkS
         ZOpvaawT/SoD6iUPsjAXyuIlxCqYlVq0HNuCc5lwFEjaE1ccdIsLdI/D72qSTeft7Lpj
         hfdQhgqBuf6cCvWwGTIONEM8TCsQH0KQFnhZpEufzLJIlBOX6QapzvS9TTJjZ+Lh7UCD
         bA4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323zMJYM4Yl68Nn8mzxXS/PIJAGIjEm6XCLK7j6PoMsSjTJSupw
	nMHhblXjrDt0igCSdbJd2yc=
X-Google-Smtp-Source: ABdhPJwaR+2IyUnREVHsSvHGQ+2mPJqoqLZJqL8A59zHj54Vqd21c3SYA7DVcFOfhvUBlDrLRDKm1w==
X-Received: by 2002:a1f:24d3:: with SMTP id k202mr2913653vkk.0.1610557174781;
        Wed, 13 Jan 2021 08:59:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls328595vsf.6.gmail; Wed, 13 Jan
 2021 08:59:34 -0800 (PST)
X-Received: by 2002:a67:ea54:: with SMTP id r20mr3067427vso.9.1610557174302;
        Wed, 13 Jan 2021 08:59:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610557174; cv=none;
        d=google.com; s=arc-20160816;
        b=gEGQDlEnCWLdxQyu6rJhVEEMAZzQ/+n9aalXlN8GCQq3rQT8VKMBHQrAqAHwcmUH/b
         k4mUvfaAodMpnrK3krDBo/qIZLfQ/86ZJijGvAtc1dSvYkeT2PHiO60QhfKUPekAiHKK
         CCURETsoH0w6SIPiyuLD3IXM8bAcw5ibarKaupuVfzWYL3byw9RYqJ9+lwbWyIrmz9rs
         a8JRxSdT9AI+GRlkbIjRgvdfLS0HMk96GgmVxRuybIeKe3Oh4zOJBiMbtz3HjXQYSlQH
         ciO/3Zp6/0z+aiou0NvQ/iCa2jzFuoUqZBJM4lE51+R8hoGc1/Uame4ATjQOpEWAWhby
         57xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wHuSXn68MXq05QNKWqpSBophf9IckcirUGXPjI7wnpE=;
        b=NJdKW/KLnDFVmA6rtsax0/r2MYjJV4/IHu0z+SO/Px76I4gPuYk/siTx3Y3ZtA1ZyS
         JNFNSad1W0ZUIS/qIO31egNn7JeqH5ntCG7IFrSNwRkBWNbTTKyhuI8aJAwusLxdPCtF
         pZvjLcFG+qW19lGkjUYG/0LEtPdhxHBfN3QWiNsmiSUXJJAiDReYU9J5Xv1/CKmBYcE3
         KzUqBG7aF4wYvJyhqnG0lQBxZo1ejDqCuSY32PAPpYngKI/c01vAuMHcBqrvEOfq4oG8
         564jaiG7Jx2mo4vvDO9G5s9FnZOlLT9uPkaVsA7ieHOu5PeLRr5cI+bg7jGr9Qf/Caqe
         9fBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZDcwqKbm;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id g17si173471vso.1.2021.01.13.08.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 08:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-Z6M00Pe0OyuQDMedSbNh8g-1; Wed, 13 Jan 2021 11:59:30 -0500
X-MC-Unique: Z6M00Pe0OyuQDMedSbNh8g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACC048030A0;
	Wed, 13 Jan 2021 16:59:27 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76C0419934;
	Wed, 13 Jan 2021 16:59:25 +0000 (UTC)
Date: Wed, 13 Jan 2021 10:59:23 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Mark Brown <broonie@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>,
	Jonathan Corbet <corbet@lwn.net>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joe Perches <joe@perches.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210113165923.acvycpcu5tzksbbi@treble>
References: <20210112115421.GB13086@zn.tnic>
 <20210112194625.4181814-1-ndesaulniers@google.com>
 <20210112210154.GI4646@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112210154.GI4646@sirena.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZDcwqKbm;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Jan 12, 2021 at 09:01:54PM +0000, Mark Brown wrote:
> On Tue, Jan 12, 2021 at 11:46:24AM -0800, Nick Desaulniers wrote:
> 
> This:
> 
> > when building with LLVM_IAS=1 (Clang's integrated assembler). Josh
> > notes:
> 
> >   So basically, you can use an .L symbol *inside* a function or a code
> >   segment, you just can't use the .L symbol to contain the code using a
> >   SYM_*_START/END annotation pair.
> 
> is a stronger statement than this:
> 
> > +  Developers should avoid using local symbol names that are prefixed with
> > +  ``.L``, as this has special meaning for the assembler; a symbol entry will
> > +  not be emitted into the symbol table. This can prevent ``objtool`` from
> > +  generating correct unwind info. Symbols with STB_LOCAL binding may still be
> > +  used, and ``.L`` prefixed local symbol names are still generally useable
> > +  within a function, but ``.L`` prefixed local symbol names should not be used
> > +  to denote the beginning or end of code regions via
> > +  ``SYM_CODE_START_LOCAL``/``SYM_CODE_END``.
> 
> and seems more what I'd expect - SYM_FUNC* is also affected for example.
> Even though other usages are probably not very likely it seems better to
> keep the stronger statement in case someone comes up with one, and to
> stop anyone spending time wondering why only SYM_CODE_START_LOCAL is
> affected.

Agreed, I think the comment is misleading/wrong/unclear in multiple
ways.  In most cases the use of .L symbols is still fine.  What's no
longer fine is when they're used to contain code in any kind of
START/END pair.

> This also looks like a good candiate for a checkpatch rule, but that can
> be done separately of course.

I like the idea of a checkpatch rule.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113165923.acvycpcu5tzksbbi%40treble.
