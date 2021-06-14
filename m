Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXVBT6DAMGQEUANJZ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5717E3A71A3
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 23:57:51 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 67-20020a2514460000b029053a9edba2a6sf16968937ybu.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 14:57:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623707870; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMMA1EXACjJPU0Us95oGL4OM2ic7tKwsINOv3t2GaG0jyW3FUt7rjBY1BEpSKq4L6r
         14tZN0KZjtjG/5gNcsXmQSuchF9aLja/1oixLG/S6fKFIotZH/EmH03doX5d5x67Dzqg
         oH+TbhOAlulZb+JlicpNeKH+pE2er7ikndTkoX/wLXZ42/VprxH7e6fCNUd2xcYekV7j
         bbmkGN1OyElQjLEjT+x8/ILWcDX0Hm4fC6kc2nIPgh+d/deZbEzl2c2Z/YGLp7h8UDZd
         J8Qwbewxqv4PrAKMaT4hihznrO7NsTdGt0M8L7evtB1zuIVa6zRXgglmEq2eRriafaKS
         IonA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nNjtBKiNZbLBXPLY2beAHXdB7klBGn561JcpgAG9xws=;
        b=mQTezCLnC64ZzwDPvOwzBaJGsskJlsRmxZ0M4X+E3OA4aP83bJrJprHSulgcH8VhaT
         Y5MoRQo8lghTH5PEBinM6vAMPcrMpTI0Ao+8/69SFvrRNC0jbvOkYGnGL9sBxkMA1Q8C
         k36ch+CZD3fD7yca2l8r9yWUuBcCC9f6oS5DUqZ6IU87VV90ycIDA2PCr67wjUPi/h+N
         EGO+4KM+l1fcbrurUXECN6ZwAyHSbWzYSCCUaBDQB9MVur6ycnELy9CCdTAVY6xEbRuc
         x+cTq7JhRbaQqW97C1CK+cJxP5JXDbNlvDZSGjp/5/LWP8YS690Yr74VsjZH6c5EKON4
         1f5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b4RR656f;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nNjtBKiNZbLBXPLY2beAHXdB7klBGn561JcpgAG9xws=;
        b=n+qGzkW+8tfwhOLb7tm+AJ7ZrfgAaiRyAHp6zJvflA9cDwJvKrJXwDfZ0EHYpw77os
         OsMXDuwWhJ95lHSSel1d3M3dGWztTfuCUT/sPyvW2yj5fLRNWjVszFY1CRqLUzv3kSzv
         lYBlghW9P53/OeipbmscS5KBCTL3PP1V1Dfw17dvvBXAid3+rVXkpXhlXbDmhSoK/ZGz
         EiTCy00jAemV5EeOrsjCh3qwRZfBZuemtujxA3K68Fc5WSRkbOY1roR+e8r6cR/7HU6E
         LuZjB7l59IMRCIU2kyzr9s92rGfnjXe5uwQeqvRI0o4473gKsODCerKXpr2lygJdxY/o
         /EZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nNjtBKiNZbLBXPLY2beAHXdB7klBGn561JcpgAG9xws=;
        b=KrSTwjcyu9flWStuoY5mUqSJD6L3Na424zXGMnkEcGRult/esoJPM6ZJbDLcTU9cex
         fxXWDGIa4Rw+QZ1Gp0/hD0xFs7E0HMJT2FUrN+0LnAr2Fe0dNUdCXg1IgfA+bDr3r9OG
         TptW4rtzIoAnqEGyzpy7skK2zF7uII2aSr3glAF43chuPiVsr06IcodDrBhogFBOv36Q
         RNvx9zC7N2YMHD14rVg6A9SMLR/T+XmvB+OY5g/+thXoeFGWqLUBgSPSv6AxIE8FUc31
         2gIL7sJSwqBdVxR2S9iLToH0gBcks0rk5SfjnGL2HS25fGUs9yL5GzCob442gLfdEMpK
         Gmog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FXVjjNivl0buG9ZZhUpwB66yI0BptfOt1CRvW5l7SmPwhapE1
	bwFSQefhtjgf/1watXcb5ug=
X-Google-Smtp-Source: ABdhPJy01/ucE1K1TiHDnKbd/PUu1LwzJ03Ofsb23N7i4AfCGXyqCDdgnN8d5N9+sGdEO18PXNGN0A==
X-Received: by 2002:a25:5015:: with SMTP id e21mr27897095ybb.166.1623707870247;
        Mon, 14 Jun 2021 14:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d257:: with SMTP id j84ls11153627ybg.5.gmail; Mon, 14
 Jun 2021 14:57:49 -0700 (PDT)
X-Received: by 2002:a25:bb09:: with SMTP id z9mr29748973ybg.143.1623707869762;
        Mon, 14 Jun 2021 14:57:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623707869; cv=none;
        d=google.com; s=arc-20160816;
        b=w+jLf2OqAEAELaA23aUBzv7bVP+9MuN0MsmOqpFBd15fVUgNt1hOTYsQ4Fd+CiIVcd
         ghSpTl77Q32DqvM86UMEHQUNwvxGS8S0eF0pmgc5jSohCocnkIugWEC0lC5WBe/lufAp
         gNGBThmnF/5shn8lsU05KdrFrDGhgBJisKV8aeVygch/TeApEPxMkugG11R5FL5jffFv
         SLOmzGoOpgc+DZQ+GePHLNwm8a/TRjq3B11EARVeFfoAkinmEpxKVIFnnyrC6Q6+e9dM
         dJ0XeoyOviUtWTga28t5pkY8wxrCZtZpQr/4CAiO8eGYvrBC9ocptMbH5qd/LwPH++pO
         UPYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=f4eWepDXU0v6tcMsUDUBZcPuMz+5jSWaxzQwye2N7ig=;
        b=OccK5y09W7wfD32Oz+z5xL7KN7s851cf0CE6OedBQ6XO6DqnUEvZIRbmW8vz1XKYP/
         I3TQ4C8De0TnL0nTv0fFJ+jqOEqVLaTiPzts45/q5jReXU2zVPRMY2hybALEzput/MrL
         H/F8mFX7XCGcTLm2TcdkzFDvq7Kou0TDzeOLtqRviqTADG8hjnPcQjidj+goYWFB5lgm
         A3cEMMYagtCFjLeS7/hdacbNcRG/vL96YB+xJEwPKqHH82BTusQwFtf6jqeDlyWSeJ4F
         svr2VHFdCxJ/LVDkOoXDrU9At9YcsKQ6fecu7S/soylT5rAyPL0C9p3bFbBR3rP+GNQD
         rUMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b4RR656f;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id c8si72027ybl.3.2021.06.14.14.57.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 14:57:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id g24so10574517pji.4
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 14:57:49 -0700 (PDT)
X-Received: by 2002:a17:903:3053:b029:110:d36:af61 with SMTP id u19-20020a1709033053b02901100d36af61mr1111440pla.5.1623707869474;
        Mon, 14 Jun 2021 14:57:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p9sm7342588pfo.106.2021.06.14.14.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 14:57:47 -0700 (PDT)
Date: Mon, 14 Jun 2021 14:57:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [RFC PATCH 0/5] pgo: Add PGO support for module profile data
Message-ID: <202106141455.45C7B198D7@keescook>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
 <202106140904.484E2337C@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106140904.484E2337C@keescook>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=b4RR656f;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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

On Sat, Jun 12, 2021 at 06:24:21AM +0300, Jarmo Tiitto wrote:
> [...]
> The patches itself are based on Kees/for-next/clang/features tree
> where I have two of my bug fix patches already in. :-)

BTW, due to the (soon to be addressed) requirements of noinstr[1],
I've removed PGO from my -next tree, and moved it into its own tree in
"for-next/clang/pgo".

-Kees

[1] https://lore.kernel.org/lkml/202106140921.5E591BD@keescook/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106141455.45C7B198D7%40keescook.
