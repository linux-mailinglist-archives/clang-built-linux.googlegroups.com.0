Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBA6W27YAKGQEHCBP5EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECF9134547
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jan 2020 15:45:24 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id f11sf1832801edy.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jan 2020 06:45:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578494724; cv=pass;
        d=google.com; s=arc-20160816;
        b=rYoX3oxsbbrULFBhY1lPC7ParCo2u7EWP52CfRglsrSs7q+i93eivqF41heCuvu+WD
         vRVd1lOqpGkkAD68ObJHHsCzlALY+eSO+266vMZbAD1ULUcRvPf0gYg6yqVnHhieEykm
         mAQVPe78lv5XF0qF651kZhre40K6Ii+ctXkoGuhlaEDw5XIDxIXywl6/OlJnSu3/Y3na
         Quq1spKdi4FGyD0LiVWf/fV5RSL4lBJSAIFkJGDQToBkDVn66jIxPSro1epsCKFkniOb
         nbYOe+ThFu/3i/gdNF7fGAouFP1oC3m/r0T3mSEPn4p2/Z3H8dOykIFyp4ZQ/Q7egLb4
         kUtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=J4zwwdYwj5DB3N72wt0EIfgQ9b2rh/quQJH1umW9S7o=;
        b=Tcwzn7hyX99V09W+bmVT1B6QMeWAhpR9D5M2KXK7/WoTxLua2BKDkYmh+GykdkVXYz
         0oXh5YomqZza62tMpSCqAv3cceZQgrqiPQqh8MRh/8lhaTESd/GwUXdP83k6h/h6xhfo
         U9J0NDhD2I6XtOYhx+ByCDZU+iPRh8/yYf4zuuwcmN9uThgMbP5IDiekFAG64OpSpeE/
         8EfS5+t5XSI8DF2IdvGeD9yW4Ydy3Q9H/x8kq61I/Or1F+UtzSv5AWDHgCscpGm2Nnsn
         cFLOR5qnPJBOE6tSdtrMBspaC+PdhLxkeduZSV0jgyLCo4WFKtSg4yyQ1n9qHLBWqwnh
         y3GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PPvIJqPh;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J4zwwdYwj5DB3N72wt0EIfgQ9b2rh/quQJH1umW9S7o=;
        b=cnHIi2HZc7BdiQUtHYfkpXic768uGfpEtaru2q+u2JH8gzPA6nSs3oWkD6MXOSBoE8
         g1RVRXTNeBQNefdHQgFzzGUyKCJAMwBOJStQudTpVCL6oiaz+aZgQ23rxZZmJtY0PcNA
         bLh1+lSYu1ytqMAad6cWyKMdV2TsOeXdU+GR/+aR89KZ2pZzRppAlEwuk33SR48wlFCt
         a8plqKm4lpq705wN98cK5DfTFJcevrL7HimOXD8m51RWxbJUA4MtqvXYnbFLuPixi0He
         MGfwJlzoSs58Eb9sd2Jxui0TSr/XahersCFSFWHvHApGJKatErjjgJii5yPRWi/DrPCV
         337w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J4zwwdYwj5DB3N72wt0EIfgQ9b2rh/quQJH1umW9S7o=;
        b=ft4gvTCpmS4SqZTATIgbki9uYtwHz/myT0C5GXtQHlQFATl8h5k/oXerriOCm7ZMmd
         CkjHUwIDEXXA8nU0eopQbKCX+65NbGDHqL4NGhukJHWP6ASy0Upk/5Q8MHpznP67Cu88
         T6r4NFfEsTUlM+jLQr7D3OpVGqc0I+82JlM7uHYjcEwbbniruwGss1HQabUhQ03i9Fsp
         99iiIkYZeA0d+JCp8viDcYsiSkVR03FPvVCO5uIrVo4W88a0SpUsX7l7m3wH6BxBCDv/
         D656/6wZbLeG2m/hOiDKOT1AENSz2tfhNK2f884NYgusvKeO4cjdzSIxXQ7tY1JuXaiu
         DyZQ==
X-Gm-Message-State: APjAAAWGvRutuqGC7DWCNlXSPJizJW4ioVEMay4jhzgAy578Rak5NIRm
	8D4X/iTUF71eylS59aZLZjg=
X-Google-Smtp-Source: APXvYqyf4n/a3BG7CQ2Pz5I8H78jLs3HksVRyd576nqxMcOAMCDrfnjLqaeU9DNAt8cjvu/Wcq0few==
X-Received: by 2002:a05:6402:17fb:: with SMTP id t27mr5866011edy.159.1578494723980;
        Wed, 08 Jan 2020 06:45:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:104a:: with SMTP id oy10ls766737ejb.3.gmail; Wed, 08
 Jan 2020 06:45:23 -0800 (PST)
X-Received: by 2002:a17:906:c40d:: with SMTP id u13mr5314744ejz.178.1578494723457;
        Wed, 08 Jan 2020 06:45:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578494723; cv=none;
        d=google.com; s=arc-20160816;
        b=hIMex0UHMrn+kQX5PtgTS2DTPC2OOccRaMLAbsPSBte2pc5BmlLQFljL3xibpfvEPC
         Oa6dN21Gm+8KvAOKUksXQn9kl3kwoNHkcCcGZ8fadr85AKCHiLSTl8NWRa8vUypnafUL
         Njatrg5EqBSQv/cODFJm5LEyxkV19r7xUcwiB1ndtcurx3t/I+8hdxQLDcfyFjGFfsWr
         ezjuzyDOLHFVK1o39cKah8Zu88uuey/39kdQzjWAoXNBmVYc1U+xa4zTjCnvRS7ljy9W
         bkgJ11cyzRF/ECBCcbSqJMRUX/TDf1LPX3N4i81QraMxHAtkt7edefDJpB5+TSsaHDFp
         HAYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0IuNaJNtxTc8dI6D8fP9pTo2MecvO//5FlXdae6EMT8=;
        b=uzEXBINKTUvP9bRYE2WKg3Hve746m0zt3zHbC4s72tqK+9yEMO/OUqq3XuPNIDwivo
         80Ut3vEDwWHH9A6XouUwkpNIT8EZUCt88CVz/92BvzUQV2Ngv0F8xcme+2dtLitFuRQy
         i/s9DcBOslAT+ok3ZtOP8RWDWZ18WgR/12AKWlmwG32383VpGhjn1Wt0d4Q8gO5WVPhZ
         bKTWfuReY+31YBk2GphkDdLqkjzE/iR+7aZpelOokcY7nt6doT80iPKTIBqz75oSxhkq
         jF0WSManj8+uzB9ikFPjbCpyz9e/kdFL5c3/VyWb/pd7s3/YMmnsODOAvUsvnBoGwg0o
         e9dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PPvIJqPh;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id d29si145954edj.0.2020.01.08.06.45.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 06:45:23 -0800 (PST)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id q9so2739001wmj.5
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jan 2020 06:45:23 -0800 (PST)
X-Received: by 2002:a1c:4144:: with SMTP id o65mr4432591wma.81.1578494722772;
 Wed, 08 Jan 2020 06:45:22 -0800 (PST)
MIME-Version: 1.0
References: <201912262041.GKiwGCuz%lkp@intel.com> <CAKwvOd=CinWKWVZbCP+5Sq6tR7QUacPBpVuOiTV00UBXH2HYhQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=CinWKWVZbCP+5Sq6tR7QUacPBpVuOiTV00UBXH2HYhQ@mail.gmail.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jan 2020 15:45:11 +0100
Message-ID: <CAG_fn=Urc6-Qz8DUrM5QzhK-C=58SkK1ZTkQqTJKOotM8o3A-Q@mail.gmail.com>
Subject: Re: [PATCH RFC v4 31/42] kmsan: hooks for copy_to_user() and friends
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PPvIJqPh;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::342 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

On Mon, Jan 6, 2020 at 11:42 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + glider
>
> On Thu, Dec 26, 2019 at 5:01 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > In-Reply-To: <20191220184955.223741-32-glider@google.com>
> > References: <20191220184955.223741-32-glider@google.com>
> > TO: glider@google.com
> >
> > Hi,
> >
> > [FYI, it's a private test report for your RFC patch.]
> > [auto build test WARNING on linus/master]
> > [cannot apply to tip/x86/core tip/x86/mm efi/next v5.5-rc3 next-20191220]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/glider-google-com/Add-KernelMemorySanitizer-infrastructure/20191224-024330
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 46cf053efec6a3a5f343fead837777efe8252a46
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project e5a743c4f6e3639ba3bee778c894a996ef96391a)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    In file included from drivers//dma/qcom/bam_dma.c:39:
> >    In file included from include/linux/of_dma.h:14:
> >    In file included from include/linux/dmaengine.h:10:
> >    In file included from include/linux/uio.h:10:
> >    In file included from include/crypto/hash.h:11:
> >    In file included from include/linux/crypto.h:21:
> > >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >            if (access_ok(to, n)) {
> >                ^~~~~~~~~~~~~~~~

Thanks, I'll address this bug in v5.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG_fn%3DUrc6-Qz8DUrM5QzhK-C%3D58SkK1ZTkQqTJKOotM8o3A-Q%40mail.gmail.com.
