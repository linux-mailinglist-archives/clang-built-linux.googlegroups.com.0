Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMMLUODAMGQEDUI6UUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id E59D03A83D5
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 17:22:26 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id e14-20020a0568301f2eb0290405cba3beedsf8266930oth.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 08:22:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623770546; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgysRQDmYMJkRPGTnKblCWI5mUbS1qwF3V906y1WytpaunjjMEf1vWIu5vNgWdVntc
         Aam1bAcPVTb5s4rM2isESNPx+7rbpZwz63V4blPJtA9vXuCelTLhFl1rwOw7fCZCFS2H
         mreDTxbUdDy6y2uBx6BcpaNOBWq2tkfHJIBSmQi9nzit8yLnX6ZZC53PSG7PFPZNjA41
         +T2IfV7GqrvVQC56s3Yex3P4uF9m4ZkNnhKQ/GTHlwVDs0njvw3lpEM8xWztZyEtBSfq
         FZLUzkMbtfuMQ6PJ4NZYUWS80ZHKBDpefyTPb1B5puUGtvv3trRlqdP+IwSNr0k3ItlO
         8b5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DBPJ3N2ccB8OrQ/qUOW/iwvT69LUTPDfe/CH+hAEn9A=;
        b=Rh/wbrgLswDgqzePJSz80N2OuUJq27B4OU/4dOjH219DLGX4CgivjsJGbhyMwrPu8D
         3k/IHZEEGHkJzeT0dzQ+BUmywOLOd8H0UD73g52vraMpjEjdwJdn6TQgmuVZ1yQeSwPf
         skonD7stES8kB9qhCWS9nrFNjsjN1bfoBm56Fv1P8nWFVLyFNx6zGVr7fmHFsrZkY1wM
         PA1IgK3OhoV+QH6eOgUc/taKmqmpnfCaoFXwOpfw/tjIoeZaVXt3M33VJKEta2eSzfW+
         T8+dCpwBsjguhL/MWq6JOH0RdY6iNxqWxEdwZQ1kogaSW6Wd0jVjs3R44OT2nzJ3vpHJ
         gX6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UTkvxrNS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DBPJ3N2ccB8OrQ/qUOW/iwvT69LUTPDfe/CH+hAEn9A=;
        b=sRz/DnrtUBbOOWbbvm+HilrZ6BQvifBTrHLePXvUgUKG74YJN6twCisLWuVnTkUzUo
         Uj01bH3K2rHmhM91xGkz4wKl7Hf93DWhPYUqXVp/43TiYeuiL5BfLn2JyB2F4aX35wNl
         BqDIqqHbCOz6L9CALYDtcBcBj2c4kpdIy5M9ojKw6kU4207sDHjoLn1JH+V3WlMSHuPz
         ojQJIM/47xTRNbbmprXiX3D2WGkKdEWnzjYxrTip7e6bGNNq5yWk47S6u8TW5NQT9QRL
         NxS9YGp+n0pNIHERqc7cnBqv48Rb0jIdTwTtxXb30kN+SQ4nsjWP8e60NX2meZ1TKB6/
         o6Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DBPJ3N2ccB8OrQ/qUOW/iwvT69LUTPDfe/CH+hAEn9A=;
        b=pCco8tyI/B/8d45ToY+/LF/JEf9usUPoZqr3uOlhBfwIvQNa0VP3yJ+hzj2/ItERD0
         aBmSod9T2pmAtNMch5Nm6/GjlIb1TkBl8BZtS9w+78o0OA0sOsVu88y344MEE1OmL0pB
         Nziott7nqVn0wZwo934k0x8Af/EuFd7jw3+N5IWOfbI8smE54iBRJuxXXOujxWYJ6Ax1
         ORdWPcORoJhs7O/qg8RrkSjqd6f34J0tJowohOEZzRs2wE4HAL8uXJ7fZFIQidOQ+TsM
         DLnqLnULh7CBACTR44bDtIcxeN9QYDdtagYfOXJUFtKwrrdPoPqPiH/NB0lt9zo5T/sm
         nRNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xW9QsoOJZCXiBX98sSUEAfbPJZ5QiZoNixvh0x2ZLhdZzy+7j
	viCMo+okKOO9h74GHXB4bbw=
X-Google-Smtp-Source: ABdhPJzU1o7mcuCPAAVPkH+oUN+ybCAjxhkRUu6d9ZA1jEGCmo3nvvVRQk/KahW6FwYJzhVDpRpfjg==
X-Received: by 2002:a05:6808:9b2:: with SMTP id e18mr3793470oig.109.1623770545915;
        Tue, 15 Jun 2021 08:22:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4d16:: with SMTP id n22ls7599425otf.11.gmail; Tue, 15
 Jun 2021 08:22:25 -0700 (PDT)
X-Received: by 2002:a9d:3e52:: with SMTP id h18mr17628413otg.230.1623770545570;
        Tue, 15 Jun 2021 08:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623770545; cv=none;
        d=google.com; s=arc-20160816;
        b=TCb/bSNTHytzqUtDm43Vij//r4oRef7UruEPKMhm5DrjRjJkKc0gF87vMMlri5+NgM
         87EtbGsCDBQd8qY6JJSFdzOFKPCPd8+J3rxncfFP9GZfBO6TVvQy3/7FizcKEgb7JDZ8
         I677W+zp+ZTeIF/YuapajhGIiyOMbiTjd3cPcTdVMYlKxBYD/ZxgHYtOGbAveORrahXA
         gKoCWVWGzMWxi9IHJItkC+tdP0Q5wxlB7P8PEJ2vEE6LYnzwoWzRBrkuE8NWEqfwC/9G
         i4rr6MVlFzFajAN/1+CjW/t/OktiUzbCev/0A8b9T3HClHzvLtygwV/faC87Roj6sEFb
         yT3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VTuRFnseZqrIBSgnNwdAjUEfKZHGGRHTNL/Ans6om4w=;
        b=0EkUDml19b3XBXbwgYgU78dW4ybVGxyHHf+TqD3PcTY8tU8URZzB5jL1N+yE+1GpmM
         72gHKgABaIq98j7mMdsCnixGkef2yN840bftO200Y1YNFrLcYQr5NinCOsJXgxLLTSSm
         wRT1DUa5IWQHMzFGLOH9f4zoK8QwWAaQcHBOJE9ckpLr48e5+ZFJXZRHvWDXxx/hBCEK
         POCHruYKyGJTVovYXRhsRb409CbHpCiv8l8mxtwzhjubrak4iE+7UPPd+ZFAIyvYI3g/
         Gtwosa1K4V+tMzLEQqj8tO83RHUnSJ5yFXbMs5otkFQaE1mfSBkoeg3VnhsrBA74ewQX
         TPvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UTkvxrNS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id l10si361996otn.5.2021.06.15.08.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 08:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id e7so8643500plj.7
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 08:22:25 -0700 (PDT)
X-Received: by 2002:a17:90a:9f8f:: with SMTP id o15mr4567883pjp.55.1623770544902;
        Tue, 15 Jun 2021 08:22:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d13sm15373293pfn.136.2021.06.15.08.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 08:22:24 -0700 (PDT)
Date: Tue, 15 Jun 2021 08:22:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, masahiroy@kernel.org,
	michal.lkml@markovi.net, nathan@kernel.org, ndesaulniers@google.com,
	samitolvanen@google.com, yj.chiang@mediatek.com
Subject: Re: [PATCH] kbuild: lto: fix module versionings mismatch in
 incremental build
Message-ID: <202106150821.B4D3E02@keescook>
References: <202106141554.A2D26986A@keescook>
 <20210615062658.21633-1-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210615062658.21633-1-lecopzer.chen@mediatek.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UTkvxrNS;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
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

On Tue, Jun 15, 2021 at 02:26:58PM +0800, Lecopzer Chen wrote:
> > On Mon, Jun 14, 2021 at 01:51:09PM +0800, Lecopzer Chen wrote:
> > > When building modules(CONFIG_...=m), I found some of module versions
> > > are incorrect and set to 0.
> > > This can be found in build log for first clean build which shows
> > > 
> > > WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed, symbol will not be versioned.
> > 
> > I'm doing this, and I don't see the problem:
> > 
> > $ make LLVM=1 LLVM_IAS=1 distclean
> > $ make LLVM=1 LLVM_IAS=1 menuconfig
> > 	*enable LTO*
> > 	*enable a module*
> > $ make LLVM=1 LLVM_IAS=1 -j...
> > 
> > What series of commands (and .config) shows this for you?
> 
> Hi Kees,
> 
> Thanks for you checking.
> 
> After double checking in clean android kernel build, this causes by
> make version.
> (I have build failed in Linux LTO,
> seems it's not well support in contract to android?)
> 
> I knew Google has LTO first in Android and upstream later, and most code
> are same as upstream, so the env here I use Android common kernel for
> easily testing.
> 
> 
> Test env is android common kernel: android12-5.4 [1] with its latest code
> and it builds from build.sh[2]
> 
> $ BUILD_CONFIG=common/build.config.gki.aarch64 build/build.sh
> + make O=.... LLVM=1 LLVM_IAS=1 DEPMOD=depmod -j12 Image modules Image.lz4
> 
> With make set to v3.81, this can be reproduced with CONFIG_TEE=m.
> With version >= 4.2 this is not reproducible.

Ah, very interesting. While there are tests in Makefile for
MAKE_VERSION, if we want to do this, it should likely be extended to
Kconfig, as that's where the initial version tests for things happen. We
could require MAKE_VERSION >= 4.2 for LTO?

-Kees

> 
> 
> Our build env default set make to v3.81, although Android uses hermetic build
> and v4.3 now, but Linux doesn't have such things.
> 
> Maybe we can add build time checking or comment before CFI module versioning
> build rules to avoid anyone struggling with this again:).
> 
> [1] https://android.googlesource.com/kernel/common/+/refs/heads/android12-5.4
> [2] https://android.googlesource.com/kernel/build/+/refs/heads/master
> 
> thanks,
> Lecopzer
> 
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106150821.B4D3E02%40keescook.
