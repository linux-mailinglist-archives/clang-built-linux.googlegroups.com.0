Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQFGTH4AKGQE6EUEVXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E7219419
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 01:14:09 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id s24sf62566pfe.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 16:14:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594250048; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7GtUVAI15FW7VnPP5JxqExCqq9mwoLKVaHVSTleiCWQTNSEUI+3v6WxVNvgQvPEZ0
         xvGaiEWj4xehh9H9WRT7KOiWr7BvIUNhnbfzFaCDEp5wXU5HTdWNlWUnO/FFyM6ia5gI
         ub8K8zOXhU2SyxnfKCJH0lt1SXdMk2rRLpahwR8wqE0kwn8P0Wbp/OIVOtPMaQFeT2jZ
         Pc7wq6dr5xxObniZl6gmQSJjeVPQ42HZZV7b54pNaCxWW2FJg02kQB+j1jfrjvCXgaGC
         4fve0tvPI86tplnAEQX5vo91vbPUDX3Dxzgv+SpV1GyOj0OO3o+OMc23Nu1fwTkbU9V5
         yt/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HXx1B/FmcgLTFTibgY7KWnUG0NT1B9KZWFmnHaugNuw=;
        b=UAYXQ7h/GX6v5bJZ5SxtJTiwO+8ovF9cTLHZbrNnJjmGDwrGlI5YJ2AizZ0r+gX0s4
         iNd69ix4S8jo62at6lkWFmMr+Fid24aV5IwoR52wOCRUY1XLvbidHQ0W85DKNwUYz4c/
         2UXaPy1Wai8/EKe3/gm8RAtonhfDVi0X+LKiaypfpykC6xRTWpr5opXb4kw8qqay6AQt
         IoNNpiaS/nTiKH+kOi4PIYVr6H88aYQoMPKQjcSD+J8p29k9hE+nGAEbpCYDQDVv92Pg
         Gg/FJCAiyR1Cis0sVU5yYdzq7jfQN3ivB6GxBLiKeEA5y0JWBBhsyFj5FjUhQoPuzg+a
         Ay/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rTjGSjVl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HXx1B/FmcgLTFTibgY7KWnUG0NT1B9KZWFmnHaugNuw=;
        b=JgofmyBp7bpKXRAsRdohTMsQ8Qkx8ejN8zhb1tnzG1Yxvuivgap/Ar+/vqeG1+xn+J
         wxyXqXiMz9CHS7xMMU1sj60LUY81bvnoMdN5mnsvFCdHPD2hBvkWUlTMn1+mbH8C+bdG
         GDDhG6IUcGy4m27/2ZgGJxL0Qnyg3ZSbTQVqZeOpfHQ8RD0YiR0sSp9qyFwt+FXLidBj
         6sZUCgvG5++S0boZ6vhfiBTAnKk98bBLJYuaOjFb3dHlJVXvcu07xDUbc/unSTlDZpKv
         hV7cAG/qlXsPXbMnzPx/avadIikwx0wo61TVU8T6nlmX3G7Oe5dZyYu3JaartnPf9Ou6
         GQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HXx1B/FmcgLTFTibgY7KWnUG0NT1B9KZWFmnHaugNuw=;
        b=IEW0UU016nnqpaKF64LpT8sWJh5ew7VGrLAtwMP1SK3mH8G6YCIXI5H49lIpxR3ySw
         SJ/5y0k4RdUEk25wc5pwNP3S/RfQS5J51h+bs99XB5cvKDbjFtdKlJWmd9e/4C/IAHAy
         yTLJlZPMm6ruU8A3GLn/PQzJCEwvW9ij3sdzOosu72bukVSaEH9iOAj9k7Qe4/tX5ab9
         NgFj0Qhxc0R+OXZN2P4inoLccFI4RQCHwJodtPq1dyxqef3vKyM2FWOwocG0O5y28wGI
         AdroWbwzc/1XPoAithj7kY29nHBPQ1dCdSgJdNqR9ZauHt94rP9cOJTqe118sv7g1VER
         53qw==
X-Gm-Message-State: AOAM532ca29B2/18yxhMoKJFNW/VRsKLtFz17/L6oVOW3w0HoUwbnrY4
	+1EV3iiSsp3M5+DJ/Mcp19M=
X-Google-Smtp-Source: ABdhPJyhk4o2y5y7ambry+M6IvoztZALXBjtU1d+DFDoCzP4dIXAWMVz1s6YKnBCzLCmA5Zq8aAIHA==
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr42498980pls.273.1594250048284;
        Wed, 08 Jul 2020 16:14:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls1578250pjy.3.canary-gmail;
 Wed, 08 Jul 2020 16:14:08 -0700 (PDT)
X-Received: by 2002:a17:90a:3567:: with SMTP id q94mr10767783pjb.226.1594250047934;
        Wed, 08 Jul 2020 16:14:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594250047; cv=none;
        d=google.com; s=arc-20160816;
        b=PHAGTN0UfTGkVZMRTlTWO8I/uwo1jDKvGUwDj4PHMAKNie4TFln+BCiQ0TOefRvgAb
         TMCaZKVrFw76qm3Q+UOWm/Zhfxm6S1Sr1AeN4WSz6bOxxRbVBDG84od+/SwcS7UxOXzN
         X3qB5J625jv8rFiG1noLFcoxB2/g4j50PPNIjnXM2hM3rOuCKoel+Fp9Kw3q1j7vjo40
         EwiISK7wfJ7FPQ7fqWw76WdQDaI3DG3urOOsuvGBdhEST3awoRxisuMEPXCwvH4z7hIO
         5C6Gach8MOyP8HMYPh04l/wdGrKZdPoOxqiUIUL6fL5DN9B5wb+VtE53TqYRtlIuoDXG
         k5KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IYR6IzEE3oz+7wpFFvhpcTfqtHDsZd22LZz7dy8Rcrs=;
        b=UHcSK1HHcAuGF13zzibQzua4A7K0GNy6NxsAbG38/Xhl/UTyXJkNLy6yqRfrLjohgL
         uUL8k99xBFPQ/3b3CQ3kjYtct51PG/RqQKVQb9KmH8gmuyqPKpeekeJ9J/JiOsyHcRvK
         6BPdEy+2M8mSSG8EslT8CsL4+TY0H0qRvvrB1pfWO3SdFSGhjPUXaWTgutvU4ToZSNpV
         8cb2xKZGkENwNlHPm9yqxuf6ktLWZAs1g5r+Xtt4LrbyCnNghNz4iBcQ8TeT6sW+Hoau
         Cm3kAwEHfBIfMQKe+Pne6fQLC1Jy94KF789TzoSuKWtefSlPb+Dk3dhwzTRdrckL7h18
         MZ+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rTjGSjVl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id b8si93002pju.2.2020.07.08.16.14.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2020 16:14:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id gc9so234362pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jul 2020 16:14:07 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr12309187pjc.101.1594250046373;
 Wed, 08 Jul 2020 16:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200622231536.7jcshis5mdn3vr54@google.com> <20200625184752.73095-1-ndesaulniers@google.com>
 <CAKwvOd=cum+BNHOk2djXx5JtAcCBwq2Bxy=j5ucRd2RcLWwDZQ@mail.gmail.com>
 <CAK8P3a1mBCC=hBMzxZVukHhrWhv=LiPOfV6Mgnw1QpNg=MpONg@mail.gmail.com> <202007020856.78DDE23F4A@keescook>
In-Reply-To: <202007020856.78DDE23F4A@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jul 2020 16:13:54 -0700
Message-ID: <CAKwvOd=NeOodb=ebbodd278=ErRSmPxFNVABQS3ZO=D00yFWGw@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds: add PGO and AutoFDO input sections
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>, 
	Manoj Gupta <manojgupta@google.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rTjGSjVl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d
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

On Thu, Jul 2, 2020 at 8:57 AM Kees Cook <keescook@chromium.org> wrote:
>
> This looks good to me. Do you want me to carry it as part of the orphan
> series? (It doesn't look like it'll collide, so that's not needed, but I
> can if that makes things easier.)
>
> Acked-by: Kees Cook <keescook@chromium.org>

If you would be so kind, I'd owe you yet another beer!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DNeOodb%3Debbodd278%3DErRSmPxFNVABQS3ZO%3DD00yFWGw%40mail.gmail.com.
