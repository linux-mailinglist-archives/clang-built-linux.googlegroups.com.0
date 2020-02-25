Return-Path: <clang-built-linux+bncBCIO53XE7YHBBI6P2XZAKGQEW7JQGRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EE616EE00
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 19:29:57 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id h3sf58818plt.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 10:29:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582655395; cv=pass;
        d=google.com; s=arc-20160816;
        b=MKM5cW9T6L6aWBYWa+Ae4BdINFrhb4gGZwfQKS3Mgv9metE1adiwziFSsNr2t2vHxH
         UbNWmOcRX2WuOsrzwtini+eQTwr8dn8hdRfDkYslcHNy0u//m3DYZG+lmEyBRJjeSuxA
         3t8mJxY7xrW483YE7saV04U/YONWhvA6fJwwOjZoQgls97t0iIv+8d2E7sRsQm+tiVXR
         K4evAWQE8V9fFa813Im/BZwc0h6MD18rqtwuO3731DFJm3hDGkBI312sOrFDC+bd7Ig3
         8iNVBhqDulSUiAk3x5a9aU79kJRiRGX8120Ewq90esLWFlnBqH1subaXV/hwy4ZNmlpA
         oGSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=4kC3nrVHFUvgtPhtZxTnrBW+slMRGmGdQWhB6qxYGAE=;
        b=iAGfjdQ5eRcm6TPwcTwyBJ5AoSQlmp+AP3MsFSHb+rhGIThW+rI/VRTXrHodHUrcih
         XhxM862g0jgVQXqhG2NEnIKJteGO/F/YMwjN6yUde9DXdS45kVZ75iF6z6E0bE4ed+Ik
         zWvJhg+WzS9UahWzkRgoiP+iEu900Ks3XazpisS4u0KX0RO7KIfvLyQp6Izi/j+KyB7x
         u9cv14Q2nfMvuq90AZFoRsacDx8B4XK5Mqr+26it24+hxM/u1rdxrUaToO1I/Nspagbx
         EpQDh1/26xcaqDvFZ+SmRX8kCR5Fw2jpLV7GAmBcKCORXPpmpcfuqNQ8vPiSGfKB3vEF
         rCig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jpmh+RNF;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4kC3nrVHFUvgtPhtZxTnrBW+slMRGmGdQWhB6qxYGAE=;
        b=YcgILO6KGcwDF22HAxFHV57sa2C5ZAbkHzHlTVW64KrhsyPWfB8nKqOJrdXkSacvEM
         FcKtZSJA+AkC6zAVlja504Hz9FwIxAK9PajEgvgAVrdYZYJ6FdmuNAVj75HbTW/kBlyy
         FjK2NcopdTlULKI+BmNBwtUHe/4eSqLppmbN+xT1wXsAvsex0NyzFE8jdZPMB0mNgeyN
         L2J24LrIMoSkmPK75RnYoCB74e/Qn6quF7Ei+jwWmV7ltac5nBky5ml6o9AuAoqiDJGA
         SYmi/dYw1ybWmR2EqgkcUUBCgfmQtEN3ejRsdp+FwjhVm+IQ7wMxLmqUXmcqfd2Te1ng
         ox7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4kC3nrVHFUvgtPhtZxTnrBW+slMRGmGdQWhB6qxYGAE=;
        b=sJ8YtLqSg3gWx+JFUCWs0/PN5mDrAI+mqz1qY3FQOUlGv1cwAyQoBFLnZs3FbDpK/L
         ppq15JUBcsUfNYKfsDcGixHYmFw3TzXxDtTDYUlViMSxhhv4lq1IEQtlPaYuL7G9byP8
         rq1gCSA/Cle3Yf0lEWXNDhU4ctoL5pxAizxIW03NR7/Ng0Mjd9wdP6CkYihk94JlL4K/
         sMeo3NGcaJaKqX35LrBpCFyEMQUE+51n5jUWd4KmHgfqYbW+3n9mK7EQ9NsRThrXu+0B
         NIee4Pcef2F3aAhOb/6hsh0Xpef68CzWVtOmZKEbubl5aDhJTrJ92UQBZZrcFfGFjK98
         laBA==
X-Gm-Message-State: APjAAAVMp3PBlCM9dOCrnvar7eR2Bw+pRipR+hWXM79YB8eiOY7X284n
	yrK4YrSYB94/AwEzPChRgIM=
X-Google-Smtp-Source: APXvYqzpYEMJ6mJXqeF1+nGhmPZ+WN49nXSlVnSuxZ57B+ncnGyU5E+HZ5LIjMA/RB18KywQbAlEWw==
X-Received: by 2002:a17:902:8d94:: with SMTP id v20mr58848043plo.259.1582655395565;
        Tue, 25 Feb 2020 10:29:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6644:: with SMTP id f4ls1515021pjm.2.gmail; Tue, 25
 Feb 2020 10:29:55 -0800 (PST)
X-Received: by 2002:a17:902:302:: with SMTP id 2mr57903940pld.58.1582655395036;
        Tue, 25 Feb 2020 10:29:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582655395; cv=none;
        d=google.com; s=arc-20160816;
        b=hRrbhiGYKbl3lW13J8OhUu5AVSed4eEYZzmfmmLxt2tLy3dJeGkp36ANlWfBJaHJBb
         NZ4MWK1JDPMWtahLNCLAc7JNtJSFGWZaDBvGRy/1hLvuY2lDprJYxRboV2Egnkh9ygqs
         uHoR0GhiRLeaGah206/RpOfIl5JQSF8ode6aAVeYts6nIPH0D6A/AUAbAJtFNQnuifgX
         lGe6N5qRczJ54RX4vLtiHPgRQAaDyiZaDnqQaJAqXNllPCkiUCixnmcuoKcBZ7vY77//
         bg0TrSOwwOLdSG8F/zRGnG1gO5GCcAmjI1fYHqkDu8zXYJ0FdanTVbPO9EM6RQy+Enr0
         TtFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=dcyqLzOqexgUYT665cSkM8WWwCRhPRScopxtXSuIwhE=;
        b=ui/ajIUyc72rzDKbTQeHRXs2mKYHAvaeBExnyQkdn3r6agV5a6JIId3ESnOAlZ43V/
         5wDbxPs9UrZaN4PXEw1PEK6ioo/m+cA1chJ5mC3+ndJh5uU4ihZNy/La/xZYjIoPd4zq
         w4ZKLO9RVY6sXhzHhZBeKHv+vtLtW1GpXFU2MsnVNYh4uGsSMz5nW4zlv56hSDUl4C+Y
         eZmixfig6rTrytvltl+1SkLvbxsu0y6HQ4yzf5W8DDecQKBOSlSOOQPR/Wju6i5fGU1R
         Sz/LNk/OpCuHHIErkXa+yE6xu0j6wvBswW0+RXwOP+CtKlIHZUZ0Saj0XZOuy67rweqr
         XM/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jpmh+RNF;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id h2si239884pju.2.2020.02.25.10.29.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 10:29:54 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Received: by mail-qt1-x829.google.com with SMTP id n17so364427qtv.2
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 10:29:54 -0800 (PST)
X-Received: by 2002:ac8:1e90:: with SMTP id c16mr54660410qtm.265.1582655393994;
        Tue, 25 Feb 2020 10:29:53 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id o25sm7843946qkk.7.2020.02.25.10.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 10:29:53 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 25 Feb 2020 13:29:51 -0500
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>
Subject: Re: --orphan-handling=warn
Message-ID: <20200225182951.GA1179890@rani.riverdale.lan>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002242122.AA4D1B8@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Jpmh+RNF;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Feb 24, 2020 at 09:35:04PM -0800, Kees Cook wrote:
> 
> Actually, it's rather opposed to the FGKASLR series, as for that, I need
> some kind of linker script directive like this:
> 
> 	/PASSTHRU/ : {
> 		*(.text.*)
> 	}
> 
> Where "PASSTHRU" would create a 1-to-1 input-section to output-section
> with the same name, flags, etc.
> 
> ld.bfd's handling of orphan sections named .text.* is to put them each
> as a separate output section, after the existing .text output section.
> 
> ld.lld's handling of orphan sections named .text.* is to put them into
> the .text output section.

This doesn't match ld's documentation [1] of how orphan sections are to
be handled, it's supposed to append it into an existing output section
only if the names match exactly, creating a new one if that isn't so. If
ld.lld is to be a drop-in replacement for ld.bfd, this probably needs to
change?

Also ld.lld doesn't seem to support the --unique option, I think you'll
also want that for FGKASLR to avoid merging static functions with the
same name from unrelated source files.

[1] https://sourceware.org/binutils/docs/ld/Orphan-Sections.html

> 
> For FGKASLR (as it is currently implemented[2]), the sections need to be
> individually named output sections (as bfd does it). *However*, with the
> "warn on orphans" patch, FGKASLR's intentional orphaning will backfire
> (I guess the warning could be turned off, but I'd like lld to handle
> FGKASLR at some point.)
> 
> Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
> entry linker script ... made ld.lld take about 15 minutes to do the
> final link. :(

Out of curiosity, how long does ld.bfd take on that linker script :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225182951.GA1179890%40rani.riverdale.lan.
