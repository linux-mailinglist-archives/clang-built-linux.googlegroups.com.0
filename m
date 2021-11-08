Return-Path: <clang-built-linux+bncBDRZHGH43YJRBPMLUSGAMGQE23HGUHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A83A6447E7F
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Nov 2021 12:10:54 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id q82-20020aca4355000000b00299b6e8495csf9403274oia.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Nov 2021 03:10:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636369853; cv=pass;
        d=google.com; s=arc-20160816;
        b=d/0fnjjW2TJ2JJDqBpB9VChtYY1q/EUXEjXNP4NlDTQtjHr0E0VGkq7MMR0S0fMGS0
         yMtQx2VwLhVjnYxrF2lKnvRrdZz7+J53UMCHvXJPuOVaghZcsCBoX9kZqPMZIAsJSaMq
         PipcON8R9uOR3fo6IsEW2eR7JWcbqYNGeH6yPiGa0bVIwEzyt5OSHHOdHbjY014zzuYi
         qQ0AAT+/6kpZvBKeDBVgvFxZ/lIqgBFw9/plUm0R3YfN/Ewa2V1ZNhlxXfTu5aFwT5lj
         fRRVYioYJCRzJwMI0dArpLZ0XaY3NuvLhhJi6eyIlOLYYL9UJnbeeXdC20Ih+LDeLP2/
         KhmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=b/fB26SOoN52J78ajAup3dO89r/hMOYYI9zoaQhmk0I=;
        b=t9ZSc4zR+D1ZNay+ELwx02dJDpMaQCzcxBYCWwZuHVROzNWORFauppEQ4TJ2jmUfnL
         QbNw7diNWUpeZzLfuL/9ypC3i4S3MsAvNYoLGZchIjiZblFQMeElxUjDB+g39p6fVLPa
         rwA2K3wQi8mBZd+7kiYhPP+1XNrdQ83JZ+CDGvAnIC1k13QnHIwmnBrUtpbGlPEVLYVD
         FAJcjk84/sFeM5fxvBIqn6eLRgsz2BoEwvojbGjvg+W4lWJvKnvVoAL7GS18lbXimDyW
         2i3KGJ3F1K/9XvAec2N02eK9WWsTAp4mRgSEvyvVio9HyWYccF+24kVase2p8/kgDQpK
         6+Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gedHUsXu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/fB26SOoN52J78ajAup3dO89r/hMOYYI9zoaQhmk0I=;
        b=RyoC7u61be9Lg8ztaIHXhGvkbMdi2mZrINSipTBdjlGb760K3hlevSRtVx6XCeKIoj
         Jm+MjzfEr1iPkI/9Kjp87W4mBJ6eTtyqSi7ZVyhPlETNaMAf7AuJ2pyYl3lXUA2kmwHn
         lo9lSJOB75mZ68NqNnQuR4TIwxfwdafbbAKCNlFYgqziggS6/kWKhgNCvxWaI+Bu0WR7
         DdiJpgCj6SWSIfDp18Me3vN90CbZIt+fneS0g3SmJfvU3JQrktFwxpu4vo1vfVP6NDcn
         lGHO3gMCfX614V3Nh82eXbpTCERRRxRHos56s0DuQ9CBQyORlst//RFR6TCOOHXFmdNJ
         67Gg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/fB26SOoN52J78ajAup3dO89r/hMOYYI9zoaQhmk0I=;
        b=X5/kYiTYy15aKjaL6ERGqhZGifaEDItcaTY1l39R6GgXVy5GLHxGv0+jOo9wCBjSm5
         jAlbfWSHMoxh6Q4Ix2W8S1oueDcD/5MNOQvRua/7qo/NVKSG5VQZRTxQ7pNDrvSpRniF
         bR20vcNOTQmdbHFXfJppM0cINkdJt71bta/HKMP2G6ZSQOkupEY4VvtXbWqDnT3qJYr9
         96l/XL6ii8gjuvZY0oJagjQyX5x7idBRDBV4dR4GhszqotPgQcDa8znh+Rcer4GGKz/h
         nEAuZg5zOQyrcunQ02zD2K02QVT6MO4rmy6sEvtgfkRc+6aY91c6uMhsqnYLX2niq51Z
         qjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/fB26SOoN52J78ajAup3dO89r/hMOYYI9zoaQhmk0I=;
        b=t7KXjHotQr2qPuLqccyEefucjs9wKxOMzQq0rEOp1hgO7DQ6Dn4i8HlgoR3bwW/tes
         NeRgpsYea6wfVjZMrYjzagucSq+IKHH/aRrogi7d5EiNMvrY+mY99MFM9gOv+339YgKH
         Y2ZvogBDOXB6/k8KvjJAqNFepXWdsYZKH0hYfaJWaigmMAL8qJaBnS0S+lZ8nc65JzYG
         sU/3O0/9ImTXh5eu6W7bykIIs2iqnZ08kNU1yFGmZOlfngJsBAj0FtxbU9C23bGsreh1
         bnPbLgoPx4Mj80iNz/Sg/ErutUtk+CF9XIP45VStORzdGsHvgMYDJiGmyzF2hHorjJch
         mNuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300DGBYY+4zYGhMHwelw+92HdcTK+sLNLEsgaA0gnYIAqYremj3
	VDWQKnCP6DD/9EBOkFfXHdA=
X-Google-Smtp-Source: ABdhPJx5NY/i0WGPDkLZ4bteJPjrv8V3A0EIvXeHNFOm1GSN9o6p4rM4CDn8MhHL1fHboBqS6sclWQ==
X-Received: by 2002:a05:6830:44a9:: with SMTP id r41mr46083289otv.272.1636369853291;
        Mon, 08 Nov 2021 03:10:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:efc3:: with SMTP id n186ls4775903oih.0.gmail; Mon, 08
 Nov 2021 03:10:52 -0800 (PST)
X-Received: by 2002:a05:6808:1494:: with SMTP id e20mr1779373oiw.140.1636369852954;
        Mon, 08 Nov 2021 03:10:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636369852; cv=none;
        d=google.com; s=arc-20160816;
        b=ly9/n2FApSQP6hP4pbqcDELoiF8uHic8KsQMs4m9EKaIIBD9HiD2/W6a0cnYW7cBsZ
         1LUWHP5QrBcZ6qASthUquB/h+geZ35HKGNC9CTFbO5fnwVdXiP6yQpmyLAxWOGuj4jNo
         1Dr9aVM/zUsxperD4BI7ehSEvFqZ2aBoRY+5CkJy/t6GlXuFmaqMLg1BzznqN1xXHFnH
         Tis2aFQz4Z+fpvXqwKaoPUxBzu0FSX1BpYDQqhVeR2Xc5g8UwR/OwEOLLjEmnk0Vn2RQ
         69nugx9g9h1NobH5L2CkebNOLCTwtzYWpRKA0rTZzxL5Vd/OgQAZVCku/WJx9ZMOEtsY
         htOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rnUlsctRxw/yVWcnvvekR3k9mJssuuR+6H2PR/GovpI=;
        b=a7BeKoqf+4OT+JVMycZMEiv6rX19JF09PpKeGdrtz7vwrMMrC8ZqFtAqTGheOHJ13c
         ZDV0TuWPaArrU7mkYpWozer9CZHv3RDtw7c4gELAvhu1BkonahfXCRKwx3m8G7W9qKai
         1j+3Mc6YMBXzqpAJ7TAQFYkWyNyWMrWigDR+50JdPFrq+mZq26k0EsXCz5kud6df9heu
         D+2ejS4rJ5D/uIG3YuaLcXP5j/HQYJ1+lLu0feyIa7zai2WAC6xiRqhdHNhBeoqd+kSh
         Md6NltvFLcXq91ybTm17ykbP/K1fLR16FwBiQqfz7GADDNgPQBe4RYEu1v46FwpDOxtt
         PxRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gedHUsXu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id v21si21707ots.0.2021.11.08.03.10.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Nov 2021 03:10:52 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id m9so3272787iop.0
        for <clang-built-linux@googlegroups.com>; Mon, 08 Nov 2021 03:10:52 -0800 (PST)
X-Received: by 2002:a5d:9e44:: with SMTP id i4mr12797357ioi.172.1636369852664;
 Mon, 08 Nov 2021 03:10:52 -0800 (PST)
MIME-Version: 1.0
References: <20211107090144.3172241-1-oupton@google.com> <CAOQ_QsjTfuASGw3raFxkqrGQBsL0-xBmbCf6NBjHeUbWxq=J0g@mail.gmail.com>
In-Reply-To: <CAOQ_QsjTfuASGw3raFxkqrGQBsL0-xBmbCf6NBjHeUbWxq=J0g@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 8 Nov 2021 12:10:41 +0100
Message-ID: <CANiq72kyF59LoBnERM86VnbFu4JUGi5PRLioo6Z4z7jfbN+VTg@mail.gmail.com>
Subject: Re: [PATCH] clocksource/arm_arch_timer: Fix bogus -Wsometimes-uninitialized
 warning
To: Oliver Upton <oupton@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=gedHUsXu;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sun, Nov 7, 2021 at 10:11 AM 'Oliver Upton' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> My inbox searching was poor, there is another thread on this issue
> where Miguel proposed tweaking the assertion such that clang no longer
> emits the warning. No longer having issues with the patch applied [1]

Glad it helped! The fix is in mainline now.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kyF59LoBnERM86VnbFu4JUGi5PRLioo6Z4z7jfbN%2BVTg%40mail.gmail.com.
