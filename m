Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBZPM677QKGQEJRX7HVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FC32F39EC
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 20:20:06 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id w26sf4665004iox.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:20:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610479206; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfueDBPkcYMgzDhy47cInD5qRFKiZh35zY00x97ToKmrCSvVD/KHtnuqHmTfwGiauU
         wICXqbzQKhS86BHN36BMs0ro6HzjCPOq1XIuXnHb44AoL9dIHMOBD+iLmCnkFFMY+mJG
         0JPzPEme2vY7Go+hKZS2EocQSdzsez2qsyhpe42M4YA01HbLYNeS/S09WFk5qDsNkEXn
         gx7q3K/ipjTfNNjVO+NYVGQWeXFxrfDad0nVf9GYG02HejePejBlkSIHNJXNv+BdTq1i
         3g8+GWemgyqjc/Hn3k1pYv07z7FX5YWb4yk/+EPClhlE62fX4iaXS+8s+XpccB64NXix
         OywA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=90iVrA83ESI0suW/niqFwt9DuLCQycnVbxxSAYQ6iis=;
        b=RnG94eBpX1ClnPw+OC8d5xVQ334KLGY+CXmgFVijC3FIbsW7iL7vA5KbkYyLtlTiN1
         Gvw/fRQSiO6uWZMQkLkraJktMW2JATOlfM2WmKJMDrnWB+mOW8I1Pvf/a5ICQSsxmhNJ
         FxqFJIdg7hHb98RPi/mh9cf7GFzsGrgNo/ax+PnsjpSC1y3z839M54QydSrHCe6L7ZXy
         2IX2uFmr2TWrk+psIZ3yIb7fWw1DMdOhdL12LGMZMsOXqSxN+n+bWQgDwJKoe0rxG7es
         P7bYz2USE2uz6vU/tMMUYOiN45CmG9szH8masvo+rXAVwhb9ptKnnI0QxDRVOYiAEw80
         vQkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PNo9Hvdj;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2e as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=90iVrA83ESI0suW/niqFwt9DuLCQycnVbxxSAYQ6iis=;
        b=SW8+r+7MvZhawD/KWWTaJZiSO3uFgXvz6NdIsumDE4DOkvVbSdqQYsz7ROroHm0GqJ
         stqUs3/mPyGfCtmPUEkGECREqovxPMJmOiiI9gAITHrLXR7au6JlAzR3DMY/3VFkwo8d
         lbP+QBw+nRzwsfcSTosD+w+iV7XdnHQ4Zc4i0/44jNRKl/MYbw2CcrJsu0YBdH0QWhhQ
         QMceHDjjc49YOsdM+HXIAzNJcBh4ZPZ0WpJUPru7TaYTLZdlDNg6FoZ2lb7+eA522AyO
         /9Nmb31ybojV9TRpCSMJolpQ5JpEN574T9weGc5+E9TSZlriyDKhLYdnHsUgYqz3zAdZ
         5ZfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=90iVrA83ESI0suW/niqFwt9DuLCQycnVbxxSAYQ6iis=;
        b=DqCaW+Upx8fbRqhzCgrAvVvhlKRldJ0Md2q4cA7Uv9/AZTn4OURF7+xRyRIy/w8WUN
         XDTfAukDSML/SFdgwU3KthrZmNZ3P9ZI812/gJnCI0HkQSgKMz7rsRamEWbfRJwaKOjU
         SmMTOQZd6XZhtbr/mabWRg/72JQjpNg61WsEoQutUqrF4ozc5AnEpL42q2nNdzTdTXOu
         Oi7pv+wNa7w6va/8GRgnWEkjceX06aoNkcHfhwiIrqqgzIOyC0pttzikWk3zJcj54smG
         fJBOKVRkZYTroTWjqBjQjWOfEkmqrGLqFpsO/yl/WLXp/c6SFHNK+oUkYt2BW7u0Yf9j
         JbNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=90iVrA83ESI0suW/niqFwt9DuLCQycnVbxxSAYQ6iis=;
        b=ofjwWGkHO0p/TBz3ERSwDhBaKxoyczvpTiScFyMPavSkxetfRbMmVIpXS47P71mhjF
         4p2mcOhzu+0/4OIU3QI7MtY3wKCVMZ8ugpEcKvfd+6jXRYWCnya4iIm465PFx30SCLax
         Y+013ymfA18cRUpuT8Lv4NMyK6iojG97mwJNkn24dCRc0eS8ASR2iEamZoJg0JAe31Av
         UhNVDG4ENSqEV9CfTazh+Zr6xri7Jxs3buu4LD09X2BgVH57nm0cTQ9kzt3ANROpxQ9Z
         Iokl8hJ+m29jfzVRaLUJLlB9SNA2fqtNe2NiY4/0pZG/veyWu8fmT8lF7OM39C7UJjhc
         z2nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DCbdj7bReBqPYBDlRuNZDNk+Tx08YO/GEkni4METEklWkMfLs
	UPXfCe+pw4H7gQGT6sFggZE=
X-Google-Smtp-Source: ABdhPJy1rEcDIRVsQMM+wVwgVZQmcrsmWumjwyUHw/hrCXyfau7PmTI+yujjGIeIcs4ZfE6GkZd+eg==
X-Received: by 2002:a6b:3f54:: with SMTP id m81mr364217ioa.113.1610479205916;
        Tue, 12 Jan 2021 11:20:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls1305304ili.3.gmail; Tue, 12 Jan
 2021 11:20:05 -0800 (PST)
X-Received: by 2002:a92:c692:: with SMTP id o18mr551367ilg.215.1610479205367;
        Tue, 12 Jan 2021 11:20:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610479205; cv=none;
        d=google.com; s=arc-20160816;
        b=RhQK4pW0EbPXrJCRKQ4kepmZ/5Rq6jVplHrc6A1acYgyZLtkcSqprUXDmh3ZPOQmRQ
         qiof1t/L5Z3y9n8zkEHaq9Uwu33ECbjDkeUhbhezC5oUCfJB9Le+VGPk6ePADyxSRSjL
         q183tb2fkkVQck0TtV41Lbt4e2gioPgi9u6XQLV5o+dEmNwsmtEi71nJapfae5CMlS5e
         Wwx8Tl20EtMXsc6xnKpF39xqvf1vhDFNkZ7j5siH5FLnKTfzN5xX5nkyOw4Et2JA1kIg
         BOXYmZbvFdTe1UiLhQaHh5v7wQs6zh2iHPG6u+LPY1LPz4vzwRzA8uoaaf0ClKg0EAkg
         d+nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i0n0baEhIZB6PLVxfawhkdvZ9JWiMrHgUJ5jvwqBFKI=;
        b=ImozP0XzKIPnkfIiNqYwt6WrGM+jd0OevvRTFGtwTqTNNbpTFiUz64jkJc1EFoMUyf
         jYdBMM5GV7CJFoY+Bi/b4n+vYku2xyOVdNdRfBr8yPaEGT7d8E46edtehZwKJt5y0dE4
         0xkA5KGhH8z3Y0l8eN5laoxHtbuPhxqvcQ2Bcd8PLGj+jTbhtFOBhbisOYXYL90uXMBa
         A0oga3a6ha93WvYbZoEjv53TP58jdpeyF/HWJQhKS0SsDMhs4yPhQ3PcwDLCH+WuGFTr
         pNVx7mnLlK3BCc4hnQKWW/3QW1QaKX67nLmv1g7NtNBRcdt4puhFIIFzoo9nf7ag/SP8
         AZCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PNo9Hvdj;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2e as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com. [2607:f8b0:4864:20::a2e])
        by gmr-mx.google.com with ESMTPS id e26si287310ios.2.2021.01.12.11.20.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 11:20:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2e as permitted sender) client-ip=2607:f8b0:4864:20::a2e;
Received: by mail-vk1-xa2e.google.com with SMTP id m145so877234vke.7
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 11:20:05 -0800 (PST)
X-Received: by 2002:ac5:c92e:: with SMTP id u14mr1166960vkl.15.1610479204636;
 Tue, 12 Jan 2021 11:20:04 -0800 (PST)
MIME-Version: 1.0
References: <202101100936.GwZyiMDo-lkp@intel.com> <CAFqt6zaAd1Oe7FmD8HfumbssyuFO=DkVDzLuq=_Ficg10LRzrg@mail.gmail.com>
 <X/yvHIekJZV9WLvO@kroah.com>
In-Reply-To: <X/yvHIekJZV9WLvO@kroah.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 13 Jan 2021 00:49:52 +0530
Message-ID: <CAFqt6zZwpaPxcuGwbyxg=TKyNXnW3PzOqodiCArOU=Mkds_RVA@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-4.19.y 1441/2773] drivers/base/node.c:429:5:
 warning: no previous prototype for function 'register_mem_block_under_node_early'
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel test robot <lkp@intel.com>, Laurent Dufour <ldufour@linux.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, David Hildenbrand <david@redhat.com>, 
	Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PNo9Hvdj;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2e
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 12, 2021 at 1:32 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jan 12, 2021 at 12:48:22AM +0530, Souptick Joarder wrote:
> > On Sun, Jan 10, 2021 at 6:33 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > > head:   610bdbf6a174c9a91e34e276a9594114b44bef74
> > > commit: b6f69f72c15d7f973f5709c5351f378f235b3654 [1441/2773] mm: don't rely on system state to detect hot-plug operations
> > > config: x86_64-randconfig-a001-20210110 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b6f69f72c15d7f973f5709c5351f378f235b3654
> > >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> > >         git fetch --no-tags linux-stable-rc linux-4.19.y
> > >         git checkout b6f69f72c15d7f973f5709c5351f378f235b3654
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/base/node.c:429:5: warning: no previous prototype for function 'register_mem_block_under_node_early' [-Wmissing-prototypes]
> > >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> > >        ^
> > >    drivers/base/node.c:429:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > >    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
> > >    ^
> > >    static
> > >    1 warning generated.
> >
> > It is fixed in the mainline. Will stable tree pick it from there ?
>
> What is the git commit id for this?

commit  f85086f95fa3 (mm: don't rely on system state to detect
hot-plug operations)
which marks this function as static.

>
> thanks,
>
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zZwpaPxcuGwbyxg%3DTKyNXnW3PzOqodiCArOU%3DMkds_RVA%40mail.gmail.com.
