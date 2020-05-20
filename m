Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN7SSH3AKGQEYHHZNGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B1C1DA680
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 02:26:32 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id 13sf582347oij.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 17:26:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589934391; cv=pass;
        d=google.com; s=arc-20160816;
        b=td7NS73GFZndwtyRURRAudjReaUdxRVFb5lYu+RfE1CkOlkHZuGHMig0LNg1/Fscag
         V1fLjqL8jtpGO3QqwsbV3Hsi1MYSENJxphHkY/CVGZwNaPhuEgnuojmPF3udlllWhaz6
         8Nd8rvU604nMLhEoYteCALKvwVXQepwUEMAZeCStfyXx19cFem8YueEh1he6yxI0sQ2S
         u7WoVJyNShCTEPUrw6gFJ+jlQ7NR6yT04YVNpxtFzyOC+85202laXyFw9kJo8UzEvqYN
         6GVwtxF8tOxTIpMreTOyg9xyjl09yr87QfVARio14wa//9skETWj6qs9hPJkT1pysbmB
         Fy9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pVBWUKaeljB5jXDwqt0AtW0DAoWKBrcxzHruK3NXDV8=;
        b=jB5GCLCrg3aW8vGjaZxtFZHY6+aw4a5F5z5bOBrk9aYTtxxlHkIR8cIPzcL56/bnjz
         82k4txFv8NeziuhSfkeOGf8+Lex9Ua3ZK/6DdL2ZxTpzEGO4rlmVCFo2yCuWJWC6nsEw
         ee9nKWgfe/mCZ5+Nq/GHBaB4Up0jdTM51co0k9Yn9JFjezckPhD38yb0c0rhPevyM1gu
         cROuAlhH0CXIcruio8ewJqRNz9OAQr6+XGk00pGbRYz98UqT4zeMuZGgigP+YStLAV6I
         ZyV7rKDX74vtleyF0y1uLxcwfw/V7jfT7x8N3fyML2NceEP1uyiCmgcHl2giI1XtZEsv
         3hfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D6Rs2jxx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pVBWUKaeljB5jXDwqt0AtW0DAoWKBrcxzHruK3NXDV8=;
        b=ZE5JzGasqM8WS1XL8j9aaBuaHdbGdn91jro269cvRmuEgxu7ZVdyq7z2U9h3WmOXSD
         2bnLqsD9orjlemjsrPKOS9tk0HvLT5vT2/OHyIm3989sqf+GsoyYmnsBj47qqTe/mdqM
         0Ed1mVVuQBViZyZWOaG58ze/FQMUd74G15JgVnHEo9Q2/23UcpAM/y8+MsEDHZZRQdCv
         WigjdwAVn3Zg3zkkMH/CtXGvfM0z7Tj2bbZEiTGPJ6aAtxzte13+1Gl2Vt/pVr/AGIkT
         LcprO8KngkX/7BzMU6r6fwkOPB+tzerIm/uYroPrPgC7FmupCKmQ7Y+KQgEcElhiAUlC
         sVjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pVBWUKaeljB5jXDwqt0AtW0DAoWKBrcxzHruK3NXDV8=;
        b=dBUbnLC2KumXdhkcGjSK3Pi7lG3310jA+susWo8dWxAoEA/xwQvoTnvEXbJlFKgWwM
         VxZXm2v7TPhA5rYlQ8D05aI5hejh75eMi3ctytoqwKWQjFjh3+R3xbcT+gnTKapf3/RF
         tA2vlz6FvW9RQj34OP8FtjA8UW91r59a4cu/hWdGkowvpTQWjRuNBkT5IPQaQV96KYc+
         MTAU0yy7Fi0tY4f+nh5nRGGjd1JOdgENwllZ9fFF585lacJfUaGBfh28JJPCIiW7HkWI
         OOBjVTNQNCp8yCse87MZ/QIWMyAJ9K1/wSxRlxNdezC6jJCc0uCloIwxroluFhMH+8vg
         rfgA==
X-Gm-Message-State: AOAM5304S8yTNuqjZr+hRAggvBfsnnmsGz8VX6V5xPezLVGAgPB8aT42
	Y/k4Vy08NakG09aOz2MohFk=
X-Google-Smtp-Source: ABdhPJy83lmTupl2wRQwVxADq4KFpSdtDpvUJjIPN51gjscXD0/x7rB5TloutcZbcqoitRt6EZGzGA==
X-Received: by 2002:aca:cd93:: with SMTP id d141mr1455123oig.148.1589934391284;
        Tue, 19 May 2020 17:26:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3147:: with SMTP id c7ls235001ots.7.gmail; Tue, 19
 May 2020 17:26:31 -0700 (PDT)
X-Received: by 2002:a9d:6003:: with SMTP id h3mr1388869otj.119.1589934390823;
        Tue, 19 May 2020 17:26:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589934390; cv=none;
        d=google.com; s=arc-20160816;
        b=QzWuOpQGvhUALH/oDFIMrCWlV9ojst8t0ddgP/Vr+pUMr9oH9nXcyIQLLGU+J34IV7
         1vGbjcKqaNYt3ua/Kvz8R7DZQQIgbJ4CnfYlxa/6n427fxZ6NAzL5DVIWxxyPs6atgGV
         9xnuClxDFS/cbAI6FlRnxExLDVUx9JRWSriczOvxdfs0tVkdo4LjCHWbIvSamZGAVht+
         WuBc1YitjYxdCN642ddLJRI4tiUpSKbHxLaZZUFK7F41L8agVZm9T+mLUO0U8Jbhs6ta
         4W2tI0CkL3M4qlddGbFOnB1qWS8rpA2t7SNQ7pH0yU5Z9UixVATDqqygs2fsQhiRX25H
         ddxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PcTvrq/9OvFVVXtSSqrU+vrsIEd2UIjFZopOje8k1ZI=;
        b=im9P3Vwo39F3Wj5wu0RbUFk+H300vd5hShyxxqNwyYogu2+zL1K5i7zaihFlhOI9Ut
         BDUIo7uVhPGIxRsdf44yL/yoERW12DQxwuTk8hpWql0F4rVdt0fBRoShdCXSZZ38eNlQ
         8VeyhFsKbfyk3Aahcj4oMjEHdAy8kiLqoBtSMnU+rEE/vAu69rWOtmN40HpJWoJN/hHK
         4LEqolK/JhVsm1W5r0gno2AC2ZPJrjqSWLrB43seFeFTJB6bI5hquAsQHdXY8x0+3pIw
         93QFgVrNlQdx/yBjdCwHqEqM/Nv8nKIZAzI6KcLNoFZ9eFwGmzzcR3z9flsyrCZQRX1Z
         LcOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D6Rs2jxx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id b20si71411ots.0.2020.05.19.17.26.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 17:26:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id z15so1703741pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 17:26:30 -0700 (PDT)
X-Received: by 2002:a17:902:341:: with SMTP id 59mr1857733pld.119.1589934389684;
 Tue, 19 May 2020 17:26:29 -0700 (PDT)
MIME-Version: 1.0
References: <202005200123.gFjGzJEH%lkp@intel.com> <20200519205505.GD444@zn.tnic>
 <20200519212541.GA3580016@ubuntu-s3-xlarge-x86> <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
 <831EE4E5E37DCC428EB295A351E6624952648ACF@shsmsx102.ccr.corp.intel.com>
In-Reply-To: <831EE4E5E37DCC428EB295A351E6624952648ACF@shsmsx102.ccr.corp.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 May 2020 17:26:18 -0700
Message-ID: <CAKwvOdmoA5ZFCiUQ5fVf7+970Y4bxvU=kYWb49NENQzxdm7F1Q@mail.gmail.com>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
To: "Li, Philip" <philip.li@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Borislav Petkov <bp@alien8.de>, lkp <lkp@intel.com>, 
	Christoph Hellwig <hch@lst.de>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Benjamin Thiel <b.thiel@posteo.de>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D6Rs2jxx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035
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

On Tue, May 19, 2020 at 4:49 PM Li, Philip <philip.li@intel.com> wrote:
>
> > Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no pre=
vious
> > prototype for function 'x86_has_pat_wp'
> >
> > Masahiro and Philip,
> > We're seeing a bunch of -Wmissing-prototypes warnings from 0day bot
> > suddenly today.  Did something change on the Kbuild or 0day bot side?
> Hi Nick, W=3D1 was added to make. This leads to extra warnings.

Ah, ok.  Good to know the change is in 0day bot which rules out
changes to Kbuild and Clang.

It might be helpful to note in the email that this is a W=3D1 build,
since it's non obvious and cannot be set via config.

Generally, the kernel is not W=3D1 clean.  I realize that 0day bot can
filter old vs new.  Why -Wmissing-prototypes is a problem is that:
1. there are already many instances of it throughout the kernel;
references without forward declarations or correct includes.
2. it's easy for someone to call a function like code that already
exists in the translation unit they're touching.

So by adding another implicit call, they get warned for the whole
file.  Generally, the fix is trivial; just include the correct header.
If that leads to tangly-sphagetti-limbo/circular includes, then raw
forward declarations can be used (though it's easy for those to get
out of sync, which can lead to spooky bugs).

I think having in the top of the warning that this is a W=3D1 build will
make it more obvious.

I get that -Wmissing-prototypes can be noisy, but it's trivial to fix.
I do worry what other warnings lurk in W=3D1 though...

>
> >
> > On Tue, May 19, 2020 at 2:25 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Tue, May 19, 2020 at 10:55:05PM +0200, Borislav Petkov wrote:
> > > > On Wed, May 20, 2020 at 01:51:25AM +0800, kbuild test robot wrote:
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.g=
it x86/mm
> > > > > head:   bd1de2a7aace4d1d312fb1be264b8fafdb706208
> > > > > commit: 1f6f655e01adebf5bd5e6c3da2e843c104ded051 [1/23] x86/mm: A=
dd
> > a x86_has_pat_wp() helper
> > > > > config: x86_64-randconfig-r012-20200519 (attached as .config)
> > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-proj=
ect
> > 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > > > > reproduce:
> > > > >         wget https://raw.githubusercontent.com/intel/lkp-
> > tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >         chmod +x ~/bin/make.cross
> > > > >         # install x86_64 cross compiling tool for clang build
> > > > >         # apt-get install binutils-x86-64-linux-gnu
> > > > >         git checkout 1f6f655e01adebf5bd5e6c3da2e843c104ded051
> > > > >         # save the attached .config to linux build tree
> > > > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang
> > make.cross ARCH=3Dx86_64
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > >
> > > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > > >
> > > > > >> arch/x86/mm/init.c:75:6: warning: no previous prototype for fu=
nction
> > 'x86_has_pat_wp' [-Wmissing-prototypes]
> > > > > bool x86_has_pat_wp(void)
> > > > > ^
> > > >
> > > > Triggers with gcc too:
> > > >
> > > > make W=3D1 arch/x86/mm/init.o
> > > >
> > > > ...
> > > >
> > > > arch/x86/mm/init.c:81:6: warning: no previous prototype for =E2=80=
=98x86_has_pat_wp=E2=80=99
> > [-Wmissing-prototypes]
> > > >    81 | bool x86_has_pat_wp(void)
> > > >       |      ^~~~~~~~~~~~~~
> > > >
> > > >
> > > > -Wmissing-prototypes is default off, though, dunno why clang 11 has=
 it
> > > > on.
> > >
> > > It doesn't: https://godbolt.org/z/rU5_5H
> > >
> > > I assume this is caused by some sort of internal change to the 0day
> > > infrastructure (testing W=3D1?)
> > >
> > > I cannot see this without adding W=3D1 to make at the listed commit w=
ith
> > > the provided config.
> > >
> > > Cheers,
> > > Nathan
> > >
> > > > Anyway, something for Benni to fix. CCed and leaving the rest for h=
im as
> > > > reference.
> > > >
> > > > > arch/x86/mm/init.c:75:1: note: declare 'static' if the function i=
s not intended
> > to be used outside of this translation unit
> > > > > bool x86_has_pat_wp(void)
> > > > > ^
> > > > > static
> > > > > arch/x86/mm/init.c:866:13: warning: no previous prototype for fun=
ction
> > 'mem_encrypt_free_decrypted_mem' [-Wmissing-prototypes]
> > > > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > > > ^
> > > > > arch/x86/mm/init.c:866:1: note: declare 'static' if the function =
is not intended
> > to be used outside of this translation unit
> > > > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > > > ^
> > > > > static
> > > > > 2 warnings generated.
> > > > >
> > > > > vim +/x86_has_pat_wp +75 arch/x86/mm/init.c
> > > > >
> > > > >     73
> > > > >     74      /* Check that the write-protect PAT entry is set for =
write-protect */
> > > > >   > 75      bool x86_has_pat_wp(void)
> > > > >     76      {
> > > > >     77              return __pte2cachemode_tbl[_PAGE_CACHE_MODE_W=
P] =3D=3D
> > _PAGE_CACHE_MODE_WP;
> > > > >     78      }
> > > > >     79
> > > > >
> > > > > ---
> > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > >
> > > >
> > > >
> > > > --
> > > > Regards/Gruss,
> > > >     Boris.
> > > >
> > > > https://people.kernel.org/tglx/notes-about-netiquette
> > > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Gr=
oups
> > "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, sen=
d an email
> > to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> > https://groups.google.com/d/msgid/clang-built-
> > linux/20200519212541.GA3580016%40ubuntu-s3-xlarge-x86.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmoA5ZFCiUQ5fVf7%2B970Y4bxvU%3DkYWb49NENQzxdm7F1Q%4=
0mail.gmail.com.
