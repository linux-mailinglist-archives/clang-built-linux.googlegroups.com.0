Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBQXCYX3AKGQEWR35KPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DB21E88EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:32:03 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id v14sf57167ljk.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:32:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590784322; cv=pass;
        d=google.com; s=arc-20160816;
        b=npcLaOKCpFnmzwS74bqxVygQjRmGDJojcOqXJBILQznfhSR/mksaeiF13fCzg6HoTp
         La7C+YTfB0CAVG7cB/8QDW9OAxb32Juy/srJHgoGl5VW0YyXRGgIb598jPPnBKi1C4cj
         AWK2fJ847xd/nZQm2VDWqPTqF1d5B9UDBIeJGPpNU83A48EZZb/pGBWw7pjGDGr97BxR
         p/YXUDcZCSp8YdLjR0jpawFh4n1uJEpN5anwuPNXs8JXC1r6DzVeP5AH9ihfpcFs4vur
         X8FjZRHam6+SGkiZNGqCdwa+Bz3kkmX2t43Ms41rsfgVHekZ3CgIi12LeBhOCU8nvGYe
         emxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pMIu/hfJnVbE1vZVN+/a1vaiSNK3Iqum0A5dwWZglXw=;
        b=0cyBR29/ecjiS+MHO79TOb1H/ay81qnRl9gPvWAVyND8AbxUZuF2++UhipaNDifroA
         D6xXBnkncGf3IBkKlvSmRMtOY5sbk4dwmcdISoTW30zBz5M3uz7t+CPTaLSqFIhUCvES
         CRLt2iSBE9xXgOOz+hX4Rm5TmddVWBXXcxLd/kYaysQ8rACeRSrxTh3ASwQoGic4Bjrc
         2/pxYTxlqqPZo2US9SmfJwAH+Rm+kcUjWboogFbKBxP2/Uijg5P8vkQIEjO+IUxVPyTh
         /Q5Ez+ExViTH2nkkqv/OVyTqCBnxB+hTPwht7Et4sRdRorJ2XSqvP/oLLY3rEq2gWoNe
         /0Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMIu/hfJnVbE1vZVN+/a1vaiSNK3Iqum0A5dwWZglXw=;
        b=dzxN55nWILbhgXx1+Fe5q3IeBNGFE5VQQxDZL8ueE0+sVw7GFdD9w7gDwsNp9Pvozi
         qhZoR+ITUK+a8+den4rrDayd1npqRuScJ/0EOlHzQOjpwD9R+DO2/8X/GdZBmwVbvauG
         OQ/K4Lx/Ke6QWIZXEskCaUd9EC5W38bEfh4+Sq6MviXeMiRUjoaWcDkUpzFvv6YCYWfX
         YqzQE5gwksFE7japm9Vjf84L6XAf9SGcfSglvhal+wvlwpCH47mxPURXHNxmfVD7zVwV
         W6yzFeVHmN/cauRkZ9B05mo6KdE257ffQDe0SHGwmnsHMpjXhaT8JIu9bFsx1GLXM+eW
         wPFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMIu/hfJnVbE1vZVN+/a1vaiSNK3Iqum0A5dwWZglXw=;
        b=Tj5H50ddRT78IDmqPSFOhgnfTVSA/ypEReU6AdgGSWUYH5clW++lcJWT/xR1Fo69L5
         Nhq5dhBSuCgN9aKVGwbZGaDKa8OaYJg020R2fgCdFalQEnhZh7/98d2Ii5ekpPPLihqx
         bEsMCGQsHFSzZQ6RNikzewjRqhLiOWPwuvQjEHF34k/tfTPR2tcDOeOp0RFVo4htVxsG
         NHLntKS6CNUPEz8vCzV4imYy8yE8n4Z7K452FP8ClNJCIfu+bM11SrgV4NklkgFZL1Wa
         Ps39wsSi95iMV9Se2fspqJNB9Kdg/zfEjJHEDUeHnJOrhmrKw0eM8JMZcSpsETzgICN8
         eENQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FAhNGDrgrdT6OapHtw9OQjPeqTuQKRqOIo6rMaHj3J8mHnQGJ
	dV5D+ljhL0B5mzH1dc2D6Po=
X-Google-Smtp-Source: ABdhPJyG0eociv5C9O3OPhb6YA4rk6JLD8ZspnBFRWKHBzbaEJNSTto0iHkzkEHDeUbf0PNtNwbQkQ==
X-Received: by 2002:a2e:9d4c:: with SMTP id y12mr3936964ljj.233.1590784322590;
        Fri, 29 May 2020 13:32:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7d6:: with SMTP id x205ls673039lff.0.gmail; Fri, 29 May
 2020 13:32:02 -0700 (PDT)
X-Received: by 2002:ac2:4a87:: with SMTP id l7mr5263177lfp.171.1590784322154;
        Fri, 29 May 2020 13:32:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590784322; cv=none;
        d=google.com; s=arc-20160816;
        b=mVLUdt54omNXeU8hUSKJjDZ7+3Y1BZ/DeFp+uU6ON0nWJNtQfHf9n6hegJ8BtSt3Hg
         mJakwLIAO95wrtnkTnIBaml/j77Jl4YRDXcz8KpbeIPVlXuienlSVyvqzCZnCC5MBnMK
         eU61h/nfLSfgUw+1ITvPpVIj9ZRblxhqBjlY6U0seM7MR34V+qgEw841WEEItZ54j1Fz
         kypU/SScd8fzyYWdQ/aUg/2RVQRhggGjwk/PwZTInhYRUU/jM5BUoN/leDhoLY3i/H8V
         aaN3Jjww6darHvdgVOS9/HIhEANogY2OKoX41EbtMCPkBi0cX2CGxWU4jp8jT+px5ok+
         IhRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=GE3IQ+XQVjUR6YCkuwGByDEyk4nkjdsvkTpIEbheiPk=;
        b=oYGvelsUOlcLXSxNAxGpcKgAagej84kXgkYXtOsIT2mMn6C4hWTpst3NExFkhjkCfx
         UY6L8Kz40a4cB1vjqHkWjRUAQ0ofYhAxWTULaCb2sSsPCrmtd0zJsTDC158GK0rvRRP/
         DwnXy0ZRVGOejxwVXq4xuIuZAlmk9B6Xp8T8e813BQN+1XZ6R0FLNSX3daC8ymSQ5zAv
         wnxjlCD5J4SrfbBklR8Odv+UO858brptTg7YlU89pv8VrrjrArC05/wu1JNgk479eCjT
         jJEvrcrP8CzIGXWtppwtQhZskgLx0wbhp/bO+zk9fCmOdbje0mE6XAoHYk0HbqA7eltj
         +dRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id r21si612651ljp.0.2020.05.29.13.32.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:32:02 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1McY0L-1j8kF20fvR-00d11U for <clang-built-linux@googlegroups.com>; Fri, 29
 May 2020 22:32:01 +0200
Received: by mail-qk1-f177.google.com with SMTP id c185so3486123qke.7
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:32:01 -0700 (PDT)
X-Received: by 2002:a37:554:: with SMTP id 81mr9541210qkf.394.1590784320047;
 Fri, 29 May 2020 13:32:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200031.4117841-1-arnd@arndb.de> <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
 <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
In-Reply-To: <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 22:31:44 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
Message-ID: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer check
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:RhXH84es8pTC74MG6nUzF27F3pHDYUaJquyK4kiFJBJEbhn5Sdk
 SuzYoL4p3wTvT04AAmhPv7uyJTRRCQojY12muCm76GEuKV2bDpcBp3XKa7ujOwVJoWOBVoQ
 sIj2cHVPQB+Lz9ywuui3Yy+8lPvWU/IaUsGgOvJ+SJwumRcprBAOAI5tKuPNLTa9tuPCtHO
 uioFyg0U8wis3KnwMinxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/LSo92lVLow=:QXuC48OofEKRmzZ9fGzCs9
 I6I2gfrmnA2/wN8jLDFKUhs1lt7ZanCmwzAm0LrsBXjXuq+J/YlvQWie2wwjLZEpmC2Kush/B
 TEyNmDpvzm/x8OtbUkEhscEnsyLIzwL6FE8eYehps6nn1Bag+H/nTN70qJBmqqD+MIz/b/SuE
 eo6qsZarcqlzTyUnh2SeOLeyiJnzHt+m3H5N30GwmvQBVMisepqYcCcpAY+0sBW24T3eW4i2t
 8LXdEpKI7tRXt+Ij4hVUeE5GbpgtoUdGEORQxFx6UOEnQIPfiP4L4mh9k/j82Qb+iaZx7tsq9
 n/349pj6OVvbw1pyiQYSCtTHpKOG4JcKqpLeS4vorL7FR9looBy1vAFymVTJ1aKWDj3/C72dJ
 7b8F3j6iWPznqhMR11eJMQIhe+bnPUaNqNuFYkfHrC70QJWgJoEQhfUxsK4YjrVZ7CJ6gGyY6
 1wDok9kNoF5wQHs+G4ehg9pEyiNmkwS2968bmHkucvghBY8gshvBHk3+hXPfpcI8HL02m0thk
 pn2dAk6DJP4TwwoswSx2c/W62s/weVR9s3Kd2MROaLfhOUvLIlOdxlRpadZcrhwCeQBkiXjoe
 XlrE+u4IfvIr7MFLsR9MZDn3CZpsVf4KkbC87PgaUK59Npqyd0Ve1fJ/RnbGFSfSqYXZaMdhB
 9WSWsApG5vcWgIVnHGnjXrxFhxybN3r58EEfHx5/6NTeWJeEDAmjz4Rl+iVDklQDCRZHutqi/
 nf0ELtpm8YrDUqHzVd4dw8R1RQQ3Qdpew8H0FozOuWA2527BTH6xdbxTitqnpQ1c1uJfYk7N9
 onbuegr48e2uJhIw7g9gD0fhIX+JsvRvMS+wvMglFnpPqjopek=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, May 29, 2020 at 10:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > See also Nathan's 7 patch series.
> > https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
> >
> > Might be some overlap between series?
> >
>
> Probably. I really should have checked when I saw the number of warnings.
>
> At least this gives Mauro a chance to double-check the changes and see if
> Nathan and I came to different conclusions on any of them.

I checked now and found that the overlap is smaller than I expected.
In each case, Nathans' solution seems more complete than mine,
so this patch ("staging: media: atomisp: fix incorrect NULL pointer check")
and also "staging: media: atomisp: fix a type conversion warning" can be
dropped, but I think the others are still needed.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3u9fs9pSOXSkrmO%3DxNWUZ5fxZnL_O%3Df%3D0BDZ8DkHNYWQ%40mail.gmail.com.
