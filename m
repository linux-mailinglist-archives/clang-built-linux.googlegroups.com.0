Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW774P7AKGQEG25ITAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id D02FB2DB3A8
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 19:26:36 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id p20sf14957510qtq.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 10:26:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608056796; cv=pass;
        d=google.com; s=arc-20160816;
        b=onbSqowmNA/KvbfjVUqh8OiX+4jfrEcHEYa5ErFqtJKKn2sLWmUlSprq9NzD4PPO5u
         KLXHpSCpoHYPPxnNwedqW0wDg3r50H8EFpvQhNujDtgiWxnvVsfJZgXUHbkpmGKmVi98
         aProCNuY/8MMEKIdSwmk4k5mhTWjQBYbLbtrNEXuvdP9IWYBc5f92LIiHz08z+2Djx3F
         LzIZ7eHe2tbCadg3cE3anBI19q77sl2xjwwUBdzgkD+rWKABU13Q1OOWPcazWLk25EoC
         H1qE0Jkl+ckNoHKA8PHeVlayskYTazwVrm9DfLo9BxKpb2T9S8oDlXTX0LIhplCYC6/T
         DT5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q+ZFxAtV+KOFoT0ARKYb+2NJpUp3BBywmw7NxwvD5Gg=;
        b=deEw1VZuESTeD5uBjiXIfmx/U8KwGUdFjJFxEORXOXKyM9hEd0hmgXRrjHmfBN4y5C
         ekwbxTJBQKKqBCnH8QrUPs5lZ8dom4bFCAGr8Xrw5Wy64x1BBoLbiNLknjwgqiXhwsxh
         CPUBq+hmuDbuA9Y8kcsNsePauT7mmJWj7Uc/2V7RnhRsspD9cdT1OAtn3s2T/xtkn0i2
         AQw4uIiKnAABJ4XzBRaldiVLXvDxJrsqGTKkC0aU5yxwcPccekhQFx52dw6E4/BQeK/C
         NT40j7n1eIxglcRFMFuUi5YTnV4+zJAH+TmVA0mmsDgyzOekCIcMcD0UuVh2hozrIjo6
         EmtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ROGUurYk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q+ZFxAtV+KOFoT0ARKYb+2NJpUp3BBywmw7NxwvD5Gg=;
        b=KO+BDdAL01kZxNBIBcIuEljRG7w0tysHmSyzH0Y7hni4oEbGM9OVzD2TraSaka9ITs
         6Lw2zOBd7YO03cHz5Rg+5Ps/f4AxdOuhlJLXwAAgSWGtmX8pHWbapdaSrUxs3PvyXB9/
         9Hz2CKCI0FKcYAxYfxJcl0na+fsF8RIKB2P+8PUWo6BdJc9bfL8jSvSIHBfZ1w6Ol6uX
         0KvC3VctdK/SJTEt9Mzok9VZThYqvQ6N7LOGv9ZdeIu3iKYmsKvbzwTti5T+qUMsfl7g
         FHl0a8RmzcRBHmrvOujxI8B//cjrhNT7LPMrInhcaaMeWwxNcLL2EWvJqyMHOgxNW7MY
         HEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q+ZFxAtV+KOFoT0ARKYb+2NJpUp3BBywmw7NxwvD5Gg=;
        b=LXr74ySDAlEII17j4kLwXDxfv8J/LvmeMrJqelPzVT/JOjnh5UQdvaq3rNqNrU+z3s
         r2YI4hnO7s9RWt+QObkeDtYsq0CwoD7tvyfLVtEU17o44vT5KiVFNAi79C3NiTXJ0PVQ
         US0c6FAU7JeTPbg5DaCjmtJXRnQZ6oRG29zBqflWQ18AjZd2RmZ7xv4Ogwv3xF+Rvwlh
         1wXJSzn7hIxv9rg8YHMRUzQWkaHZssRGZTa+pR7fCw98hvMzUCeJI4AgFZPTzZrT9NB5
         xQwbdDNp9tyDCPylg57PDkbcvr+yzqtm5+oa9gMukKqHLX+A6EgPNqymhyR1dShOalnI
         ZVsA==
X-Gm-Message-State: AOAM5309UwJBdJTgkrZGgsN4ci+b1eysxEQJ7v24k1QtQ+UvQgdlIXXI
	vLPhgNswn9998aUpr1uN53A=
X-Google-Smtp-Source: ABdhPJxu+3OrVMkn3NoGDGoc6SGoQb0skKw9dGHWaXJAuFTxGCXmOC1l9PVlcmdzGeXn1kLBTyw4KA==
X-Received: by 2002:a05:620a:a9c:: with SMTP id v28mr17269412qkg.107.1608056795954;
        Tue, 15 Dec 2020 10:26:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:132f:: with SMTP id p15ls3602231qkj.0.gmail; Tue,
 15 Dec 2020 10:26:35 -0800 (PST)
X-Received: by 2002:a37:6242:: with SMTP id w63mr40422213qkb.490.1608056795557;
        Tue, 15 Dec 2020 10:26:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608056795; cv=none;
        d=google.com; s=arc-20160816;
        b=UI/YPZh/5phunxz3dY5Tnp2xYsup53b7UOL6uAZeZMQ+qjkCvzbHTvM+xzjLNA6N4D
         83EehehZFzuLtEclcN5nDcQzOYPMHcxmUuxMOtder4Lda5WwT2LOhvjnL8UGsrvoFzSC
         rbMjCaQPYOVXkzCF3EotpuB56GqdHjw7qVwRDRHBDArVqa4R/ks+hF0tWLqFZ0vIHQs/
         RQQWQxSxEwkL6Ozmb6TP+pyj5frQIxKMQV4bIBxd5JdCyc5WmVyAGG4qr+enS2PE0cMx
         RaElCSzBJTUUzZz+qfLK9CV4xT47cOGuO1mhjDBr0OQuXz+9txa1r7eamRtsRbv0Rb8B
         /BfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rlO4gg/t7U3s5ZwVcwjYH0sRwC/sCVaFQamCu5f4nkU=;
        b=I15icIDSZyYfxVvxyQ1+zgiUl2jbI6ODduLLMAARTgTy4Ldu+yLvdbtU8MIjpNzZgx
         yoY8ZIYFg4N/WsBF68Pe/mN0iRkrkQxKFkFUzsDI4+M60aa0bcvuPiT9X7tzb1rtur/F
         0uOuawXNl5MHbTm97uN693Qt0XKWUBeId2YOwsITTgkW0jq75FNaYT219gP9Lrz0dD0s
         hNkEywdgayZqlnLXxO6UlOezUE070VWWARxRh/Ef9YWkJCKbBqAX1No1bWh1VLS6PIIo
         L5+qjUoAWtb7VQbbNZ/k9qd/E7S04kouaF0mSjnqnbw0Jigmpxs+yk3no69zHT32pemj
         53Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ROGUurYk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id c198si1347985qkg.2.2020.12.15.10.26.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 10:26:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id r4so11484315pls.11
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 10:26:35 -0800 (PST)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr138218pjb.101.1608056794557;
 Tue, 15 Dec 2020 10:26:34 -0800 (PST)
MIME-Version: 1.0
References: <202012101717.BwzOJEiz-lkp@intel.com> <CAKwvOdkOuEck7BB_-4_NkcJkDB8PsSjAsP0GjVvLMV3ECZheEw@mail.gmail.com>
 <20201212083555.GD31146@intel.com>
In-Reply-To: <20201212083555.GD31146@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Dec 2020 10:26:22 -0800
Message-ID: <CAKwvOdmUuY8ckHqzCm-t3nywXG7+Am+-zVTQsF3PeEHrxJ-B7Q@mail.gmail.com>
Subject: Re: [lee-linaro:android-3.18-preview 213/310] clang-12clang-12:
 error: unknown argument: '-mtraceback=no'
To: Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: multipart/alternative; boundary="0000000000000530b205b684e613"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ROGUurYk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
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

--0000000000000530b205b684e613
Content-Type: text/plain; charset="UTF-8"

4.4+

On Sat, Dec 12, 2020, 12:39 AM Philip Li <philip.li@intel.com> wrote:

> On Thu, Dec 10, 2020 at 11:09:08AM -0800, Nick Desaulniers wrote:
> > Hi Philip,
> > We only supported kernel builds with Clang since v4.4.y; would you
> > mind disabling clang builds for Lee's 3.18 branch?
> Got it, we will avoid testing clang on old kernel. Want to consult how
> about mainline, does clang support start from v4.4 or v4.5?
>
> Thanks
>
> >
> > On Thu, Dec 10, 2020 at 1:58 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > TO: Lee Jones <lee.jones@linaro.org>
> > >
> > > tree:   https://git.linaro.org/people/lee.jones/linux.git
> android-3.18-preview
> > > head:   83102d5e212965387f1db5eef72bf3bf0d322b15
> > > commit: cdf2b03a6f4efd138211f1c38b0103031f7a62c1 [213/310] regulator:
> fan53555: fix I2C device ids
> > > config: powerpc64-randconfig-r036-20201209 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> 1968804ac726e7674d5de22bc2204b45857da344)
> > > reproduce (this is a W=1 build):
> > >         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc64 cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc64-linux-gnu
> > >         git remote add lee-linaro
> https://git.linaro.org/people/lee.jones/linux.git
> > >         git fetch --no-tags lee-linaro android-3.18-preview
> > >         git checkout cdf2b03a6f4efd138211f1c38b0103031f7a62c1
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=powerpc64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> clang-12clang-12: error: unknown argument: '-mtraceback=no'
> > >    clang-12: error: unknown argument: '-mcall-aixdesc'
> > >    clang-12: error: unknown argument: '-mtraceback=no'
> > >    clang-12: error: unknown argument: '-mno-string'
> > >    : error: unknown argument: '-mcall-aixdesc'
> > >    make[3]: *** [scripts/Makefile.build:153:
> scripts/mod/devicetable-offsets.s] Error 1
> > >    clang-12: error: unknown argument: '-mno-string'
> > >    clang-12: error: unsupported argument '-maltivec' to option 'Wa,'
> > >    make[3]: *** [scripts/Makefile.build:258: scripts/mod/empty.o]
> Error 1
> > >    make[3]: Target '__build' not remade because of errors.
> > >    make[2]: *** [scripts/Makefile.build:402: scripts/mod] Error 2
> > >    /usr/bin/ld: scripts/dtc/dtc-parser.tab.o:(.bss+0x28): multiple
> definition of `yylloc'; scripts/dtc/dtc-lexer.lex.o:(.bss+0x58): first
> defined here
> > >    clang-12: error: linker command failed with exit code 1 (use -v to
> see invocation)
> > >    make[3]: *** [scripts/Makefile.host:100: scripts/dtc/dtc] Error 1
> > >    make[3]: Target '__build' not remade because of errors.
> > >    make[2]: *** [scripts/Makefile.build:402: scripts/dtc] Error 2
> > >    make[2]: Target '__build' not remade because of errors.
> > >    make[1]: *** [Makefile:560: scripts] Error 2
> > >    clang-12: error: unknown argument: '-mtraceback=no'
> > >    clang-12: error: unknown argument: '-mcall-aixdesc'
> > >    clang-12: error: unknown argument: '-mno-string'
> > >    make[2]: *** [./Kbuild:36: kernel/bounds.s] Error 1
> > >    make[2]: Target '__build' not remade because of errors.
> > >    make[1]: *** [Makefile:1022: prepare0] Error 2
> > >    make[1]: Target 'modules_prepare' not remade because of errors.
> > >    make: *** [Makefile:149: sub-make] Error 2
> > >    make: Target 'modules_prepare' not remade because of errors.
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/202012101717.BwzOJEiz-lkp%40intel.com
> .
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmUuY8ckHqzCm-t3nywXG7%2BAm%2B-zVTQsF3PeEHrxJ-B7Q%40mail.gmail.com.

--0000000000000530b205b684e613
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">4.4+</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sat, Dec 12, 2020, 12:39 AM Philip Li &lt;<a href=
=3D"mailto:philip.li@intel.com">philip.li@intel.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">On Thu, Dec 10, 2020 at 11:09:08AM -0800, N=
ick Desaulniers wrote:<br>
&gt; Hi Philip,<br>
&gt; We only supported kernel builds with Clang since v4.4.y; would you<br>
&gt; mind disabling clang builds for Lee&#39;s 3.18 branch?<br>
Got it, we will avoid testing clang on old kernel. Want to consult how<br>
about mainline, does clang support start from v4.4 or v4.5?<br>
<br>
Thanks<br>
<br>
&gt; <br>
&gt; On Thu, Dec 10, 2020 at 1:58 AM kernel test robot &lt;<a href=3D"mailt=
o:lkp@intel.com" target=3D"_blank" rel=3D"noreferrer">lkp@intel.com</a>&gt;=
 wrote:<br>
&gt; &gt;<br>
&gt; &gt; TO: Lee Jones &lt;<a href=3D"mailto:lee.jones@linaro.org" target=
=3D"_blank" rel=3D"noreferrer">lee.jones@linaro.org</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt; tree:=C2=A0 =C2=A0<a href=3D"https://git.linaro.org/people/lee.jo=
nes/linux.git" rel=3D"noreferrer noreferrer" target=3D"_blank">https://git.=
linaro.org/people/lee.jones/linux.git</a> android-3.18-preview<br>
&gt; &gt; head:=C2=A0 =C2=A083102d5e212965387f1db5eef72bf3bf0d322b15<br>
&gt; &gt; commit: cdf2b03a6f4efd138211f1c38b0103031f7a62c1 [213/310] regula=
tor: fan53555: fix I2C device ids<br>
&gt; &gt; config: powerpc64-randconfig-r036-20201209 (attached as .config)<=
br>
&gt; &gt; compiler: clang version 12.0.0 (<a href=3D"https://github.com/llv=
m/llvm-project" rel=3D"noreferrer noreferrer" target=3D"_blank">https://git=
hub.com/llvm/llvm-project</a> 1968804ac726e7674d5de22bc2204b45857da344)<br>
&gt; &gt; reproduce (this is a W=3D1 build):<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wget <a href=3D"https://raw.gith=
ubusercontent.com/intel/lkp-tests/master/sbin/make.cross" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://raw.githubusercontent.com/intel/lkp-=
tests/master/sbin/make.cross</a> -O ~/bin/make.cross<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chmod +x ~/bin/make.cross<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# install powerpc64 cross compil=
ing tool for clang build<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# apt-get install binutils-power=
pc64-linux-gnu<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git remote add lee-linaro <a hre=
f=3D"https://git.linaro.org/people/lee.jones/linux.git" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">https://git.linaro.org/people/lee.jones/linux.=
git</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git fetch --no-tags lee-linaro a=
ndroid-3.18-preview<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git checkout cdf2b03a6f4efd13821=
1f1c38b0103031f7a62c1<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# save the attached .config to l=
inux build tree<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0COMPILER_INSTALL_PATH=3D$HOME/0d=
ay COMPILER=3Dclang make.cross ARCH=3Dpowerpc64<br>
&gt; &gt;<br>
&gt; &gt; If you fix the issue, kindly add following tag as appropriate<br>
&gt; &gt; Reported-by: kernel test robot &lt;<a href=3D"mailto:lkp@intel.co=
m" target=3D"_blank" rel=3D"noreferrer">lkp@intel.com</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt; All errors (new ones prefixed by &gt;&gt;):<br>
&gt; &gt;<br>
&gt; &gt; &gt;&gt; clang-12clang-12: error: unknown argument: &#39;-mtraceb=
ack=3Dno&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unknown argument: &#39;-mcall-aixde=
sc&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unknown argument: &#39;-mtraceback=
=3Dno&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unknown argument: &#39;-mno-string&=
#39;<br>
&gt; &gt;=C2=A0 =C2=A0 : error: unknown argument: &#39;-mcall-aixdesc&#39;<=
br>
&gt; &gt;=C2=A0 =C2=A0 make[3]: *** [scripts/Makefile.build:153: scripts/mo=
d/devicetable-offsets.s] Error 1<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unknown argument: &#39;-mno-string&=
#39;<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unsupported argument &#39;-maltivec=
&#39; to option &#39;Wa,&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 make[3]: *** [scripts/Makefile.build:258: scripts/mo=
d/empty.o] Error 1<br>
&gt; &gt;=C2=A0 =C2=A0 make[3]: Target &#39;__build&#39; not remade because=
 of errors.<br>
&gt; &gt;=C2=A0 =C2=A0 make[2]: *** [scripts/Makefile.build:402: scripts/mo=
d] Error 2<br>
&gt; &gt;=C2=A0 =C2=A0 /usr/bin/ld: scripts/dtc/dtc-parser.tab.o:(.bss+0x28=
): multiple definition of `yylloc&#39;; scripts/dtc/dtc-lexer.lex.o:(.bss+0=
x58): first defined here<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: linker command failed with exit cod=
e 1 (use -v to see invocation)<br>
&gt; &gt;=C2=A0 =C2=A0 make[3]: *** [scripts/Makefile.host:100: scripts/dtc=
/dtc] Error 1<br>
&gt; &gt;=C2=A0 =C2=A0 make[3]: Target &#39;__build&#39; not remade because=
 of errors.<br>
&gt; &gt;=C2=A0 =C2=A0 make[2]: *** [scripts/Makefile.build:402: scripts/dt=
c] Error 2<br>
&gt; &gt;=C2=A0 =C2=A0 make[2]: Target &#39;__build&#39; not remade because=
 of errors.<br>
&gt; &gt;=C2=A0 =C2=A0 make[1]: *** [Makefile:560: scripts] Error 2<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unknown argument: &#39;-mtraceback=
=3Dno&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unknown argument: &#39;-mcall-aixde=
sc&#39;<br>
&gt; &gt;=C2=A0 =C2=A0 clang-12: error: unknown argument: &#39;-mno-string&=
#39;<br>
&gt; &gt;=C2=A0 =C2=A0 make[2]: *** [./Kbuild:36: kernel/bounds.s] Error 1<=
br>
&gt; &gt;=C2=A0 =C2=A0 make[2]: Target &#39;__build&#39; not remade because=
 of errors.<br>
&gt; &gt;=C2=A0 =C2=A0 make[1]: *** [Makefile:1022: prepare0] Error 2<br>
&gt; &gt;=C2=A0 =C2=A0 make[1]: Target &#39;modules_prepare&#39; not remade=
 because of errors.<br>
&gt; &gt;=C2=A0 =C2=A0 make: *** [Makefile:149: sub-make] Error 2<br>
&gt; &gt;=C2=A0 =C2=A0 make: Target &#39;modules_prepare&#39; not remade be=
cause of errors.<br>
&gt; &gt;<br>
&gt; &gt; ---<br>
&gt; &gt; 0-DAY CI Kernel Test Service, Intel Corporation<br>
&gt; &gt; <a href=3D"https://lists.01.org/hyperkitty/list/kbuild-all@lists.=
01.org" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.01.or=
g/hyperkitty/list/kbuild-all@lists.01.org</a><br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups &quot;Clang Built Linux&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googleg=
roups.com" target=3D"_blank" rel=3D"noreferrer">clang-built-linux+unsubscri=
be@googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visit <a href=3D"https://group=
s.google.com/d/msgid/clang-built-linux/202012101717.BwzOJEiz-lkp%40intel.co=
m" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.co=
m/d/msgid/clang-built-linux/202012101717.BwzOJEiz-lkp%40intel.com</a>.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Thanks,<br>
&gt; ~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdmUuY8ckHqzCm-t3nywXG7%2BAm%2B-zVTQsF3Pe=
EHrxJ-B7Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKwvOdmUuY8ckHqzCm-t3nywXG7%2B=
Am%2B-zVTQsF3PeEHrxJ-B7Q%40mail.gmail.com</a>.<br />

--0000000000000530b205b684e613--
