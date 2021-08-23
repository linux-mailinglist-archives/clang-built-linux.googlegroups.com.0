Return-Path: <clang-built-linux+bncBCXO5E6EQQFBBUWKRWEQMGQEFSTB23A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCA23F471D
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 11:07:32 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 30-20020a9d0da10000b02904cd320591a0sf9599042ots.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 02:07:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629709651; cv=pass;
        d=google.com; s=arc-20160816;
        b=iRN1hUdNV6yRK/GR5FUmhQhK1KDAV0dN5FXHh4rAyIVQCav41J8PPMZO5SvQtsnWR0
         991iY53UNcT4HrXY5z18dcKxv1kyueu821Q56Nr7306ijOiN5RNk37+5fmgsDoJ+SwSD
         MbsjeQdGE1eAbMs0A8UllbonjHoRjvIZ3XuOd4GR966xqm4CXVBznW9wzacgcXOW8uJF
         ZqVbIfGkaZso9iaXxFcEZj02p8cgE8Z64KsfuW93ITjcGjsAFDSb+6LpIeqaV5YcqMJG
         5+93Ri+lK7iRp/5jJBKsLqgySnS1Z1I1wZ8utjXm+Ld3O5pTn/ipQtuOw/6gSlcaDBC8
         Ar3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=EeHwlDPTsTdY57PozHyPurrqGQqjn1IUOba9nXRW/wU=;
        b=dMqtzIIFA2n8G6cSJlt9gQj4mejhxpgaeXx/vYHWo3H7mxUOBViyb3XD49/Rm8hw+1
         27/rK546/MnCTXD2d31SGKCyh7BwnBQQ68NFYkLgUx8xIFU30Ii2VGf8z0vMKpE2jCXl
         9xAfuozyPVDNTyyqo6RqkdCVoHHhh9Z0eHrkwB87Oi5NqNXOFI0vVk83bxj8eyqS9qZp
         PX3h5ac4P1vPtsSmWxGkeNJt2O31Uxc4pdKL0piSwvpDOmlrLvPpuMI1ZtwuJRP4TyF0
         v/Mv3AVfYUTQ9zcEU4S0nnSCX47jmsazC4gSZ73kZgSiBz5+uoMTfKqUSbO5AGhPWHyJ
         QY1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="iDMie/hh";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EeHwlDPTsTdY57PozHyPurrqGQqjn1IUOba9nXRW/wU=;
        b=IQYi6Zcmgvd9sXrpBbYmKsqsu/Vd1OFdEgZjMKMFrYc2zXgEK2cJlWHUO7YtPxs5qx
         2rfODbeM/5aYf9J3kDgO9m0fP57SBmNHyxwkqICgBjq40yR7LIiPdgmG31F4aOCmtfUI
         SjSc9jQXAgCr/DJrkj/yp257307ZiRTk5rIdaE3Fs4uNE1SihlHFs4k5Vz3Fu3GAhqO3
         k5UC9pijF9Mj8btCQ64focXWzs+5X5AwuPPXDS++3iMk/lcXutPRkZuKhL+60Ci7i7iy
         uG9HCT7qQmMdq+ribo/Ri0GlS4nGWTX4mksBnKs5fdMaeSRy0UMopK7Jdbav7r8Hcffa
         dSkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EeHwlDPTsTdY57PozHyPurrqGQqjn1IUOba9nXRW/wU=;
        b=EXqHAOOg/9qEJn8n/paL8nfLve91irdbDXvByaIXFcVA8Xgp0tpA5jhsrafuXuLiF/
         zWsN5MvaU0/rNZI+qxMkJj8BNylt8b/UoZ5eHLdTZx+oM2pR5r+98RgNg8SjyOFCgMZf
         +dTpnLp611dhzf+IeX9msTVl8StVBhZVXx/aeDAWu4oBewaEC7N+wV184TJBF706aiYt
         leUbPw47aIi7iM2wIrlffsPv5Y0R5AyU8J0ymTLOtxW+F9B9+UWpZZR8pHEKtrAxzF0r
         NsTx/0PZNmjGG44sCmGZlez/7GtsL956oBJeQIQDjCr+CjuCu06HxV4zbLv9CgncMXmH
         i+4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cgsJfMObLoozp44+gBCS1thA+N/gRW6FgCcFXKxvhjzPAu0Qr
	HV524NJM41uqm2TL94wYkYA=
X-Google-Smtp-Source: ABdhPJx/zh1RhoOAtTiRhep01jr92u+up+WcZ/GE8p9e8iRXwQM54cnTI/DaqrDH9nLJTn57iPy/Jg==
X-Received: by 2002:a05:6830:1d69:: with SMTP id l9mr26392671oti.154.1629709651078;
        Mon, 23 Aug 2021 02:07:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a8e:: with SMTP id l14ls4146739otq.10.gmail; Mon, 23
 Aug 2021 02:07:30 -0700 (PDT)
X-Received: by 2002:a9d:6142:: with SMTP id c2mr26788156otk.331.1629709650724;
        Mon, 23 Aug 2021 02:07:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629709650; cv=none;
        d=google.com; s=arc-20160816;
        b=YejV/ILDMDgU9EvE7Eg7/CBzlOJz7mMMCWq+qlMeh3jfwQsrsJL5vEqpyV1nMdsZBW
         iMGzBtJdbnBDsS+tkp68TsNdr3adAeJV380AkuU76ZpHHPtjU4UntmsPt/nhQyiWF9To
         kdxmfalv6LKaIFlWL443LyyaHGnI6M3rvRLbMFAuDQaZO3qf7wNgDLG3HBDD/gw1gz+k
         Vx9u3RLR0UW+AEdFNxpnFL3Jily9eAxl36P5nNUTwyynGJcM++sXAEXjbAp60BWbbdMC
         b0JB3RKPdw0rb3vDMiAQcoxTbAeEM+BDFLOcknFMt1eaQHVhESsZ/aEqg6OwKiy8k7KS
         j3UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dkyLsbo/5hA8IsBceD4/HcIF1BbcUVcCIUCSGY4uY+g=;
        b=Ywp11Cq/y4VWNCRO6Xc5CljyfTjLSLB02CcbPR344FhKQm6c0MEzi4zYB88PX6zT12
         3lb4RTHSW181SleuWItX9L74LSx2Nu/VFnuABD0EM8gI5fwTUSsyfaPgAgIulqHUexry
         EQMAlhWzesTB2VDVuVZbeQB+2eWFtcAYPVKKugVWUhkOuqirhIR1ASCDGaZ1m+MBdiq5
         /4TUPuRTs5bxelvbCBMYBAhEVCN9WYnnSs4Fedv2HHnlz+F2b+0YnFTLkjONZd82n+Q9
         OIQYG9z4X8oGyeC8Ax3jwRBGuZAW7e/RGEoxwcS24n7UjTDVfsY/eHtEeKznVq4ogg6r
         7Zww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="iDMie/hh";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si1264241ooj.0.2021.08.23.02.07.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 02:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 02C0061357
	for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 09:07:30 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id h13so25234189wrp.1
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 02:07:29 -0700 (PDT)
X-Received: by 2002:a05:6000:188d:: with SMTP id a13mr6085175wri.99.1629709648677;
 Mon, 23 Aug 2021 02:07:28 -0700 (PDT)
MIME-Version: 1.0
References: <202108210311.CBtcgoUL-lkp@intel.com> <20210823031546.fupzmdxjntacsq2e@vireshk-i7>
In-Reply-To: <20210823031546.fupzmdxjntacsq2e@vireshk-i7>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 23 Aug 2021 11:07:13 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1o6uvDo_ttPFOw_pRdtok3-9=dFMLToyUxSmTxs0YfOg@mail.gmail.com>
Message-ID: <CAK8P3a1o6uvDo_ttPFOw_pRdtok3-9=dFMLToyUxSmTxs0YfOg@mail.gmail.com>
Subject: Re: [linux-next:master 6632/9522] include/linux/pm_opp.h:458:58:
 warning: unused parameter 'dev'
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild-all@lists.01.org, Linux Memory Management List <linux-mm@kvack.org>, 
	Quentin Perret <qperret@google.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="iDMie/hh";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Aug 23, 2021 at 5:15 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 21-08-21, 03:30, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   86ed57fd8c93fdfaabb4f58e78455180fa7d8a84
> > commit: c17495b01b72b53bd290f442d39b060e015c7aea [6632/9522] cpufreq: Add callback to register with energy model
> > config: i386-randconfig-a016-20210820 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c17495b01b72b53bd290f442d39b060e015c7aea
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout c17495b01b72b53bd290f442d39b060e015c7aea
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    static inline void pm_vt_switch_unregister(struct device *dev)
> >                                                              ^
> >    In file included from drivers/gpu/drm/i915/gt/intel_llc.c:6:
> >    In file included from include/linux/cpufreq.h:12:
> >    In file included from include/linux/cpu.h:17:
> >    In file included from include/linux/node.h:18:
> >    include/linux/device.h:653:46: warning: unused parameter 'dev' [-Wunused-parameter]
> >    static inline int dev_to_node(struct device *dev)
>
> False positives ? These are mostly inline dummies, which simply return
> errors. Their parameters aren't supposed to be used.

It's a clang-14 W=1 build, probably something went wrong with the clang specific
warning flags there. I think we do want "-Wunused -Wno-unused-parameter". Not
sure what changed compared to older clang builds.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1o6uvDo_ttPFOw_pRdtok3-9%3DdFMLToyUxSmTxs0YfOg%40mail.gmail.com.
