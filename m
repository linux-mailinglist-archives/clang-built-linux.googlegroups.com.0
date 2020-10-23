Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG6EZT6AKGQE4ZAWVYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 611732976F0
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 20:34:05 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id g14sf1958690pfb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 11:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603478043; cv=pass;
        d=google.com; s=arc-20160816;
        b=h9f9KFWFKAJ7XmVv4nI94xFYItWx699JqiFo0nFDeQ4PsSkTQbkuVTVE2SWPiMPdCM
         csKQwQjDUMsI14GtbhkgfTTaaDgx/bRTWm9fmcb2j6NEoox2f02RzAD47nYUemApvs4c
         dIGEd5AD0rHzVQP6eid61zSn9dEtmDlmMnGyz5JAgbi2jJW5vBv5Y39ZT6DtBXz4KWHg
         Bt/3Q0qf4q3sXLaWIk8SjOjXshc76NL6eGLZe7UrfiqC3LITKNFBI6GKfVByiRmtcmVQ
         KRs3qBAVA6Ng1nKbUEpDlQ3N2HS1/o9Sm85eS8XAre07ztelj/+B4HxR0PcoPbTjOHIR
         FEyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WmIkDMBZS2nlQDjygTaOvHBfQkdEOPlDR0of/zEEQyA=;
        b=o3lf6zsk21Ew8H7BNDnVWfeeGPIVlZOoh+G9wXeB1wFSssuGjspjqJcxMHLTRKceWV
         tsx3vFovtVgtg3obvWBEGsDumXpOv864JVpQFzW118ysOV2EwxixP6bZopzOKIa4cdFC
         m+CI0ttq0VknOXNO1X286wv0fp7ieoMYrzjynsGWzDYBIQJMhbnd7SXzKpJGyZMLMyqU
         P1z/PQ897CIYZlIwbu6ZVa1HOSGe0vEg4jsduw+zZLQdk4k3YOhDFrxH00U4qicTqJCb
         hXdxdq3BZUQDhHlZMHsdtaVovhlY0PFiSO51ZLzO1luqc3lx1o44MmS1SZEapth6x4ys
         jhKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dd5DYENn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmIkDMBZS2nlQDjygTaOvHBfQkdEOPlDR0of/zEEQyA=;
        b=sv1S3127CHyu61SVc2BG287zhlojxI9rCyAASxnipoGHqcH8Y2DI7Bo3cGxyohS5Dh
         /Py7FVyBynv9GGr7xVfreVKx7mOhAlVPfj1mWoUyPg21YcwuT3iTPbHa1hL2bjNZWX00
         Yi+z2Qu2xxjOQr6WPir109Vnew9rzQw9cJ4nTdVzEJXVjQlCehbdi0YKa6hNFobVh1Qb
         jaglH2NzXZU2t2tpAVTsUGxG+100XAKI1lVmRbYfbJBttPASEwb+SeQAv+EUEEdQe4HU
         Bc1E/o2dC70oU8XkUh6ERVIHU10fQYfqbETSA9TFJl+entyCZ0GUDN/iWPaAyW1HRDBF
         PnSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmIkDMBZS2nlQDjygTaOvHBfQkdEOPlDR0of/zEEQyA=;
        b=h85dZUaQ+h5YUufBpq8DpzkSr9eewYige7tUYEdxTFBOXZvVVJq167nInwg8EWkHPD
         S65ZDW+Ge2sUf/bJI+OB1MDcbdsqiayK504HkX9C0f5YpcpQOk0vhEt+D/KyD38IAhio
         hQNUGmp9YX3PiMndT2/YLDXhrR4abSCBmmCyBwzO6Up18xaB/+IhaKgvtUF0rQPcvsDJ
         8R3wQe9da3lEhzDhJO4XltFJ8L8aHa93BWnePPNiGJ8QeK8t4NtI/EwvQbNnCUljWIrK
         aN5ypXEw9PtlZ8rouLEDnxwNWtcG9blABaxxIN4oO2fzKFDJ5rOTlZBnPDARz4V3eGck
         wzbg==
X-Gm-Message-State: AOAM531wHaYaw4Z7AO24SZ594aSuf41CnTkrClyapm4mIc9v9mFfLQm7
	sBT+XQTnQksdlpuVIeOpC18=
X-Google-Smtp-Source: ABdhPJz59X4BtmbeOmmVmhKiuYcS5ynsQ4YQMuJZOT4qVlku+K5LcPX+jVcR/3yvSxdnP+tmkGWlhA==
X-Received: by 2002:a17:902:8d8e:b029:d3:df0c:60a0 with SMTP id v14-20020a1709028d8eb02900d3df0c60a0mr3404505plo.35.1603478043631;
        Fri, 23 Oct 2020 11:34:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls738493pgn.8.gmail; Fri, 23 Oct
 2020 11:34:03 -0700 (PDT)
X-Received: by 2002:a62:5a07:0:b029:155:73a4:d73a with SMTP id o7-20020a625a070000b029015573a4d73amr510452pfb.22.1603478042996;
        Fri, 23 Oct 2020 11:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603478042; cv=none;
        d=google.com; s=arc-20160816;
        b=wlwgNu8ZKz5rXO1SXiL/9r/89MnkH9cBChzHS1h8M4SiA68qUfkHXmk0oa0Br1xXTk
         5jEwk5n2XJmpqjlMNODXmdqWZ98zdPHE8/NodPeFAgJxNyJxoJitTgJ4s3fbdOQG0eGP
         WolC27kHLQqdSBewtgehm2OSLRtOxe8Ga9omh/Re668pzwRe4D0mamL7D9GBsfQ3e06V
         3qDokV4c36ybRwB+IQ7aV5dN/ES5XCDVO20y/lIva3CmyBh7542JON8lIeg7lBpJ6tCU
         DfRn5S5m3jY0jYk1aIXCUTsTSDqa60+X8IhlXU8SZcPlKTMDb64/k1dJQlEr6ypFUQrK
         Tv3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0AFHSnr81d30uG8cNRj2D7oeDMiGGuZln0Lff7BivqQ=;
        b=QH1EX7NwsJo4sWt/Ur7P/vP6WxeTG17qPSdm8j8+vGkyBO3UZGmb314ehMxkXmJDFz
         22rCkJy9VV9F4GNguDhnp3pw0+cnsDn8URriuKXj/wFsNqJs6ihgTsrGLPRndpLQUzX/
         KVOqMd5m5ahpOBY+GC9+U01myuT/3bO+JF+ogR0sADOx1npiVnM2FdIYU81eFFDAwjiU
         mSQ7fANWrPwcjdRp0iDm156WcccJld1ksPmFaWzG4VkbQri+qK0npnb+r/cfLfETQgyS
         OW4Y+uBxWGsjZcLEIlij1uWdXsbwswBeTXTmwtXMnT80JNvglrxAy0iQ1ksWt6I2/KMZ
         RDDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dd5DYENn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id mv6si209667pjb.0.2020.10.23.11.34.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id t14so1933974pgg.1
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 11:34:02 -0700 (PDT)
X-Received: by 2002:a63:70d:: with SMTP id 13mr3280013pgh.263.1603478042165;
 Fri, 23 Oct 2020 11:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <202010240159.IPld6mlB-lkp@intel.com>
In-Reply-To: <202010240159.IPld6mlB-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Oct 2020 11:33:50 -0700
Message-ID: <CAKwvOdkhcrifOeHY9VjpHbmHjRazxajoj7nV1QrRKx6kQdF15w@mail.gmail.com>
Subject: Re: ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_8)
 is being placed in '.data..L__unnamed_8'
To: Kees Cook <keescook@chromium.org>
Cc: David Howells <dhowells@redhat.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dd5DYENn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

https://github.com/ClangBuiltLinux/linux/issues/1185

On Fri, Oct 23, 2020 at 10:24 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   f9893351acaecf0a414baf9942b48d5bb5c688c6
> commit: 88c853c3f5c0a07c5db61b494ee25152535cfeee afs: Fix cell refcounting by splitting the usage counter
> date:   7 days ago
> config: powerpc64-randconfig-r004-20201022 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ee6abef5323d59b983129bf3514ef6775d1d6cd5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=88c853c3f5c0a07c5db61b494ee25152535cfeee
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 88c853c3f5c0a07c5db61b494ee25152535cfeee
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: fs/built-in.a(ubifs/journal.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/replay.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(fuse/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(orangefs/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-req.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-req.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(orangefs/orangefs-bufmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(orangefs/orangefs-bufmap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(9p/vfs_super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(9p/vfs_file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/addr_list.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/callback.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
> >> ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/cmservice.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/dynroot.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/fs_operation.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/misc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/mntpt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
> --
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: fs/built-in.a(ubifs/journal.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/replay.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(fuse/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(orangefs/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-req.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-req.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(orangefs/orangefs-bufmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(orangefs/orangefs-bufmap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(9p/vfs_super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(9p/vfs_file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/addr_list.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/callback.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
> >> ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/cmservice.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/dynroot.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/fs_operation.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/misc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/mntpt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
> ..
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010240159.IPld6mlB-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhcrifOeHY9VjpHbmHjRazxajoj7nV1QrRKx6kQdF15w%40mail.gmail.com.
