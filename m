Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBLN4RSCQMGQEPEXF5LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 121AB386FA8
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 03:53:51 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id t3-20020a170902e843b02900eec200979asf2793128plg.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 18:53:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621302829; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfCvUHfyoV7xzM5gIwtjpJFhQuvDR/ZE/yqAIPWw2e0oLbnY+00SpXHZGPxpilAxd7
         rGay/SNWNVN3poW7Gmu8rYpmj73IUby/+m45/AEQv1yvKj/EnBiLGQwZtDMtrkG4sVJD
         nVu7Ajy5n2592Eg6KTOmHU7DWgnPySmTfAwacYrWqx+ObvtD13+dg1Em7EjF9yxJXD9p
         h+CZJA5JbzJ9cFdNfaYR6aRX0bGboyYk4xzJI4xjEinuFy3afnODSz9lfei2RLhiHco+
         I2ucQs1zPvk9j7Y5/HRmPGlfGzLXhhHSmvXxJ0+4J1yoAPGv5GMe7mT+QWJ05ABoUOG3
         eYyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=IAToH2/xalM8MfGk9oAZOHIDJphUGDPP933GDN9mjFw=;
        b=lwUynRXlRBZES+CoMMPSO7NlzsPRrTQWpd2SENjgksxRfIFpxW8M53n00fshalyeri
         sZrBiLH0XE1ObAygKZaNw6LEMTQacZ9S6zbmstKEFXM3sIpw9cNE4yYKvH+TvSQ+3tT5
         SqlJLF7fxc8zCxcuJ89QvU2ZsSM6pDdsgHdKr9MIayIid/3X3YWrhQvgFtDOJOIpj1/s
         x9rFgbArn1khk44Iti2o2hmw+7b5gBaz3Wl0f+TPBkWSPTT1KMhM5FU1vHzRztiLcYFD
         QuwxQvu4ep+4cTinIdGXnnn3azKpsxoeR5tK7i8A3oOrL4XfR2mkHlnA9r04klbWlPwo
         Ke0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QHqj6Uar;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IAToH2/xalM8MfGk9oAZOHIDJphUGDPP933GDN9mjFw=;
        b=FO+8fgCgR04UrQBelD/UtjD5cOY1bC2O1fL8Nv5d2fx7zZDTMLamWIfRNRHnUkjeox
         FAIypt1VQPaNrwyO35yhFZkYH+nnoWwaEZ2uWUyzJNxkvQVP3iAT2J/kOCMtvfR52neS
         aL8TQ2EKQcsp3b0cv8x71BGotYfUbEAIvyE/RmKOIaJZd6JxlVJ1d0+XcwP47N2w9mIK
         gOF/pR+zNtvH8aQ7bWM6B5AW/7BgcC0+CGfGrvFZMBcwcmyiX9eF/5JmjIy3XRHiTLe8
         u+Uddg/FrTLQe/rbark+u/cSfNvHitq54gTgyAIfzZ7b6XUVREoL7DyU/IWlqKR2bfdp
         sU4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IAToH2/xalM8MfGk9oAZOHIDJphUGDPP933GDN9mjFw=;
        b=ghTxB3m4tkF7izokWR1aei5Y6LuMSygibvFZiZJXr4j51XOqogDN+BGsgh/CexYP1E
         DoCvuA2QpotW0IBZbpm7pxOgbiviZ3+gUEIEO9VWi43JA+DJThK3iqmGZkAPuJrkMHDo
         qmO31kjkmq+aW8tFF26A2do9GIK/K/WTU/gKnFMWJvUl+WCWL86ASS1j/NUF8xK0LpuW
         9xbpe9l7UarMUJz8F7xAEvKXDOr+zIxexaG5Gbnlkb9Mxg5M8aKt0jJaDEVwrJExQICX
         oOruE2mE7+I7nW1vhwSDgzeUKECWB087IuZuoehDF3wP6mDhoMCu8lwhwOnA3oUipnJV
         v19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IAToH2/xalM8MfGk9oAZOHIDJphUGDPP933GDN9mjFw=;
        b=ZS2Ypub8SdPICnUCTT7SAOPlZ2IolxXsKE5mDK7fnm7zR5vklXUxopgq2bYMOjyYJp
         BNgmVY62Pp7H7PZmqnW/faWPwPp2x/TikV/YOX4VLtZWIUuWUTigVHngqNOaSIKsxET7
         vucvqlzrg/OdE/do6rEL+8FxvezGSWoH0lForq6cbEGB7P+98wPsK4J1CJ/oo7i2DfGH
         sx5ygzGBsZs0MicaF1+stuDTMyCZKeYbSglkdnmfFgGqJVXoWuKmDL1v9NZGpAc6FJmG
         x7lE9hdJlOZzuyaCCQxPbOXx21My6oxm59WDEUE620fAF6SUXRpHTmx1MPw1jwvRcsKC
         tBEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mSf8aNqd/x2dcTCgm1ojdrNha/Draivc8E5mUcXEOPW0mwbTn
	rEWnB87wa6beuqyKCNW5qK0=
X-Google-Smtp-Source: ABdhPJw/kh69wcKAR3oXl6BzU1I6H/dqICuKhk//7t4gQVxtcDVvGZUPug4wejz3uFhNbDU9WMoE9g==
X-Received: by 2002:aa7:8201:0:b029:27b:9b59:8676 with SMTP id k1-20020aa782010000b029027b9b598676mr2534142pfi.47.1621302829749;
        Mon, 17 May 2021 18:53:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2684:: with SMTP id m126ls2546596pgm.9.gmail; Mon, 17
 May 2021 18:53:49 -0700 (PDT)
X-Received: by 2002:a63:ff48:: with SMTP id s8mr2540295pgk.132.1621302829202;
        Mon, 17 May 2021 18:53:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621302829; cv=none;
        d=google.com; s=arc-20160816;
        b=Ch97v+NDqqvO2Ozzwz/u8rl6sN2CTIvMI++OoVaoKqKjTJYLPqLQCt/gPt0adRWGx0
         +umQdbPJhPW3tG2K2n3K6n6odna592H6xK8wm4QdN0eqNE+cQWKJLK8IY3Mu02eBCxBh
         tiAO/vA/wn+Vf637wgYQbhXjRjVmfMioJKobKRX2r7379KQde4HM/ulo/E3EOrLjWmbY
         nD+VBRA675MAMzNan2QE88nk+DNpPwctoq6cuNwp+en8ISC+AAkhRDfY0lLHacb82XMS
         r6DHjO8cwakhZeLBvQnqvKC3SOVqjMoQ4XqA255Jy/VZehUXDfoNt/Pz32ixY9j0MwZX
         UMJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WMZUpa9Z0BMcmL5mgX90Fhx+k+V88TdK0ER3AFCI+UM=;
        b=S60+Wb4623fVgzduwUYw6DBKNvToG0WRfo1Hc1a+5a/J51gq3CFay3pL0CYRFb36Yf
         r63gxWkBJym2WEcATxdGUA82gMsCHQzSJz+gPVXbehivkX7iPv7o6UXz9mA11UizKJmA
         hdG1hrUXkYKUL+5XiqY87//IQbnE4i1VPWK5+84pBIKEqbYd6J3tU03LteQrBVkjZPnD
         Q4rJBXwealjHf9Gt3C+gbjC77EJooGSRng4uLqQCvJNGw+lC26ZFJCi/QAsTzsa3xarw
         QOTTc6SEGP3Q7Sn6uRu7x6r51AZRLb12GPrF4dSq9y9bncaspjBWYDMk+rqCqS4C0X2m
         Ig+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QHqj6Uar;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id u24si1454890plq.4.2021.05.17.18.53.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 18:53:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so666447pjv.1
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 18:53:49 -0700 (PDT)
X-Received: by 2002:a17:90b:4b0d:: with SMTP id lx13mr2623048pjb.152.1621302828982;
        Mon, 17 May 2021 18:53:48 -0700 (PDT)
Received: from hyeyoo ([183.99.11.150])
        by smtp.gmail.com with ESMTPSA id u22sm11245367pfl.118.2021.05.17.18.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 18:53:48 -0700 (PDT)
Date: Tue, 18 May 2021 10:53:41 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>, akpm@linux-foundation.org,
	iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org,
	cl@linux.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
	linux-next@vger.kernel.org, ndesaulniers@google.com,
	lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
	Marco Elver <elver@google.com>
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in
 kmalloc_index() to compile-time
Message-ID: <20210518015341.GB84628@hyeyoo>
References: <20210511173448.GA54466@hyeyoo>
 <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
 <YKC9CeAfw3aBmHTU@archlinux-ax161>
 <20210518003859.GC80297@hyeyoo>
 <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QHqj6Uar;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1035
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 17, 2021 at 05:43:22PM -0700, Nathan Chancellor wrote:
> Ah sorry, that should definitely be >= :(
>
> That is what I get for writing an email that late... in reality, it probably
> won't matter due to the availability of 11.0.1 and 11.1.0 but it should
> absolutely be changed.

> I have not given Nick's patch a go yet but would something like this be
> acceptable? If so, did you want me to send a formal fixup patch or did you
> want to send a v4? I have no personal preference.

I think fixup patch patch will be better as we can undo it later.
I don't think Nick's patch is needed because that code is not related with
clang version, and we don't need that code even in clang 10.

then is there something I can help for now?

thanks,
Hyeonggon


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518015341.GB84628%40hyeyoo.
