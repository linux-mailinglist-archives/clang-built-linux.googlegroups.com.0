Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW6RVX2AKGQEGXAYXSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E75F619FBC0
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 19:37:32 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id v19sf452877ioq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 10:37:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586194652; cv=pass;
        d=google.com; s=arc-20160816;
        b=q0gn0QZjj8y2xhXqT5ag23PpWX8AX7AIuiKZTqNKfSQlCeRBQjvP6vw8y9nwCdeyEz
         une7ybFNovKIPlKeOXrskZdfu7Qa8bd7q6zjomlFWVVO+3gLkYXrkKRiKbUex/jHWldJ
         x2yu+vNxi3LzcoNiRIUlHkAzqUhc5gAxl9yaInCdySqp5q5sBZ2OPTcVIubPXqT2EFtn
         m7ZHxJIQgPbrsUsY7zlRVf7C7QunPVKZwAZ7Vlsc1IAEKGArlMj0XQ+FRZfmeyCz//s/
         pePVbvqONrAUQcTudE2baUE4ADtmOT5OfvOAWQSXPL/EkrN+8EIq+NEUagj/NQH+nZik
         YO+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=taFwI/mhmrrln+FvtIOIhwwGfX99HI1Dko1NLGEgI/M=;
        b=IDZh1GIFyJGwed2qzQTMSaTNS3EwAZ2HSmknmmCjZbBo6poSzndvZMZMxeUODLaXOL
         4iUgvxTn45lnA+wig2Ww5iqWFE31TVxA8cPArQG17SVqDfUhJt9K0gK3TfmFQbAiH8gz
         5uraOYCQXwSACQxPPDQyLN6zKDulYrzsMb+v/jC36GDU0EymONCUdsB8wKspcRWFN9P7
         lRWHeeXNiQ5pKWYrq1h0p2J0DxSaLFBkT2GRBydmjKjUIs97K9bBll+uY2qLG1z6mdJm
         pY5elF0xAkmNTfPsCzxs0bx6zlh6KagRS20qbbFjlL6UeAyEvpLG0ifrmkbrxZXkUAM4
         iobg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rrSX7xYp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=taFwI/mhmrrln+FvtIOIhwwGfX99HI1Dko1NLGEgI/M=;
        b=r83cbNJlGVKBUW0pyNfhlrtFMJRcFqAPc3LwJ4uWT/NJQVCHlr0XqqRwgmI9ZYol/Y
         Rzs6STX6Ew8mBCokRlwdWAKunfPWTH/VC2O6JhIL3Pp/Ryp21qq0CqYnn+WyAKr6kG3G
         eJ7mmF+CTOfIXGt4hLjTMVWjLtcBzBb9Hbm0aVGXBGkZY8aGwcHn/Huh1iPXTuWSomcK
         fTK+/VWhkxi2A3k66d9exKZqTGEeLwntWHULF2Gjn2/ZiPG/O+1HyrL3fl4dF3K+xMOz
         SuVlISNICN7zUilmghX+zTxqOIkXlEvgVMcJ3LxSxUZuefy+CrYCi3RTG93KrqtoJc+h
         lAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=taFwI/mhmrrln+FvtIOIhwwGfX99HI1Dko1NLGEgI/M=;
        b=dwnNrT3GuiOQYkAdeEiDbqyw5Z1yo8HDG1TBkbZZp2KRzsn/DzuxWC1lPZdDe18b8a
         0nZ2nmoyW7DZ2r52mJZqjQXxLO0lzCzrX+FMy941rTFk+R+fwjqVL38+847ZlGQaD7yP
         E+Esm31+Y5E0VZei3+dNdK+Q+08i4FGxy2bzh0gNoshW7h4kcYs720LjdjDpl1IwhiFV
         pTKkE4A/GKuVKJPsjz3yUcTwH99DA2lE/02D/TnmnISVQlXW7jHNsZnT+rGPOamdnob0
         mC6sr+33Ps8NbE/1xiX7dY6iE3no8wqjCFO4ADmqyEU5y7hX6nrGFm4+7FjhlXornHoJ
         93zw==
X-Gm-Message-State: AGi0PubW8YtGO3P3jZaQPb6PNSuaodDMiMWydjzX1vufxXKmFQmFJqle
	rbqfJ1lE7gF7YFnvqriyN8I=
X-Google-Smtp-Source: APiQypItJW1vgJYnD+8cXiJ6vEt/uT23kzGHrYvwSIn00n33ETkDeNKUaQ1MEpPFDj6tKFa3BvHoLQ==
X-Received: by 2002:a5d:944c:: with SMTP id x12mr20633224ior.100.1586194651879;
        Mon, 06 Apr 2020 10:37:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:284:: with SMTP id 126ls138115jau.1.gmail; Mon, 06 Apr
 2020 10:37:31 -0700 (PDT)
X-Received: by 2002:a05:6638:d6:: with SMTP id w22mr432375jao.72.1586194651545;
        Mon, 06 Apr 2020 10:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586194651; cv=none;
        d=google.com; s=arc-20160816;
        b=HB4p8AK7hIAQCLY0p9/QdpW/bbD/lMzwDUlo4av63+a8vqwYx1GdOoePuH1WxuaGJF
         Zf+cXbLk4bY0NTTBYb7ORRlQ3EqQiXwSt5zd7lo/eE4Mle8xVhkld6hK2xBSxB6aElad
         rgQuUWQOMQva4scmDU34LHBpZdRKkWvCFkZTdtuB8id84etM/ldBcg3f8Nwua0m1yPgI
         gcAVeebYkJf/ErELb2kEYdhP0dOlzHGYBX8ONtAzPokRJzsOccFJH6DNhAGP0c0LJON0
         +Njtf8kA9jGShgkeIgdNx3YULzjlXgN2pfYwedkidWDb1gL6IVh09jeuOJUpZq/dLq1d
         I8ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v5A3bNXVMj4bj2AIVGBTY6hkB7xXy6vHb/Ne3iBpS14=;
        b=ygfbfrxkQdiY+w9DGmMQidlpb6xz6FZatcpC/bZROk8GrAkl7MY4sShc+G9v/K5xU3
         4soOZq3viZHhPbVPoBBxMojJHBGLNRZ6oh2xhfbzyf9Lbocb+dPwG4eauYqGx0NMsFmA
         inqkKFCqLnfipRweC1puzf/MjmGFQoafHcoB7RBEHGnmzzrfHIU/414tzlIT3+46FAsA
         tEnQpAeELJKCO0I5R9m/HzeMgjKODjfsz+j0nyTvLJAZbMEahBaABqUKI+TceNckFfAK
         WsFROzAy6EpFusMK3QzzmrarkUxJwywS/P/u7TkewXjhP9g3xoyHOm1C4ROzJKBk/Fz8
         20rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rrSX7xYp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t125si49322iof.4.2020.04.06.10.37.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id r14so7873882pfl.12
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 10:37:31 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr544210pfa.39.1586194650619;
 Mon, 06 Apr 2020 10:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <202004050547.XbHnZtwa%lkp@intel.com> <20200404213110.GA34553@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200404213110.GA34553@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Apr 2020 10:37:20 -0700
Message-ID: <CAKwvOdnPOVfi35Vrxr1+FsPN+V2X5UiwxTdOu+pdwsBAGXxb5g@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-4.4.y 9959/9999] drivers/usb/gadget/function/f_uac2.c:601:40:
 warning: variable 'devqual_desc' is not needed and will not be emitted
To: Nathan Chancellor <natechancellor@gmail.com>, "# 3.4.x" <stable@vger.kernel.org>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, David Gibson <david@gibson.dropbear.id.au>, 
	Rob Herring <robh@kernel.org>, k.opasiak@samsung.com, 
	Felipe Balbi <felipe.balbi@linux.intel.com>, kopasiak90@gmail.com, 
	Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rrSX7xYp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sat, Apr 4, 2020 at 2:31 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Sun, Apr 05, 2020 at 05:23:53AM +0800, kbuild test robot wrote:
> > Hi Dirk,
> >
> > First bad commit (maybe != root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.4.y
> > head:   1d2188f191be66572f9e20c9486eda0544ab750f
> > commit: ce513359d8507123e63f34b56e67ad558074be22 [9959/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > config: x86_64-allmodconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 62f3a9650a9f289a07a5f480764fb655178c2334)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout ce513359d8507123e63f34b56e67ad558074be22
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/usb/gadget/function/f_uac2.c:601:40: warning: variable 'devqual_desc' is not needed and will not be emitted [-Wunneeded-internal-declaration]
> >    static struct usb_qualifier_descriptor devqual_desc = {
> >                                           ^
> >    1 warning generated.
> > --
> > >> drivers/usb/gadget/function/f_printer.c:164:40: warning: variable 'dev_qualifier' is not needed and will not be emitted [-Wunneeded-internal-declaration]
> >    static struct usb_qualifier_descriptor dev_qualifier = {
> >                                           ^
> >    1 warning generated.
> >
>
> Not caused by that patch.
>
> Fixed in mainline:

Hmm...no fixes tag, probably should still be backported to stable.

>
> https://git.kernel.org/linus/d4529f9be1d72919f75f76f31773c4e98d03ce6b
> https://git.kernel.org/linus/e5a89162161d498170e7e39e6cfd2f71458c2b00
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnPOVfi35Vrxr1%2BFsPN%2BV2X5UiwxTdOu%2BpdwsBAGXxb5g%40mail.gmail.com.
