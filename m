Return-Path: <clang-built-linux+bncBDE6RCFOWIARBD7K3P4AKGQEP4HSMKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9C8228183
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 16:00:47 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id i12sf13035834wrx.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 07:00:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595340047; cv=pass;
        d=google.com; s=arc-20160816;
        b=bcgtiJ/nBMUw8Z1ADzgbuIs8/w8eHZGMp1yusONjJmNlnynuyLX9dbDRTrNwut/OkJ
         rWYuS6lq3w31jYTfQEav+55Meq61eVChsO92yoF9cazROxIJ3g1NsqSbxcgWm4ajKEcI
         OPrjkNnzNcm+1/9HSAmiEeRJjm0X031ORM9bHCTwrhihMw881ZSN+hj7cP1/7p8YfcQw
         6bJaoZVHTyeo0BOS5l8N/KQyosFr4bjfxjkWOkUABJ3Iof2yiRQ578K0qdaTQLm5Emeq
         OMNyUkoAiAi/hxAI/q1sH+RGmnWXpkhmRC9w4ctuayXwe0XHEZzRufHIbvY1WVDd/VGw
         Od/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UJW4RVMuZ0Bn3b6MeCAG/DqsJLiKRrGxXrz5c5urWoU=;
        b=KqR5uB/WMqwN03aGUdH/O+PPmzNDTyv8lTRzCHSbCtdGw7agmbves34xQVEN7RdGXc
         2fcLCvnWwxVxF6gbDp1jWztq6MYd0QFhtMJHmwMUxvcnAVPds+65VEHBqXi/Bh9WbzMF
         yZN/8VuUFUma4aB3X1cRpofvuVoPV6hoik2YGtLR2oNb/g9P6T81YIhAhSAxqAywLG+R
         1ELxrhCmHuiEfol2uvy/FehvIJSYiWQ51uBgfdueE58ylJwYJddBXSf+O2EJDYkvlWT4
         6yFTHQjYPoPvhfZu8QT3DmCEXyqQumFC173MygEGTgWAboMwVBBCfaJdL0fW55WcwLbl
         klXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bOcqYmG8;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UJW4RVMuZ0Bn3b6MeCAG/DqsJLiKRrGxXrz5c5urWoU=;
        b=Z8wgja91aulMLRJQL0CAJecYpc4Y1JJGwMpTn9Yg1gpPEgOl9XIv8csqkYXsHa8kwl
         EinFDMmt4Xxljah6fVr3w+89rqJkXWHbVqMnaMVcjcvYHl09vdPyFx9Fzf31DK/RnoXq
         VfGbycv+wKToR3OizP/lkbFOn8xjJ5tFefoSaN4w4FPe4F90FbxvZ9aft3cbcca3zau+
         zd+WLxzs+sjo9BkHVQkiKieFlmk4X6lIMl5/fKc1sFGYuVkrEvW9zup1S8KxxyArXX6J
         jCmBSrVeA5Acfj4CHJ7wQGW+sxaQHiHsWdzr9qWCBvwDTBz1oAfIHqkPSKOyOBo7tUt9
         y2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UJW4RVMuZ0Bn3b6MeCAG/DqsJLiKRrGxXrz5c5urWoU=;
        b=h1tS0rUuH/yars2LRXNDHt8yL13BSvJ9kgXCTuaW6eqs07atIH8f/gbh/DJz8Teh5W
         AuYN69Wj1soFJRXg0c4c2xRVA8vo8Kl8Pw3cNxnKMosAklZNvPAqqOl4tdBAAL51WPyS
         sNGVokjJuuhjjkENy1ZvTcYhfMspLHuSB2kEzVcCRFAucoBuH8kB4EIXh+9Xh34VESx1
         TBaqrDVnvs7JlAkWxSwlqfsVFw8ak7ztb5Xt6zEIjeVKswYe/ZBX0peB96dfgvRleoY5
         dtS6l1ZNhzWaNsi7lb8emGL83su9nNsbI4pWjDnx8F1I/P/QCfl00O0nKRny+RP7XeFQ
         y7vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nhdd7bF1r4XkxcL/gNuf/YHY3NqfKS/9uC3KVxHZuoy9LC6Uf
	7LSnorDwmOUv15w1Ko9tTy0=
X-Google-Smtp-Source: ABdhPJxv/YqPPMAC1Co3X/rzw2a929nMjXGD+RjSghCaOgfIExTRrZLicuwjpBSBPBgqJPjoLXpVpQ==
X-Received: by 2002:adf:cd8f:: with SMTP id q15mr1496891wrj.347.1595340047345;
        Tue, 21 Jul 2020 07:00:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2049:: with SMTP id g70ls1353179wmg.0.gmail; Tue, 21 Jul
 2020 07:00:46 -0700 (PDT)
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr4373977wml.183.1595340046811;
        Tue, 21 Jul 2020 07:00:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595340046; cv=none;
        d=google.com; s=arc-20160816;
        b=oEYHN+7sa19Rz8ouWr/ah+B8IcOUwwheTrvkAyidhk/7He2QR2mWd4kxa/3hZZF4D7
         roEhVYvxPKkBbQffPMq16LtF6VUFhPfQHlWaHUCYyb6+qatggxz7/Fv4fyNQMAwOc47e
         wztGkV1rbI+TpTg9Y6QU2uMwmyaCAfKiOnRV5WIerLOwtMEbjXyUtbvYc/MGm3R8FCiE
         rcMIQybqguzZOffg1J0yY59t5vuby1F9lHpiPQTP8f5UJ1I7ey0Kw1+ETQI+y+afnr6c
         18XALq/rB5S8QWBzNBb+TyvFmjFQJsU4FKwT5WEfFFBF8m1/0Yu+c1cks+0xpwDrfvLd
         CKNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LcYN8Y1IIaZcrelCMeoSILE+PBj/1f6DsECs8JnOrC8=;
        b=l075PnYvss25wOz42qwJJKoB3ooA8nmRTasQHJ+BVO36CevOVRVe89LVT1dlGW2wJd
         +1T37BuIsh7R6deuDQrGs0G8TRCR9W+D6/RyE/K9t7t79G9hNb8um4xqUmwkXBLS5GUC
         /g6HwSSTm6ATKlSLaZBEHSovdzg7IEOLdiKp62hCb3c1uTvqI36t4MRU4mCkGhnzKQFh
         INccsm3UJVlvZWgoGAV5JSKTgqSyVVzStoLsM6TRbeSHaZkK0x1oYbxk+/0kCOwoM/hi
         j1F0VRe5cStsRvMqTUB3HIIUtJCRcmKPkTFZSky4qNcmpmcyHJpjlSd8SOb+NEj9p95h
         5vQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bOcqYmG8;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id 92si180004wre.0.2020.07.21.07.00.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 07:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id h8so3509510lfp.9
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 07:00:46 -0700 (PDT)
X-Received: by 2002:a19:203:: with SMTP id 3mr13539736lfc.77.1595340046294;
 Tue, 21 Jul 2020 07:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <202007211817.Pm9UWF3h%lkp@intel.com>
In-Reply-To: <202007211817.Pm9UWF3h%lkp@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 21 Jul 2020 16:00:35 +0200
Message-ID: <CACRpkdZyC_mX9tw2cqRPLrWdBRqsT_vME5w50vb2tQ9kuHD=ng@mail.gmail.com>
Subject: Re: [linux-gpio-intel:review-andy 3/4] drivers/gpio/gpio-crystalcove.c:357:10:
 error: use of undeclared identifier 'ch'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=bOcqYmG8;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, Jul 21, 2020 at 12:50 PM kernel test robot <lkp@intel.com> wrote:

> >> drivers/gpio/gpio-crystalcove.c:357:10: error: use of undeclared identifier 'ch'
>            girq = &ch->chip.irq;
>                    ^
>    1 error generated.

Oh I thought you fixed this up locally. Sorry, I'll send the revised v2
patch.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdZyC_mX9tw2cqRPLrWdBRqsT_vME5w50vb2tQ9kuHD%3Dng%40mail.gmail.com.
