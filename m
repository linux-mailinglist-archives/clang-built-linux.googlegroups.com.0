Return-Path: <clang-built-linux+bncBAABBG7Y773AKGQEKOYILRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 323EC1F48B1
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 23:16:12 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id h65sf145617ioa.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 14:16:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591737371; cv=pass;
        d=google.com; s=arc-20160816;
        b=xbVd9HDNSI6tmWGiP9Al3QWPuI0WPGPSLinH+FYx9qmhLJpwIlWqC7bFLLvOyb4764
         pRuyhseabBHurlG66ZLyoT1GN3wuUJ5FyHjrMheX53irxvknz3LH3faUEyddjiR+/v08
         v7D6DqgHvjUECPOLUfYPUOgHmvKPkR7KNAqMGBlfJ5OUMQLK1+exPOUTmns1djwfa130
         vz9/60Bt7RQZyP7oh9po22hdqO0iGgAqpdONpX2JFYHAScvT2sGHMcPfSw+5A5nJNxbz
         j84A7zeacms11UeU5Ka8d2GLGnSA5sHe3E4QsCZrlHNoQLHZ/J0WzaqK9yQvQH6VPJY9
         T37A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=mbUWt+3s2sB6fMm8ZGXOJC+dhwFUYNS1yCwbGaJRLs4=;
        b=ASxxBZd20sg8h1PRMoigXwiN3SZBFcLMJahQ+ErF+tHFr7E1R0S0O6bvO2Z+Zy4rY/
         59+0iUcG2ERWdxq6MBojR1uDhv7zJ9g72XFCJW3l+Qv8l4+NrULkVBJ/pAfC+VMy9yWK
         RHNN7+3rWSAQiIH10vKuSjjZVcV13FHVpx6s2narNutugG2MOY3q7+ddu6V0PQ0PW5Yv
         0FEh+D/y2+K0WfjuKCk/Fxf/Vtksh93e5CowgBv05zVdSaN5ft6uC2Iuwa+Dn0g/Co77
         EIiEwMMMy39ovb7W080Oac3VnpfqBsXVQc4K809qRps7M7556iraLow9xPbslC4E5izG
         1nkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FHDziFwD;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mbUWt+3s2sB6fMm8ZGXOJC+dhwFUYNS1yCwbGaJRLs4=;
        b=W7O+yyB0wd7kPhn5SagTxmPu65qHUYQmIJLiadxeeNHE7Boy5Vla7GDuEsiWZaibgs
         LKnTkLkck/ONW9IFApKpzXEqE84TaThO4kTjHWGthDxCFy1BFQxBHRx/aK/bTVHpBK6p
         pl5WvD5sBd8Bg2eJ8Bg2VpsPaQuXCGaZtEfoQ7l4MTyHwDDE8NZbGUM219uBoOK0XNIM
         1XIMnn1U3WDoG+ujIulEV3/ao9r0Cbbamra1uflo+cQ5rOkzi8Cp/Nwg6tRdvZoitb6z
         RA0WRldJELDwWkbMKcPKEY4WuNcjNm8eZ9xQp0cvE4VYjBiduTYOrbS7g+eLtkVAoZdY
         RffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mbUWt+3s2sB6fMm8ZGXOJC+dhwFUYNS1yCwbGaJRLs4=;
        b=KBeUWjJbhUwMT7Es+LVJZcl/DLqmBtfy5Wpe5v3ulEqiCCp94paPomsbq2ngaqXxyu
         tJBgCO6SFsXdKWxWS19N4JZXyME2yZ17fF1Ry70+RVXq/6GA0zJKxBKx6NKqPXHRo7Dt
         Emc5gWGI3SosBPurWODWqy61SMzMUTiR0/W6SkUl3gTnefwArIGKeD5YVFf2xVXJVtg1
         RGuovh4DrvEJ9scV+8BrCSoJMdFFipi7S9TzIBmrHmYIAv6Lzh69xcGnwnWQG8H3YshD
         hNd12OxGtzC1Owbb3+6AnstfF2VZXH6f8jhStWM2p8dKDbd6BPPA5R5eo0Pwfevo9Zzi
         mt3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HyzJ7whUEVJO2mU99xalCC5XNFTqWjNyiBiKNxPfYcVYLqIMM
	rdQwx5mBC1yKZpdq+AGUlhc=
X-Google-Smtp-Source: ABdhPJxrW8JnmBdP5U8lYCq02bWSUmic5ly5xna9kJUYmFzm+UYr7l7juPCicpMDwNWJ6gCbnt/cYg==
X-Received: by 2002:a05:6638:406:: with SMTP id q6mr95811jap.125.1591737371210;
        Tue, 09 Jun 2020 14:16:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c150:: with SMTP id b16ls4735360ilh.7.gmail; Tue, 09 Jun
 2020 14:16:11 -0700 (PDT)
X-Received: by 2002:a92:c9ce:: with SMTP id k14mr28317064ilq.250.1591737370920;
        Tue, 09 Jun 2020 14:16:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591737370; cv=none;
        d=google.com; s=arc-20160816;
        b=AjZhQDbqokjuZ70oiPnUi7f0EQDNr4wQWFiWozrJyvqcbqRCrRgwCJcRJUBGzpA/UQ
         kwsiOppyEVf34UdKaQDPkyhCrJnDmFSC9qpVOvFSR8WPBY3oTg8DeEX4IMLXJF/CHNX0
         R9N7jrn0BwucO5bQ8r3UgBmGzbi6MFzQPTFRSIBRLVJrRNElt6sof77Z78n3b/yrG7zL
         8hAr+tMs5guGiADhXS0R+tCMohDwTtc+On3eVnU7+FIFovtMh5XFzfCTioz5usZb6V1l
         rcJnP0d21TxrPUlOF9NTeLD93BJJ16x2W/k10A4tuaOL3FdNpABYjqb+edqpwRS14U4Y
         5f5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=VhSNB9LS1Tr0Xw0mv8mrAg+bbC+C8lIfm7sLKP+nIbY=;
        b=N/BNn+PN0Dn0oT4YNBsOS77Hp2CBSkJcg29gGPsWuiAivDR5acH5trfSKW/dBq5uqG
         Y0iyhNFgiyrbzcjvCfIxO9gEwJzlBvjajORW165/pnLc8OdxyjCV7C3xNpYmvZw7BDN7
         cwKZ71tL/9NJKKBlNAXSV1MhX5aMSfyaia972ayCGUBHR0aZAO1mzOyiG5oISXzA62iE
         nS0ti5burS6YF1XozcoUbUCkRnOIeTNaB/JEfLgHsNC9YWxMJcTKupEv5RQK970kVZdW
         CgYTDw1BkSxGb+qrbbpp8rge8pUUPXftM+rYUU/njH4+FydTo+vd7OtW9zUc7LTzwwL8
         Hl2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FHDziFwD;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y22si1038628ioc.0.2020.06.09.14.16.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Jun 2020 14:16:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 14EB0206D5;
	Tue,  9 Jun 2020 21:16:10 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <202005310615.TVwTAUgp%lkp@intel.com>
References: <202005310615.TVwTAUgp%lkp@intel.com>
Subject: Re: [clk:clk-mediatek 5/6] drivers/clk/mediatek/clk-mt6765.c:537:35: warning: unused variable 'ifr0_cg_regs'
From: Stephen Boyd <sboyd@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Mars Cheng <mars.cheng@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>
To: "Owen, Chen," <owen.chen@mediatek.com>, kbuild test robot <lkp@intel.com>
Date: Tue, 09 Jun 2020 14:16:09 -0700
Message-ID: <159173736939.242598.14069411610834841250@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FHDziFwD;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting kbuild test robot (2020-05-30 15:25:16)
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-mediatek
> head:   571cfadcc628dd5591444f7289e27445ea732f4c
> commit: 1aca9939bf72893887cb7e3455e44c864bada2f9 [5/6] clk: mediatek: Add MT6765 clock support
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 1aca9939bf72893887cb7e3455e44c864bada2f9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/clk/mediatek/clk-mt6765.c:537:35: warning: unused variable 'ifr0_cg_regs' [-Wunused-const-variable]
> static const struct mtk_gate_regs ifr0_cg_regs = {
> ^
> >> drivers/clk/mediatek/clk-mt6765.c:543:35: warning: unused variable 'ifr1_cg_regs' [-Wunused-const-variable]
> static const struct mtk_gate_regs ifr1_cg_regs = {
> ^
> 2 warnings generated.
> 
> vim +/ifr0_cg_regs +537 drivers/clk/mediatek/clk-mt6765.c
> 
>    536  
>  > 537  static const struct mtk_gate_regs ifr0_cg_regs = {
>    538          .set_ofs = 0x200,
>    539          .clr_ofs = 0x200,
>    540          .sta_ofs = 0x200,
>    541  };
>    542  
>  > 543  static const struct mtk_gate_regs ifr1_cg_regs = {
>    544          .set_ofs = 0x74,
>    545          .clr_ofs = 0x74,
>    546          .sta_ofs = 0x74,
>    547  };
>    548  
> 

Thanks. I'm just going to pile a patch on top of clk-next to remove
these two structures.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159173736939.242598.14069411610834841250%40swboyd.mtv.corp.google.com.
