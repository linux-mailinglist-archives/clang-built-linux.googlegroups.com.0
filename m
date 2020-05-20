Return-Path: <clang-built-linux+bncBCIO53XE7YHBB2H4S33AKGQESR2W3KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BE11DC2FB
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 01:34:02 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id g16sf2455727ooi.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 16:34:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590017640; cv=pass;
        d=google.com; s=arc-20160816;
        b=RbKArUmGOFbwJKEuHXTrJk/u4I6l1MZbrajDlNvYBW5E0amgoXnlhCscbUmmfldM7O
         F70o1yY+z011eWy/GqtkEUApaa+IlOxYYXc/9jMud6FXBpUGf81nEIdrf+wjme99jvXx
         X5E0pfq/RG7TIYwsDzPwpjvqR24YQlfK5jGKCxLC03mhfX5Zturbkg7QjrzXdZPKA3Kl
         TtuBw5JL3xydN3LjDyfqiSbMEBR5jKIX4Y5hR+owJtBOFDXhnooFCAj0S7WX8b+FHHwb
         uK4E2VkrPyYfT2972UEyrPp6HHoftsjgvZ3Gbv5O/JZoX7WzC3dTY/spcocrz8RQT9Hg
         2SsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=CrXLjCzC4sMRykOFkoRCRJDhm8rAYQ+kzMrIsY7BsYg=;
        b=klUWUAIM/4diyd9gxM8Mp1nlNyMM+eJN1MitLLOBXiQs5WqHsmCiKPdLPo9a3V2b96
         m3vgPW4mHDod4spZzFTXLgs7cNc4HvxLWY9IUTnhkFbSpabSGLwtgOrh0y+zHdV3ggif
         bNh4zguzrAp/wrlpLcv2jD6qfKnZcn6eC3heW8CJt0tCf+o0jZISJwkL7pRyO4wI3YPi
         zqbj7t/qrZ2ui9AOcDTTIETKuxwW9KBya7xQWHpHBsNJ7NTZcUuBPyho/eZMdOTmkAsr
         RsfWhc5FBBMJoju5lBgFNchSU2SfnvPFIXti/Iq9Lsxewlc0vFd2WOSjWNPaASgexIe3
         8Gmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q43nKW9c;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CrXLjCzC4sMRykOFkoRCRJDhm8rAYQ+kzMrIsY7BsYg=;
        b=CsP2FxlU3jJBhW5UXj+muxgokMymh3Eo4+JUQhBIEQRyXptQZioKaeG2eJsHT5i4qX
         HYpVcrPjgoAxO0WrXYl9N+2GFMMhg8cesyimQ/hDTE5E+IgRbtE3Tx8Vm4SflFtWppM5
         5ZDNoH8j+1sKySQYhV0KIp4DckVCplaOKCt8cHe4gDiV/jsbBIvlpnoIkw5iLj0jwxit
         E2BkYDmNtyqdoRBN/sfStcUBDt8eBxnMVclJj7sQRy26nRR7s1He6XLuQ/Z8yOMa73XA
         d6QknJoN8obxjHxi0ReYHVpdCIJLeb+35pTIMXN+MNpARuvMY+c7r6VXDfX8/TQPp8xy
         1IHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CrXLjCzC4sMRykOFkoRCRJDhm8rAYQ+kzMrIsY7BsYg=;
        b=Si9eNaMjL5nmNBwfdx3oZxa8ZI1E6gycB5I5ZlghJrEmL4tqEm7KahZuRIyRZAQ72+
         JHo0sTQ+LaGXL7wR/cAFfHWPrW3hCA3FwQZ6jl663FTZiRmdssrXOocs1xgX8+RnXQP3
         l5e9ryCZhTRSJL0q+96AjN48TZN5webBsmgvJhCvyzQStOkRRUwx9irpEwzzpvc4qogx
         kQiE18jkRI2v96NrHcOZDmhvylXnMjkRlHTcDki9wefmrqi8+0hpMjHnfIsOCApTGTnd
         abXG8TOjyZNRePzFfIhDVCrxeT0qsW6grwR+JrIfz8vl00kMK7n5/zjxl411JrOKtxAJ
         QjJw==
X-Gm-Message-State: AOAM531rwAcY8K6emTs7RXd6ZJDErnej1mj87+9awc/bj5MSgJ2w8W+7
	6I7cgIBvFE61WKNL56bvqYA=
X-Google-Smtp-Source: ABdhPJwxyLsk9UwXzOEMihYNCsH0pA7GkSAXg1O+48dTEmwf8awVCft+CWya5vl9a5eqc3ka+jNlOA==
X-Received: by 2002:a9d:39e2:: with SMTP id y89mr4804596otb.109.1590017640726;
        Wed, 20 May 2020 16:34:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:460f:: with SMTP id p15ls71273oip.7.gmail; Wed, 20 May
 2020 16:34:00 -0700 (PDT)
X-Received: by 2002:aca:1a18:: with SMTP id a24mr5216937oia.99.1590017640282;
        Wed, 20 May 2020 16:34:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590017640; cv=none;
        d=google.com; s=arc-20160816;
        b=CMs9IltpJc+pVWWcTpApXIlIB1uDh2SgUN2bp3vMGpQytPEfFJat5Dm3OWL59cR6Rl
         h0Ifn/jpxfjqMuz3nAdE2Vl5hH1NcuV/bYnLvPhNhKvfnjBsZLeRcL1ZKw5SRVkYdCbN
         n4Z6IH5wUHUfWrtzIh1p4fc6xYFdoImNSz9xABcdTOXSK+8VmFJa3N50+glkZ8hwpAjR
         T/ShSmmDzw8mbONp8Jcc/CldpfUjUdp06sa3n0wGBw1nisKeW6fAeWVtQ1ORfRs+IRxE
         FxsI4c7T5WsabGahosXL9CKuKWhIEvtNHjjQSNGFfWs9G/rcXBlWjZ8d1fTtqdVqAl4w
         Fx5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=YN/C/nPSeqwpOmMsu0A2/GbXKwpRdgogY0506hnF2AU=;
        b=x+WZd8KcroGp64PjKR8u+rbwqI0zm3vMuMXOwwsX/vje8Lx5+Q9iTbKMxM4dTXGt9s
         IDm3CQJCzvJ0w5PL/3lGkSGfzZncna/3TcIASpy9Ymy2KuOYJrzWausX1yplDogEgYtD
         yHc4JbY97CY2fPZRUIZ9qPGHAXe6drdeieAWThRUEK+BfCw6WU3yNG2h/3RokQO0GaBf
         USvxfeGSnAgPw5w87rhwJ9qhvt3Ra6caxJ10wHZzDP9VVHp/IS+fL4zwTwGl/fkOzoYH
         VAbrHKESI0L6KTJgLsjd6+mDLY57c+3dxZ85b6i22gpE6gg1b8l0Fw/ammQhqnFtxBw9
         U+Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q43nKW9c;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id u15si368915otq.2.2020.05.20.16.34.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 16:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id f13so5552046qkh.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 16:34:00 -0700 (PDT)
X-Received: by 2002:a37:9781:: with SMTP id z123mr6946590qkd.266.1590017639870;
        Wed, 20 May 2020 16:33:59 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t21sm3856926qtb.0.2020.05.20.16.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 16:33:59 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 20 May 2020 19:33:57 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: clang-built-linux@googlegroups.com, x86@kernel.org,
	Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/1] x86/boot: lld fix
Message-ID: <20200520233357.GA4160490@rani.riverdale.lan>
References: <20200520225654.4144534-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200520225654.4144534-1-nivedita@alum.mit.edu>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q43nKW9c;       spf=pass
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

On Wed, May 20, 2020 at 06:56:53PM -0400, Arvind Sankar wrote:
> arch/x86/boot/setup.elf currently has an orphan section .text.startup,
> and lld git as of ebf14d9b6d8b is breaking on 64-bit due to what seems
> to be a change in behavior on orphan section placement (details in patch
> commit message).
> 
> I'm not sure if this was an intentional change in lld, but it seems like
> a good idea to explicitly include .text.startup anyway.
> 
> Arvind Sankar (1):
>   x86/boot: Add .text.startup to setup.ld
> 
>  arch/x86/boot/setup.ld | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> -- 
> 2.26.2
> 

Actually I'm not sure this is a recent change. I updated to the git tip
because on my system (gentoo with gcc-10), lld-10.0.0 segfaults when
trying to link the compressed kernel, and updating to lld git fixed
that. So I previously probably didn't get to the stage where it links
setup.elf.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520233357.GA4160490%40rani.riverdale.lan.
