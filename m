Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHEUUWBAMGQEREAUUFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD8A334BA6
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 23:37:16 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id i26sf7718668ljn.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 14:37:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615415836; cv=pass;
        d=google.com; s=arc-20160816;
        b=fT5j5iUG0sbEJyoGn8D152rxAWT7wTCll+EuKYY8CFL4NuR/pbnoSKGiNHhXZK/79i
         Osu3rGlFa9sjIrDP/Aq7G4dQgOFo/Yb6z2+Xx+H5uzQoSvbXWlub3rQUvOYMaj2oajZ8
         0nWM/81GOVc4owF2fx+o4xeZ98mA5cKH/h5kFn2Wia3VUSYe2jSd0T+eUiAmEi+4G9mU
         FFzCU9k1MY1mxu5/pP/DdJRvuSRHUXGSSWZ1l1Z2uOAc53hzsvtExtnyeA11Ky4k/T3p
         G8gfd3sigtTgDyt/NHzKVjeKs9fTHtSt22dHEDQmW4y8IYHU151ZRqWSR4dAAAf6rwem
         exTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=aDfTFojdd7ZleWluDQm6FIfqqGKddSC7yGpmFcOxGlk=;
        b=mnz2XGebnbAffBTSUszIaSGiOdUC4vYHAaxKZqMtPTXOjv3dPNmcTL2U17tz9EG8h8
         3PvrAqhlYXVMmXBmEbABq7NidM2fHKTT46fGj5cUm1bx09iMsrzpGew78EFkg6sICgQR
         r53jlhqrevyiZR1kLORMIbgC6/trIuz64MW5ZquFNwlVUMhyiKHl0vfNJDQTIkid9zaQ
         fhoO8j03pczMaELccq89IwtcVHc31nLVD7ujH6S/5fXabGGiTrMiViMZspMh52yeUNiJ
         nFuVM0oKTBOLd0sdGBvYz3BzHHKr6TeiA0hFIKDGOfnsE/0pOyFo3RUyG52ASH8GuStG
         +kBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="YNA/6Wh4";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=aDfTFojdd7ZleWluDQm6FIfqqGKddSC7yGpmFcOxGlk=;
        b=KgeYaaeOyxvW1/1NIvxTHPDrv3mqFxPsXSSQzoFRN3IhEUIHBgKUTAJGTcjnFawAyo
         Di4NohFda2IgTXuRHwkW4iJllrrE7aaMgX8JP/yjytXQclvgJ4FPvT+IylgI7QN5olkT
         mtj8aVnNOtF029rnz5nh0OdrMdXfqOibsa8SId+POvZbD/Pcq+TejK6kGdLglqt6uQzA
         Ujzs9WWMXsKxpZM1voj4pBptlUF34aOAZUfsqidDcWrdfqdqisQQAn4tTj/fIg7s/e9q
         BH6qxatmcLsQaK+9g8ev326xM+i6WLE1pKp4dNsCwIUtYzDIIzmHHdmWpb/+h7etKhBt
         fc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aDfTFojdd7ZleWluDQm6FIfqqGKddSC7yGpmFcOxGlk=;
        b=YA+O7vXgO3ziU44cI10atNiTRum93ER/uNPNRfyayb86zWsrU08J//hSSfxyMGEyEM
         W52cE9aXW5J6YUCwGKvMn0Wf+ZigcnU4vBDimEfFc2SA5ZndBltigsbAoIE9HU4P8HRo
         vbTy6kqiJyKjZjlnPjADoCp09OUY7mCLXBTlfGwDyZEH1Mdb9R7FdieRCK1YIRAWDw99
         sGfejT9y9mTb/5BP63tgslGy3K4jpzoh7D3/W20cOVbE7mpy6aKqcg22HnyOryFx5hi5
         Ph7Q3xqfUSavacTTFX0Wc0x/rIF7x/l+6pNEwhSR+tlrv8iaj6xhUy36aUKOmiUocqMD
         Y4Tg==
X-Gm-Message-State: AOAM533YYzf1gqYacg5GNb38VOxKVUFdHbf5hxoHLCcXoaT+y2GnhDIX
	Z+Cg74FGWq1hwp8yyU8mRB8=
X-Google-Smtp-Source: ABdhPJwQB47oeO/URdOGqHfplnNT+bkXfMOUjWlT9TpMC9k4d+a+URrA3cBpAGiM9teTqmP+u7B72A==
X-Received: by 2002:a2e:7a11:: with SMTP id v17mr3129284ljc.403.1615415836505;
        Wed, 10 Mar 2021 14:37:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3c10:: with SMTP id j16ls875565lja.2.gmail; Wed, 10 Mar
 2021 14:37:15 -0800 (PST)
X-Received: by 2002:a2e:b4c8:: with SMTP id r8mr3090570ljm.57.1615415835511;
        Wed, 10 Mar 2021 14:37:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615415835; cv=none;
        d=google.com; s=arc-20160816;
        b=Jd4q+0LDTzA0FvHtPlwpNK6DM4z6dfO9h0AWEOFxsdI5nNM1yQW7AQWvPVLym0WVw9
         mSiubu+P5U0Iwc/ZASxLUHmbGI7YV5KI57gED2jq8e2YWQHaz51q+tmvGG7v0xR6TvnL
         6UzcSIgLlN2+hlbOlMie2pTrewoc6RqsEjCvlVGWJrHdywI0gEWgesOm+q2ZeKcplS9J
         wWZA/ggyCFEnN0K1r+deIoEi8w7rBLDP2jn9J4l3fn+O2AnNFH/Ygmm4fltqz+ozEGjA
         QyG7FGzO87xHNe911S5oKLd/rSCyoj7vcx9AJPRubPN0u8sfp+MnzKTFqB+A8mah44HU
         Xuiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JjiVuZG/FcA7sZQ3RFg5K+v5XBVbHxIpROPFR1JKrfw=;
        b=cpTyJGcNiK/AyKsL/MQao5ifMmo5GobLBOBoQiYTURau8FY/po6SNSwDtJ4MjBCC0l
         b49+EZmswkLOHN++hmKlN0z4+v1xHnj9nU3gLgPM7gAKwtz/tCBO+L3qV6SHKUeAOZlM
         A2MS5cqwOaK6fpq2wus/NYmT+nDAw5fWwMLj/qXOmxWbrp5YbESQL5F2SLlYvJkinqgF
         HKGLAAPOEtFaTX/Dqsi7Om2G5clY203njRsNybIqjgAeL6vx4Y6knvYm1wXyfDcMwX2m
         0AP7UpTxliToAA0seOEOlShbjVzo3ldniquvnEaqewwlNyGEGzITDTdrlttmboVu+5WQ
         moEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="YNA/6Wh4";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id 63si27555lfg.9.2021.03.10.14.37.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 14:37:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id k9so36298933lfo.12
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 14:37:15 -0800 (PST)
X-Received: by 2002:a19:da19:: with SMTP id r25mr384756lfg.368.1615415835168;
 Wed, 10 Mar 2021 14:37:15 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Mar 2021 14:37:03 -0800
Message-ID: <CAKwvOdmAEKQmi-Hy4Gi33t4nb3mCuKUd_qmbEdwrkRwezAWpiA@mail.gmail.com>
Subject: commit <sha> upstream. vs git cherry-pick -x
To: "# 3.4.x" <stable@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="YNA/6Wh4";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

Hello stable maintainers,
While working on some backports I'm about to send hopefully today or
tomorrow, I was curious why the convention seems to be for folks to
use "commit <sha> upstream." in commit messages?  I know that's what's
in https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html#option-3,
but I was curious whether the format from `git cherry-pick -xs <sha>`
is not acceptable? I assume there's context as to why not?  It is nice
to have that info uniformly near the top, but I find myself having to
cherry-pick then amend a lot.  Or is there an option in git to
automate the stable kernel's preferred style?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAEKQmi-Hy4Gi33t4nb3mCuKUd_qmbEdwrkRwezAWpiA%40mail.gmail.com.
