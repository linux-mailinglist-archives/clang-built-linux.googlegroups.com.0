Return-Path: <clang-built-linux+bncBC2ORX645YPRBDO44D6QKGQEIFUKMDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB3F2BB7F0
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 21:58:55 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id cu18sf8001048qvb.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 12:58:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605905933; cv=pass;
        d=google.com; s=arc-20160816;
        b=DEKUPZG24FXcovHc7NybkDh3n96AVaOZdnBh0zyYbBQChxQM+k76K1UJU7CjvukTzr
         FLB147fVVuCRHxEi3/Z6odyNYMu4ANZKRH2PPNIW8XNARYTziIZeniq59Ui69C0QLIwi
         ik/2R8NpwmHfJV82xprQeVmEw/ejUmS6vncDRX25wgZHK4rHzDdC5dQ8Ypeq96wa6Dwn
         yTvWIsXIIjMDJtP557HtEU1DXa8iCnkzKwOoNLTMRnyhvYVvc1ABfXSwel3t+2EYS4ZD
         IgDOaG+uHLBBi1rO8oiouj6M+4abb35Tksh1w6xFJkvcTDLANx9epLT3BdGwyKa1ej0O
         Dskw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Fle2EDR3iBW7RqE+4b+s4+wjnkbq2W0Y766jGPL4AOw=;
        b=Qz+c8eiFLhbbeJbvFOQ46Rv3iYaYfHrbrTurnfkSRWy/rgyGw4KLbnD/lK+rK1DRA5
         PUKfaI14oJSxdrX+vNAV5w+7VlnXG7AELfCfAj/KkhdiqYx9LrMwbcCsrJ6gOdPOGcCL
         r3vj64wqMVMzmFx+oJSSkt0O/OWTnR3yHXQMy16L8eW7c1zUoyxGK+wQ6PfABRmUVqup
         5bhZXfDXK4HwtLHbTcxRlRZa/PooBUm89f3QfkGdLj5NHEw3GThhz+lNVSpKqtld/6C6
         f1eHqu6TNVhlPtUNhS52PVhqqCIO4xuFbnacCq12CDIvSzzOduitpOFX2vh8Uk2m7BD7
         wLwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n7Q8WZSH;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fle2EDR3iBW7RqE+4b+s4+wjnkbq2W0Y766jGPL4AOw=;
        b=dwvdyPBk8PZ48/m946nDhqmoEZnnGVeKPvGSrODOSUklubNH33XwjK04lSVTKzovVv
         YjoMhI924DxcvwZqjlWVpXMxRp8Gm6Rb8rk5aOd+FzuzMCaQbTIucWTGC5gkzavCgBwc
         0/lIH5GsDLg8CGFnmq4+l0vwXaelAKQH/FX5O3Ywk5W0bLbn5PoNgZ7DLkWH6/1mRND6
         dVEEMc4UE+PlkKd9NSHJMD/+qbfD3Wree7/KhRppLZrdFo3GWVI41Lqb+L3epgoZT0sk
         Nyv48xdRNqQKtsM4OOsDSJEelWhevEwRGf+oGkTh4stP9BGfbRHrop5yraSXEdm+RuEm
         ZTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fle2EDR3iBW7RqE+4b+s4+wjnkbq2W0Y766jGPL4AOw=;
        b=T1dxeIvHvfJ6HQtp9G34h/sbUzk16cvCDBC6H7Z2eDLgxn/v4/N0ha5HlXQoYnoYF1
         usC93cgXLRahoTkv77UesNkuSRWaaHyO9orYuxCMndf2QbCXtL6SDRbm4m+e8FeDocAq
         tfXnppIqJ3O9/7AELxBS2NrUGATJqpPXEjcb/ZWRULsyzVU1KqPPID+Sgk+l/bStdjfA
         WsMOSOMRdcgnoeeUOB79QGSXAxUtbr4kCZFfX32QiOiarZvLYAFLX5X62sOCKqkjW0nz
         VTTM1lhft67USqTngW5kayPNdeHvo14anYb3QejWMhyY9Ypzvz+sd8CMDCnRBJ1aSSR3
         w0Lg==
X-Gm-Message-State: AOAM533/96FS0z7teBDpiTE7jXcdRdcuYAM71jzv1OznazOdUEXjU7mD
	1o6u6LQ7erlrCO4b4vjKLZ8=
X-Google-Smtp-Source: ABdhPJwFWjlKT2OxGqTwMhy0qBEc6Nc+SPKmBS1WBAsywbafjo9QgXcg7TKSGOznXam3UnTnUyeCQQ==
X-Received: by 2002:a05:620a:990:: with SMTP id x16mr14328778qkx.316.1605905933788;
        Fri, 20 Nov 2020 12:58:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f78e:: with SMTP id s14ls1745184qvn.11.gmail; Fri, 20
 Nov 2020 12:58:53 -0800 (PST)
X-Received: by 2002:a0c:db11:: with SMTP id d17mr18026689qvk.39.1605905933375;
        Fri, 20 Nov 2020 12:58:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605905933; cv=none;
        d=google.com; s=arc-20160816;
        b=yzq9K7bp/1rkTKTbjBcrlzLJS3EaxoVfuNQcqJ4rUvOFtOJ6nZ0hGS//1lQCWBsJ1w
         zbDql/in60F9wb3hSBNZcjDjLO2d24htbUfW2iQVRq8VL6mojY78r10SizPDEUBA6J7/
         bKXhN/s3nj7V7aRFsMYT2sAzXm4rV/zHiR6CxFwmVtKy7VDkbtMcxZtIpkbUfdd9DPl8
         r6JvzyIlyY/TapDo3xxvtlPFkv2pxPtBQhTJ6ViCriNeyPv65sh5LNpxyZVFQx0WMDjr
         l0OLTISXgvqpQq7ZE6Yqv8muL9Gcqh5R+j0lvcYrcg/RMMePKOOCpX5qvxxumgo/AHkf
         m8fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JWd8Wn96hX4ViEXOk8cnBriUSzyNGlVdd9D7G7X9krM=;
        b=VKx1mhixcFILZ4I/+kR3FPhU+oOntNVtPRkFRqLrmATmjA/YgPR/1hFBeq9v/Od9sQ
         7SNcubuy+Ycw3PBeV/2kDlWppV6BMkHOv/Nje1VdlVSIQTd6tEIafGx+Q3Kd6ye6qPIz
         dubBP2D8M931mect6G4btqm4HNAjZqqkyYwH0YxVARPGCPhWc8jaKkrydN48/q4ADKjc
         +OU6eMFBsjlPEaMmtdiKHTFLosefjfleUeDSConZlhlPy6JrJLmQCbQ5KZjaPQGVNY19
         ztaYDtiXvM0rlMDf+anM1jdO28tKqiSnUHvvTqAjGHPeU0qy822usGNQ5tELVGbJAqfT
         gJaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n7Q8WZSH;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id g6si275612qtr.5.2020.11.20.12.58.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 12:58:53 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id 103so249213uai.9
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 12:58:53 -0800 (PST)
X-Received: by 2002:ab0:23cc:: with SMTP id c12mr12322573uan.89.1605905932783;
 Fri, 20 Nov 2020 12:58:52 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com> <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
 <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
 <202011201144.3F2BB70C@keescook> <20201120202935.GA1220359@ubuntu-m3-large-x86>
 <202011201241.B159562D7@keescook>
In-Reply-To: <202011201241.B159562D7@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Nov 2020 12:58:41 -0800
Message-ID: <CABCJKucJ87wa73YJkN_dYUyE7foQT+12gdWJZw1PgZ_decFr4w@mail.gmail.com>
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n7Q8WZSH;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Nov 20, 2020 at 12:43 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Nov 20, 2020 at 01:29:35PM -0700, Nathan Chancellor wrote:
> > On Fri, Nov 20, 2020 at 11:47:21AM -0800, Kees Cook wrote:
> > > On Fri, Nov 20, 2020 at 08:23:11AM -0800, Sami Tolvanen wrote:
> > > > Changing the ThinLTO config to a choice and moving it after the main
> > > > LTO config sounds like a good idea to me. I'll see if I can change
> > > > this in v8. Thanks!
> > >
> > > Originally, I thought this might be a bit ugly once GCC LTO is added,
> > > but this could be just a choice like we're done for the stack
> > > initialization. Something like an "LTO" choice of NONE, CLANG_FULL,
> > > CLANG_THIN, and in the future GCC, etc.
> >
> > Having two separate choices might be a little bit cleaner though? One
> > for the compiler (LTO_CLANG versus LTO_GCC) and one for the type
> > (THINLTO versus FULLLTO). The type one could just have a "depends on
> > CC_IS_CLANG" to ensure it only showed up when needed.
>
> Right, that's how the stack init choice works. Kconfigs that aren't
> supported by the compiler won't be shown. I.e. after Sami's future
> patch, the only choice for GCC will be CONFIG_LTO_NONE. But building
> under Clang, it would offer CONFIG_LTO_NONE, CONFIG_LTO_CLANG_FULL,
> CONFIG_LTO_CLANG_THIN, or something.
>
> (and I assume  CONFIG_LTO would be def_bool y, depends on !LTO_NONE)

I'm fine with adding ThinLTO as another option to the LTO choice, but
it would duplicate the dependencies and a lot of the help text. I
suppose we could add another config for the dependencies and have both
LTO options depend on that instead.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucJ87wa73YJkN_dYUyE7foQT%2B12gdWJZw1PgZ_decFr4w%40mail.gmail.com.
