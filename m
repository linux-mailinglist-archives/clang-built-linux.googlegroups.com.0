Return-Path: <clang-built-linux+bncBCIO53XE7YHBBB7PWT3AKGQEBUKDG6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE9F1E2591
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 17:36:40 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id f130sf4051436yba.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:36:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590507400; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jj6iSyVtDx6mUDn69Lu6SaATmGzT6ZetBpPj5v2scdhRRNXBwglv6hJ43yMBeezCuS
         p8vxQSOfjHGaJ9ty7VqqmPrLtkgNS6Gykhx4Hpvjv19vCh2QV+f1HDUA9CprVYiulXMD
         k/LtePbPXl2WimLtUAtsnlQPToXdvtW/TRMtSsGSpi7hB7XKiVlhSW9fbiXdTpzBSK7H
         MLnafTRMujnti5iKKkabxPynFeo5uryhN0cmKGWHQKRcG6tML4wtTkiAQNxr59Rt6vhz
         f4Y9Pz0CExxHR8NaSQS3tiz5A36V2X0WIDcz+bL9j6Dz+o4TEjzJUEPj/UolKYNk1Ynl
         vT/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=F2cw+XyraK38MdfYLODWzvdZvDSWb1MvP+eRjrdeTNQ=;
        b=r2CypJWkvAy3r1HJ9KQ22UZai6j0dlEF9XqrmN/9BgZEl7R5n/ahveRY0O6bonu+wQ
         QFuxTuVQuqTzwHooDRd93wJxCu2xRHypn9oBidfOrzXZfNHPu5OSKArrsS3RGHEkHRq2
         qEY3Ur5HtWzpFmJILK0NVEEjVR78MmnhYJwIBneYa8S2bO56GWSocjdwvb7QvFNUHs3L
         JOPWzEbgXcw5g8+aqMAfS02XNWL2gfw26Uaj8/0LBrTg2Kq0OR6J6qBZDGYxlKTsMKZC
         ry/5x2OdXfqq7ZGKWbAs4anrN3lnsIZiHukseg/eZPGttIcib0ANZ23cirlqkWAcI5PY
         e1Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDx1rAuA;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F2cw+XyraK38MdfYLODWzvdZvDSWb1MvP+eRjrdeTNQ=;
        b=nCxP16Sm8/Mwxltc1ibLIb0HysN4JVmTovH8FXaeBjnX0aU12k5obFboj7jkX/w6P6
         uxCaOsb7i/67vdZj9rebXSA4wsnxMcr72egDXXlb1sjM4vQs2/FZ1Ma3t7U6NE9SfHRv
         1k8IwBrnDXDfpVLZGpdfn9D24oydMqjp7C5NMvibDK1X07MRS41GUGpTl006gq1vF6Ic
         5wCj79PHHbMSHDsrtb4hpP/kYI5UTQQCyiutbZBZBz3CxwXiOnkNon/tWb4wuQzqJxN2
         BXoO/S5CeMuZFKtcMve0manmsui54Ct2vyAHaeqjCkjJcsa0dOKuEJklKCU/yiLCvy6S
         p8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F2cw+XyraK38MdfYLODWzvdZvDSWb1MvP+eRjrdeTNQ=;
        b=ib2LB3L1MgzrjBbtZnDCmbbu3AinHXsSCq0fJrEQktwfXKl9i7t6gOiVD7or80fYK6
         Ato/tTazxh6s8CZh4NJV1SuMaAut1KSCZGmxJS1q2cAdaJ/ciTOcRdi2bnbEIbQF2GwA
         OHWsYVqYPq9Bx96V58uk6pNRah2tTsSEtXekducP0YKt/jSnY46/m0M4hRtxV3u/ygdV
         fx6Lv4R18JcSwwyWkqf35AxXmULGv4VFOfl30NwLSvbquyTnTV3oM0EzsgMEBmlRtj9i
         rfytANEayIBJetGwUXXdhIUmvh7pEpJv/YgmCVCC+kCcPcSSw3ikHPhlQ2RW2MkLzaXt
         QFSg==
X-Gm-Message-State: AOAM533msVDq7jexr3MGtyy7VQRW+P3sYnfcCiVfDJUemPYbhXYD+db+
	TypxEiwRIfJEaxTZkEvd+Uc=
X-Google-Smtp-Source: ABdhPJzFkAa8XwBnTeZFTVl3QDXhoXOtw+1K8T/YYE9EOH3C7BQy4X1NNRgIdItN6nzcXrZjJPp7mQ==
X-Received: by 2002:a25:7c46:: with SMTP id x67mr2493989ybc.279.1590507400022;
        Tue, 26 May 2020 08:36:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41c6:: with SMTP id o189ls4289775yba.1.gmail; Tue, 26
 May 2020 08:36:39 -0700 (PDT)
X-Received: by 2002:a25:7dc6:: with SMTP id y189mr2474083ybc.218.1590507399670;
        Tue, 26 May 2020 08:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590507399; cv=none;
        d=google.com; s=arc-20160816;
        b=0rbGHC8vnd7w57LFkJdQWS1JgwVGNsJpF4gs8u65MXbWvvyeD/b+lrYUFLDT8zO6g7
         VWDM/CmUp0Q1f6ZyT+ooJ8eViv4UvL/uWBvC6Jw/bF/3O4RQMlPLiwXsPuMIIoeU7w7G
         +BuZdualuudYolayLSxNMmBl3BqPRfoYjElfFuhxDjojo8cFufqPvaMRzBEzdzByppk3
         TCaXGFI852SedFEbK0Q72XcVbLQMbElOlYrF3dNyQSr7X9d6Ae+0k4BFAuJCRyg1zHkT
         RM/o3BOizlTwX5NLhB5gn2FLXLJPibZQyO3YGPNjMkHd87yG9QlmqpH01X0e/moQ+tfr
         YBtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=0kOaEeDNNDbr5A18fELJn1A8SP35RyFdZgGb0lfoRlU=;
        b=YqTfWmMNmd4ZbIud8+jgNN/XWF7BrUCDHTizODnw2UIEji+FyMiUtGNQmAH9fcKQPv
         8boWSYUUe9b5YCGIfDtCsqN83wKozpFTnkdZMDSYDBSqYuPIgraqGuQsXyV1xisiY6E5
         zoCDnBmsJMqnMNi9BEOD/0JXlMbH1IGrcUvEs5eHiUBOL/m24ikjD7BluitTb45nmuHK
         9XLvTWvUzYOtKlQKJbD9MejBsD19T7qOSr/CriGXwfg3jX2lYqnCv+b0yHZuBNH/+edf
         5D8Ku6JJXOtjvoym+EDyyqAwEr2B5mHhup6QclEURe+ClB5Nv96iFbiGluRPtGVnp7IC
         /Nhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDx1rAuA;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id u126si15498ybg.0.2020.05.26.08.36.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 08:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id n11so15504109qkn.8
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 08:36:39 -0700 (PDT)
X-Received: by 2002:a37:dce:: with SMTP id 197mr2023209qkn.250.1590507399282;
        Tue, 26 May 2020 08:36:39 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d5sm4784878qkj.64.2020.05.26.08.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 08:36:38 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 26 May 2020 11:36:36 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200526153636.GD2190602@rani.riverdale.lan>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu>
 <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
 <20200526144748.GA2190602@rani.riverdale.lan>
 <CA+icZUUY7a5XGwcQQ511OeoTjOzWbrgF8BZdTrLDK09QWG4hwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUUY7a5XGwcQQ511OeoTjOzWbrgF8BZdTrLDK09QWG4hwQ@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nDx1rAuA;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
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

On Tue, May 26, 2020 at 04:50:38PM +0200, Sedat Dilek wrote:
> On Tue, May 26, 2020 at 4:47 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, May 26, 2020 at 02:44:29PM +0200, Sedat Dilek wrote:
> > >
> > > Are those diffs correct when using "x86/boot: Correct relocation
> > > destination on old linkers"?
> > >
> >
> > It looks ok, but that patch (and even marking the other symbols .hidden)
> > should be unnecessary after this series.
> 
> You mean _bss, _ebss and _end?
> 
> - Sedat -

Yes. Those .hidden markings are there to ensure that when relocations
are generated (as they are currently), they're generated as
R_386_RELATIVE (which uses B+A calculation, with A being the link-time
virtual address of the symbol, and stored in the relocation field)
rather than R_386_32 (which uses S+A calculation, and so doesn't work
without runtime processing). After this patchset there aren't any
relocations, so while the .hidden markings won't hurt, they won't be
necessary either.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526153636.GD2190602%40rani.riverdale.lan.
