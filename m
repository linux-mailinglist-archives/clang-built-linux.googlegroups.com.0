Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSF53TVQKGQEXKQFQUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 41080AE2A2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 05:55:53 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id d25sf2561168lja.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 20:55:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568087752; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/TzRkSJ5BxZHK90Yu54Ldi/SVbdbwIs95CAUrl1rBm1kT6/v5+o4NCEjyam0rLMPD
         taXKyfNFaSsityMef7hAVf3jm8akyl+jfbhRC2s7xA1Br4zWWknaw/pEX5WI9iw2brfM
         D1ipEmehofubfXcBzFgLv6j2Uu04g5YhtlaQYbyxddsNOf7/+4wfLSdjvniHZuCeAChd
         B9NkSOzpR19R7jMShPaU9SKdKFfxdK7UxARNxw9uCIHbwGU8H038XtWj0rCEAwLsQ7jn
         f6O17CWxW68mq2YrE7WO7zAF/HfK3wHF7dreps75y8F1M3kZy+pFXyN8xhPvZ7G4JvMI
         7rjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=q9r5OzWGkJJeWDPHgR+2m8FgzVwrCwmegTVFmy9sS34=;
        b=R3ZQUiSbfDhyXkcLZazUtjgK5RhaHWyrJU/Z7Fsi6v7Bnbsnywy6r0V+nX3D8UQ8gA
         iojsYAW2d/vFtISQhJpXuG2znhcpVXnaYNeskYb7Yb4frMOvBrGBJTeH/DMWFfUv30Nw
         ya44J5LLaFR08ws7lPRLgvAY/YJu+tkpNoAOEnTagskeNPtDFqKnubCCy6tOR3g3Ttsv
         dI+IP5rU2BS7RtvmDJdib21SqaBOAB/91k2iAPSU3PLmn0Nc64IrO+u1ukT1CoJgAoHC
         qLxHoPMb+k6MHlG7WPe6bU7QD9Rb6vzDac8xFuS4G8C2QVbyl3CVttuqj47ABsUZWWIB
         XU6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQVfRnbB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q9r5OzWGkJJeWDPHgR+2m8FgzVwrCwmegTVFmy9sS34=;
        b=Yj8D4qmUpLG8e8dPJrQmYdsYokIywhpqYFlkJTJFmoXrGpBhVzL0Qb97ZBX8LLviRS
         w0AdZw2wXu8crypX68g2wKvKTikgd2F93wS6/jZe150smO+HD0BWfhNnscSdjSSzx6RX
         DBy5B0UsAOEdoqpEZD2Gygn8lJdZd+MsfdmchddDbJ4QrPbg5cVCXb8dNro5YMfwSAva
         fDil/wL/nwh9yqg4TyvllhokDSprbNas/uafN/bJvcek6Y/lcNTXHVkrtXxJyi6PdhXd
         W9Jcq7Pv62wehba7lvIpg9LMVMq/M83celppnATw7QiRCUWigP9hOmd4Q+hfPfhFAC/h
         XPXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q9r5OzWGkJJeWDPHgR+2m8FgzVwrCwmegTVFmy9sS34=;
        b=URxo2XtnhxUn4WhLH21I1+C3PNRUrLponwhIdda9P8jSQf5/ugMTFcNm/A7ortrfLf
         F+MJVsy5oROKc2I2uFxz8AjezT7rMWqijizXS8l4V0AK9dXtpWHTJ/2TLJRjfmKfYIQs
         AdX2AvxmbxY6+BNdc30gVShwF/WxXE7+BIaUhTefFI8zntofpLcnp/YesYff7ilsQlX4
         njIDVezakDIshpUyaOg2gKRCR+ACzfRd2M10HxK/+KfAODdsR4mh5rry5kC3M3EKEWew
         8AlNXk+OBjNjpDn1yrulrbYz3cZ3pQWt3v2YGaNodVWm4rMLQavulOBasdPKp1weVCju
         2Y0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q9r5OzWGkJJeWDPHgR+2m8FgzVwrCwmegTVFmy9sS34=;
        b=DBfJtw5KrFySR1mFLmfdvFwtGw+bqpgyA/ULfceoQE9fsOTDyqEro/PLWGvpt0R14n
         lGtjbQFdY3DIKU73oaa1y9cwobUcfxSyEKrj+WuVGKgXjMfe7Mt51skixwcEBJaLzPwv
         2HYn1w/bb6/yVimEdtoo5jlyZLMAXEvXWkC3uOf6SyXXLWDwQNT8cz7nFzjkmOVPUbH8
         mKS62+F7OdbfP3nb0Bv923cPm0TzQ5NwL0niQxNPHGxQgJiW8BjUTYinUh9iQ4EhcZuE
         Pyr2zky8cuUaK1HS3FUCp/CCuayiRm3QfT/Y9GmT9ZV7/Ho3t3cRlAYEvFakeoIlryvn
         V+iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWh3oP6f5nNqXVe3VgubobmsWW+cWmUyDjrZwHZfGIM7QlIOQMO
	aXb3AKVz6PgtlOuJQxZZkZo=
X-Google-Smtp-Source: APXvYqzrq7libwnQAASmWgepT26NrYoktGoEHatCUMuB+r8pUnSqXC4R6tXhkfi6/NAd58zjGAdD8g==
X-Received: by 2002:ac2:531b:: with SMTP id c27mr18765054lfh.107.1568087752893;
        Mon, 09 Sep 2019 20:55:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5203:: with SMTP id a3ls1547695lfl.6.gmail; Mon, 09 Sep
 2019 20:55:52 -0700 (PDT)
X-Received: by 2002:ac2:48af:: with SMTP id u15mr19152971lfg.75.1568087752420;
        Mon, 09 Sep 2019 20:55:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568087752; cv=none;
        d=google.com; s=arc-20160816;
        b=q8G2ZYKiSSrMCS0AqSWTaVQTdP79j/6qXcn8MMZAc9oGaSyGRqLuIYjIdrdSLcd9Sc
         JyjQu5x979D1iB2Ocg5WzJ8sTVcu3UU4rPWKIc/vfMY5F+wTWWNxdQSPwDdv82sDj/8F
         Gs37rnYRUB39/9sfWTfOQQce6dFIR8BR5s6x56i/C8VD0B1RfgMngaS7FtHH0hI6QtnX
         48xzse6sKwlpDoqon6sDO0K42CwpcapdT1rIanEEULeJMq3qPEqq0oDpR3GRSkzi+7Hj
         +zYNXgcn2TGRz+dlIMughBh8+T+iAOWBnSvm15WH5pcBFoqLzUXZobCZGDyOkh1bzMg1
         OrJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7o/p9xTgWRuKX47P/EeFO9TkDgwWIKGBOULsD9IEckI=;
        b=B2Wj+xa5edcqWn/ZXLGvIVUU8zXMRhoYxVd81kJAPFh3g4yeskUabNmJ9ipWxvjem2
         cKKfZ7PKJvK5I0zr5+wq7FGPl+VEM49xrvGGq2fg4E9IVpUtNjomQFAYgMHuA97Td1Ti
         nTxUM4SXzqWzudo/VqNbq7a6iBahH4PRnajnNeYBs27x4x2+8mqAObNXvLCpe5Gk+4JI
         k4C1oowbbr6rY4IZ648HTBYPfiuVI7kyStGmzwR0BQBz+GFB4/Wk5to1fnefsTXVYSuE
         ff7GP2lvs9tfDU4VtoaBZ+qWxqrPUfIF19YGh3q/M8yEvn7WxxMdHA4Aegkv338QX1EI
         Pu1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQVfRnbB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id o30si894498lfi.0.2019.09.09.20.55.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 20:55:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id l11so17070779wrx.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 20:55:52 -0700 (PDT)
X-Received: by 2002:a5d:6647:: with SMTP id f7mr23223100wrw.170.1568087751997;
        Mon, 09 Sep 2019 20:55:51 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l62sm1560906wml.13.2019.09.09.20.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2019 20:55:51 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:55:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [kraxel:drm-gem-ttm-debugfs 4/8]
 drivers/gpu/drm/drm_gem_ttm_helper.c:26:20: warning: duplicate 'const'
 declaration specifier
Message-ID: <20190910035550.GC1778@archlinux-threadripper>
References: <201909092105.cgG1i9Vp%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909092105.cgG1i9Vp%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EQVfRnbB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Sep 09, 2019 at 09:12:26PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Gerd Hoffmann <kraxel@redhat.com>
> CC: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> tree:   git://git.kraxel.org/linux drm-gem-ttm-debugfs
> head:   ef7f5231b53703110b0638890d8c053436454cb4
> commit: 6dda79e1219ff3e61d95bdcc91362ea92d618a51 [4/8] drm/vram: use drm_gem_ttm_print_info
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 6dda79e1219ff3e61d95bdcc91362ea92d618a51
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/gpu/drm/drm_gem_ttm_helper.c:26:20: warning: duplicate 'const' declaration specifier [-Wduplicate-decl-specifier]
>            static const char const *plname[] = {
>                              ^~~~~~
>    1 warning generated.

Also reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-September/063990.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910035550.GC1778%40archlinux-threadripper.
