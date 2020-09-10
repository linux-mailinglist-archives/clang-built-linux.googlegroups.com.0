Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFHB5H5AKGQEGBDG7AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 629F6264CE7
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 20:29:42 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id w69sf4289876pgw.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 11:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599762581; cv=pass;
        d=google.com; s=arc-20160816;
        b=eopPznEwJeXxs8qQMIEetefXINx9SKEF6ykprX0SnOCbnTa5GWmaGrTXVwDW9PlBpO
         0dkkLXZin6qmFAu4QVJ5VpTp9qqQWB5jK7Grbdbf1a/cEsRMWcxRXTVI05Ia0cNyToQ0
         adV4xLcDTlfz8ydxDoV8+ZF4fOcr+Lw3qWQECzyPzKWVS2lyMuv/hE+Ro0PEUCVKY+Sl
         zaueOKg6k1gD3mS0EayNqGEHPr2QYA5T5KhzGjkXiAwQgNZ0abRHdkQ31WnHlWek8uCF
         3rwZ/S42UrjdJbR5o3ggDwCVPBqgaxQHsXiBpfRqBKGR0NqQkLnLtFhtEuGTzCFI3xTj
         t+8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WVBkoJUFTjV4NSMClgUlAaS8SgpnIsapyfBLGumFq8k=;
        b=p3f1IFu1p9o0H/agO/OHz0+265AQQtszMTklo5kwG2Tjnq2tSE/5RgsZuw2gTzbHxE
         Jn72O6XjGRPBhDRuRpz5l7RIQ687YLUz6XpwIXknX1nToNR1yZ5vIOXOjHRuDghTg4np
         4Cuk0pl1tOdKdJ26r/tN4RsA0p0jgIVuixmYkWDIKJbGt5LCv/hsLDvtnh67vjsEK5w8
         Icizstuhrxn+JzRuusrr24orow+j+gtUp/VB5/aQQCv1PNh0mZQc5IyYrJKsZaP2K2EF
         VFAMOWl0polbEarsziO+7rtZFxs/rZzY2yRebWDSr02sQYs0Vixprjpz4uylYQx2N8bI
         qYYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UCp+FppW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WVBkoJUFTjV4NSMClgUlAaS8SgpnIsapyfBLGumFq8k=;
        b=pVTIvOryKXAT3rAKIaYNEi2+sZP5zIiqusWkiLFNaVD2Gkz2q4Nne3kAvHA0xd+kXu
         mE9y75ioEXT7blwmKzG4HnNXgDHu94RI/cU7gyQ6ptPwZiJPXxwu8ROPRRCuFYJw2G03
         pOkNM7Y7D4O52pMF46Fkbbvi8YVbK1FEEOhLjl6pbe2nLPRycb+vOkFU61ajUb1DgaOo
         QZQG+upsVduVrz+DPJBaRkgul2vAnJR+wpNcC3ynq9o2Hp8Ejqu8o6LYdqCfN8z8yqmM
         mXTNffATQxA93cQxx3rjqVyAHNyBgU1VPxvLH+aJjBMsADptIvdgJgJgiuWMHNyUmwDI
         N4jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WVBkoJUFTjV4NSMClgUlAaS8SgpnIsapyfBLGumFq8k=;
        b=GgdfnBQqIbz84z/SWdq4W+dlBv4Rpc4LAwnWT3x9JJcyk2vRHEbbPuKSW/i8LN/pXH
         WZ5+Wqnw5YDckHoy+fY+IQBPs/AbdBZlAcHx1DgM/nwVpRhnyWcTIH4v7l+T7+Jl5x3c
         o3zISTn7tV/rEBtmXKftMU3YIUr6ZtJ54rH7fqYQj/t0u8e9M6l+YKZGXtdIyixKN0CR
         yZVAKHauXcFZICd724GT7cMIdRNy835ktoW5j1clbMKeKHhePnVRKyzWVzsPzN5gTO9R
         vF4EqcNZAoEXsFA8QcPAwJmTdtZ1ZyedUY9zc0zRog5U18OMmEP+8UxQGi51w7VpSmt7
         knwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DrEfnNijbcBpDh5maBM5CWHftAwWTVXLbflLrkWmCKf9Kp6Hq
	KaXapZsW8txKFI0FZbR7OUE=
X-Google-Smtp-Source: ABdhPJxnLGXm0hSadpm4qCmbK7pTMFdQFxIECkgmi2AfEtvtpXiLz8O99CpVpvLQbaEefamXy7cjdg==
X-Received: by 2002:a63:30c:: with SMTP id 12mr5623043pgd.66.1599762581065;
        Thu, 10 Sep 2020 11:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4c:: with SMTP id g12ls3523044plt.7.gmail; Thu, 10
 Sep 2020 11:29:40 -0700 (PDT)
X-Received: by 2002:a17:902:aa85:b029:d0:cbe1:e70d with SMTP id d5-20020a170902aa85b02900d0cbe1e70dmr6890022plr.27.1599762580520;
        Thu, 10 Sep 2020 11:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599762580; cv=none;
        d=google.com; s=arc-20160816;
        b=zfUjETZ/oJqZdnp8OEqgbnr8FYBrEQRN9gforQAsh9QC5vUd7Rn0r05BrnZGuaNiTP
         2+5330k1HjpaNws0A+8mgyPgWVNNPIf10+SzCGIc9vU6OUBIBb5cQhdIDMvCGzzEwVlH
         /dNPR3fgRW+jOI1zKM0w6tEeUSHIPgSRlAfGhTz37e8Cd44o45IdovL6PTT8lOGEp/EM
         pWFfz18v+6eIpOMWi8Wk1WoQC/9LnfYf9wdFSz7wVnTwW0npWKnnSF05zSuyyAtMwoHw
         gaer2EDbFWUMkXaASkk77Jv/b/4CsgKRjauLCf+409ckZBSR6YuiML8/38Nco3oX0Z5s
         bwTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wjAWuNbVBoEPyXn+QBzLMnCnG3b1YEYkoDZS6EgQpPI=;
        b=U38gHyNxfvOR/jbj065B5GLzYYtbAceR5kBiVu/905rS1KzBHhRJ6xcz9Suu2J+VKI
         FQHcvCDPcZOigws266xvWElPOlkbmyP+bGTE0udorrOJ9dRj905+6fxWPX0JcI0c77Yw
         65iWF8Wt321cohF8QxHmvPYstU5qf7fH8dSZhaaX1Hqtiu42O6IyTVIWrLc+lIuUj7XL
         a8i5sahDJ2MEkrpFuFr1BQC/z33iPKEMatIUyaNqQ6SU6qTw9pNkY05oRNLtLgKLvBUa
         pIFyb6o0VrG10ozLfceEYnbtcLv1xs9y/llzOJ7yJzIhqC8szyvYTxB+UXxjDJvWbltg
         t4kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UCp+FppW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id bk9si169114pjb.1.2020.09.10.11.29.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 11:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id o16so434968pjr.2
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 11:29:40 -0700 (PDT)
X-Received: by 2002:a17:90b:3717:: with SMTP id mg23mr1229702pjb.42.1599762580221;
        Thu, 10 Sep 2020 11:29:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z9sm6606733pfk.118.2020.09.10.11.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 11:29:39 -0700 (PDT)
Date: Thu, 10 Sep 2020 11:29:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, peterz@infradead.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2 05/28] objtool: Add a pass for generating __mcount_loc
Message-ID: <202009101127.28B4414D2A@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-6-samitolvanen@google.com>
 <202009031450.31C71DB@keescook>
 <CABCJKueF1RbpOKHsA8yS_yMujzHi8dzAVz8APwpMJyMTTGhmDA@mail.gmail.com>
 <20200904093104.GH1362448@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200904093104.GH1362448@hirez.programming.kicks-ass.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UCp+FppW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Sep 04, 2020 at 11:31:04AM +0200, peterz@infradead.org wrote:
> On Thu, Sep 03, 2020 at 03:03:30PM -0700, Sami Tolvanen wrote:
> > On Thu, Sep 3, 2020 at 2:51 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Thu, Sep 03, 2020 at 01:30:30PM -0700, Sami Tolvanen wrote:
> > > > From: Peter Zijlstra <peterz@infradead.org>
> > > >
> > > > Add the --mcount option for generating __mcount_loc sections
> > > > needed for dynamic ftrace. Using this pass requires the kernel to
> > > > be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
> > > > in Makefile.
> > > >
> > > > Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
> > > > Signed-off-by: Peter Zijlstra <peterz@infradead.org>
> > >
> > > Hmm, I'm not sure why this hasn't gotten picked up yet. Is this expected
> > > to go through -tip or something else?
> > 
> > Note that I picked up this patch from Peter's original email, to which
> > I included a link in the commit message, but it wasn't officially
> > submitted as a patch. However, the previous discussion seems to have
> > died, so I included the patch in this series, as it cleanly solves the
> > problem of whitelisting non-call references to __fentry__. I was
> > hoping for Peter and Steven to comment on how they prefer to proceed
> > here.
> 
> Right; so I'm obviously fine with this patch and I suppose I can pick it
> (and the next) into tip/objtool/core, provided Steve is okay with this
> approach.

Hello Steven-of-the-future-after-4000-emails![1] ;)

Getting your Ack on this would be very welcome, and would unblock a
portion of this series.

Thanks! :)

[1] https://twitter.com/srostedt/status/1303697650592755712

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009101127.28B4414D2A%40keescook.
