Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBLGN2XZQKGQEXS5GDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A83C18DCF0
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 01:58:22 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id a12sf7397796qvv.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 17:58:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584752301; cv=pass;
        d=google.com; s=arc-20160816;
        b=W4ufjn0uE0P3q3iQL7LLHNXsNjl9vmOkzl7BvyJvxBrpvbgzqVbq4dh36uRWuhOj/6
         m4gdyDHrQpPDCr77j3+gs48EM9oV+BDEW6Yj/6NpDvFJ5FYIwHkSlUEY5gXwElVp7B3X
         hT6n4iY7yflEAadzqXndb+Z/LhbUeEqGWykxZDlFlkQ+epJRmD/c9eff9G6CsK/00Ng/
         2X/7JO2oPf1YaQEIiIHT+xEo3UmRaO+Y82cYp9dm/AOfVReydFa3S95waRcTd15n2qlm
         ytbH0Veyi/is+CCXAL1NfEejTCShQxHYNxsdaeX4F6LPOSKaBialwwASPJLpjRyvwU+p
         Irhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=5mlyZdWSYzlAcZIx2E2SDYhDagJqevEEDD3Tipuq81w=;
        b=OXvcVs2F+6LaCqIUl/VQcCW6MvMs/wHAhdKx8oxGKm9UXvmWGYKPI52VOQC2CZDa9Z
         HJXyv+Xb9hCR/9n9BkrEFZTKBbqL8RXH00h6RaUe2s9HvX24Fz8NJf6c2H5cR4ii2N0q
         LJPs6p7t1FRPvXB7ZMuGDeb3sfRQRQcAknif0yE5OInodaAIPzbdDZzuiLZO9GG1DJ6I
         u2h84aUrWaGCxK+8xbjMlFlXeQZW7Xe+aAgNquTew6E0KhdGFRSCTjLmC7bDgRyA8NoJ
         hOr1F9SiDAx5qCiC/n/inf4YmNlx1RB5tHj1qrEDk+A2KVuOxvDJXDcgSnk+NMUnISl1
         GIYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5mlyZdWSYzlAcZIx2E2SDYhDagJqevEEDD3Tipuq81w=;
        b=eptSzrNT7T1JaE5In29BL5AFHEFun8ns+yoScTvsMFAIf/Ms1czahV5c8D/+Q9A2Fu
         O/TJ/Gcp0TA4XZAFhq+DCrZYJRkLQX0T67GB5TMLOfyJJ6Cm6AZ5n72BNj9v9wlZ338r
         wHnJ8f+A5hv3VtLLvoXV5xutEi/Q7QkXOja1Z0jLhTT3+gAofL6OPoiJp8lB/QkVVDuO
         uVf5V6tS5vL+iSuUfbNnNFcWNpNZWCs4GdtKqHj3UoED5n4CccwR57oT3tGJB3/eSINg
         Vq93V/+AooJgtUhoR/DXE0EpvH10gMQh6d3gO1E9JBUQibHrPj5ksqMzPSFJJP/iqkEF
         mTWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5mlyZdWSYzlAcZIx2E2SDYhDagJqevEEDD3Tipuq81w=;
        b=l9cBsO/F/1ie5gJgvqjTu2MHIL0yFDegjm9Q3Pl7JaYrwimU6AcXbcMho8X+MHcJjB
         w8b2uLBvdLYdgm/ywwOW2q1J+tI4f73h30GB4bi3nsKu9koTma3ACOH/aAfWqnY6doRV
         I0fCUql8NUgjTE6TmqXVmjsvCQvXn6055cJcjhwj1UPDChzoKq0lNNTB8s+82Nx/W5sL
         jczzMAY/9r8QcMEiWf7xYrKaQCXZ/0lYc/vAoQob1zCl8VbrjtCeSG5A4Ga7u03ntC6a
         xi2IulDnwn/cyVr0sfNyiRuUrQAEuQLEtsY0ofJqgJDjynjKc/7j5JleY3ltONdl+9nq
         CU0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1jtJJzOf1jcyL2IOd26DeI4d/y3rVOMwdu/VAqMeiOEHEAUiUr
	gmouj8g0V53arIXFNpgdpuk=
X-Google-Smtp-Source: ADFU+vsG3ttp8tGYZ81CdXQBlbm07UdY/35JlDiIVegjat01CO/ZigFWWWtlZwYObLxsL0Lw65C9tA==
X-Received: by 2002:ac8:6b53:: with SMTP id x19mr10976015qts.326.1584752300955;
        Fri, 20 Mar 2020 17:58:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls4431763qkf.1.gmail; Fri, 20
 Mar 2020 17:58:20 -0700 (PDT)
X-Received: by 2002:a37:9683:: with SMTP id y125mr11247685qkd.450.1584752300555;
        Fri, 20 Mar 2020 17:58:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584752300; cv=none;
        d=google.com; s=arc-20160816;
        b=cO5FkgPA45gOqU/q01rvk1hDGUSHRixi3PvD4shFifNqae0gSmKHEnyXNK+YOWjdQu
         sVD/qP/LU06j6XKskuMSRYayz6R86UNEuStMRFuW9KDhqAaVD51XE26Lmof0bv4l9pzq
         sQ2VG1axMeyEkDRLQ4dcnEgNFreBE2UoKOKw8JMcl5RzJn13rKm/01Ttrr+pJsYp+mMb
         SOdiMZcv8v8EQSaeYEtO2axLBzQEmEmxIP3LIwBl5Z+gcRgDf1JoVTTu2qFiMClJKxp5
         igYtM1CUTXHil1Fm01pWHBqj/Nh3m2AdB2lqw4x02ntZPfMlJ/i55eAoPaAOH/IGcYSW
         2cKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=AR0xR8C2XlXA9BYfKFiprUI0CU/BvbnHMRyWclVbYsQ=;
        b=Omw0BltA1recdHDeHPnPgaXbIXXduZajOnMAHecFd3it/9imPn56hb2oAC2Nzwg24X
         PuBSZzjEcfq3JecJ/pQ03/epcxcTD+PZI2Eair2Ku0tndmqbv30RJRLWNTn+U9IxsM/0
         D7vL9C7uxQdm4vRHH48eWuDuMb40GqQV7/Na2CejguJ1HIDs1hXSjA1yJ5XsqSj/fh7/
         ZQ0B+EJB2sS+5r89g3VucOSlvUKIRfh0oKkghwtXkghZIPrpJm2bGkhgoIHWziIsvB2R
         xi3PSQP+OyM9LcJzk+xit3+wvvKWk8NUOO5Zku1vzl+1pjun11XJ5HechTWinSDla4JH
         ShiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id t24si551900qtt.1.2020.03.20.17.58.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 17:58:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: zt/jfsmYVmcUgbCspoK1LcaDm33cjCWlkhLvLZIYymU57YxW92fXU7B7gO0B7KRuws2ozUmkuh
 sb6N0NVU6t/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2020 17:58:18 -0700
IronPort-SDR: kyUz1qtJwnVxzluRMojUltudNXlsregbWjJeWB80vQo8ozHmP9wTVkZb7tbZnImRfQG67uEVtw
 NHVzAxYyVUlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,286,1580803200"; 
   d="scan'208";a="234681931"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga007.jf.intel.com with ESMTP; 20 Mar 2020 17:58:16 -0700
Date: Sat, 21 Mar 2020 08:57:17 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [kbuild-all] Re: [linux-next:master 8211/10629] clang-11: error:
 assembler command failed with exit code 1 (use -v to see invocation)
Message-ID: <20200321005717.GA19135@intel.com>
References: <202003210848.qj0RGHwY%lkp@intel.com>
 <CAKwvOd=4euJP5xkAvYzaopiNQD3hNatX-6DFA2ubkCMK83GuDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=4euJP5xkAvYzaopiNQD3hNatX-6DFA2ubkCMK83GuDA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
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

On Fri, Mar 20, 2020 at 05:30:45PM -0700, Nick Desaulniers wrote:
> Known issue, please ignore: https://github.com/ClangBuiltLinux/linux/issues/675
thanks for info, 0-day ci will blacklist this error.

> 
> On Fri, Mar 20, 2020 at 5:16 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Dirk,
> >
> > FYI, the error/warning still remains.
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   d8f289c16fbb72e17b783175c1fb0942816264fd
> > commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [8211/10629] Remove redundant YYLOC global declaration
> > config: powerpc-defconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1993f95f2b1eb2d8da7f1a01e977d8fe06314bcf)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=powerpc
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    /usr/bin/as: unrecognized option '-mpower4'
> > >> clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
> >    make[2]: *** [scripts/Makefile.build:268: scripts/mod/empty.o] Error 1
> >    make[2]: Target '__build' not remade because of errors.
> >    make[1]: *** [Makefile:1111: prepare0] Error 2
> >    make[1]: Target 'prepare' not remade because of errors.
> >    make: *** [Makefile:179: sub-make] Error 2
> >    34 real  9 user  19 sys  84.67% cpu  make prepare
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003210848.qj0RGHwY%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200321005717.GA19135%40intel.com.
