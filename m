Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBWG56L7QKGQEXEPAFSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2665D2F2050
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:02:33 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id o8sf21306ybq.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:02:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610395352; cv=pass;
        d=google.com; s=arc-20160816;
        b=LtewuBDBPnVt5unMiRcmWTHuv6hBN/XGaQCmhjMENX6nS3ezMnWpcZ40L53tEOk6S4
         mYMI5VkvThCvE6hHx6rZoC/zUM9w1Aj5ANirsIxRjYV2XbxRrM984CMOCNTN2lkmd8h8
         aESQnqr1VVaoZUDbzF3INViT5U46EbedrXJH/eedeE5eZ0U8k/6TPBTj+sfFs8H20DkE
         mY6BHxnOH3SW9pCHKOc9IhyyctbmPlnlXeFxobk/sDW/Qw7Fp3zwh0t9MKpYWVhjrKpU
         s2kXkxV4ro7zFBkPS8wmc/i3AUOfjyvYowxXVd1SuyzE92W8ZsWJ70+B756NHcNlJrnI
         tAmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UHhdjvHUdWoy6wFNR+Il1LpWn0TDoKJp5HitBk9jpD8=;
        b=Ue5AjNvg62UiJyQTREO6gzInXfPiI8APHapUD0zntCOUWi8mZ3W4dgZAzmSKii3qLy
         f7YQLBMd/NTOiUsamAIG+4YqZBrbEU2xVqhVFQ+kxyDsPsWwjqslBHZ8y8pwpYHzTpvZ
         99+ZdA6tnAahsjmK/5NJ0enO5uqbL/ZpP8xHnSSS2a9sUhu6cBim6hzuNSGe7rtubz8N
         P9LBhJ7qejfi9DWT2Z7FqO44Ci0bHp6v+0vIey8wW7lwYxLEEx7Z7yaIb46ggX5e5NOZ
         Y67oDzCTsxlG5iyZpVKGETQEFZ1ki7vsXpMWK753rD6Quw5lHcUdjza2CtALFWG24MhC
         zCbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CiFe5S8K;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UHhdjvHUdWoy6wFNR+Il1LpWn0TDoKJp5HitBk9jpD8=;
        b=BJ3dleKEbIrDbviTrOT0WxhWMpNK8xTM+lWY0pxenJecNWyUIbEaZSkJuWe6yjNhpk
         ck0va4XoQK70mdWxysBkLlvmiKMwYysobq573G2w/3nK+3vQtHlQTNg6d60jixiOrG7H
         aCblnQnkcY/Mnmc3pHIwk7Ss+miYw21lJsiYkv6EfE3E+aqPlp5mVR+5A+7PXlHLCgkQ
         1eHUOapl+TnCl0kLN74gO3csnunlXx+tP4wZXWLffhyXemLZ3kjRMr2uG0vKqdpF3Oyr
         B0UVmXlEmGhwlDfxAyCrosZn53ntCwPmaAnkMURx0draqPQsmhsJ7RasL9tkT8fUsNhC
         wTPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UHhdjvHUdWoy6wFNR+Il1LpWn0TDoKJp5HitBk9jpD8=;
        b=uLTF6rfY9py7VS9EMB7c+4WVUMrXm/iE/OvT70bXBWom0L4yWPeYZ61fPZLmTYQPFi
         +s6US/lS3YGmZqr4dmYdbaBgT+RfkPlnyO6r9yRzgWA6Qz9tFMZMOdBRFySyzVMdEuzv
         IOM3lB7dx+9FbvGUW9S6qobrQsuxya+qrwb1grEGtQZniOR2l3K4FUXS0vvrA9rYq1K+
         /8rM2cu0P74VrfTCiMuR8wmONQFhOqNUHNGUd9ooTHR/hSPNwCH4+w6YdQCtT0Fp+XX+
         HXa4MjMsKFRAElZNyGrgomBmqbOUhEOBQowyYJ6xmJVMBWO7foT+wHfxZoKviJutLy75
         JNkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hlhfwXg4w0xkepZt3DZAdJMJhSd+rOJu4HVH3eWeAAD8jrhlS
	cM+kqLlmNWmhug8Mb6i/vMQ=
X-Google-Smtp-Source: ABdhPJw6+ziZ3pKRaEUTOI47n1PkOCRE+xsfWh2m1NytUJNgk+An/4gmAUrVy4bWbXhIpTl4cCEbrw==
X-Received: by 2002:a25:3741:: with SMTP id e62mr2048133yba.298.1610395352221;
        Mon, 11 Jan 2021 12:02:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:20e:: with SMTP id 14ls478960ybc.0.gmail; Mon, 11 Jan
 2021 12:02:31 -0800 (PST)
X-Received: by 2002:a25:d452:: with SMTP id m79mr2008503ybf.417.1610395351803;
        Mon, 11 Jan 2021 12:02:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610395351; cv=none;
        d=google.com; s=arc-20160816;
        b=MfDLx+QhoAIKJn87h08dY+sMaCaZ5uxp1Xpn4mUogkM9n1RB1MywXDlP69S1SnQFzn
         2202m0g6W2HcFsIH3qQXjvQKhd3EqmQtpVau1FGV8N9w4PcgRXbNn7aZ3vzAyl/ASC7J
         uFWOH7PclDnvXM/z94cR1eMRb3jCnANZ3qTVpJXqXOJBWOullK9svUcvLoo6p4eb310P
         giUMWhf5yCZ0Awt9tfKFI2yIDfKk3XYLOBwOFOk03RuKIF6YqhM52FRg2ptagKF5N0p6
         nW/jiFYSqX2rMXKZI9mxZQLxPKFGwaTyMylxvpTLElCPVA9ipFY6ofcogkqVVqGgdJR1
         g6Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dVMIrAc9o4iFgelM/6TuWSCxV3QIKL6nJqCLzvGQfdk=;
        b=o7lJHSkj7e1eu4aSKaq7pjv+Cia/JfgVslFe19CHlyZy0HhrZ33Zy34vr+QCtRHWFh
         ZbclkFeHLJ1jZy0bupOeziDF0mTwpVBCUHTSvy1zAwaDXf5+od4DkB+tk34sg0I/BR5r
         ahqV+JPuuTGT1PP0QwleBJioB1kLZGLN+zCVR8SCmllRNi/J3TPWysFgRfpoMrHnQWf0
         i/X8IhGnoRr9906r68V02McpLMeKhRF1OzJNxgG3lQFJ7fXcmNbWXZ4iryb39/LCmN1V
         PMncnKbJ8aN4Ao8q6b6WkhxzacatDTkM00KaAH8qn5h0u9roysPjX7WuMiJzr8VS9dKo
         PuxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CiFe5S8K;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s187si126688ybc.2.2021.01.11.12.02.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 12:02:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C36422B51;
	Mon, 11 Jan 2021 20:02:30 +0000 (UTC)
Date: Mon, 11 Jan 2021 21:03:40 +0100
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
Message-ID: <X/yvHIekJZV9WLvO@kroah.com>
References: <202101100936.GwZyiMDo-lkp@intel.com>
 <CAFqt6zaAd1Oe7FmD8HfumbssyuFO=DkVDzLuq=_Ficg10LRzrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFqt6zaAd1Oe7FmD8HfumbssyuFO=DkVDzLuq=_Ficg10LRzrg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=CiFe5S8K;       spf=pass
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

On Tue, Jan 12, 2021 at 12:48:22AM +0530, Souptick Joarder wrote:
> On Sun, Jan 10, 2021 at 6:33 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > head:   610bdbf6a174c9a91e34e276a9594114b44bef74
> > commit: b6f69f72c15d7f973f5709c5351f378f235b3654 [1441/2773] mm: don't rely on system state to detect hot-plug operations
> > config: x86_64-randconfig-a001-20210110 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b6f69f72c15d7f973f5709c5351f378f235b3654
> >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> >         git fetch --no-tags linux-stable-rc linux-4.19.y
> >         git checkout b6f69f72c15d7f973f5709c5351f378f235b3654
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/base/node.c:429:5: warning: no previous prototype for function 'register_mem_block_under_node_early' [-Wmissing-prototypes]
> >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> >        ^
> >    drivers/base/node.c:429:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> >    ^
> >    static
> >    1 warning generated.
> 
> It is fixed in the mainline. Will stable tree pick it from there ?

What is the git commit id for this?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X/yvHIekJZV9WLvO%40kroah.com.
