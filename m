Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVNTSH3AKGQEH4C4BUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B161DA44E
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 00:12:38 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id b82sf1561887qkg.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 15:12:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589926358; cv=pass;
        d=google.com; s=arc-20160816;
        b=1EENZYqH9gk5GEE/tDdoMrK9jexeT1+ynS46vQP+rUz7DGvp6JULHsqOZS0Qdemaph
         7WU1N4lhwQYXAYMG7ANEBxPnbSfu0+BWQcd3uTdhWwTuCoOdOMXLPvhp9Wq1nwjAqD3h
         lxJ5mhdplJ06fWGnJGjEuHRPX6IHJTKGs0/bexcI8ZJqVoraZ73HSa8BWZnN2Rnl8wte
         vGex5Nkfir8zJhPtubEyodI0sMpt2WfDE43WpIwjCvDAkJwNCJ1sHktI+IGML8f5HkA8
         ITjN8CR3qmJWE1sAOtelVi7NXzBCPEVxmnW293b7CzoJGH8KY8W18q618lavhpxSflGZ
         FpMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BdyEaS+Hhhn/UnfU5JDmL8zMUItg9Gjbm68GGYxXNqI=;
        b=mgZo+jc4IDJXam11Cs+q9Zq+vg6OfWnYNfTKfZJNGPfDXC1uzwJXPmXWnB9uvifHsi
         k0y1IKOrAfz47yrnF1x0LoaynBEq5w6ej7r+qUKwSP0XxTf3zy7U0RwpNBzIhRdtzoo1
         hlcGAq0jFGBfFfMx4yrsv56G4831Yu1fVrJhKeN5mdWlzSZ6z37KC4D9EUleioeyNnnH
         C2qZ4+F9nHdzA2N4TDM+FK2JnWP2nBGiEORRh/wjvptxlIGNMZRJ6cQe/hMEmKxiwp4r
         SM9jy7cmopf6AGZwHDWecyOGKYiHdxWKMVKrT0zjmiBZzcucH/ZDjnJ5gd3+vKcfVP3h
         dCWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aeRPaTJ0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BdyEaS+Hhhn/UnfU5JDmL8zMUItg9Gjbm68GGYxXNqI=;
        b=F/GEHUmwFapOHIE+WptvNNa89KodHqQhGuT6kpAZX99WvPOePrb5WZms+2NvTVcMRF
         eQ+NbAe/ioUuO9zqBEIbQ+dWB+nR5UFoUW5irwa2JBE/63tqZj96BKNLBDItlFcv+gvV
         74kVi2LSF0k6z+pb9t0+m+YT55vtHp9ZaI2bF08U+f3O8KZ+Gxqi7FdMQGXZNQ7pId2J
         ak7n4qtz50OobcUhm1XgFxKNufiBnhVu0PX5ft7Z1ktMIe9CiZqCt4SNSLHAn2/BxV83
         3aXeKyXgFFhFZKIFH/gQarwSKyhnRsiWxgLgE9oeUw2oAI8hSyM53LKLQLIz5UFyvRWA
         uEEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BdyEaS+Hhhn/UnfU5JDmL8zMUItg9Gjbm68GGYxXNqI=;
        b=CmOypweQYD2lOCR/k4nb1M7k2MAAbho1jIjwJMcQzfStFQKuJ69pJ8jOsDBVyQYnte
         slTCJEET4mSkQwIYYk9w4w5D/a+zLv96mmzT440W8RJ8jRMT2d5j/JPhQX41+lNcye0H
         lB2AsfmTwjI68blBkH2+nzra4InTu4x402aivOeZo/gocEM3UEWhphZtDU8NSz9Uwc7I
         +ZCrcQT4u9MBBWMufBdzheZdWUqGbeph1VceMP/nCCpaD3EwrJ5wHQsMXrKvCHoonBAQ
         m2dCs87OTgyHKgPHn7A/3R0kU/GNeyB6YMZtMPLFCEGNd37+FBNSCckpsZQDycfwt1Pr
         exsw==
X-Gm-Message-State: AOAM531k8VTxldOXTsf5bDQYW6e0EPljO5VL41TXZRnhvsftq5m+yKEo
	+Bn7mOR9Iab1TNgrkbDRF3w=
X-Google-Smtp-Source: ABdhPJwZFyQTgqd7NtEwr43pkAJTzlj+wKw2VYgSfqAGyYWSsw89kQXq4EME5yYhRDxlnhFH2Qp14Q==
X-Received: by 2002:a37:77c4:: with SMTP id s187mr1791482qkc.174.1589926357945;
        Tue, 19 May 2020 15:12:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e001:: with SMTP id m1ls620975qkk.9.gmail; Tue, 19 May
 2020 15:12:37 -0700 (PDT)
X-Received: by 2002:a05:620a:20c7:: with SMTP id f7mr1801028qka.189.1589926357554;
        Tue, 19 May 2020 15:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589926357; cv=none;
        d=google.com; s=arc-20160816;
        b=ePbcJ46B6IrrCZxrCf2EAJdCCwoOObpau9io7UCb7r2eqo7IIFa22ZfG3ahV1IYw2K
         voXGWrvnNnLyLKnlLLNA5rUk7hsMFdaHPqPIGroJDr5ZhLxrWLArHnlz5848PjYCfSfq
         ha1g2pJ/vTGRV30bAsVWP6V0WB/QTdZzstESkMDR4lmhQSgtFD+CvMdJmpoD6P4AVyTX
         L1QycxkrhCKXYgyAZao3GwjmQq556G8igPa7RFjvVasKs1gZ0A+WbsrhdsHmMqzmbWut
         0NN+ZYjOwAOIBcxuye3pK+QS57MYvMACl7/GUlR/9KITxSWoJ1ZtlGDGrngE9uTBPnMc
         SlCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=N4XH541U7UQQpdWsqc6VDr4j78oUO2KTxdnSbF6otX8=;
        b=DpGgcCMhc4n2HcBnUobiT0xZ//D/fL2DNqS5j850MDSws9hzdXLZlNCuSnAZtCMNr3
         mKwJJA5GoPubif3mzJYJbN12nV9P3boC24O7rLVuo3DBwZlH13TSIT5KnLdNekLXUm6n
         zJ4RbSpfYdY8F0+3/Tlg+txCrm2jeTiphWgd98y1vtLo9DzVxNz2qPTCWxStNzO7zXJI
         sCx1Fg65Fdaug4Xe90I7X88cp+Esk+cFI9QVdOObWZjx3PLl1XWgVRLEexeecb2O0hWH
         JqL2h8NmcP+FCnHTdwPKUNgJp2tV9UWS7SwIyoqIgSYMT2cZqbOmxcRdfE9d5wGkLRrf
         +dSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aeRPaTJ0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id a15si54267qtw.2.2020.05.19.15.12.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 15:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id p30so442423pgl.11
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 15:12:37 -0700 (PDT)
X-Received: by 2002:a63:d010:: with SMTP id z16mr1134483pgf.381.1589926356402;
 Tue, 19 May 2020 15:12:36 -0700 (PDT)
MIME-Version: 1.0
References: <202005200123.gFjGzJEH%lkp@intel.com> <20200519205505.GD444@zn.tnic>
 <20200519212541.GA3580016@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200519212541.GA3580016@ubuntu-s3-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 May 2020 15:12:24 -0700
Message-ID: <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
To: Masahiro Yamada <masahiroy@kernel.org>, Philip Li <philip.li@intel.com>
Cc: Borislav Petkov <bp@alien8.de>, kbuild test robot <lkp@intel.com>, Christoph Hellwig <hch@lst.de>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Benjamin Thiel <b.thiel@posteo.de>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aeRPaTJ0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
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

Masahiro and Philip,
We're seeing a bunch of -Wmissing-prototypes warnings from 0day bot
suddenly today.  Did something change on the Kbuild or 0day bot side?

On Tue, May 19, 2020 at 2:25 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 19, 2020 at 10:55:05PM +0200, Borislav Petkov wrote:
> > On Wed, May 20, 2020 at 01:51:25AM +0800, kbuild test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git x=
86/mm
> > > head:   bd1de2a7aace4d1d312fb1be264b8fafdb706208
> > > commit: 1f6f655e01adebf5bd5e6c3da2e843c104ded051 [1/23] x86/mm: Add a=
 x86_has_pat_wp() helper
> > > config: x86_64-randconfig-r012-20200519 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project =
135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         git checkout 1f6f655e01adebf5bd5e6c3da2e843c104ded051
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cros=
s ARCH=3Dx86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > >
> > > >> arch/x86/mm/init.c:75:6: warning: no previous prototype for functi=
on 'x86_has_pat_wp' [-Wmissing-prototypes]
> > > bool x86_has_pat_wp(void)
> > > ^
> >
> > Triggers with gcc too:
> >
> > make W=3D1 arch/x86/mm/init.o
> >
> > ...
> >
> > arch/x86/mm/init.c:81:6: warning: no previous prototype for =E2=80=98x8=
6_has_pat_wp=E2=80=99 [-Wmissing-prototypes]
> >    81 | bool x86_has_pat_wp(void)
> >       |      ^~~~~~~~~~~~~~
> >
> >
> > -Wmissing-prototypes is default off, though, dunno why clang 11 has it
> > on.
>
> It doesn't: https://godbolt.org/z/rU5_5H
>
> I assume this is caused by some sort of internal change to the 0day
> infrastructure (testing W=3D1?)
>
> I cannot see this without adding W=3D1 to make at the listed commit with
> the provided config.
>
> Cheers,
> Nathan
>
> > Anyway, something for Benni to fix. CCed and leaving the rest for him a=
s
> > reference.
> >
> > > arch/x86/mm/init.c:75:1: note: declare 'static' if the function is no=
t intended to be used outside of this translation unit
> > > bool x86_has_pat_wp(void)
> > > ^
> > > static
> > > arch/x86/mm/init.c:866:13: warning: no previous prototype for functio=
n 'mem_encrypt_free_decrypted_mem' [-Wmissing-prototypes]
> > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > ^
> > > arch/x86/mm/init.c:866:1: note: declare 'static' if the function is n=
ot intended to be used outside of this translation unit
> > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > ^
> > > static
> > > 2 warnings generated.
> > >
> > > vim +/x86_has_pat_wp +75 arch/x86/mm/init.c
> > >
> > >     73
> > >     74      /* Check that the write-protect PAT entry is set for writ=
e-protect */
> > >   > 75      bool x86_has_pat_wp(void)
> > >     76      {
> > >     77              return __pte2cachemode_tbl[_PAGE_CACHE_MODE_WP] =
=3D=3D _PAGE_CACHE_MODE_WP;
> > >     78      }
> > >     79
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >
> >
> > --
> > Regards/Gruss,
> >     Boris.
> >
> > https://people.kernel.org/tglx/notes-about-netiquette
> >
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20200519212541.GA3580016%40ubuntu-s3-xlarge-x86.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdk%2BJwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog%40m=
ail.gmail.com.
