Return-Path: <clang-built-linux+bncBDV2D5O34IDRBH7C3KAQMGQE3DFEZMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF233244D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 21:03:44 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id v126sf3441945ybc.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 12:03:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614197024; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmjm10boioW2SvNGuDCe7/Ckj/gGp7IDHf962psIQntkivSnriwKI0mqwrAHNJc6Sw
         ex9mNWTFMbqTNACv1scTp4Zzt0AurqnMp6VmnlNA7kiN3I7vmWFPkKFFUNDgX7BhjwgD
         +aCoktnTHLuib09vVmO5Vq4U5ivmfhfWocaMYriBQkSDyHTdBsCRztZbKDBkVhK2u4NF
         gIPQTr/8d6EV6Rm1x3Z9RTJqBZ3mGCjlDXEIRv/mRZbo2O2tVivh/mKLwJ+RRDlZUKHK
         vysDEVNtgokQWfb1k5rZfLXPMY+VYdA/5GtawsWTXkxfoGg+RcssfNFnyB8AHExAgnnU
         oZGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=YqEX1p+VVjSkl6crZAXf/R4GXoR9xI4nGXFMAFwtDnI=;
        b=Lkqnyz081mAy6a2BEDcjgu7NGeZphFGvPd+xhHsqfLtaZnKD6PaumEuvfpwrZBHU3H
         MEmsvfcEFrrcu84l5hNyF+LNE/zDa2QFbSTjOFpnyIfMuQf76AJgOl4iXGEEPfHH+Nxg
         KJDbZhTticvf+XMBbJ2hbK9YgQF3rAru9upczN8za1Ih8XwZzVyNy8zQMKtUuZFIh3zW
         gCwgBwepz0vQpDJeGp8IoLvY3H5EnKvCL/3qKG1IaH6UTUQMvV9AT0BZJgkmA4qxWH68
         eQAhLJE15706nlsq9jAzuUGfizDrN89BOHacGVQCVxCIO+WnhTxIZkrzy/BiPSO32sFi
         RK3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=NGDHafa8;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YqEX1p+VVjSkl6crZAXf/R4GXoR9xI4nGXFMAFwtDnI=;
        b=VAMJhxZAiE+jXJvs1wqqcaSEJ/vzATl9uNLDomaHU2g8R1zYZn1lnbj4g1sS86vrgr
         T9BcAWVUhfnAb+0QNgsLj3SGJd4re1hEfrmdR8wp4F9nRuxBjAThCsnfsXHaRh8odoTu
         Wv0EPv0DzZkJVLXEUYDRov5F5eYSKdjX43lAB4bOshYubb3KIkNj0WSEfk25hpMKWVGJ
         9z7HBiW70D/wHvXB+ohuSCkKxP6hldochSHC5nGILO/vzZWorqncGi/MUI1EAp7buM3e
         5n6exbzjePRXJPdGUqB0XsKyDGRif/Y6DqXYzJC3WcuKun2Vu2aYI7tq9H+WU7KsKzFc
         bRTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YqEX1p+VVjSkl6crZAXf/R4GXoR9xI4nGXFMAFwtDnI=;
        b=Gakye5H5oAya46esHwxMBmkmMrtwDkS3vnAbpUfFzXjlvZn6WpdJOQZNbk0kuXGD6Z
         NRgjb8sfbSAm+gLoIsNrq296w+Zc0lFJjXAtOqtLw6+Jq6jM520AGkyGZF3fCycrxu3E
         h3lLtAt8R7od3L3FIfrwCt5jFyhZNl7DXkVKQRSSZRcqcU2sy5UByIdfbQyq6yKpi/Ju
         vB9RUfqHMol+VShqQuFf1FODnvuzhBiFXpJzH+62LKJdwhJolE6EbgxprqgFfDQht6p0
         gju8RKwxx1uQkelfvdfl3r9acAAKypLfZ5IfFljNM/Ui1qpuPQ8YNEd8Zc00sij5Gkhf
         oO4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AUxDits45bshyzfyeCpmDLBqz14nZvpQP9hShjsd6K+zOmYdK
	TR7matTkXOwMoBnoztfAT9w=
X-Google-Smtp-Source: ABdhPJwWvKrgV9kjzOOe2UXK+Csp1FiFw7ElYef1yw8Yh9pUXy6i/UMvaEwpOCf4K/ljhvLhXzNOLQ==
X-Received: by 2002:a25:d8d1:: with SMTP id p200mr49334712ybg.14.1614197023973;
        Wed, 24 Feb 2021 12:03:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls319483ybg.6.gmail; Wed, 24 Feb
 2021 12:03:43 -0800 (PST)
X-Received: by 2002:a25:778d:: with SMTP id s135mr45987339ybc.126.1614197023243;
        Wed, 24 Feb 2021 12:03:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614197023; cv=none;
        d=google.com; s=arc-20160816;
        b=kpHDjmctDRwo4/5eTzTnsbImD7H7hehv45mh+LSa7E8wApbbOO8ERawZcejcWirrm5
         Xw8bDUcdCWgu53TkHDNONrd0g8HN+ZDK/VCAwkR9ltUfFRDMktwwYW6QZS/13pD/A28y
         S0ZILddE68dwbn/RXz1T/jeIT+ycv5xl9saY1XYxBpZXSMnvY7QrsVtGZxJKewj9LTIF
         eIU9EAZhypv76njHMKWK1LrloUYP+0neOaaQqODeazvi2fQ+bDcaU1apsNoU0ZnTbory
         P2G7ACJeYUVupPAq/DQ/IkmDRUQQIpOMdaCKYAaiBaUug9CqUBYAU+c60jmYOJuPB50X
         Kv4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=P/q4e9o0q2aRbLon+bFIsbOrV4BIhsNyv03Nr5GJxAg=;
        b=oDl4TKJsfGfWMug58vj/0zAlZfkOZoVb671RU5D/K7sil/ZgQWmfbwvSBv8K98yJvr
         I+ilS0nBsKM+laVzSPE++XHrzyAZIppUOKoJULl8GJkGwvXQYkvPGANofOo+/SSr1v1U
         gm5BYm+RfIPWS50uNRROkAAvxhyVXc9OozHRWv/0y0Ka3SN+A4l/+udP0t/cf7Fix3DH
         0fSp5knpQ0PvmDyb9/ZbzaxU4DxSf2kmikLv7MAnFgdMxte81zB9zjDSUl7bdtzGcv0X
         zPWh3BBE6XhfH1AV1rNjBfeYTpgRNqdvFKsTCpqO5fQNvNOFFWbgo/z95SHXeXtxSxqa
         vWgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=NGDHafa8;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id c10si227810ybf.1.2021.02.24.12.03.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 12:03:43 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::d05b]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lF0Nk-0002mF-NX; Wed, 24 Feb 2021 20:03:37 +0000
Subject: Re: [linux-next:master 11942/12503]
 drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype
 for function 'aty_st_lcd'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <202102242016.MJskK6hp-lkp@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <97716bb9-6aca-d7e6-e390-1b9d3a0b99a8@infradead.org>
Date: Wed, 24 Feb 2021 12:03:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <202102242016.MJskK6hp-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=NGDHafa8;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/24/21 4:46 AM, kernel test robot wrote:
> Hi Randy,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   577c283560fe8a81a23a95654c6d13e8412d22f1
> commit: bfa5782b9caa26f93f42ad79804e1f75a1ce9f18 [11942/12503] fbdev: atyfb: add stubs for aty_{ld,st}_lcd()
> config: arm64-randconfig-r004-20210223 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f14a14dd2564703db02f80c00db8ae492b594f77)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout bfa5782b9caa26f93f42ad79804e1f75a1ce9f18
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/video/fbdev/aty/atyfb_base.c:180:6: warning: no previous prototype for function 'aty_st_lcd' [-Wmissing-prototypes]
>    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>         ^
>    drivers/video/fbdev/aty/atyfb_base.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>    ^
>    static 
>>> drivers/video/fbdev/aty/atyfb_base.c:183:5: warning: no previous prototype for function 'aty_ld_lcd' [-Wmissing-prototypes]
>    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>        ^
>    drivers/video/fbdev/aty/atyfb_base.c:183:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>    ^
>    static 
>    2 warnings generated.
> 

These 2 functions are also used/usable (depending on CONFIG options) in
mach64_ct.c so they can't be static.

AFAIK, we don't make functions have different qualifiers depending on
config options.

> 
> vim +/aty_st_lcd +180 drivers/video/fbdev/aty/atyfb_base.c
> 
>    163	
>    164	u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>    165	{
>    166		if (M64_HAS(LT_LCD_REGS)) {
>    167			return aty_ld_le32(lt_lcd_regs[index], par);
>    168		} else {
>    169			unsigned long temp;
>    170	
>    171			/* write addr byte */
>    172			temp = aty_ld_le32(LCD_INDEX, par);
>    173			aty_st_le32(LCD_INDEX, (temp & ~LCD_INDEX_MASK) | index, par);
>    174			/* read the register value */
>    175			return aty_ld_le32(LCD_DATA, par);
>    176		}
>    177	}
>    178	#else /* defined(CONFIG_PMAC_BACKLIGHT) || defined(CONFIG_FB_ATY_BACKLIGHT) \
>    179		 defined(CONFIG_FB_ATY_GENERIC_LCD) */
>  > 180	void aty_st_lcd(int index, u32 val, const struct atyfb_par *par)
>    181	{ }
>    182	
>  > 183	u32 aty_ld_lcd(int index, const struct atyfb_par *par)
>    184	{
>    185		return 0;
>    186	}
>    187	#endif /* defined(CONFIG_PMAC_BACKLIGHT) || defined (CONFIG_FB_ATY_GENERIC_LCD) */
>    188	
> 
> ---


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/97716bb9-6aca-d7e6-e390-1b9d3a0b99a8%40infradead.org.
