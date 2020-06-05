Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6WJ5L3AKGQEQWIYVDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F0B1F00AB
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 22:03:08 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id d64sf3216763vkh.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 13:03:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591387386; cv=pass;
        d=google.com; s=arc-20160816;
        b=c10ma20EGhtBtwqKc7IdnlbdhJBkfToLWIZlmeBsBVF+Tld+OIMjvl6+vIVnVURCBD
         md3sTn/30aK8cNId6d1Vte1GCstowFfOUiDAXv1A5saR+7XGoCSK7+6sokPAHtjiCd/l
         g8YgQmEAvwQ/Xu2NrpCSOZ9/sqe8mYxFAvU/KEuU75B6YFOtcvOzMwRijEBbHH90L8jZ
         Zcqb7N/RBcC8Mj7uyxXT/oobBw7YJW04i3dCcuYM3itTwM4rWYG+tw+D3L4ZOIzcxsi8
         apCkfiSGUjirQflsNX/nm6vO983WqAyOonTEJYPLOmx5EbFiqdDUALEYjhfP9OiMVvdi
         Z67w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0JQNFyRmbDX5065bGbJiVQB7HuIJkUXsItQIqCaLubc=;
        b=nUd9X8ov/+MknrT/QFawm+Zm5Prj4wvXwcBTncArV2sU+sY1rcJTNMB3fvefGz+KS0
         HndW9WI3TVytgzK82McxejXYFgA45eWnx7x954AHCT2/yeYiL7r/ibOIt05QoA+4p88L
         NEk/+keEC8dX+as6VXip1MJHCQmEMiwNMgQU5cQlFFsyU+alg1HYPH6WZc21tYBEnN1N
         N8ciEz5czD1WNgro3/kO5d75va6pFUXFghTQbW0ARz8eS/8in4pXkVDJsIOtofhSVx22
         cO7cDrx55UiwnJawevgqVhYJpElUEkgY9zRBaq+N8nzbnP/pD45CtYjJxONFlg9tDmTt
         C/qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OIDGDTtA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JQNFyRmbDX5065bGbJiVQB7HuIJkUXsItQIqCaLubc=;
        b=RlHBnLmiUh+OhxILE+IcxW7cW+41OtIV/Adbo8dJqC/f+hb337YxazzGLgeznJbbtu
         ZeDbCO9iW9IXZSrDnEYuuCO/ha3l9janXP3pr9KzIk1cWrMxBADQRYN81gwHi3epDiPs
         Zvq0pFVGUwMOlW26APLsIvb3dhuwSHYcttgCz+wWaYOkHTQtK3GP1+/ebpfyQmA/0zNQ
         LSysQn4eDd5DnkFl1T3ATyoWPSurC3zzvQSO4w0fdOp4WfseeDzxf0KV8NryMfbFH8BY
         0u73eA+L9iUeEsd1PFo0G17tnCG7ze+gJY7JeVCFTuwLHVtZ08E7eXDLf2prhEhNMTEK
         bprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JQNFyRmbDX5065bGbJiVQB7HuIJkUXsItQIqCaLubc=;
        b=iMPXt1YDnTHNA5gF3B/GSg+EEuk0TGTxSC9FRjFM30Hjl4PvbkuhPp5NF4kcSoER2V
         /zz8Ospan7oh1pCLFPFuvjHEX4N/6Fik8oZcTj/nydhQzQlrJrL47WR2Qkvnkq8i3RzW
         ToTyWpeXlkJTlDvnGDNky+BI3X0YJJMqncNyDuJ5ALfkwXJDKHgw1b88zLWoyKx7PDyq
         m2dKoQMTLR6uAKKqKcoTpS1o5hPm/kdALW/tcHNsiF53L0lfDtuCV1TbqzgJQN3hvzMA
         fN2E41PE8MrUDNzelQE5gH9GxrlJBQX1vMkyUtwpVl2izsqNF9Ri5u82tLiutvtpu+eH
         n1GQ==
X-Gm-Message-State: AOAM532p+rsTUqR+zsPr3t0/z5YrFIkZU3frj/KesD21hCFwYqHrxjOG
	uDl+xKA1B5egOLaVXIzEYZM=
X-Google-Smtp-Source: ABdhPJwHkpjNkcVE5Abp5+0/XaH6N06ErNq7ychwJ/rckIP1cJy/JxidS4bev8ec07OyJLg5huIKUA==
X-Received: by 2002:a67:d381:: with SMTP id b1mr8154163vsj.148.1591387386517;
        Fri, 05 Jun 2020 13:03:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e417:: with SMTP id d23ls1265532vsf.8.gmail; Fri, 05 Jun
 2020 13:03:06 -0700 (PDT)
X-Received: by 2002:a67:ee4d:: with SMTP id g13mr8819267vsp.229.1591387386151;
        Fri, 05 Jun 2020 13:03:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591387386; cv=none;
        d=google.com; s=arc-20160816;
        b=dvxW5qF5hNIttvcnYGvvgye8rumhvWUWpsJjZQsO7aYZkBBmPof/mPCzKVKRszmBym
         lzhuKXEMowKiS5lu4m18vR4tmJ9vwkbH7mHRk+/hXXqNeImA7WSUofllWjoXRFcnEq1A
         GpPQezd+G+7VMSPMA1SWkLzi1lHQhXzYcEe19TnmAz7+ObKo4JMYYO5SXBrYsAjoJae5
         1FvRYybUnkvmuNGmEmaC7gMmwW2Y8nu0Mx3FDSVqPpzsqYO9p0gXK/EoxXwNhlyxp33M
         /JGJ1pAPcM5DlMKeOjBYjyj6xET45J9jH3EFiUhp0VpAypDX65sDcvMoCHXXBXdRWdp9
         FY/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IV4TCdaU+wjO6SzPJslJYOldVPEpezf297LQeNrgDG8=;
        b=wIjbDFd/vsOH12rnTtSQTaD6tFyWs4hnGYqFQihB1ZqzwiAzSnE0Q15JBVbU7Dmkgo
         C7ayO/4P/QJHY+ZTEKaVvQD5n6Al4mZJA5YOLAwpruoOiAFt3yr+Lj92X3DWnIpMbvPg
         JbxqxAviH2gGmWH3c3bNFyNxe5s3OJiGiVqE/cUv+rKDrP5HyX1xUFxaUFBYqrO7K0Fj
         fUoa5DLUCZiGOuW2/A7UR0Ja19jT6zw+6RzaqlsO5dzbSJp4BIw2GgVcoFeUYFyN7WjW
         3/w660bQ6u5vlAviT7cQJ+b2FDMH+5dZ/n442IX+ezNbQSHTxXjy2Ox5CI6aRNpSUhhM
         Q9LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OIDGDTtA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f12si626092vsr.0.2020.06.05.13.03.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 13:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id s23so4143740pfh.7
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 13:03:05 -0700 (PDT)
X-Received: by 2002:aa7:8dc7:: with SMTP id j7mr11439096pfr.169.1591387384798;
 Fri, 05 Jun 2020 13:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <202006051725.63EW72i7%lkp@intel.com> <20200605145546.GA227721@google.com>
 <20200605160830.GB1373@sol.localdomain> <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
 <20200605193359.GK1373@sol.localdomain> <CAKwvOdmE_59v6-W+Sk8SGrrXJ4dx5ANWEpD5GL_hrw0ja0w1kg@mail.gmail.com>
 <20200605195713.GL1373@sol.localdomain>
In-Reply-To: <20200605195713.GL1373@sol.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 13:02:54 -0700
Message-ID: <CAKwvOdm_EfEuhb8QVNzbFhVnTN+q5tkDkWPxOpC+rfzOVxpWVg@mail.gmail.com>
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
To: Eric Biggers <ebiggers@kernel.org>
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OIDGDTtA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Fri, Jun 5, 2020 at 12:57 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Fri, Jun 05, 2020 at 12:42:59PM -0700, Nick Desaulniers wrote:
> > On Fri, Jun 5, 2020 at 12:34 PM Eric Biggers <ebiggers@kernel.org> wrote:
> > >
> > > On Fri, Jun 05, 2020 at 09:45:43AM -0700, Nick Desaulniers wrote:
> > > > On Fri, Jun 5, 2020 at 9:08 AM Eric Biggers <ebiggers@kernel.org> wrote:
> > > > >
> > > > > On Fri, Jun 05, 2020 at 07:55:46AM -0700, Jaegeuk Kim wrote:
> > > > > > Eric,
> > > > > >
> > > > > > Could you PTAL?
> > > > > >
> > > > > > On 06/05, kernel test robot wrote:
> > > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> > > > > > > head:   adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > > > > > commit: adf3d3a53cf13d0998c699ba43d8582c875179e3 [48/48] f2fs: don't return vmalloc() memory from f2fs_kmalloc()
> > > > > > > config: powerpc64-randconfig-r011-20200605 (attached as .config)
> > > > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > > > > > > reproduce (this is a W=1 build):
> > > > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > > >         chmod +x ~/bin/make.cross
> > > > > > >         # install powerpc64 cross compiling tool for clang build
> > > > > > >         # apt-get install binutils-powerpc64-linux-gnu
> > > > > > >         git checkout adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > > > > >         # save the attached .config to linux build tree
> > > > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> > > > > > >
> > > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >
> > > > > I don't know what's causing this.  It doesn't look at all related to my commit,
> > > > > and I don't see what's using so much stack in f2fs_fill_super().
> > > > >
> > > > > @kernel test robot: the directions given above don't actually work.
> > > > > First I got an error due to powerpc64-linux-gnu-elfedit not existing.
> > > > > So I had to build binutils for powerpc64 myself.
> > > > >
> > > > > Then I still got an error:
> > > > >
> > > > >         make: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.
> > > >
> > > > If you have the config, then
> > > > $ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang -j71
> > > > If you recompile with CONFIG_DEBUG_INFO, you can get the stack frame
> > > > information. I wrote a tool to parse this for these cryptic warnings.
> > > > https://github.com/ClangBuiltLinux/frame-larger-than
> > >
> > > I can build the file and get the warning now, but the frame_larger_than.py
> > > script doesn't work:
> > >
> > > $ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang fs/f2fs/super.o
> > >   CALL    scripts/checksyscalls.sh
> > >   CALL    scripts/atomic/check-atomics.sh
> > >   CC [M]  fs/f2fs/super.o
> > > fs/f2fs/super.c:3303:12: warning: stack frame size of 2064 bytes in function 'f2fs_fill_super' [-Wframe-larger-than=]
> > > static int f2fs_fill_super(struct super_block *sb, void *data, int silent)
> > >            ^
> > > 1 warning generated.
> > >
> > > $ python3 ~/src/frame-larger-than/frame_larger_than.py fs/f2fs/super.o f2fs_fill_super
> > > failed to parse elf: Unsupported relocation type: 1
> >
> > Looks like the python library I'm using to parse the DWARF debug info
> > doesn't understand some ppc64 specific relocation kind, and is
> > throwing an ELFError.  Let me report it upstream.
> >
> > The hard part for these is inlining; it can be hard to tell which
> > child has a large local allocation when looking at the warning about
> > the parent.
> >
> > Then again, my script is just nicer output than `llvm-dwarfdump foo.o`
> > or `readelf --debug-dump=info foo.o` for this specific issue.
> >
>
> I did confirm that my commit "f2fs: don't return vmalloc() memory from
> f2fs_kmalloc()" actually caused this, in particular the following part:
>
> diff --git a/fs/f2fs/super.c b/fs/f2fs/super.c
> index a71da699cb2d55..f3c15116954218 100644
> --- a/fs/f2fs/super.c
> +++ b/fs/f2fs/super.c
> @@ -3033,7 +3033,7 @@ static int init_blkz_info(struct f2fs_sb_info *sbi, int devi)
>         if (nr_sectors & (bdev_zone_sectors(bdev) - 1))
>                 FDEV(devi).nr_blkz++;
>
> -       FDEV(devi).blkz_seq = f2fs_kzalloc(sbi,
> +       FDEV(devi).blkz_seq = f2fs_kvzalloc(sbi,
>                                         BITS_TO_LONGS(FDEV(devi).nr_blkz)
>                                         * sizeof(unsigned long),
>                                         GFP_KERNEL);
>
> This is inlined as:
>
>     f2fs_fill_super()
>      => f2fs_scan_devices()
>         => init_blkz_info()
>            => f2fs_kvzalloc()
>
> Somehow this change increased the frame size of f2fs_fill_super() from 1984 to
> 2064 bytes.  That exceeds the 2048-byte limit, triggering the warning.
>
> So, f2fs_fill_super() was very close to the limit already.  I'm not sure why; I
> don't see any huge stack allocations in it or in static functions it calls.
> Maybe there is a kconfig option that is increasing the stack usage?
>
> If I add noinline_for_stack to f2fs_scan_devices(), the frame drops to 1744
> bytes.  Or if I add noinline_for_stack to read_raw_super_block(), the frame
> drops to 1776 bytes.  We could do either (or both) of those to avoid the
> warning.  But we'd still wouldn't be that far from this 2048-byte "limit".

Right, so my script would have printed out the list of all local
variables in f2fs_fill_super() and their sizes.  With that information
handy, we could assess if there were any smoking guns of clearly
incorrect large stack allocations vs death by a thousand cuts.  Your
change may not have added a new large local allocation, simply tipped
the scale or changed inlining decisions.  They may be other local
variables in this call chain that we should reassess allocation
strategy; ie. dynamic or static rather than local, to avoid the
potential for exhausting kernel stack.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_EfEuhb8QVNzbFhVnTN%2Bq5tkDkWPxOpC%2BrfzOVxpWVg%40mail.gmail.com.
