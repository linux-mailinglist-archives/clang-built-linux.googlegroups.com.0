Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB7PASH3AKGQENIPZFMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6351DA5CC
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 01:49:20 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a12sf994541pfc.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 16:49:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589932159; cv=pass;
        d=google.com; s=arc-20160816;
        b=skJ5BklvRo93eQhhBrkEBp+HZ9HhVR4R6WpOAFzTGEZ3iHzavmw/TznR4Q08wHBOcI
         YnfCOsNeoPCXFdfdJHopn/kFymCfDXO35D076+ZbKeP/3Ljxn3+jownIpxw4cx9XP/JJ
         ZsJ4xb02KeXrg9SyBJd7U+FEBZ2yzLkmhU9pExlRshj2sl5kK+8Owmbr2z+W6C3LnheN
         qjm5cRCrvMPIkvPZqsD8zSMDkgnr7QSlElkqqR2jbtmWQDHMF19OKX44T1Yc/sszvkPG
         RfhW1Yn2ETV4WcOXYM1OecY0yh0np0A1CyDY323xZahTdtO5xnKFgSZ3s9LBjsQ74Xxt
         Q+0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=eVzLy9xJsesnV9X1lAITvCG9qwOtCDNPrBqE2ROFiEM=;
        b=mL3RujH9H1rcNOWe3NmCLajFfRFsiwL9HPJH9KS7c5RJuIfgHkp1zySWQj9jYHTMr6
         ArHVh5mqBxInga7/wznTsyXVSwgrOKQrZJ1g/jYVTcSNW8vbYeN13CozFlWW5KOSd+0/
         Fn94HLeEIrxl67WFZz0swF6I0HqyuvR+jddNj92T4UyBFsHmcjjgDC99mJxTxYJ/YK5t
         zKpcBf9PjECoxfiOLFaC4hYPt41473t7I6XeW1Xa5Q/cJRapGpPsNDqlHDT9OK6eJmEA
         JzGbpDfSyY+vOOsFz4KhX1/VJPKMqEv1Qs9He9CR4F5rJMzLn/8DWnkEsus7pJCi3Auk
         G5JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eVzLy9xJsesnV9X1lAITvCG9qwOtCDNPrBqE2ROFiEM=;
        b=JebuCk/pCu5pVyL5xzRPNlE1hnqp9osOu/y00Zm+AiD1y2xHjSgxATepa5433zzQ/8
         MR6BDeQP8Q92sRLertdPJJvNdyTxpUVLvM4696TEOBWWShw2VSJSotsOZkbEiBEjZyqv
         EMpR3qOMuuuLQ7WvOTaV5hwv2hj7cihIUFONZM0Ucy8q5cnLt/iu7eZ4KAInFFUiSWRs
         Wa5iHE8TP02Sa2p7UMJsk6IZskxUJv/2ByDVJNEHf+MWpyamt8IPKLYUZ7Zz4jMqq3mp
         qwFWPq4iw/7iw0/JnYsrNeLOpGDvKD8GoN5WVSdK3b+CU3PfnxsxbIFiH7eURWLq/f7s
         lQeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eVzLy9xJsesnV9X1lAITvCG9qwOtCDNPrBqE2ROFiEM=;
        b=bQsxR9AujA9sPAUAqnmEcTneHZBh9Y7Ifm4qJcv1ip4t9z2Ns9q+tqWftwx2hwiluY
         LbAIwmYLSS87TcZ6CkD8MoFd2LEoYUw/GdySaMNyLqM6w7YmvVDSliUkkvxwPIRB9qMY
         c34Ii0AMMIl/QJ4GfuWL7TOxWMVho1+NvOa5KX2Y3rGGJyVpxGxPuv2slNomZjAxXdCr
         5Y7WuYjRXOWgY4+7liKs+Lh9ZWn2pBX/PfEWy4IwKZHzxFxxqK2EPte64wOMwJlZlyel
         pgd99JHQx+IE9VQRG6W7WY5j3mCRXYFQdSlwWKjcn4GlixtchntLaMOXR3VkAk//RN0w
         pEBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533W+MtABLxHXFIxF1cv8AY5AfCVLGF+J6/j9b7uL0sEo5VX6sfc
	kbyoGo+Ad5kWuE02ncvZoYI=
X-Google-Smtp-Source: ABdhPJz1zBOK3n1jTZRUD5qxH6XIViojV5hpnBbMpXcivgT6D2ysTlQgl7tlC/h3o02Hu8e5GswlbQ==
X-Received: by 2002:a17:902:a414:: with SMTP id p20mr1891698plq.333.1589932158055;
        Tue, 19 May 2020 16:49:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:c31a:: with SMTP id v26ls286869pfg.2.gmail; Tue, 19 May
 2020 16:49:17 -0700 (PDT)
X-Received: by 2002:a63:ef04:: with SMTP id u4mr1538580pgh.280.1589932157580;
        Tue, 19 May 2020 16:49:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589932157; cv=none;
        d=google.com; s=arc-20160816;
        b=nizVoKwJS8xsj/H8Bhln1XtUdRAnX7NH7lfK/Q8UlrQc9/S1gg9r5unvxX5ukNYESG
         yw9HiWq+zCFvxmyKv6vlQHD96GhGXRYqL3/DeE9y7JnxySwhvV4pMMuTbnWfEA89QHbb
         CHxHG4iOyIPhCBtoTqFQ5VC9gq7Mcbs42W3D4RlJFEJ6zWfDLEIztksa8enLYlnXvxwB
         MLIJDyOdT2YcCFxyNWFgqNyO4/TcSBiLPrZ+VnlfuuvTQV7EMJ5276CskPIZc7+kHa5a
         20d9RQdtoFonCUxRFw4p4e0v60kcOtFodtkjxDm0pTbSevavZb/AEEr2yblXdiMEDCSw
         9Cww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:ironport-sdr;
        bh=lhmoQF2lSI++2qi5uXElvMmgUHr1pGprWNR3UPbHsQU=;
        b=vtMYcgfRJFmsZ/yYGeTXtkS/NZbmyQg+rZRiLnX27aIcwrrrSHxBO2iwHO0AvmUirD
         4eKWb0n2lleFEERO9lTiNX7Xo6gFitW8498RIOFCKFo/VIvMOXXYfilJNUjCit8yQ4Oi
         YzqRgL9AcsbbtObxEuoDQEPQGKTDvI1pY2sZZCt2oupSZzMayOjpFNv+kMV77aED70e3
         fjEmAxs4OsBTjvnUbjhakPOfAIaWveIjcOOYIf/LoGcyQBSNxN3LbNp9Gk96mY4Y3wUX
         dmYuwdUS1Xas8Q0uILrQY5kDVWmTOPbq0i/Ln17v5jr/qCmk8gTMKBEiWNYgehw3jOwZ
         c1/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id c15si364661pjv.1.2020.05.19.16.49.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 16:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: jzzc+rcoXTffgmauaEVBNXW+3OBgGKnO8ApNMiUjgWV2rrm4J+gMf5pV0y7JBi+/WRnl5Z5RNu
 P9ABU+vMLLRA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 May 2020 16:49:17 -0700
IronPort-SDR: 8LEvj2Uij7gEX6fj7vZsR9AYBGaODVOUxwm28nDwhMn/tuvzXxwFz62VQKKqLuRGwdhjO86Jj9
 /6uDb56vbj0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; 
   d="scan'208";a="343309189"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga001.jf.intel.com with ESMTP; 19 May 2020 16:49:16 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 16:49:16 -0700
Received: from shsmsx106.ccr.corp.intel.com (10.239.4.159) by
 fmsmsx121.amr.corp.intel.com (10.18.125.36) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 16:49:16 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.245]) by
 SHSMSX106.ccr.corp.intel.com ([169.254.10.232]) with mapi id 14.03.0439.000;
 Wed, 20 May 2020 07:49:14 +0800
From: "Li, Philip" <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
	<masahiroy@kernel.org>
CC: Borislav Petkov <bp@alien8.de>, lkp <lkp@intel.com>, Christoph Hellwig
	<hch@lst.de>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML
	<linux-kernel@vger.kernel.org>, "maintainer:X86 ARCHITECTURE (32-BIT AND
 64-BIT)" <x86@kernel.org>, Benjamin Thiel <b.thiel@posteo.de>, "Nathan
 Chancellor" <natechancellor@gmail.com>
Subject: RE: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
Thread-Topic: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no
 previous prototype for function 'x86_has_pat_wp'
Thread-Index: AQHWLiqdnaNIwjwzlU2snsVS1CT3bKiwE2HQ
Date: Tue, 19 May 2020 23:49:13 +0000
Message-ID: <831EE4E5E37DCC428EB295A351E6624952648ACF@shsmsx102.ccr.corp.intel.com>
References: <202005200123.gFjGzJEH%lkp@intel.com>
 <20200519205505.GD444@zn.tnic>
 <20200519212541.GA3580016@ubuntu-s3-xlarge-x86>
 <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
In-Reply-To: <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previ=
ous
> prototype for function 'x86_has_pat_wp'
>=20
> Masahiro and Philip,
> We're seeing a bunch of -Wmissing-prototypes warnings from 0day bot
> suddenly today.  Did something change on the Kbuild or 0day bot side?
Hi Nick, W=3D1 was added to make. This leads to extra warnings.

>=20
> On Tue, May 19, 2020 at 2:25 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, May 19, 2020 at 10:55:05PM +0200, Borislav Petkov wrote:
> > > On Wed, May 20, 2020 at 01:51:25AM +0800, kbuild test robot wrote:
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git=
 x86/mm
> > > > head:   bd1de2a7aace4d1d312fb1be264b8fafdb706208
> > > > commit: 1f6f655e01adebf5bd5e6c3da2e843c104ded051 [1/23] x86/mm: Add
> a x86_has_pat_wp() helper
> > > > config: x86_64-randconfig-r012-20200519 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-projec=
t
> 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > > > reproduce:
> > > >         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install x86_64 cross compiling tool for clang build
> > > >         # apt-get install binutils-x86-64-linux-gnu
> > > >         git checkout 1f6f655e01adebf5bd5e6c3da2e843c104ded051
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang
> make.cross ARCH=3Dx86_64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > >
> > > > >> arch/x86/mm/init.c:75:6: warning: no previous prototype for func=
tion
> 'x86_has_pat_wp' [-Wmissing-prototypes]
> > > > bool x86_has_pat_wp(void)
> > > > ^
> > >
> > > Triggers with gcc too:
> > >
> > > make W=3D1 arch/x86/mm/init.o
> > >
> > > ...
> > >
> > > arch/x86/mm/init.c:81:6: warning: no previous prototype for =E2=80=98=
x86_has_pat_wp=E2=80=99
> [-Wmissing-prototypes]
> > >    81 | bool x86_has_pat_wp(void)
> > >       |      ^~~~~~~~~~~~~~
> > >
> > >
> > > -Wmissing-prototypes is default off, though, dunno why clang 11 has i=
t
> > > on.
> >
> > It doesn't: https://godbolt.org/z/rU5_5H
> >
> > I assume this is caused by some sort of internal change to the 0day
> > infrastructure (testing W=3D1?)
> >
> > I cannot see this without adding W=3D1 to make at the listed commit wit=
h
> > the provided config.
> >
> > Cheers,
> > Nathan
> >
> > > Anyway, something for Benni to fix. CCed and leaving the rest for him=
 as
> > > reference.
> > >
> > > > arch/x86/mm/init.c:75:1: note: declare 'static' if the function is =
not intended
> to be used outside of this translation unit
> > > > bool x86_has_pat_wp(void)
> > > > ^
> > > > static
> > > > arch/x86/mm/init.c:866:13: warning: no previous prototype for funct=
ion
> 'mem_encrypt_free_decrypted_mem' [-Wmissing-prototypes]
> > > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > > ^
> > > > arch/x86/mm/init.c:866:1: note: declare 'static' if the function is=
 not intended
> to be used outside of this translation unit
> > > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > > ^
> > > > static
> > > > 2 warnings generated.
> > > >
> > > > vim +/x86_has_pat_wp +75 arch/x86/mm/init.c
> > > >
> > > >     73
> > > >     74      /* Check that the write-protect PAT entry is set for wr=
ite-protect */
> > > >   > 75      bool x86_has_pat_wp(void)
> > > >     76      {
> > > >     77              return __pte2cachemode_tbl[_PAGE_CACHE_MODE_WP]=
 =3D=3D
> _PAGE_CACHE_MODE_WP;
> > > >     78      }
> > > >     79
> > > >
> > > > ---
> > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > >
> > >
> > > --
> > > Regards/Gruss,
> > >     Boris.
> > >
> > > https://people.kernel.org/tglx/notes-about-netiquette
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email
> to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-
> linux/20200519212541.GA3580016%40ubuntu-s3-xlarge-x86.
>=20
>=20
>=20
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/831EE4E5E37DCC428EB295A351E6624952648ACF%40shsmsx102.ccr.=
corp.intel.com.
