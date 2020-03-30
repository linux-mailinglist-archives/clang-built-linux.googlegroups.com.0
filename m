Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXWFRH2AKGQE54X3FAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D8E19865B
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 23:21:35 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id g7sf4640674vsg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 14:21:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585603294; cv=pass;
        d=google.com; s=arc-20160816;
        b=uSBQeVcl6OPCCN6tD2MQNkhYzMibB6deUJz4f5r5QbatwkESY3QUelGs18Ksny5BCz
         D6TWfO/SzBbfR/l4ZYHm+fcG1+W0gyechmIJ3CpqBb+xOl8s/fMet48snnHucKQqAFyh
         MXpNVpqAr09DtCVysTPua17l9HJzG1x2Qt2k/i/A3TcXavDmmQVOnbVHgfruLULsg4mM
         SKbqok/Cy5B2PQQEanMYyazoaWaP/eYuGLEWl0GMc/+tEXdO5Jw1GkDn6h2+otWBTCLE
         FwvgFhUWrSRUBfN0BEIYACeAVUVPKrlefcd1oOSWisTxrXUz5kINydOtw5ffQQIKRzay
         mZ7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GVqvCnh91OQzeYXjIA6znGYsfeYjKSUYcqFWtTtMkr0=;
        b=nPFVtrIUehIZdJ/d+eWvvBDDWWHgmoiDBEyF7AFf5Qle6MI1vU8ODIcPC3BjuK5L/i
         Yokd84+IXn3NM6cmz3GlG+Mr6PruP64oHZv0o6m1Mzp3Oys/d+7cmbY3azsfjAQP0eiR
         UHkCbrlgW/+IeqSZaBt3i8XrcAs2/7SNtJWr+r27PR+jryDCLLO+8P5EdUmVg0i6XCRF
         +CukiAE0tYEuyZSllMXwpDGiYjRRUQDYe4eRhJ3oEUvW3CdgmWRpMVXrxBWBtMkj71NP
         kPCGIi1TZ1bLOIh41lZ9dR1KoQf4wV58VbtB8CLHi2CJ6LIODF/sg8d618S3HmkqQ52D
         IwdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hzcHEx2f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVqvCnh91OQzeYXjIA6znGYsfeYjKSUYcqFWtTtMkr0=;
        b=tkS5Q1WvKRZ2Gb4TwD7xCVqT6iVsu3btBVZiG9ftH3UlLY26jl8dXklzdkfxoZRymF
         V1Q+OuZv5f+UtR1Lau/FEOWwC2DvDkkjrGaKp8N50JiPpk7XRkwulLs/SVIUxq0MVA1a
         ZYiQEOPPkN6SdmvJIIXg01DQ72LajGWNfk31PNRfb85sTGMM6FXwiFwkPMyXDqT/e7FG
         xl6o0l5op2mpJQFtYgDiBAqTWwT0A93/i8AUtcJiTD3RissglSoiB4g0D4BZoaGx8l9e
         6CjbhpmpzG2UHWsyWAR2lX827XMEhmJDkm7ZC0mtsgmf60HrNbmxgVHJCzz/omyusne/
         nXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVqvCnh91OQzeYXjIA6znGYsfeYjKSUYcqFWtTtMkr0=;
        b=Pxk2RLKztan3h75E7MCIRGkE4u1j8HSMHaG8OActCc8B1ilijLjBY5HbmpzW+EtnI9
         nijVXnjet/inCreSmaeXuTqh++FVHELjBkKyZLSCFmLdEcElhc7kqapBE+TyTLcaCbnT
         kjYIEUnZrQ3ZdR+FNdOJyFWZvgvMM4ZHRmQE8dXRi1Nha/J1UcbgQ3uuTjIfQcWxQjW5
         eaotVbhPkivlLMgfBpE91ssZETt4teErLxcX/dZ+amprhlzTgblhXSDRWBVRDnAM2SaZ
         0+HVzDbwEL87CbROPxg2/QbfCwV/gghi0FGYP/H+7KrbwNyHLBsx6W2FRrd/rZP+cV3+
         lqkQ==
X-Gm-Message-State: AGi0PuZTwSSkYsXPoXp5a+x8oj7WftY420E7FIQEhflYy2YxJ8Q8RN1u
	1/rWZ8Os8nbWbY4QYmJQqAI=
X-Google-Smtp-Source: APiQypK70ye08Y7XH95KjB083sRvnCasnuX2RD2sjPbQwEw+L1MWy2pAtnSNMm35/AXZpUMmT4uLMw==
X-Received: by 2002:a1f:2947:: with SMTP id p68mr9484596vkp.43.1585603294259;
        Mon, 30 Mar 2020 14:21:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c496:: with SMTP id d22ls2727670vsk.8.gmail; Mon, 30 Mar
 2020 14:21:33 -0700 (PDT)
X-Received: by 2002:a67:328a:: with SMTP id y132mr10225365vsy.4.1585603293783;
        Mon, 30 Mar 2020 14:21:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585603293; cv=none;
        d=google.com; s=arc-20160816;
        b=xGaFsWswH1I3chZVKFFSyYZk852X7gF/6QaSEsEgbwU4jb/nWx4AyeZIVooCHdWcZe
         lvxQsS5Qd0y9st4WZSmHQVB0dIiO+IIdJbhVsocjf87ZCE/J8tyG9F60OEb4yhn/ey9A
         iMiPM13KEgk7NT2T8+lzL1I3CrtPfylzKVR+DDABdraMFcVU9Q0Puz1AbN5mtutQ6rL3
         lq5VaIlRYuP8Lw3+UdH5BYWa8Z3kUF/OrqtlFzUCo9KhN40g6++RDC2gJcDKWeG5fWSg
         LYQHCKUJYWE1HVq0oqrhSe997q63Pzps9T0sWF2ZGSym7XTbDj6LgXQ3i8LA8K0637nO
         m+Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c58CgR5RaTTT0ridfaLClS+3w3fI3dWJ48HBtxaq8qI=;
        b=pjWALDnVMLbFfaqzEQi8VHCNsc14G1aCt1N5LVoSI+PFXIoV2ya5BGsUupUmeq+r01
         3bebRhaN8uTMKLfS56YvNXLLgoLTEazuuSB6qu0JrDPFzwy1/TwQvSud8WIe2IFXZqV6
         ueReswYLPnO32uUACG9DI+B3zZSj8HKoRe5XvKLmU88aVAuNEA8u6wwdrUSJgieIHuSb
         8LhZwtUkeUUOebgI3zhGbtCtcEXmp6ocSPqCJknqe2Hzb2R5oYnQ2B7e56MKpoRL+fuQ
         o0BrqY4eIIbGZR76QMMZ259QLjiQCp7RXJaJ8GJErTL7BpsaNTWjFkOATFNmiot7Krqt
         1pjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hzcHEx2f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id 205si877838vkw.2.2020.03.30.14.21.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 14:21:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id m15so153416pje.3
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 14:21:33 -0700 (PDT)
X-Received: by 2002:a17:902:76c6:: with SMTP id j6mr5049067plt.223.1585603293019;
 Mon, 30 Mar 2020 14:21:33 -0700 (PDT)
MIME-Version: 1.0
References: <202003310500.8jcJ6fgm%lkp@intel.com>
In-Reply-To: <202003310500.8jcJ6fgm%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 14:21:20 -0700
Message-ID: <CAKwvOdnwaoPSB_pavQimvNEuFdt9wF4xSHBbLtjzQUC=urJAxw@mail.gmail.com>
Subject: Re: ld.lld: error: drivers/staging/rtl8192e/rtllib_wx.o:(.rodata.str1.1):
 offset is outside the section
To: Rob Herring <robh@kernel.org>, David Gibson <david@gibson.dropbear.id.au>, 
	Dirk Mueller <dmueller@suse.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hzcHEx2f;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

Apologies, we're in the process of getting LLD turned on.  These
warnings look new to me, so I'll file an issue to follow up on.  It's
unrelated to the yyloc change.
https://github.com/ClangBuiltLinux/linux/issues/959

On Mon, Mar 30, 2020 at 2:17 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Dirk,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   7111951b8d4973bda27ff663f2cf18b663d15b48
> commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
> date:   3 days ago
> config: arm-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project b4695351cb4ce1c4450a029a0c226dc8bb5f5d55)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout e33a814e772cdc36436c8c188d8c42d019fda639
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ld.lld: error: drivers/staging/rtl8192e/rtllib_wx.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8192e/rtllib_softmac.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8192e/rtllib_tx.o:(.rodata.str1.1): offset is outside the section
> --
> >> ld.lld: error: drivers/staging/rtl8192u/ieee80211/dot11d.o:(.rodata.str1.1): offset is outside the section
> --
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_debug.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_sta_mgt.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_security.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_wlan_util.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_ieee80211.o:(.rodata.cst4): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_odm.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_recv.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/hal/hal_com.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_ioctl_set.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8723bs/core/rtw_xmit.o:(.rodata.str1.1): offset is outside the section
>    ld.lld
> --
> >> ld.lld: error: drivers/misc/mic/vop/vop_vringh.o:(.rodata.str1.1): offset is outside the section
> --
>    ld.lld: error: drivers/staging/rtl8188eu/core/rtw_efuse.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/rtl8188eu/os_dep/xmit_linux.o:(.rodata.str1.1): offset is outside the section
> --
> >> ld.lld: error: drivers/staging/kpc2000/kpc_dma/fileops.o:(.rodata.str1.1): offset is outside the section
>    ld.lld: error: drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.o:(.rodata.str1.1): offset is outside the section
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003310500.8jcJ6fgm%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnwaoPSB_pavQimvNEuFdt9wF4xSHBbLtjzQUC%3DurJAxw%40mail.gmail.com.
