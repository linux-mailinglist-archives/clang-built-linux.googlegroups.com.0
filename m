Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBHEG4D2AKGQEVQB4ZMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id BB19E1AB92F
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:02:53 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id y4sf18690805ioy.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 00:02:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587020572; cv=pass;
        d=google.com; s=arc-20160816;
        b=KwwDr0VdaIPDMwljUGsFHjQU0QlO0woFsQrycDAyTEzaLKMmSi+SYqPbh2gNG3FtPZ
         +ZCMVRqebblSqKb4xHej6OmYk+if6Yulf8vwRQNgQbVrltFZc3UAtNhC5uRuBG9FywNX
         M0vc2dwYZrAsCSVLYaRUDeQjjdLjQ+hM+dHTwgnQSTnrOJJCFGpywLCZbatF1iyvYk95
         5ceTmAAdfjaToqlxnT0n/QXsvWbKsDwMzSpUp916I2hUsy7foV9WI+rW1qhvATeWmJhg
         W5OBg5qbeHqSShWnJXvdCv1tbq6pwaXXHNTvmWWl+efVjxyVjE6VX6Q7B8jl6gBMUgSA
         q6Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yZnp5UZff0zTWBHRpVBQDqRt7AHtQ2iGbijxtATmQak=;
        b=f4GrCSqJRS7PAJlkF4RIeyPerod68XqKgQaq630b/EUyhntfHEl0hdO/HC4mOqxLdA
         DPGcoT74sxAjE/x+R9H+DxjhPBYDMXz9uYIFlks4MAGOA/LRIzNXUHxeB2ukyT0ua06v
         DtAh04uv8L0A9IcsryEzxcp0fZwQ+LZaYGxAF/NZW5CSKTuEsHoPwH3p+MDWZXekSe63
         0i8P6nxAlQNpZbAqWCjYCJLPFtOiVupQhisAQZ2YBFatRufd5CEgKQd5z+QTZ66rXevO
         nsayJmWJc9H4GmX2uXvixrC7npoQSMPfCeeEVD7GTLNFg4W9mNp58GN4wmFSrlHAuI75
         lFTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GuHlx2TY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yZnp5UZff0zTWBHRpVBQDqRt7AHtQ2iGbijxtATmQak=;
        b=Sk9ZD75/c3KInhbjFbgVM+UMDU4iOwAIoXHEuWi0IiqND2PskPdGSIA7C269ILkk8U
         4IJ/rePwvX/1NALUlYPRLTWFl3zQq8uqBmLWRCvi0lS4GWfI1n60f3yZt0LZFmz5cnmH
         zLIiPwrtWV0JCmmY6KD9pFmntbvBIURk0n2yxKtE/p2MW9OCKYiBKca12aFxqwHIs6t+
         jmxaasphRZ17vn3zIof9S2UyYm/bkKGKSBy28srWd1VPNHTcGjzbym+0SNq5mCUNyTUG
         kkXHSt1yfJUknyCOwoqNdVUxoMHnKub2w1q6WXERueB8JdEftAugw9YlzxyU+1U2sfPH
         a+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yZnp5UZff0zTWBHRpVBQDqRt7AHtQ2iGbijxtATmQak=;
        b=PngzLp+G3ffZgnhfkfS2nB3VeuowZ2uIInb5R5txQxfCNUSRcupfP7aXLuQlKqTf+0
         mUBe3vb+rh5wHc0jIq9Vn0iZ8NqGczK7Op0mW+xJeLi1QAmA8CMI7JYk78JQBdOHf8Fg
         VHqilr7BXISGMs0eH/AJ6BCoJqWRw1Ihi0GuNqXhNIM0as+6SUjSaEQw2R1Lwne7OhzL
         FApfgWL4c/CjQutLhPxIJ/cAvr+vDI1p0cpN+Rx1Nvkuq1FHLnu7BOQAZ6fw9I1Cy8bL
         cFiZEY79XKntmwxWru1fKwbkXZzS+Hxvp7a1Xxw5MWniCKNs2OfVWnRCt7QklSO9avbs
         U1Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puaxu7s9Iz/N7zUvGzcNnXfEGn3ySyZv2I2RnA5Sy5AAEt3FoRD5
	kD/ct0E6OjnxJFUB52ciPzs=
X-Google-Smtp-Source: APiQypKpnAuGvVEmq6Wqs271d2Ec1qo7STvyGuBWl3Gj7CJLHcj3mgayY4fdiX3ZbsQ7TMKAJuBfcA==
X-Received: by 2002:a92:4896:: with SMTP id j22mr8737992ilg.158.1587020572548;
        Thu, 16 Apr 2020 00:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d2d1:: with SMTP id w17ls239754ilg.4.gmail; Thu, 16 Apr
 2020 00:02:52 -0700 (PDT)
X-Received: by 2002:a92:2804:: with SMTP id l4mr9554149ilf.130.1587020572052;
        Thu, 16 Apr 2020 00:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587020572; cv=none;
        d=google.com; s=arc-20160816;
        b=LPGsylHe/kd02Tgi+YVkgBZjzakh2xMI03UBVTDWjI8AaH43xgdFayLONGkWKUGjXH
         x6FP/8H3yquUn4tG7GW0mrX4js85v0PjmfPQtz6rouW3MKTUCh7ZDzbw0Q1WuQ2Fq4i9
         +yzw3VXLJ9E727sDOBeTrXytq9oJux1Xy+WF0mGx8+PLbVhfNxywX8QW62MRNhhDCB1t
         vkvTYHBu8ns4pyLmt+ZHw4jPmlhaMo6siZyRSiThCAAtYihDHQdYfX6QZvq/thgIxVzC
         MHwTP7t90WF2IzFq6UuebJNCrhpKjhcwiVx18tN8E6qTu3t5tIMQkwSXgFMH3nLEYeYu
         v1IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=14j19G2v90YCXOGZx1j8fhzRqdQDEETDJUOOBsxoNFQ=;
        b=upBnV6pk5dZnu5nn5FGH7SqNjU0ou2BZJz9GkR/IbtbZojIbs2/eD0vRcbbic1pr3x
         C8o2n/1ciSis756MGjv7JfYuX+gIAJnaOhb2enC+VlPvfXb5ChcLpw52mxWLuRHkQ0OV
         en8QvAV2LcOhV286RNWOAsk6DnCquZUoZNVRBoaP0HTHV6D7It2bCO+S1wTuqlSHAR/X
         i/NCXW955rTQxgPH4Yn/MWYwxeErGomUOYgrILxfUc5AvcWIegPP+zzJRJojNWbk7Kfb
         ZxvlUFW5w8PeMSCIQOsDOELT9wlFDYS0hZEaA595jHXH8qvRm3RkkWAogbEt8GuwHuad
         +Tkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GuHlx2TY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r8si596283ilj.3.2020.04.16.00.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Apr 2020 00:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E380921556;
	Thu, 16 Apr 2020 07:02:50 +0000 (UTC)
Date: Thu, 16 Apr 2020 09:02:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.19.y 9753/9999] clang-11: error: unable
 to execute command: Segmentation fault
Message-ID: <20200416070249.GA372946@kroah.com>
References: <202004161215.yWleVNqS%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004161215.yWleVNqS%lkp@intel.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GuHlx2TY;       spf=pass
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

On Thu, Apr 16, 2020 at 12:17:18PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> head:   53a9f76066d0832721801cd2fe2431facf1b8cab
> commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9753/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: powerpc-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bee6c234ed28ae7349cb83afa322dfd8394590ee)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace, preprocessed source, and associated run script.

Why are you reporting a clang bug report to the kernel developers?  :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416070249.GA372946%40kroah.com.
