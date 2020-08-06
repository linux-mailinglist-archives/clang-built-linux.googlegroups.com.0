Return-Path: <clang-built-linux+bncBCIO53XE7YHBBZOXWD4QKGQEXTPHYFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EDA23DB86
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 18:12:22 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id f13sf17852869oop.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 09:12:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596730341; cv=pass;
        d=google.com; s=arc-20160816;
        b=dD7OcKOZ3qjQZpnYe3DETio1HRmunWHSuZZSyddkLOW3iCS2xH6A/PuM84eGFhS4c7
         WgTu1tnkUo9VBGmNeUWwA6zoGx5OalDc6XaOug90ZBI4Vf/JNmEYxcVPq6eHOgWsMrba
         8IFr5PfIle2Cs2NY0JIV528VFuMtNtZBvhMxRDF2ivYwOt/1uUt7nWmWHWb1vOrS18sK
         Uf5eCGj7C7+9rjuQ3ioPWm9qZmR5dv10bd2k1S+X0prY8AVKvn/reglED38KRYNj2Gg/
         1WMlNkg25KugCIKiTn8rh87gVJeYrBPBnC44aiZTW8nwwiX6vD0meS1KiiO+umNS+eli
         rH/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=MGqFHNN1VcmhEftdrPnheU/+hmcmAxDtUvNaSYsRxnI=;
        b=V8MiR3NQVKvLPRr9OG+IGi/dn/DZlyjWShKCxq5/h323Odspn2V8YwVT6dufmFu5oh
         yjIBmNe708iWpQfIyoJy5Nt5VqFqBOB728XH2bt0KJOHIjkJx7wNsDI9hDubKRU8zS7s
         T40DYfqUgUgrW7qhhqz0EndTR6CrBjcM/YG3Nmb/h8UCHtWOUTCoeLPDOZK/O8UtPc3F
         a0SLELqyFQ6W4k4uhgEjTcqt23mZd5LEpZFCSooSA9+lGxOhKnyEw6p6l6At3o628Vlp
         jACd1aVWGrh38iCZKJF1IIq7MjfbC2JM/6V9jRTtC6rnjaEP+13hvENO8DQ55BACsy3+
         AQ1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rhr3f/+d";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MGqFHNN1VcmhEftdrPnheU/+hmcmAxDtUvNaSYsRxnI=;
        b=LBtgoWDf946lUN6U/RgM/lHTcxOsI4Rpus0tW57rGyGA7ccHn/fzyk2Wg427xw0KgV
         fGl9gHTjzwj1QpBAONtb9MRq4siVzGNW94WLEqDXlyN+zzcy26rtHAeptTYpyUnfMu/q
         PdehNfhc5fUePtRJxgcSc87v9DNEUQxjnUBOhAev8RKF1+wPcfiDA4gUN2a69tF4SBkY
         vwTrYIghii/JDHhYfcKXgZlJNJ7GKi+tmQ8ip9winoGBdfns8KCe4zXwwDwiKpOgVWlm
         IX2cIoN6A4Z+7muNn11h8jwLSw9ZU1ytkdLavS6qLWF7cv0sRqZv/ODc3pBVA891pyO/
         Kr3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MGqFHNN1VcmhEftdrPnheU/+hmcmAxDtUvNaSYsRxnI=;
        b=Q2KRd3AYERT8lNCB6yFi5etXJ4Y2cgz8ybVEo+0G4ZhARcHQT3WNe65j2bQ54ncECc
         VieYcXc/hpG8Wwy6+IJ/auJBIGg+Mz39EY4H8Mzrtnv4GVO3hIvAm8t9+qqTFJePZ0gL
         Keu+Dr6K/fLD6rg5PwifKvEbBs32T2aOInnsdTKUlxv7sh/QK+d2LIA976P4wxY51Efx
         xhjhJt9mdazoj8yI9GjAxAbdA8DnvQ6MdZ26CmXryEoTDyw4rUOqA8xr39tRI7CeyDPq
         0HsYlzB5lZRl87bLNyRaU63NImMIQZTLICExBg945lncveWCkpoiMHb7dHoOYz9nM+HB
         m+9w==
X-Gm-Message-State: AOAM531mznade4+ivy5HfvUJnlLqlv8J+v7tqlLRTpNwTNyBvAjD5UHk
	qddynl6aGux7DlFKljuMKXg=
X-Google-Smtp-Source: ABdhPJwqF2O7SWDYnejJF83Ux5igBVEVmRErTvG2GLg2SfXm11T4YTr0jGBncgKbYMVcLCfRJ49MTQ==
X-Received: by 2002:a05:6830:1bec:: with SMTP id k12mr7647110otb.213.1596730341465;
        Thu, 06 Aug 2020 09:12:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1dc3:: with SMTP id a3ls1468524otj.8.gmail; Thu, 06
 Aug 2020 09:12:21 -0700 (PDT)
X-Received: by 2002:a9d:67d3:: with SMTP id c19mr8070277otn.162.1596730341148;
        Thu, 06 Aug 2020 09:12:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596730341; cv=none;
        d=google.com; s=arc-20160816;
        b=mIPht39cJuyfBV6MuUbn3gVywo9+2KekykNTM37EI3Zl1vD9v1ZFiohw/VSF4w2fZG
         erTUgV5a5uSukZwfl/xNL6X/DPyUs39Cpd/9jC36TgitkjbJeRhSUrxdyBrUSitzNxya
         9bPnkBVs5OdZLd1/yCFB5ZJCATzkN7++fhPCRDJnelfPWxg9MPlLyWMtzWp2bwAcCdMf
         q6JKIYbn+O2ZrTnhK+7GgOXisdDCVjhWDLA+8ofS95DxOwT49X6hoGlLXF++INiylJoj
         D/ZQJPmKBrAtCxdv7nJIXt29UgEN2Hp3wv/a/TxR8AoMg3a90DYrRHn+gE5KQvdS7U2K
         xLeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=LNB4XrMfx73bJTHAO2AhrZUygv9EzgmvGK/ZVIbyqWk=;
        b=E0d+zHOp+p/VH8S3ZojGO2Kz5wsjCnLYEIGHN5mLzDEhUPmydw11p5jb06qpSh9Z36
         VAta2s7ODLl9Mm3jzjhMsbZZei+fRY6vK8b+GQ8L9Adum9M1xhJmxOVJ4H9DCFpqFytb
         W4LhHyKs0Jf8zyDN6/NSvwrnTIzVlJKBmM78Q6Iuyf48kxMFp25HxF+AK1ia4rBYZXio
         wetrjt4US0ZaZ25j1XYrkzChB0Ot+/ldmYkpOOwMXGj9KvulITAWtnhVN+53M1RChWEA
         G9EU5I8U2rDgEm2XMGFdxzOT3Yenmgy/zsZsha1bvInSBymQwy2IsYg7ThG/GscnHxHX
         WkeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rhr3f/+d";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id s18si402834otp.4.2020.08.06.09.12.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 09:12:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id d14so45403536qke.13
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 09:12:21 -0700 (PDT)
X-Received: by 2002:a37:a848:: with SMTP id r69mr8799325qke.58.1596730340541;
        Thu, 06 Aug 2020 09:12:20 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id l11sm5121757qti.59.2020.08.06.09.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2020 09:12:19 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 6 Aug 2020 12:12:17 -0400
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/4] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200806161217.GA682406@rani.riverdale.lan>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-5-nivedita@alum.mit.edu>
 <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
 <20200526151623.GB2190602@rani.riverdale.lan>
 <20200526171340.pdbautbix5ygdvgp@google.com>
 <20200526191411.GA2380966@rani.riverdale.lan>
 <20200806111953.GA1630647@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200806111953.GA1630647@smile.fi.intel.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rhr3f/+d";       spf=pass
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

On Thu, Aug 06, 2020 at 02:19:53PM +0300, Andy Shevchenko wrote:
> On Tue, May 26, 2020 at 03:14:11PM -0400, Arvind Sankar wrote:
> 
> Side question: are you going to submit a v3 of this?
> Or i.o.w. what is the status of this series?
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

The latest is v6 [0], which has some minor changes over this version and
is rebased on 5.8-rc7.

I will send out another rebase once the merge window closes.

Thanks.

[0] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200806161217.GA682406%40rani.riverdale.lan.
