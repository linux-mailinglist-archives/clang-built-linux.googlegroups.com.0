Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZOUSL4AKGQEZUCBATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8A62174A6
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 19:01:26 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id k188sf11553722oih.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 10:01:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594141285; cv=pass;
        d=google.com; s=arc-20160816;
        b=dEJWTHUw/T8+WpbJqEEX13/5SW2cdfvyEQiOHgSIjIdPME3L0e2lzdWbdtyEgkQWNB
         VSz8hHvH3ZclFNYyjqLtP2z7543sCC1L0C3i1cCRKnr3CmqKj71M6nQCjXnzMbHYoetW
         N3/fTyFdCn0NLrFgYL6p+FFKcSpWiPDrtNt0EHi14/0TxeKhGIEM5b6vS5ouCSXJu3AY
         7IrLdKTqLK4saOydeRMPTO8UI2TgpcaL5hTGFfm1LS/7Fsufz6lkdwkDm0robmQdjylI
         gOimRXOlBauDC/D+JqCvbiTYsm+9Pqo4bJ4t4dIxAcYtk1FNJ0uf0ZD5lPKeJC7jHmJa
         v+lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xyknEzemVL2nbPciOjawjysiKVJJq+L75KkTtR4IXms=;
        b=WtXq+FcpvylY9FpYVJvh7dIrzldsf4q7rQv7DmqU8pE+61HVkMy0tPbJjLCrMDzuqz
         pId8ZapX07RC/NcgPPQ1ymaW8S2eCnqtUXxf/M8YpNO2LDyiVwB00KnOE0JT1sjON7FP
         H/BU1drRuhxnNTr5YQmWAP8N6uEOOfabohfrWTMDLoUDvqndhI8snXRksUW3bpHENahT
         g4RjKv3hu1QqI79yeHNadon/L5qNUxRHp5nA5moDOPVaiz0ZXNSzhwLPvL6q4l4gmjow
         MTiqKLJClCO9m8hklnHu+q/XmnE+1TZI/AzYAIyWd31a1blEHuxGQrkqs2fBGqW376kl
         Y4QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VShrjPxh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xyknEzemVL2nbPciOjawjysiKVJJq+L75KkTtR4IXms=;
        b=KE/0AFtcBnoSWFxospuMMRgpfzmRrjxeyRXgqFTJKqCBHnsinVKujWhwIKvgU5ywZQ
         W4eQe+9hIb3p+obDNYMSCrDsXkxhaBGB75uqlqp56Y+5QGLm/a3AfRLx4NegFfvBebtp
         6e3WWWBbQ9ZnGampTlyw1Kbe0BCzSy9x/PjC6qBhJ3aJRVzzmsU8V4ErnskojkN+i4xX
         s4W6H4BKJOAy6WhxSoKln9vsbJlVLAOBpHZLUfLoFDf23GTp1yyjsFDiTD6iEJs88wbE
         zB2M56z+f7sR3G3ahcNSPvARoyRBck9+kMhEr9jDRNbmp4A7BaOhFfD7qUo7OwdUyB/l
         o02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xyknEzemVL2nbPciOjawjysiKVJJq+L75KkTtR4IXms=;
        b=OUjIR8a7ZEOHpqdIP0JdrIuL1Sv6cFL39c7pyzY0x38dwudzQnTaySP4r/Hn6zioCh
         UoH0acysf787Roj081k4C1XiB72DiTDBxJACI/hzKA8WKFq5x2LV487iIxHkY5yW9QOv
         4C31SfunRKOnWDmopu00vZP2jsb7ijWI/jPbzrt3qxRDy2/EbwVl7wAP3/sbM9mZDKCA
         NdOc6CZaCAXyNkZp/9xhbc6Oi1tkRtnaeL/Du5uyuuYSJxdXtYmJCdGXfnpTYn0thcZ9
         Vd9KzJq8+MhCC3D7LMjc1cFeT++DKgIdb67yGG0bB9C62irX7PoRT/Ffq45vIJlq7q0b
         3qzA==
X-Gm-Message-State: AOAM532+YzlU3IhRUg7EzQB4tIm1JTJ4BFTCOgB00Kkjg2drG6zcfgT4
	DDcQltDRh1zhwEaBOrPf2Jg=
X-Google-Smtp-Source: ABdhPJxoP90KzIKVVaKiXB1DdYtw+xNSFKBukQ4QYXwX9FS4RKeDT70vdpohKNWDtfnbLmdOpGHWOA==
X-Received: by 2002:a9d:39b6:: with SMTP id y51mr42600337otb.175.1594141285298;
        Tue, 07 Jul 2020 10:01:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls4437494otp.8.gmail; Tue, 07
 Jul 2020 10:01:25 -0700 (PDT)
X-Received: by 2002:a05:6830:1112:: with SMTP id w18mr37334517otq.301.1594141284929;
        Tue, 07 Jul 2020 10:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594141284; cv=none;
        d=google.com; s=arc-20160816;
        b=aAcpt3haVWamEebwmbBaZsY20Y9BJIB/GOLsM+01L4Vzkd8KGZAOhl1+GKwZdXFzAG
         l+lPzrBGunasLscPF3GWVEqPT5rRgyks7SH9ZmicrJJtLcywp9VrX6SoAYTG72zbndn/
         AYiwsKdBOcNpgXYKMA0Qn5ibCbPTzndJmMf3uC1phKfd8O9/7FKjChFf5J/wm+s9QUJc
         MsfAWC97NGEHc8eLfNP/lCAOOItKGSDMA+HfnXVFOHKVjMQxLku72iqe8E9rmYQYpvaV
         KFgF2J2e+RzFzmgeY81BS3vzoN+rUmYX7ZsRIfrhsJRYi43JECaIefac1WCfA9OJ/eZj
         Yq1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VrbiQMnVNQPBrY56u3cr+P/5A/Q1pn1znlY4NMdqs5o=;
        b=FxM3/8i+B6GLr+pbD01MmYjJdJA4ZgH0nyU0I5QWqGNqG4gWv+wLpv1+e5VDu7TG0i
         D0EH/crDEK/IbYFs7PfT1rMi/0DcQtcQjy5N2y3DyBEkcL05hPuJUP5gymxP62AbbV/9
         ZkYjXvHFCb+oOGRgR1nGKTchH/gFWdf7TLnlh2YKvoGCGsLSzsOh/sUQAXZaoUoPa4H7
         q1z6Bvtzy9WRJc1c8NSczXVco6+JQsXQEtxynroLIwuocg1lK6HOufmQgmjiGvMY01Ox
         Ijft02t1gQRPA++26ymrqSy+XjJD4j4w2+CTzrvvNLkS7U1ialkyUaQYtYZv3Q1zUFzu
         wVdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VShrjPxh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l6si277002oib.5.2020.07.07.10.01.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 10:01:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id x8so16091185plm.10
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 10:01:24 -0700 (PDT)
X-Received: by 2002:a17:902:7204:: with SMTP id ba4mr14402188plb.179.1594141283958;
 Tue, 07 Jul 2020 10:01:23 -0700 (PDT)
MIME-Version: 1.0
References: <202007061558.jOn3THo0%lkp@intel.com> <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
 <20200707023303.GA277193@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200707023303.GA277193@ubuntu-s3-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Jul 2020 10:01:12 -0700
Message-ID: <CAKwvOd=fdVa0K=cVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA@mail.gmail.com>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
To: Nathan Chancellor <natechancellor@gmail.com>, Philip Li <philip.li@intel.com>
Cc: kernel test robot <lkp@intel.com>, Mans Rullgard <mans@mansr.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sasha Levin <alexander.levin@microsoft.com>, Wolfram Sang <wsa-dev@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VShrjPxh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Mon, Jul 6, 2020 at 7:33 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Jul 06, 2020 at 10:01:07AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Mon, Jul 6, 2020 at 12:20 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git queue/5.4
> > > head:   bb26a37d5a4bf25b8377c83fa407a219b3822ed1
> > > commit: 5cee9e67596f7d694e94d7def7cd9d65a7599f66 [109/220] i2c: core: check returned size of emulated smbus block read
> > > config: s390-randconfig-r024-20200706 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install s390 cross compiling tool for clang build
> > >         # apt-get install binutils-s390x-linux-gnu
> > >         git checkout 5cee9e67596f7d694e94d7def7cd9d65a7599f66
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > Note: the linux-stable-rc/queue/5.4 HEAD bb26a37d5a4bf25b8377c83fa407a219b3822ed1 builds fine.
> > >       It only hurts bisectibility.
>
> Is this note talking about the config in general? Because that config
> does not build at all... I see this over and over, even on mainline
> (note that this report is initially against 5.4, which does not build
> with versions of clang that support asm goto):
>
> ./arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi        $0,${1:b}'
>                         "oi     %0,%b1\n"
>                         ^
> ./arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni        $0,${1:b}'
>                         "ni     %0,%b1\n"
>                         ^
>
> This might be solved with commit c4e5c229b610 ("s390/jump_label: use "i"
> constraint for clang").

Looks like c4e5c229b610, should we ask stable to backport to 5.4?  I
don't think we had clang builds working for 5.4 for s390, so maybe we
should just Philip to disable Clang builds of this stable branch for
s390? (There may not be too many backports to support, but I don't
know the amount of work involved there).


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DfdVa0K%3DcVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA%40mail.gmail.com.
