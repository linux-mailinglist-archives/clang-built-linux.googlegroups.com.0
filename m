Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBFP7SH3AKGQESEJOZXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2221DA6CB
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 02:53:42 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id j26sf530934uan.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 17:53:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589936021; cv=pass;
        d=google.com; s=arc-20160816;
        b=SSCyuUsBhx8h/b/FBm22h2R5MwM2sgMm8i0OGuQR2iSBi9UUh950KlbfzSGnne4VwE
         HnbhoR9o82SmpZEI9Ecuned0eqy1wv9eLSFBRy1BZjuOBKBiVtD78SV61S+MkxoVoqDF
         p79XB1poLQYsSYnT3LqY2N29KnbbvJmULejL0DLCbttaWj1mDTU4/CwStSoO3XD5X3IE
         CkPQOzl0hxd00EzMeSbWQ3SiD0zFBf57n7/aZVBjME8sdUS6XHz1wgAVI2Fkq9d0W5TB
         /JxLZF4eBTSwfsrQQyDCdtkATX1KeJI68m0ZibmyziuYxZUpUh9kYa5gDGBaoQaq5XpT
         J5Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XA10f9T4JcVUgE0hisCDHbELw7OpfilIKDRYynArpys=;
        b=ZxxuOrHo1/lXGZseQomC3BzwTKYXxXKnfAKp6XbfsTGCY1IIQ8gFUuCuURX2bfeVPI
         mOMJ8L0MYB0ePXoiSjMV2B6O8zYM/hfIxRoGtVMqVs6Q9cl/y3jVTN1f2HZbtXVaIHCG
         X8sTmx87C5N3LmUkdaWMRs186ESdOOK0MZi37O9ls0uNSK5baZJ/xBnxLT2sjT4d9mqW
         LF2HBGZ245wMSVr+1RPYZFDf2GYV7QMpGNRUf5CjGMWviSfAREMm5CLRRDN5Zfczg5HZ
         0yKmZZJqVSHrqv1fXlABkZs02f2iLBAO2EhBGRkAUNzKSV131sgMO8qXiTJQkysB1FVF
         yT6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XA10f9T4JcVUgE0hisCDHbELw7OpfilIKDRYynArpys=;
        b=A4xKQvmwMzsSGnDwWVvxMvrzNF6rhpXaV/l83mPsvBj1/J4R6PAkadpTx0mTca++2B
         g9Jm9OMsRaymoJO/vcsvZ8BfsDHKIOR158fCnC16FfT/NhfyEexI5AaS4o+3litbXD+Q
         v2B0CfaeeEKVIrf+exkNDm13unK0RKhqLOuJFnyBVZ4V4oygtNU6rLydiHi9i6rnw5Eh
         4fMtb1VMY8rCreeyx2jVtLPqFWnSk9krcw//l2pTYM2d/epWmab71eZRZeBN27NrFxOZ
         rss8n7FCzsLh/+YmdJs1JK0O90DHG5rAK9d58PYykI2uUKPsPr07iEdBduPOqZMkH56z
         4FeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XA10f9T4JcVUgE0hisCDHbELw7OpfilIKDRYynArpys=;
        b=MyZhJbJt77MrwG16z6Kv/2FDgX1sjmpmYMAyug2PmWcYQmNthaX7UMFFTxZP2KY2Ob
         T7TNL9pcOmd7qQ9fKNivkiKW66VQiazBAM0zGv5x2K3dw4Jy75KM3ISkopsbxQ/M2n5f
         hCQ1mBZJkefF03n5nArpfeofaibR3st/DmWgzgNO2AnopMH5Hv0z+7kK1fPWPz1k9Ztx
         I73UqxP5n4RgUv6cVnOrJCS68Y3kEoOKo5wI9kl2F14+JzT8CpdlGxohoAKresv0fwC8
         YOc93yNZx45k86buZNDJO/0vs0wVsfaruT1kjXfLVPqAodEaKPP4MaPRvAW1sAMcUv7q
         iOLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323rgoWkLrF/S3kDrLWSk7KJ31bnZEsvoYqNCW/pilgGQxdN70q
	pOaqP0pBCnSx9+5OxRdEQUU=
X-Google-Smtp-Source: ABdhPJzAhDr9UCKiwbwDFut3zYoMAcYjJs8bYDq1pHBLyz3XihSl4MZVsk11lClHfyz9HId+5zEWsg==
X-Received: by 2002:a1f:ab4f:: with SMTP id u76mr2134809vke.62.1589936021345;
        Tue, 19 May 2020 17:53:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3184:: with SMTP id x126ls121259vsx.11.gmail; Tue, 19
 May 2020 17:53:40 -0700 (PDT)
X-Received: by 2002:a67:783:: with SMTP id 125mr1659517vsh.24.1589936020847;
        Tue, 19 May 2020 17:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589936020; cv=none;
        d=google.com; s=arc-20160816;
        b=Ls8jEUSSU6tU15yVEB8YuICKWhONMyYb7Lj6b3vKkAP/ZC7RZqxqDc//h6EXQnSNuM
         Bdyak/HFmzCGurRCH1FKL7Sw5ckzFg6Xfe+r6SNQ0ykL7GM/5RrXhcAKCDMpUKXr0C9A
         L8NNNZ/YZZy9pquvlK5gxuPFR9dSrefjgvOkEQnO9SY3RFIy3cvc81U/txvF8kylqcoJ
         +AoSIzatVu3asyGVpbY6MKNH1ocHSj4tmbfCxjmcIN8mkoULRObdToFIH5B2ObSL+Rwk
         xFv+o1K3TTp3+cRYOeeS18Pl/WlNcJXgATd76GYnBXQsBs53iMkuDhTk2q6LUo2dkzEy
         CKBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ezYuj16PvDlHVUn/NM/L77huCCk1Phi8xBSG78FuDgA=;
        b=vckeN0KczcN4LOa/zGCWXGShlzIohknNkL8OJi/rwnEG0QZEu6NxBbag7Lidj5YvnK
         BsOC77p+WgHyztlorvCIKubHDClqzufZ9ML3aDrvxTSgNAejR40kPEyBTcJ/ztF4LHsc
         nqFk6kVWeCOzJ/TkpdivN94hHsDHRb+V7iAWyS7wQROrCI5BnnS30kE7zfpUgucTciBc
         zB9gRXyFxi/r60l51m6WA7Bf1280M+axVR8N2AGuCPDfv6rbALzW4WYyhsbYWTXNUCKH
         KRpcauRaw/icDPK1ILrJ7I9FrCbm8i3AGCcKZx1GnRC7oAzOBevCW+1/2449Aq6hd7LK
         5Anw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id d24si136573vsk.2.2020.05.19.17.53.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 17:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: rDo0JhYvRJ5UKuEMSLqiAuOYKcfm8BvGH7LK02FQBu2iFT7jq1ToL7Lfse3Bkcxzioy8I9Z0Ck
 pQDRYRoCZcpg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 May 2020 17:53:39 -0700
IronPort-SDR: tVnx08PHSb6c9NwjAPiU/w/IktCBnbvOga6w7xs9suclrO7oyw5N1TDRAIUVomdAQLYA3wdn1U
 3SEIl+iuUWzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,412,1583222400"; 
   d="scan'208";a="268080225"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga006.jf.intel.com with ESMTP; 19 May 2020 17:53:36 -0700
Date: Wed, 20 May 2020 08:52:18 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Borislav Petkov <bp@alien8.de>,
	lkp <lkp@intel.com>, Christoph Hellwig <hch@lst.de>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Benjamin Thiel <b.thiel@posteo.de>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
Message-ID: <20200520005218.GA3101@intel.com>
References: <202005200123.gFjGzJEH%lkp@intel.com>
 <20200519205505.GD444@zn.tnic>
 <20200519212541.GA3580016@ubuntu-s3-xlarge-x86>
 <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
 <831EE4E5E37DCC428EB295A351E6624952648ACF@shsmsx102.ccr.corp.intel.com>
 <CAKwvOdmoA5ZFCiUQ5fVf7+970Y4bxvU=kYWb49NENQzxdm7F1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdmoA5ZFCiUQ5fVf7+970Y4bxvU=kYWb49NENQzxdm7F1Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.24 as
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

On Tue, May 19, 2020 at 05:26:18PM -0700, Nick Desaulniers wrote:
> On Tue, May 19, 2020 at 4:49 PM Li, Philip <philip.li@intel.com> wrote:
> >
> > > Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no p=
revious
> > > prototype for function 'x86_has_pat_wp'
> > >
> > > Masahiro and Philip,
> > > We're seeing a bunch of -Wmissing-prototypes warnings from 0day bot
> > > suddenly today.  Did something change on the Kbuild or 0day bot side?
> > Hi Nick, W=3D1 was added to make. This leads to extra warnings.
>=20
> Ah, ok.  Good to know the change is in 0day bot which rules out
> changes to Kbuild and Clang.
>=20
> It might be helpful to note in the email that this is a W=3D1 build,
> since it's non obvious and cannot be set via config.
thanks for reminding this, we will update the report info to reflect
this, e.g. part of reproduce step.

>=20
> Generally, the kernel is not W=3D1 clean.  I realize that 0day bot can
got it, we have logic to limit that not to report too old error, so
the idea is to scan recent submitted patches.

> filter old vs new.  Why -Wmissing-prototypes is a problem is that:
> 1. there are already many instances of it throughout the kernel;
> references without forward declarations or correct includes.
> 2. it's easy for someone to call a function like code that already
> exists in the translation unit they're touching.
>=20
> So by adding another implicit call, they get warned for the whole
> file.  Generally, the fix is trivial; just include the correct header.
> If that leads to tangly-sphagetti-limbo/circular includes, then raw
> forward declarations can be used (though it's easy for those to get
> out of sync, which can lead to spooky bugs).
>=20
> I think having in the top of the warning that this is a W=3D1 build will
> make it more obvious.
>=20
> I get that -Wmissing-prototypes can be noisy, but it's trivial to fix.
> I do worry what other warnings lurk in W=3D1 though...
with some monitoring, so far, issue like unused-but-set-variable is quite
helpful. We will keep monitor for other issues and feedbacks.

>=20
> >
> > >
> > > On Tue, May 19, 2020 at 2:25 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > On Tue, May 19, 2020 at 10:55:05PM +0200, Borislav Petkov wrote:
> > > > > On Wed, May 20, 2020 at 01:51:25AM +0800, kbuild test robot wrote=
:
> > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip=
.git x86/mm
> > > > > > head:   bd1de2a7aace4d1d312fb1be264b8fafdb706208
> > > > > > commit: 1f6f655e01adebf5bd5e6c3da2e843c104ded051 [1/23] x86/mm:=
 Add
> > > a x86_has_pat_wp() helper
> > > > > > config: x86_64-randconfig-r012-20200519 (attached as .config)
> > > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-pr=
oject
> > > 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > > > > > reproduce:
> > > > > >         wget https://raw.githubusercontent.com/intel/lkp-
> > > tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > >         chmod +x ~/bin/make.cross
> > > > > >         # install x86_64 cross compiling tool for clang build
> > > > > >         # apt-get install binutils-x86-64-linux-gnu
> > > > > >         git checkout 1f6f655e01adebf5bd5e6c3da2e843c104ded051
> > > > > >         # save the attached .config to linux build tree
> > > > > >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang
> > > make.cross ARCH=3Dx86_64
> > > > > >
> > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > > >
> > > > > > All warnings (new ones prefixed by >>, old ones prefixed by <<)=
:
> > > > > >
> > > > > > >> arch/x86/mm/init.c:75:6: warning: no previous prototype for =
function
> > > 'x86_has_pat_wp' [-Wmissing-prototypes]
> > > > > > bool x86_has_pat_wp(void)
> > > > > > ^
> > > > >
> > > > > Triggers with gcc too:
> > > > >
> > > > > make W=3D1 arch/x86/mm/init.o
> > > > >
> > > > > ...
> > > > >
> > > > > arch/x86/mm/init.c:81:6: warning: no previous prototype for =E2=
=80=98x86_has_pat_wp=E2=80=99
> > > [-Wmissing-prototypes]
> > > > >    81 | bool x86_has_pat_wp(void)
> > > > >       |      ^~~~~~~~~~~~~~
> > > > >
> > > > >
> > > > > -Wmissing-prototypes is default off, though, dunno why clang 11 h=
as it
> > > > > on.
> > > >
> > > > It doesn't: https://godbolt.org/z/rU5_5H
> > > >
> > > > I assume this is caused by some sort of internal change to the 0day
> > > > infrastructure (testing W=3D1?)
> > > >
> > > > I cannot see this without adding W=3D1 to make at the listed commit=
 with
> > > > the provided config.
> > > >
> > > > Cheers,
> > > > Nathan
> > > >
> > > > > Anyway, something for Benni to fix. CCed and leaving the rest for=
 him as
> > > > > reference.
> > > > >
> > > > > > arch/x86/mm/init.c:75:1: note: declare 'static' if the function=
 is not intended
> > > to be used outside of this translation unit
> > > > > > bool x86_has_pat_wp(void)
> > > > > > ^
> > > > > > static
> > > > > > arch/x86/mm/init.c:866:13: warning: no previous prototype for f=
unction
> > > 'mem_encrypt_free_decrypted_mem' [-Wmissing-prototypes]
> > > > > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > > > > ^
> > > > > > arch/x86/mm/init.c:866:1: note: declare 'static' if the functio=
n is not intended
> > > to be used outside of this translation unit
> > > > > > void __weak mem_encrypt_free_decrypted_mem(void) { }
> > > > > > ^
> > > > > > static
> > > > > > 2 warnings generated.
> > > > > >
> > > > > > vim +/x86_has_pat_wp +75 arch/x86/mm/init.c
> > > > > >
> > > > > >     73
> > > > > >     74      /* Check that the write-protect PAT entry is set fo=
r write-protect */
> > > > > >   > 75      bool x86_has_pat_wp(void)
> > > > > >     76      {
> > > > > >     77              return __pte2cachemode_tbl[_PAGE_CACHE_MODE=
_WP] =3D=3D
> > > _PAGE_CACHE_MODE_WP;
> > > > > >     78      }
> > > > > >     79
> > > > > >
> > > > > > ---
> > > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > > >
> > > > >
> > > > >
> > > > > --
> > > > > Regards/Gruss,
> > > > >     Boris.
> > > > >
> > > > > https://people.kernel.org/tglx/notes-about-netiquette
> > > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google =
Groups
> > > "Clang Built Linux" group.
> > > > To unsubscribe from this group and stop receiving emails from it, s=
end an email
> > > to clang-built-linux+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/clang-built-
> > > linux/20200519212541.GA3580016%40ubuntu-s3-xlarge-x86.
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520005218.GA3101%40intel.com.
