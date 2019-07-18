Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA53YPUQKGQEUQGMUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A266D625
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 22:58:53 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id o9sf6419129ljg.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 13:58:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563483523; cv=pass;
        d=google.com; s=arc-20160816;
        b=gORjgoD7uCsUlGmeJ2/l8UEpyDZ8wnGyr30FNmWe6WUCJuJ/9lplQchAVKHAOWQuxE
         PgScldjsUep13ZpgRzUm8otNrm4mm6TPIS5cG75RCQptiQHFYCRS7DvBHhPp9VcBNi+E
         yj4FcD4NnimigsV0FvFYhGqLcq72GLlepjenmOn85etn00IduDFPBKZY3Ob3gstR4b+d
         JEHw9SmRVIKGBILaRuWjTXNb0NJbmpxK3lvdvVKI2EofHG6P398kSF+3FRjqwhKOr8VS
         otULKfyym7m3oJD0BLSR2bTI6lN8xq4cSa2Jwd5+EVitGn7vBOHxlhJg2A3bdLRah+O/
         DWFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=PlOxJJCQTGiuIeNehyQlRlzffDYrFIRa30yI3ccpiFo=;
        b=zF1MoXaCQV9vDA4K1lCkzT4Ne1bWKADx0Q0ed1+TDX6YQYqMFnfI6i11mD/IBigkP5
         hClHL+ws/Ki6zFC/Uv4q1zwB0YEG319TwZQzdrOnCsXlzENIBI9zn75exh9hSU6D3BOv
         7szF8tk6Wt+o/0vAn0uDZ9/8bqp53m3Kzfag00MfKf8+3xYpf/sdOqmHZoQkvSvFzfBx
         HX7TQwYdOdIWIMzMEtn+yF/ghzjkY9eonFSUEkWHGhw+FK1BNH5FNJY3/iRIzw9EYKhl
         5+caivwm7kh07FvMQtP9lrA4A5AEe2ejuJUmk5nUmGc2otgahwCdzuRoxmc8sTmy+8ew
         TvJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TZ2BA8p9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PlOxJJCQTGiuIeNehyQlRlzffDYrFIRa30yI3ccpiFo=;
        b=tmTIr8aM3mopl7EABgNiq7IbanuPsp3DR1yTH2xEOCukmLvzm66ZExkM1tYHHQUt3v
         +d60HHKNoAWUgzC68033QbYiAviXbhQTokT4v42LuhKuo9g0Upp7e5l7fYld8GcN89et
         oqC3izVHuZppHqkDSipAF2gLzGrd0bZWt0cHu35trvGqK/i6sO9/CY35AoHaGUW2cWH1
         umevbXpR36s7M/U/kFvBVu7J52c4RQDmr2HtujlWjhbhiIVPzg5UuvYHY27EWVltATaU
         ti1Rf34dgbmfhvbec40B12T5K5JATDyI3WksKYtrXJ87KpRtbAdIsrEe361YND34Wki/
         bbUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PlOxJJCQTGiuIeNehyQlRlzffDYrFIRa30yI3ccpiFo=;
        b=L/GjYFnUdNir8brrPGYd2Kgz8qVw03AxG1o2wW12L44h11IcGGzSzCv3o8HjtVRfH3
         f/2mCs90Mb+ywLXvZ4eM3NqWfN7uc01PzVga70rY31Pzoad5GGGEvE5tccQ5HFiTpanv
         5mrc+JSyRvUFP+rJAeK7TjFIiLUYHftwHTFvaI6aU2q3SlgVL/Hx0CFW5ZsnDt9DHwOV
         WnTQ4Cr0alwqkcia9eXjQaxmJKQsUUC8BCrUOTWW+DsYG7SX4GfKPyy/CbdqCdEHyf2j
         1edoMq0wPUj0eXUWmhlfLguhDVeMwepDhqU8hUzkzUb+CKxQ+vdzisshRW6O8EDZlmp+
         oIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PlOxJJCQTGiuIeNehyQlRlzffDYrFIRa30yI3ccpiFo=;
        b=QI2zOd9bTWW4pzQoahpejAQGvQPLU6qvPIMPEnK2RvbKF8B8Sym6SzH2+a49Qcwmii
         JOlmjORCEZ6auLZtv4ANm9hpa+cHZN3upeGux+66SQjrL0Z3Qa+OpA6vjgkS1VQlKwc7
         sIOUJI3ilTsfDWySh3k3u9/ZtJbyEzfNCdV8dLSKZak3qGiQ73Zzt2UoOV04g6y/XiGL
         /1FY9YPK71A3l31cRo9EURf/fSd+4zxK9fFMrY6pBVzV/MssQLUAJggbW8O+PKwINCSP
         xymTFQhgOdtVL4VLreRmzdjjb6vj9WlG28u327083vJ95LNFdMcFjpJolUkfz/vC0VP7
         tzlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJX05DrtG+wR+4cOjRVByNhf3resx68Ehus8uCykfSfQ6Uwo6o
	MA3MnFDvzk2LEUpF3ErgHpU=
X-Google-Smtp-Source: APXvYqwYjOWkQ9vdstcVMH5jPdQa/qzKfheteL8/HmqZ+3D8q4izGbJASJ3MXSlqaSZtvQQTUCItDw==
X-Received: by 2002:ac2:5bc7:: with SMTP id u7mr22482919lfn.167.1563483523314;
        Thu, 18 Jul 2019 13:58:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:67:: with SMTP id i7ls2420095lfo.4.gmail; Thu, 18
 Jul 2019 13:58:42 -0700 (PDT)
X-Received: by 2002:ac2:4c84:: with SMTP id d4mr22005804lfl.1.1563483522826;
        Thu, 18 Jul 2019 13:58:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563483522; cv=none;
        d=google.com; s=arc-20160816;
        b=YFi8YfdoqUO+Py6pSfjjdmPo9ZZDKzFdoccKkV8pglwspll80m4sh0aiq8uBWKcQ0g
         /rTAJ/WkkS0mIhK7x+2HWGnYhUzJVwB61HsoHi3JOUnDgDOJgdsuCbm14Dl9lccJiiRK
         iFLxA+8SJmgWWJpCgOR7j8k4sS5rpuAa6FpbKaTPjchTRRE4/jgdoCkn4oHBrqWS6/6f
         n2G/anmLczXVM3zMIVkI7iyX6R96QMSamNa8Z1k6aueH58xcUkX2XwoJrzJ9Inwswr/v
         RZs1BiqGMBqnbm7319ILVUtIcjQecSTGqGLDxfnMBJuNQZKbpgt5mWtdNSAjIaaVDWVu
         ta/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=waDGPuDc495cuYIwt7OLPbv+oH9HHc/900o6DR9ADGY=;
        b=eeudlA5meTu4jflhywUz+jaKu/uJANTIApKPcDqLth7m/aBfANYnQglFCKaNPUNlQ8
         ytj6Rkt2StJ86CT86tPUQhj90cPSZMp8KR0tt8GOXSEvAKcya7ntvwJtdEuHBc9+X3QD
         frmJfdOL7WpO/ivLOlPjEadwkAL352kfBF+JiQ+9HgrBbQbuwuXDup5KEpXq8HgL5Qjj
         AVFlD3++yUoFJBjf30PbsFcblIFQSSkY2Y6DCfoB/ee3RGnSHhB3ypmAVfzqC00ga5S2
         7QABqU5lV6d96DmMwaRXVkEDMq6Zn/JAbCtEfi2L1YO7pvFZR3+Pm53rn4QmXoeUMdwT
         KJ3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TZ2BA8p9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r27si1313121ljn.3.2019.07.18.13.58.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 13:58:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p13so30085988wru.10
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 13:58:42 -0700 (PDT)
X-Received: by 2002:adf:91c2:: with SMTP id 60mr53973996wri.334.1563483521991;
        Thu, 18 Jul 2019 13:58:41 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r14sm26376842wrx.57.2019.07.18.13.58.41
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 18 Jul 2019 13:58:41 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:58:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Subject: Re: x86 - clang / objtool status
Message-ID: <20190718205839.GA40219@archlinux-threadripper>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TZ2BA8p9;       spf=pass
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

Hi Thomas,

I can't comment on the objtool stuff as it is a bit outside of my area
of expertise (probably going to be my next major learning project) but I
can comment on the other errors.

On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
>  Build fails with:
> 
>   clang-10: error: unknown argument: '-mpreferred-stack-boundary=4'
>   make[5]: *** [linux/scripts/Makefile.build:279: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o] Error 1

Arnd sent a patch for this which has been picked up:
https://lore.kernel.org/lkml/CADnq5_Mm=Fj4AkFtuo+W_295q8r6DY3Sumo7gTG-McUYY=CeVg@mail.gmail.com/

> 3) allmodconfig:
>  Build fails with:
> 
>   ERROR: "__compiletime_assert_2801" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!
>   ERROR: "__compiletime_assert_2446" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!
>   ERROR: "__compiletime_assert_2452" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!
>   ERROR: "__compiletime_assert_2790" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!

Being tracked here:
https://github.com/ClangBuiltLinux/linux/issues/580

It is a clang bug but has a kernel side fix. Nick sent one but it sounds
like Intel has another one pending:

https://lore.kernel.org/lkml/20190712001708.170259-1-ndesaulniers@google.com/

https://lore.kernel.org/lkml/da053a97d771eff0ad8db37e644108ed2fad25a3.camel@coelho.fi/

>  This also emits a boatload of warnings like this:
> 
>   linux/fs/nfs/dir.c:451:34: warning: variable 'wq' is uninitialized when used within its own initialization
>       [-Wuninitialized]
>         DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
>                                         ^~
>   linux/include/linux/wait.h:74:63: note: expanded from macro 'DECLARE_WAIT_QUEUE_HEAD_ONSTACK'
>         struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
>                                ~~~~                                  ^~~~
>   linux/include/linux/wait.h:72:33: note: expanded from macro '__WAIT_QUEUE_HEAD_INIT_ONSTACK'
>         ({ init_waitqueue_head(&name); name; })

Being tracked here:
https://github.com/ClangBuiltLinux/linux/issues/499

Has a kernel workaround patch posted but it should be fixed in clang:

https://lore.kernel.org/lkml/20190703081119.209976-1-arnd@arndb.de/

https://bugs.llvm.org/show_bug.cgi?id=42604

Thanks for continuing to test it and keeping us posted on the issues!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718205839.GA40219%40archlinux-threadripper.
