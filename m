Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBKEP5L3AKGQEFJZ7APY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 791181EFF7B
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 19:58:01 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id l22sf6166972iob.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 10:58:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591379880; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrlV8xR5WION4kly2l7VkHIps/Oy/Edj8f8BH1F0AAEfWDbRfJLy3zkR/U0zbCWoqm
         LeDA89K54gAX8ovZVJccUG3rsUpq95OEaCGncHZYZNIax5MkSJhya9sefwXS8KJ1GoR0
         Z8LAeR7HCU48KdazU3kZ9ULU4bh55UTHbSDxsEPv4ovamyUdPHEsUPHTRhS4Z3zsPAk1
         NWL+veJ56VUUNe1R3N5qrRz8ZXsvgPtMKIPCiOmHqe+LxQ5pquhdkQvHGOO6fewYA/Ao
         BS/cYn9wkgaq+9Cz2h/wVETIDQTmRGVB1qSkxRSuPILhHJngDSGaNFwPp+YimIHu8z32
         Sg3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BjkayigOG59xX3V9PAfnwdrpPT8er5MOuLLg7/RGOfI=;
        b=GGJv1hUIQe+rj28PyK9tiWmLMb8xfRxPJutxT81l8E7j/i0z5HyIMqlnTul7mHviL5
         1ggdYRO1l0jMZFf7jdZVqBEs5VmGDdKotMIsTBUsdrOlmZddTT617TW4o4uAVMF4sD1w
         CeUQJY90/QVfCc72hS7suN4+YwagkOcdMHwAoSv11pp8yHvqwAgYA4DX1koAi7kdktGx
         BjR9hDrm5CCYW+nY/Yd+Es6iC0ftBVkO/2rANCv/HnO3FceMgnwcEygZodV+JeXClQYf
         koa6Kw7uCJ1NLb3c4noiOyfDUQGeivqFjUFYUqG9s6DfVMKejaAceozH0NS6yr6HYoZg
         IHkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HDeyVVRX;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjkayigOG59xX3V9PAfnwdrpPT8er5MOuLLg7/RGOfI=;
        b=M07/MqT1w77gDWscP/JL0/aJXgXN1EFKxsv48/oYGV627NUDzw4h0Pz6BZMesymJLi
         Qj1wRrRzkXlU3P10bvrDWpur69v0NdcfjLiibiWvnD9CKFjslG8NvSI+eyWvpyVm6bg1
         kwvMEY1CxrWp0OGgT2kbyZC58hGP06jl8AVPLSUu6Qq8s+ScKyfz0FlTfbc0x5vLynC/
         M0i+F55Ok2x5LJxUynykLuYoYAtB64s9vDCPzsIoLYJt2W+Uscp+Dfwl1VLIYPU6RQ8Z
         xdqq6+073oDcrV4BQyNs5/GW17UaPsOzHLw+LpFfaejN+BRNSlDVpGZ0H3XTwAGUaxKQ
         gX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BjkayigOG59xX3V9PAfnwdrpPT8er5MOuLLg7/RGOfI=;
        b=G1MPxT13r/2W2ATj1+3yjEj0vH637814H0956eg3QzttxjAbN5O55naI8j+BI9Rhb8
         R3pvkpa5ArnBSQyVZNLxngtiNLc90aELyyA0ooVQTbLZUzOuKI7Am+lOAda5ZRC7i29g
         KgPc3ca07kFNaV4YihBcUK3PJ0SBdGwOQiBr6v9nEfa3vewIylrLYPMc1wKhopPZqNJW
         Hrx60EICcaK0lTVUQCfACYhVBFIyIwKdGQa74aNLYfyGC66iXe5kjVHSgxfrtmMm2cEn
         Xil0brzfzr4z6ef7Bw5CT8fdcgbQUQpxluef700MuwZ3ZSw51SN176UwwnYXN02aYmLl
         xe7w==
X-Gm-Message-State: AOAM533bMQJEfOoJsqBLD3L7MOwITsOFZxHuXKIPuHsZTQ3wlgRaJacM
	aZUi7DI1QQOU7PAeu9XpSHc=
X-Google-Smtp-Source: ABdhPJxxJ4IuFPm1p4v+N9QXpL5igLOvieGaKE9XDsItq+RlDqVbBjKuWEAIGLRSn/otCaxgVL57aA==
X-Received: by 2002:a92:40dc:: with SMTP id d89mr9918068ill.170.1591379880449;
        Fri, 05 Jun 2020 10:58:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c205:: with SMTP id j5ls2656627ilo.11.gmail; Fri, 05 Jun
 2020 10:58:00 -0700 (PDT)
X-Received: by 2002:a92:a113:: with SMTP id v19mr9325418ili.110.1591379880064;
        Fri, 05 Jun 2020 10:58:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591379880; cv=none;
        d=google.com; s=arc-20160816;
        b=0cqSgjH64dv287A3bnioG66I/tQN/Fy8n+7KonQU2ncaZEfDgj3WRQ7ayEwBQ1VQgh
         yg8leCEbOF+suc58qnRl4N5AcLo5n3gN/fNeWj4cj2i3i22yzLFQndS8cqX8XBU4EXvt
         8i7y1SKBARpc52iWOQCHCxWhHDzp314idlZIZuK5ZlN3bj6yEYZkOdISivuXOnWvCEqS
         bwh0CQctVz+JJ6/ojQhWrtXALFIV7Kfla3Orb9pa1x4vAOunhUVOhJIPnjLUNP31qrXD
         cGFOOXmuRdiwi+i49yF1LY9GWX8lHjR6A0fkoh53ndvRj7MIsRFMmJDcd5nmwuPltCIo
         iqYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GNAY050UTtlYY/P92GWEPGsmsEp4moXq/0KoI0uPFPk=;
        b=N/EfLoUvhnuTeO2XVIEr4dpt5TQwWnD35/HmObqGSD/gb8eH9BWbXIaQtxvre8RV+7
         3kmUTquv/GyUQJaj7l0uKkoqBE3eg3AI5qrk4T+kiHykQDrwADzFaDvXcfzTNeIBXCRG
         kkL9bq29JFx72DoeHkHf29isg5w0ptWRJdDgBp3jC+Z7gGfBhkMphc3u/vUstb2ac1Hi
         crbkVsG9iurAF7LpHWoAQ1+OVSI7bY4XzJs0lFpVgX905RPOgDYuKelz4Y5eJaIRAseq
         ayCMp1Ox+Jy5HegZObdXeeAWHj4X8Pg7gPbbR0p55wLHDrQXJqr7FPPfUTjfoYxy0ciZ
         nH5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HDeyVVRX;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z11si225649ilq.5.2020.06.05.10.58.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 10:58:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id v17so8324350ote.0
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 10:58:00 -0700 (PDT)
X-Received: by 2002:a9d:27a3:: with SMTP id c32mr9017525otb.233.1591379879465;
 Fri, 05 Jun 2020 10:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <202006060103.jSCpnV1g%lkp@intel.com>
In-Reply-To: <202006060103.jSCpnV1g%lkp@intel.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 19:57:47 +0200
Message-ID: <CANpmjNPBxkBBnD-y9Hpvsne3o6JA0KYgyxZhbCN+kZv4CD4yWQ@mail.gmail.com>
Subject: Re: [linux-next:master 10774/15793] kernel/kcsan/core.c:829:1:
 warning: no previous prototype for function '__tsan_volatile_read1'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HDeyVVRX;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, 5 Jun 2020 at 19:42, kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   af30725c132e2e5c5369b60369ff0771fde7d4ff
> commit: 4e23395b9e97562d12b87a330a2fca3bf10c8663 [10774/15793] kcsan: Support distinguishing volatile accesses
> config: x86_64-randconfig-r013-20200605 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 4e23395b9e97562d12b87a330a2fca3bf10c8663
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> DEFINE_TSAN_READ_WRITE(4);
> ^
> kernel/kcsan/core.c:757:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> void __tsan_read##size(void *ptr)                                                      ^
> <scratch space>:92:1: note: expanded from here
> __tsan_read4
> ^
> kernel/kcsan/core.c:776:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> DEFINE_TSAN_READ_WRITE(4);
> ^
> static
> kernel/kcsan/core.c:757:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> void __tsan_read##size(void *ptr)                                                 ^
> kernel/kcsan/core.c:776:1: warning: no previous prototype for function '__tsan_write4' [-Wmissing-prototypes]
> DEFINE_TSAN_READ_WRITE(4);
> ^
[...]

In the case here (and for all other *SAN or compiler-based
instrumentation), it's clearly fine since the compiler is the one
emitting calls to them.

How is one meant to act on W=1 reports like this? The kernel seems to
be full of these. It seems wrong, just to shut up W=1, to start adding
-Wno-missing-prototypes everywhere.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPBxkBBnD-y9Hpvsne3o6JA0KYgyxZhbCN%2BkZv4CD4yWQ%40mail.gmail.com.
