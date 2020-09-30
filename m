Return-Path: <clang-built-linux+bncBC2ORX645YPRBXWZ2L5QKGQEJ42R4UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D1F27EE3E
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:05:51 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id a10sf767525wrw.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:05:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601481951; cv=pass;
        d=google.com; s=arc-20160816;
        b=cBFQYSkVSZMHlfk4WTvrbuJ7ZRraVE/1s/5zfrb/kEHyDleILW/RoBpHQFEcufInd8
         LiwF/LcQmofoTvfQVkCzPem7DgAnwYJ4pkKdHajbWClj3S17UX+iJLaAKytLwX7DK1Em
         VNBJtmcSxESsAXlPeGlLyYact0p+rv58WoPNbInExADwPpeaySaQfZXOftexQStq1N2u
         KT1LN8gXaZh6X9I+l2kHLEyRrmPs6puAPAlqAc3qo9adFZkp75cF2EuVBjhm00k5aCYf
         5R+fuZCiwQ1knzFxz4MUK1HCL18z7xAZNI7ueGR+gcEgNd75ku1eC8HQnhU6WE7dO90h
         Vvmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KXpVLQs8UQKvGjH8SO/K4p4WIWUl+jwUXGtSdYmmHjI=;
        b=VvjO+HlvL1XRufD8JbfBaVSyr5zRfVGC1paPxx4wHinudikzDToTRmu+NFmsr2QOb7
         tW0KUSAXjauDBeitUSznCgPva0Qire090XwQSlzruU2tklONERIgObUh1fPpR+s9aWZh
         U7dPt0hq+wYdgK0NQuW1M77Lw7uO7wRUzqmgxKIh5elImoL+96yFugkjZKwEFZ6Ru31C
         2kpq3S2pVNwkWcS6IT7BzPAiLuVlCncW+FeCvyWgfpEJHyil6GcKQ50GutWv1338k+bU
         nLqRpto5y9hA3BXGrtvNSeedQKf9YS1U6a/OIv1rj+kasZq+xsAZ143lPctl82YCJ1Lp
         Seyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FdREMa9Y;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXpVLQs8UQKvGjH8SO/K4p4WIWUl+jwUXGtSdYmmHjI=;
        b=enCKUd+z+zH4QiWtnzYn+AJY/JeJ3rnO+NE3rJzENp5V6D5B7G9rspDvZU80/XsgYK
         91ayR29RycNMuQtPzLKpawug6/HdC1eUbM0szwTIshg121q7841JkgQUkBZTm7NXGmFj
         OHiqvPu2AO/Ei0LqBLKzM3kb+Dde0V6kuNhEKqiDB/pkXeiMiinPTDd8+yFLo0dtITOH
         niXm8JYzSJImZwC+m0Rx/1YcqMvjfWm9/HInGMSSjyQCmDIuEwk/w3Fva4bOWOfbuqyC
         8BT1w2zRdDT0GryvChf5qe56mIrrbsYRaQgHLRQ9n8UGEVdVcbIPFISxefjM/uHoo1Xk
         OtfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXpVLQs8UQKvGjH8SO/K4p4WIWUl+jwUXGtSdYmmHjI=;
        b=IXNcfhUvrqILKlGvOFjyNpr/ojut1Im1Y9NlFd4OkPDh3qAjDl9c6e36eTIbcjrCU0
         iqCarY9hqf0tU2bMjrddUqsnYCXcljDC2+810r65y66DCVKOMVxAOMyJKSOGgoSZ03BV
         M74eJzz15vj3a7bjy9XgBMSL+N5hQe9ihL7Din1KHSTZB0U7UsUSU2s6c1A9bZnMYmdJ
         rs0KinlWR8KEDZiFOAITGLmxsiwSp0R/gDYjLZr4XLRF2YuJtBDaahAHjB8nZFsqMbRC
         n00xd03KR5oV9GRVHcYdNbRGXs9OI2vDnD7Tp1Nh5ZNNFf06/ZYBceaYzM6kLolB4Pye
         DTiw==
X-Gm-Message-State: AOAM531kGzwPHMQRaB7FQhcBn/0lp/TE0APuidDzw6WzfK+RZMdHwFpu
	+kc2pUMovlETJGwQ7LeMTRQ=
X-Google-Smtp-Source: ABdhPJwdv7iKxV8ea2MrLM7M0eT3oBgHVw2MPgbRdkkT2ap4W2iYw9G5bMq1bSLYi1qfB25ZxaRwkA==
X-Received: by 2002:adf:f846:: with SMTP id d6mr4241823wrq.56.1601481951078;
        Wed, 30 Sep 2020 09:05:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls1024857wrm.2.gmail; Wed, 30 Sep
 2020 09:05:50 -0700 (PDT)
X-Received: by 2002:adf:f24f:: with SMTP id b15mr4215121wrp.301.1601481949971;
        Wed, 30 Sep 2020 09:05:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601481949; cv=none;
        d=google.com; s=arc-20160816;
        b=uIvYJxMoVgNI+ue//Zn5mCwvVyiFzCYq10CSIecg9vFm3FTC0FL0cVEVfo0q8SHeCo
         DaaAvo11vt3uJgTQw+sBbo9u6xWr342lI7ab8OKQLoz/YRvuzDonjDmBMyVmuQtLaUtL
         SxeU7lwVWnPIYVbqZwMsEgccRDIpT8AfvBMzIB80OiEwq3X95NkkoFMArTtKY1z3/0ev
         Wlux+MEG8mNohdkDzs2jbyCktdHK8R1JY+7VDdF8I0OZDIs8reITFMWLKj/RTY05RbVG
         ajCqKXNdEBTYT7xBRRHxQHcLNAe3QJTpTOEwk8Vu0eLK3jxeY7nqhMCnBaoDky6hn+F2
         utWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4nf8e6hIaPbRqntvQjCiPI17gKDQL3g6MdR3siKHn30=;
        b=Mcd/vWz1D61o5nC6CZb+A1Pcxpv/mX0WN7jsWkvhwYhHt/yPIBfxUiv5NGMiDS8tiY
         84z75OPrvkQo211l5Gm51qYiWm/56c4Y7ZnkBK9saze2GJA2fwWfdCXkqE/BepKpvFWF
         DMFc4og3f4Z1jXc3dVvUjJgeHNFSDeLXHnJ9V1MysTeb+Kb7EkraII3NL5pHFadMdqXf
         0JC1JIel8Q/8xwIS1k0RI9Dle5/ZbFlu7d0Mgd0GJgonwf822H2tpEIHQsqurECDm90l
         HD67h194ZHQggleX/PniudJFpLwg41CWiiDS1QpNHDCsdhUeam7IQ6IroCYn+VFM1eSo
         /wRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FdREMa9Y;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z17si59726wrm.2.2020.09.30.09.05.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:05:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id z23so3572046ejr.13
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:05:49 -0700 (PDT)
X-Received: by 2002:a17:906:a256:: with SMTP id bi22mr3464394ejb.375.1601481949457;
 Wed, 30 Sep 2020 09:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
 <20200929214631.3516445-7-samitolvanen@google.com> <20200929201257.1570aadd@oasis.local.home>
In-Reply-To: <20200929201257.1570aadd@oasis.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 09:05:38 -0700
Message-ID: <CABCJKud3S7pn8Ap3AkNRUUC4v8nMwOzM2_EwEB6+NFzDp5gppA@mail.gmail.com>
Subject: Re: [PATCH v4 06/29] tracing: move function tracer options to Kconfig
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FdREMa9Y;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641
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

On Tue, Sep 29, 2020 at 5:13 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Tue, 29 Sep 2020 14:46:08 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
>
> > +++ b/kernel/trace/Kconfig
> > @@ -595,6 +595,22 @@ config FTRACE_MCOUNT_RECORD
> >       depends on DYNAMIC_FTRACE
> >       depends on HAVE_FTRACE_MCOUNT_RECORD
> >
> > +config FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
> > +     bool
> > +     depends on FTRACE_MCOUNT_RECORD
> > +
> > +config FTRACE_MCOUNT_USE_CC
> > +     def_bool y
> > +     depends on $(cc-option,-mrecord-mcount)
>
> Does the above get executed at every build? Or does a make *config need
> to be done? If someone were to pass a .config to someone else that had
> a compiler that didn't support this, would it be changed if the person
> just did a make?

Yes, it's updated if you copy a .config and just run make. For
example, here's what happens when I create a config with gcc and then
build it with Clang:

$ make defconfig
...
$ ./scripts/config -e FUNCTION_TRACER -e DYNAMIC_FTRACE
$ make olddefconfig
...
$ grep MCOUNT_USE .config
CONFIG_FTRACE_MCOUNT_USE_CC=y
$ make CC=clang
scripts/kconfig/conf  --syncconfig Kconfig
...
^C
$ grep MCOUNT_USE .config
CONFIG_FTRACE_MCOUNT_USE_OBJTOOL=y

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud3S7pn8Ap3AkNRUUC4v8nMwOzM2_EwEB6%2BNFzDp5gppA%40mail.gmail.com.
