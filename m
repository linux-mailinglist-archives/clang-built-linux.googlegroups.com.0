Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBNHR677QKGQEEIOBJEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A98842F3A66
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 20:29:57 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id r185sf3064613ybf.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:29:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610479796; cv=pass;
        d=google.com; s=arc-20160816;
        b=0z1ddicQrYRr4Eehyl95hxMUX+rSqAYuTM0SwiDteABS0G41ehQa09dE+KjTRf/0X5
         1aJCgJJq/5Xyr3OFC6yk63HERYD6E79labmBCKmseUG3tjWUti9U59KAlg15FWJNTlA+
         gYRiZ91JghjZeTyBJGCyN2v6iTmZdnOqTFDo6d763VxeAJTSWlskP8t6J2W53By2cpn9
         MifdXGfoOMYmCkItmAapkopK/CZuMN679mPo/OROEj0wxe4VDUsSrAy8o6lLSorBuUoF
         SB+xbEeMGTjoefhdjGy+hldkOMCvnhrlN591jE7srRVSaXrlHqKUgyOFz5p7Cx5S9dna
         BybA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bu5g6sxSec+gCIkfd3wTKB9AFydplXKJ/9kXmqV8yfM=;
        b=F4VDEo9EzvjlK3mi8xth5sK3wpuhOR0OFJ0tQuFDEjfg/AoqN1whEUs9UunEC26zrm
         UmPqh19hL03F2KD+6xgvjdaUFRa6bb0vZk7y0HPnFQxFU0drLN4aYEl2ksvdT4zCLxBy
         ypN0gonjvHSJp5babXexfOqXKFoZohWilQx/J6x4CVajj7QxVWf4AHxoKWO1/216x2L3
         zPFxYeeE9mLsgghomDkxCgpve4xmqpLRw2FvtuJNv5sm0EX9n5CiQiPdGBwQ0J2FvAnS
         xG1PkuZwz1xU2UIW88s90ORTE1oR+H+1g89Yo/QqicItJLO0laN6eZVA/W1aVrtBzu8v
         rHbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xGWpwMH7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bu5g6sxSec+gCIkfd3wTKB9AFydplXKJ/9kXmqV8yfM=;
        b=Oj3VBgsoF8cl0cXjWPO7Dvk+QGrWl5e6h8r2RfubF979fxCWSp89uIUww6gcepvtJT
         vctlhkQ98nw3voGNqiigPSYmXcSnt72YMJEXBa1R+LGRsjwLxgbketDEIRJ28OuSbOCs
         YJkYCGDn292e/QyyQEUF4LpcL955pnyC4OLs9xnoLqyuUf/7QDrbDAyZXj+6NIhdK8vg
         KLIH9Z016hTSIAFlktFKhuHPiBEJ43xwZGfqlJFV7e/tUGSC6bLSNwE7UZqb9d3su9VC
         70zCJrv02D9aDWjpi3h7+ypSTg8ZY93EtuX1eXJ+dLGU/xRY7cl6ZMhK0NuV870pEkTe
         hcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bu5g6sxSec+gCIkfd3wTKB9AFydplXKJ/9kXmqV8yfM=;
        b=E833w9nwzQpuM7wRbNaUE+qEIM6LpU7VcKDYaxqiDvky2Sue91WJU70TNzI0ra/vXT
         kkOqtX7u6ga2Vi712iCSq40/9kXUeEHhfXyVBj8E5NFhRFuwTkQM93zOg4Az7Viz8Sr4
         sPgUht05mGhYUwJjI5kiv7c7TPGYe+RZZyYpyRUoa1WEUtJR57RSFPPUTJhc1CzhYD8Q
         mpH9Rn214JcHEnI5VIPngcBpuhyN6q6jK0mLgLZLi1u/dbODI6LU2fjQNBu8t6EIBU7G
         sbKs9MYv+i/P3vHdlbhRuMn1EwNj7kdncIk9mlscQ/uuoZjW1+ZV1P/+cD0m8J26iETo
         bmWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k+zz5e2MwQikflalYGuUlTv/L+jq4+XGgx2jqT9qo36fHXtQA
	BUj2ALRvb4/DPCi+GSrfSU0=
X-Google-Smtp-Source: ABdhPJzCZDtNBayyde1ErK45SEwSER0OzD6lRjtbyulAUIQMbnNTelaXT1Qh4hWUI4Xs6Bups5y7dg==
X-Received: by 2002:a25:244:: with SMTP id 65mr1684529ybc.350.1610479796760;
        Tue, 12 Jan 2021 11:29:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls463511ybe.2.gmail; Tue, 12 Jan
 2021 11:29:56 -0800 (PST)
X-Received: by 2002:a25:4258:: with SMTP id p85mr1319851yba.423.1610479796398;
        Tue, 12 Jan 2021 11:29:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610479796; cv=none;
        d=google.com; s=arc-20160816;
        b=c5AkpHrdSfZQTsHjTofO+Ds/zbEzRnds7oSN6Ky3bdXT7gWm8bQidvNp83iekGdvEi
         qAWrEuK2JIqOn15eWb30HohX0398Shzdmx1UsTEQm6IQfcY22swnDtKuFCdaU4FHbxr0
         5r1d9aSY540DWUpM1iL8PuGlilOMT70mEfJdtHh1AvRdrG0l7LFTPkgTaaGQdkxukAwR
         rMr4jWkrBR8sBFEu6iT+LyExraSBS0V31F5L4yeKowmh49U/rAAe15fTnWyFToKvdw+H
         gatjYEI3V44fzdg9vrdhjDm+f0xTMZMfOQCbPXfitnRilpiiUb+94UYsPtz1Sua3BiJH
         2gyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nDjGRpEcZSTr4pdQnI+KXnrVwpHjk+klmLCPfXIthos=;
        b=X92WC0zf5JEwpX1CugP7p0/s3nxkWEivzTXZZSkrmgt5pWDLKKotjm5CCHVGxCWq4t
         Ml6GzQ34cDFlIKVQT+yA1GhD91ZZ6KAxu5WhgiWfuF+IDlRfbXtUWp6MkUWBV0MazbX1
         7UFllunFKCBYCZaKbSrW6HlsanxSWfEEPQZ8ALYmdTOr7U95s5o6Q3XdvpBlzPJwkm9j
         6WBwxLtUY4/tKOS9p+f7V6WqBzlM11MZTG13cUl+8EPONhjJeoVRkLubPowkxxmp65VT
         0Ipb0NWK6kfnlphwV9+q0J9b3Bu3wTQ+NedUciFRdc+SU43gfIfp7B+TjHCsmpAXOiZ2
         V8Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xGWpwMH7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i70si351846ybg.1.2021.01.12.11.29.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 11:29:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BA4F72311F;
	Tue, 12 Jan 2021 19:29:54 +0000 (UTC)
Date: Tue, 12 Jan 2021 20:31:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Laurent Dufour <ldufour@linux.ibm.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	David Hildenbrand <david@redhat.com>,
	Oscar Salvador <osalvador@suse.de>
Subject: Re: [linux-stable-rc:linux-4.19.y 1441/2773]
 drivers/base/node.c:429:5: warning: no previous prototype for function
 'register_mem_block_under_node_early'
Message-ID: <X/349+s18NvENgQP@kroah.com>
References: <202101100936.GwZyiMDo-lkp@intel.com>
 <CAFqt6zaAd1Oe7FmD8HfumbssyuFO=DkVDzLuq=_Ficg10LRzrg@mail.gmail.com>
 <X/yvHIekJZV9WLvO@kroah.com>
 <CAFqt6zZwpaPxcuGwbyxg=TKyNXnW3PzOqodiCArOU=Mkds_RVA@mail.gmail.com>
 <X/34yJ07vHVLk0MP@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <X/34yJ07vHVLk0MP@kroah.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=xGWpwMH7;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jan 12, 2021 at 08:30:16PM +0100, Greg Kroah-Hartman wrote:
> On Wed, Jan 13, 2021 at 12:49:52AM +0530, Souptick Joarder wrote:
> > On Tue, Jan 12, 2021 at 1:32 AM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Tue, Jan 12, 2021 at 12:48:22AM +0530, Souptick Joarder wrote:
> > > > On Sun, Jan 10, 2021 at 6:33 AM kernel test robot <lkp@intel.com> wrote:
> > > > >
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > > > > head:   610bdbf6a174c9a91e34e276a9594114b44bef74
> > > > > commit: b6f69f72c15d7f973f5709c5351f378f235b3654 [1441/2773] mm: don't rely on system state to detect hot-plug operations
> > > > > config: x86_64-randconfig-a001-20210110 (attached as .config)
> > > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
> > > > > reproduce (this is a W=1 build):
> > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >         chmod +x ~/bin/make.cross
> > > > >         # install x86_64 cross compiling tool for clang build
> > > > >         # apt-get install binutils-x86-64-linux-gnu
> > > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b6f69f72c15d7f973f5709c5351f378f235b3654
> > > > >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> > > > >         git fetch --no-tags linux-stable-rc linux-4.19.y
> > > > >         git checkout b6f69f72c15d7f973f5709c5351f378f235b3654
> > > > >         # save the attached .config to linux build tree
> > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >
> > > > > All warnings (new ones prefixed by >>):
> > > > >
> > > > > >> drivers/base/node.c:429:5: warning: no previous prototype for function 'register_mem_block_under_node_early' [-Wmissing-prototypes]
> > > > >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> > > > >        ^
> > > > >    drivers/base/node.c:429:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > > > >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> > > > >    ^
> > > > >    static
> > > > >    1 warning generated.
> > > >
> > > > It is fixed in the mainline. Will stable tree pick it from there ?
> > >
> > > What is the git commit id for this?
> > 
> > commit  f85086f95fa3 (mm: don't rely on system state to detect
> > hot-plug operations)
> > which marks this function as static.
> 
> Ah, that's not ok for stable trees.  Don't worry about this, sparse
> issues for stuff like this is not a big deal for stable releases.

And it's already in the 4.19 tree, so I have no idea why 0-day is
complaining...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X/349%2Bs18NvENgQP%40kroah.com.
