Return-Path: <clang-built-linux+bncBDRZHGH43YJRBC7JUDVQKGQE53OSFSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF48A27E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 22:24:44 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id k37sf2858353eda.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 13:24:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567110284; cv=pass;
        d=google.com; s=arc-20160816;
        b=hEWZ4L5f/5YcraEQLnQv+Tl8vYyMxQU/fzYPTBKjSRl6+ccSwadi4SgFwZSDo3mjNb
         rbUQEEgCEA8KwAkPfBg/TxSE5EgKg1xCbc37L8eN8TpIrfQ5mejKmYM/yO36oNEChTqC
         9x7bF0JU3m5icBWLoJErZmwnE7FhIYM0YYS3927oad00g+8hMHENSRk7NIN/pdwlAIy/
         0YMoasDP46pUzgh+CwhzPkv/5UeUEZQlScu0fbWekgj2j26/K+D9KrSsIiYKfp9mPPPC
         cKOgbjRUQFVA+W9YiWy7s68jJgjWZzMbqjzji9aJ67jkSJyBewBYJBQak82+uRsO0wNB
         ucdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=REzJ+o1jd0SMVgrakEboB/NWw3mcG7e4OummZd1D+3o=;
        b=mJEl5y1BrRWgYx1scp60tHuO4JGPHKhnOwl9M0dJRhO5xRlO1klG8TTLJlI4Ge3GxL
         IbH61HkKMYAcMTIYaoJCytx7uyzoXff9MB/e6b6dXXFmorL2yFqkNhFda96YGD6LW93d
         xiCCYxXZkisRi78hOcjJbEgLq1Y0cGXqKuvKd9T8Q/yGj1WiIw9lErcDx/J31sAAO524
         How1LOeNWVd0xUrMEBkGXnuZXzHkWaszVLOnm5La8XOXr4SHctmFUqjltBJPAxIl3y8O
         gU5nrktb9uwbdwLy8Dtk8qN4s27In+PKBLLblfpCerAfn5R7lwPfA5KOm9EWEI1OXGZg
         EAUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A6B8eP/R";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=REzJ+o1jd0SMVgrakEboB/NWw3mcG7e4OummZd1D+3o=;
        b=h9z66aEw/FAiClxQOyKqh5j3S6TWWZ64gwvk3Z6tJlYHDAZoNcLe7ybz+WxqjfbSVo
         9qLBSa9MP9g923HxnBB+d2o7p/TX5nCnnYU9PxU6kymmKaJiRdSGinCz3I9yQrpjF9T/
         aOF8HK8EQkdVg/rHlH6D3mzDIW2ZTfxYPfk4AhL1YcQDhYhYFj8sMHSGIABwFiHtJBXw
         OXxH1hJqdXbb42TBe7w/uYHTuxM5CoStkqzY8ADqywSDc0/Az5KHNWU5JMgFY5ObF7BI
         bGyGkUrqlKRt+fhIIWxqlRIR0aN2pIW0XeRoor6CXfX9PT8E/4HUiItwIbjlQVl5CXv2
         TeoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=REzJ+o1jd0SMVgrakEboB/NWw3mcG7e4OummZd1D+3o=;
        b=l+VCC/Ym6rVVJ56mn7oKUaOOiBe0rsXki4njrVri4c/0KDX3zByEQFScS+RZpDjdQa
         +km/RnTfaVz8iUf+4saI9hjM37i6Q2XZtCO6WAmrXM4N7St7YiWwIJIpfhOFRAATGJAQ
         BGGOw7X2UzAY7UA9lB0T2is32FvBP09Xfv6Vi49QJOk4JL2QREp8xaKfSqx4EqWRSvOc
         MtlRq9va2MEaZKcxq+VZxJAMOe09qJtkOFNsT78HngWC4PsQzoYFh5F8pVwIZm8OuXoB
         bthsvvdn5EC38yYZV5ENg6KfQmPOc/IzRElYqHdVghMHRMODpD0O9Bkji3P0kUUwl+hZ
         v4TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=REzJ+o1jd0SMVgrakEboB/NWw3mcG7e4OummZd1D+3o=;
        b=Hyu82bIGBnCFzK/uKFW+qNBx4xK7YbOpeo69opddzFdiMu5LwXyKIuaTPV6TrafRBF
         1X9sW+Bviy1IFcBS+xjjUts73sS52fYk6ZQDCJ/fulGzfozG8O/QC9F6bsoKwRNSutkq
         F55Xzkc/TBJOjoEkIlJp7un24NtkfCj1QJYUQKV2sWPPaTMCFq3iQIlPEOdmhLsEuK0p
         bLfy0oUuT8VfUUH+plyah9bOcR9S+VwTz4pp9kJ847tJKZjMlN1VpVXKHDTSnymFCbUh
         3FRdgRTEeBbEQaHTFS7tsDNH0mi1V7Re/u+Twz1JoF/MMtcaABpLXT1lcpaE4+qFXkAF
         v6Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVAdjwzJfAwdvg/El2V3zoFvlJ13w2/I557qnmIKBpBSdtgoEmu
	Zln2XVF9+SHEHyPgxO/d2nw=
X-Google-Smtp-Source: APXvYqznjk6LlmAz2U1SG2GYm/MpR53BITTj2J34b4O8eG/zbCiPiUPJpJ7IQxHpJZjzisRcJMLktg==
X-Received: by 2002:a17:906:191b:: with SMTP id a27mr10122794eje.84.1567110283900;
        Thu, 29 Aug 2019 13:24:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:89f6:: with SMTP id h51ls1196594edh.15.gmail; Thu, 29
 Aug 2019 13:24:43 -0700 (PDT)
X-Received: by 2002:aa7:ccc4:: with SMTP id y4mr12045933edt.1.1567110283300;
        Thu, 29 Aug 2019 13:24:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567110283; cv=none;
        d=google.com; s=arc-20160816;
        b=OFTdqRkyXLgJjiIVa8iBf16pGJNuYiY7bj/jGJ4xQ8cZY3/F82m72giRbt3jx8pJIB
         sEYYcdsC+NaZyoWcuM0H9JzruAoZZxwQ2wWk1iI1BPvKJN/9pEaZ6nZgoC0H82KBow2e
         wSnFKkfU6ci3WWUIbXb3cov7M/jeRt924WqJCWk+kGwAdo82nf9r150n0N/dMTInTotc
         CuHfXcy9zwTCH8fjSUt8a7gtOvbY025MLYHJ8SZ1Ch/XVFks8jM9sUhEJPzoNWKfvRtB
         UzxUNCaMn1lVDt9EZPjLn5L9UVy876TfbYr6eMj3i2y6sp3cktGyopyPk8yI+xsVvFZ2
         C6xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cp2CEJFUGq3Gfe61jQRohcv6CnZbgkL+vG7MtbVJPWc=;
        b=qmnfczWJOh+slQZfJ+rLfAqMA2gurRZbdSA0tfMkNJmI8pQlH6bYAlHAnt8IAeIQQX
         DYgvNGj2+ebFqrTlHoi4ei37MOndo8L2T9NIjLi5k2Uy68pOnBHGt9WShHB9SOBT8aDq
         GIf/y6z7MttIKX08/SWmj1j1lMYPQFWArD+fXkggtPjLEJvUOLmwxLpiCV7CUn9XPVCt
         K7iy5MbKtm7zRMJiyccNbit8RY2mq7m5et1Y6TX9Af29VrfRi6//TnXuk/MXzMfbH4S2
         UmOOdhsg+ktGP6QQ6gKdo+3EiT+dI8E06VUAFwWXaOMLyA8v+fjtZLWswWSvG/chcDwM
         yWNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A6B8eP/R";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id d22si208806edq.5.2019.08.29.13.24.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 13:24:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id v16so3514976lfg.11
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 13:24:43 -0700 (PDT)
X-Received: by 2002:ac2:52b8:: with SMTP id r24mr2764334lfm.131.1567110282255;
 Thu, 29 Aug 2019 13:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 29 Aug 2019 22:24:31 +0200
Message-ID: <CANiq72niUcQv-TFn=_0Ui7nEM9ESKNC7n6GPQs2AKXVsg6ZV=A@mail.gmail.com>
Subject: Re: [PATCH v3 00/14] treewide: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, naveen.n.rao@linux.vnet.ibm.com, 
	David Miller <davem@davemloft.net>, Paul Burton <paul.burton@mips.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="A6B8eP/R";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Aug 29, 2019 at 12:55 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Changes V2 -> V3:
> * s/__attribute__((__section/__attribute__((__section__ in commit
>   messages as per Joe.

I have uploaded to -next v3 so that we get some feedback tomorrow
rather than waiting for Monday.

I added a few changes, please take a look at the commits:

  https://github.com/ojeda/linux/commits/compiler-attributes

and let me know if you agree (look for the [...] text before my
signature). Specially this one since it is the one I re-added the
unused attribute as __maybe_unused:

  https://github.com/ojeda/linux/commit/a103a32ac6a2c8bbb8fb217af92c9f6bd08e138c

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72niUcQv-TFn%3D_0Ui7nEM9ESKNC7n6GPQs2AKXVsg6ZV%3DA%40mail.gmail.com.
