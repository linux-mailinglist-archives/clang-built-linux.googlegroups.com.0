Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7OF6DVAKGQEPBB5Q5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7EF966A6
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 18:42:39 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id w5sf4943692pgs.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:42:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566319357; cv=pass;
        d=google.com; s=arc-20160816;
        b=hUGmpThcdopseyyaORH0ThaqeCVP6KOmT3JodAQiosiQKcBvjipdr87rCWA6JUi5PF
         FzUzkDZw4GJa+3VimDf71lg5K+B/VyjlPzNky7f9krsCnHvzfo+YcKXw6sCtpxu656F5
         cEVZQj3fvzLsSSCgDURLqncnri9zLu6OuAizjklcFVfy4yvR9C6qGjbtHMcj4ODXIZO/
         o5irP9SOuk9u934bTTtXHT9j3UMxfxOEItm6zddU1ULWAr6GaV4w4bNCYolbLmWOJFfK
         kbLE4oRi10TU6QF4k8lSdE4KLfSlKrF030IFF8Ubd2oUMFhh6wRp/9ufNBg9tXWencUX
         0wig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kOGBop/uCLxoPEdJh2m5V62z82zKk6BZbKZoXlStEUQ=;
        b=QmZazqMIgoddXFCKPbZoIrWvl1L668Cpw0X+GfUqJhNoY8tU22D2BVOiOkA8jaqFZh
         zQgrODXMsryA/3OvDLijzjY+dwtqrezeu0SeP/kOE18FHFFcMHMb8h4Vh3FZ8qg9XYTC
         FGKbZioKALYzsCv2QQvgO23sr9jAGfUHZhHBX2tFYht9H99RqKbsGNlX5NhSvpGSei5T
         7BfZFIQvI5Yjvg+UnBvbpgvgEbQ5KigjykIf+NbHE0zB6PLHlGCZLswgCkqQaAvaOKZw
         Pusx/NBvWSkC+4/2M/nr6SVAdnM8svNeUUf4Z0No09rUzqG5Yg09FYJD5AbLFm1PkN93
         C3yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KPzL60qW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kOGBop/uCLxoPEdJh2m5V62z82zKk6BZbKZoXlStEUQ=;
        b=G6yd9sKIj9NZnmBiqLujM/ngQqWl65pFU/0qhE3qiyNsIQcq7U6yuF6eoge9YBUzBO
         A9ruaj2iorkBqMwZnmVkDKdu2qHuJZ6njvmk3innqKvu1sXQPiKiEFZScDd2M3IwRatR
         oOOq0SjBPycDgO5NDkN+cYz/2WEbO7nfzn9TK+EQDFWeH90ZPzCc5+RmOTf+ROQJVqpk
         bYFos9ZtgUREYHBpzukN1a8OGgbMRi58mBsHf6BjZg0H+vxuEgOAlSOizs7jxCjsTnP2
         8VtrPptKBzkaCYsMvbkgY1pjo8TtIOPEH1iI216sIiKXgIsvceqjj41XluwImIQE7kWa
         7F1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kOGBop/uCLxoPEdJh2m5V62z82zKk6BZbKZoXlStEUQ=;
        b=rnu5ghm6LjlZjGI5d1DCcgbjNePJr2HfrmhClLS0Q87HNnoBzLL7xlubDWY0yhFIFQ
         1kpsm11idZlZzBNUlB43zuakI3hUNMtyMRLNduKlKJteTbVlziA3GxebB2RjZ85eW/gt
         Tv6l1G7pOtY7Q5h+asmYjoWRSupqIi3h9KT2jT43L4o1YCoabXYm6MosPG2yIvCXGg/h
         XeTJoAZL9uoyeC8y0JB5ZNme0xHndkY5bPll5qu5oeE1H0vEazAYqmyxjK6IFETEqLQ4
         XyrFltPU5scz5rhIAhjRzxh6w8CUSxfOXN+iSWTxhntG82Q9ytCahSwU8VfVpF8pjins
         e89w==
X-Gm-Message-State: APjAAAVTH23CYru9l205ZjuMApVQPpwYQI2DYkaQIcmyw6ofbW+/0fXX
	M31Pxb7kANDOPyr3QyNVZ1I=
X-Google-Smtp-Source: APXvYqyk9Y6cKZzpDtITJpB4SUWWKjwaJnYkgGqYJGl+IIo5g3klSy3EQlx0iKNgPmY52DTpeKuCPg==
X-Received: by 2002:a17:90a:bb92:: with SMTP id v18mr911890pjr.78.1566319357145;
        Tue, 20 Aug 2019 09:42:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8346:: with SMTP id z6ls5051939pln.8.gmail; Tue, 20
 Aug 2019 09:42:36 -0700 (PDT)
X-Received: by 2002:a17:902:1105:: with SMTP id d5mr29786064pla.197.1566319356802;
        Tue, 20 Aug 2019 09:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566319356; cv=none;
        d=google.com; s=arc-20160816;
        b=QZlt/2RBiM9RyFmIYRSbINz9MsO1ZAbzQ6Muf28Ncl0ggy/HUuL5sgSjRAA7Nonkag
         kHUr+h54JQjoBB7xkPMAp2Y0xt8jbYce25kwqk99FEf9O24mOBBiwYwng2Mewmo1qONM
         oRXbgGC65cU7nO3/d4M9FDm2AH0jnLBxdb5rEhjKrJzrIKa4IWyGoNjWxGCWzxKSSWM7
         jDLgxB1GfrHwfEmd9cH7K+1UD83KeMv/2CbSLQQvrc22IZKrJKi97Aq1Qr4ZMrdPOke/
         mp+NiA7nBX5B0OCd61yPKonSRyvHuo0Xtyf+k7BhlyxSdcMCZ+RnYboDKUbpVQYepIl/
         d4dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YR/XktMu8jAqRS0Ycq8NVP9wMM2B1XqtkqfgukCukj4=;
        b=D3vgstRaODgNjlOSc1nzONiFk9tIlhwc4CQA+lumWCjtORGPAk8fwhGLM2LZkEbDSQ
         5a0o3J/Zdh8XtUCK49wcfRmpfuY4Xf5Me9QcV0Y1YEVROqFi8giKQGTto7e4FxHHdxQm
         v7BjLpXR3JFNKf3R2jhtjICz85ywcgn+hj20GByDzvB0PrU7uPqddspyXghGntURPoVC
         F+rJU8gaFR64Ohlq4NGX2QEEEtfBGHA+SfvZJIOT0P0Z+b/xVFabFrbhNWwClU/IY/lN
         ZM8VBbVrkI7XJagsV0nVKxybUxT9AsoHVazC5H0+q1Jn7qZCI9y3Zzi2oU/mqRADXERJ
         9wyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KPzL60qW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b12si1059765pfd.4.2019.08.20.09.42.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 09:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id w16so3713753pfn.7
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 09:42:36 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr25221455pgg.381.1566319355986;
 Tue, 20 Aug 2019 09:42:35 -0700 (PDT)
MIME-Version: 1.0
References: <201908171038.SsJs2v31%lkp@intel.com> <20190817050241.GA69583@archlinux-threadripper>
In-Reply-To: <20190817050241.GA69583@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 09:42:24 -0700
Message-ID: <CAKwvOdmdCYgWXRPeBNyVciEGOAmQLO7i1zUeX+E_7P4J5ZKg6g@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] linux/bits.h: Add compile time sanity check of
 GENMASK inputs
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KPzL60qW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

Indeed, please bump, and thanks for all the triage you've been doing on these!

On Fri, Aug 16, 2019 at 10:02 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Sat, Aug 17, 2019 at 10:59:54AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > In-Reply-To: <20190811184938.1796-4-rikard.falkeborn@gmail.com>
> > References: <20190811184938.1796-4-rikard.falkeborn@gmail.com>
> > TO: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> > CC: rikard.falkeborn@gmail.com
> > CC: akpm@linux-foundation.org, joe@perches.com, johannes@sipsolutions.net, linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com
> >
> > Hi Rikard,
> >
> > Thank you for the patch! Yet something to improve:
> >
> > [auto build test ERROR on linus/master]
> > [cannot apply to v5.3-rc4 next-20190816]
> > [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> >
> > url:    https://github.com/0day-ci/linux/commits/Rikard-Falkeborn/Add-compile-time-sanity-check-of-GENMASK-inputs/20190812-182740
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/phy//rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous bit-field has negative width (-1)
> >                    inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
> >                                           ^
> >    drivers/phy//rockchip/phy-rockchip-inno-hdmi.c:201:50: note: expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
> >    #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
> >                                                            ^
> >    drivers/phy//rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded from macro 'UPDATE'
> >    #define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
> >                                                    ^
> >    include/linux/bits.h:38:3: note: expanded from macro 'GENMASK'
> >            (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
> >             ^
> >    include/linux/bits.h:24:3: note: expanded from macro 'GENMASK_INPUT_CHECK'
> >            (BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
> >             ^
> >    include/linux/build_bug.h:16:53: note: expanded from macro 'BUILD_BUG_ON_ZERO'
> >    #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
> >                                                        ^
> >    1 error generated.
>
> Solved with https://lore.kernel.org/lkml/20190807192305.6604-1-natechancellor@gmail.com/.
>
> Could probably use a bump.
>
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdCYgWXRPeBNyVciEGOAmQLO7i1zUeX%2BE_7P4J5ZKg6g%40mail.gmail.com.
