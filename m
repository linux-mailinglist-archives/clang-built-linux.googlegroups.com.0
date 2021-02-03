Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDHA5OAAMGQEFW7YMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2648630E2C4
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 19:48:46 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id h10sf379890ooj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 10:48:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612378125; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Nxc53FpNo3jTUoYVPLGGQSwMSqQNIb2Uo6hplyWpNMH6SdmtwAwsyERCCzFI+JOxX
         Mxvus47C7QNYO/pvxDEHb3eCBGCZFJ56i5j9YVdDGtgMEvXesRyhz2RdeVX8T7rW7F2b
         QZYNiUso24tF08l/jgArTEdy4UZeAUPTdGe031K5Ddk0BOq8o+thbMNNFhaeFqp95ped
         4Gtt+KLlIhcCZLb8VHIvFUvWVeRprGDkh7qDTTQE9zeNr7krSXRK7aVu5+tcihXKJVAC
         HcBLTiTUMmdb449es4sxH3vsCimjeEo8BqfuPulWN2Cc2Vkj6caVK5c0Odr1UxFUoW/F
         lsQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rmvZSqW/JCkDK+ttrv+/iZTojcRSkD/szLdt2lvbuG8=;
        b=fM9vDL2lHhbp5QhGO3ujGT6/KSHVLCnkD1PYZFITeeVimG8BlumHiZYh39jPaVsCTd
         ik92qS0ChkoqjHNa47Xa8ADx7+2tMC1MS4cYubPyRm7rqlzbAJRML1nBzHRPK6pH0g/0
         2hNxqTmz88X46UjY8Ag1zehyjltJOv92FlABdtrG7qdh62a9u+iLBEDhhjkVJ3GJjbjP
         vnn6yTxfezd3a3BY5/LSRHpnIn5meuh74uoBryiJohDatEUq7+AE7BdWrIPIFmltpDS8
         WEACB0HqWalqTlSa8UST8AFdw/RX93T/laYoOOFyQrd6r139/PI4uK5n762y4ckPfpl0
         0uTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qG6MVI5Q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rmvZSqW/JCkDK+ttrv+/iZTojcRSkD/szLdt2lvbuG8=;
        b=bxOsCQWxJ/PZdC3WIA12/OFvXPcpjXCP6Qnxbj7o+WUQih2uNe5v3eXC+LzaDUi+M5
         BKheV/R032hbSHdKAay7VItMoUHMi04IDL1rBPF9oOsAyj3b77q89FzP0/ycHX9Bgg7p
         UWmJC/GdJmTyaHmo6a7evVfC+MStnU1X7FEL4U325Ic0r1sa9pHjLIUwmulB4ecsX8EG
         uQ2dy66RTgRvBpX4J/NpHkzKTjjwZ0KG+iG4ykorDCep/cYJeIhekpIPwEu7zVIN0DQE
         Wfu/ahApeR/ElA5vbN6F1ySCT5FSPwrg/ZowVfjRgO86AtCSOC86mthydYPaP2cujmgt
         Lo6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rmvZSqW/JCkDK+ttrv+/iZTojcRSkD/szLdt2lvbuG8=;
        b=aIT1YwcWzHKo1VbJfR6MUXWferHbEYm6koEDoCI23PGfDXRRlIwoJk/oNAyJ1Rwf7F
         MO+axxREVIwHsnaqF67Q/G9aYb44prL3V5jnR44iR9svXADb6AvO1b+/JNmM1zfeMmZo
         yDcopxnMYo3cVxJlpEo5mL51fMOxMa5TDX0wko59ezi+Pm5SP1RJ5OJlH1DI/YmulWP5
         h5qp/XhvEKA18XpLjuwG3hMijsIeInPtw3WuIL/Qj7YXbjB+NGbSLL/hgupB1e2MxQc1
         FzH/dm1JxxhF7mHA+dxqFBQIOl5JSk+CW3vriJA2Ew5dNL8I/SyPP8M3zEpXAPvkhmjc
         TReg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xI8l4PXnSiVbUXgmtwGdKegmZ6JSK5k3hs6Sav2D3ySCtN1fn
	I2MCBdgwNm3UL/vgsXbT0zw=
X-Google-Smtp-Source: ABdhPJypd5hDUUt5o8SrpzDoTJt37JKi5ZrN//bLwRCmDIyzPxz6Wgtd2KA6yIR+gAkOLrfcdu2hIQ==
X-Received: by 2002:a9d:7e87:: with SMTP id m7mr3131231otp.128.1612378124900;
        Wed, 03 Feb 2021 10:48:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls726389otj.7.gmail; Wed, 03
 Feb 2021 10:48:44 -0800 (PST)
X-Received: by 2002:a9d:4b0d:: with SMTP id q13mr3030784otf.325.1612378124493;
        Wed, 03 Feb 2021 10:48:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612378124; cv=none;
        d=google.com; s=arc-20160816;
        b=g8ArfAj7ciafC4Bf1dLkuctY3aUf2UxRM8wZ5R3S9Taf6RrDf9mAQOC752Dc7ET+R5
         U4ugYSBYNdOYKG+M0l1ozaXggv8yxyCTG33nVHUlhhRPJ/riuk0s/MF4Y/aN6osboAr0
         DEtl0DdSIHvnVWbMf2zPN2Bmqi+s/ic/KV4LuDljVvrddeBElxtUaDeQPl+F41pzcxrV
         vfjRXvfLBhXlFzlwOeQhQToQqM/yYkJbaZuSGzqlXjn7x9e2KKfQhb5Zsn1EzgzdtaUm
         ri1GgHn3ZLQ0cjlk4ZWSBTnZNF/OsCiYm/2aVvrqr5Zj4ae5f2DMGEFyZouqEhPOS2v7
         Vs7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/oZIYHSq61gnt9cbnaXsAvCethqPR9E55+req5zWNWg=;
        b=EH3AmGh8AEujodzmrT51yarX5juBby6+u3s095NPNvn3P++sIzFP4GzdTakSTRsm81
         gXuJ8jvvgmgFoCnx/pvl4oh0rhqFPClWTRRC22Hz5/PEF1j6I91cXXWSiqawqc1lVZSJ
         qrqPZcn1sxzk6SODfAeqwkA3/Vk+y0mK+8QZSdpIza8RUKTt0FeQjh6SJfiq7LM5TL6y
         jgzfGcxAUIAA6/ZKuXKWIvKTWkmkKlLWnFSsIoKA5ZiLotIhcpSAXzkk9BJqMfQJuBHM
         krS00NtkLz6M/ynbR/zjl2GK51Wsb387Vk8YDmIr4FCkFZkCRb7gJ2MExFEIUqbl4sGG
         dUZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qG6MVI5Q;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si192290oib.1.2021.02.03.10.48.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 10:48:44 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 910D464DE1;
	Wed,  3 Feb 2021 18:48:42 +0000 (UTC)
Date: Wed, 3 Feb 2021 11:48:40 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>,
	Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Brian Geffon <bgeffon@google.com>, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Message-ID: <20210203184840.GA1711681@localhost>
References: <20201230154104.522605-1-arnd@kernel.org>
 <20210112191634.GA1587546@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112191634.GA1587546@ubuntu-m3-large-x86>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qG6MVI5Q;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jan 12, 2021 at 12:16:34PM -0700, Nathan Chancellor wrote:
> On Wed, Dec 30, 2020 at 04:40:40PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > clang cannt evaluate this function argument at compile time
> > when the function is not inlined, which leads to a link
> > time failure:
> > 
> > ld.lld: error: undefined symbol: __compiletime_assert_414
> > >>> referenced by mremap.c
> > >>>               mremap.o:(get_extent) in archive mm/built-in.a
> > 
> > Mark the function as __always_inline to avoid it.
> > 
> > Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> I would like to see some movement on getting this fixed in 5.11. As it
> stands, this is one of three __compiletime_assert references with
> CONFIG_UBSAN_UNSIGNED_OVERFLOW. If we want to keep the BUILD_BUG()
> around, I think this is fine. Alternatively, turning it into a runtime
> check would be fine too.
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Ping? It is pretty late into the 5.11 cycle and this is still broken.

Cheers,
Nathan

> > ---
> >  mm/mremap.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/mm/mremap.c b/mm/mremap.c
> > index c5590afe7165..1cb464a07184 100644
> > --- a/mm/mremap.c
> > +++ b/mm/mremap.c
> > @@ -336,8 +336,9 @@ enum pgt_entry {
> >   * valid. Else returns a smaller extent bounded by the end of the source and
> >   * destination pgt_entry.
> >   */
> > -static unsigned long get_extent(enum pgt_entry entry, unsigned long old_addr,
> > -			unsigned long old_end, unsigned long new_addr)
> > +static __always_inline unsigned long get_extent(enum pgt_entry entry,
> > +			unsigned long old_addr, unsigned long old_end,
> > +			unsigned long new_addr)
> >  {
> >  	unsigned long next, extent, mask, size;
> >  
> > -- 
> > 2.29.2
>  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203184840.GA1711681%40localhost.
