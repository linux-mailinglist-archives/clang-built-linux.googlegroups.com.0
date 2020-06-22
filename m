Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB66FYT3QKGQE4LDJIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DB12042AE
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 23:30:36 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id a19sf11242433pgl.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 14:30:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592861435; cv=pass;
        d=google.com; s=arc-20160816;
        b=OvmfX72MMzQhcqVM4UlrBaC1Bqy1P8Cy/D1JS82qTlc3JAwThWnjLofskZtp3eTQvP
         zwRTtYlYO4plsvR4rzdjBhw3+pHwdu6V/3PY90Xx5jrWgJFQ5Axl906zY8rYc8G0AMQY
         xA1koFvgXafdnRGeh2MXdVrpopotFhnMzdy6+W1M/2GvaSaduO/q0W/Vk0e0xINuofQ1
         4i0MGyTwFHGhCP8jlaohSOW5e8u/v+3DBQrgJMWTq6agFbRj+cBfkAu15qA2+dwA6Vw1
         7WJjwlSuQaNQgR+jBf8v/55IiBlptpZIteqNEMfuEDBin8QCROMwY633tClwbWbn9JEl
         qqPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=oBgcQbvhQHj0LNy3CawmEWK8L0GE5GkNM6u5etj/9f4=;
        b=G+hptWBAYwgdfmNmWeOCfm6QOXCQDMMwZDC/vvrAaVyeNgv56Vncs2iicsTAQgGgM+
         dT3kbx30GUnOKhnxqD9iRw927RpBxxak15bnofCcYPzXSJrnL9uDkuhuDQJGMjCgv4Wf
         0jv3GkylbMoxsBmbpKdQhMjYOnGi6daek8KcmX0ILk4I8ZhfvBnbtWU7+P5Psu/yBI29
         GAbjoAey0epbV6rWpJ5doh4Iyp19pW9m5iQ/yd+UmEDVtmhM8QnMDCXG5l+HgMWxmi8W
         iQ/MnjGmVtE31teWhTlbOsHgHFboH55S1P7+RgzrWWFRTrBQn7iNgwN8lTdgCRx4/IP0
         emDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+qWx9w3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oBgcQbvhQHj0LNy3CawmEWK8L0GE5GkNM6u5etj/9f4=;
        b=R+awoWUaItLwQZc//APfsag93lfKW01isEgGFcRJ3P8o9BRQ8l7OYCX6udhTU9jcqV
         tbjaJ9FdH1V47eG42z04l7By+D0kJPcAQDrvg0mE75VX1pam3xdem+QchcEyrckqhrBI
         o89HxdzqrviUObqfi3U/c4ZXDiIYovL+uJ/1V5vtrq3MTii/4CfRefpnMSvSk94vBBPW
         Tdj51j1FksrGMlzUPVAFDl4tWXxRkN77fyP7ehCQcxupz9vwykeuJVtKLS6RV8jsilpY
         ZEq7rH2uxTZyBWCR3pfSjd+qWooI1pYsB9PA86WC0XZ7w0Pezw1D1q3k2ODD1RbcjSnl
         h2WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oBgcQbvhQHj0LNy3CawmEWK8L0GE5GkNM6u5etj/9f4=;
        b=gNEmnF6FUmic0M0N7tJtyPenBvjYd1Rp1K6BW20m4yX/VrqQ4lKo0WVtPoiU7OiGjS
         5nlL15vhAsWnY3+qpYkGLk2UhrtsSfgfst+8DfwZq5GcLCAJYEjMugqxthz/N3ZgdAz/
         8FnXFvQtIGICA1n8DtCkQRs1WDPvcxDrPO5v3bDJoYDYbIYkYhMD55HVDwTf4YqiBcF8
         PsMH4DVJhC6dmMdZhDrimfwX77bkVzKRxA7U56MMDVxF1Aqj4qHx8H+NcY3HtfC1tm9b
         KooRtXFH0/VOAT7mV6h1L9/X63AvAOTxLx3o2aT2XdlWuCCYL4hMVpva5TKxTq0u03nC
         86pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oBgcQbvhQHj0LNy3CawmEWK8L0GE5GkNM6u5etj/9f4=;
        b=pRjJviBKCZYgTaNREP7ZiISAhkzCGHLOOoom1iSEV9HHO+y7eEpW2mFV27UctKx2q2
         Q1TDbeqIe+OEHekNsr4qLznVRwsUs/vinkfnmY41IE9Ngw0+p6jg8H/mRG55jXGv8uiC
         IWhZUNtstqNs7RaVFicqHRnJW3q0XyB/uhXqLm/JmYurGCF8AntkimVAkGcCByV0pF+C
         PI248CDws33JMZHg1q2+uBvgLgYUnPEVhP30MgPQHSfwsfiJ+k7j4oPZJtOECN301UhC
         wh/NR9hDx1GjHDEoWep194k1TOZIZtC4Tc8XBm5YQraxx2Ya5Nui0kRCLAml8cmCEEWC
         p8Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yzFxermYiFEinM66+GNOGrhYnCQKnjurKk3MYjF0O30WVBDxS
	jSpcIQxBzHSnS2u6fOyAypM=
X-Google-Smtp-Source: ABdhPJwfVLlDt2+56sFKuv4OC9CgFJ0aknSIpjQU0NM12d5K5W7WcXmruE8kOS3zSEvWvenxR0TQ1Q==
X-Received: by 2002:a17:90a:3b06:: with SMTP id d6mr22072838pjc.67.1592861435572;
        Mon, 22 Jun 2020 14:30:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70d:: with SMTP id o13ls300326pjt.0.gmail; Mon, 22
 Jun 2020 14:30:35 -0700 (PDT)
X-Received: by 2002:a17:90a:7c4e:: with SMTP id e14mr21143715pjl.52.1592861435184;
        Mon, 22 Jun 2020 14:30:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592861435; cv=none;
        d=google.com; s=arc-20160816;
        b=FNzaHxww2ekgdRoqjE+pS9STtH+L7PWCV46MrGLMVEnxT8T87daKmtYg9KGA719CKy
         oBHgUN1iZNN92Gh0rskzH1WA6o83hrz2YIAxUeCI69dX5tnNUI1kZKe0Ea78oqYO45uN
         hnwTemge3ejrS27Y5fQ7GbqAKKlTjYg9cJHvJzOlHsnTfzcoC43a1lyD/iIpoNp0je4r
         BiECxslVPW+Rbv4cUr24m9Rm5TQTDANCxWNY9PLKn+NfX0wvuq1Z5BMrc3/7GMVzEFlT
         rge0tCPgfb5bPgFC8YIy+hRLGI05NpJHQElfhO+sprWTYXZfhU8RnXcjx4QxUEjQkKcv
         v20Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Alh49A0CN5/Dy/Et5o2DYS60z3Vehw87fhHfjYyNZVw=;
        b=J68IAxzrI96/8nh36R5CGn/HkY9StdPuDp0zkpWxJSjfoW1vjGZx9MKnHbr4YW2dfD
         8Zl2+238fhy+5z6Uy/WgsPzf2E+Clxp+Csy5IHBAAJrPz5lYEEaVtlcF04BAofN5hguz
         zC89ula+6yb5P5d1BYQBgJ1SMwMf36kVFbcicVz3tlslVzgic/e3qS9TQk0TWXq64B3i
         n+bYCcEHPyN4eI0h20KX6iwIcviyeqH4psxUc7DIC7pbrqrab6VUcxbcmgK6+odPfr4Z
         dbbQBcpoHTU6B2ob7yJN7FgXzj2MrI5RwuFgqt6gGn9280UO86i24OAlFvI6HSWT9Z+/
         swXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+qWx9w3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id t23si644270plr.4.2020.06.22.14.30.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 14:30:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id e11so17388707ilr.4
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 14:30:35 -0700 (PDT)
X-Received: by 2002:a92:1b4c:: with SMTP id b73mr17635254ilb.131.1592861434434;
        Mon, 22 Jun 2020 14:30:34 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id s71sm8598162ili.44.2020.06.22.14.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 14:30:33 -0700 (PDT)
Date: Mon, 22 Jun 2020 14:30:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [linux-stable-rc:linux-5.4.y 5835/6258] ld.lld: error: undefined
 symbol: ZO__end
Message-ID: <20200622213033.GA18155@Ryzen-9-3900X.localdomain>
References: <202006230516.p6gxJEM8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006230516.p6gxJEM8%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=W+qWx9w3;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jun 23, 2020 at 05:20:19AM +0800, kernel test robot wrote:
> TO: Arvind Sankar <nivedita@alum.mit.edu>
> CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> CC: Borislav Petkov <bp@suse.de>
> CC: Sasha Levin <alexander.levin@microsoft.com>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> head:   91f8fd20cae885cc65454d0c3c36d276f540538f
> commit: fecf17b609a7edc68c6ef8fa4750d2e75223a6b4 [5835/6258] x86/boot: Correct relocation destination on old linkers
> config: x86_64-allnoconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout fecf17b609a7edc68c6ef8fa4750d2e75223a6b4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ld.lld: error: undefined symbol: ZO__end
>    >>> referenced by arch/x86/boot/header.o:(.header+0x71)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Ha, I beat the bot :)

https://lore.kernel.org/stable/20200622195639.2670308-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622213033.GA18155%40Ryzen-9-3900X.localdomain.
