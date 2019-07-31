Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5FXQ7VAKGQEIM4DL6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5327CBC6
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 20:20:37 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id h7sf15040621ljk.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 11:20:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564597237; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPm8lok7gM+9stabdaCNcAhIXVRkGvWHnNR+Xc1pcliJvp9rLkp4ouKJYISmanUkVe
         GiZAUZhD+kEWeHJIfkwenARBVp9qetGeznW8zVK1Wjjc4YsUZ5PcG9c0VMK/l+aC8ADr
         Hgi2k/Mxlv7Imslf0HeC/qj/MIXyQBxoWekNa6rMJI8z/8wdi7rz8UtEgW7pgTwAr1Vw
         DbUHwl2hivNwqE0P44gJqGIuEtfm2iCY/n85lqq3rmbxYM4rgqXH1nS3NpH4SqODgZm8
         Fme16xY7llRQY5YH/1pzVADIb26cydlsXDoZzJ1hVMHsA/Yq5m+8/iM3lzYetDozJTFW
         J0gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=tMGjBq2j45V5y7tR7cHXkRABDESBvZh79qqrOGpcwSE=;
        b=qxuP7o/fh0EMK9npqlpK1zGwfmQU+TkP+kKWozdZLPBue4RhvctaUUGfR5sJPIzITD
         oprI78l7i6Ve9F2pVpAYijkWXQ1M5DAUtSDkbHT85XjllU+ApvCO8TLU8syDD+/JSnrp
         GTlqm14tddPzjyPDLdLjMmrbpxNWqGZMILbC8HndedxBQR4gHJahnenIZqmKhJ+mYzWu
         JZwXCkhjKR7w+8U6GLS7oSGU9Tdg+Sqm5WVSgM6aTTEklmYh4WlOb8BD0G1ce38/GbW7
         CXScHGnXVU/6+Ps/84JuplzpIrQ/U6Nt0bZgd3I/m7dP1DwBnvtASF8RiiZazCX9AR0v
         rtJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cgR2TIkm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tMGjBq2j45V5y7tR7cHXkRABDESBvZh79qqrOGpcwSE=;
        b=p01EYCuRsoDaug9UsaKjH+zer8H4xLFPLleYXyzP9xH+FQggoSUfjBo6m29/yPWkBk
         /O8yPwENTl3y6bXqWPk63BDsk/DlmaeU3BD/jqHuUMT08MGt71EXldnR8TE2zmN75hZq
         Nw0F+VKfUwAZZmxa2hBMYC+uGAInUlSh46I5a2D0TciFrH+hHBDWjyYU5427FA0aw0Ln
         titwZJIVJwpWR71pqk97+4UTbjDiURdRsRdP2nHeTQ835/5B4b+Aq1iA4rg/iVloVP5I
         DgOwEADxe34PCzauZecb+nPiQHEFK7mArEGwxwTgqaz5gh8BuiFoUr7i4g9hPAlicr4A
         uhmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tMGjBq2j45V5y7tR7cHXkRABDESBvZh79qqrOGpcwSE=;
        b=EGOgfgaMyzKIAbg/aZrWP4cOUxyf5Ubblyu5hQGdPBEJR/L4tkv8aznigs3Ywedp6z
         qa7jW7jmezF57dXNXbHGtDco57FoCE9/Yyu1O7T0DNsTGqnXgJh6UqDAt7Hxw13SPUgF
         VX9QS1eY1D6SIR2zyTWkq05UEVkHZVrF5pVffigwOClnKKqxNFmPjxSXmwlozcwheFkT
         5eyagE36GnRS1ymVvx8tRHi7aFWOrm9Pwjz5WWbQjxf9PxpcljN4odGae4Z4iVWOAIbf
         r/XKRE/fzbeUvX/+NI6VoR7ErmCTwL2EmpomLAbuRUhIhX8dmoNshWeyot/FqOE3E6Gj
         4acg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tMGjBq2j45V5y7tR7cHXkRABDESBvZh79qqrOGpcwSE=;
        b=JPtvj/QTnCpxmNXCxEzSlIDZixiV9hT5a9JxRJ226k6GSup6xQ1pZRwms6ebReuZLS
         4Pp3bNU+6tZLqahBiWMRpAWvsqcgjk8vxG8vlW5SCn6aYhCWjAdI2mtAnRntjMBAltp/
         CQWnpnhGrScHsVMwGPVTrmPB20j2DsvhsH0EivFMAvK2LHLe+k7POJoVEl/tUc0x5BfR
         Niu80X5BHWnZlQN16ghwq0WA+FDB+SIN5vsXk8Df+pz3Whmfvhab+PTZig1YE6117Uk1
         IF4QRFPxnGDd0BLyoGOcCWgtvyERP1ACsDUTWnI0kB9DPTHwptzkQMVS21FpJeeSJsYw
         +wjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVLomo1qxMCbXPJn0wwAbakp4BEg5V2EloY/vVYXuGf9GwKled2
	XeRhNLcvr5r3vU6aNPRxGDg=
X-Google-Smtp-Source: APXvYqws9NPGduy/1fR/6DNS3NNdsACCkcepzNxhGkgX3xb9JYXI/4nf7PhjJVigp+Xutnc2BQ5tyw==
X-Received: by 2002:ac2:53a7:: with SMTP id j7mr27375963lfh.112.1564597236950;
        Wed, 31 Jul 2019 11:20:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5605:: with SMTP id v5ls5776609lfd.6.gmail; Wed, 31 Jul
 2019 11:20:36 -0700 (PDT)
X-Received: by 2002:ac2:5492:: with SMTP id t18mr6660767lfk.41.1564597236470;
        Wed, 31 Jul 2019 11:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564597236; cv=none;
        d=google.com; s=arc-20160816;
        b=tKst6Bk2dywh2kCsvSPM2+nMWjuenS4r/GlBgkp23qBtvUHWyPBiBAHWQOVZaADzC9
         QRuk3LaQc3k7+h+atjeUneIKgADK19BlcESDzBKUeFSCnOmzxPD8TQM+OiG9TFkN8EJY
         U1Nb+03DODvuAGmfucNrrL/Vbf94XL/wRRR6DB63XSFanAiMf0wCo5Xu7+PIzZrURo/Y
         AQv/Y50hGolh+NuxpLCdOTOGOAVpqVv4XKpeBijh4Ptb+oYtR8QeaC64tS9NUNTreVM6
         MI2YV8YFfn9KDsuvU312flQSh/G6f+7rj5uimDaf8YP2xPlZCFfdc0sBgto3C328HgV/
         24sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8grfZTWtmh27vRYSIElyL8Bvko5k/Kj4m5kpFd1H86o=;
        b=KjFz2M7fzgJQdLTbrEsKj3kQLDSEB4OUROO4eKYgUvpUMWL/Tt3wfbGRNJU4rtu5WJ
         CnrejrJxj+pIa91hYZlQDdKUmisEgqlcYYR/8yLLpzLQJTDtZHj0dFN3ZMSJ5XRm1aSE
         9gJsQbluzEbcshykiELmuVz7D+1pmiLwjPBAJhXEseu4A0FtzChf7IFUmra4yT8671rV
         YFWC8TKQ4egwhurjT6A7BtFt5O1FfL6HxpSOm8LWpwZh4Gtta/XBQJsS0ZdA6/7kx9/Z
         u+z9lkfqy1sv/usIPdlWs17RsZsFdLrqNzed71GjecYL7LwosqjSxVfZs9ppesDz0BoM
         bpZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cgR2TIkm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s14si4495969ljg.4.2019.07.31.11.20.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 11:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id y4so70741863wrm.2
        for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 11:20:36 -0700 (PDT)
X-Received: by 2002:adf:ef49:: with SMTP id c9mr7571087wrp.188.1564597235694;
        Wed, 31 Jul 2019 11:20:35 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id y18sm65892180wmi.23.2019.07.31.11.20.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 11:20:35 -0700 (PDT)
Date: Wed, 31 Jul 2019 11:20:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [driver-core:driver-core-testing 10/14]
 drivers/of/platform.c:629:28: error: initializing 'struct supplier_bindings
 *' with an expression of type 'const struct supplier_bindings [4]' discards
 qualifiers
Message-ID: <20190731182033.GA60559@archlinux-threadripper>
References: <201907311954.dz3OTnJA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907311954.dz3OTnJA%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cgR2TIkm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jul 31, 2019 at 07:56:44PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: devel@driverdev.osuosl.org
> TO: Saravana Kannan <saravanak@google.com>
> CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> head:   5e77069e95f0b207139efaa61ff8945af14e4657
> commit: 05f812549f534daa584fa6964aff6b3de23971a7 [10/14] of/platform: Add functional dependency link from DT bindings
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 05f812549f534daa584fa6964aff6b3de23971a7
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/of/platform.c:629:28: error: initializing 'struct supplier_bindings *' with an expression of type 'const struct supplier_bindings [4]' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
>            struct supplier_bindings *s = bindings;
>                                      ^   ~~~~~~~~
>    1 error generated.
> 
> vim +629 drivers/of/platform.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Patch sent:
https://lore.kernel.org/lkml/20190731181733.60422-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190731182033.GA60559%40archlinux-threadripper.
