Return-Path: <clang-built-linux+bncBCIO53XE7YHBBBGZVH7AKGQERACP3II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E982CF2A7
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 18:06:14 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id e142sf7878653ybf.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 09:06:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607101573; cv=pass;
        d=google.com; s=arc-20160816;
        b=BOdGS7UUHFi1gzOk8s/Dzr+7w5KbS16P1zNzFJNCWkzNR2oHCmKviWl4JcdJQQbCoI
         yXWYS/aCS8vXdkF39wS9KR53g0228VVZh0oUIQJHInMcnFPa3lQZXEzf5p4P6sqXNxig
         hIiMCBpPC88mz1eNanXHr3fh1PBLAKt5hIg93XwI2UelIdSLGnBDXfaSk3x6CkukPtqq
         YufVx2EdbI7TATlm2DK6LLUhN+m+ZjyWf+qWwlMiBme8P8kxEtQeu0mi/aqILcsmb8zJ
         CJpmTU6aoScMo+cAIt1Rx5rvDSvQFE5DWKd3Y+97nbj0GcjRFsPpcl8frT57ydnBCLXH
         Ow1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=v99E1n7g80kREpsHiZWcP8dSDtjKC4azzeDcuNY9ryE=;
        b=Zq7n+3beNp4uxiswSQu2H7nEqbiApPFRoo3+oEAINNIVWoEynE6gXpRJkSAt9gRq51
         WADHx0gPTcL91uPpLUPy8aCnXU1yZMZD3cd4ggkeMzFV2BP1WiPVARh8P8BBEy5q7mHd
         D+RZ3CiN+fLiazwqv4fYFtTbMO/roC4RC31dBiTkgWyL+zBPtMweaPG3UmWvb31LBA7T
         kuZ/diw0/2jUr+knFQuPndKHT9hrcUZJPygyxXcSoVj/J3XqLtH7hG9WOLpRBglQNq6V
         rxfVjXfBvhxWS9TwoeA2yrVE0ZS/P6Q81M4VPr9NlAUQimaXvD/tWdTzCFMVZ/55G3z/
         UiQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nm0A/vqW";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v99E1n7g80kREpsHiZWcP8dSDtjKC4azzeDcuNY9ryE=;
        b=gWVq7QEHCkR9vpkZp0s6GZPhpJassRbX7i/LNAiJUhSqAC0JVn+pqJZaNjVVNjChls
         Sg6wRl8YAvkSBVchJTF1tdtr5iUPvUgsGd8MUM/dXHS878FU50iKoPuRasLwDESGREJK
         HXxVpiW5Va2+CTpu7w7GnmdF23tR9P5Hgpy8T/Tngg0X6304qXjhf5AV0W8zfgMSPv8T
         JL7pCwKqx+zh/quK9cg8i2CuC40IMr688VHEIDsk0xJhnw51FhHiKjVDBcDLvWZbGefY
         W+C+kLsvbbIbRFey2Dw72NKno21CC9PClzI3E7Vb74havk0OfwA8r7RCILx8bqbIfQ75
         YjNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v99E1n7g80kREpsHiZWcP8dSDtjKC4azzeDcuNY9ryE=;
        b=DDL5PQ2WO776DV/PXDTgfxA2yVsaDJClE4JjWnCxA63x55I/waJNbPwEcrhR5uyuff
         56+08CyB2eCQ659wRECp0oetGT8l+aBlT/ws9s9UtbMrS1ESLfgzfQAyrYL+ZZ2j6LtX
         CuKWHpZEVwj0/ygz5mg1hNRY9/EOYM5qKiEZEcthwU77MdrhPLp2o9bdjj90vDuJSLb4
         yHZ2a8AXn79+uV471/3ThjjQd7V2l+UTLPyJ2zVjbBGGjE2yOtuZXvaVvRlU+RyiqcL/
         ajBDMedNri/nnf8NByCXyKUtUoF3jC6Ahzvd3Kyc8u6ApdK22k5JE7cv5qY56VR83ajh
         waFw==
X-Gm-Message-State: AOAM530p2wYWfy0xzfZwZkZhGj0X/RwUmEXu0//M7vSNB145gCXE/3Zq
	kFq8WkRx65n7VpFRJAiGxE4=
X-Google-Smtp-Source: ABdhPJzjOcpe+51azwedbKTrTHtdY+hBDgcwIncIGTDtuGkOAkhSQw07HI1BCB6mVis8+l/Z/f6G+Q==
X-Received: by 2002:a25:da93:: with SMTP id n141mr3420258ybf.151.1607101572763;
        Fri, 04 Dec 2020 09:06:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ce49:: with SMTP id x70ls4697596ybe.4.gmail; Fri, 04 Dec
 2020 09:06:12 -0800 (PST)
X-Received: by 2002:a5b:341:: with SMTP id q1mr7271948ybp.516.1607101572297;
        Fri, 04 Dec 2020 09:06:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607101572; cv=none;
        d=google.com; s=arc-20160816;
        b=c0R4yxNGQp6MwAnnn5+t6AUuT/H88/h5JEfRq4kIEzrerdKE8Lb8Pb6kmI/23LAYtd
         wbUv/svSaSTyi+ObKLFr2VwYWW6W/50cSD2qm5Ppx0TllXrzGqXhCVYu6x3+NZ/HTVzE
         2ndppVLDuUicSOnHcGs5gxsK1ZSEVLCmJ5SWiFBR4vIfODd6nkLkEV/Q+fAVH6mjtjpv
         pb7mnCaXsq1mH6WlpJ/oLNX2/iweU6hAsRjYS4zJHOLxeTcFraX8SlJl2B5oj9Dn7u9u
         woxMunHEBp1oWTg0KUxk7qhLmEj3C2KQVpQPVFd93KQVcv5plNG6QGki5uGppoqcm7Go
         oHZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=kdGdxzD3ppO3x380ols5ozCLZelwGJMtEPKpgvRZ6Bg=;
        b=xrRsAnNbBv/RJT4JtaYPmUgQs9IX/XJIqOwKqrxDFC5i0W9Y38Nur5C+WVkawNhypx
         so7p7UOH4lHIhEAdv/RzFLhR0DkrHiEeHj2Rf6I75yoZhKK1kC4JzWfghvmFpguYw1Tn
         6OUyc6r8fb5Jkq8lHEsmSfHoZXOGNNfPFyedo0T1+zew2glCi/42t8hvgal29eM8RHlM
         6FULS4bMZoF2HwxN38d2uUuzi+NLtBd1/LgZ7o7tr9L3Nw7zgM4xjm5yjHM7gFo/81r5
         N1tpvNm0krm9rbBhrja/FJpPoyCWU/sVf3/jYaOe620UBVUtS9Q2eqBgG1nlFQOpsVsT
         IHgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nm0A/vqW";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id x14si221137ybk.2.2020.12.04.09.06.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Dec 2020 09:06:12 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id z3so4391117qtw.9
        for <clang-built-linux@googlegroups.com>; Fri, 04 Dec 2020 09:06:12 -0800 (PST)
X-Received: by 2002:aed:2123:: with SMTP id 32mr10285888qtc.329.1607101571841;
        Fri, 04 Dec 2020 09:06:11 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y3sm5651039qkl.110.2020.12.04.09.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Dec 2020 09:06:10 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 4 Dec 2020 12:06:08 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jakub Jelinek <jakub@redhat.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 4/4] Kbuild: implement support for DWARF v5
Message-ID: <X8psgMuL4jMjP/Oy@rani.riverdale.lan>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-5-ndesaulniers@google.com>
 <20201124172836.GA346213@rani.riverdale.lan>
 <CAKwvOdkGvLrPr4pHi4LKCF5t74+wencdy7r38d3k_4pC9pQYwQ@mail.gmail.com>
 <CAKwvOdmEVM67v8PqPWHP-VyGTkQpkWv8FdOTbxQ-7ebvSummMA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmEVM67v8PqPWHP-VyGTkQpkWv8FdOTbxQ-7ebvSummMA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="nm0A/vqW";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
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

On Thu, Dec 03, 2020 at 03:28:14PM -0800, Nick Desaulniers wrote:
> On Thu, Dec 3, 2020 at 3:22 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Nov 24, 2020 at 9:28 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Nov 03, 2020 at 04:53:43PM -0800, Nick Desaulniers wrote:
> > > > DWARF v5 is the latest standard of the DWARF debug info format.
> > > >
> > > > Feature detection of DWARF5 is onerous, especially given that we've
> > > > removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> > > > support.  GNU `as` only recently gained support for specifying
> > > > -gdwarf-5.
> > >
> > > With gcc, using -gdwarf-5 even without -Wa,--gdwarf-5 results in
> > > considerably smaller debug info. gcc does not seem to generate the .file 0
> > > directive that causes older GNU as to barf.
> > >
> > > Should the assembler support check be restricted to CC_IS_CLANG?
> >
> > No, because if LLVM_IAS=1 then the assembler support need not be checked.
> 
> Also, if your version of GCC supports DWARF Version 5, but your
> version of GAS does not, then I'm more inclined to not allow
> CONFIG_DEBUG_INFO_DWARF5 to be selectable, rather than mix and match
> or partially support this for one but not the other.  Either all tools
> used support DWARF 5, or you don't get to use DWARF 5.
> 

Why? Does this actually cause any problems?

It seems like the options for gcc can actually be very straightforward:
you just need a cc-option check, and then add -gdwarf-N to both CFLAGS
and AFLAGS and you're done.  Adding the -Wa flag is superfluous and
carries the risk of interfering with what the compiler driver does. Just
let the gcc driver handle the details.

Clang/IAS is almost as straightforward, with the only additional edge
case being that for assembler files, DWARF 2 doesn't work, so the CFLAGS
is the same -gdwarf-N, but AFLAGS gets -gdwarf-N only if N > 2.

The messy case is only Clang/IAS=0, which needs to check the support
from the external assembler, and needs CFLAGS of -gdwarf-N and AFLAGS of
-Wa,--gdwarf-N, because Clang doesn't pass that option on to an external
assembler. This is why I was asking if the assembler support check can
be restricted to CC_IS_CLANG: nothing but Clang/IAS=0 actually requires
that check.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X8psgMuL4jMjP/Oy%40rani.riverdale.lan.
