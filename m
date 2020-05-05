Return-Path: <clang-built-linux+bncBDH7RNXZVMORBT64Y32QKGQEBTNGCAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE211C5FED
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 20:20:00 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id k1sf3032558iov.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 11:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588702799; cv=pass;
        d=google.com; s=arc-20160816;
        b=SsMLjFBSdtXvOE56hEvWVhPHPG9qLHrqLlEw/buecJEUeOhWVAPbXsf49YqijxiiFd
         NeEsj68wnfYQ9tk/++uHPCGER9qCq0Q3K1SgvoNdKWD+8A/Dm+t+4aZsZnmiGF2egoko
         NJfYNBYQPtiykklRAICYYOpQcLQPgmeXN4uSzgFXxGtkbbAK7TtIDo9epyImRI91oKdX
         neJ83o4BX9AvakxwCfm7+BypNbzMuLIrQTsmWSDGehCNXYQnqdSyNUazDdwlPsBKgQEV
         So6A+bM4zk2J3lOINsCx3xjzOht6FBIpgWdh3wuwy5dSnN8YXoxc8eTVSSNPUaXCSXko
         Xtmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :dkim-signature;
        bh=IM8HdBVMnr4zZigU0EZcZNRCVAGpUoOR3BGxdwQCD5M=;
        b=0CU6G+N0xITgA2cybHNzDuar2mNCsAuzwOhLanffnVTwthj0baTM9OwAR7jEMw2s8R
         +to/lyP/aKpOtaym/GXZmGp/SowPfNxYLRskTm165XIiyWSr4ZQ1Nhunbpy0BVczYzym
         hDtXS9sIJ/Kd6L6/cA++vou0JKJ+eVFCxFSUHHaZ7/YQsRCjNQiRCVJ6xPmQsPZKqu8k
         7DqkUgOu/2L27yJpyHuIsD1P0M7HhWTD/M/+AcykGHWeRqIRiX42Vryfa+mDLMVrKgk0
         nZ+d8dDTpxSqyl2v76kzn1i1JDh5iZrsLJWtdzv0q013jf45fWDQ08PwkVgYzL4n2XTw
         rvJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fOkxfPjN;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IM8HdBVMnr4zZigU0EZcZNRCVAGpUoOR3BGxdwQCD5M=;
        b=QY99YBi9RLAXB+wE6vK/2/1R/zJhKIwGCAjwJeXn9JoE742JiN4KQa6ZG1ONe67RiQ
         hwZx0zhcbCCHeiMwy5i668awv5bMa+RlvlK2kb/fzXACNT6b8Gesrtj0Lt8tt1zuz+sH
         DJ3AQIx5cDp/8Ng2KoO1+YSCUxETkdPOZv0uNTGpAl37BbYbh/rC1uOyBICI9bYEvkgD
         UnyOB4BoBy5RnZt6MlKkoWHe0LjCVzH+RVko1UyAtygG94nvQsAEfbjlwoiBolth+ZZB
         79lZP7Fa8IVgbnYJDnddeD3Qt0Efk4hoGrPW5E30soTJ+Ju+/QN4fWA4onPYMFtYvbmr
         16Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IM8HdBVMnr4zZigU0EZcZNRCVAGpUoOR3BGxdwQCD5M=;
        b=jjWadcN6CBsnXNGRommCcWdKdn/WQG6Zi2hZ+vQw69mwpusi/dY0kiXyK+3N4OfxJ7
         +zIM0zHBKlBXlow9IQ7HiEaQngSSkR1HTasvzT7a4EHEjJ1TW/B3ATnIAuyxqT23Fhpz
         1VFOJ5yHlbknXcLjsqgQgEoSb8v4hdmPCYgz7mJTCNnv7xHArob86Ekp7m7CIOW5zu0i
         GSUTSDXLD6OZCLoR8djr/mSLw7aKweUqaRGHh0cFqarvigWVAsJAGLZJJEFp8a0L3Oh/
         DJY3w6TS1NqtK01wdUkLRPZwSCyi6C0Psuw6M8cAV0DPFh4kslt7OBc0JRrwhVE/u7Bu
         5h4Q==
X-Gm-Message-State: AGi0PuZJNsJAyuGsvajrEc9pbhi6V2UxHFfyYG/FUUWUsmSKG3+tYEHe
	31FwKu16quY0q1LElQgCU0c=
X-Google-Smtp-Source: APiQypL+upyrEqq/6uu0ceS1CE2Xyh1iYPw7XO55XEv9zOTO9OZCanD1G7AKEvisEzpGM7fiWG9Jvg==
X-Received: by 2002:a05:6e02:60a:: with SMTP id t10mr5075015ils.302.1588702799163;
        Tue, 05 May 2020 11:19:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3bcf:: with SMTP id i198ls1013874ioa.1.gmail; Tue, 05
 May 2020 11:19:58 -0700 (PDT)
X-Received: by 2002:a5e:d709:: with SMTP id v9mr4804463iom.195.1588702798770;
        Tue, 05 May 2020 11:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588702798; cv=none;
        d=google.com; s=arc-20160816;
        b=HuxSLvQR+FQRRzL4NTKEEEzVurFr6RUnMlOPonw2PSkxUXTuC2eLEIzZd7Dl+mQ9D8
         0nc9VaYKM8ZBZMttQ8Kkd1IGmXr/tBKcRWmtZAKBUSdeUM1jvuJdhfOA0zSKhk16YOyz
         TAjpCFw/oGmwNuQy5s2antnP80wm6qzECS0erFN8MtCIBfj1qwZivoEQhdW6CobTpuS/
         pRDkpgGOg+Qe48bZfsuT6AQJxZRkySt1qybLTf0+NjNokAZ6MVy6EEwZvHff59v02qE3
         dWguegqqmriU2z87oV5ynWCiuJLD6qjJ+InxF5vx6wCdHnquvC2VfnSYvxLkOtM/TPR/
         yGVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=KSooIf4palw5U28p2LB3i39UZZYX1TzbniZvS/0/KoQ=;
        b=SC3YuO5oK5KdKU5rzFxmUc9JWvPadXD/ScFNuc7eToNlTMV20JvToQVRF6CP/yOFui
         WYgFTJzfpgP4S9pfZ3j9O+CoPE43sldoR9HUJ6S8tyAuGZYtVA2AVJq9rjIi1B2JscJQ
         5qwt7N4zDjEA5jHCRxHayxJOJX81NLv/9ntek56qzQNj+eyCON0J99qwoitwiD//Yf9l
         bZsvQoXeNg+uv9SlBgnMpDq+1t/836ohqEvboT+VyfqBZeRlx7zqCzoOgbXqt7Z5M5sp
         RGHOVRudIUQl11aUAjQhbI7aZJ83xWs4NG0K1z15+QBfcAX+I7vKCjeJeVSaiF5DhJOm
         8+HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fOkxfPjN;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k13si241292ioq.3.2020.05.05.11.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 11:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id b8so1359872pgi.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 11:19:58 -0700 (PDT)
X-Received: by 2002:a63:f59:: with SMTP id 25mr1342846pgp.420.1588702797793;
        Tue, 05 May 2020 11:19:57 -0700 (PDT)
Received: from [2620:15c:17:3:3a5:23a7:5e32:4598] ([2620:15c:17:3:3a5:23a7:5e32:4598])
        by smtp.gmail.com with ESMTPSA id gz19sm1254014pjb.7.2020.05.05.11.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 11:19:57 -0700 (PDT)
Date: Tue, 5 May 2020 11:19:56 -0700 (PDT)
From: "'David Rientjes' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-X-Sender: rientjes@chino.kir.corp.google.com
To: kbuild test robot <lkp@intel.com>
cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
    Christoph Hellwig <hch@lst.de>
Subject: Re: [linux-next:master 3972/6402] kernel/dma/pool.o: warning: objtool:
 __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
In-Reply-To: <202005051634.Yx7kMDrZ%lkp@intel.com>
Message-ID: <alpine.DEB.2.22.394.2005051117060.230747@chino.kir.corp.google.com>
References: <202005051634.Yx7kMDrZ%lkp@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rientjes@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fOkxfPjN;       spf=pass
 (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=rientjes@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Rientjes <rientjes@google.com>
Reply-To: David Rientjes <rientjes@google.com>
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

On Tue, 5 May 2020, kbuild test robot wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   dfd71d381f7e1aa118e0368774aa05f5c4a48870
> commit: 82fef0ad811fb5976cf36ccc3d2c3bc0195dfb72 [3972/6402] x86/mm: unencrypted non-blocking DMA allocations use coherent pools
> config: x86_64-randconfig-d001-20200502 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 45b7d44ecb01780e26dc8d3c30bc34e32c08dd70)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 82fef0ad811fb5976cf36ccc3d2c3bc0195dfb72
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/dma/pool.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> kernel/dma/pool.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> --
> >> kernel/dma/remap.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> kernel/dma/remap.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> 

At commit 82fef0ad811f ("x86/mm: unencrypted non-blocking DMA allocations 
use coherent pools") there should be no new kernel/dma/remap.o warnings, 
the Kconfig is merely selecting DMA_COHERENT_POOL.  The patch series 
actually only removed code from kernel/dma/remap.c, it did not add any 
code :)

Since there are tons of warnings all over the kernel when building with 
this .config (probably because of CONFIG_FRAME_POINTER) I assume this is 
unrelated to this particular series or anything that gets introduced in 
dma-mapping.git.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.22.394.2005051117060.230747%40chino.kir.corp.google.com.
