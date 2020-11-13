Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX6NXP6QKGQEMVRJXPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8012B2515
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 21:04:48 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id q141sf4401926oic.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:04:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605297887; cv=pass;
        d=google.com; s=arc-20160816;
        b=bvGRDr/3qw6ddN3z8zdB5YNfjU0jgMP6O3sd9+8zlY1phrNMaVLn55es4Lz7SHcb9M
         nTiAdVKpJ7aMIVWwGn9xzTgwxUVj/K3q2vuC57pG0oK7dYe6SAXblpl5XZ+z+gaF073W
         vsUElwcnYDaRXNbRA40lP8/QbmBbQRPegd3+uvgCDUCx9L6ombNyD8t1txmlDfJ2PLjK
         WAauo9FsGFCU/3ACIx/1QHKHEGma39AYzR7+uvWE7S96ZwF5nGjuALYCZ3y5c4sXZW6f
         +QRdDuQvjE5kogRND4+jBxsP5cqej5OWSsjV65ALL2zNGMRkrSCF6zW6Y8Q77IJUmmv8
         Th9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=62BHz19qkrUObPFazXbLMKI0rxTL6qUT+qOzfNFqmN8=;
        b=lmRtl2Q9KW8XObv5qFKIISkybmFS+TVl+PuDzXUiZqLk82QLfQF9s2vEezUAu1ND5H
         dqfkGxL6TSZ4XuEcCToMsHgZLSzqzRsK8ZjYLTHpcH+WLAeGHCxv+Trcq0aoCuvZIQMh
         Mp3SagMhh0Lc389SE+FsRhhanPNE6QZcHogcUlI+Qejf/k1lTBsE/24rZAu4y0YKd8HX
         d/Cs45OAagQVf00YoND/fwEIVfwlv2SSU2wuxmzW6H3EsSgqQhMOPD2zmcaxJ4d7C7ZX
         +oNht8SuLaQ0LIJaua95E8g1prr7L5HJdiihuIhyzWB3By7b6lI83spSl9ylxKOxBlQJ
         m1vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MSj/7DxG";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62BHz19qkrUObPFazXbLMKI0rxTL6qUT+qOzfNFqmN8=;
        b=YUrjp7+VItXeTDjWEBSaitPX6et8AYoUy7zWOSn6W7J0BGQDNgzIr1TfTMMf9lHWph
         /IkfxjMZuStVlTuWMoHKzE1lDI3Oe83PIwGBLf6aFpfoZaqOadI+3BMnqatagCTU4A0H
         KJslErkxL49jlyU1lAcuAAHHV8YV1K3q4zB1V4bJByFreOsQYpfGXXp9bVYIw8N4JWjB
         bHB/CiHunmCzwUV0jcV7Qgxsq6VsmxnfZ7g2Quk9fMnkcKt+S+D0dCkjza0GETJw3iQf
         Pb8S+g+tunRn3WDbj0fHrbd8TFVsQM82x//mRZGdAWe5h3Bn3NEK1KNr+iug60QjaSo/
         +VuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62BHz19qkrUObPFazXbLMKI0rxTL6qUT+qOzfNFqmN8=;
        b=PRjiQmzrU1gewIGhx1BOmQIClIcQ1y+XSsX3Nh+EelzsP0fymUYsnCxsgkG9tTmpVl
         pG63DWe519K4mCH/PURyYjQLBYlAncdEwLZagnbuZiAEl8Ok0wSVkqe1TcPnBAP4lguQ
         +/qa2xplSVE8iZYMr5EIa443ZLJCPFF+MamMwQlf/0xxGh0uTHa+If0FweBarObnGBW4
         F7bocQUil30YIU7FXdIts5awtMR6n0eSLyWFl1IX0iIsTDSpzTGO2SI0/IGPBdFMQl85
         SLevFblfTR2I3odpnyiOUy3k8TyxJngcZrMUi88Y4XYAMGqkGLTyjKsPSi/yQe0YdChN
         oqNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62BHz19qkrUObPFazXbLMKI0rxTL6qUT+qOzfNFqmN8=;
        b=q02UIw6b3dDurrZZierCpPDRMR+QGeulCbmoaZ0Z/5lZ1rt6wsn6oLmWWBPlA9IQqA
         rEyPri1r++GM7doVaqVWs7KeNcO444qN8U7313ScZ1P0bHLXRU0ZuiLyDf9Y8dm/nEom
         UZYiHrUS78ieir+nhJlV87+Cvre9im1NrKyiwXiThaUyFSy1sEsCKO5Z35dDrhIr/525
         KJqmAikV6XZPDKGAjLmSoo4UmDRMSgKIYfqtZXGEKKz/aTXPERvEKcUBOX7K8uN+VX9V
         OmaTyMVkxfaNQljZZfWDGA0GiXpcii1SCwJpKm+Hl5R+UKbGK5syXZ94OUB7klL0283K
         /XVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yePFWf13KOxWXEdSKQRri2GxyR/LYNC+m9Mupq8GFS3GKrbVA
	U2uO3Gc5sZTlbu7NHBVFOlQ=
X-Google-Smtp-Source: ABdhPJxol1diAqZVF/Q+9MyOk4yhLmxUjtgKVT7u3GboGVu28jVM1wyRBzJs0T+klW+iEE1DmSnG+A==
X-Received: by 2002:a54:4516:: with SMTP id l22mr1234039oil.117.1605297887295;
        Fri, 13 Nov 2020 12:04:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:416:: with SMTP id 22ls1757397oie.7.gmail; Fri, 13 Nov
 2020 12:04:47 -0800 (PST)
X-Received: by 2002:aca:5883:: with SMTP id m125mr2631203oib.21.1605297886983;
        Fri, 13 Nov 2020 12:04:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605297886; cv=none;
        d=google.com; s=arc-20160816;
        b=jfXu9h3k0z0rJZe/NPLfS8zoVLrheMwKVnsQES5mCwNR7I7wQ8wIHKtfOdic/6WlrF
         KZMudOBJZBxTS6QHYHbf3/n76UWqTehVmykNHDMpZH+L+Hu+TOVCOVh7MP0+EGqBIGJa
         tzWjldl8Rjzd/5DAlC0cqRw+b3ZlTrzobuK0m7PCU8GjwKo4Xe0w4yMORtGdHbHoFajC
         H5X0HGghaLp8GCTAoIZsoQ17ht9QHWj721KxFyx+NRIss/LAV/RnYOMltosZm1TF151a
         T7495d9x7zrgVwOTSoWeo1z95luZ0fI5e10EPvG+8moupcTyutjsuWUWIysF4r4Icb+o
         Eaug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=LXoutfO4oxEs8v+Kx1tbB1USI3p19ljNWVnpsVPx+Gg=;
        b=fYHYLcpWzs3sQSRRt5FBlwpumoMqbvdfp4yzol+yd3UrV3FQ8PyYML12owWwk2HFMO
         bwTypdoFYuSQicSE5EqwkplAu2OrqCXF91wEfpOMurbDvw5I8byOPdjhxW9UvePObK6m
         /v+6RtTdBnqseWTi6k3vtpRH1Hc/b+MCdXSb7pKF4xkUNvUJ7/5/CWY4oMk2/bqrHqJ0
         nUhJfi9+QsvZB8shlf/FIvktY+UNG/bZg28rpTPyGleSJcZdJlc353D0LZAI+VQGOPgf
         Vbu1foLQm61BGCpzmDOeR952H98OiR1S57Z/ZEArPIQ29S1dXnsiG4pzHJ2MgTWqKbUK
         DlEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MSj/7DxG";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id r6si1395025oth.4.2020.11.13.12.04.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 12:04:46 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id ek7so5216265qvb.6
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 12:04:46 -0800 (PST)
X-Received: by 2002:a0c:fe0f:: with SMTP id x15mr4084918qvr.11.1605297886440;
        Fri, 13 Nov 2020 12:04:46 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 9sm7629275qke.6.2020.11.13.12.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 12:04:45 -0800 (PST)
Date: Fri, 13 Nov 2020 13:04:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: Error: invalid switch -me200
Message-ID: <20201113200444.GA1496675@ubuntu-m3-large-x86>
References: <202011131146.g8dPLQDD-lkp@intel.com>
 <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
 <20201113190824.GA1477315@ubuntu-m3-large-x86>
 <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="MSj/7DxG";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Nov 13, 2020 at 11:42:03AM -0800, Nick Desaulniers wrote:
> + MPE, PPC
>=20
> On Fri, Nov 13, 2020 at 11:08 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Fri, Nov 13, 2020 at 09:28:03AM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng =
wrote:
> > > On Thu, Nov 12, 2020 at 7:22 PM kernel test robot <lkp@intel.com> wro=
te:
> > > >
> > > > Hi Fangrui,
> > > >
> > > > FYI, the error/warning still remains.
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git master
> > > > head:   585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> > > > commit: ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51 Makefile: Fix GCC_=
TOOLCHAIN_DIR prefix for Clang cross compilation
> > > > date:   4 months ago
> > > > config: powerpc-randconfig-r031-20201113 (attached as .config)
>=20
> ^ randconfig
>=20
> > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-projec=
t 9e0c35655b6e8186baef8840b26ba4090503b554)
> > > > reproduce (this is a W=3D1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/mast=
er/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install powerpc cross compiling tool for clang build
> > > >         # apt-get install binutils-powerpc-linux-gnu
> > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/=
linux.git/commit/?id=3Dca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> > > >         git remote add linus https://git.kernel.org/pub/scm/linux/k=
ernel/git/torvalds/linux.git
> > > >         git fetch --no-tags linus master
> > > >         git checkout ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cr=
oss ARCH=3Dpowerpc
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All errors (new ones prefixed by >>):
> > > >
> > > >    Assembler messages:
> > > > >> Error: invalid switch -me200
> > > > >> Error: unrecognized option -me200
> > > >    clang-12: error: assembler command failed with exit code 1 (use =
-v to see invocation)
> > > >    make[2]: *** [scripts/Makefile.build:281: scripts/mod/empty.o] E=
rror 1
> > > >    make[2]: Target '__build' not remade because of errors.
> > > >    make[1]: *** [Makefile:1174: prepare0] Error 2
> > > >    make[1]: Target 'prepare' not remade because of errors.
> > > >    make: *** [Makefile:185: __sub-make] Error 2
> > > >    make: Target 'prepare' not remade because of errors.
> > > >
> > > > ---
> > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > > This can be ignored. The LLVM integrated assembler does not recognize
> > > -me200 (-Wa,-me200 in arch/powerpc/Makefile). I guess the GNU as -m
> > > option is similar to .arch or .machine and controls what instructions
> > > are recognized. The integrated assembler tends to support all
> > > instructions (conditional supporting some instructions has some
> > > challenges; in the end I have patched parsing but ignoring `.arch` fo=
r
> > > x86-64 and ignoring `.machine ppc64` for ppc64)
> > >
> > > (In addition, e200 is a 32-bit Power ISA microprocessor. 32-bit
> > > support may get less attention in LLVM.)
> >
> > This is also not a clang specific issue, I see the exact same error
> > with GCC 10.2.0 and binutils 2.35.
> >
> > $ make -skj64 ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc64-linux- olddefcon=
fig vmlinux
>=20
> Does using a non 64b triple produce the same failure?

Yes, CROSS_COMPILE=3Dpowerpc-linux- produces the same failure.

> > ...
> > Error: invalid switch -me200
> > Error: unrecognized option -me200
>=20
> There's a block in  arch/powerpc/Makefile:
> 248 cpu-as-$(CONFIG_40x)    +=3D -Wa,-m405
> 249 cpu-as-$(CONFIG_44x)    +=3D -Wa,-m440
> 250 cpu-as-$(CONFIG_ALTIVEC)  +=3D $(call
> as-option,-Wa$(comma)-maltivec)
> 251 cpu-as-$(CONFIG_E200)   +=3D -Wa,-me200
> 252 cpu-as-$(CONFIG_E500)   +=3D -Wa,-me500
>=20
> Are those all broken configs, or is Kconfig messed up such that
> randconfig can select these when it should not?

Hmmm, looks like this flag does not exist in mainline binutils? There is
a thread in 2010 about this that Segher commented on:

https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391AB6E@k=
ernel.crashing.org/

Guess this config should be eliminated?

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201113200444.GA1496675%40ubuntu-m3-large-x86.
