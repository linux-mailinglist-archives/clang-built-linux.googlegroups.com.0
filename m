Return-Path: <clang-built-linux+bncBD4LX4523YGBBLVATSBQMGQEGLALOCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C9885352AB4
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 14:38:07 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id u16sf5235287pfh.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 05:38:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617367086; cv=pass;
        d=google.com; s=arc-20160816;
        b=TMtwcbdtbDTUrQfC53chHEFYEjRwWMYxGVNi8MLrtzPhdK94Qx7DmS228JwoFDUZc1
         sA2+WQxlwMPGUmZJLDzWGEirdKIfCrxpZiEEnq8DeC2Qv8eDTi0iriQcsPkH69BCP8qP
         +V/4AXuntZpjhICNEZWERKLbHkRCmjxro8chfKZQFT28Sfzn/444kkHGSQ5xFkZcCaU6
         MlBlGUQgyRrf/5ZCzOp+SQzOt1yZVpsf+5I7JAZd1IF//WjTWTEiNFdXn9jF8yjpxsfH
         Pds866xkSfz/o4ufkIWKGSXI+xyVfoHQGnBrbjUxqAEAnAfAo4LvDHoPmtimu0HjRra9
         20vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ET7eBK8vMocaSIgZrM7N+2GOcbFs0u4LEUO9XSuPVf0=;
        b=L0SGyAzuG5ZD5TvMdZEjebn443u5gGSDekKxXDEq8IRbKSSrerHiTHR1xD0gYAH9dW
         E2K1RyK0SGBL7SttjvFysXTUjwA/z9G9S/vvHafFR7FowRJ3FX2e+5k+RzPiGVMTxUnl
         22nQtpDmcr6PrQjWa+rCVLfGyCfRk/ry1W52MAnd3zFWpRIUNEAdRp8z+JeVKnebSdF3
         pwW5m1PbHuB226GvFyui57UO0piOVHm78zgMhFFzXgT1/iNX/1DuL0cnaC5h6kql4ima
         CXG6h3Ky1K07ex4PQMhhgkzH5HDs30Vn9zNVRWJrPEp0B0a/D4OccAZ7HqTAXbBvtTKk
         f3Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ET7eBK8vMocaSIgZrM7N+2GOcbFs0u4LEUO9XSuPVf0=;
        b=XrVX/Or/v3SfY0i6XwzpGsWG0uPH8c+ezGhcJoFO0Y7mceP09IWYY/n8D6rY0J0ta/
         bgEm7KYb42Wk3/MaIUK6hdwHc91jnrzvwO/7144fzewyiXBgfy8z6hhWAJByo/cOqMwy
         imsBVFljhYW5UxG3NXHDwWNBHol1GaOFtEeuHoz4GbJGfzgdOTAD1MR0P4YAbkx2ArGx
         XKp6jnfUx1keov6Q08RvVh4XzAvHzQfius1aqMHPKmWxSGmnrxCsW2tFBvvmaFxpiW1E
         wB6tTpM4M/ix40/7Gu0BaHxynwFYa4XixPZ2+YDOH5cY7eXGJ7+nT+cAa1OEWLi5SPb3
         hBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ET7eBK8vMocaSIgZrM7N+2GOcbFs0u4LEUO9XSuPVf0=;
        b=GFnDYa+dpRniAN4UTxKSNNLWmkF48pZWwL7kC/JSPp3lOpfMrtK7ls/4FCvIZ/3qE3
         MNigN8CPm7LIsngxxgcBazFotlVtK1Eap/rl2fuh4bIeCVC9A/FhxMK0HbtW6ccb+LLP
         XgJ3nVVLinCv021XzOuvFjhw4nqGz29432lmda+1TYcPkXilAphylg/cOrAGQvY3Adz0
         X/leGBJU0aLvmifTRgSKKHnIIvkhPw0Pcl6VdCSxc5yQRrCErb4qaWdumnHjNzgARP9K
         +1SKy/mkmPKtFIReLGmdzRQRO80e0EVHKd5HLCMCeH0Xl7upJ3Xj3zCJcS9ByAmbugjs
         3eTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iBth0ioSFb2uNL3hr7svdE4C6QsSFiU6dsoqroSzjAODAyTKl
	nU/al4Qzz+v6Wv+M1yaMdUk=
X-Google-Smtp-Source: ABdhPJy34BjO641WMZ6X+/1te3tUoxJsalc1MbqY2044uN8sbpP6JBGPTEBtIEUJhCYEgZqSE/v2MA==
X-Received: by 2002:a17:90b:fce:: with SMTP id gd14mr13348050pjb.64.1617367086292;
        Fri, 02 Apr 2021 05:38:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls4412600pll.4.gmail; Fri, 02
 Apr 2021 05:38:05 -0700 (PDT)
X-Received: by 2002:a17:90a:420d:: with SMTP id o13mr13770235pjg.61.1617367085821;
        Fri, 02 Apr 2021 05:38:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617367085; cv=none;
        d=google.com; s=arc-20160816;
        b=H0NUrfBQNVAlhF+BTshS6P2TkHHAHey5f4Vpwt/YXenEJj9J9YV+ZZsL7Eza+QN23L
         fw5+NOSMPNaHjDvPXuhk1LUA8vk+rBFcc3KsJ7ZbpnVUeLizS9AxflIUdmNjUkAiNegJ
         MzN29gjbYzCeEGlUI9MReyYBufQ80dv94bTFk3QjvUejgu4uslO9syict/YpCTVp5eYF
         JLUtOQV52OGjN4mA/B13paYOdgmzu63uqT2PIip5wax0U/YB3vwBhnQNQn8P2Rgvqe5P
         T4Ur+jsH3Pv90kIrGFLzR9uLaZZ2fhn8WNkWDzOQ8ZdMZNX7MDYzwPGo1fpwh08H9gFs
         WeOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eHJGaEOfX4nI1KlQypKUkR51RNhEfcc6pcxR7SM320U=;
        b=bClDYgW/tqK+WLCzeQxaewsUOpFH+94ub9K69UZlCNrxs6yzqYnR0I1j4L+b+s87LD
         Qgc10h1Tukc3hg/NmoHDu40zNfsMdbNlaz4ZOpu/WEv7WZUl1W79PnXu8hlxR/ppYEMX
         aQa0n0yqfdn4HCoWL67/xtAkXOd4hDxdRcB10MBnZg9twG9TAiwmRyMWbv9WW9PRjqsq
         Ta0rXZNUrUOTIBJgjT5A9hgHDM9TLqfgUnozxLG+NWdXx0QdPO4uJTR+/1U8m0z8R2qi
         /mpdrKDWeii1QL9htbgOOF8oszvxi7s1s+DBbQ61dnJM+SrqJKqkv2afningNq0WvIz8
         HJ9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id h92si490706pjd.2.2021.04.02.05.38.05
        for <clang-built-linux@googlegroups.com>;
        Fri, 02 Apr 2021 05:38:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 132CXAtf006308;
	Fri, 2 Apr 2021 07:33:10 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 132CX8mb006307;
	Fri, 2 Apr 2021 07:33:08 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 2 Apr 2021 07:33:08 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        "Jose E. Marchesi" <jemarch@gnu.org>,
        Kees Cook <keescook@chromium.org>, Florian Weimer <fweimer@redhat.com>,
        Christian Brauner <christian.brauner@canonical.com>,
        nick.alcock@oracle.com, Josh Poimboeuf <jpoimboe@redhat.com>,
        Will Deacon <will@kernel.org>, andrew.cooper3@citrix.com
Subject: Re: Plumbers CF MCs
Message-ID: <20210402123308.GG13863@gate.crashing.org>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com> <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Mar 23, 2021 at 09:35:10AM +0100, Peter Zijlstra wrote:
> GCC's status on asm-goto with outputs?

http://gcc.gnu.org/g:e3b3b59683c1 (and later patches fixing issues).

asm goto with outputs is a jump instruction for GCC, like any other asm
goto is.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210402123308.GG13863%40gate.crashing.org.
