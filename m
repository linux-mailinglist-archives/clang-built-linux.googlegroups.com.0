Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWXU3KAQMGQEGZQZUVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8BC324571
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 21:43:07 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id u5sf1001200ljj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 12:43:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614199386; cv=pass;
        d=google.com; s=arc-20160816;
        b=tI6zX7fQ3Xv+rAgU7GIk2p2APwPQw06RtytboPjuOKEyAw1xRQVoM/gvXM6Wa3HOAf
         eTGMOBfjUjrt7YlnGPSEiQ9BjwDa2GvIgX7WIrWp1+Iz6E44aTRBwidv48CRb9m9ZDdN
         qY3SlGyGWvTaxpnqqayI7zlOfzE2E4U7U4A7BinI8RwUwlyXr96FY1uBYDnTSde3EZsj
         h+7aHMc6txOnMyTm7WTBfeVWvaRAd7lSnExiRMdkBv3LuReaq0eiqCOlDf/FTcD3HZ+G
         K6fFU5nB5kigV0N93rsUZ6Fy6vFCAHoApSV2AHcVy4awgXCZFrixnSEqwjJGWxUlYyic
         2Vfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q2RjbD3spM7QkBeIt1SGrvqZ/YI4Aa+mo2oALr6Uc48=;
        b=GMPPkJ/ZJesAxLcI6eHjSSo+slXTnlxGg9ijCLxrkuumfVKOBLEpFw55deBEoqmYx4
         1Xd6ciUFRiPqZw97NMwpPuzqOLLJVTw+gRolFHDJ9EgwhWEBrF6pSBXhBYCBfmjUTE2j
         Cv5GOm3kIUpu8ndfkFY1D7umBVAaz0fRMiFxX/SjCNPQejdfusCUpWBmT61ojtkGALkz
         GNa2iRTLDZw/l1jVaLv4zSPxZIS/8FKt/b5LjR7XaGOwniA0OBT1aFBpRgnXrUsoF6XQ
         o6AFeFGxC3Qsnp/tocxmS5+IyI7X3pm8pdm+lwrNBon36Y0ttSz2LKJ6T/B8w4azxMwV
         P6SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r0nF8Qi5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q2RjbD3spM7QkBeIt1SGrvqZ/YI4Aa+mo2oALr6Uc48=;
        b=TdN96GWAtiCPmg+PxzShnTQ6BZO+voeTVws/4ZXBb/8f/2y5pruq4SXhQplnlOyGzu
         LovocksXoktPPI2FZ4+rNTxfkX/KKN1vP8Hlp2TjFr2+NmhZEtGWRr3dXzSSQdSXbfcn
         XEnQKMGv+6ooCEd6/ugl5rLLLhLzOtca8Tsxk+AXPPRhVFL3cMWoUaU1hqYmlYQbw38W
         snJwhQCBSuYd+3Yw/KPMxM6jP8iiJcnq2zKl0Zs/IyFjA4sB9NuN9I2cUp/pM0VXtfdK
         OCSEAHuqu4yom8l0l4hylvxV56NjXpjB1gHpFwqK04XntUaYvcWFWRITl+LpAFWOGvuF
         E7ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q2RjbD3spM7QkBeIt1SGrvqZ/YI4Aa+mo2oALr6Uc48=;
        b=egZaCgGobVkgOK0jMWQMvkNcfXMUM3G5NqeuE2UTkeKvyBWKUdgvOGljLfgwwua3NY
         UdxWerr2CwgsBsmm/X3EOfz5WZhDZ7SH8e9gfG3m50I04vx4/og4IBTt1F2EFoBVcBIj
         V0tl5vMzOARwmauu1IDzMdhcKkowShHaDk5OQMPkYjHcE35q4Kj/rNfqy9yMT/OcrnZQ
         lIrJ0jwBGyCqdNy3DfB5UsrMzrCzlTpwN4zaHnrEBo5Heaz6SHubhBY6mzRTemIvA7td
         CSkgzVkn953ilHWU8+Y4jaBSAA/2ievb8Th8KRIno+JgzIu0+8hz5QRbFazh5mY+Oj4k
         EJgg==
X-Gm-Message-State: AOAM531jlId6stEWv/dEzQH+97VnijwMVHgP/bCDpQ253FvIrS9x7dwl
	wccDu+njuHVxOPgeu2M/h9I=
X-Google-Smtp-Source: ABdhPJxNnba6jJXQgOutdW/J4y12Kzp8zrmJ4Lt8MwfZ5jSfKMH/iZM4SeDo/EiTcAie1oUxRZvy5Q==
X-Received: by 2002:ac2:5446:: with SMTP id d6mr3625944lfn.527.1614199386691;
        Wed, 24 Feb 2021 12:43:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:211f:: with SMTP id a31ls623128ljq.3.gmail; Wed, 24
 Feb 2021 12:43:04 -0800 (PST)
X-Received: by 2002:a2e:3a17:: with SMTP id h23mr21319195lja.443.1614199384620;
        Wed, 24 Feb 2021 12:43:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614199384; cv=none;
        d=google.com; s=arc-20160816;
        b=K7MZfa6d9lYu3E8Avc+AFeI6nH6MUO4p8j9kiQQVTCZhy2cLG7tsulUisQYb5BWZBp
         +ZEiZkIxxbv39yBYd97nFwrshAR4U1Zk9c5kSvuaif/nm3W7yXI3Yba7TW6WPzA0pHxm
         Drh8/zE5kSLKxb2/DKfA2p/6+orXClOBCroXfHKmMcn7DGtJfBa5XVuRYT418DzA4t2r
         QPaN3/U2LvjNUzGVMozWFEJbw9ol2KPVd4OUgTP/DCDRqho1+T0WpJfWE9V6VsadM31F
         721WnsNLAENiZ4JJLxsSwCFHU8vJaflAuzwzIgbZ2j/q4v+FltLUMUpIRmjgwDKcF2k4
         JEnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kUcixlqqh382EoF6yE8w5wUEo1WOb6Ugj55K/oEgGAk=;
        b=uMlGcHuJCosl8A9lp87/moqtIc1h/3EqVm5b0K7dyRfpVhw4+djPTbFGK/FyHF5/Yi
         mMuAKwM6kUjTmDPtonmbX36+InUwNhy4lcc06zNoE/enIognIcH7XhhaC2fJIGJIzWU6
         zOX6Qlrz2fTnQeDDyRxEbBPwsC+CvyegxKbanCkWIRRF7SiK8DexL1fdunxaKfKqDh9u
         ih8+snsiejk9WwcdcXdQPNGqrAxv7brsPmwgzvwOZImEEzXfPEjJJihnSVyvqKTrfEHL
         VNq3Ydrs5bfNVZyVoZ5bb8dWknxPM0x4hn72EZ/MqPP/pXI1LI7pbGlXCU0OQGZZ9P1p
         bOmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r0nF8Qi5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id s5si170846ljg.7.2021.02.24.12.43.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 12:43:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id u4so3991834ljh.6
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 12:43:04 -0800 (PST)
X-Received: by 2002:a05:651c:2042:: with SMTP id t2mr19750955ljo.233.1614199383238;
 Wed, 24 Feb 2021 12:43:03 -0800 (PST)
MIME-Version: 1.0
References: <202102242016.MJskK6hp-lkp@intel.com> <97716bb9-6aca-d7e6-e390-1b9d3a0b99a8@infradead.org>
In-Reply-To: <97716bb9-6aca-d7e6-e390-1b9d3a0b99a8@infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Feb 2021 12:42:51 -0800
Message-ID: <CAKwvOdnHZTsYNBONLHGu=dMcPPgp8TM8Lq8vC2L-984CUFwkmA@mail.gmail.com>
Subject: Re: [linux-next:master 11942/12503] drivers/video/fbdev/aty/atyfb_base.c:180:6:
 warning: no previous prototype for function 'aty_st_lcd'
To: Randy Dunlap <rdunlap@infradead.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r0nF8Qi5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Wed, Feb 24, 2021 at 12:03 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 2/24/21 4:46 AM, kernel test robot wrote:
> > Hi Randy,
> >
> > FYI, the error/warning still remains.
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   577c283560fe8a81a23a95654c6d13e8412d22f1
> > commit: bfa5782b9caa26f93f42ad79804e1f75a1ce9f18 [11942/12503] fbdev: atyfb: add stubs for aty_{ld,st}_lcd()
> > config: arm64-randconfig-r004-20210223 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f14a14dd2564703db02f80c00db8ae492b594f77)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >>> drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype for function 'aty_st_lcd' [-Wmissing-prototypes]
> >    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
> >         ^
> >    drivers/video/fbdev/aty/atyfb_base.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
> >    ^
> >    static
> >>> drivers/video/fbdev/aty/atyfb_base.c:183:5: warning: no previous prototype for function 'aty_ld_lcd' [-Wmissing-prototypes]
> >    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
> >        ^
> >    drivers/video/fbdev/aty/atyfb_base.c:183:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
> >    ^
> >    static
> >    2 warnings generated.
> >
>
> These 2 functions are also used/usable (depending on CONFIG options) in
> mach64_ct.c so they can't be static.
>
> AFAIK, we don't make functions have different qualifiers depending on
> config options.

Is there a shared header included by both mach64_ct.c and atyfb_base.c
you could provide a declaration in, that way should the definition
change we'd catch such a change in order to not break the callers?

>
> >
> > vim +/aty_st_lcd +180 drivers/video/fbdev/aty/atyfb_base.c
> >
> >    163
> >    164        u32 aty_ld_lcd(int index, const struct atyfb_par *par)
> >    165        {
> >    166                if (M64_HAS(LT_LCD_REGS)) {
> >    167                        return aty_ld_le32(lt_lcd_regs[index], par);
> >    168                } else {
> >    169                        unsigned long temp;
> >    170
> >    171                        /* write addr byte */
> >    172                        temp = aty_ld_le32(LCD_INDEX, par);
> >    173                        aty_st_le32(LCD_INDEX, (temp & ~LCD_INDEX_MASK) | index, par);
> >    174                        /* read the register value */
> >    175                        return aty_ld_le32(LCD_DATA, par);
> >    176                }
> >    177        }
> >    178        #else /* defined(CONFIG_PMAC_BACKLIGHT) || defined(CONFIG_FB_ATY_BACKLIGHT) \
> >    179                 defined(CONFIG_FB_ATY_GENERIC_LCD) */
> >  > 180        void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
> >    181        { }
> >    182
> >  > 183        u32 aty_ld_lcd(int index, const struct atyfb_par *par)
> >    184        {
> >    185                return 0;
> >    186        }
> >    187        #endif /* defined(CONFIG_PMAC_BACKLIGHT) || defined (CONFIG_FB_ATY_GENERIC_LCD) */
> >    188
> >
> > ---
>
>
> --
> ~Randy
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/97716bb9-6aca-d7e6-e390-1b9d3a0b99a8%40infradead.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnHZTsYNBONLHGu%3DdMcPPgp8TM8Lq8vC2L-984CUFwkmA%40mail.gmail.com.
