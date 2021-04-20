Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBH457SBQMGQES557UOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7AB365E7A
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 19:25:53 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id p4-20020a1709032484b02900e6aa6adc54sf16081195plw.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 10:25:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618939552; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3hoA4NYZbzS1tS/Ys2wb8YAaB/V/Gd/2/CLEfn6Y1MAM858GwL80TwDrz6bH+RvTb
         q69YZtsBZ0rYt/oz5y4fll40Iikex0zYseCjYnW7P62Wk3FINbItmOh1q3Kc460NnLKK
         Rim7cWzt/F+Gsdv6N8mMj4b2AvJAv57LTPqdwD1FQr0qf75IKoIp3hpNAAPCojqBsGTQ
         wiZDMRxtsEQewEm+A4t5+bko/m8fwQ6LjSdznFk+vk5mh/DHrPfgLRIPGUYymFHVRShg
         cX19QjloOtbzHZNap3PESQi8d6L5I8exmfjKTYjPhrQhy/ZRZzBC1Ise/vgTtS0596/p
         NVKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NKfesEpPldlfmK7txV2zoh+eS9derxoQJD7URwkDZN8=;
        b=udVtknO3g66kp4XL4vZZVcdVNyDEmwKrnntiS+1fiIpVKtCzIoLBRhddEJdyLwKHjv
         K2vZzc0bIUG6445UgKsVVzQHJn6dXYpGvkJ//Fs7RKEYBRX9FnpJ7/uq/0Cwf8PqDvlb
         FKh8uPAsVOiPKPfEKEJOuR6TUkj63aId7k7eyDjcGiuM9Tk+ztLceMFELoSurlXCCCnK
         LDDZXyuRvcQ4QvyLODyKnh/RMnqj8/WhAURJyv0CD3ZkfYA44mlpVbrqW1N9Mht8C2F/
         vieIBxHT7qubnaWno1mzLVXjkXIDsea3KXqT6I/z4N4JfWFLikvpfSWpgO/cJ0pRWCEs
         niDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b="tPVqAM9/";
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NKfesEpPldlfmK7txV2zoh+eS9derxoQJD7URwkDZN8=;
        b=L2TjAFiwVrVQ07nNPYLCLJXfRL955xXXA4W3tb40t4p+Qb7P4XFxFlI3l20zlQYWKp
         oTYF8H7bcJUuB30uIn67QgIyXoDNdPLQ8B8yAD/FeLYpyBNeC4W3WzKn6sgEUy0iMam5
         UD9bpjV3r1dL9QjnMS93sonuLsjsZSz0kV5VjKCR/1qfNkPEuddY78/dbWluVNzeOYci
         gmUhV45CoPD/ji60Wgr/vtkwv0kfIdEvPRZp/yavWpQMnW9UCa88+sEnTKUzPd3Fr1il
         jEeEpfGJVU32m2QIIMXB+8R4zdSkLxsl7d0hMnkoOdLrCEHrHNTNIScJ0n14MQV92ylb
         pRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NKfesEpPldlfmK7txV2zoh+eS9derxoQJD7URwkDZN8=;
        b=Ojz8w6FuBteQ0TI7YbSbe4PmY9z8eykPqYrclsGZ6783lE4m5L60xGaAzqFAMU+Qge
         pRFT1Lv3mfA0DiQKqhhXGYVaoIooQMtbz8XLCKZ5Bxb5MGmdOuKveiM9q9AFYMdIEW2m
         duc/d8dDz+1NPUEXrVpBrYcwvl77Lz8b7j8J+FSJ7iIYWVUTs53WraNrpSSeOv/dUFCQ
         casnaMUci2kq5oPIqS28uSVpmFyfHhbpH7/qb9x+Dw/M35WGEbeH8mZf8ZG+gsgYg1Ga
         orpaJ7ezyhzNgcg+1eSyMIjqLYqElBpCoNDJ7rUTVG6Xwj2iV2bes1wVTllCgcymdn6/
         TtHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+4x4jtpZyrv/mQQPr3PcRHiaMO8yJcz5jI4cxf0DmuDEL1Kn4
	dMBH2akoPx8ydpM7g22hB7k=
X-Google-Smtp-Source: ABdhPJwEEdbbp77v80S0iSoKn2wn3PN5RBkmhSL45FQpDAAosxXSnA3SZVSHRkj55KmEOAzinix6xQ==
X-Received: by 2002:a63:4ca:: with SMTP id 193mr18682918pge.86.1618939552239;
        Tue, 20 Apr 2021 10:25:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls1992606pjk.0.canary-gmail;
 Tue, 20 Apr 2021 10:25:51 -0700 (PDT)
X-Received: by 2002:a17:90b:4a04:: with SMTP id kk4mr6533017pjb.68.1618939551584;
        Tue, 20 Apr 2021 10:25:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618939551; cv=none;
        d=google.com; s=arc-20160816;
        b=Gu8MwYk8hIWWN/c8rnMazItLTLQAa0qa7K0cC0QomkAdx0XlPMe91Y5Og4LOhLctfx
         I3Zhea4w/4Ocz3QRNpA392h5lAH1ULqSTPhj2I53g7WXnJWwdxoXBINID5ikZ5onvv2w
         w8Lyg2gp5WK5wfKADx4PxETWYgprHJ/VyltIXmibq/ID0gqIBUxwTBpAcdOF4dRHgWRC
         i79xeCRaXtQJ1Xo0U2GklCGeEY0gHn13SVGzzkyRmimmqjeukHTNk8OEhn8MiXtnuaVJ
         DPRqzkf3JxqoRW3JVmxc0mMPZnFTo7IDnDic+ccnEMePDAPbs0/0VPBzWjtv727yvi0O
         F2BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tnUbzqSfUOJRt/GeMJHVMVYdi/fzSVEl3kwdUfD6FlU=;
        b=c2noirlhr1BSoiWzhnwoM792h6+mNeBZ3rMrCTcoxfDFDSazVTu3BDctaBi2MosFvI
         j3rUgSl8KNTmSMXP3vljEdwpX/2UMFKRBV9neDN/HiO6A7c1lcDbXLryo+/fU9yiMOgJ
         W5LCJVwn0f2sCV7sIBs3ESLJAiRwZnUMBcZoYY1dxMbv8CUxKvzHjzCGPxX5GaAroAL9
         1EvcyfUhFbzaMW6xer5/qD421QgH8uaLYz9aQFMcxjP+0VNEDbCBzDJkJYKyibE8oT2+
         zk3Fg+RAc/idbFfoHd9AeABqW8M0IKO7eFveD1WxE4A/GDyRElSRVDUC38b2Pnb93Qm4
         Emjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b="tPVqAM9/";
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id i17si486108pjl.0.2021.04.20.10.25.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 10:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Received: by mail-il1-x130.google.com with SMTP id c15so32712264ilj.1
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 10:25:51 -0700 (PDT)
X-Received: by 2002:a92:c691:: with SMTP id o17mr22820078ilg.253.1618939550511;
        Tue, 20 Apr 2021 10:25:50 -0700 (PDT)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id z25sm1719454iob.26.2021.04.20.10.25.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 10:25:49 -0700 (PDT)
Subject: Re: [linux-next:master 11067/14048] fs/io-wq.c:668:20: warning:
 unused function 'io_wqe_need_worker'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202104210134.ZYekcVpL-lkp@intel.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <09404a97-8cff-a2af-6aab-4120ae200892@kernel.dk>
Date: Tue, 20 Apr 2021 11:25:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202104210134.ZYekcVpL-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b="tPVqAM9/";       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 4/20/21 11:15 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   593ef1658ecf61d3619885bdbbcfffa3d1417891
> commit: 685fe7feedb96771683437107ba72131410e2350 [11067/14048] io-wq: eliminate the need for a manager thread
> config: mips-randconfig-r023-20210420 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ca8eef7e3da8f750d7c7aa004fe426d1d34787ea)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=685fe7feedb96771683437107ba72131410e2350
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 685fe7feedb96771683437107ba72131410e2350
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> fs/io-wq.c:668:20: warning: unused function 'io_wqe_need_worker'
>    static inline bool io_wqe_need_worker(struct io_wqe int index)

Thanks, I queued up a patch to kill it.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09404a97-8cff-a2af-6aab-4120ae200892%40kernel.dk.
