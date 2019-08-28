Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2X5TPVQKGQEBET3N2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B54BA0D80
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:23:40 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id m19sf732054pgv.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:23:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567031018; cv=pass;
        d=google.com; s=arc-20160816;
        b=psxDRfz3Q8wvQjyHvyq1rBVRlvpcAKMBAIE82RNzNiGuuXbYcgsbhMr1fdAGcR/RGl
         bli6VO3c+kEtPaOc34Q3Zm9/HR6rAuSlfnLZgR483hZKdFNa5d9n6+Bu0+oG7UFPtnCC
         xhztwRVYeu9qH5P8x0KlOTxEwwMmzncg5T4gfpGBBtBHTBGbDSc+8mE3Poe+zt2zUkTt
         lp3RSU8JBOOu12dk1DxKzmQjQqmo6LyOWQj7kk6zAINcHf60TmyTNb28wo3VYQrb6eOy
         hi9/okAWQM+QdAjj6HkwCPlI3OxGAJ4PTFR3x4+rsIg251+5rmHGwGcq0AMmsd0aYe2f
         93+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vBRj6iPNFxYU8hi0CpMEbk1vxrYcMjhpRQtTUq00usE=;
        b=0gZZ1EKds/RHZSKkVXVMgG5q3w5TAulIJ3ricSq/vALOtXG4wPxO7nS0VfNHwb7D57
         vVwIYRYQKvm0Rh+X9scUF107O5HWbFaAxXk38pdFUiUv4VWVmGKtrMit0o3EsSeKj0V7
         BhXYLZ9mruU6EJWgjlVe9EGVWvO3u8fCJKKfD2pm7loe4G/VZG3HTFe/XdiJqo81His+
         gEufKZOBIp8VQ2+Ku97xGmlF65huBaDaAT9T9LRLqghIdi9tE/foJJ3ee/OuBKN171Wu
         MD3AyHKSB4Avl3ucesu+itlyML0vhTMH6b0zuQ+n7mdDcaWEP4VNFd5aA35cjzqGjoxX
         nanQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IoEokfOa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vBRj6iPNFxYU8hi0CpMEbk1vxrYcMjhpRQtTUq00usE=;
        b=VYnAiP3RSsvCYfDts4LkjIJl2BwMxjPWdpZA/a/wa4t8q4DwPbKwv/nBh498t+KPgV
         XXzbo8o842fMdbiJu4hE6wFbKtY6JGQiLWBNfFkdk7wo0P1gNEknobWr11TFH96vUy9d
         w7cKshTI8GsGfOEoilfJuAWCI5MaH8oXy7BzRW1/BtesZrIbQfgeFwENdJ7ZepSVXdh9
         JM6w7EoEu2AYgoCURuQ8ye9Awnez12v9mbQlHPwnjwpMkv3KhWlmFV9Ig7rXqMYcHV5O
         IekoSmd88cd8BvSNzEWaWEs5WQtaK4MkVQgkDtNNPHof4YpJSP+52ue2OYCENjYPOuJY
         /pgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vBRj6iPNFxYU8hi0CpMEbk1vxrYcMjhpRQtTUq00usE=;
        b=g+KX3BfLxzZkgNELGl+kSrSV8ACnE7FAgRI110/uQ4HOPWpxsY09KKGBWvQId3H2oP
         IL8wB4tPA4aUvZixbizE9KL+79F14R335TH33uZV29Saq6fVDRBy5aQI4z4q6hbqESrq
         zxVxzN0nYxLHIe9j22vp0syjvGP9E8KHerUeR6qAEPRxZxxlR2nh5wtcV2iU5Ofgwh2J
         S86NzdU2oIzfGKzDaTMSqqCGiXBi4H0mYMgrI7bK6xYDefFI+5QCosgN1wmoopTXWwUM
         XtAt1zo1842bbSZX29GzKz1llSOsHnE3OyKck14W78UqaktJkIekkRqzcSvFSU1vqD3a
         OOVg==
X-Gm-Message-State: APjAAAWq1nmYTtEVYp8id6ykSeoQTBuNODWOmarMTwFUKopHrvTe5JqW
	/ba/rLls+93DEIlZbMqgkQE=
X-Google-Smtp-Source: APXvYqzl02oz8nSRe0FoGGHCg6Lkf6kvDC5kRSq/3MwRNT6DA1s0aCYfEAaYPxy0AqdNSXmD6gjm2A==
X-Received: by 2002:a17:90a:a013:: with SMTP id q19mr6504007pjp.64.1567031018823;
        Wed, 28 Aug 2019 15:23:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7449:: with SMTP id e9ls130520plt.0.gmail; Wed, 28
 Aug 2019 15:23:38 -0700 (PDT)
X-Received: by 2002:a17:902:e493:: with SMTP id cj19mr6539519plb.292.1567031018536;
        Wed, 28 Aug 2019 15:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567031018; cv=none;
        d=google.com; s=arc-20160816;
        b=r2QKBQBuZPVFAVshwCussivqoei5d8ZB4BWKDznL5ddq8Dd2Qf5qwGnLqEOJ0Bvz/1
         F0PG5+C/6rBs5ql7Uw7PEP2oo0DSrWV/fMywNagEk/xdUzDrYV2FUjlA9vTk0kIn8N97
         jHXhWf9RRIuTGv3fFgX+QZY+52oeYYQOpSYnT6jqeAl667KqVufNz1tLOTrxvEnDw4t7
         wHTlY9kNzGiXWs/dwjiFuWGvNjYVaMUPVoGGqkLswuia+0XQZXcKdo+B4M8j1KVYhNRM
         6LI4lCIl+aB3qrZBI4VzbHX0Xs+OnToSs/QLzfR1S406uaDa2fIQSy0V2YZcyuzfPv39
         +rsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/BIYfjiFmXXSvxK/LximnkBEILr+F53/aDwPkzRFZlY=;
        b=HgExhy/0IRyxFZdly97wS9zY2Tg19ollOOE0mTJAlRK6wze6pvL+jJK8VnxwTnKdfa
         PGnmWhpdjnt8pxuUvW4HejFJd35zHXnjV6EjXqPw3fihWRjgQAQlaEOeTJsDjTGlVJM2
         8cuVxaBS1nhtIEFcbQlmL0wHj7ZT9DKfoc5YeLUV+ep6JcgQ1fAHvLXKR2tYROKJ9Enh
         IuKGwZAxpacxp/8x3DP3Y5Wu3gPhdKQ7B7tV68w2z7/eHRmau6YtNdERcFH58iLBSke9
         Fb+SABhBUaOAlzTrpD3xMZOAWY2ihUe+njSf3D6elOM4l1cWSVHHAP0V5HMcnW401jkI
         N+1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IoEokfOa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s23si8581plr.5.2019.08.28.15.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:23:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x15so446325pgg.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:23:38 -0700 (PDT)
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr6611224pjq.134.1567031017778;
 Wed, 28 Aug 2019 15:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <201908290644.aXNcUJQt%lkp@intel.com>
In-Reply-To: <201908290644.aXNcUJQt%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 15:23:26 -0700
Message-ID: <CAKwvOdk3rWQz3V1Y0KzoP+4RWmjZyZVhXKiD77E3f+cGhwU38w@mail.gmail.com>
Subject: Re: [jpoimboe:objtool-dead-end-ignore-fix 1/1] arch/x86/xen/enlighten_pv.o:
 warning: objtool: xen_cpuid()+0x46: can't find jump dest instruction at .text+0xed
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IoEokfOa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Josh
This is a report from 0day bot w/ Clang.  Looks like this objtool
warning is new to the bot.  Was this one Arnd had reported previously?

On Wed, Aug 28, 2019 at 3:19 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Josh Poimboeuf <jpoimboe@redhat.com>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-dead-end-ignore-fix
> head:   0db8ce831cfdf0acdfe1d938dd4de67821c3a5ec
> commit: 0db8ce831cfdf0acdfe1d938dd4de67821c3a5ec [1/1] todo
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 0db8ce831cfdf0acdfe1d938dd4de67821c3a5ec
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/x86/xen/enlighten_pv.o: warning: objtool: xen_cpuid()+0x46: can't find jump dest instruction at .text+0xed
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3rWQz3V1Y0KzoP%2B4RWmjZyZVhXKiD77E3f%2BcGhwU38w%40mail.gmail.com.
