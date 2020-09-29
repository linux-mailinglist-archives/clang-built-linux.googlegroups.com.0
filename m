Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYVMZL5QKGQEWYAO6SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BCB27BA9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 04:05:24 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id h31sf1972299qtd.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 19:05:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601345123; cv=pass;
        d=google.com; s=arc-20160816;
        b=RF/GkrY8hcllrSB03YupX1gZWz4RGlMqOUaVMXsj9UmWM33Zk/vTgcH6USVYIynpHf
         aYuO3xggFQBegsYfYKyi1T3Vv5nil0T70x+t1M5dppX2GTbpIgU5J2Q3uu/+ay3kJoUF
         7U8l7jlbYPN45DQo4Jm9zASBfDMFVUPEZOQhtSxNxNwjaa6eZQBZRQ+DT1n9qOjHVoey
         zd5Cb8uFgxx7xNxDfwOyJ1Ung7ptO43Lb5IW6Z6iWAX+Mp+zQsZgl0ipriUcr8l01aiW
         NRMJCLMPGgd9u5WDprdu3WdE76hQg6DvSqVLckPR829kXYCj1s5NiqaFYQwqEbOV6gYf
         kRrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gpohVg0JSTHyztFQDlp9hQ/12aO2vh2Bpm8Vvt2g6Ws=;
        b=v/7xf/bEumIz/DRP3Xr3OT73OoQ3f2YKe+NZeisNcGDgj1AR0WUUZYV1jxoY5q2NwP
         RnGQomF17tLwFfYv10EGsy0bXeSNTvG/mFwJFYI90XWRQ6wWjcQJHk3cIgIngGKCAdn1
         yKrmZzkpsoa2kVvgk3do5HBV4cH1a7t9Nb+DYwO0gLOUitF63uPYS33kHRhz5W64eSZr
         5wV2uewfLZRf1/KwcSSe7IlAK+3P8g/2x98acDDiJPTw7Hw1nJpsDqGxIBa2BbVyIANF
         5+2Oo1EQC4ct8mDVWYYzyvwy0xp8VjU9dUAUutxJJdlXmNKjzixwvnB+yP0Tpr+sUf6q
         g2jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PjOL7AL+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gpohVg0JSTHyztFQDlp9hQ/12aO2vh2Bpm8Vvt2g6Ws=;
        b=oa+ZKtLq7Yp87Lpn7kGMv+hMECrulrhy/SR5d48F0KI++VwifPW4FN2Nhm+kkAnyli
         KGXZ5JUBoGRPRH5CWZTw3g3XRGDPHkSMuUkIT/8DHM3F2kObEISnnzqZH1dRwBg/xba6
         u3X7GFyoEHMkA6F/bheNLMVdQXrAP+yv0nxfKA5cRREljGg++rbjVYiroldFIK3QBBoh
         rf0b120Ajt/X4wtp5LeeXWlda+f8/452Pk1GbqfQeAwegS7Cr+ua0S3cbRjUbt6bWGNr
         sKgDlb34BFQu6DEILoYbbLLoXOf1zeEfmisBTxXWUxde0BxlZqFpzITGdW5hE5elOYQI
         Q9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gpohVg0JSTHyztFQDlp9hQ/12aO2vh2Bpm8Vvt2g6Ws=;
        b=SEsJiRuZ6nsKwmyYtiBb0k7tTCGyKJcbL/H2bHXSWrp6FZKAGSEnYR3Y9knn+2FO34
         YnfiesqFSOOYTaKRj5CzlgMsSU0t2Nea3uqqVowvLcaTJ5u2T9oCevyWEZcL9H/EWaGT
         SZXB5X49zuoG6H6YXKPou/TTndEXuMWM+9FcozxNlyDtWkewOxXaTsDT1FTSRlZuKdMW
         sXKLEEy6/VewvDBhHyfNXeVDF9XcFcGnDMH0nCI2QFnaTQHjbB3kqc5Q0FJ5FFd0CoVt
         5cEsg1qZaonm06V88Q9R4vnnrv0/RXfq62ZnEUiwXZdJlXVkEZEtbonKmE7r92Kybb3v
         Tj5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Az6350Xq8ZA5ekntKCcBOBtyyYoRbbbAZdPA7oVcRPQIcK18W
	NBSoUjeYkWYCz7aZANL9oWI=
X-Google-Smtp-Source: ABdhPJxr4mnBH20Xbby5t0/EGvmSCEgIbDOa8Zz2QQg5EOQihL6vgPUtF0ZUW4hSD1IroS4BRrQa5g==
X-Received: by 2002:a37:a64a:: with SMTP id p71mr2419627qke.389.1601345123035;
        Mon, 28 Sep 2020 19:05:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:48c2:: with SMTP id v2ls737729qvx.4.gmail; Mon, 28 Sep
 2020 19:05:22 -0700 (PDT)
X-Received: by 2002:a0c:a601:: with SMTP id s1mr2408562qva.57.1601345122545;
        Mon, 28 Sep 2020 19:05:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601345122; cv=none;
        d=google.com; s=arc-20160816;
        b=lT9Rc6g0BIv+7Sppg2ZDGL6Uo6/ptFga5DjzDVhOGKddmukMvzVoQxlXA5lxopPZlU
         JhpTIndSjpU2YEXp/Vrw0LqsxZu1rKHgZHdpfu1YZW9iETILzvtkwf2l6l/nuJbByseS
         ziA+eUzhqWWtXK/TjcYZfvZEEiXNYl52FSHA+9MYx7uvvqMGHuyvFVtuXMFMfcG/5Tzm
         GNN7gHbvngTxT+eCbKMpj61FZQDjIeNtiyZGIE/pVOnD83DbKF9kMvrhCjLyXfTufOFP
         jZsQpx7PWwuwz2hWt0EcHAufhBkdcSiXou++DTdDsLwXQ4i/syc+6fjX6wsbMRF+iCJM
         eSXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MVvsrPlAdp7bCZz1ZZS+dWVdDlWlJtxV2n7+Frmu7c8=;
        b=mKiJ3FLrv7e1i4lChKJA9WLvC0EN4Hb59lynUYxkDgZOVgnE18k3X4PktHXust65lB
         4UCRSptkreHs2Qn3oThIJMdwxet2qFweoDkQpQmusvRs5m/G2A3D2EevUIRGzXykPwYt
         waI+P3UN5hRON53QI8G+OfpIT71EpqJLP+1sVyHVvUx/b6PMqxB1vRyd+LXwMCwPxUZH
         48Tl1hQlW3iEvOQGTojcWjwoZVE33L4sGaxD21Xj8i6w6Q8IeuQm9ySV727HOk9TjzWy
         +4A6JZ5LBtPLMMB03UyC59/tUdR+l9MRMP8uc2Qq4heWSBarjIHB32zpr+8VgE/FcYB2
         tSmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PjOL7AL+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s76si128024qka.5.2020.09.28.19.05.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 19:05:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id l126so3005774pfd.5
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 19:05:22 -0700 (PDT)
X-Received: by 2002:a63:d449:: with SMTP id i9mr1370906pgj.83.1601345121707;
        Mon, 28 Sep 2020 19:05:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c201sm3176598pfb.216.2020.09.28.19.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 19:05:20 -0700 (PDT)
Date: Mon, 28 Sep 2020 19:05:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [linux-next:master 11142/11173] ld.lld: warning:
 arch/arm/built-in.a(kernel/elf.o):(".discard.ksym") is being placed in
 '".discard.ksym"'
Message-ID: <202009281901.845F0C551@keescook>
References: <202009262204.3foBZGl2%lkp@intel.com>
 <CAKwvOdnc9dGor-3FT3DG0U7im7TzR-6u8aHctH+NybA+4i8b9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnc9dGor-3FT3DG0U7im7TzR-6u8aHctH+NybA+4i8b9A@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PjOL7AL+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Sep 28, 2020 at 02:10:39PM -0700, Nick Desaulniers wrote:
> On Sat, Sep 26, 2020 at 7:07 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   20dc779fdefc40bf7dd9736cea01704f29228fae
> > commit: ebf18610b8fcacb3bb5c147e4256d05711c55bf2 [11142/11173] Merge branch 'akpm-current/current' into master
> > config: arm-randconfig-r022-20200925 (attached as .config)
> 
> ^ randconfig
> 
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a83eb048cb9a75da7a07a9d5318bbdbf54885c87)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ebf18610b8fcacb3bb5c147e4256d05711c55bf2
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout ebf18610b8fcacb3bb5c147e4256d05711c55bf2
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected
> >    ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected
> >    ld.lld: warning: init/built-in.a(main.o):(".discard.ksym") is being placed in '".discard.ksym"'
> 
> Hi Kees, did your orphan section placement series explicitly add .discard.ksym?

The DISCARDS macro includes .discard.* so something Funny(tm) must be
going on here. However, in looking closely here, I think this is actually:

	".discard.ksym"

not:

	.discard.ksym

so it's yet another double-quote issue.

$ git grep '__section("'
arch/arm64/mm/mmu.c:u64 __section(".mmuoff.data.write") vabits_actual;
include/linux/compiler.h:       __section("___kentry" "+" #sym ) \
include/linux/export.h: static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
include/linux/srcutree.h:               __section("___srcu_struct_ptrs") = &name

I think compiler.h isn't wrong, but the others are...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009281901.845F0C551%40keescook.
