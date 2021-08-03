Return-Path: <clang-built-linux+bncBCA23SOFYYNBBLGMUWEAMGQE5FICNGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 927603DF1D0
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 17:52:17 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id f62-20020a17090a28c4b02901733dbfa29csf3479574pjd.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 08:52:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628005935; cv=pass;
        d=google.com; s=arc-20160816;
        b=RfTEeRTQqAyrMoAJSIDyHvf+vc56Xm/1ZXTwxJqaKvlj2efnBOba8baqudYXSjazwr
         vQWKiotgWJUU7kcpeLFcunkoi8xIZm6zWU0M+CO8nndS+y5gSDhDQNASwVfZg/EvKL+G
         ggm3F+dIxTGfCCXVkiOSUj8jIQ1CXzB8iEa+DaLo9mWe4HrwAZ/eIGJ+vM4FnNAke8wB
         uwxhXlZzXVALbDX0W3YdstNy9phBoGUKXSnytuODJ4c60IkBW39UFmY7WHy0n+1R+uMq
         44BrmkwbMSltLE4WBIPqsgcLc7BFmwnywoICqWFCV9x+YU4JZCy9epaM72HYNYOw7Jbu
         v+RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:sender:dkim-signature;
        bh=WLvKDjV0UB0bMzYxTfRucOK01FTls1EK8c4v3sNYq0U=;
        b=xCzGsOumgCPNDLchKdJgLznG/EqDCDglrDMJT1A2tDN7RevWSnpYb7krykliWuY38i
         hDAvQcy+YepIJSQaVDoM6KdMjlv5JalKsnnosoBBd9Sg2dEPxZsgIbvcJMyAVdP1N9YO
         HoymOCQe5W33Lb3NpntHByxmXJVNxDk2iVhoPKhd7tVXcU6ANbIZCdVRhaEP/CFuRO3h
         m8AVMJRVbJI/Ppb+Y+6cuMVNPexkfCpF16yl4P1EfE+qRX2AcqXLgfxyvMWrLdlTPnFh
         eEP3EU2CsXZIomDseObQOXRkz3x1kKPsMFuZ85F54lwFwclj34FZFLngJfW14f0ZiMd9
         tY7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jerome.oufella@savoirfairelinux.com designates 208.88.110.44 as permitted sender) smtp.mailfrom=jerome.oufella@savoirfairelinux.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WLvKDjV0UB0bMzYxTfRucOK01FTls1EK8c4v3sNYq0U=;
        b=Slk+TWYeDhAoFUyGBBUhaOLed27tZv4r5na5j7IWJOJhhqrzBuG2mKgLwezITajXY+
         UBKl7ExGji0T8poJMz/yrt7E7colpDuJnxNoBfRcKm3ysYnPejykQcnKVWtxOouI+sOX
         C4sLjjz8RpvNfG9h/qGT9V40lS55oB+pS/Z2zzxzVF8GTangHS4yQj6hoR2x+Ydqnk+9
         08JYpcXmu/vpR+v5zYGwmgvm6ncSFkKNc7/yTYlz/Aabzr6z5ZMEz2yQZlDvU45qisPu
         Np9KABVEhrpNJtBWsCwipWSvLu5rNkCu3cu4RnoG8+4O7sVsNpu29xCks+Hg47GbWTS+
         ZwsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WLvKDjV0UB0bMzYxTfRucOK01FTls1EK8c4v3sNYq0U=;
        b=oAIDIOkC8PJ4VO1c6s8VwVvW9Ire6whVxYi20wwa439ffUVzVPZLXluyHluN7oqdQy
         gelUBUKYUXPnm2eQYCHPCT62QifzoX0cPzbDTgtXdkV2abcwP2i1HCDR8mCierM3dHvc
         pfwVnrzAssHRQmyTgTDoAaHskXpiTKePYkh41/0GXcF5fb2gzqMdFZj8g8CTtbpSHotp
         MJveGe50Juuewyc7P4DvExOimfm1h4TaTu1z3M8X5dVoSaz7dWRdvMetqa/92tJ77Pxo
         RVH1j+G7+0Z0iftbTqy4ceXTAsDyE/nPEDcfhuq5js+vtF0fRi01rS8C9IgiuXz8qrWG
         JX6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vrycQdW5cjnLp+J9a8o8RNDjhvyNx0jJSdp6DnaQqwg/zz6iY
	PcWXIkBRyaWsJgaaAXjf9JI=
X-Google-Smtp-Source: ABdhPJyBpI+r9BEGf15Htnm17t0VrIIFNksMVROC/Xj//1qnLS3ZmyTvIsopH0ku1NPasNu0hs/iPA==
X-Received: by 2002:a17:90b:3b47:: with SMTP id ot7mr4905437pjb.149.1628005933020;
        Tue, 03 Aug 2021 08:52:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:cf09:: with SMTP id h9ls2008038pju.1.canary-gmail;
 Tue, 03 Aug 2021 08:52:12 -0700 (PDT)
X-Received: by 2002:a17:90a:7d05:: with SMTP id g5mr4990174pjl.14.1628005932186;
        Tue, 03 Aug 2021 08:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628005932; cv=none;
        d=google.com; s=arc-20160816;
        b=0Qp0IFR5OcqhZqlmrYHTI/a7uHeTjCa2JR6en93ONz8/pqX0gbM7en3P/rYbhD9+m/
         J8ME/6WYZyKgwpwxDWWUv7TleqqkD6o5ENjYF7i0LMQtZ/mQGwHgiI2R3O9PRTHBAo+8
         yCFrJ+nJPJjGMp1VmIB/5tbQNQrHM+SP+aUwZ2B28Lpudl8aS0fVEyK//SwMg/yQkcZT
         iWxMeWjWdpDxiE/6WMvHNhAfrJuJkeiK8hxZjxkRUYlUIkvOc2O8f0mrJ6VjAKggvVqf
         M09drnMaDphHA+cEwqTH4AA4Hihh+uJJSt07X1BDmrvqPwVSHc7KSHxodVSOFmsukjgW
         HQwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date;
        bh=lUcw+2lNSUUJhvsCEx9XqoOuY24iZkPhghYXES6Ibi0=;
        b=w3BGjZjgjeKFiKuEv/NyTM2uxrGHpGKaw0tqd6FHGSlaE9F3VYTVn/yvmnQLkSy5De
         KJSqlYbPUOJgFFhgHQ/YtN3I1wJIy8wJn/ntlRvSutItKz87SqT88PunxqQhwCejQxh1
         g1U4pZHt3yScbdi+bpiwPSz/ertlDtjsykYrgkgsRVN2mvi6jD2XAUd5j1Nk2gPdASyL
         8W1PvTe2ZKulAQnvaxX9gCt/DvKaSabENpcJiOv3Lm5O5e+OB0auzBqVv29HqVWmaDBM
         9v2itVIYSr45xpkUtMPCxSUZ+fJZ+J7Nqrjdh+86n3ApjYb2mhtFfBZOQMEO5p8crHcA
         A39A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jerome.oufella@savoirfairelinux.com designates 208.88.110.44 as permitted sender) smtp.mailfrom=jerome.oufella@savoirfairelinux.com
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com. [208.88.110.44])
        by gmr-mx.google.com with ESMTPS id g12si222574pfc.4.2021.08.03.08.52.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 08:52:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jerome.oufella@savoirfairelinux.com designates 208.88.110.44 as permitted sender) client-ip=208.88.110.44;
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 897E09C0C99;
	Tue,  3 Aug 2021 11:52:10 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id D5cXTajtjGVF; Tue,  3 Aug 2021 11:52:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 178419C1908;
	Tue,  3 Aug 2021 11:52:10 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ko32_KOWxwba; Tue,  3 Aug 2021 11:52:09 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id CD2A59C0C99;
	Tue,  3 Aug 2021 11:52:09 -0400 (EDT)
Date: Tue, 3 Aug 2021 11:52:09 -0400 (EDT)
From: Jerome Oufella <jerome.oufella@savoirfairelinux.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: martinwguy <martinwguy@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Hartley Sweeten <hsweeten@visionengravers.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	SoC Team <soc@kernel.org>, Nikita Shubin <nikita.shubin@maquefel.me>, 
	Arnd Bergmann <arnd@arndb.de>, Oleg Nesterov <oleg@redhat.com>, 
	Hubert Feurstein <hubert.feurstein@contec.at>, 
	Lukasz Majewski <lukma@denx.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Message-ID: <817752520.64672.1628005929651.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <CAK8P3a2z_xxpz9hAYoBx5=bS81V=TkjEU6WHNhPi1UhQ3UScfw@mail.gmail.com>
References: <20210802141245.1146772-1-arnd@kernel.org> <CAL4-wQqCL1S-GYu7VKJeTT37wh=rR=SMUuwgKiXnnn_Y=uydOA@mail.gmail.com> <CAL4-wQpKLtSj0xfNUXXLhbtN1wC051jpRneAuLYOi1riZfiinw@mail.gmail.com> <CAK8P3a2z_xxpz9hAYoBx5=bS81V=TkjEU6WHNhPi1UhQ3UScfw@mail.gmail.com>
Subject: Re: [PATCH] ARM: ep93xx: remove MaverickCrunch support
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Zimbra 8.8.15_GA_4101 (ZimbraWebClient - GC92 (Linux)/8.8.15_GA_4059)
Thread-Topic: ep93xx: remove MaverickCrunch support
Thread-Index: AhRjygBp3+fyk/ZVaeE61BpHQHrtaA==
X-Original-Sender: jerome.oufella@savoirfairelinux.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jerome.oufella@savoirfairelinux.com designates
 208.88.110.44 as permitted sender) smtp.mailfrom=jerome.oufella@savoirfairelinux.com
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

On Aug 3, 2021, at 7:58 AM, Arnd Bergmann arnd@kernel.org wrote:

> On Tue, Aug 3, 2021 at 1:41 PM Martin Guy <martinwguy@gmail.com> wrote:
>>
>> I forward opinion from people currently producing and supporting EP93XX boards:
> 
> Thanks a lot for bringing them in. I definitely don't want to remove support for
> something that is actively being used, and we don't have to merge the patch
> if they currently rely on MaverickCrunch on older platforms.
> 
> It does sound however like Jerome's customers are using a normal (softfloat)
> Linus distro on EP93xx, rather than one using the original MaverickCrunch
> FPU instructions. There are no plans to discontinue EP93xx support, there
> is actually a good amount of recent work going into updating the platform.
> 
> Jerome, please let me know if I understood you correctly here. If your
> customers do rely on MaverickCrunch support in user space, I would
> leave that in the kernel for as long as ep93xx itself is supported, and instead
> require building support with the GNU assembler to avoid having to
> add support to the clang integrated assembler. If you don't know of anyone
> using MaverickCrunch, I would go ahead with my patch to remove kernel
> support.
> 
>      Arnd

Arnd,

You are correct on assuming usage of softfloat toolchains and not
using the MaverickCrunch unit. AFAIK, I am not aware of active users
of this FPU on recent setups.

 Jerome

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/817752520.64672.1628005929651.JavaMail.zimbra%40savoirfairelinux.com.
