Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB24U633AKGQEWJO3EOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B04D41F10BD
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 02:46:36 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id z12sf9859399iow.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 17:46:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591577195; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkwF5XQEy+Wxk9Qn57AqJ0qQ47yBfh6nvK1Ve7uuFidu570Bi0m+vYxAk+H3pfrn1S
         7j6B+JK9T9xjrT/9EKQFjZHWxkcoVwlA2C1tidozeSaF420DObICecuOShtFMlPIbn9G
         /QISpiwCB1Ca3lSoaeNkrzQ/ZU3QsFrO535fBSs+jUymcMx2qQnFGHtx1D+mOo4IXA4n
         Aa31W6KuobJpwoahD5Lsz+bUMfKTyBhmgOVJuDKMVi3WjEqdKWBkTnxf2SwrZoT3Cv+c
         sxNC6vgjIr4Sad2mxqHAVJ3YmtnQRLl8gcDtl3Hdyr3yKOZ7Xq+xspS7KAfp9XJLgFKx
         wz3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=PgUARN5Bj5jhRPL04E4Ztn0nr0OKJkI5KJSyMisAGr8=;
        b=zE6J8EgQvO0zthMo0wMrqZoJ+pG6XpCPcQKbyV4PwV/myqsfYysTYYlATLgCtUmOA0
         2wNAPNb9gdgfU879J6wW9h+e0kqIyu8SPtucEymxe+0yjw3mlsLUKOMRrpowV8e70UAG
         bATgb7xEhbSkRF9adT/NaS+FfgAsl4U8hNoZyvhihyX9SDyul7h68qi1svxPX/n0/eVg
         pHgAgrsBS3cDlYHfWp6NuIjT6objBRFeAVRWwygSobJsG3bXIsyWDEv9gbxwuk2ow/29
         lNvIPT/tCXhv/T9AILBPyXmA32SRzKJOvsBSqw7UH4A0RpSqxmb6pWTtNAN3BTc7qnCq
         /0kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgUARN5Bj5jhRPL04E4Ztn0nr0OKJkI5KJSyMisAGr8=;
        b=lfLo/9NOLs+WQrxOzanRVszq4kOtw92RKpXTkOwOuQ1lolp1mDmDZoAl2lB2rtOTUL
         wi/URzMMidnTeuvWSc0h5AQ77K+6RJRzyZH1aoY0cFyVso14gqwLQZ7AkUiSm8Fw2Nj/
         EmDvDdPJGmMRpRmvKMDhwtUJ8orTG81DOIZeAXZMDGN1pFIkL6mE1rVDXJ3j1OqLMjip
         +eJzN5sbqd8Wj0iBrmyV8ocitOZSLmFqjto7mSLILXZxYqf/XIfyUMycX7N1ReCdrSSE
         4NkrS1D69r+o1B07z2kSAfEOAWeXq5baWTK3P+6m3iyZfPMpUnoQ4ELDttP21EjZiqIp
         l9+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgUARN5Bj5jhRPL04E4Ztn0nr0OKJkI5KJSyMisAGr8=;
        b=bAkwnssdyZQivXbfBXvkBQIv99Mt+IZKI9c6Q3g2z7ianVFSAfEjz2U0HjJfDwkChl
         /QibY+ureL89knJXoVtAC3KjigJVlpY6qeDXCPhQZOIstBemvqTXgUOPIJcbgTECIEOM
         lfmyLKooGPEb9D7Sh1yuJq1Im23F+6xgFynyhEyN+L95KY9Lt21o1r4dEE5MFQIsW2JY
         eMgxWvZGF4d8wFRB+jj/FaJle36DBUq76xBIUhUyLFMOJo/zopL9t+YhdBkRIV3oEQ5z
         Fg3OIPNvttn/CblXxpxGNwpuxVhvX/JWF5LyTJcUkqtPJGWoC3J4XFsT2f4QWZMIfRz3
         I2yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ryIo7I7afGht3GsZSm6DYW4ATuSNh3o1o1HCd39r7l7hXQhcp
	Cgdsf/HAIIQlpO/4xwLIMBw=
X-Google-Smtp-Source: ABdhPJz1bjF52++9YPtc/25ZUcuq2d29xrRMphMOuoTMxqCwwrWCirxJtRiVydpDTOX2mrp29a2olQ==
X-Received: by 2002:a02:a518:: with SMTP id e24mr18984128jam.72.1591577195457;
        Sun, 07 Jun 2020 17:46:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2dc6:: with SMTP id l6ls2572124iow.4.gmail; Sun, 07
 Jun 2020 17:46:35 -0700 (PDT)
X-Received: by 2002:a6b:b249:: with SMTP id b70mr19692971iof.6.1591577195107;
        Sun, 07 Jun 2020 17:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591577195; cv=none;
        d=google.com; s=arc-20160816;
        b=m0mBBrdBUnChZfXi/oSjhsXVSy35k/nBJdGEVuWFhUzchxbo/5wHtmaX3QrvVl4DNe
         licpSDgSF1rgckyH5GToS9C8BW8xqBkcfQx2p//OxCbRU74J/absbZEyZrLSdKPqGrcW
         ZKqUS7uHAqcmBvU5CyjdlaHyQWCQrLZm4cygtpru1cXItd76DjY24xFVOxOAKht19IhD
         Xc620SVWwCA6RspeqGtFKl9TItH7uIP6Dfz0NDOAdqVGKl+kp9ajhHLKPE9BSMagsKzX
         qfl9DZ0SYkIOi1umJR0fXnnGtBrwSn5dMuG/9pFp4yS1CWd6lN1oykQ3CiQfHjRDMPpX
         TV7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=kJ4PYJMlZAdrWWnFDrUK6/L77PJUf7bZCzD7dgWolls=;
        b=N+9tAmYuAYFi1tJT3FDnjMVT4NOSRdqcHw3cvrhanKQpm9FzMpA1u7oy12DtivAurj
         oB7JBYU3q+zxMcJ26N5DIvYTK7wUAGcdvB9L0drqfy+hmuFhF7Vrb2WBv8pG31EoYTN7
         CDHw85D4J3oFKe1MkupiBEzkxj50V4G3KK+fY/gPPp5YISQOSsBbcS5sVa2Qx5GEz7ys
         qd6Bas3LTAXHnLBoNFBNSH/LZVysgDtCHPQ7dZfPj3AdBE7tc3WcRX9a6lPk/7uwXddR
         0hFd6iqpOkJearuk8T9Z37oOwqsbKYtv+vR9VIaSVUtxcKbID5Af3dQ7xhoyRiwwpU+4
         F4FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id b1si526711ilq.4.2020.06.07.17.46.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 17:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: sNthnjJ/d6LsR9yIhmpZ1pQXA/PqbDPJnpQTT+b0n8FvT7e0gK1Bj502Xu8Nznkr/SElcxxPgd
 FYdomlevd9uA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2020 17:46:34 -0700
IronPort-SDR: pGlSwft7T0s+rY8zj3KO7ybmIDzq8AvgXheSrI897lAL8clT1QmDzhYF9KYDJFRMGRWS8c+WsD
 nnqr2ui4UpuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,486,1583222400"; 
   d="scan'208";a="446552529"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga005.jf.intel.com with ESMTP; 07 Jun 2020 17:46:31 -0700
Date: Mon, 8 Jun 2020 08:45:49 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marco Elver <elver@google.com>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@suse.de>
Subject: Re: [linux-next:master 10774/15793] kernel/kcsan/core.c:829:1:
 warning: no previous prototype for function '__tsan_volatile_read1'
Message-ID: <20200608004549.GC11662@intel.com>
References: <202006060103.jSCpnV1g%lkp@intel.com>
 <CANpmjNPBxkBBnD-y9Hpvsne3o6JA0KYgyxZhbCN+kZv4CD4yWQ@mail.gmail.com>
 <CAKwvOdk5MCxi7c-ANKYRggo1rVrpxbhR_-hWo5j9F4VSaLj18w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk5MCxi7c-ANKYRggo1rVrpxbhR_-hWo5j9F4VSaLj18w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.100 as
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

On Fri, Jun 05, 2020 at 12:13:36PM -0700, Nick Desaulniers wrote:
> On Fri, Jun 5, 2020 at 10:58 AM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Fri, 5 Jun 2020 at 19:42, kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   af30725c132e2e5c5369b60369ff0771fde7d4ff
> > > commit: 4e23395b9e97562d12b87a330a2fca3bf10c8663 [10774/15793] kcsan: Support distinguishing volatile accesses
> > > config: x86_64-randconfig-r013-20200605 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         git checkout 4e23395b9e97562d12b87a330a2fca3bf10c8663
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > >
> > > DEFINE_TSAN_READ_WRITE(4);
> > > ^
> > > kernel/kcsan/core.c:757:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> > > void __tsan_read##size(void *ptr)                                                      ^
> > > <scratch space>:92:1: note: expanded from here
> > > __tsan_read4
> > > ^
> > > kernel/kcsan/core.c:776:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > > DEFINE_TSAN_READ_WRITE(4);
> > > ^
> > > static
> > > kernel/kcsan/core.c:757:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> > > void __tsan_read##size(void *ptr)                                                 ^
> > > kernel/kcsan/core.c:776:1: warning: no previous prototype for function '__tsan_write4' [-Wmissing-prototypes]
> > > DEFINE_TSAN_READ_WRITE(4);
> > > ^
> > [...]
> >
> > In the case here (and for all other *SAN or compiler-based
> > instrumentation), it's clearly fine since the compiler is the one
> > emitting calls to them.
> >
> > How is one meant to act on W=1 reports like this? The kernel seems to
> > be full of these. It seems wrong, just to shut up W=1, to start adding
> > -Wno-missing-prototypes everywhere.
> 
> + Philip, because the team is probably getting asked this a lot, and
> should link to this response.
thanks a lot, i had added your response at https://github.com/intel/lkp-tests/wiki/LKP-FAQ
which is very helpful to explain this.

> 
> `make W=1` enabled -Wmissing-prototypes via scripts/Makfile.extrawarn.
> 
> Both GCC and Clang will warn for -Wmissing-prototypes when you define
> a function without a previous declaration of it, for non-static
> functions.  If the linkage is extern, and there was no previous
> declaration, then callers may have the wrong signature.  Mostly, this
> isn't a bug, which is why it's not an error. But sometimes the
> signature has changed but the callers have not been updated, which is
> an ABI breakage resulting in a bug.  Mostly this is not an issue due
> to -Wimplicit-function-declaration being on by default, which also
> helps in this case.
> 
> See: https://godbolt.org/z/aYrYfS
> 
> Functions with external linkage should have a forward declaration, or
> be marked static if in a .c file, or be marked static inline if in a
> header file.
> 
> For this specific case, it looks like kcsan.h should forward declare
> the functions defined by DEFINE_TSAN_READ_WRITE, to avoid any ABI
> mismatch due to different call signatures between callers and callee.
> Though I can't see where the callees are; if they're only within
> kernel/kcsan/core.c, then defining them as static qualified may be
> better. (Probably not, since they're exported via EXPORT_SYMBOL).
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608004549.GC11662%40intel.com.
