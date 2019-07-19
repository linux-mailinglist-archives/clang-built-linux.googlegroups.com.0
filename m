Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBTEUY7UQKGQENLIYJFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 891BF6E6CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 15:49:00 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id u17sf7703381wmd.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:49:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563544140; cv=pass;
        d=google.com; s=arc-20160816;
        b=bywBi3eUfpxa1upsXH/Zq7yMoqIpigKHRjDv5B5mpd9Y83F5oNB6BHXhvwFWMpUF27
         jnM2jjUrwf70yJVHcGuOEaGVQS1iQmC+ZwL5/FTtxc8+Qe45ivCthbamqEPfUw1qz7fK
         ybb5Uov1z43z/tEs/QJtHyueyCNdmdS5AubOy0lNBDtB9kiyFxVr8we7cxTAPJ1BD6g+
         nURxPOBEkCzyMouligWyWdSUaXrBxHPeAb2UZbBtChO07sbfVXMefRi2fmZE7hImQ9uT
         2ZMc3qFzHI5m6nxfEl+CHZoAN7Xnrf2UiGW9n1mq0sVlJQn57KEeYZf/RNpuzYHsMCL/
         48FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jxUQKQDBZgg0i/zOeG/qx7VBGNxU9AKABCGhXo9VnDY=;
        b=biv8jhotOvmpouxRQ1+oT1xCdmmTrcbCjADEodMMJG2WCtm8ctgC83BqO0FFASWBDM
         +K9ihMs4RpHbPrXLp3kyFq2wm6rFThuF9Ijxchuqe4ntCe2y4S+yni00VHuL7Z7NPXBl
         1LaG/4bl1K6orRvPnX93SrcUOgV2SypQr5DpT60Po1uvH7lOkZSlqxbLllYZokYwahq7
         Vv20KBTe1E6B1XZgZbuwd1PnQSj9E2A/irwp/VC5zxiqEn365gPz4ITEo+IvYFcTfQbC
         Dj34kbcQvwAuA0WDJHqsSdWZfdsdVfTPWh6C1xu9lETvZmUySKcHv4zfVmZJrpflBl46
         bR9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pxnNx+Zx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jxUQKQDBZgg0i/zOeG/qx7VBGNxU9AKABCGhXo9VnDY=;
        b=d/PGYtGnQLzBtpFJBV1ZdhdrBsn4D5+az4Y/gC7LHiZvv5I4L3heoIwkjZlxp6//+O
         UbVppkwIDQQ1bV1dl/koeDoT4FvOqR/fKhLMcrdCi3mWxsCpB2y2rC/+Y3+3IyiRbSur
         wS2dADK1+mxiaYQRmco6ChbI2IrvNIHTfYj7aGFf9sBpQ3tS1cnVfu1lqh6uoVFgsAEs
         XdPFoJ0UMO98GQkJy1a99XMnBFcNtcnlivMu6EY0k2neP39Z29EKXstPTILmzu2L2CXu
         PQzIAbYenpayVF5P0Y/QsBvm4pGFQN7dpQ+FBEGoXS8H/T//On1XTvFgjjId2GWYYn94
         X7ww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxUQKQDBZgg0i/zOeG/qx7VBGNxU9AKABCGhXo9VnDY=;
        b=I1JwvnHDsNs81OGa9Jsnu3biG2FEClh16siu7x26NqbG36O5+YSRqMGDsaQURWap0C
         0wJLWG9hWTioO/k1+wQUfgGdSAmbzh1vfcErQ+B9tQqjpVQdbNjZZz4kJ2atD0seCTdR
         Q9M059+HIXkT02ohVIwMcr50V9mlXMcEvd+d/zlDbiNVJojosd/JF9j6XQDOA+Y0Zp6Y
         s5UImizKfLuEaVxSK699fhogpC9znNJiOmLB5v7nZ5Hb4wGL0H5Wug6YUwlbR+Pl1pds
         3WAJezm5x1Ilybg1W5Tf6doGDCQ3GYVysf9koRS94tjMiJX4jouAjDH5Zzjh7FOy+UTR
         62KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxUQKQDBZgg0i/zOeG/qx7VBGNxU9AKABCGhXo9VnDY=;
        b=MK9CsFXDVzOBNCGQomxpqchuit8mj7C7ll+UpeRcs3wIpb/kXVbMjN/SfYFUQUTR7m
         OFf0UALdSaZC75dZvbYNZEWiePPsZ1K4m/2lWOqEMLSWkad5pTSjyzFJYE2cuWqLTqvJ
         O4iI1/zmpwUQ+Vw6eFwmLrjSvXSGCaKZBWXEwlEV31XMdm2Qec2AH4QDkKc+gsiqEgKL
         FKfAAzRjxr3+Dadj1X00Uzc8cerov6h0lzusYASPx393L/P8mjkbwxEPvfavwrUBJoHr
         7X+8B44HQ6c/4ycLD6+YpHoYDY8Q8X3imTIdsXTHFiNt84n/B7KcTiF9+5T8+j4f78Wd
         W4uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXHswXFis3O8yxfBpoP60Vd4UFnfh3IkrJ1cvDkC45HtO41MxBJ
	ir7eJpcAjnBjhasfV+1F9lg=
X-Google-Smtp-Source: APXvYqygWooDgJDWv5tvsRRzn5lhIElP+lJUoZ4A2ycjWpvvxUEUB3jJyPlawe9paOVNadULOhtDWg==
X-Received: by 2002:adf:f2c4:: with SMTP id d4mr48936740wrp.3.1563544140300;
        Fri, 19 Jul 2019 06:49:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:428f:: with SMTP id k15ls9699991wrq.7.gmail; Fri, 19 Jul
 2019 06:48:59 -0700 (PDT)
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr57739255wrk.98.1563544139810;
        Fri, 19 Jul 2019 06:48:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563544139; cv=none;
        d=google.com; s=arc-20160816;
        b=dqkSXrHMpvYxeiXjF2niClZGQHUvHHLgFOrgY5NMNMdn4w0XskIbUdmy06qhd4f5SM
         1DKZXudV1E1FVusnGXOCrMMLKBtxwHMcU8vLGiPUVfgcaDhUePpLUtWCEFSeKQnRXw5N
         W4hqIds+riV6ZQ31l2SdI4NiwbTIXdhkEyCKgKgLomxh1DENnEGnFLqP2s0GYbe9oN81
         eawmsY3lO9vC76cDEZDclqYDJ1YhLTBSydHEuxrxnuchG0G6rEAl45HGtxaPpCwYb2um
         aPluv468DItL76535QjBAdDfdx+vWP6Hk7zQOZ7MTtvrBGmg/hgYKveHy+LZx4gzmD51
         tEcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=smQrXP7fwTxA46Gpk0cUyjwxtkHs1F6EO+T3/TBVils=;
        b=z+ZI3RKhKWkg9cEB0bXHId+z2HjLfgu71XgIYGVkSTxX8z+Mi42X4GaO+dcH5pPedn
         Vn9iy6rO8SOHvnxsUZntOyKTiyXQSjGAecYVdoAflsucyt9y2CgYPoEhflBnWlGmBHzL
         AdI9VYJnBCCEe4pjCVczlHX0lG4K+STgbhDEGwVAvpkHtjvk7kunYad1jxqIpAncrdWh
         OtBr5kXPH+onWvaO6CLsrh5Y7gbIWTdz9GNCAhCCk/aTZ76HdGEQUjJiOofZSDsrK0Sf
         FGygLK3J1yaeKveGlg82PwwFYgTcAshFgWfqe4JrL3ZrfzYddXWjlhkKkRAj1cEM0Hmb
         SBvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pxnNx+Zx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id z24si1047193wml.0.2019.07.19.06.48.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 06:48:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id x15so28892260wmj.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 06:48:59 -0700 (PDT)
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr46214806wma.36.1563544139506;
 Fri, 19 Jul 2019 06:48:59 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de> <CA+icZUW5jNJY3L5EcxrtOttwpbdAWQ7=U_bZaLHcTogOdNuTcQ@mail.gmail.com>
In-Reply-To: <CA+icZUW5jNJY3L5EcxrtOttwpbdAWQ7=U_bZaLHcTogOdNuTcQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 19 Jul 2019 15:48:46 +0200
Message-ID: <CA+icZUUtNibYGbHEt+cqsu6cuKYF7=MobvPQ9mkXU1pJZhFw9w@mail.gmail.com>
Subject: Re: x86 - clang / objtool status
To: Thomas Gleixner <tglx@linutronix.de>, Josh Poimboeuf <jpoimboe@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pxnNx+Zx;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

> First of all I find out that it is possible to download and apply the
> series (here: v2) from patchwork (see [1]).
> I highly appreciate to have this in Josh's Git [2].
>

There it is.

- sed@ -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-many-fixes-v2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUtNibYGbHEt%2Bcqsu6cuKYF7%3DMobvPQ9mkXU1pJZhFw9w%40mail.gmail.com.
