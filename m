Return-Path: <clang-built-linux+bncBDN3ZEGJT4NBBWF62OBAMGQEEYRFGQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F372342359
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 18:28:58 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 45sf24130684otg.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 10:28:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616174937; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vr8PDbNr4cLpJWLrCYpe875+jP6LW6f/XysFGm+3vDf9iSCUwMSbk8+0CQTv4g8ssf
         JHpAk5XMOIyXh39Kscb6glEeRbsnTwbvgMNwoMuITMo8kfHVoxI+wyqJ6YO3SdiKxnY8
         MOeNkiAd8FR2ionJ7pxqEE7ozZ9stun+WfNW7w8FkLGiQAvi1kWkEo29F2wPFJgiKhKm
         JxHUuNwTk0+Z9cmW6FM/ibgmBp402cZASy044hN7TaZI92EFevboet/KsyFGlJkcbn9g
         CWoL1oNyvs5AvjfgosePMLae8wdlZMhZfx3oiYoXWqaUAh5vk+KLrTpiPY/XsthQFQ3A
         Umvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aWy/oMQHsW9fA6RXtlumXoi+DkhjAcyLz812Ritm82A=;
        b=lQPMhFQUc+LAqkT+WXPGBFW4jXYlXy6YW+pUZ7Le8l/wkMdkl3TT22yJTsBv/l7aOg
         CgTIILVW6NUaHbSchwAG5vjaAfAkvpwxvjeL3vPrZ6cFz9dsRtLYBIa3YrLpN3c/glPh
         Xy0e1HKf9xTw1XT9Jm58XWPgRng4m9S9gt2JG3SnwVPiUFjkae7F3FezOeaIspT6ToCZ
         bhR8JKprL8MC1UCNyGVIQbwxBFox6UDOjMDCH6XLoa12zS1yu2Bc/qAJTxqPkBQjtCZS
         2QZPS+LG1CqKQhwwhvRI6VVDH1kZEGv8K6+Lz2nD5MlVtF4cwE34JG16bYo73fh3hiHA
         E9Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jRWOkmBZ;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aWy/oMQHsW9fA6RXtlumXoi+DkhjAcyLz812Ritm82A=;
        b=UTlvnBYcxYn7ZN+48hG5F212Km8A2+5cF0c/Cn3icGBSO2q/1rRR/1bR7ESBwLQ2hN
         YDyVIcKIxjw/f/pxRWJG6MU2GmSZWo04i1TqoWIgSg7kVYc/lBxl5QlyvE214yTPkQXA
         oPaOQhRSvyKvFvkrrfbi34eWseGKYPteEtFBEoJ1+ENXDaVk9++ojr8ih0ChTql8zfRH
         gNyNWk7F+NusuGSsG3dIwksqDswTnXRLS2uV+iSOBd6sxtNSFY8ZpJ3eGkRIlkvn0UoI
         1t5iUORsdQwsJUBIW/MaoqiqUhWEQs6Goj27vxPotwEh2tdfy2TFjsbQzhSrfrpZhoJ8
         NCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aWy/oMQHsW9fA6RXtlumXoi+DkhjAcyLz812Ritm82A=;
        b=e+vCOzQ4yfVnnYgHKaC9tEwF3U6GCCrn+UNjJ+7loCGHI3u4riUxKLYzrO4jJbYdy8
         H3Xq33lbqsTLTnETZ22sYYMLXZR3UMp+FnkrGtGj2gyxBXpx7FAQvM2j1s7Y0nrYxaCL
         AyxIICN55u4+6VYlRF7+fTvSk937/4ecsHtLii28P8MaVaBVCke3kHI/78prddHLaMhv
         tDKMMVSSRmNGEy917PijT+uZRCEX3LzrZDUzLhAnHsz3mni77yDfVgFnCF6/VN+SlV1H
         lCn5rwy2qfxq+M50k4E2IvU6EkyOkvXhyrwXJYbdH8eMKOd/Sdvj+q3+cxGHTMjfFBlk
         hI2w==
X-Gm-Message-State: AOAM533sR/B8gymr1WHtfUtYwm2MziERjm5iN0w8Mw+XfA2osZij5xCH
	rmaDUeQEK2UTOAJNAXzq9B4=
X-Google-Smtp-Source: ABdhPJz+cMTqUR0B8B/aJgedNZuFtpnUhNrqHpfS7L4/jU7jGALoTnioEP7U2tj+BxwHbxz/47PR7A==
X-Received: by 2002:aca:f550:: with SMTP id t77mr1798679oih.71.1616174936945;
        Fri, 19 Mar 2021 10:28:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9732:: with SMTP id u47ls416615ooi.5.gmail; Fri, 19 Mar
 2021 10:28:56 -0700 (PDT)
X-Received: by 2002:a4a:d50b:: with SMTP id m11mr2196489oos.35.1616174936600;
        Fri, 19 Mar 2021 10:28:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616174936; cv=none;
        d=google.com; s=arc-20160816;
        b=QkewCdjXCi6ah3b7IfzXOZa/fIjHV0OwpAvYWaL6hZj1xAxoGxvJTsrFBSDunTKkSv
         1El8g0m+suTv1QUzHbGHUzBHysJuVZYXPVU6EISq/D2Jy1Nkgc3g+IFdG0Swm+tDwWSV
         S/hj7xp9fcn4o3BYHK4Er3gx0ktOp8Fs6P8d6HicNgZ4v9PlR+lrvCMaRCJIMn6NGn8l
         sGUXDuzBGvIAAzmU1WUsJJgTWNg72yJmRgzvXVmppX+MlwXXfw2j3x0bDV5xqwGXL1ti
         Kq9l5r097Ub2BmYSGVSf1mfITYX9+SiJBkHVqWcW4Ft26aVbGx6S8pkkwbawqUsK03ll
         nNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UfQ97ZQpQ+3cbVFmfAlrkTjFt0NmXtQEpIyINKUBKbk=;
        b=UhwGgMQklU55XL3vH2/FxKEuav+UxyWXbXGrDJS4hej+XoTImLVP4pt1QUJePcg5Xt
         LMolMTZtj13urbewmajOlDy1gwzD2Ue8lTTmjwAjHIDFyeWJopaX5RTncsNLqKEpJ3zY
         ffYVO93ybxFH1J0wV89MW6GPs/2sm6+happN08jMxF0iSgalSLO90UMkfZx4PSLwuvdl
         jXvdyvBZHDYOOP11qZ2PYXTywB0LT6+4c9CCgHyNADOGlwmDMDBhDyxlwGf88qGALjh2
         W8sDGTGcISG99FZ61Ty/ghrrRZAoCwYe6oZi0HVal5D0XjyaryHVhxE69xWuXqeMpT+X
         oijw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jRWOkmBZ;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id a4si267441oiw.5.2021.03.19.10.28.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 10:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id f145so7030556ybg.11
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 10:28:56 -0700 (PDT)
X-Received: by 2002:a25:b906:: with SMTP id x6mr7947193ybj.504.1616174935909;
 Fri, 19 Mar 2021 10:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210319150232.354084-1-eric.dumazet@gmail.com> <202103200159.d1zdEu9Z-lkp@intel.com>
In-Reply-To: <202103200159.d1zdEu9Z-lkp@intel.com>
From: "'Eric Dumazet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Mar 2021 18:28:43 +0100
Message-ID: <CANn89iJi6KEsOxUc4Um2D3_ZoA2KE1YitpeVnjbLHWYDc-n9hA@mail.gmail.com>
Subject: Re: [PATCH net-next] net: add CONFIG_PCPU_DEV_REFCNT
To: kernel test robot <lkp@intel.com>
Cc: Eric Dumazet <eric.dumazet@gmail.com>, "David S . Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: edumazet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jRWOkmBZ;       spf=pass
 (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b32
 as permitted sender) smtp.mailfrom=edumazet@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Eric Dumazet <edumazet@google.com>
Reply-To: Eric Dumazet <edumazet@google.com>
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

On Fri, Mar 19, 2021 at 6:12 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Eric,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on net-next/master]
>
> url:    https://github.com/0day-ci/linux/commits/Eric-Dumazet/net-add-CONFIG_PCPU_DEV_REFCNT/20210319-230417
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 38cb57602369cf194556460a52bd18e53c76e13d
> config: arm-randconfig-r014-20210318 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://github.com/0day-ci/linux/commit/684c34243e0c84e496aa426734df321b7ebc088b
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Eric-Dumazet/net-add-CONFIG_PCPU_DEV_REFCNT/20210319-230417
>         git checkout 684c34243e0c84e496aa426734df321b7ebc088b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> net/core/dev.c:10752:1: warning: unused label 'free_dev' [-Wunused-label]
>    free_dev:
>    ^~~~~~~~~

Great, I will add the following diff to v2

diff --git a/net/core/dev.c b/net/core/dev.c
index edde830df1a483535372014034d5b1ee1ff6210a..be941ed754ac71d0839604bcfdd8ab67c339d27f
100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -10748,8 +10748,8 @@ struct net_device *alloc_netdev_mqs(int
sizeof_priv, const char *name,
 free_pcpu:
 #ifdef CONFIG_PCPU_DEV_REFCNT
        free_percpu(dev->pcpu_refcnt);
-#endif
 free_dev:
+#endif
        netdev_freemem(dev);
        return NULL;
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89iJi6KEsOxUc4Um2D3_ZoA2KE1YitpeVnjbLHWYDc-n9hA%40mail.gmail.com.
