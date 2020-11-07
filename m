Return-Path: <clang-built-linux+bncBDRZHGH43YJRBZ4ETL6QKGQEHVR45MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D5C2AA494
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 12:18:01 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id f8sf1092620vsr.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 03:18:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604747880; cv=pass;
        d=google.com; s=arc-20160816;
        b=ImChAp1GWSWdaONcRTaApJiVrIvzFcGEr9lykNNRKpoGrNcHF2Qozj0aPaNzK5itEi
         GEBx0ZHAez9YPf0WThXS7+9J8AMzWFLeyMEoUX1WiaRIjwLO9MrG96shYd2x990tx4xl
         lNL52xXOsfS95oSnNhgJ/2li6xOVONIyu7EggFqDCnP4QOuR96te+NSezreY7kIZZu7L
         JCXo+ji8+36kGuv1FoaiiVkO2w85MrqSv7rBwyDM+nX0E8Y0mrXV1x0/Pt1SXup/yNG4
         Q+YF0k/kI5l3GVJ24eLuPBPeQduzDeS8NF6hIPsZpM8pr2LpdK52XYv7gHl/80mG44UG
         NQbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=R9oPiKnDBl33VG/+USI3je0KGY83z9ot1JXwI7MT078=;
        b=K1gaYgKsCe8GhjiBKVf0zKzl/6LTZdUReB73RBNfzwZZ0Q5Wlhe0d6XIDR/S40GxBx
         ATGfJCcWxxe8RBGkc0vihf+yJXuyF/Z+e85dupIK9W+m/TqcUygKdbQgmfbvuuM6YLEs
         ynjnKrtf1B/nU+Vv7nQj9VMZLhuf4LVTVt7AI16v5FUetlf1DiCoEdqYN2FgNS8d9emi
         4vHeiX2RHXAyDfuaM0vYn3nLsbHgpIO7awPjNTpXrumcSyHzHqgEVMTZK+Z7g5ejh/kl
         yEz/UH2b+jbBFGzSj2qioRP74dp02FmaAHHnY7/YXEtaPYOUUj36HZRHpnBBjk6Z88Ye
         K62w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c+RRktz0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9oPiKnDBl33VG/+USI3je0KGY83z9ot1JXwI7MT078=;
        b=W//VnmhqmaHlGuHQyEuTG0z5+UvAii8xHTvoYWcwJulWHpQ2DiW2wkYf4AUptMWmFA
         sDV5NVTHGxnHwLdrx3StLoiFHsMh17jRb0Ej8TBVRjxubBn5u+lESUmCg9Dz0dG5wMUj
         EeEGexK1SYaZIeqjlTRWTatogRk1+QoTVxcant2rE+5A/TQMI7MGZhjkt6evVOYYdSqD
         tMW8eVn2rOJeTP1qMFqhDPd1vTwI3NfFuKJSxCAwbH1RmGIDZTMsEYl5lp/x9XJZngPM
         4TX8wd4cODrbPTghxyv4m5xqK93K0tEa+laLTJAm7o2QtcYBU2juvRKirnhoxOb+I0NJ
         NExw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9oPiKnDBl33VG/+USI3je0KGY83z9ot1JXwI7MT078=;
        b=cE9akSl1mvRYtsgVlZPCkYYPoYsH/U8sgVT9GcI6dhurkJEqtTlBz+05sZsTUzecR8
         LJMD/Cfc/fC6l2/BuxqzvMm5sxERLvCc2VoSKVNOonMi5kTAB8gJ+xeybwNx6Us1p9ST
         3NFJQvGd3umenGsqQPD7nnZlcvIBi/URqdEMk/HhzjDsnZtoUl/bHUjVFhBHy6SXOwgK
         2echVUjnCJrHhhQ6R5xiizGOxHLLWFAPIhPKXOMMQoYetsdlHa6UZbVmChFrdWstF9gS
         PmYusv4LkpJhovMgblEqY6vWh+xfiiOjPgZRRFsE92O8rwg/lv33c7Fx67eNoEqCnV1G
         TKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9oPiKnDBl33VG/+USI3je0KGY83z9ot1JXwI7MT078=;
        b=VWo5EAvwvwcY1MsbANV1Wr5M6WkwsaUAmYzygNFDlNpOA1xfDGAHKTP82v5j9NWo9x
         IpHwAUPOyPl9O5TFp+QRWkMe8do6HFAvl507JJnAw/aFO/FCIB6mKYwF7Q/hm1qxj76h
         wWHZd4KYeKRX/iO45AhXbyVAwr5CddDogt3OOZHRz0Vfh13ev97HMEBF2E/1lJFoYg3g
         dCIYZOYWN4wCpaXWzi9EkX7GzD5Gbc6MttwP6SbkJAExItE4pFDh/N1doOxMIep1tGcq
         XCODsIMOZ5XRJhof1pML6fQTS8pDo3CJWsg3BiwFznocxyVU1SuOrs4UHxpOv1YtiRBI
         TSrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LEcWqg1N2AaFBMswqFHPU46EU58R36JnUoAZXf1HpTMlSugzM
	VRjhjT4GZVhd336hu9fQnMY=
X-Google-Smtp-Source: ABdhPJxx1MkGAPtxqDgSaCF+g5yR16fdkz/FXPyuH2K3YDl0Ye76D1iKrAf9OHTiyw0VlucVVSSaaw==
X-Received: by 2002:a67:edcb:: with SMTP id e11mr3821616vsp.11.1604747879832;
        Sat, 07 Nov 2020 03:17:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:30c5:: with SMTP id k5ls271459uab.3.gmail; Sat, 07 Nov
 2020 03:17:59 -0800 (PST)
X-Received: by 2002:ab0:2986:: with SMTP id u6mr3207672uap.118.1604747879016;
        Sat, 07 Nov 2020 03:17:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604747879; cv=none;
        d=google.com; s=arc-20160816;
        b=boq4XsPhjEGlSZchJ8C9mGqHVKQH524+oQRincdF450oi9+W088Dn2PJ8zMF75gXxL
         go2bRsh0rYu05UUkbv4ttqG7kWcEd1d6EAGLXFtlQ0LrP/6n5pPtHZieCKfaBjEzed1V
         4GvXaI11TxXtqSQeKblOdp3qD/Sc3S9Cs/Z918l/hJy7+O5WL0CUPyf+uYxbMn/JLt9C
         6BHjHTfNAs85HaiXGaf5IhBvqr2XaLD2lsrZu1V01paM6yBB1JHuVJm6TYLnwYJMQ3C5
         DXW9NXsaJNrouzjkG7UaDCmERcG+3hRWl/dJ3VqmFeG/qhBeHaLhgLTS+DOtvdAQjAqg
         K9bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q8+HDEmfW+d3xmHdo94Vs4y4ugoydLAecNNDeHtLySM=;
        b=lrSP0mBc/U+aT/HYguIEJQjp345EddvObKqnCrDAS3VFOu5mOFjmoDw6Z7yalq+DYM
         81O6F+b2MyhPfZEAvcy6Ha1vSGth0lqyFzHhcij53SJDAKcbCnxjL0z7UTidEGeWfdpF
         975QnM5IU2ujhF1L2GpgxAIUMeavBflRLEc1WGJ1VqJS3SrJtFR/x8WX/FRCbnftlzV+
         QBvKq/NmO4s7N5qdgonUgZT8glYSvgf99vWOVfSy4aWiO5yHKJhem39galE4HwCQDRfF
         chTYx9uRli4e9KxT3Hb3pnwueHJ3rC/GA2zP65q4aZOwkgXE78yT75E5L13+4p/3i9xw
         S0Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c+RRktz0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id b16si243487vkn.5.2020.11.07.03.17.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 03:17:59 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id f140so3554470ybg.3
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 03:17:59 -0800 (PST)
X-Received: by 2002:a25:61c5:: with SMTP id v188mr2774947ybb.422.1604747878765;
 Sat, 07 Nov 2020 03:17:58 -0800 (PST)
MIME-Version: 1.0
References: <20201107070744.1133811-1-ndesaulniers@google.com>
In-Reply-To: <20201107070744.1133811-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 7 Nov 2020 12:17:47 +0100
Message-ID: <CANiq72nR89xB_J3YVu8zC2MOTzVCDb26r+KofkNLWhYG=in6Uw@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: enable -Wfallthrough for clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	Joe Perches <joe@perches.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=c+RRktz0;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Nov 7, 2020 at 8:08 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Partial revert of commit e2079e93f562 ("kbuild: Do not enable
> -Wimplicit-fallthrough for clang for now")

Wait, it says partial revert because it is one, but doing it this way
does not enable the option back for GCC (and Clang).

Shouldn't it be a full revert?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nR89xB_J3YVu8zC2MOTzVCDb26r%2BKofkNLWhYG%3Din6Uw%40mail.gmail.com.
