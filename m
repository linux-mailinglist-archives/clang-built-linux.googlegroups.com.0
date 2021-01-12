Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBBPR677QKGQEX7QNYMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 711D22F3A2F
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 20:29:10 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id l9sf1574718oih.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:29:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610479749; cv=pass;
        d=google.com; s=arc-20160816;
        b=WbaKHflo4mX5CIZufwvpuTV4rK3tqthxAEnhZkrG2FLqVcBRxmw/8FKGVZhGKACAzv
         +bS/inlc4tBt4LQ3Yz7wAANjIHG+NRb89ycC5Wwx24CfrXBbNI8J5JXXp0sbVsmDbc5r
         vItVEc2DxEWes2SNEwgchoNBQjKkmxqE0cPzTewAZP7cFSm12vCYYYSg2jb9XG75JbKe
         5rz6KJ36qbTnxpQU0ue3m12+6Etqm/qCRSw85ifX3oJCHKraSezX32FrUIfgbCFX28zq
         bZMUjsgKFSRrPK4mynvKD5x+epQTdz4VyeMAovaNLM4pGgRuHTMvoLiQJCiQz0rAI4e/
         3wLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RJwuR0sdq/yjSA0PSkqPE476qLs3Y1qqrMtdtIl8WRI=;
        b=Yj7kgirdmr+6Ddo12WHakYogRcMgsDg1rpR7EqlASS9HopTKrYqOoaoNHCHJVcF9w4
         HCE1rf0DOTlCy1mN8p9AbrgOOXatuExS1i50S0zHCDu39Odj26q4QoB6mMNHejxF3YO1
         mdjCfKtxmG3h0VzVaR9QefkazDhljJWX+exvd3XMMulcIDnRDuOqYbw1CpEbp0BjMyJH
         TFfyxw4WVGREhzIq6UIxwwp3CAmAhDYL4RL79tbmz4BjerUZaFfqMj02WI42isV/HapV
         5l1E+LIBS4xBPtMv7zGe6cmS/xGrl7UZhAxRHd6T4LMYGTBzbC7bfu8Xws+o0PZCVIB7
         6u3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=HKHDJZvf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RJwuR0sdq/yjSA0PSkqPE476qLs3Y1qqrMtdtIl8WRI=;
        b=sI7lqF8uTgVG8C7NO2WaruVwQXpEN78L2kOWc5dAro+kugRc9+pxuinJG4Y/rqbSmv
         6y15sE60/FU9m0ihOjNmOP2Q6ifnkoQV621E20bhwGtO2qTsiAg4DZdwWs5wf/hKl5Dx
         bqN12PRoauNKahNmA6ckAKu32osEN7IdbkaCV19yL17uheSCAhOf26buv+9uIfFCJj2f
         WkLM1v3vN3/xLl+MfFeF61avT2IEtVEjaUx7WhZPzIlFsDrSIYPuZE+BdPe8zdnlGXpK
         Jqy2F1tuOLbjpQ7AcxkoT1ujqqZt+0VB53rf/P8tcTvnDMZ/cb+qsR5uj7/DocBq25yh
         9P+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RJwuR0sdq/yjSA0PSkqPE476qLs3Y1qqrMtdtIl8WRI=;
        b=RgPRsfl1C08ZyJi3noIsMlK2v4MzbNow0+rTaWVUmAmWD7gbFT9mbt28dzESLttLac
         Ec10vkqKDwaIvFhBkAHY2OC12SSt/31D3EibjDibquQCd8OQa3InvrhD3wA2ZmR4yeoB
         +05wx3mgds1yCFJioGpD1xeG1Dd4QmJkgb4HbzFWyHTvOl7bo2SkxS6XGPYzHwX/G16Z
         Ggqy0Zp4vkQeozUfYwFw4vtHdmYJ6M4D2R25pHtPOYc0ZPyA/1gTpdzBgXJsapsf3dfx
         YjBMChyq5RFVguWiVTekoBvdgjgHq8gFUT55khMB/7Y3BEwUJk83pWQqiGSEslBUKQr7
         yYzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cdyZDyiodBr6PhgRgY7J1OF0YXrKqlDUVEYSVd7O7KXCRnwuo
	0X24MPQ0JadL3t7MXTT22cQ=
X-Google-Smtp-Source: ABdhPJwiUrptDccPBdRSjGVNLpRUa0GDAt0w4jwWZ06LWbhjvo4sJa3TzL1mgocyMRgh9H90b24c6A==
X-Received: by 2002:a9d:19cb:: with SMTP id k69mr652901otk.75.1610479749432;
        Tue, 12 Jan 2021 11:29:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2119:: with SMTP id 25ls1006393oiz.10.gmail; Tue, 12 Jan
 2021 11:29:09 -0800 (PST)
X-Received: by 2002:aca:c1d6:: with SMTP id r205mr456749oif.37.1610479749027;
        Tue, 12 Jan 2021 11:29:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610479749; cv=none;
        d=google.com; s=arc-20160816;
        b=qGNs1dZ1OTwGeFYzGUHZ3c7gvOPiMWmBHKnpfkb6Nz1Z3lULFyirBLY0x39onl5BdX
         2R4cSTQ3Ec3wrxtIDydAYpF/Fa0ISWRHC9BnN5chaAN+xCYvMB769Po46iT3Q18mBjdy
         G6fHlObx6t+RcP2CsquDr4HS3gjMkx79MJxUqFy5FGzb6VpnPCnXPrKppnZA7rbGzIcI
         8MYXGmHWeDQkFqzluOIzbF6ZmIEIQQPz/HdfYs3IczvoRJBhzT0uh4+aGQn0aeSzaYr+
         Ujg/67zcu5yjYDKppsa59U02ZJqbxSOeTT5Z5ROWdjtMlgTY9b6ag4HReHLl86ZpfJEy
         5Q8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1bwCcCtPxQEqy4Yw5npKDE89awmp7YJED+c/BEKJgTM=;
        b=tLFEDpgsBnREYLmS3yw28XS6eftB4/jyWuIwI0l3Xpb5GLpEqJE41agFJM29QXWBxt
         yiayc+eCnbaULvmAjGdWfwi8+iSAJ6sAsV0TnGULD4b1LNkIgOBnzbvMsw+baHg1B3aw
         RwMO4b+uXpfamzmy/QfyGpKSe9EEi5n2el+C7ksolrXllXMbNK39NBMrMjZjRT+kOlkq
         qHIQ6Dp8DqVCER4a12KWPsbvDQkIoB9IytHu9ADQw6AgJ3yJ5UuJzUnUobH50CTyxnqn
         rTW1H84LXGsF5KBrbDRhAKZtpyBJgiK+9rlqzdftD0QswzOLzDtG005X6nCj8ds6VnYg
         DDUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=HKHDJZvf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v23si414726otn.0.2021.01.12.11.29.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 11:29:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B9772070B;
	Tue, 12 Jan 2021 19:29:07 +0000 (UTC)
Date: Tue, 12 Jan 2021 20:30:16 +0100
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
Message-ID: <X/34yJ07vHVLk0MP@kroah.com>
References: <202101100936.GwZyiMDo-lkp@intel.com>
 <CAFqt6zaAd1Oe7FmD8HfumbssyuFO=DkVDzLuq=_Ficg10LRzrg@mail.gmail.com>
 <X/yvHIekJZV9WLvO@kroah.com>
 <CAFqt6zZwpaPxcuGwbyxg=TKyNXnW3PzOqodiCArOU=Mkds_RVA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFqt6zZwpaPxcuGwbyxg=TKyNXnW3PzOqodiCArOU=Mkds_RVA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=HKHDJZvf;       spf=pass
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

On Wed, Jan 13, 2021 at 12:49:52AM +0530, Souptick Joarder wrote:
> On Tue, Jan 12, 2021 at 1:32 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Jan 12, 2021 at 12:48:22AM +0530, Souptick Joarder wrote:
> > > On Sun, Jan 10, 2021 at 6:33 AM kernel test robot <lkp@intel.com> wrote:
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > > > head:   610bdbf6a174c9a91e34e276a9594114b44bef74
> > > > commit: b6f69f72c15d7f973f5709c5351f378f235b3654 [1441/2773] mm: don't rely on system state to detect hot-plug operations
> > > > config: x86_64-randconfig-a001-20210110 (attached as .config)
> > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install x86_64 cross compiling tool for clang build
> > > >         # apt-get install binutils-x86-64-linux-gnu
> > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b6f69f72c15d7f973f5709c5351f378f235b3654
> > > >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> > > >         git fetch --no-tags linux-stable-rc linux-4.19.y
> > > >         git checkout b6f69f72c15d7f973f5709c5351f378f235b3654
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> drivers/base/node.c:429:5: warning: no previous prototype for function 'register_mem_block_under_node_early' [-Wmissing-prototypes]
> > > >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> > > >        ^
> > > >    drivers/base/node.c:429:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > > >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> > > >    ^
> > > >    static
> > > >    1 warning generated.
> > >
> > > It is fixed in the mainline. Will stable tree pick it from there ?
> >
> > What is the git commit id for this?
> 
> commit  f85086f95fa3 (mm: don't rely on system state to detect
> hot-plug operations)
> which marks this function as static.

Ah, that's not ok for stable trees.  Don't worry about this, sparse
issues for stuff like this is not a big deal for stable releases.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X/34yJ07vHVLk0MP%40kroah.com.
