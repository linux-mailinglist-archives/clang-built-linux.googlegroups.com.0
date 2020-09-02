Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAEHX75AKGQE2B4SLSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF0025B0BA
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 18:08:34 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id e9sf537029oos.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 09:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599062913; cv=pass;
        d=google.com; s=arc-20160816;
        b=MUmYKnPyRv+M3g0htID30PCwE9esrxUVouBq5WWPji6mmmnQtJA0vOY1/SXorOKaWV
         GvxvFYU0+VEJwS7ybZobWbHWyZQzVstprUUzzM69GEWxeW+cjgOCjQrqggk1jVwGWhYr
         aEq8vhxWF7NOEZS6XIsyeeOqiHBR0EgXqMpI6qXAhCqCK/III9na//t2p0E9sGnnRffR
         yg+OeuUZUpYwK5wc/ICa85OF1SJKuBZ7dCEie/xdJj2NzbaFUxLfLUy00xsfs9E0uYEV
         KdfaajVBLOKKWxrJ0pcoKHhdz1GHxSyr5gVK7quE+5pyyWDtWRm0dZevbP1lXV/csQ3/
         5kzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=DZNqRWQGLtcn+J5QLRFtu1zvOqVMmneA0zZ3AY9m/ak=;
        b=EP/92s3UDgxBOMMTosAWQibeEevbK0B5hpUlfaI6h9wuf+9Q1S89UaIjGw0qapWOc5
         MiRVh9zHjd87TuQVOSrVQ5oMyAcGCMM+wXAbOzSimkQHJtGSjSr+5fZ8Zelfg6rpVv6O
         ArVURpFyvhuTdHE/ecKLzfAErEk7zkDpNBOrGQQhlBoClB7dBppqbMYy6kW1xh39vpKx
         xDtNF2FB2zHEJOBE3CyF0/kZ/sCA2Z8Otd4GQaDcdL4+3XmKgRkcrJMl3eyXmVH/raeU
         O4DSHluR1R4yrI0BWXLBRkCi3SQ+upCKCOsFWR9f08oO0un6SMUXtgMnAwYvlh2tEi/6
         fMEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sdj78YXC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DZNqRWQGLtcn+J5QLRFtu1zvOqVMmneA0zZ3AY9m/ak=;
        b=UySU1y0HM26YKWRB0jZf21Zrsm0vJIyekaVEFL3S/AiPNx9XiZ+phLPrLb/ltz0CIg
         uwvBqzKO+mea9/NMA/MHqH/6zHUgY77x+UZtnSQSOWlQorVsRHteM1uHebK9LijBJjMY
         nq4zepKRzPfa4m/8Fm6GWT9b5jdtDicdW2wX38Eksq7tbL1bzaLl+wCtsNSm82nOkvS/
         qHQFE5DTTHmCqKqzx5eUBx2HD4BRqtz+J+2n73xxLv1ivtrfJ/OgLHLjNzGCUAJMJ21R
         qY3S51wGc1PT8u+EZKj3zsyvCUwkfmAM4uSWDAIEz6RGUs78sBGDWzHb4KwqB/4sDQSi
         CVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DZNqRWQGLtcn+J5QLRFtu1zvOqVMmneA0zZ3AY9m/ak=;
        b=p9KfRG6ndfbHABJVrSp0onWAiFW3vtEeyxnjQCSeoEtV5LSfDScIdQfw7EcgQVgHUo
         xAtCxlE8AKpxCTOUx/2wrWGncedwpW7ZpgAHivVpk5RIxXIpEBnft5UXJuEbDLDn+nsR
         3DLOGKA7IV4xvAPuL9Zgukf9nsSliRhJpF+zRlNSS77R6SKrn9WsmMu1ClY85+joA1JR
         wgpW1ERzTL35IqNXDOmYXJVA8DTqQVdDWNkT/JL2MZaVnCnYbm8Lnmm19mIR40wA4p2k
         nLW0NM9KTqL7Lc6g0DCWxc9+MLt2/V9ZAmOy9ZFaEgZjtpDF5gIYNss4bYMl1CS8xaZp
         ON2g==
X-Gm-Message-State: AOAM532v4VpVfnwz40rekxBx5MxFWqSLAQXlYOOM6tPuDfDjsh7nKXT1
	8vZIhb3GPXD6OHxYWkpZ5n0=
X-Google-Smtp-Source: ABdhPJwtOmhDxaMBNgBi4v91ZFOKuXrhlwXHOPS+CCZ9haa/ucARWBq9FDmvmxT3VXr0CqcIY8VzAA==
X-Received: by 2002:a05:6808:54:: with SMTP id v20mr1411337oic.50.1599062912956;
        Wed, 02 Sep 2020 09:08:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:308b:: with SMTP id f11ls683524ots.9.gmail; Wed, 02
 Sep 2020 09:08:32 -0700 (PDT)
X-Received: by 2002:a9d:7a96:: with SMTP id l22mr2301656otn.220.1599062912447;
        Wed, 02 Sep 2020 09:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599062912; cv=none;
        d=google.com; s=arc-20160816;
        b=CAX5/RJF64G+pn7sATbQv9eBCBiDX9a5fkLNWjqIjnluYKQPH4txJ982PPtjGC9y2A
         w2ZmXdNS+wEWBmMQDwakmuAOiuLjgffFD4M+NAy8Cc543ngfTAxPsnkgwRNInpebKKW2
         jL3GZPSzbLV3RPfwhVFhXC2VFJPtpTZ7Jiewka9Nr2zeFjj4n3gA3SGlQ+ENGuOmnb7d
         +h68duj2DB8gv5BsPNa4ur4eFXxOYkO4l4T8IpR9I4+Lv4cQ2i7OBrots5KMsbgMFRUO
         bok2SQ+1/4rYNZBZQXX1O/pU9udUKsQ1K4oIxtYZJUUmL80ricdz1Df1kRARjPpmyM1x
         ocdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=D8gITKza0XwTTApPFQOx1l+4YOSWzYngcKCGuzpi0AI=;
        b=bC7+oSuhSYNpjp23dRo2ZdBYlA94FrwDZwsgE8vlwWCTvRHhtB1AXhnbbuVF8WmnJD
         Bz4rwHOFyHL9l3vjq6ijoZPxVsqkxH7iF4fHzTQXWmpfwSQErqFpJ7KTm+/ZmT/H0tLm
         lnGyAtGqkWI+/LTCWiSAKVtyeOIfxf3S11PKmM4q9fcenL40kXYtI0RotEkaw7Rw7kYm
         YQT4dkwrN83KnzS/WIIURJwB/QWF7MUbRD4+VbPkOiuJPSI8kvRD84cWw2i6K2PbOS73
         yTOPagBcmV4/mQ54Pwz8mSa/uK52crt6cudLe3IsPBT0TL+/9V96ACcImdMt1GtHDNt+
         Ob6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sdj78YXC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id l7si169927oth.4.2020.09.02.09.08.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 09:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id o5so120919qke.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 09:08:32 -0700 (PDT)
X-Received: by 2002:a37:afc3:: with SMTP id y186mr7765891qke.36.1599062911863;
        Wed, 02 Sep 2020 09:08:31 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d76sm30180qkc.81.2020.09.02.09.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 09:08:30 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 2 Sep 2020 12:08:28 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>, nadav.amit@gmail.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Message-ID: <20200902160828.GA3297881@rani.riverdale.lan>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902153346.3296117-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902153346.3296117-1-nivedita@alum.mit.edu>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Sdj78YXC;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
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

On Wed, Sep 02, 2020 at 11:33:46AM -0400, Arvind Sankar wrote:
> Fix this by:
> - Using a memory clobber for the write functions to additionally prevent
>   caching/reordering memory accesses across CRn writes.
> - Using a dummy input operand with an arbitrary constant address for the
>   read functions, instead of a global variable. This will prevent reads
>   from being reordered across writes, while allowing memory loads to be
>   cached/reordered across CRn reads, which should be safe.
> 

Any thoughts on whether FORCE_ORDER is worth it just for CRn? MSRs don't
use it, Nadav pointed out that PKRU doesn't use it (PKRU doesn't have a
memory clobber on write either). I would guess that most of the volatile
asm has not been written with the assumption that the compiler might
decide to reorder it, so protecting just CRn access doesn't mitigate the
impact of this bug.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902160828.GA3297881%40rani.riverdale.lan.
