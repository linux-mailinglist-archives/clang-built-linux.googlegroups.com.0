Return-Path: <clang-built-linux+bncBD66FMGZA4IORAM5QYDBUBFH3NWA2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EE13A65A2
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 13:43:37 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id z16-20020aa7d4100000b029038feb83da57sf20041398edq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 04:43:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623671017; cv=pass;
        d=google.com; s=arc-20160816;
        b=ri9cOKc6Gu/iO1wPXrC1MQExgOYcp8Km0Y7HvRlPtnxjr9vKSmAF6b2TyBbTiRdm+u
         j0289fGh3XIvBgCH1VOB1i/9gTE5V0BipJmhJABY8lAeX0kmOp+WsLdTB0nDSjcV+4pI
         phCE1d628ESv5yFrGPPmUChj8wX7Pdv94VBiiMhfF3cc7APcsySicyo1n7IqnGB9kcmi
         VhjA5/+BrwZ5SnWWj0wOtl2DWNdJWX0adqcijvtU6UNQXRk4gF6kmSIdPStcu0uwBSgj
         xi8Y4mFxnpFdoe0lYiwfW1gbnwDjkfEtyy9GyFFrSn7i/nORVkqzCnMGxrxTCnIRUSXx
         MgXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OK00lUAc3DBxsfkMti/ol6UNqAiv5dM+uCC2HeFCALk=;
        b=R9SKXTzfwmU4yEheOnnexu2CycnUYljohn7xbYrbtovdEKdSJUSUtFyfffcs1AT0XA
         lNSexO4GPpYg2xsM6CcjHxQDCILDq8g3AZxR0aXlZ22P5wtE3JCPZMHuW/xZysgVokhD
         ydXam5nkCLxuUkpUPZkSGlHxTCl4auW9WNrhvWjIya5ZDWKKFwd4QYtbwyvQrf9aFdmi
         37eqEdR8KMMf4a6nklv5LEwUN7MnaDsgMOzOaLVUM2IxFB8JnGzw4+TIUbW6J0TKMEfp
         9ZvRDHvND+Q0dof0WsghHigNWhSQk1bXvvTehDCC9QC09sHwN4hVrwaOYTkNvZaYBL0H
         13lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="k74Pd/aw";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OK00lUAc3DBxsfkMti/ol6UNqAiv5dM+uCC2HeFCALk=;
        b=VQwmojqTFnDAjNuz9E+x8ul7dBpIvYfdx1ytH8yWn9UH5NRATMmYE1Wkrf/dlA4sDx
         hxYOqzuog3e5R2wBCitk+yxEZFgc8GmREgrtUar9HYpUwPJ4wjzBHkr3BA+tyUiKa0hE
         aIOfKp+gkITFdH7eKwVh173shG7poOOQVe94S/Rgzn3wTm5u0+fdY2PKc3UOXVO55Tiz
         OajgoNe4VNatzGUF2nKeCa4aLvgPFq/3+dx8NmvlBBZGKWiy17MGQsO6c6x32P89eVKQ
         BIm4P9wKL85HtAqvqh2CzHMoHbJQ4tSdATpOz4Ffm/2lhK5I84AOLytx5bEVKUfxhMcS
         OKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OK00lUAc3DBxsfkMti/ol6UNqAiv5dM+uCC2HeFCALk=;
        b=PF5TkkAUg30Ml+lepWxNANR8bHk8ywdojC1kI6kAqKYvCygaow8hRpnl2uUGkmDIFs
         zz9rxAtVisFveMCzUVnTfrinlTg56oh66d3k5YwqSLiyQRvkiKfjR/irDEEGoHUTFsTJ
         n0goP1u+FjaPXH9fnlV24U6i6jo7O33/2+C08ZPN01pRogeswweEwTYT6wsdq59+H/Mj
         QxRTrVCS1+DvbFXlA2++1L6NZX2U5WNE/g887s4Y/PnuMvdzkhtukOzePnfan5UThKz4
         w39TmqDwnCoa2mspii1JEK0kpFggqf7zxgyiX4P/Gep7IZmE7ttRg5HyUQACpcwv7nJB
         6lXA==
X-Gm-Message-State: AOAM533mGrlnEG4ALi0b40StpP3JAJQwMfddN36lLEykux8LuTEHVfxn
	hlwaSc0gOWE59dZjnVfmre8=
X-Google-Smtp-Source: ABdhPJy1g0mOhc3HVzGXsiDB1/SA+ZeDOxVqNBMjavVE/F9wwCE+UKeNCnppW9xmWR6HStbfmcEnAg==
X-Received: by 2002:a50:ed82:: with SMTP id h2mr16875097edr.140.1623671017204;
        Mon, 14 Jun 2021 04:43:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bcfa:: with SMTP id op26ls2067878ejb.0.gmail; Mon,
 14 Jun 2021 04:43:36 -0700 (PDT)
X-Received: by 2002:a17:906:1f90:: with SMTP id t16mr14867276ejr.297.1623671016340;
        Mon, 14 Jun 2021 04:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623671016; cv=none;
        d=google.com; s=arc-20160816;
        b=kr3MCauf3QSNfae/v1TSVyIvpet91N+OtzdxhqilJP2sYmXPPxgsX8x1Y96DlDBlSF
         xzFntJ9BvkiMR3Q3MLKiFuDnMNK8Ly1cvo8YANbTQ3bh3tAhdR125LFGg4vGU9fWoNtv
         xSKlMW7EEdLnsKrzx6Of3xBkEhISVZ1NI5OVpT22jOEvdsLz35p+oJmjYa1rvlUx3EOI
         0IN35tp+tAcM2LfpEDeoXJ5W/4F5/rc96K4DJUNHkka6xlQkCRkukEJp3KbozDYClBV+
         4bd4/mCs+ePlmrKC+62ihduQvtJ+TiQvpd5OquDpV6v+xb4Cx352F3MbR2uOKb/E2seb
         rIWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HI8uNQ2N0M5Hhpj6WC1Izp202Fz3OsRq4lT6L+ArKG8=;
        b=Kr3jouGe6/iH1DQ97Jaf6ji5O+BtXSB3zOkAunY9zc2cFfoTEWG3CqdP4sYNido56L
         GvBdzrXpoZS1+im4dibu+rFQhIFGsrz+RhLBbnZv1TaYLV0BIiObJRAAHbHCI3gyxX2c
         aO54JwSz55erk/9CAE2EL/L43ChxcYz9RBnSWaVom1QrvpiF880JfwSf3zoxq81gv5vv
         KXfIeIsTT/+9iNZWX5VWKHHsxvALB020oPQVEDV5a3UQbyBgw86R2UQLbTWxjrkEhFeA
         /gaED+VpY7TR69nUtxLZwOpG9omWgPKFIfOnDjMfW6jByc0HZkoBxnVpPza5ruafyW1+
         wz3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="k74Pd/aw";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id cz2si695199edb.5.2021.06.14.04.43.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 04:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id h24so16188298ejy.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 04:43:36 -0700 (PDT)
X-Received: by 2002:a17:906:7188:: with SMTP id h8mr15017910ejk.529.1623671015979;
 Mon, 14 Jun 2021 04:43:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net> <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
In-Reply-To: <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 04:43:24 -0700
Message-ID: <CAGG=3QW9W0H-FUt2bCAf2EbRqNa5bXv5-RqYCc8guKX=4C1KPA@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, andreyknvl@gmail.com, dvyukov@google.com, elver@google.com, 
	johannes.berg@intel.com, oberpar@linux.vnet.ibm.com, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="k74Pd/aw";       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jun 14, 2021 at 3:45 AM Peter Zijlstra <peterz@infradead.org> wrote:
> On Mon, Jun 14, 2021 at 02:39:41AM -0700, Bill Wendling wrote:
> > On Mon, Jun 14, 2021 at 2:01 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > I understand that the compilers actually generates radically different
> > > instrumentation for the various cases, but essentially they're all
> > > collecting (function/branch) arcs.
> > >
> > That's true, but there's no one format for profiling data that's
> > usable between all compilers. I'm not even sure there's a good way to
> > translate between, say, gcov and llvm's format. To make matters more
> > complicated, each compiler's format is tightly coupled to a specific
> > version of that compiler. And depending on *how* the data is collected
> > (e.g. sampling or instrumentation), it may not give us the full
> > benefit of FDO/PGO.
>
> I'm thinking that something simple like:
>
> struct arc {
>         u64     from;
>         u64     to;
>         u64     nr;
>         u64     cntrs[0];
> };
>
> goes a very long way. Stick a header on that says how large cntrs[] is,
> and some other data (like load offset and whatnot) and you should be
> good.
>
> Combine that with the executable image (say /proc/kcore) to recover
> what's @from (call, jmp or conditional branch) and I'm thinking one
> ought to be able to construct lots of useful data.
>
> I've also been led to believe that the KCOV data format is not in fact
> dependent on which toolchain is used.
>
Awesome! I await your RFC on both the gcc and clang mailing lists.

-bw

> > > I'm thinking it might be about time to build _one_ infrastructure for
> > > that and define a kernel arc format and call it a day.
> > >
> > That may be nice, but it's a rather large request.
>
> Given GCOV just died, perhaps you can look at what KCOV does and see if
> that can be extended to do as you want. KCOV is actively used and
> we actually tripped over all the fun little noinstr bugs at the time.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QW9W0H-FUt2bCAf2EbRqNa5bXv5-RqYCc8guKX%3D4C1KPA%40mail.gmail.com.
