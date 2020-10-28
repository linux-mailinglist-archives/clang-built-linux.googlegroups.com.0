Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGVR476AKGQEXOZKSUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A5529D221
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 21:46:19 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id b6sf418626ilm.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 13:46:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603917978; cv=pass;
        d=google.com; s=arc-20160816;
        b=1HOqrNKzJUGxh0HAfq+0r4yj/m5vyZaAeLNuwof6hOL2DMZLQMCoYUtKL016KrE3T0
         nWb6p2aCPJaei1j7Hl/jF2keHT0Rfi+lZSu/q9Aq7Km6B4p8LKdl9iZsg2xu0BwbBA+O
         1jc2UM7bkAn220R2NQb05laoNo15tpwdkwASa9BMhwtf3T4Nx1/ggPGXEkH2J6t98vTJ
         tNhCsly35WAegQiYoFIVath4EfsW/G6rumsHkJYO+IvU2Zo8oQSp0fJOgDVSn7vCgAGy
         83irT9Nz6ndqGSalIEZGna45oHiQX+uZt5joNAsxcTMXeQw8ZkAzYYfB+QnjV714NcJa
         R/uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5l3os11MuPXLRCYGQyArLDRGq7liBKZRpS7XvJVJ21g=;
        b=J8JqUe7E72ffgzc/1GuVHJiEt9XJDwj/OHXAEO24nxWIpx77MzxwvtNboOhWNLa4Q3
         b+Q3YWc6ZdA4Q7jQEpw4fuMI8DPvudelHPfmlvt6HJYc6Sv5Y1G6VIUQ68zOB5ZuZ/hJ
         PGuAC2c+3rIy8vadV308wrJ/O12en3T3So9KkT2o4Y1NfKqokZT8Yj1eZyBqAKlCEiPt
         yUacK7I6pVMBNErBLq7BqA1kXjVa96XydwrHzYy32O1p1gQIoAV+MKKBr37eYh71DS6F
         VxJSf7iEjGK5u1QmzSjONXn2ugnL0GJoiJQybPieT+OgUGRx4oB6OhoqkPdHFF/g3kPN
         Z2yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z8sgmFMH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5l3os11MuPXLRCYGQyArLDRGq7liBKZRpS7XvJVJ21g=;
        b=Gh0+j9iyD1Ylm6N9b81Jb0JoxI3srf6pfcM7spONHbKCuPIGscUqrvn8M98oYadGQY
         Ppeh/5WmyObeCOBZVkabn7OlvRV7z6dJCS1tbbw1njMW5aNFm3cqHBw4g0RsryavAO9d
         4+yABv2q+XMIEiU1xjAdlqqTfYyb7udu0jstbydEbLCtQjtA2NStxHEUG+6iP73RbyuS
         DAg5xNIJS6NFa/8eC7OUfj3+fWx3dViecM9ClHpbua8Exvxpw7i6Wbg9V631Fu0VhzNN
         yjhFKc7CvYaAHyyUvHg2RT0x9q9eT1bRIwr1e+qnkxAkioew2pNpn6uZFl2TUZERjRVh
         eFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5l3os11MuPXLRCYGQyArLDRGq7liBKZRpS7XvJVJ21g=;
        b=qisVQtI6ZzqJH3eYMFmCZGAu+/GP+fDScaVJRv8dvqNmettCW2Fbr7eA9IwrhW220E
         SjM8rOvauQNIoVrOxRdhnh1Morsmhl8LuucDmWVKgAvcqMFrVFdUffqZXmIlyOdJobzU
         akG4UArIp9HKKxUt6dIgYuWTnv/ejk24GmcjBSo77jiDObZRurfprSLR7SHtjvNbVS9A
         lGz4uvEtBW/cteFQaN2/fZAIl+Og5ddv1vGXiphbDdBjXX2DHPsPqThpspea8cw+blHY
         Q6hzDxX0+t5ub+8MXQxn8Rp2kIpiDNRET40+e4VEyGLLOmPMpLr4rEz8izLt9FdUAAvu
         olIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aXk8ztD6n+svNgHQVLv8hklZ9rqlShfRGfknDQqnlT9o7xI0t
	W/h16SoBQ7+1mzAfkAkjARo=
X-Google-Smtp-Source: ABdhPJyxs8Q5ifRK0826OPD1FH2NjYX6AojywKuaErnPhoTIc6WB/t6fDq6pEMWhBdNK7WT1vohjJg==
X-Received: by 2002:a92:db84:: with SMTP id f4mr716098ilp.3.1603917978516;
        Wed, 28 Oct 2020 13:46:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:138a:: with SMTP id w10ls91818jad.11.gmail; Wed, 28
 Oct 2020 13:46:18 -0700 (PDT)
X-Received: by 2002:a05:6638:2603:: with SMTP id m3mr862922jat.43.1603917978047;
        Wed, 28 Oct 2020 13:46:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603917978; cv=none;
        d=google.com; s=arc-20160816;
        b=QjxFSNmltPI7H+usu+ckUupM6cFNYtuycVFznhRSRLy96sJhyJudVySUJVJa3c0vXt
         PAPmO8DluRUkDt/IYyVO8s0RwfTDAyjxn6h+KF8e2iCt9+x4DOFvqWJ1CRxi5b3F927b
         TzddhGgWpPSNk0TUc42pVvPs5sL3Z6P9wFsCMnsoRyuupl5h2EwEUzBb22MbypumGNJq
         qxHDtpfKGCyKp1JSeTa8aZWEaiWi9YDmTpSXq+qKuFUQAvZW6JM6uaL4jqkTcz6A3K2q
         bpknTBm7iq5A72dQk3aFs3mPunNR0P6OTSvM6G9k6xzbApViFrzviWziDT+bYGjE9bUr
         NxYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XUbSu3BCB0YhMqyanX5SWB2WsjEzpdCHOQEuqnQkjHw=;
        b=SD8GMnWrb0kL/dqLbdsBMdWPOOuhdk6QsyBlb3fvnQ10P8P6wLA6TTBj5cMt/a++I/
         X2q5LWlGU1U8EljM0+Wx520mKmJzb3PY/n+pChTenPMPpZyeKEem6AVps3uZLTPNGOfu
         RHKdptZ7KsmPeQoECQn8mDG4bfDJgeqGU3/rod+NRFCJwuYTJZhLbj3TnVo83WLkWBo7
         N1SrG4P1wmimQPHf4/uRf/obMDRTm9jMHa9sAA0/9A7mMm8CgFXOtHIbeJ5mx+h+3iZq
         eFPjgptzYbl1jLJxaqh33F6hd5Rmy/Cj15OXWaUQD6WVdjugAdjwP/PNp/9XOqmefY0t
         69Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z8sgmFMH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id o19si37629ilt.2.2020.10.28.13.46.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 13:46:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id h6so491977pgk.4
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 13:46:18 -0700 (PDT)
X-Received: by 2002:a63:3041:: with SMTP id w62mr1091149pgw.166.1603917977410;
        Wed, 28 Oct 2020 13:46:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w6sm240257pgr.71.2020.10.28.13.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 13:46:16 -0700 (PDT)
Date: Wed, 28 Oct 2020 13:46:15 -0700
From: Kees Cook <keescook@chromium.org>
To: kernel test robot <lkp@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	David Woodhouse <dwmw@amazon.co.uk>
Subject: Re: [tglx-devel:x86/apic 15/35] drivers/pci/controller/vmd.c:133:2:
 warning: 'memset' will always overflow; destination buffer has size 8, but
 size argument is 16
Message-ID: <202010281343.76EEA6C7@keescook>
References: <202010290312.InCvU8eM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010290312.InCvU8eM-lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Z8sgmFMH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 29, 2020 at 03:20:16AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git x86/apic
> head:   32960489e2caa56bb259f8a8137b53576a2fa102
> commit: 176cfd8483128d01c05548162119c4b985f4f2ed [15/35] PCI: vmd: Use msi_msg shadow structs
> config: x86_64-randconfig-a003-20201028 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 50dfa19cc799ae7cddd39a95dbfce675a12672ad)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git/commit/?id=176cfd8483128d01c05548162119c4b985f4f2ed
>         git remote add tglx-devel https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git
>         git fetch --no-tags tglx-devel x86/apic
>         git checkout 176cfd8483128d01c05548162119c4b985f4f2ed
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/pci/controller/vmd.c:133:2: warning: 'memset' will always overflow; destination buffer has size 8, but size argument is 16 [-Wfortify-source]
>            memset(&msg, 0, sizeof(*msg));
>            ^
>    1 warning generated.
> 
> vim +/memset +133 drivers/pci/controller/vmd.c
> 
>    118	
>    119	/*
>    120	 * Drivers managing a device in a VMD domain allocate their own IRQs as before,
>    121	 * but the MSI entry for the hardware it's driving will be programmed with a
>    122	 * destination ID for the VMD MSI-X table.  The VMD muxes interrupts in its
>    123	 * domain into one of its own, and the VMD driver de-muxes these for the
>    124	 * handlers sharing that VMD IRQ.  The vmd irq_domain provides the operations
>    125	 * and irq_chip to set this up.
>    126	 */
>    127	static void vmd_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
>    128	{
>    129		struct vmd_irq *vmdirq = data->chip_data;
>    130		struct vmd_irq_list *irq = vmdirq->irq;
>    131		struct vmd_dev *vmd = irq_data_get_irq_handler_data(data);
>    132	
>  > 133		memset(&msg, 0, sizeof(*msg));

Legit. That should be "msg" not &msg.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010281343.76EEA6C7%40keescook.
