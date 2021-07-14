Return-Path: <clang-built-linux+bncBCT4VV5O2QKBB675XSDQMGQEVHG4RJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 035D73C8EAE
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 21:46:05 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id x18-20020a67df920000b0290289c309d3b2sf1258248vsk.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 12:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626291964; cv=pass;
        d=google.com; s=arc-20160816;
        b=SbVU4jsCJHGM57nAljc+lnLfCLgzSSnvGQOiWFhOsIm8aKiaIcecxnCk3v5i00AWHm
         ceUEA+MPEkVuQYdEnzD1I2Br6D0gnp6ILi22sVEGQYkW5UJb22qd5dRHrNoWDzFroa5h
         aNSx542yMa5uAe6eDv//Vpz3P+mf6NNnSfqxXMbwm6EDv8T4oM8b4RWdv1I4gzJo7E5n
         gCu4IeRDJs+CxoJ+PXnEbU2YVx/IYaTiuhFsZE69rIlG5uWEM3yzEby+tGmWxrsZUsYM
         6BUGZ1Tw9wW7Zpo120NanDszvAVFaW4f6iNqyr1MbgXsYDNgz2+do+/HjlLV1YMXlNqp
         Sr8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ged6IvOYpdIuR7D8E1ZEHqnKI0seD2TvKr3kZWcQYTw=;
        b=ILq8SzpFowTG1NeRn0EcinrcaBEtMXY2UbSb7YTsZVWh9gDc6X775yda69h3mJ2zXC
         fq0juKk5QtXLQ56g0M5+eUiME4youUr4rBqmkTjVIM8BxKBWlRnae4JMt5gRXhfwYJ4H
         w2XflO0GYjZyiWZCqnvUudX+prnldqWHzouCZFyGp/ZX6wTvNK/4FizTDmqtiZ2ykCv4
         pmAXbzUYY2bn5PI5ZbZxsOG0KiJPhxFzbKJ10lSGp82yZ+nAcSUI2yr4xdIfbGxr7BGm
         iUBnAMHg24VIB/F6X50vp41i9Kb0kHcCxZg/22qnA0sGM82VqOPbw5Imo/a0jrCFsZ6u
         0LDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tk4J9e1y;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ged6IvOYpdIuR7D8E1ZEHqnKI0seD2TvKr3kZWcQYTw=;
        b=fa4DXCWkRrmsTldmttPj3ZdC4PKP50khWXkXQyXtFEIRugXuQjI/8meHBXfeL/vIOU
         7gUVzbw8bgt4L51He8a+FAt/57AyYWNwO8fNLJ0i10rAZo+OzqxjlRQiOcizZ3W3GN6o
         HpDfQzdADlY33mv21RyhZZIYd3uyh8GNcQiapHFgTKWfZWN7817oVv2pY0gDpQ+FsMYx
         ao2wnPkZKU0UtgaRcSPz9DYKYMUGpQrPFJOti8P5bSP/ch2aTYB17mabjt6ImmLbi8Cc
         sm6MACEs2ysfK4+DbUlR+52SFFUETo32vIQx1eyUfdBpDl9AL+OwlUHXyzy/c6A2J76g
         B+TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ged6IvOYpdIuR7D8E1ZEHqnKI0seD2TvKr3kZWcQYTw=;
        b=gpTZDbPZJKp1LOw+945KK9bXUE8hUyfZdXY3buQULq/sj+lJM2zPFW2MFaW5hwEIjN
         LTkItqXPaMsKv0wiM39bRi6wB3DwmkZTMSFN7BXo+U6oTRtmjvMC15kv+Gbl0Mln9zE4
         pgmNdRVGhVLw+w5XH9tIXP67TNMF13mb4Hm5Aitpl5WiC/nPmedGAiaMOz8HkeDmPrsa
         08wdj4f4qhkUC6jgo7jS3oCA2IWwSUawhy0tP1h0lv+WqGhbHR5Ou6lfMP4VCSoXXnkG
         F/BuV1032SQzwX9pF4LGB2x28eStorsgF/CFoSg9J59lszVX58qbA8ceNq54MR/O6fop
         Nu9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ged6IvOYpdIuR7D8E1ZEHqnKI0seD2TvKr3kZWcQYTw=;
        b=CB5dU+AeQmTKgRuS2K/q1+FhSvnMvDzZvbHHgl7WPq7bXDu00uNHvlhRtHFezsmcU8
         FPsl53ZbCSZ0CbEN4mrfcprQrhyRyqaK4dkyzl9gLd8DD0cxYmw8kBPzi8chkLVNt1hj
         5/HE25spvb+T7Q81ESoBsMYglrj+P3KWSSyV+/ye0zMGsEKe2SMZIJTpjbXTTU8cv1nS
         Ro/12TuO5lFUPt43+IL0apbGRed100u3n6UqK/6I9RdnULa9OGwPyvi2rb081TWPFryv
         HXO8b8asjjuApa1NY4MwV8UDf9R3cmPWGHzrV7ngtYZAbXsu8w5TFFrxSRN0PFHXmyZv
         f7LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Zf3f8KxmFERMxKgvjny0vn3UQPbGt4kSag5Vai8GYpHGLEP1r
	GPe4+vCW32KM/7WEMIwLWEM=
X-Google-Smtp-Source: ABdhPJzbalpOEC9JXYkEI+DUhRlU9d2HCs+c8sn4/f5UK3K1rqZNNX7XbxhZrQfMZZQwdway3k1e0Q==
X-Received: by 2002:a9f:35e9:: with SMTP id u38mr15934670uad.131.1626291963985;
        Wed, 14 Jul 2021 12:46:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6e0a:: with SMTP id j10ls485585vkc.8.gmail; Wed, 14 Jul
 2021 12:46:03 -0700 (PDT)
X-Received: by 2002:a05:6122:1828:: with SMTP id ay40mr13855855vkb.17.1626291963484;
        Wed, 14 Jul 2021 12:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626291963; cv=none;
        d=google.com; s=arc-20160816;
        b=pgry63K4cYrwa7OXqo/AanFALM5egQwr3YvDTHIpjInpJvQoIhIksmdEg1AzsKYuv4
         Z//U5p84zIBBgg2iyhx4/F/0jXJ+wz9N4eapc1+Vjrd62nQ8dc3250J/5bqNWYW5mxoN
         guQPeY2OXDeUHv5tXBy8QTHY79l2suBBdbWka+v1OKXGKjjRlnBfLvAPc80+280zsSqj
         GV5QrN+OKggcvxxJ8tDG3Lq76OvRK1jg//0la5uVhH6XxWA6kDDPzaITTs61jIa0Ogi5
         S2kXcKZbve99sWjVMUm0jRLzxtlm1WFk9dSzn8dqaE6mjcEnrjN81xGdY7RwejrIHPw6
         SC8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K+SP2qwBUBEhY6IAZuttgDWFmbqTQqYebB9+KCj6SoU=;
        b=U/tyWEwTFQS82uLEoGvxO5C0Fnc3XrO7xwWYzzSmow5NacTPAjLoNk6AdPfFz/NTdn
         tKreTBssVS/cjLV0Mi0fglS8m83t+TOjss0BMIN37h4mM+0UAwz23JemHv4r5JGbyXg+
         9KyPBoPeiaWrrYf9e0e2fjMVqegsSwepHLEAbzyvWRXyibV7Eye+25i+6hhV9Tp8RxEK
         xM94BHUdirT8d5pBVmxMVF6chvdV4tSWvy4KC8iPQvOSKPvIHfyVg26V98T2u95pOL8y
         woT0hENMohMeCuxFFK438tD7Da20YQBOZZzPnXQ0eETDGfsef3n9N5L40zyxuqGyF0yz
         Cmug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tk4J9e1y;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id a6si431847vkm.1.2021.07.14.12.46.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 12:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id h4so3596773pgp.5
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 12:46:03 -0700 (PDT)
X-Received: by 2002:a63:5a5b:: with SMTP id k27mr11266870pgm.74.1626291962577;
 Wed, 14 Jul 2021 12:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <202107150148.RpWnKapX-lkp@intel.com>
In-Reply-To: <202107150148.RpWnKapX-lkp@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 14 Jul 2021 22:45:26 +0300
Message-ID: <CAHp75Vfu1rhUV+SOq2ikFWd2G6x9j3BT6OLPhPcf8VZE5Umeqw@mail.gmail.com>
Subject: Re: drivers/media/v4l2-core/v4l2-ioctl.c:303:28: warning: taking
 address of packed member 'pixelformat' of class or structure
 'v4l2_pix_format_mplane' may result in an unaligned pointer value
To: kernel test robot <lkp@intel.com>, Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Petr Mladek <pmladek@suse.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tk4J9e1y;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

+Cc: Nick. Nick, any recommendations on how to fix this in the best
possible way?

On Wed, Jul 14, 2021 at 8:58 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   8096acd7442e613fad0354fc8dfdb2003cceea0b
> commit: e927e1e0f0dd3e353d5556503a71484008692c82 v4l: ioctl: Use %p4cc printk modifier to print FourCC codes
> date:   5 months ago
> config: mips-randconfig-r004-20210714 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e927e1e0f0dd3e353d5556503a71484008692c82
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout e927e1e0f0dd3e353d5556503a71484008692c82
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/media/v4l2-core/v4l2-ioctl.c:303:28: warning: taking address of packed member 'pixelformat' of class or structure 'v4l2_pix_format_mplane' may result in an unaligned pointer value [-Waddress-of-packed-member]
>                            mp->width, mp->height, &mp->pixelformat,

This seems unsolvable without copying a value.

> >> drivers/media/v4l2-core/v4l2-ioctl.c:347:37: warning: taking address of packed member 'pixelformat' of class or structure 'v4l2_sdr_format' may result in an unaligned pointer value [-Waddress-of-packed-member]

Why is it packed in the first place? Is it used on unaligned addresses
in other structures? But even so, why should it matter?

> >> drivers/media/v4l2-core/v4l2-ioctl.c:353:5: warning: taking address of packed member 'dataformat' of class or structure 'v4l2_meta_format' may result in an unaligned pointer value [-Waddress-of-packed-member]
>                            &meta->dataformat, meta->buffersize);

Ditto.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Vfu1rhUV%2BSOq2ikFWd2G6x9j3BT6OLPhPcf8VZE5Umeqw%40mail.gmail.com.
