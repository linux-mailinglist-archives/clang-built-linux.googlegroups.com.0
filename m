Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ6SXP6QKGQE3OMJIWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CCC2B2535
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 21:14:32 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id t12sf6811501ilf.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:14:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605298471; cv=pass;
        d=google.com; s=arc-20160816;
        b=l9hDQd0hLIgQpPwH7qV80DGAPQwADBKzTpwGmySVbC2ZoxtD33yLcQrGGUe2P7DWWk
         gJFWxAYwIDglpahZ/3jcZR7AYxjn71WNo/l8OcyqDEqtLKs/CnUq/Rb3N/SDvSkH0yKM
         7nuY/rDflTxdpdkcgpF6AQJ3ea6rIMs8aifuzysVRYbmfzJDHoMtc76pvXB/PtYv+upG
         PLmItgVHDNYgPwzBGVnb8YyDh2+bsTPc9MPCZPYbMAbgRMtQXnVdgZrhHZs1yo+oHCuf
         wTSpI+4h/zXQ4Q4i/qw2kEzdx6VS8FfPtbkAxsVPAaV0VbMKt7LASKnAoMbQ45LH9w32
         00Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8mHVOw9xfEh28FWiKlrHYwr9rkQILNyJBZCE15Gvpt0=;
        b=aGhMhV/HU7wI8zxN9SQQFimQTl+Ed6CxRM9sUWElEBuFDUYUxjRqGTneIbIn/0SwAj
         o4E207O63BHzzf7hAYNFD61Vv44hrIRymB4ahuNe55cT71xGARoujVZZGLRQJuRmKmYj
         kaDxlrINhYSavWRRQY8JXYbqf03MbXIt50VJOlNFaHYxoQU6mqO8ZRTGACK1zac3t6Jb
         2eTROlcC5wkB8hf3TO+XxZnUdxlEFnRSdjQVHV7UDtE6eoBq3e6KJ2TzeHA1WOk949Sl
         /Rh6fT/fJ95MMfZEoZgp/ZhY3RkvptEl3r0IuREPiQ/1BUDgPZ2zD5yoX98MwjR+iCAe
         3fRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tfJD0iPM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8mHVOw9xfEh28FWiKlrHYwr9rkQILNyJBZCE15Gvpt0=;
        b=UvxYJAE8AuQ7yce4HTVv2FRH5BvqorwNoLylBXnjvdV45KYOEAVdgVELIUihTKkyew
         Lwrr5+7NjxIMIlSvseAMnDkK6KU3ipPtag8k+j3JIdusuabhVD6pzW6OAw/nlAZg6p32
         I4e8PlfGkyib/pz27UQoTn89u43/Q03bSOq0IKVWLOjJs4ESOKjuQzbxnMgTZ9JvYZj8
         WkD+EotT5CKYenCy3nlYqI2BDmdOKKzOtIWK9KfrEhkHlQFIhHNTB+gzlYflEp01P2x2
         RYYJ9KqNR4DnOGvEDa+ZV68bQefC1y+qlTx94n73HwL6Xayf5IMOHMx/Yc5BSr96j/yK
         2EqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8mHVOw9xfEh28FWiKlrHYwr9rkQILNyJBZCE15Gvpt0=;
        b=KfCZoU2abN2iCw7f6qWqtu93xSg/f4SwG9pFTIHnepO61GmzH4kG4f0C4yxPKJNu+6
         03U/rJL1KAdxV6dHFaHzKcfjAzWL6LWJKTO+Fl+5zc72T1OTNuiS5kIJ/YNd4dTiSvvx
         ZkoFoNDJ9w6CYkS274DIhwETXJXNn7YjYRfXDUZAHXl2jFI0NWjGB4HYDd6J05RCQmju
         O03Z0zb9hPtGDPWN+bUIcZ6zssfOL7vBlI50Vx8/aMnyTlmffMo9ykfAO0V6A+KrgqhG
         C+xyIr24y5ydcwY28shbNGOZBu/8XQVt07N8pFumfPo9b9I2ANNM6Z0utAX2ijmj3kyr
         9TaA==
X-Gm-Message-State: AOAM533FWYgo4Qvkh5rYBIjxBB96xxxjifUxs9hFZLaL3KwjVEepiTd0
	cT/3+EzLk6fva/7zpTSkTSA=
X-Google-Smtp-Source: ABdhPJw4D5fc6mVybPytnsQNuqIiXfe6epb0YCrsamS/5WgybtpyfRXJ2rgaoFA8YnezjtOPW8GFsw==
X-Received: by 2002:a6b:8f8d:: with SMTP id r135mr1125713iod.134.1605298471077;
        Fri, 13 Nov 2020 12:14:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:63c:: with SMTP id h28ls876498jar.6.gmail; Fri, 13
 Nov 2020 12:14:30 -0800 (PST)
X-Received: by 2002:a02:a488:: with SMTP id d8mr3255652jam.55.1605298470706;
        Fri, 13 Nov 2020 12:14:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605298470; cv=none;
        d=google.com; s=arc-20160816;
        b=HSm6f07SWlwQ9kmoyAqzA9z/UGZdOB5qmbDkubqPoVVNyDFIEGgj3oAFzTsSbMV0Sq
         sEi6J9PYjn/DRfSiNho/XHus32Wg/LauG5YgScJI6KhTNU+RaWli96wSR1xguoiOl649
         b+yatWtK5Nac7fDOEKZzAs+TfBSQJLJPuAzKM2EOHIcBLNxaI2MepebCLKzE9BleQ1CP
         rG1PMOn15kBhYpncC5t8MsjNlGTCWvJQdy226iTscbXJnHdjSXa12NVBZ5qROlAz/P27
         8W27tU5fSKL3QAfb64D6l+BuEqY2Q0RkraTyeuLyQ02zvfw4zEYJTbEAnwECY8afCaMO
         hSiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SB4yM9BP1q0n/PEjqfc5daeMNdbEriOpuOWP+hRLfIQ=;
        b=ksEZi0Xqrcj2u2OftNtrGYbXhLmUXu24bsDbhP95o+vKZq4B6KLdShM5FrvPez0qnG
         t54D5zwgNOkm5svAc02/o4/YaQ3muM/VuikOpVM31oOPekvfjo4oo+kSZVqLKu+QvXMq
         dwfhd3M/lVWuoBXnDJa5vrzT1x/+dCEIceDST8kURsg6MceS/IuNxKAGBX3c7AgdeC0z
         GWMH2qsQKA1BKyVDjn67T7Hd1wMWGSDxQLWzXb2le7LJzKoYd6fTJ0hhEDBM3Hq1PH7i
         Of4w9P9FOAZ1R56RsN3WTps1uKdupLZt521rYfAfdw3nm1Z+j+Ivi97u/wydqXGJyF1q
         iUbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tfJD0iPM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s11si623066iot.1.2020.11.13.12.14.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 12:14:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 62so7970743pgg.12
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 12:14:30 -0800 (PST)
X-Received: by 2002:a62:ed0d:0:b029:18b:78d:626 with SMTP id
 u13-20020a62ed0d0000b029018b078d0626mr3515257pfh.15.1605298469564; Fri, 13
 Nov 2020 12:14:29 -0800 (PST)
MIME-Version: 1.0
References: <202011131146.g8dPLQDD-lkp@intel.com> <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
 <20201113190824.GA1477315@ubuntu-m3-large-x86> <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
 <20201113200444.GA1496675@ubuntu-m3-large-x86>
In-Reply-To: <20201113200444.GA1496675@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 12:14:18 -0800
Message-ID: <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
Subject: Re: Error: invalid switch -me200
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Arnd Bergmann <arnd@kernel.org>, Brian Cain <bcain@codeaurora.org>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tfJD0iPM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Fri, Nov 13, 2020 at 12:04 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Nov 13, 2020 at 11:42:03AM -0800, Nick Desaulniers wrote:
> > + MPE, PPC
> >
> > On Fri, Nov 13, 2020 at 11:08 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Fri, Nov 13, 2020 at 09:28:03AM -0800, F=C4=81ng-ru=C3=AC S=C3=B2n=
g wrote:
> > > > On Thu, Nov 12, 2020 at 7:22 PM kernel test robot <lkp@intel.com> w=
rote:
> > > > >
> > > > > Hi Fangrui,
> > > > >
> > > > > FYI, the error/warning still remains.
> > > > >
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/=
linux.git master
> > > > > head:   585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> > > > > commit: ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51 Makefile: Fix GC=
C_TOOLCHAIN_DIR prefix for Clang cross compilation
> > > > > date:   4 months ago
> > > > > config: powerpc-randconfig-r031-20201113 (attached as .config)
> >
> > ^ randconfig
> >
> > > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-proj=
ect 9e0c35655b6e8186baef8840b26ba4090503b554)
> > > > > reproduce (this is a W=3D1 build):
> > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/ma=
ster/sbin/make.cross -O ~/bin/make.cross
> > > > >         chmod +x ~/bin/make.cross
> > > > >         # install powerpc cross compiling tool for clang build
> > > > >         # apt-get install binutils-powerpc-linux-gnu
> > > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git/commit/?id=3Dca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> > > > >         git remote add linus https://git.kernel.org/pub/scm/linux=
/kernel/git/torvalds/linux.git
> > > > >         git fetch --no-tags linus master
> > > > >         git checkout ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> > > > >         # save the attached .config to linux build tree
> > > > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.=
cross ARCH=3Dpowerpc
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >
> > > > > All errors (new ones prefixed by >>):
> > > > >
> > > > >    Assembler messages:
> > > > > >> Error: invalid switch -me200
> > > > > >> Error: unrecognized option -me200
> > > > >    clang-12: error: assembler command failed with exit code 1 (us=
e -v to see invocation)
> > > > >    make[2]: *** [scripts/Makefile.build:281: scripts/mod/empty.o]=
 Error 1
> > > > >    make[2]: Target '__build' not remade because of errors.
> > > > >    make[1]: *** [Makefile:1174: prepare0] Error 2
> > > > >    make[1]: Target 'prepare' not remade because of errors.
> > > > >    make: *** [Makefile:185: __sub-make] Error 2
> > > > >    make: Target 'prepare' not remade because of errors.
> > > > >
> > > > > ---
> > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > >
> > > > This can be ignored. The LLVM integrated assembler does not recogni=
ze
> > > > -me200 (-Wa,-me200 in arch/powerpc/Makefile). I guess the GNU as -m
> > > > option is similar to .arch or .machine and controls what instructio=
ns
> > > > are recognized. The integrated assembler tends to support all
> > > > instructions (conditional supporting some instructions has some
> > > > challenges; in the end I have patched parsing but ignoring `.arch` =
for
> > > > x86-64 and ignoring `.machine ppc64` for ppc64)
> > > >
> > > > (In addition, e200 is a 32-bit Power ISA microprocessor. 32-bit
> > > > support may get less attention in LLVM.)
> > >
> > > This is also not a clang specific issue, I see the exact same error
> > > with GCC 10.2.0 and binutils 2.35.
> > >
> > > $ make -skj64 ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc64-linux- olddefc=
onfig vmlinux
> >
> > Does using a non 64b triple produce the same failure?
>
> Yes, CROSS_COMPILE=3Dpowerpc-linux- produces the same failure.
>
> > > ...
> > > Error: invalid switch -me200
> > > Error: unrecognized option -me200
> >
> > There's a block in  arch/powerpc/Makefile:
> > 248 cpu-as-$(CONFIG_40x)    +=3D -Wa,-m405
> > 249 cpu-as-$(CONFIG_44x)    +=3D -Wa,-m440
> > 250 cpu-as-$(CONFIG_ALTIVEC)  +=3D $(call
> > as-option,-Wa$(comma)-maltivec)
> > 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
> > 252 cpu-as-$(CONFIG_E500)   +=3D -Wa,-me500
> >
> > Are those all broken configs, or is Kconfig messed up such that
> > randconfig can select these when it should not?
>
> Hmmm, looks like this flag does not exist in mainline binutils? There is
> a thread in 2010 about this that Segher commented on:
>
> https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391AB6E=
@kernel.crashing.org/
>
> Guess this config should be eliminated?

If we're going to get pestered by 0day bot randconfigs over code
that's not possible to build, I'm all for deleting it.  I doubt we'll
be seeing patches from anyone to binutils for supporting these.

What has the kernel's policy been for code in tree that other folks
can't build (without proprietary tools)? (ARCH=3Dhexagon is pretty close
to not toeing the line here, not sure ICC actually works either).
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkBSGPaKmQY1nERVe4_n19Q%3DMUtuwdond%3DFJAAF9N9Zhg%4=
0mail.gmail.com.
