Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB5OY7T2AKGQED5ID3YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA3E1B2E46
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 19:25:11 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id z2sf3604275pfz.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 10:25:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587489910; cv=pass;
        d=google.com; s=arc-20160816;
        b=j9HLf8UkQg4BXFut16gs52n4InnoRfm2KvInXGWhTohnj5Y5Kfov30HvQkOLhFTeT2
         Y2lcUmFc6y3BVfdvez096lF/xOX3F6Tn/kyON4kRV+PIoA581toZ/Tp/WPmZKB2LEQxC
         528zkzoM4AYtJqTzUw/V2nYneTZa80UnLo/f5Bekk5ZagZXS8HnIfikagONFrBR1Qn0X
         Orwf6lR/UKb7CaaNgZhSXVKaUCFWWDgaOBFr/6QF9VofyQr7w0Snx44cKRKiu56rc6F+
         +snUcgH5vb1zyAnStsnQKKw+A/SEWTepmoFaW8XishPbAKy3jm4RZ8UlEl+88kk3YFOV
         Ojug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Eh3ZaySiDI9GeiY+nym8y5pMSMYjBJeZbOdIjaWay7M=;
        b=CAtNv6PKuWptI7QOvUTnBEMB8K1S7yGs4meelDK3w1r9ueS2C+fSib/cIo2V4wUWRY
         2wZgOHXK8umlye/0yBTrL0EwEBRZFkrYK7xVVlKkeSmvfl2MQmk2mKQ+WpXW8zGkxO0O
         re/jFsT6FP2M0tqRvRNFAZhXaCL24YI3jVGGGuj3SFd6l6lqWZ/85vIOBGOYFEL22KIz
         XcbfTCTFxyNEmo0gvdeAwCCCHdESb7ioomLa8mfn36BIUxXy+AvAMuhcy2sa5jthQAPP
         AhLODOHicfacKkwEXeSXD2ruMDbrw5brGfkNnJzP3lEuNM+RAJKQ9jnDW1dpHcTHnZjI
         zfBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dqj0r4lx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Eh3ZaySiDI9GeiY+nym8y5pMSMYjBJeZbOdIjaWay7M=;
        b=ntP2Kxe/gJvz9pDK8bF23Z//5MfFYuSeLx8PWdpfGgvyDRwmjXvl+jGJtP6PLIQMXv
         bws86jYNK1hhofQzJ+eAFQB1e14u2rOepzUZqJUrQNB1A+D77yURUQSz1Ne4xk/AEaSC
         Ap+2p6xhWnJadXJqlES6uw1lrRv1TNgwjoIZSJ53TZ7LgEMn+hGLo7ZV2/etklkf6AEG
         1/QTpGtezaUktRXrNGBrKxkvk7wZpwAPno3PiV5MS4pyeWnfDlEeU29xZt80ZZ2MD9xl
         TX/XH36TRuTMtBLB1PT2CtvNs/3S+Wg0MPlFuDgapc0YGLF91RniJzqOqX5JBvsmIpBa
         J75A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Eh3ZaySiDI9GeiY+nym8y5pMSMYjBJeZbOdIjaWay7M=;
        b=jutig4WZv2dcdZrooQsFZYTQMhdmR/sBm6gpCunRrDk1IlRzuojkZQfa7WUnZ22zFc
         0NJXmq7w5dDAsN1pLuzWlRMLu/NuaS0yQC8AVL77CK6JFvLB9gKet9uJV3RPacbvW9DP
         vA7UqLI8JLUeFiwO2luCqjN+oFzf3+cJRHoPnI55iu3ES5LoGcm054qNIDNYKsjBlMob
         e4dEstQzOSkWMYL5k1d/imlXuMaMEMRwXtcjxiRduMSIatAxz8toxVwxek9PL1kDtCXE
         NGjzm+W8du7GDf/6pAqO1CevmxC1i5EhBCDKXw63VcFofHzXIYvZc30bbU4y+uyqk62M
         cm+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYV5krql/VujIJsmk5NnGLgPTgUsiUWNpna02rJZXhPG3F5X1sL
	+QvlvIdbLAPWz/LQFVZrO4w=
X-Google-Smtp-Source: APiQypItB1dSFNigEKji7gUlfJK4yHN0txYunKOw+IWW3tYHlz+qpG+UkoS79Qz27QEDjbby9KUaDg==
X-Received: by 2002:a17:90a:bc4a:: with SMTP id t10mr6997287pjv.104.1587489909813;
        Tue, 21 Apr 2020 10:25:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a415:: with SMTP id p21ls13358185plq.6.gmail; Tue,
 21 Apr 2020 10:25:09 -0700 (PDT)
X-Received: by 2002:a17:90a:77cb:: with SMTP id e11mr7169036pjs.189.1587489909349;
        Tue, 21 Apr 2020 10:25:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587489909; cv=none;
        d=google.com; s=arc-20160816;
        b=uL+sNOAiPLVr30hSIAvWaTdlPGHm0rxy97enGYoRZPZyvuavFk+4y31Uk/+ZKSaXfx
         7SiVzn0DDCH6TKa2PEVvMT9T8yhZLVsaHOW8x4X+TID8092JdVEQS2f7zWj1UwLetSoQ
         qaNBu8LzUPrpt+XkZtnqh8TjkNZOqzNLAqCz9kKQsT+JVFhfSA0NKK1CcTCQ58eHWptI
         3gIfWtOQYTcJr3s8B+AOoCOfKmsM4l3UAvj6ZrFGcJE4YDrkfwJf3biJaj//AVfH0YV3
         jTusC15mv+qut63WxjkHTJV13a2D6yM22j3Vs7NqvDYEyM1ScbGgSjjWYNDK0O36IeBB
         vesg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cqX+mj3r5kHyV8OVrpLKQ4CFUX88rlcN+nZnN6+UD0U=;
        b=GzHFwTXDiMmA9EVi91FiPR+fcgRftC23aKsRUH0twxdMITMmL+zRD7kw9W+yX1//Ym
         LjDa6Jso0bI/7JFzbSqcJoo5j/yi1APKiEUpyACDnOi+TiHVFAb4TiYNeCmDG4Jx+kZB
         1jivp52+Vp99gOLdRy3lYof0uW5zBLDHhyVp5GBVd4rHBoijkjzcqDTbFHDiGFGBZiif
         acarXHvQlryk2l7n/XAx3BmYe0VlbRBEYa5K3pLdplryVeTPZGJmbOSGPr0VMUCCrLf4
         BZ7Ae8tsXuWxhmn1kO63H1Hi/bYtd+hilcGWUk4e/SMt7VBeDdBsMY22YvSKT8XmHBU3
         /m8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dqj0r4lx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t15si275034pgb.1.2020.04.21.10.25.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Apr 2020 10:25:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 959A7206D5;
	Tue, 21 Apr 2020 17:25:08 +0000 (UTC)
Date: Tue, 21 Apr 2020 19:25:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.14.y 9768/9999]
 lib/raid6/recov_neon_inner.c:13:31: warning: vector initializers are not
 compatible with NEON intrinsics in big endian mode
Message-ID: <20200421172506.GA1302375@kroah.com>
References: <202004212301.p9UBumfp%lkp@intel.com>
 <20200421160257.GA37385@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200421160257.GA37385@ubuntu-s3-xlarge-x86>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dqj0r4lx;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Apr 21, 2020 at 09:02:57AM -0700, Nathan Chancellor wrote:
> Hi all,
> 
> Sorry for converging on this commit yet again... hopefully it does not
> continue to happen for much longer.
> 
> On Tue, Apr 21, 2020 at 11:35:07PM +0800, kbuild test robot wrote:
> > Hi Dirk,
> > 
> > First bad commit (maybe != root cause):
> > 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > head:   e60eb60a661c0738dafb0907de42ff3ff8ac91d0
> > commit: 88f7a6aa7fb9aa5076b65489146045dac865f1d3 [9768/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > config: arm64-randconfig-a001-20200421 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a9b137f9ffba8cb25dfd7dd1fb613e8aac121b37)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         git checkout 88f7a6aa7fb9aa5076b65489146045dac865f1d3
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> lib/raid6/recov_neon_inner.c:13:31: warning: vector initializers are not compatible with NEON intrinsics in big endian mode [-Wnonportable-vector-initialization]
> >    static const uint8x16_t x0f = {
> >                                  ^
> >    lib/raid6/recov_neon_inner.c:13:31: note: consider using vld1q_u8() to initialize a vector from memory, or vcombine_u8(vcreate_u8(), vcreate_u8()) to initialize from integer constants
> >    1 warning generated.
> 
> Already fixed upstream:
> 
> 1ad3935b39da7 ("lib/raid6: use vdupq_n_u8 to avoid endianness warnings")

Now queued up for 4.19.y and 4.14.y

> > >> drivers/video/fbdev/sis/init301.c:525:42: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
> >          } else if((SiS_Pr->SiS_IF_DEF_LVDS == 1) /* ||
> >                     ~~~~~~~~~~~~~~~~~~~~~~~~^~~~
> >    drivers/video/fbdev/sis/init301.c:525:42: note: remove extraneous parentheses around the comparison to silence this warning
> >          } else if((SiS_Pr->SiS_IF_DEF_LVDS == 1) /* ||
> >                    ~                        ^   ~
> >    drivers/video/fbdev/sis/init301.c:525:42: note: use '=' to turn this equality comparison into an assignment
> >          } else if((SiS_Pr->SiS_IF_DEF_LVDS == 1) /* ||
> >                                             ^~
> >                                             =
> >    1 warning generated.
> 
> Already fixed upstream:
> 
> 864eb1afc60cb ("video: fbdev: sis: Remove unnecessary parentheses and commented code")

Queued up for 4.4.y, 4.9.y, 4.14.y, and 4.19.y.

thanks!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421172506.GA1302375%40kroah.com.
