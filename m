Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBZHBYKDAMGQENVLGTUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id A80AB3AEC6B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 17:31:50 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id z7-20020a1709028f87b02901204079e8d7sf4116042plo.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 08:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624289508; cv=pass;
        d=google.com; s=arc-20160816;
        b=USEqTNcdRzleD/lgE7qLwN2sxFk/xf8rAXCRBRKcGcbrjyKFCVk/h9m6n1QG1CwtzB
         RwUfxTbtEnt1znhV6+Toozdk5WgfU4tS8hw2zXjmStwwZb2/kQMTaSwq6V9knXum+hwy
         F2qa5CNgnSVR6SLQ/Uz2noYKkJFBfAydHm2uVrKm+jZZZVm/1xY1cmuZV2Po4Ksv1g0s
         t7MPJUbtRBKLOV+qUBzBzsavu8l186l+tTAQoi0T4ZWhWK36nKZRHVrRLcw2FsHrvFYZ
         MzpnQRN1krEZrXCqlAnaK5x+73fiUO7bNkaOyOmTnxO6d502kRp02MNxBORsF0MyOui0
         COwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=W6J3RKVnesmoG3UBc99Gt1xt85ooQTFBaKQCZWxI7tE=;
        b=iaoZda0HoyQ103pBFeoYyT50aKs7g3Zpz9liy1KsIz+FbDp78kmgXukrjAm33XywH1
         d70v0X/bnvM4XN8ZIeHs7AkZxbxh9FD2HZKFA6pjdFjuVuF71HUPhgzUgsWZITeBq2cX
         RzxHRvc1MqtZxH3QwZ6dlt1cqYl0rlaHPRF69Oro67K2XUB9BDrjjHfQMbhjvRV5NZ5U
         XwEQ+/klsf/zxP1nNSaAZUgK00ryrWrxLypFVySg0tzcQEosDYdqH+3P2U7jJU3d7TJS
         mWqPUvJ0kIVhFZHodH4FhbIeMciBsYj0gujQUoWOhSbUh3734dUDsKMQRnzl1K0vUk26
         c84w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W6J3RKVnesmoG3UBc99Gt1xt85ooQTFBaKQCZWxI7tE=;
        b=YtwV3W/1H2iJhhnqHYRmEQICn7RGSA5kD2jPhP6PB3yw3J1XYzrAwjTh0qDfqm4MW2
         1piyjta817UawprhT0SHPxMFAKFweg8qhxWs8IWMHpu9yDc/JY/ax1PYjWs1FsY3SFFR
         68MI67vHWn+aOdhgE/BA8hub1VGjTR9j0IN0EycXgL3ek8zwjC2m8qkjN+FSJfFaUBfw
         /UERgUd+lT36yjWQui+/8DtbqXXZg+lZmZa4GD+MLhOSd75w4h8E58hU+z18byxu/+b8
         75A1HxX7QqpVw+dmydhr6ypjz4+21Gh9nol0etvAKAR9xdcll+NX+OTsNocvWNNcR/Td
         KXVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W6J3RKVnesmoG3UBc99Gt1xt85ooQTFBaKQCZWxI7tE=;
        b=EPIEAhvAQ8xzg1p187WweF8hPe6yk6Ura5p8gYJGON+rtJSSxXZhEvaO2xioXTObid
         hFCGY6RwfX0JSWq/JeHyqs8E3UwSG2+QzseOgTslXFKoJLZ8RzqwYPNiKzXNBntNaN9m
         LJxX+5mhR+f7XzIm3mZbj/laasQRlmKXr9y3esfzco4HugE+zwyhkc9yV4ztpr4td/Dx
         IrD4mM5x8LN/+bjF7cEd/tNjjigJFO4aLztRyYljA5iOZct8MXqXm0N7Sapbqofp7CcJ
         wy46/EX47MC5a1YAWz2a/+SMrOL6boZEje5krg1G7Kyz065PhpFHT6R7Zw3pOv1M061C
         gxOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317zEsiVQkkkUqVuBR37MF6SNwW55QVyvQnwugxtRDRmdydISP6
	vCPm3KxdjLmAA/kPb2BxS1g=
X-Google-Smtp-Source: ABdhPJzxjY15fPhURG8vX6Q8KyaQlxfO82SLYwrgnezcBXh9CJ/6waR/55aALiu5gwcGslsLObWTSQ==
X-Received: by 2002:a62:7d55:0:b029:300:9a51:ecc2 with SMTP id y82-20020a627d550000b02903009a51ecc2mr16246714pfc.36.1624289508230;
        Mon, 21 Jun 2021 08:31:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1824:: with SMTP id y36ls6241243pfa.11.gmail; Mon,
 21 Jun 2021 08:31:47 -0700 (PDT)
X-Received: by 2002:a63:a51e:: with SMTP id n30mr22149349pgf.104.1624289507555;
        Mon, 21 Jun 2021 08:31:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624289507; cv=none;
        d=google.com; s=arc-20160816;
        b=RMNIHG+BUN/vBH8p7yyQj0Om7pIG61S9dQzGHCdea6Tjl9YC+56SJNuyqTVrKjh6vf
         qNWwKlVo1YOyPRPtrN0t8HQ2vahWPHwjFqVtB9eumPAbUjvWpnImF67kP+d+2YdIQJ3s
         bMe4cDkZZ9IBI4gP7DrETe4qVi9Hp4SxEhaDMdzmeHrcJguBKqMr8GkRygybgWaLSo0S
         zhXS41frvTM2OuhsC1EWjItTGd8RW93jThSrT4hQ1w8lvl0x1zQwEiTewfsvLqTSPb//
         llFL2dYGadocQnfnhrhT8XOcKLa/EbtmF5r3wst/Kt1mbHUhbtu8bRfaU/Id5O8zK3F/
         yo8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=seEmDSiB75CTB3U7Uv+CT36sEE1NAnSVuNL3DCb5fBQ=;
        b=Xh+HiL4sH2YuXexVuPKCZLi72r9Ng5EflWHMxAqCEcxFi8e6bE1/e7+wYHVIcM+PfJ
         8B0Kgf+69cnftklnvX0pnT4emPPE8FMhQVdJg1srzRL0CuO/hHdJPVUcmXlGssl71dXT
         QL+ulJrAxYv99FCcRK8KN9UER5T5xYb4ARMFxVXIEEVg27KjnWVN5JBp+xVmCI5YM8Xz
         SDo8mlcu7enXSHiI/mKW+1nou4fgbDWHtFEwgnSJX7hb8Gx6+pIOaCsrENjQbTMPbKsX
         8vXeNksEs7FbU08cPSaWrtTd9t5hvGe0DxEwjqHn704lw2XhCY4GeQzr9oQWo/G+xA6Y
         ia2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id t6si1324937pgc.4.2021.06.21.08.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 08:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: iJLHgxGNYx1vnJcV2AoWtP+dPyIgzqM68PUQ1h+L7xlCa08z1Cxpha1ydLIxI0gLE+Q4FyDACP
 CwdRbU5j7xUg==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="270713976"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="270713976"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 08:31:40 -0700
IronPort-SDR: DTgTf3i3ayNQYlAoDtuzKx85PfxW/w0UIWvhREZFhbcJb9UKTuu5FG6+VdyCH/Qpi/HNax6tJZ
 hyCXQZ8rC5Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="641355337"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2021 08:31:37 -0700
Date: Mon, 21 Jun 2021 23:24:10 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	x86@kernel.org
Subject: Re: [tip:smp/urgent 1/1] make[2]: *** No rule to make target
 '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/crypto/cmac.ko',
 needed by '__modinst'.
Message-ID: <20210621152410.GH158568@pl-dbox>
References: <202106212054.VQpAXTHM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106212054.VQpAXTHM-lkp@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.100 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Jun 21, 2021 at 08:57:01PM +0800, kernel test robot wrote:
> Hi Thomas,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git smp/urgent
> head:   b22afcdf04c96ca58327784e280e10288cfd3303
> commit: b22afcdf04c96ca58327784e280e10288cfd3303 [1/1] cpu/hotplug: Cure the cpusets trainwreck
> config: x86_64-randconfig-a012-20210621 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=b22afcdf04c96ca58327784e280e10288cfd3303
>         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
>         git fetch --no-tags tip smp/urgent
>         git checkout b22afcdf04c96ca58327784e280e10288cfd3303
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
Sorry for the broken report, kindly ignore this, we will fix
this asap.

> 
>    arch/x86/Makefile:148: CONFIG_X86_X32 enabled but no binutils support
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/crypto/cmac.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/crypto/md5.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/crypto/sha512_generic.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/drivers/net/net_failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/drivers/net/virtio_net.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/fs/cifs/cifs.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/fs/nfs/nfsv4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/lib/crypto/libarc4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/net/core/failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/net/dns_resolver/dns_resolver.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/b22afcdf04c96ca58327784e280e10288cfd3303/lib/modules/5.13.0-rc6+/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko', needed by '__modinst'.
>    make[2]: Target '__modinst' not remade because of errors.
>    make[1]: *** [Makefile:1770: modules_install] Error 2
>    make: *** [Makefile:215: __sub-make] Error 2
>    make: Target 'modules_install' not remade because of errors.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621152410.GH158568%40pl-dbox.
