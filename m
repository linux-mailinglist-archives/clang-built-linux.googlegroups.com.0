Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNHH4TZQKGQEQ42BX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E471900EB
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 23:09:57 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id c2sf8042472iok.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 15:09:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585001396; cv=pass;
        d=google.com; s=arc-20160816;
        b=GXaCYvteqU8zHAa7nrK1MoLH4MTjPsITKbQjqerJyXVNk+fDYEf3eMF27zDegbv7WF
         fvgy6Q7IEpOb8KoUrBROeX5WOYssYG+unpH2zYKNXGeJnZinU2aJkBcArrcINbrmJRSq
         H6HBjzKb1qeCK5L6tFbMZoRHd+lddk0UmW5sad+UW2bcP1EmCOagQE7rrNXcVZQobgr4
         OTj0cwtBm2NgiuiQAfYez2U/cfdhh5KSclZ2ErQ2naCiivi4FexpCa/Aq50CkIpwnTrO
         IyyJ2lz4EgqauHb3C1udnMqbUjN+FMU6Sp8Yvv0kDHhFgQqXl4Y+18MVW+MvBovAH2CE
         ULmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7iKraSTKGmWSvqYji1AmtLshcLYKdXcW/tVG3o/j7Lw=;
        b=dTczJ1pMaMew1jDTilMxS3zXu47r+rcyePoIAafOEj/Ny/tsOvUJQfT3a0D/nlg5sn
         BwYg+GqPRNeuXpQWspYJKB2VG9xpmLD/67q6O9y93eHsS3Omra61Q/LmCPVUxUvzfQPb
         Efc32xqkbeaVoHM8pUDwpxg99h6sS34W//3ks95aaWMmvYum79q4qSIuKxm0Rqqf9Vle
         qz58VODk+AGazhul+iI8XjjsunpT0xHDuTRkxOGAmfJxvInoslh45w5TlKPdLT11HbRH
         KGM8fZn7FEBOQqo3Uq2DxaXY0u2qGtB8CDI4pftWrxWJd4uSnn15vOvYRCF76XClzenV
         4t6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YOzMFtTV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7iKraSTKGmWSvqYji1AmtLshcLYKdXcW/tVG3o/j7Lw=;
        b=fh+lYTXpOC+SIoGVzmC1sq8VNDzn3qoqakXgER/O3CXMen4JGRaDS2USqmxUPlFlOP
         Jyeux3kf/OLk85BvryU0zgInLfUt2yuVwX8sahC7GuQ5PQNY3wpLXeEny0Sy+6aWiqxd
         lNIQxZxHBSR/yKvAhSF0o1sXrbpXzCLOGNm33/OKSjqtiKX6HQd4SymAIOB9+U/xPNCC
         39Mj0s1ugAmYXWW0HO/uTlEwOCaHfdR04FYX0OoLRQGzYifDLs1KPzuVZigiYhi2LytK
         UkWA5nX0h9A13HYq1dx57NwapLZiIxB9KqfDMZzwZCGxab3Irl/siR6a0CzxU5ACmWqk
         wcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7iKraSTKGmWSvqYji1AmtLshcLYKdXcW/tVG3o/j7Lw=;
        b=Raa+lILsd2m4ZJhsMSUHIoRHTZMdrX7gC8F7xplF3nkTj0fLbHjmIuW8g2WpCrM/D+
         ynNsazx9B/4qdVI+SH9CHvmxps2LU+1VALIpqOrA9CDKQPlHGpXgK4L9LQ33gQozMqZC
         5hiCtgkCPPpgi6IBm5i6TZvRRvwKbM2PzBUIDWC/NYRwK7jzH4CmHd7f+8xIHt+19l5M
         kYS/8eloodS4b7cMMWWnF1+tuSUjjvV//I43z80D8rXYwvj/0JY3mNQIS5pfLyJvcNGF
         tM/AVM//EOuEXSJsTsD/cfzaPLB7gbmDgUHd2rWJ4MdBLSdzN0pPtt8JfI5FQweDCeW3
         678Q==
X-Gm-Message-State: ANhLgQ3gI96DvJwyOcuadPgcGEtwT68okgvrontbIMjrEKynVAxGlR4X
	FHyw+uxe/rOw3AG7RuNBF/o=
X-Google-Smtp-Source: ADFU+vvmgxRidNoBh/wvcWcTksSvUpIV9eg76e/ENnuRd0ZuWYNNH/FHSMMzoB9AG8NjZXFmoWaFmg==
X-Received: by 2002:a6b:fd08:: with SMTP id c8mr5614448ioi.102.1585001396653;
        Mon, 23 Mar 2020 15:09:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3d8d:: with SMTP id k13ls3164673ilf.5.gmail; Mon, 23 Mar
 2020 15:09:56 -0700 (PDT)
X-Received: by 2002:a05:6e02:be7:: with SMTP id d7mr23952828ilu.238.1585001396330;
        Mon, 23 Mar 2020 15:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585001396; cv=none;
        d=google.com; s=arc-20160816;
        b=MpFeFkqWacme4pKNh8ZGtLYIUU/hvWYtdHoXN6pUnIVr77cFhoEkhV5mniF2dF4Z7o
         dFsPfcpv45Jz5q8t2DFCPzXOvFu7I7RzGYCaA3IBXEDmAIXXylcdSH7bAr1Io1qiNInb
         OSrushKy37QnAeNOEhMjNKj4rkAChgMfB/NR30bnwnGapurp6wcuqwvQ3k7GnzXewqUv
         JI9MiXbDUWRnzYOPN22VaF3JIR5dIn3BIqwPLYuNFLJ/kdDMGBc/dV7vmZtK55wK9DjU
         nBVcSBk60mvlv6LaNxMqR01PHfeG04YM4nf4zrrqNYFuQoWekdkK0acO/38YjCXUf7Rx
         u+5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f7wgKcd773ce+0j550Cb5SYjLFDnfTMDv7hMDwDQqCA=;
        b=QgHSOkbNnbEZmiGDT0+hoBitM81GOqWxnCHXpohJSvrUnb4eCfLtCYZPbci5af+Q72
         7Tf3qrsP4TAeTDUDaIDswzu2/xBT3bD9k4qSB390hFRlh758cNHK+tdgfMY73Y9lvNO7
         6bKMci9dXOBNq6zDFXYiv4aJTUpHtQeyO/N3bFcOJV8O/WE7ClSNCmV9OVLJXwBfDyeW
         +uPESLkIlGmCpzEaMY7xcc5RZoW4e1DJ/iSKuvJePVMSsketSXEEl0SorfBlc/aClN/r
         FChbm9H9zhFyBnAMtvFzusEFTZVQUzaysyVjgPcpEfHVR7+woKJ1hDcKzuq7TH7dalTi
         ksFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YOzMFtTV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id u6si1220694ili.3.2020.03.23.15.09.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 15:09:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id f206so8209781pfa.10
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 15:09:56 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr24728164pgb.263.1585001395616;
 Mon, 23 Mar 2020 15:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <202003210848.qj0RGHwY%lkp@intel.com> <CAKwvOd=4euJP5xkAvYzaopiNQD3hNatX-6DFA2ubkCMK83GuDA@mail.gmail.com>
 <20200321005717.GA19135@intel.com>
In-Reply-To: <20200321005717.GA19135@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 15:09:43 -0700
Message-ID: <CAKwvOdko3Bw9ZyzGNm0yghNW+0F_6atWCO09EjGz=-d=AJ+NCg@mail.gmail.com>
Subject: Re: [kbuild-all] Re: [linux-next:master 8211/10629] clang-11: error:
 assembler command failed with exit code 1 (use -v to see invocation)
To: Philip Li <philip.li@intel.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YOzMFtTV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
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

DTC folks to bcc

On Fri, Mar 20, 2020 at 5:58 PM Philip Li <philip.li@intel.com> wrote:
>
> On Fri, Mar 20, 2020 at 05:30:45PM -0700, Nick Desaulniers wrote:
> > Known issue, please ignore: https://github.com/ClangBuiltLinux/linux/issues/675
> thanks for info, 0-day ci will blacklist this error.

I'd rather not blacklist it.  So it looks like we don't see this in
our CI (example:
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/301119543).
It seems related to which config you compile with.  With the attached
config, I was not able to reproduce:

$ gunzip config.gz
$ cp config .config
$ ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu- make CC=clang -j71
olddefconfig # note this shouldn't be needed
$ ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu- make CC=clang -j71
scripts/mod/empty.o

Doesn't produce anything, no error from make about being an invalid
target, but also no -mpower4 warning.  I also don't understand why the
provided config doesn't set or unset many configs in linux-next.

Can you please triple check? I want to make sure the steps to
reproduce are reproducible.

>
> >
> > On Fri, Mar 20, 2020 at 5:16 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > Hi Dirk,
> > >
> > > FYI, the error/warning still remains.
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   d8f289c16fbb72e17b783175c1fb0942816264fd
> > > commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [8211/10629] Remove redundant YYLOC global declaration
> > > config: powerpc-defconfig (attached as .config)

'powerpc-defconfig' doesn't seem to be a named config.  Seems I must
use the attachment?

> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1993f95f2b1eb2d8da7f1a01e977d8fe06314bcf)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
> > >         # save the attached .config to linux build tree
> > >         COMPILER=clang make.cross ARCH=powerpc

Hi Philip, I tried the above commands to reproduce, but I see:

$ COMPILER=clang make.cross ARCH=powerpc
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13:
Permission denied)
E: Unable to acquire the dpkg frontend lock
(/var/lib/dpkg/lock-frontend), are you root?
cross tool binutils-powerpc-linux-gnu install failed
Please ensure powerpc cross tools has been installed.
Please install: xz-utils lftp
Install clang compiler failed
setup_crosstool failed
$ sudo apt install binutils-powerpc-linux-gnu
binutils-powerpc-linux-gnu is already the newest version (2.33.1-2).

Should install_cross_packages() check for these first, instead of
always trying to install them?

> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    /usr/bin/as: unrecognized option '-mpower4'
> > > >> clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
> > >    make[2]: *** [scripts/Makefile.build:268: scripts/mod/empty.o] Error 1
> > >    make[2]: Target '__build' not remade because of errors.
> > >    make[1]: *** [Makefile:1111: prepare0] Error 2
> > >    make[1]: Target 'prepare' not remade because of errors.
> > >    make: *** [Makefile:179: sub-make] Error 2
> > >    34 real  9 user  19 sys  84.67% cpu  make prepare
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003210848.qj0RGHwY%25lkp%40intel.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdko3Bw9ZyzGNm0yghNW%2B0F_6atWCO09EjGz%3D-d%3DAJ%2BNCg%40mail.gmail.com.
