Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTWA5L3AKGQECACLOYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B945B1F007B
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 21:43:11 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id 88sf5164817otw.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 12:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591386190; cv=pass;
        d=google.com; s=arc-20160816;
        b=HYoOz0dEivh72vx7feg6hTxPGowj7OeESQSakRqjUeibq7wSH/HQAIOIVyIqku2U+i
         rm38JOJhtLO+fd5yVf2AGaUT8Zp4+yMz/wQQvoX1dTfOZ7/s1PiZoNumao7Mlx63rZml
         PnDAwdVL5wIuxEUjucFyKvBdPDOsrfx3IFVDjk7lsWxLccLVb92WPYdIm3MQVr4we+eW
         kJMnF66eoAU2cJqdpGxar4BZ1ed2ldTWD7d1bpyUezwMG/NQOEU5o8lqj4EFG/7+OgtZ
         FlUzKCgA8REbaAsAFTf6UPF2FSwH44L00HZ5XUr9/PLu5lVg2qD38tTCcOiL6vyuT0Tq
         tNHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BpI3l8fT+0TL6gvs5i30seYQkVjGqX6i/EODuiXj/aM=;
        b=as1aATRdLn4nLJ+f/eu3i6DddC8siawUVrVgDEOTbrbX7xMTLW+tUnRwJUedOV+xdH
         MntGHjTXs3AwYG6g4RYl3YHikhs6UUYvMjfyMv4leHne/J6WYa8xYBlU7bOd/aQYG7YQ
         FzhAPSR2lKCIWdKW5GY6ZGtjmiy9RTa99wYmO2KhJZsQ9FgCR/acShDbxtOrOEb6C1cB
         Zw9r/HXz2UL+CxLSCYcxoFyhwvvpexnB4QsSVRdcz+sSfRp0fVdjgigfZXFb5X1KD/Vs
         w8uOsmIELtpf1zCdrXN4Z1ctsw47/LinV0F/iNi1cvaZzdUtu8MxNTwJESd0sL03VQSo
         sB2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KPHDxNjP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BpI3l8fT+0TL6gvs5i30seYQkVjGqX6i/EODuiXj/aM=;
        b=bzoi3PKTJ0l/cpk8kgwYdbdAeTH5w05tyx2Brze13Wc6JnTeeZd5wYdCEIsdiKKP4E
         LZ9MDcCugJLOUvac6WGhkTbB/a0NK9qjyuO9oCUg4jZay5R3HZ+jPz/SLjrHTYyUOtnf
         20cvGCbpYHXzJgFfyF5NH8glbdLlZZe7/fdzMZDXjAOalq1VSvcZkjRzimrY06cPslf5
         yZ+/XHQKd1C6fff3f4mfAXl+sAONTEtR4HHbVjWc2n69DQ469AOHkIUSeXSqwqFchMK9
         6ItvbO+a+k/YDDWQJDYztde8vKtvMiw3F4MT9zqtE7p6xZiLMRCwK6mQx+A6P2XMH+0h
         0Onw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BpI3l8fT+0TL6gvs5i30seYQkVjGqX6i/EODuiXj/aM=;
        b=X2oJcleWdyItDMDa9Dagzy6tVFoqjmnvCjuNC8+bny+2CldQAgsfwDsisnFA9Nlt5M
         uOf635sc45R9SjZZv0+odjcZlsQtVua8envWLBthJhrZ00QZY3Mmkxkbk9VHvdDCzTbN
         pmbH8pYsiv7SyEntYTTah1PymEe1MSpmlWMEIh7Dd+2gvV7h7SoHXCVumltjXjsZ14yU
         WUQ186be2+ybZ4zsiXnhc1IYOoHRieCwjfJ4+sLEqjRpW6iC3lTsUXnWIdzYkqZKo0RA
         YPP+2lXoX6W9TvTa/5dL3n0qSp7AuIV++CSH2R4S9RyM0RM1n0PhYGg7Z0giT+tnZadF
         VmHg==
X-Gm-Message-State: AOAM5328qzLHM1eK054hO9TGwW7h+iBUuPDZPtwE7UNgj4NPnH8eA1Ow
	oyAsQxSh7WHi9kWusTGqgqU=
X-Google-Smtp-Source: ABdhPJzWS7KqHjFDMPJpr9UUfLiivYNMjIdHx0ur7ZVmlkFWsX7IzMbvz5xm3nxFWHLmHhW3wj9jjQ==
X-Received: by 2002:a9d:65c7:: with SMTP id z7mr8576859oth.291.1591386190716;
        Fri, 05 Jun 2020 12:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d80d:: with SMTP id f13ls55704oov.11.gmail; Fri, 05 Jun
 2020 12:43:10 -0700 (PDT)
X-Received: by 2002:a4a:7546:: with SMTP id g6mr5158949oof.51.1591386190408;
        Fri, 05 Jun 2020 12:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591386190; cv=none;
        d=google.com; s=arc-20160816;
        b=hqflBbp7NTZ/YV5KItMYJ7uIJekfa7JTGZJ6MGBz6yVkjHED0UJDl292UarYQBzEf6
         vbWyUtmyGhx+Uqu7XW7thA31g23l7kRUBLSBgtLrXGgyH+F+bGJCe8XlKztftG3RVWKR
         yOi0DzAGYlhxIpUydPWLxGPzfMsewtdDjlEd+T8S6piMn5vHABlTlZl43hBbYIn02z4d
         fXlGVXdH8t5X4Oy63YljPt6Xmt6yzJZO00N5Y9FqPncu8sGIPPTFnVzZh5RSSuW1C/ZH
         1RqQYINxExXe+haF9vcb5oNAL8gRq9YKta3oJtEibV4WXrH5fVEdvI2X2jzuPM+0I5jW
         0I8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=shshfcQBD52T6SsMpXKmudFuukbhlBXLKFJ7VG5PWPA=;
        b=h0vnVYvkYJgOLZhm+ARvxoHSjxyA5Jq4AVw4/uAi5J+fbik8jjOLUK08n6WPEvBrf5
         Bsgd3ckdNYui85i92zH+QfjoIcCdBzhjTRg6lDTlbVhYm8++grs7qt++xWUMBCn13ak7
         Tdu1okoZcCVjd9h1qUwxY+2wWlhSPk5sBbzjnXv1Tqz7zj5WZ9Y3Hp1gDfRGAaq9jtiO
         0YoeFshY7kbjEHEne6Nt3d5IYExFcFz+ralQ505ywmhGMRI+Snay1cqbq4ulaQ0txpWA
         KRXQaGK/bYG8aRjPBboG82epYBQj1OgsfJ494Fn4P+uYjnzgg+9LJx29tu1+YqRyqkFs
         Q4FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KPHDxNjP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id o199si162868ooo.0.2020.06.05.12.43.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 12:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p21so5634322pgm.13
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 12:43:10 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr11230799pgh.263.1591386189347;
 Fri, 05 Jun 2020 12:43:09 -0700 (PDT)
MIME-Version: 1.0
References: <202006051725.63EW72i7%lkp@intel.com> <20200605145546.GA227721@google.com>
 <20200605160830.GB1373@sol.localdomain> <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
 <20200605193359.GK1373@sol.localdomain>
In-Reply-To: <20200605193359.GK1373@sol.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 12:42:59 -0700
Message-ID: <CAKwvOdmE_59v6-W+Sk8SGrrXJ4dx5ANWEpD5GL_hrw0ja0w1kg@mail.gmail.com>
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
To: Eric Biggers <ebiggers@kernel.org>
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KPHDxNjP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Fri, Jun 5, 2020 at 12:34 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Fri, Jun 05, 2020 at 09:45:43AM -0700, Nick Desaulniers wrote:
> > On Fri, Jun 5, 2020 at 9:08 AM Eric Biggers <ebiggers@kernel.org> wrote:
> > >
> > > On Fri, Jun 05, 2020 at 07:55:46AM -0700, Jaegeuk Kim wrote:
> > > > Eric,
> > > >
> > > > Could you PTAL?
> > > >
> > > > On 06/05, kernel test robot wrote:
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> > > > > head:   adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > > > commit: adf3d3a53cf13d0998c699ba43d8582c875179e3 [48/48] f2fs: don't return vmalloc() memory from f2fs_kmalloc()
> > > > > config: powerpc64-randconfig-r011-20200605 (attached as .config)
> > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > > > > reproduce (this is a W=1 build):
> > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >         chmod +x ~/bin/make.cross
> > > > >         # install powerpc64 cross compiling tool for clang build
> > > > >         # apt-get install binutils-powerpc64-linux-gnu
> > > > >         git checkout adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > > >         # save the attached .config to linux build tree
> > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > I don't know what's causing this.  It doesn't look at all related to my commit,
> > > and I don't see what's using so much stack in f2fs_fill_super().
> > >
> > > @kernel test robot: the directions given above don't actually work.
> > > First I got an error due to powerpc64-linux-gnu-elfedit not existing.
> > > So I had to build binutils for powerpc64 myself.
> > >
> > > Then I still got an error:
> > >
> > >         make: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.
> >
> > If you have the config, then
> > $ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang -j71
> > If you recompile with CONFIG_DEBUG_INFO, you can get the stack frame
> > information. I wrote a tool to parse this for these cryptic warnings.
> > https://github.com/ClangBuiltLinux/frame-larger-than
>
> I can build the file and get the warning now, but the frame_larger_than.py
> script doesn't work:
>
> $ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang fs/f2fs/super.o
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   CC [M]  fs/f2fs/super.o
> fs/f2fs/super.c:3303:12: warning: stack frame size of 2064 bytes in function 'f2fs_fill_super' [-Wframe-larger-than=]
> static int f2fs_fill_super(struct super_block *sb, void *data, int silent)
>            ^
> 1 warning generated.
>
> $ python3 ~/src/frame-larger-than/frame_larger_than.py fs/f2fs/super.o f2fs_fill_super
> failed to parse elf: Unsupported relocation type: 1

Looks like the python library I'm using to parse the DWARF debug info
doesn't understand some ppc64 specific relocation kind, and is
throwing an ELFError.  Let me report it upstream.

The hard part for these is inlining; it can be hard to tell which
child has a large local allocation when looking at the warning about
the parent.

Then again, my script is just nicer output than `llvm-dwarfdump foo.o`
or `readelf --debug-dump=info foo.o` for this specific issue.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmE_59v6-W%2BSk8SGrrXJ4dx5ANWEpD5GL_hrw0ja0w1kg%40mail.gmail.com.
