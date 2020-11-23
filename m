Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBWFC536QKGQEALRA4CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAF82C0371
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 11:39:21 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id t141sf14243630qke.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 02:39:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606127960; cv=pass;
        d=google.com; s=arc-20160816;
        b=DcpnNIkGqG59ADOHU03qxnz4gA/F2o/458WSMt8HB+IKP1+KdcEDmUVuy0woJ/Z12m
         /cOArXg4XbSXxvwEuz8mT5DMsEi/oNSviEUUJPfWMDh0yIuX7dS5LNzsSmSfBzFmm+DW
         YjsS0gkp3buRRlmWIlJb8EMnQJ1vPvRFck4iXQAUa/eu+nwRlRx0G8O0OcY9DOXK3Lrq
         CxE7mq8QE0WF7z4LUElQdt+JEbUE0o99ROc5lBuSrO+rLvbt+KbIBlPR31kM4307jZ5J
         B/r5uOUSTfi7ESomAHxe6cx9SuaFasj38eBNFN42NnudYAN8DVGp0BIi20oTbmzdOZ2o
         xnyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=PcZpjRS8qq4WBZOp+2dqtPIgF/PmYjVlSmoR9KO9mL0=;
        b=t36Cz9RGJVlbxqok1Q885GIWTbVOatI+JY5esH6d9XX9qSC++NfBpUXrwRyZyxpkY5
         +PhSzlv9Zf+ZJDIBLFOp13ZLtQTkaoGMtMVGD6FQkszvhHH0+UJsILHtbqRtlAPS6WWm
         JZ0A/Y+GjH7ODjGzz+tNhU+aOJnmxpEoVXeMPN/0fNW87vvpB/wbTPVDVN3AeMMg6kA5
         idJnVe5oZbENaiR7PeJKorF1+osLOso1hj1TK/gUAJTfYcRFtHgJe/TcIGqIM/EOf+Ka
         6cjzM/8PtMtGKbE1v9/FeFKG6qQ1ccrKFi+YG4VUB+lcayIbswU5DbMyLKZtgj3Yvu0b
         32lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PcZpjRS8qq4WBZOp+2dqtPIgF/PmYjVlSmoR9KO9mL0=;
        b=l/oql5jzhRU4BQ1ikR2TJcR8PKXNj74Qm54sW8Xyt2B4gQng0OETLQtzhvvI+kWZFO
         RfNzTdnkC73fOSNO+Ir0l7YcCb47/UzI8hGq2Z6f3WFaOOL7p2QpogjLSvFgoZemBf5L
         HmBmQtx+OvQVFi2AYZyizlLZ7O2Cn917ZzOZ/GSKVvAlnJ83vnmBzXVZCmggri147XuG
         Ru9e4j8d70fiPn04gV4QIFsr3E1X3JPCkDuc2kpe4EV1VVREmvjby3AWAIZq6sZTO8AL
         gVyZhxJA+qHrIjBgUP68IwjeNnaoNOMvdB5plqh5m+6mvqFmqacIKJE93P85jmVR9Cgb
         iymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PcZpjRS8qq4WBZOp+2dqtPIgF/PmYjVlSmoR9KO9mL0=;
        b=sXHWoAkgwLsMeFMrrBtKmed0ewEFvqkt9L5VRQSymkJXPNg3zpgw/iXFUBpkcpzoqp
         B21XS8jaBNRDkn+YTq6F9a5Ck8ER1cldg3JvKJkWRVMUPhn9XwvNqogd1smEQPa0yIMj
         2qd/m6AI8dV1dHPKxoxvJpO1A4H2r1eI4gh9u37FaX4VgZy9PTkwhdDvQnIJgDKTPZHN
         gzCHEbhE/3CAoyTZ98x/XRDGQmkPT9Z9nQroaFkiBJO9F4UEt754p7tlRiM8mH81P3XH
         alTYxyHL7mC3L/XElhrALbK7qzdF+GR3B02qgAmaLqxDriazggy9nplr94T9tnHUOt+2
         9GIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532j0UaJ6ljb4hlnVeDiJ5htoiUkuB91oBvYLmtHWpbpc7vJveJa
	gIFKWFbzoXHQJUgxGfdnuj0=
X-Google-Smtp-Source: ABdhPJy+8igLSWjOH87UNsDDOp/0L+lzBAdsR1m6YeoXxq57ePSdg9MiVHp0cX6if8qCkyMjUjQb5w==
X-Received: by 2002:ad4:44b3:: with SMTP id n19mr28452810qvt.56.1606127960656;
        Mon, 23 Nov 2020 02:39:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7904:: with SMTP id u4ls2397567qkc.7.gmail; Mon, 23 Nov
 2020 02:39:20 -0800 (PST)
X-Received: by 2002:a37:8ec5:: with SMTP id q188mr7347887qkd.85.1606127960289;
        Mon, 23 Nov 2020 02:39:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606127960; cv=none;
        d=google.com; s=arc-20160816;
        b=wcNXs2AcWDuhEB0gk2nffHCFBEHsm0mpl0K7kzJUGninWhTQ6pkINIoddEoxHU8UBj
         irDbbmaZt6NhOGV2gYfCVWtCNVQQjB+kSi0I/VDKQhGqAIYN4mcqhkLNIAHNcF0z7dkl
         HEjNewNUAX190vjJUdb9tX2PeUWBGS/hM1dQJLVJi6hsijoF63K3DDSyjW2lCFcVARHt
         E9GdkIl/N1SkjDoU0QUTSkS6bfp+MSWfBHPdy+fhUGQnZEYjIu5m2XfyzBBxDoSZpQUl
         JPHjT2xv2kBRMg1ODTf5cP4b6X3SXCuXNO4ULqhw3xJSw4rlQ2Wc8E34tNm7sshV1vdX
         bYzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=cMsE7Fc5WgODe4dxFsMUWTcWQG0TO1Q90+hV0uAD9yM=;
        b=V+4f7Nm+JNEIgrCa9W+/v/89d4VrILTQgSui3r/HcJJ/dfBhQsI0qdqApCVtW90eEa
         CGq0s/JRzfnaBoc8acN3HuK5eE898x4CASRXONsdy/rTerUMn6aKZiN+R6J9Uw+KsDGN
         KUHoOANpgUL9YhV2IPuyJ4t3dIJ3lT5K0BWecOSbERpVqhoXHW9Pj8oLZbmI8dQHA6DC
         RGGG4/fiFvWnOJNrmIbSIYdevro3zAskaJ96+SFpKr44wK8wwQRNu6v2MK+U2PIBTP4o
         6pSx3ZiGSaBS3aGIQrCgW83gq6XCXTsFAupxLd6wR/1YXxvhx++LsStMdOyeENUo+oeg
         0mdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id s190si787496qkf.4.2020.11.23.02.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 02:39:20 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: sbVqVqodUxEqBmLSa5BUGfKdvP8q/LpCJkTavMZJxIcDQYG/woMl5MWybN7FVHZ9TCk4bi0Zi5
 kTXCPtjAmP7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="169173844"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; 
   d="scan'208";a="169173844"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 02:39:18 -0800
IronPort-SDR: LnTLGymFhDLD+F75Vc+8xhKIR+E7tN1APiFLfeMTeqoGNWa/yj5zGiaidNwcm5E/o37/yNU18n
 x0KfGz6x8q2A==
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; 
   d="scan'208";a="327154350"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 02:39:16 -0800
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1kh9Gc-0097rg-N4; Mon, 23 Nov 2020 12:40:18 +0200
Date: Mon, 23 Nov 2020 12:40:18 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning:
 implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short')
 changes value from 131072 to 0
Message-ID: <20201123104018.GX4077@smile.fi.intel.com>
References: <202011211600.bZyprrVg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011211600.bZyprrVg-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Nov 21, 2020 at 04:23:05PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   27bba9c532a8d21050b94224ffd310ad0058c353
> commit: 7b285f41f7376dc37e7fad1e803995fd39f42848 media: ipu3-cio2: Introduce CIO2_LOP_ENTRIES constant
> date:   2 months ago
> config: arm64-randconfig-r031-20201121 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bec968cbb367dd03439c89c1d4ef968ef662d7c0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7b285f41f7376dc37e7fad1e803995fd39f42848
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 7b285f41f7376dc37e7fad1e803995fd39f42848
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning: implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short') changes value from 131072 to 0 [-Wconstant-conversion]
>            entry[1].second_entry.num_of_pages = CIO2_LOP_ENTRIES * CIO2_MAX_LOPS;
>                                               ~ ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
>    1 warning generated.

Okay, now we have an interesting case. The IP is quite unlikely be used on
ARM64, but my patches made the clear picture about use of PAGE_SIZE here.

So, I see at least the following options to mitigate the above, i.e.:
 1/ reduce driver scope to X86
 2/ fix the variables to be wider type to be able to hold PAGE_SIZE > 4k
 3/ switch to custom PAGE_SIZE / _SHIFT / _MASK and accompanying macros

And I still consider 3/ is silly move because as we see the driver was
never assumed to work with big page sizes (besides unsigned short type
here, PAGE_SHIFT and PAGE_MASK in the original code was as is and on ARM64
they compiled to 0 values w/o warnings, effectively make the driver
improperly functioning anyway).


-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201123104018.GX4077%40smile.fi.intel.com.
