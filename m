Return-Path: <clang-built-linux+bncBDV37XP3XYDRBXE52WDQMGQESN2NT5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B82D3CD18B
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 12:07:25 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id l22-20020a0568302696b02904cf221e47d0sf5377137otu.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 03:07:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626689244; cv=pass;
        d=google.com; s=arc-20160816;
        b=jExKdVzvzhtYWzZxedYpsFC2zOnlbHiChKuc37FEtpgINqMX/v9geahnGW9w1x1my+
         aoAmPh63+WLQWZhcVkMReMm7A8B4boRrfMCi7QkHJmltV/ncWVmG9A54d9Tp+Idt9PLc
         VoDme9UvezqBpgbaEqFWK5Z2scQ4mr/YcthP1cqMgtOsOowNAcIETAdhrh/q00chGZgr
         WebBhF29o3Sha4qicTgf8rP+Vgcw2sLY1H43TKQVhVoLVz021dAXqffUuiOCmY9v5MK6
         gyEgFiOk0Yy+lSr4teE4t2sadYvzOS0tiQ7G9x7chsC7l8lGzTpTwtTWiNIOzAey3CSc
         cWvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Pfvq2VjvW9yBKkY08U6eeFmCESw360ZFsG60GzTzbpE=;
        b=MZTZ6n8HLiLtOSvKDy5fFOyE+0nmQzG+31F+d6Pwpg3bCABdm6DyzpONujGUdy1Vw6
         MXL80u/PaQQKOZ4W/PG0eWxx0FFQEH2D8DIpgFG3e83PDnpLKqYOA39suioWb8cwcO8p
         yQzF9r95YLZZmuUMSNkC/YbmBtx4e09SbtcdHvqnCTF/dLS7FWXJ4sq3mkSZQQ7dT2XS
         BuU5n5h+PnFRPx1tpgPV758TMCJVutsibZ1vmh+rdHl4epba1PEaV6hvyj3T3XKsj1s6
         pNLB1qkQc12rFstSX1fbh7FrHjt07ZzjNKXfbQUb0Y/E/hpLel1NH6TYI8X6dR8LaHiC
         M7ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pfvq2VjvW9yBKkY08U6eeFmCESw360ZFsG60GzTzbpE=;
        b=h1N3svBo/fBQmdMCtTBF6FITrdiObFGqPapj0oxPH3hDHCUHCQYvNhr5BAaTogDOfr
         V+VZjD1E4klLjpFSn5qRqLJDWWNsvbu56++qn09gg7Bk9XD28KHX67Ls9SSarDKpAY/R
         9PWWTsDrXT1meKGq/hf1VJoZina7eh6vn5u8u+u49Ax89YAMvS0DuKB7fDMfJQag6ET6
         s/dd0uL0RLxGj2yfx6Hl/ess+ux7T2VtuOpc8IJ34GZ+FG3mJkiZv2ZKcdtUxB1XERQZ
         gZdxawo2pWsX1Ej8aksTAzU6kFq2R/TUgPVyIlkXcazrv0BBgwybaI4Lyg3pY8JvhTHB
         59YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pfvq2VjvW9yBKkY08U6eeFmCESw360ZFsG60GzTzbpE=;
        b=EV0u5CP9V0+ZEhAWU3qyESlPqeDPNENSDYE30tNBGR4+dyKZAd9VPPi5ObutKYIuV5
         BD0v1iITcaqDBUZ9ETMyavzYULsltoXzix1C5muhhPxbgDD39Y0/rJPElzJ/oB14F7Rh
         Ca8geImJXjsmREH3NsFDq1HaQ930YwYzP2PiP56YpnCtRPe/yaKIrArfQI5NCVfDF8U/
         SBzGqu5opUq8OfNyc2BYjgji6LJEFSJ8R6379AqEL7y9vor4daZzPEuKViPlNjUx3Xpr
         f6gWHn2R23CZ0Wwv4qcuuXkbFtKngDmBlNgYJ7pac51Su7t1xIDL3b0WrtTCTgegOthX
         YBvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Aoh1l7SlKPx5+4DXlv9l9kXYhX0VLmP4zJOKn4u6A35+cS7kh
	nQRU5zd2m1tiHVAxypS7H0M=
X-Google-Smtp-Source: ABdhPJz2wfEu2CJh49IFICmEDRGH8CA7E8W0h/pSAW2w2KPccq+L0K0Xjbr1ymLo4yoW95x1s2U48g==
X-Received: by 2002:a9d:541:: with SMTP id 59mr18550612otw.169.1626689244527;
        Mon, 19 Jul 2021 03:07:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb5:: with SMTP id 50ls7082804oth.6.gmail; Mon, 19 Jul
 2021 03:07:24 -0700 (PDT)
X-Received: by 2002:a9d:5c7:: with SMTP id 65mr18443149otd.360.1626689244165;
        Mon, 19 Jul 2021 03:07:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626689244; cv=none;
        d=google.com; s=arc-20160816;
        b=cRywQ8OtwCf4xScGJieqnweBS9Jl2mZ0JBKkHMUcTeI9K8rjXK9Ktv2PpjLKw/gJLG
         cTpr0v3qjUOrSY27Mz6+V5kRQ4BC9mwU5ozQcQu77bnkOfheGjhWxoesyRn2TY8xgtIt
         WgO4NWsYrVR7w0sbsA7AkiPBUJ3O2H9Oy0Vjwbig7XEuNb0xuoz/ytyQXSn4Z8dvxJ6g
         oU7a3NYGoxIo8STZlHepHAdwyvmS3w2TP2wpbPg7OI9+dbIAWje9DM8Ugebsn729OAoU
         Qv5EaBO0VMGEErUKstWdRFSjLQPizSIwY8vqDxsONkktTNmmodTM5fRxGiYqbGkfJHvv
         Oe6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=oBE5CwG56vsjbWET0fK1E6LX+6RWaOtYEjrDRiVN0v4=;
        b=OIOxNfAaisS09x7vTceLdXAS4IessBejzkr5PJNcHl3MK4K192voH6tQI0NXDtJma4
         JFGyx+rTIedJ2pqV0wrkr1+TWjPDtp+fOp+7ZkrCfFS8rV6dWD7/uUDx1OJsE8/izjBx
         TjdfzNvXvbIVwJEneg+POisFL2yjgbhurs37sovoxd8XkPtovfzC7FwkhN1PzkTAH4s0
         o+FnJ5Y0rUpCvcti5U6paSJtXkxg8j5d+SmPjP75Z1cDgjHw1mZ1vgIVLhtrZXLK3yuc
         svfqgi+bwa3ocrqalowW1hpiihKrYKyokPtW6jqwue1G3rFtUg7tGonT+vq2uSiERW2T
         OJAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m17si1383233otk.1.2021.07.19.03.07.24
        for <clang-built-linux@googlegroups.com>;
        Mon, 19 Jul 2021 03:07:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB9F86D;
	Mon, 19 Jul 2021 03:07:23 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.249])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E9923F73D;
	Mon, 19 Jul 2021 03:07:22 -0700 (PDT)
Date: Mon, 19 Jul 2021 11:07:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [peterz-queue:locking/core 21/21]
 drivers/net/usb/r8152.c:7474:13: warning: stack frame size (9568) exceeds
 limit (8192) in function 'r8156b_hw_phy_cfg'
Message-ID: <20210719100719.GB12806@C02TD0UTHF1T.local>
References: <202107191712.2fNjndRF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107191712.2fNjndRF-lkp@intel.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Mon, Jul 19, 2021 at 05:24:25PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/core
> head:   cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57
> commit: cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57 [21/21] locking/atomic: add generic arch_*() bitops
> config: riscv-randconfig-r002-20210719 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57
>         git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
>         git fetch --no-tags peterz-queue locking/core
>         git checkout cf3ee3c8c29dc349b2cf52e5e72e8cb805ff5e57
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/usb/r8152.c:7474:13: warning: stack frame size (9568) exceeds limit (8192) in function 'r8156b_hw_phy_cfg' [-Wframe-larger-than]
>    static void r8156b_hw_phy_cfg(struct r8152 *tp)
>                ^
>    1 warning generated.
> 
> 
> vim +/r8156b_hw_phy_cfg +7474 drivers/net/usb/r8152.c

> 195aae321c829d Hayes Wang 2021-04-16  7866  	rtl_green_en(tp, test_bit(GREEN_ETHERNET, &tp->flags));

From local testing, it looks like this test_bit() really confuses the
compiler and forces it to spill much more than it should otherwise need
to.

The good news is that Marco's suggestion of avoiding
instrumened-non-atomic.h (when using plain accesses) sidesteps this, so
I reckon we should go with that.

Should I send that as a fixup, or should I send a new version of the
whole series?

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719100719.GB12806%40C02TD0UTHF1T.local.
