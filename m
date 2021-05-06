Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBXN52CCAMGQE7RYH5FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 409E93758BD
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 18:52:46 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id 67-20020adf81490000b029010756d109e6sf2411051wrm.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 09:52:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620319966; cv=pass;
        d=google.com; s=arc-20160816;
        b=wyX9ojZi/x8VubID228W27DX8hIhjQZip16YwfPZnVKPXTyFnew6ngJcXobYZXP+71
         3LNZgHceJMAIdhn2AlzG2x/idaWtmD8FCnZtAv7uqXvfwGb2denfkuqyaDi76rsVNoGq
         uocf7IbRYLxpoESKkpuh0BdaI8St6C7FodNQwLs+EerCEz9LKLFX/OtsdcWxJM12vz4V
         sDr+w+82UGlnDl51Avi2zLwzY+ebcWkqzsG0Db4umYzXmAA6hRgOpdOtR7SxrFvd5L4Y
         xyrY+vsAAN266hugWsSV8syXufOvnTuifm394V9SaAh9M1KFC2Y/1XVSYLPn/7duUpzu
         G2cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=dZIPEbxrIU4el2d98eksufcKb9rR+jTwDipJykr49ys=;
        b=lD66LRMzq1USfsKeMAQly+YKVlsJSSJ06AgfOUO4988ENcpkL0ptARMmVpDXySnjRN
         2a85Xc+VYcGfotmVKEd+/Bmx+J1Z2Bf9lpsi+wOPtTIUW3sSsyyXKogUijRr5KAcfp+i
         SZ5xG0OYreTXvcngSGYBaXS3jB2qk76DGsugC4GyXhsl5moVeHgGwvUh2F/R96CsumKx
         2ORDvEwlhO8Hg2LxwLbXAKpFPjm+OquqwDXvTz4b3fr9Dsgrgb1TShxZvfewBQFtUEyt
         3QedJYBTHJCQ/MHKOvy3KgBQcVW/fBkZsM7gIrl5vndSHMCLiogNtFE7NxGAcKMynSLX
         5RBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Toi2dF2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dZIPEbxrIU4el2d98eksufcKb9rR+jTwDipJykr49ys=;
        b=CG1HVzKUK7Cm/Xlv5NKBxIOMJT6EUfCUQw2BuQiUwxwAPSArRLwSkiRdwUsG9Ppzk5
         xJBrF3M2vfY+fjeky28YfNsrjego88aqzaAMlOJJwKIa9ALM08XyToJvaTph4l1+Bu+H
         THQfZqQkAcz8vu2OOeIJMkeTS1xkZOMytYYBeGuPp8pLurKBfWMrOUpefcPGvVSn/KNL
         uzbH+jbV2SvHwVTjTPTs5xa85ZVijAdzTCTEeWzb8TrN6Z5BP2D0WL+Q5Vn06hsbAL5p
         P6SXdzIT0tL52+beywZgdep2tXtrtHtUdfsj0umVo2FBgmu/XFw9fthn4NBZ3eHj4G1O
         RU+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dZIPEbxrIU4el2d98eksufcKb9rR+jTwDipJykr49ys=;
        b=bHfWdiSJ/iUvObTOZKYTxvnBsWzze+Pt2pEba7UFnd8Kp+qCPohWN25I29BHvTtUtj
         +QcXMIIvL1jsdIC2Bz8bILknQ9Lac54PJO+zQU/PTJ5YJv4pc79O74CG6TLcyaGqfo4n
         bgoEWMNNtPaH352aQW5vGevUjOUzaMdt0rP7TWPZhZdt5WfqqpXc6NK/YFmzfUzt1RX2
         Wo4Gz2vKYkybUbHVfXdIab7Ah5mjXRPfF3CC36oCJr0VY8IjNt3H0d1kVp472eLaVKN1
         H0XulgrKyFLIM6iNMOVWiPzc/eQBwVptW1ZuZADllY5HSaAsOuoTfynHurOih3XySkHs
         g5aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uTMxOzT0xqoGy1yFE5vdm1P3a26vL8jP33YsXYNRT+a3Pveb6
	KiNeulOcy9HpR+Xe8FchFvM=
X-Google-Smtp-Source: ABdhPJxHUabXmMnj3ql6ka5RDRF9riHGVUgr6Xiz2GFvWea0HVxn1g9RRvchSEGM709ZesocXyGc+w==
X-Received: by 2002:a5d:4412:: with SMTP id z18mr6453285wrq.103.1620319966026;
        Thu, 06 May 2021 09:52:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls3990036wrp.2.gmail; Thu, 06 May
 2021 09:52:45 -0700 (PDT)
X-Received: by 2002:a5d:53c9:: with SMTP id a9mr6593396wrw.108.1620319965045;
        Thu, 06 May 2021 09:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620319965; cv=none;
        d=google.com; s=arc-20160816;
        b=a4m/ziptYJFpj7PNw2cymLcdw69oslFdODBj80a58Rs/U0qgZqaqUko5ew4G4ZXIiq
         21xsT2C4iCNFZaVtXrl1v44KPq5lGpTc9CTxvaH0kyb4rJ3mMroleR8SrmfWJHxIQkHf
         ET3EGMlmDFhZKBUZXxTu9Ye+Ey3b4X8fShw6tKAOkltyeO53rr1JTJMDSDpeCDNPSUOL
         vKPDDvwsGDhNhjnF8qGkMlxZpt3i100lBwm05083PTFa/18griap+fGzweGm/rWn8gSB
         rV+fjbxpZnLi/rh/q22OevFf0q0JKHNBYoJgQqq44g9rPyLrlxd5x5bJuZKbS/g2bAaW
         kKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RWUyBsKmAFKnzuyTle8X+IqQwBw635MonpJL6f0XlXs=;
        b=CaVj2MGgU2eJdrWPRFI8q/Rorz4BOPkEuvrwYnE3jPTQZzxQw9u/I50yFXtc+fIB6T
         Yf1BOTDeA4dRabSsWk1JjapaxNUZ35gpS2jfMR/uJKUQNDjRozOHgoN/FWs4FL9vpr20
         /T5BcHTWmp0JU+MDIAF31ROensteXWBtTiVhuu4w3pgXojPhp4WLmhwSVzY6DRbncV95
         AITAyEyXuUCc/vzaShZjAEWhOXO4ROOiF78dfHr5cAN5U7bGHb7D08m/4dDvWflORRs0
         WAfh6v1vzO3ifqN7NUkpbADJGs6tLyYpKMJNyYPUl+nBbQejqggdnjcLsgV655m0icTX
         ocNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Toi2dF2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id b5si85532wri.2.2021.05.06.09.52.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 09:52:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id h4so8820682lfv.0
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 09:52:44 -0700 (PDT)
X-Received: by 2002:a05:6512:2304:: with SMTP id o4mr3616459lfu.135.1620319964213;
        Thu, 06 May 2021 09:52:44 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id f18sm777789lft.98.2021.05.06.09.52.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 09:52:43 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id i9so2191535lfe.13
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 09:52:42 -0700 (PDT)
X-Received: by 2002:a05:6512:1095:: with SMTP id j21mr3512256lfg.40.1620319962710;
 Thu, 06 May 2021 09:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
 <CAHk-=wgU-ERpeM0CJnN8JTVVUsBRtgpvU33sKke67V6pZj6A=g@mail.gmail.com> <81ecc015b1bd773f583cc86490e392a0@codeaurora.org>
In-Reply-To: <81ecc015b1bd773f583cc86490e392a0@codeaurora.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 6 May 2021 09:52:26 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiOp-Q0sFhmzGy2R=uMNV7Q26yqjeKNnwCnXgffnuDc9Q@mail.gmail.com>
Message-ID: <CAHk-=wiOp-Q0sFhmzGy2R=uMNV7Q26yqjeKNnwCnXgffnuDc9Q@mail.gmail.com>
Subject: Re: [GIT PULL] hexagon changes for v5.13
To: Brian Cain <bcain@codeaurora.org>
Cc: linux-hexagon <linux-hexagon@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, sidneym@codeaurora.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Toi2dF2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, May 6, 2021 at 9:17 AM <bcain@codeaurora.org> wrote:
>
> I apologize -- in my initial account setup I'd done the key creation
> without a signing feature/capability.  So in order to sign the tag I
> realized I needed a new subkey for signing.  I tried broadcasting the
> new key but perhaps I did not send it correctly.  I'll try it again
> today.
>
> http://keyserver.ubuntu.com/pks/lookup?search=bcain&fingerprint=on&op=index

Ok, that ubuntu keyserver worked for me now, and I can verify the tag. Thanks.

         Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiOp-Q0sFhmzGy2R%3DuMNV7Q26yqjeKNnwCnXgffnuDc9Q%40mail.gmail.com.
