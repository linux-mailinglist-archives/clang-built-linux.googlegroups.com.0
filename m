Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK5TXP6QKGQEVLE6NLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E88F62B2440
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:08:28 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id t12sf6938837pga.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:08:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605294507; cv=pass;
        d=google.com; s=arc-20160816;
        b=kmCEkF/8GMnYhPnlJst8Qx2hspfAm9RbqYasu2JWNAz6QiIXpfYZ92lf9OSW4W37qA
         LCGkyoLvSBwu/znUPCPxdKhnhYiXUrT8B/IA+B46AqNMV3LWUDejgbfQCQL/ps5s1P09
         5ZazNacYjzFBNUIvflbgtSY8unX1Cu6d6oXgE0rufnocAFvWNS/s4Sem+h8JmVvcNJYw
         X+lXmEjaZGOPGU6HH7K5s36eaXNUhIGE8r8wdaTv+/YrPdXuiRJOIYZ9LXGFA2LSy/Z5
         M2k1/ABtq9RKUqok6+Y9gxNiHfNmqYKOoPxfTRKbPHXgeDYaE064IL+8lhYnjKaVxclO
         n/ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=CeASj34Q4IjFh55GKE3QfHo0pKhLwv2d7AjgWczgFrc=;
        b=gXddUcTuYiHjlQ5UnjEPcJjHpBEbWrOult3rIfLpW7CTeGWBhm1iO4sGPHR5fsxkLb
         DiaPIF+vcnE0ch79vDwxoOPaCkxFoDokbwLAE0oGUpJOK8jmsdKvKx+11eJnJXVVusZX
         p1rk3HzR2y4cbbIVsJ0o97l1jI41/16sT7Qq+ijcbJOi0Sw02aOkOiuyAbe06cUSa21m
         5KRW+LsnKlgSYRAptlFJRTVhlnHLaQDPJP02moAenFaj/1ANTBSqN+FKJ0iVkDub0nR0
         EPgHRGY9jEWfoTWlSoypahNDh9cSHW/bC9Q4jbBacblS4NhmPnjDLSTVDbO4nDtzTuql
         bAZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="m0/mbnDs";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CeASj34Q4IjFh55GKE3QfHo0pKhLwv2d7AjgWczgFrc=;
        b=NPHSTnVJhjp6ewjdsuZ41lX6DP6l93QDSWvKZDHJkwPQtmcTVrbzvlLAE5Bxztj0eX
         F0LqNXuvv2lmBRVng9qMKxxwwGOdB6wa3WVBQcxDJNqGwJeXiBqioF5flSQgzA7hijJn
         s3qUqFc6CTaclkmoPebgZRwBN9y53DfwIzdiqiMn+yKgMXyh48zz5irBxnHmVagTm0oc
         0oUp1gZnZCZfJaAv++hw+BOB5Z0dLulbmWrU3byu65o44dPBj5AvANWTmnbx72Wt/M48
         M2acFtU7CTULJ7c3aG9Fg8sdaaaDUmgaiozTFoQ3Y1BQrxcxZcc6f+NfCS2GbuN0tVGh
         8wmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CeASj34Q4IjFh55GKE3QfHo0pKhLwv2d7AjgWczgFrc=;
        b=AFDWBiRRWQxWxw2E6ZRSKprgqDg5sU67ghUnN1IHKRP//kIhxBMHvIdtauqv4HKM6U
         W4LtJa/79h339jegFPBDTRPDz8cKCoXNSQlsweMnxkyCu7N2kUryZ/qvOxFlqlab8sVo
         +mK+JVvrnH2vpqy99qNyflPXnGQ414gydaskPd6vRhWAKgw4xZAA0JWCLKpKLzOl6BRF
         k9UbBHYfqHu5S1meX+Xfa4JzijK4BTlgrQtO2osjJyscc9ja/Fng4B8raeE9fAxxqfRC
         U2pyd1MmExHnTgdSy5aLbU/4gB+QQ+iN6+rQu1383Bz4XhSMWFIKzkhuqxd/CnYBYjzJ
         95nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CeASj34Q4IjFh55GKE3QfHo0pKhLwv2d7AjgWczgFrc=;
        b=rvgcYSawX7z/oKjlCeskhhDAAX4EKQqb2TkeXDHySMNbOb4fZptV3KLefhwR9XtxiQ
         0fJ6lkAtP1MgMjrzVdfYVMWYfuexvjkJZTheoEOKJBk1zZ79ae78VdOlL62Mdn8eND92
         EORH9dzkK4AD3BBU0Niycpv7rOadjnQl/qr3h7qYVCicaNV3Torez3jelMnz3kKpSHcK
         53IGiKpoDzmhBP9CUnGEwgtZiyQAxH5WimnfX38Yhi9tk+ZUylr0DOpzL5EJ0Lm6Xi5p
         Ik7ku3cS2Hlw/wmB/+JQJD9rI0MTaqeQ741xxwwNFCCqUgMtcvK2Fz2vlUSrvYU2OWGd
         BMFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/1I9lybin0D+mtVruBaqguYpDrIOsMDDfhweQDp7jRiNjQyEc
	gU6abGgpkzwfdBYgQfcmP3A=
X-Google-Smtp-Source: ABdhPJxofVb1g9suvb7ItM9uC6+ocPMtGVEK1iSzpTdruCBU5YA1jt57xCX2qTRDq1Hy0VzCEzW4Ug==
X-Received: by 2002:a65:52cc:: with SMTP id z12mr3115494pgp.24.1605294507624;
        Fri, 13 Nov 2020 11:08:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls2560713pfe.6.gmail; Fri, 13 Nov
 2020 11:08:27 -0800 (PST)
X-Received: by 2002:aa7:93bb:0:b029:18a:d5ef:3260 with SMTP id x27-20020aa793bb0000b029018ad5ef3260mr3403343pff.53.1605294507000;
        Fri, 13 Nov 2020 11:08:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605294506; cv=none;
        d=google.com; s=arc-20160816;
        b=fGLM3WqmG6kPfgStKKEAMGLvV6L8Jj0N7oGnCzgDCpQZ1Dv5eK2fkWbCIaQ2ouPoc2
         iM4EVkYFW4AuLPj3wwbvApm12n1aPxM4mDCpTdgZ9pKVuSEK/Z5GnivUhCNldNI+EoEg
         OVF+LT8aB/C3uMqPTT5yjWUrIObvI/s/waUZAzLjmIkK9v7ycm1RnnnEWJZRxlok2Tds
         KCKypGkgl5I6ftidY/LjOFwOIFKClSA68+W/cyxrrhz8pLLwZFvb/46UcoUfSdwe8rD8
         2gXjrOHhgi0MmAmMeCa2xvBIxQrf7jI6pLfsTSCTcnLabX2cPxamaboCE96PP6rTOESR
         qKmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=s+DP0hsscuvVJP4FCb9JX2LW5UPLPQY316PjTDF9ajE=;
        b=e62Oq0Ktxle55MgaHTYgSzoiitEyc4NIaiGlCJ0cSn4Dt/CZKVwWZXMnX16cFyOdii
         BM8dFe1FvXru2JN+xMpDeAeMlGXhTO/avuy7r7oCA7LoJ878BR3ZpQcXGjoKKyUEtft+
         sIx/OlB/T3AsMPRxqsU2bZSUgp0Vu32Idlmqny2yzFDtVF3SRM+8cBhewvmRvbeCqNTk
         ABAs8PZqNsFiw57paLlhD/1Hr4XEQYhhv9ZX9Mm3G4Bk3s1+D+YajT37dMlkF0sopC6O
         4sIdyA4uIwUFCjTpDRQkAQuZqx9/dVGrnvb1EL9ihYjMIKeQ3XSKH0NR54eAoH3EN1/r
         8xJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="m0/mbnDs";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id bi5si580217plb.2.2020.11.13.11.08.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:08:26 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Received: by mail-qk1-x734.google.com with SMTP id l2so9831823qkf.0
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:08:26 -0800 (PST)
X-Received: by 2002:a37:4489:: with SMTP id r131mr3351024qka.485.1605294506613;
        Fri, 13 Nov 2020 11:08:26 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id j63sm7358525qke.67.2020.11.13.11.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 11:08:25 -0800 (PST)
Date: Fri, 13 Nov 2020 12:08:24 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Error: invalid switch -me200
Message-ID: <20201113190824.GA1477315@ubuntu-m3-large-x86>
References: <202011131146.g8dPLQDD-lkp@intel.com>
 <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="m0/mbnDs";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 13, 2020 at 09:28:03AM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Thu, Nov 12, 2020 at 7:22 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Fangrui,
> >
> > FYI, the error/warning still remains.
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git master
> > head:   585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> > commit: ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51 Makefile: Fix GCC_TOOL=
CHAIN_DIR prefix for Clang cross compilation
> > date:   4 months ago
> > config: powerpc-randconfig-r031-20201113 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e=
0c35655b6e8186baef8840b26ba4090503b554)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc cross compiling tool for clang build
> >         # apt-get install binutils-powerpc-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git/commit/?id=3Dca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kerne=
l/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dpowerpc
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    Assembler messages:
> > >> Error: invalid switch -me200
> > >> Error: unrecognized option -me200
> >    clang-12: error: assembler command failed with exit code 1 (use -v t=
o see invocation)
> >    make[2]: *** [scripts/Makefile.build:281: scripts/mod/empty.o] Error=
 1
> >    make[2]: Target '__build' not remade because of errors.
> >    make[1]: *** [Makefile:1174: prepare0] Error 2
> >    make[1]: Target 'prepare' not remade because of errors.
> >    make: *** [Makefile:185: __sub-make] Error 2
> >    make: Target 'prepare' not remade because of errors.
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20
> This can be ignored. The LLVM integrated assembler does not recognize
> -me200 (-Wa,-me200 in arch/powerpc/Makefile). I guess the GNU as -m
> option is similar to .arch or .machine and controls what instructions
> are recognized. The integrated assembler tends to support all
> instructions (conditional supporting some instructions has some
> challenges; in the end I have patched parsing but ignoring `.arch` for
> x86-64 and ignoring `.machine ppc64` for ppc64)
>=20
> (In addition, e200 is a 32-bit Power ISA microprocessor. 32-bit
> support may get less attention in LLVM.)

This is also not a clang specific issue, I see the exact same error
with GCC 10.2.0 and binutils 2.35.

$ make -skj64 ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc64-linux- olddefconfig =
vmlinux
...
Error: invalid switch -me200
Error: unrecognized option -me200
...

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201113190824.GA1477315%40ubuntu-m3-large-x86.
