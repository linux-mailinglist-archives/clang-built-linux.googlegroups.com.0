Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4MSVDVAKGQE6PKD4XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id BE99083D9F
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 01:12:50 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id 64sf8368649uam.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 16:12:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565133169; cv=pass;
        d=google.com; s=arc-20160816;
        b=TIj13voRSjX+tAoLHBSd9B0QUWAV2gqv2ym9iMokKA5ZoixRvuDlbMJYXXVb71lg80
         oSzWkpx7Fb8wefbcteindsSyK2+vqtri5flYChknaDmrDPQpzoYhmBYgP9akJ8NWLKNs
         Yu0WdXBgPBj2b691yajoaq2SNfuesEQyilMf/Q2ks0/QqevYzYpsGcLYkwnSHZLMi/o0
         m9lWtXTukn+0s5OtykMPj9H7ZWu8r07HM9OwhIikkGAluJvrqkagkBY37iA43Jj91v+2
         xC9sv892uci/3e52b9ebeHkQ5diC9POYmhLsHr2Zy1MguomxbBnCN4xdOrwK4u2CAk2P
         +Jhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k2Z0dhEfvcY0oBSqW2VsqxlZsPgIVRC3p4UurPwC+9o=;
        b=IgDXY7DBfznx08FXMO5NNDqnHUhMPVo3GZy60m5cWBz3xlOc2XfRWgxii/S6b3Nbjj
         iuj3PPzGaoDuW/dHw2qpM7bWIeCyhl5Ds+u3VRU1gzhIG63zsiqJY6vjcLRVY4gkIthO
         hx0s7wwhJkUXpbELeoHa0OsPmTHgWx7GDMpsOV4nt/L/KpcyuDH7pQkqKvo/ZdrwqGKP
         ZMSUvsjaxXTApZDrEw8mployGafgWt8nUZwaZJpEXOCv4Dukcf34jM2Q0wpqKh+lL3fB
         hQTjFGHaeJ030iLCIldngZWG1L0X+OzRg94pRdYCrFt4rtwYHDI4SWksQki3j55WyLdi
         8x9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WZfcCrNz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2Z0dhEfvcY0oBSqW2VsqxlZsPgIVRC3p4UurPwC+9o=;
        b=ro0oCjWi/yL6ZSDxOrpo71VkrjcSqRB0bae4iIqkkBuBcmRY08qbBTbbdtlSmLACKa
         b9927k0wmdZn0J17rNFnFV3hp8DbK73k/DRsve8qpldsGI6aSTkauOcEC6nxoriFOcVM
         RxkqsVr4DMZe37RT2dD22YHTFJYD9yQ/tM4NfdfNJgI20nuQFl+qGFSwf9Hxy3D/m4CY
         8+WVX14yJ5AVJh/J4M9wDZz6GDS3J/AiXmRsEG+yb56t0KKsWeEfyNdkfR/MNIQBGBCa
         RViukNAEceoKjn9biDtai7w74zhT6ILJagf8N2wFAEDr305OYEIsegRNhZsVi70pmjzL
         nPtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2Z0dhEfvcY0oBSqW2VsqxlZsPgIVRC3p4UurPwC+9o=;
        b=t5oaaymzJS6SQUEbXLlqMaidFUN0XQDdvOgrj+ZYDdxAulg1DE7g5JpWt5BZaQfikL
         WidTDV61t4JSCT7JnA/lILOaa70K/7e1SCJ+cxS0jlzpDnZQmrrCLcctVGrD2JfxEJKx
         1AahuHbjDt9l+Ris0CKzJhFVUrYWtUGADvN9YIu2tmYr6Jvzccg9bozT2H99mawwK/hC
         zkoJjtqiydh5q4M2LVFI+8htwjxlC7lMbz/lJ5zVdfML/k7NbVsaOICAnJBH0api1yW7
         DbJcSH/uDH0fpW8Hgaj7ONrUva87SxMuTxu3bo/JmGW4fXUn+FeW2gpsyX8A/3Ji4xbE
         q8tw==
X-Gm-Message-State: APjAAAURZyAD3HWF2TKsjbbyqduPEv9aIorsrty/sLL6sA/USkDC3+3W
	CFVpXijAKt0rg2OINKLDVOg=
X-Google-Smtp-Source: APXvYqyaZ0fC3TgtWG2zA1kDT2s4pvuJ8dSJCVSWEJdDQJIMOTlA+rlapemDPB1JG7BnVB1zleTxWA==
X-Received: by 2002:ab0:2556:: with SMTP id l22mr1724063uan.46.1565133169862;
        Tue, 06 Aug 2019 16:12:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3ca:: with SMTP id n10ls11225627vsq.4.gmail; Tue,
 06 Aug 2019 16:12:49 -0700 (PDT)
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr4102277vsl.155.1565133169666;
        Tue, 06 Aug 2019 16:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565133169; cv=none;
        d=google.com; s=arc-20160816;
        b=e2NS+Mh5gExKFCAKWaV54LzIyKqGT7tEPNFVPhL486nukkdDlKxhzyIx7eBwpAoDm0
         H5bwi8sy8Caop/3+wkwO8ppYnaIjc3pOHcCDnDjw2cTBEggvNpCzWdfBxyGsB5Sqivv9
         2wd7VhE7rG869eckMnEEWBuTAedqykUN4qjQdb4aaxjn+hnXEqOuBZBP783WHdRTIMM6
         E9AzPdH4sbnrmjhdnAJYIcn5jpP+sGc3VUF5ZG6ml3P3l8Yl1fa/UyV7gQFF4x+aBg0U
         x1nhU5HmIdUI2xqoIJKO6FaYXd1A/pT+TVxZsxzGSuoAL2vNShLQv+GGWmnlbl2B8RPQ
         7oXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jz/+VITWOESFPfu8fkcm5ZkQqYaBgRo3RUk/F+6q8Ro=;
        b=hqZI7hhsTUGlBJP4p6aMe54VwsCie/RWsFYpwlqJSeF2o1tKfzxZGvn1wz6nUDFAG5
         vOHaKnRaQDZ2ku4lbWPfWDqUGiHCvoe0XbrzKc0s5zF81GsaPBhIox0MgERIfW5zETgJ
         eKqjQxEONERt6wVEbRlIJ8M8++jmNKHX5We7oseilMkqvEQZ7ZNuxc3XRFn5ORW87/r5
         iipQvEvy9+CmdDVVz/MT6O/FzTUiB1UHARONquSujQ8jVqr/XF8HWeuzalFnLLzoDwrw
         gXYdxkOgC0IpO+pSPKkg9Dxvw6IH7+T2L52xqvYyAWfNFznhOXs7W2hrCfipqBtqVTK1
         L8BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WZfcCrNz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k125si4695491vkh.4.2019.08.06.16.12.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 16:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id t16so42298454pfe.11
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 16:12:49 -0700 (PDT)
X-Received: by 2002:a17:90a:ac11:: with SMTP id o17mr5561112pjq.134.1565133168241;
 Tue, 06 Aug 2019 16:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <201908021026.gxOYoxJj%lkp@intel.com>
In-Reply-To: <201908021026.gxOYoxJj%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 16:12:36 -0700
Message-ID: <CAKwvOdmQh3WJAYq9RKw3ihbL22RXJFcF84jMXh93ceTFdJwNNA@mail.gmail.com>
Subject: Re: [liu-song6-linux:uprobe-thp 7/15] uprobes.c:undefined reference
 to `__compiletime_assert_557'
To: kbuild test robot <lkp@intel.com>, songliubraving@fb.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WZfcCrNz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

+ Song

Hi Song, has this issue been previously reported or fixed?

On Thu, Aug 1, 2019 at 7:50 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Song Liu <songliubraving@fb.com>
>
> tree:   https://github.com/liu-song-6/linux.git uprobe-thp
> head:   1073f45d25b97c5242ea75b922b8c8fd15823905
> commit: 0148a4bd9bd3768dfa759b76ea60d9e6e642a789 [7/15] uprobe: collapse THP pmd after removing all uprobes
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 0148a4bd9bd3768dfa759b76ea60d9e6e642a789
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    ld: kernel/sysctl.o:(.data+0x1a8): undefined reference to `sysctl_dump_pt_pid'
>    ld: kernel/events/uprobes.o: in function `uprobe_write_opcode':
> >> uprobes.c:(.text+0x810): undefined reference to `__compiletime_assert_557'
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmQh3WJAYq9RKw3ihbL22RXJFcF84jMXh93ceTFdJwNNA%40mail.gmail.com.
