Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRHRSL2QKGQEMNQ665I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 776041B89C9
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 00:25:10 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id t9sf12933978pfq.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 15:25:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587853509; cv=pass;
        d=google.com; s=arc-20160816;
        b=WV2E7LDsKz2J0n2vJemDyeXZ+ogZvNyKxUSAQPSfB6JJAlq5LGnnj9rjUs/cGyKVhq
         UJuHQCCtleZ12KLFpy95CwLCfauoTBNrY2R7jAhX96xx2GSszH0c67LsRB3rGQowQWyM
         YnWtkvWiuHOLRM39WKt9iPqxAyGF4FNgGPGQ0oLb7778BSa3jDpETB2NgKqtu942UDXu
         lUgBXGmS4nJFfdOmnEwHYFpQePOCqgGTZFsauwgH26gKgwz/k508iW4q06PagyLFeQsx
         4KlqOcje8eZRH6BEBaDQPDFozx9lUKDlzRo6lPwEYIVZngKomy5uv+iCGbdJbvl4pExX
         c3MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Sr4fjOmRCQb0y4B6XK1bxUi3d91M+WkTn9JIHkcl51w=;
        b=cFEhcE+By7uIvTkp8De5uMkoNtbr6dIUPbjy8V1xqscixURq0okl5NMZsWuAh0mLje
         gIiItnA+zAEQ69J9rtyz2pa6TIS/lzkNLt3/s8ikNnc7bhkKo4Q9Q1aVtvgBuRCia7or
         N7CyqTYwRgUxHo810W2l/tfC7HPBi5Bt/MUt5m+ZuPqx1+zJVCSrzmokyy3gAKKo2SBM
         j9tI++2OcpRFB4HKjhCLtuSNaCWuecvLgeqrVJbEJv+5HmwtIRlNEnNJzhjiZnBTbB2L
         NkviFyljr9B6FUhh6G+aPJUICBLouYbSLLQl2orOA2ggzI9saEAT/vpRWe71fMrLHBjH
         pW8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DUXzjlY0;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sr4fjOmRCQb0y4B6XK1bxUi3d91M+WkTn9JIHkcl51w=;
        b=bohtOvLQPmHWGeIeuYSPPlTyb6PfAmLxiQBWs8K4AeUuPFb0YjxluiUic0o1dLeVpZ
         qMI0Lp+R3VtuiQnlBm4RgR/wmiHZTvl/kh26ewyeSGC45mFTP6j///Unw/5nVPb+pJYv
         XI/Nuu+amWs5sd1hq6IiMgJSmkTM+qC0BWi8DdKcYrnr8Vi8FDpTAgqexPoSR+1QSfrb
         lF/Fb5DKP1QYo4Hc2YhD29PyTLTk1ceVUIW8tDN4eMhvw2J3jv3VWMDpu1iS/T+BbJs4
         Sh9dvgwUVAIeAbS+l+JV5Qa8y9GCJ2GWYrcbyOO+zPXgDrSBIIyH5AeQnDkKT99zbNQW
         E5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sr4fjOmRCQb0y4B6XK1bxUi3d91M+WkTn9JIHkcl51w=;
        b=Ck4UP5a8EnEXtYyPcLgX5hizQIUHFQXhQ9XBUB2upeGFG4V7Zt0W851Lb0RY9kAdIJ
         PiypGEEsPD9Vk7VsWSbo6BSn9Z+tz4LQcYzpBq0Fu9fAVxsgh2pJf0ZDbRXvmdDc9cxC
         3COUHJcFBjxKRL3bB+/1VqoTsO8Qaf39KM9JmLdhN3n+mXgNCODXc28rf63V/16nvdAR
         60HURq0NA58JZouc7I8iBDXbhedSaTWPTy9x/0wW5GT9hiKfCZJPDsJCL574/eatQ/gp
         o9GXFlwxGZwZXft0hHwfI1C1kvPzQ15xcx+cr9K5YGoNDuxcIZpOpg+Ggk188s2iEi/j
         bBVQ==
X-Gm-Message-State: AGi0Pubxw5PIOnMb6rmdy+sj67TwUJS89SZhDuC37AAx502/IVjtvq/n
	ezS4lpFlUutQ3shTe8kP5dM=
X-Google-Smtp-Source: APiQypLwVMxGM7I+Du3a4+h1wj5MlqOyjdpprR+hu9JLslA6SBhUeb3Q0MftEhP8MuOtCzBQS/I3Lg==
X-Received: by 2002:a62:6dc3:: with SMTP id i186mr12760627pfc.12.1587853508890;
        Sat, 25 Apr 2020 15:25:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9aee:: with SMTP id y14ls10844483pfp.4.gmail; Sat, 25
 Apr 2020 15:25:08 -0700 (PDT)
X-Received: by 2002:a63:eb47:: with SMTP id b7mr11516758pgk.310.1587853508446;
        Sat, 25 Apr 2020 15:25:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587853508; cv=none;
        d=google.com; s=arc-20160816;
        b=Yff6SdP2lxX1z2iWkIvEWcxRSzWzVrr5kIpmfLj8EklbiXfYuX4AtrYlY/QBgakLQl
         GfUs72G5dQEWCYMOeLXx3b3fglV3hmUWqOsDcx8S1yaTdr/bkzXXmGO+GuuDeekB4+H9
         II862qQZfs3DWioaLbHjMXA5XeKT1DZtDFBbpkZOeaPiH4copvNhk+LNAkKHKGLdyINb
         B1W6ifficJN+QWiOs6aOnDYN0vdcekmS+EOdS/1mjNvB84ka27qLG7RmooJwFNpIqr/P
         PWrsJ65Kf/ac5zFWgGgEDL6g5MRVwV58BQEe6mG2VWTkvqNWTaw33R2EjVrswaTepiwC
         fvNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=xuQcmX1KuUHGcvDHgPS1loxSumVbQobQeCIW/Qnf+WU=;
        b=vN0e7xF9i8aJst9G1MpJOd+i+3+zC4F73d5aj6XOXSXzYFo9DUKfMUubrd8iicgNjd
         /6F26iQVb1u45+YepsBhHb8t91Xz7NoQGFgM90SvmNqrs/DzOSm/Dt4AW0o2dCN/43rg
         TYnF0Fxivlc/CiiTuDKPFPQJffT4XLRSrgcv/zBWSQOMBTtf4bfXcE7RSlrVZ2nnBXMZ
         CivnlL6Z5KphySlSGJdZElneeKkt9Lv3YbTbCwLFbSJqjxrHR4BCeHMdUT+yUe4/5/g8
         NKrwo18pZz7ajbe/tBUDTU80h+A1AJ33y8BqldiDde+iiZRlJoewVcrcesxQvToF9IOo
         dN4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DUXzjlY0;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id a13si750390pjv.2.2020.04.25.15.25.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Apr 2020 15:25:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id w29so11188640qtv.3
        for <clang-built-linux@googlegroups.com>; Sat, 25 Apr 2020 15:25:08 -0700 (PDT)
X-Received: by 2002:aed:2de7:: with SMTP id i94mr16651310qtd.248.1587853506847;
        Sat, 25 Apr 2020 15:25:06 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i5sm6631996qtw.97.2020.04.25.15.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2020 15:25:06 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 25 Apr 2020 18:25:04 -0400
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Borislav Petkov <bp@alien8.de>, Arvind Sankar <nivedita@alum.mit.edu>,
	Jakub Jelinek <jakub@redhat.com>, jgross@suse.com, x86@kernel.org,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, Michael Matz <matz@suse.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ingo Molnar <mingo@redhat.com>, Paul Mackerras <paulus@samba.org>,
	Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	=?utf-8?Q?Fr=C3=A9d=C3=A9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	boris.ostrovsky@oracle.com
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425222504.GA1080319@rani.riverdale.lan>
References: <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic>
 <20200425150440.GA470719@rani.riverdale.lan>
 <20200425173140.GB24294@zn.tnic>
 <20200425183701.GE17645@gate.crashing.org>
 <20200425185313.GD24294@zn.tnic>
 <20200425191549.GF17645@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425191549.GF17645@gate.crashing.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DUXzjlY0;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
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

On Sat, Apr 25, 2020 at 02:15:49PM -0500, Segher Boessenkool wrote:
> On Sat, Apr 25, 2020 at 08:53:13PM +0200, Borislav Petkov wrote:
> > On Sat, Apr 25, 2020 at 01:37:01PM -0500, Segher Boessenkool wrote:
> > > That is a lot more typing then
> > > 	asm("");
> > 
> > That's why a macro with a hopefully more descriptive name would be
> > telling more than a mere asm("").
> 
> My point is that you should explain at *every use* of this why you cannot
> have tail calls *there*.  This is very unusual, after all.
> 
> There are *very* few places where you want to prevent tail calls, that's
> why there is no attribute for it.
> 
> 
> Segher

Well, there is -fno-optimize-sibling-calls, but we wouldn't be able to
use it via the optimize attribute for the same reason we couldn't use
no-stack-protector.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425222504.GA1080319%40rani.riverdale.lan.
