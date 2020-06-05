Return-Path: <clang-built-linux+bncBAABBHOH5L3AKGQEJS6TIGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2A51F00A2
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 21:57:18 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id w4sf6430273iol.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 12:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591387038; cv=pass;
        d=google.com; s=arc-20160816;
        b=pj4NQS++uTtKMFOvU2unaa0hyjCs5RFTnNzDcCzTSo7txTNaH7gCKJHGscj0pS+xux
         2nXdofzRPuKGPlX+MR9JXcWYcAG+Vl+mdm4+EmFKuPkust+4l4Pzn0utFCbs63O+uOmx
         WOQNZVcua+noRWxU/XyinZBXQwEv6Rt1kqhVu5/pydOg7YgZRl+v0JhPT0YYr7h5ViA0
         tWVM43zkCwEPDK47loU/zPQ6Cje3NjvVTBbX9A6spIThSN29Z5tt2BcNnaQIGOX8EpWf
         /XRySFtcdqPwxtjJPQhoGxSOXI1qKIDKfRtz3bEsQwiffzrwD8KjWj3TImji7DiEAKk3
         DDUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LwCKcqVAvTO1jHx7buRlmqPZepTThUjV2wfGqM0j5oY=;
        b=ePVTBjW0WgzKnkumdO8WvecZxMUwMpZ39+OD3e9Qms3pXYg/h1OEQMJGzmjMLfJoB8
         xnOTMV9eUcx4nBxvgJkGaot2FP3fGreTcesEiCzlY3XHBAN/VMGueNNF85tl00XdIN5u
         HD232cWiXAGjcWmJX47aoz4vIYp7R6WYM7tSmH9DjnInx6/5vmqtCjFqlGg5x53i9DLQ
         m0MLRQ1ZZsUWaVWE7QtN5Ca6OPLmWX/M6vrKgtEhsklwIAP04yKpMhoZ5rm5TJAQc6ft
         0N0s5n0+fIbSczpn2kKzErjqvmh2JhWudsOOPIe0sQCec0wbPLybqUdOy1Sp9/g/s7xz
         lfKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yNWeYFa2;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LwCKcqVAvTO1jHx7buRlmqPZepTThUjV2wfGqM0j5oY=;
        b=ZLkRxSkmHIdNGThkazE5W8PQ0mSgogW7icKmuUnLRM7guVAwDeWsdlOOemnkH2vrBV
         XtfEKUpmiwNOrwOuicmighpI8tZevUTcxb4qX39ytRk8nrPKRWGusGGP8a2SW4OjfHBU
         WJxhEs11Dk6RLD1ZamPhu+6CGA3lN83biLeW0wOwK+KBy7LcW5zRmYnAKQlCddV+OOdB
         w1VbwcJfoOly1s5bJubD1pWpDLC1xvGshjX7sK9btDFg3+eOyeIt8vEmn/xdizz1Cvu4
         +eLWt+qyyMKUWcwp3arbhhw/5jgVJgOpRW3hI1Jr97FYaVNhLi4lpN47WESiXERYxB3A
         FB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LwCKcqVAvTO1jHx7buRlmqPZepTThUjV2wfGqM0j5oY=;
        b=Ww0iE/Bxvgie7HYMgCaHQcuq1+KLAYIk4Rz0B1a7DEMolrSCHj2vDbWwKJ4vGuoP+L
         7SnBBADxQqe5S3GpnebL5JM5j8XFJqxOlicDqhgxJ8guY8xy6lkb7MfuDMn+G5w9B7t1
         bpDK8c4qiULsqcHfI65J8D9ZyIMgSyVfe48G10x75yzqJkQkmBx7H5xCQv9GAltT6qiY
         z7cMq9tco0OrVlsHBuMf0ixT28mfrxfeOum3ZTD74bdPJvK5n21dvxL0v+zVyj2kZQLC
         JzPj7QFf6aQp2lJ8k8e5Igp6BCfuAFKJ/p1iXNxouPo+rcYpxlQ/okbc6JT8qA3zbi26
         HURA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ed57LIP8ySxaRcko5rdbBobR+hz6ikODAL7qaFSCSTe183Z1P
	8NK2FujUcVdLTfA8XZCTxQY=
X-Google-Smtp-Source: ABdhPJy4tnV1zK/DUHvZ6Mdn/6/VYo/ZOR9rwsh1Kr/zZXEq0LPhEcoikantc0KfW/lF/ADzBj4u1g==
X-Received: by 2002:a05:6602:2f0a:: with SMTP id q10mr9774193iow.134.1591387037852;
        Fri, 05 Jun 2020 12:57:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b9d6:: with SMTP id j205ls1746422iof.6.gmail; Fri, 05
 Jun 2020 12:57:16 -0700 (PDT)
X-Received: by 2002:a5e:d619:: with SMTP id w25mr9768400iom.189.1591387035823;
        Fri, 05 Jun 2020 12:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591387035; cv=none;
        d=google.com; s=arc-20160816;
        b=jJnrTEzBQZTyMydHKZdcf8UJIAVhrPjgS3Vc0FvNRDKBvJgwKTwYrzSbVwbXcrIzc3
         7DePs4BWYg2BPTTooqCwXUQr+Wd6jQvr1ePLT+eNmBI9k1VFJ32eDiwedG4AWCRfEFlD
         GU9VD/t7m2JnzZzrCZk+R7T2txPq1SiQxKv3cQHcLE+IPjZUbQDPxa+JmaUvZeiJaLvw
         yBFcHypEtVqmnMmp6r0dqW2OLW7Cyd/HC5vK7KPaHLrRjmeuif3p6w0/+yHyvPGD5iC4
         pl8kyXoiLoK1EavcEZMOLKepUCYw7wPwzlfp12h/wTRIT9n9J9i5xDxcWy7g+QFWLy/B
         Oxrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5xjWmaG8WHN7CEXjjhoPn/kI6PwwDf65SGhY/+MrHo0=;
        b=nwu8vlpFRMKWTneOIZ8JWUZALpLnVjKYuQH1SIOEJ8a6RHr6gd+cfBqUzjASdzNQ4H
         voJ8JM0k5GzKLQFIsv/VVG8S5Jov/tDk2YqrlA9E6Qgc5DjLIPXzrB1waJnW+X+oAChj
         SaR8KrDW8/hXXwkx+eLjyaHBiisqJGOtFWnpD6fwp19hzmkrFuxQe7qR3ohruuc9JcRF
         g5pItWgAfkZ5ouL/Zj0xTM52P3ef+HR512AnprTJQNYkoP2TBJyCUrZcYzTJe1qzLSdy
         w3NL4//uAuFgd0oEvDaFZs/irg4NVLBQge+LrOo5c+//7UmoBtSrvInrERTEMYFsYXXr
         lP0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yNWeYFa2;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z11si252045ilq.5.2020.06.05.12.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 12:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net [107.3.166.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D16E12074B;
	Fri,  5 Jun 2020 19:57:14 +0000 (UTC)
Date: Fri, 5 Jun 2020 12:57:13 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, linux-f2fs-devel@lists.sourceforge.net
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
Message-ID: <20200605195713.GL1373@sol.localdomain>
References: <202006051725.63EW72i7%lkp@intel.com>
 <20200605145546.GA227721@google.com>
 <20200605160830.GB1373@sol.localdomain>
 <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
 <20200605193359.GK1373@sol.localdomain>
 <CAKwvOdmE_59v6-W+Sk8SGrrXJ4dx5ANWEpD5GL_hrw0ja0w1kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmE_59v6-W+Sk8SGrrXJ4dx5ANWEpD5GL_hrw0ja0w1kg@mail.gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yNWeYFa2;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jun 05, 2020 at 12:42:59PM -0700, Nick Desaulniers wrote:
> On Fri, Jun 5, 2020 at 12:34 PM Eric Biggers <ebiggers@kernel.org> wrote:
> >
> > On Fri, Jun 05, 2020 at 09:45:43AM -0700, Nick Desaulniers wrote:
> > > On Fri, Jun 5, 2020 at 9:08 AM Eric Biggers <ebiggers@kernel.org> wrote:
> > > >
> > > > On Fri, Jun 05, 2020 at 07:55:46AM -0700, Jaegeuk Kim wrote:
> > > > > Eric,
> > > > >
> > > > > Could you PTAL?
> > > > >
> > > > > On 06/05, kernel test robot wrote:
> > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> > > > > > head:   adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > > > > commit: adf3d3a53cf13d0998c699ba43d8582c875179e3 [48/48] f2fs: don't return vmalloc() memory from f2fs_kmalloc()
> > > > > > config: powerpc64-randconfig-r011-20200605 (attached as .config)
> > > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > > > > > reproduce (this is a W=1 build):
> > > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > >         chmod +x ~/bin/make.cross
> > > > > >         # install powerpc64 cross compiling tool for clang build
> > > > > >         # apt-get install binutils-powerpc64-linux-gnu
> > > > > >         git checkout adf3d3a53cf13d0998c699ba43d8582c875179e3
> > > > > >         # save the attached .config to linux build tree
> > > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> > > > > >
> > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > I don't know what's causing this.  It doesn't look at all related to my commit,
> > > > and I don't see what's using so much stack in f2fs_fill_super().
> > > >
> > > > @kernel test robot: the directions given above don't actually work.
> > > > First I got an error due to powerpc64-linux-gnu-elfedit not existing.
> > > > So I had to build binutils for powerpc64 myself.
> > > >
> > > > Then I still got an error:
> > > >
> > > >         make: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.
> > >
> > > If you have the config, then
> > > $ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang -j71
> > > If you recompile with CONFIG_DEBUG_INFO, you can get the stack frame
> > > information. I wrote a tool to parse this for these cryptic warnings.
> > > https://github.com/ClangBuiltLinux/frame-larger-than
> >
> > I can build the file and get the warning now, but the frame_larger_than.py
> > script doesn't work:
> >
> > $ ARCH=powerpc CROSS_COMPILE=powerpc64-linux-gnu- make CC=clang fs/f2fs/super.o
> >   CALL    scripts/checksyscalls.sh
> >   CALL    scripts/atomic/check-atomics.sh
> >   CC [M]  fs/f2fs/super.o
> > fs/f2fs/super.c:3303:12: warning: stack frame size of 2064 bytes in function 'f2fs_fill_super' [-Wframe-larger-than=]
> > static int f2fs_fill_super(struct super_block *sb, void *data, int silent)
> >            ^
> > 1 warning generated.
> >
> > $ python3 ~/src/frame-larger-than/frame_larger_than.py fs/f2fs/super.o f2fs_fill_super
> > failed to parse elf: Unsupported relocation type: 1
> 
> Looks like the python library I'm using to parse the DWARF debug info
> doesn't understand some ppc64 specific relocation kind, and is
> throwing an ELFError.  Let me report it upstream.
> 
> The hard part for these is inlining; it can be hard to tell which
> child has a large local allocation when looking at the warning about
> the parent.
> 
> Then again, my script is just nicer output than `llvm-dwarfdump foo.o`
> or `readelf --debug-dump=info foo.o` for this specific issue.
> 

I did confirm that my commit "f2fs: don't return vmalloc() memory from
f2fs_kmalloc()" actually caused this, in particular the following part:

diff --git a/fs/f2fs/super.c b/fs/f2fs/super.c
index a71da699cb2d55..f3c15116954218 100644
--- a/fs/f2fs/super.c
+++ b/fs/f2fs/super.c
@@ -3033,7 +3033,7 @@ static int init_blkz_info(struct f2fs_sb_info *sbi, int devi)
        if (nr_sectors & (bdev_zone_sectors(bdev) - 1))
                FDEV(devi).nr_blkz++;
 
-       FDEV(devi).blkz_seq = f2fs_kzalloc(sbi,
+       FDEV(devi).blkz_seq = f2fs_kvzalloc(sbi,
                                        BITS_TO_LONGS(FDEV(devi).nr_blkz)
                                        * sizeof(unsigned long),
                                        GFP_KERNEL);

This is inlined as:

    f2fs_fill_super()
     => f2fs_scan_devices()
        => init_blkz_info()
           => f2fs_kvzalloc()

Somehow this change increased the frame size of f2fs_fill_super() from 1984 to
2064 bytes.  That exceeds the 2048-byte limit, triggering the warning.

So, f2fs_fill_super() was very close to the limit already.  I'm not sure why; I
don't see any huge stack allocations in it or in static functions it calls.
Maybe there is a kconfig option that is increasing the stack usage?

If I add noinline_for_stack to f2fs_scan_devices(), the frame drops to 1744
bytes.  Or if I add noinline_for_stack to read_raw_super_block(), the frame
drops to 1776 bytes.  We could do either (or both) of those to avoid the
warning.  But we'd still wouldn't be that far from this 2048-byte "limit".

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605195713.GL1373%40sol.localdomain.
