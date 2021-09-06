Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB2VT3GEQMGQEKZB6USY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E91401F6F
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 20:11:55 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id e10-20020a05651c04ca00b001c99c74e564sf3717656lji.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 11:11:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630951914; cv=pass;
        d=google.com; s=arc-20160816;
        b=yaML9sul065As+sfbceZISe/m8Rn1cfu9b3FVAk6dhEMJlHdudYzfNS5SOt2cph3L4
         aaiiRE9AzvoFFEG6PpTOxyQgr3Gc++WWrJvcyci2pGrkqj5XXxVVNa/XJ1C7PjV53jr3
         3HCEfetmffIgwF0zqNijdB8XN9XpHXkfh5Sz01Y7qcpeOU31pUYJGs2n8HuFjHxCtB5m
         AE/7kJ6fMPPltQsyY1fhVMulbkeY91rJIfBkCPc7Jf7W5yDLGtgT6Qc3bmA7y6Pp+H7d
         vhpKfSu6b5uZJfXc0FlhREWXTolRQo/2Dtb8PjOG4+jjwzqleHPBZ/LGgBE0zq3WON+c
         udQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4SZ4T8lSrzp+9qfoUT1nhOUkV2kHhnyn+MWjcFq2LbY=;
        b=V+nr2H8ZB64p/6AAG0wQImZJ95hcXZ2/uvUd3HWfOWzkMUOV37s+xUC2B1sZvPR+XJ
         U+P3YgeTFvP+lwAgZ87hlxppfacRucRCpGINPFhBZJ5ea/8mRIVupynjcBmsPBUhWqdt
         2MWq3jPndJViRwUA/leGF0xC3Gn5+K8IGKIOY0R08vXwYULjuwxDir25C+SC+XrHK5zH
         r4A6/m+i1DECACeFF6hjPVIPh/utvfoBkhgjmfcxoXS+nAW1BCW+seGIZCgIvZCOF87d
         BnvSYP7WSX483or45g/JyOkgduZrw9cRPFCynEX+pOMHSq2I2XJlY8XU/8iCpTd7gPkU
         6GeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aXJR99is;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4SZ4T8lSrzp+9qfoUT1nhOUkV2kHhnyn+MWjcFq2LbY=;
        b=Hg8Ygzc2nVhmYNqIdRWmYnomSWtbuUuA0tj8UgCKryiEvbna3nG18i4e6lRRQI0I1O
         8UniwSyRvd15BBugmgTozgo4Nlb6RQXRzq8TkD7Z/iJiqLQ42VQdyCZGTDo7UymTq03u
         KM/UP1ZMcZSfOLnNcYRpB2oiYtVDT3w4tsI5QV7d9mJ16Zv8UoG1hPoKuh6teetn7RT1
         qp1oWeSznxPG4xcFAXfng0GihGdn6wrv9odIFOMaG1Crj1LYwTsLUcqbpSzyr58ivvXW
         TISE/nY8RAKvVtDoC9L1qUQRFUJdjTPLsfKZie+FJubfKrnn+JrlXknoTgGMrItb1ndM
         635w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4SZ4T8lSrzp+9qfoUT1nhOUkV2kHhnyn+MWjcFq2LbY=;
        b=n3peD9Xeb+wIZRzeoq1qJc1RyCbWo6kUx4LdfH2reqDGVwWSBgKFecaxsJ0VEDpBBm
         c0+K2O+W9+9BekYpe1zhr6uIMZQoZxF31NfU4ZjbTD47kLgocpck4X5xJxWi+bYoungO
         6SvCWmbKbbJH46VK5l6cTBTMSWKJS6YxADbvGRQezpYUmubmnlDVqJIKoRl8blrdHq2Q
         hhvyqXJGuxTuAFZueBR5l761zsL10XLgBmYVDMI+gao86PdsMEgyGZMuQnoKGIbQVIvg
         CwvHIcsAH2Dm7QV77E8BjrfkNpT1T72qIhcm4X91ugOrpRvnD6PR3g13Qlq4z0ta7gx7
         7Hjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/I/f6guSwnZqQR/skhTXthg+KO0em+rlahDibxUPc8guKL8vj
	rRcmQtbtLpyGOoY0NX2YKL8=
X-Google-Smtp-Source: ABdhPJzZ2NBtkDrppdx3CdvBEO4uP4Z1WuAnVjDtc1ycZyAFlo+uX3suD0ogykwuQhsLY9c2auT4Dw==
X-Received: by 2002:a05:6512:3882:: with SMTP id n2mr10010435lft.315.1630951914719;
        Mon, 06 Sep 2021 11:11:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3ba:: with SMTP id v26ls391488lfp.3.gmail; Mon, 06
 Sep 2021 11:11:53 -0700 (PDT)
X-Received: by 2002:a05:6512:6c2:: with SMTP id u2mr10011726lff.215.1630951913719;
        Mon, 06 Sep 2021 11:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630951913; cv=none;
        d=google.com; s=arc-20160816;
        b=WThxI2rVIMxndsuQkZiNswvEcT6gU3hnlg6WR8vciQGA9RexPn+TsZlENI6F0XBeY9
         MQGdV7HHZm1VqW/7qHiKxqArV0EbJdXVNCwoyTOv9mDmzPJNSGb7Egy7CzjsDWP1tRIY
         qHvCcsFAdxad4rNqrwQb6PUFVfOtm0u+ocnpxyMS7UbesWjwX4wNvsk4nUJeK6Dop5is
         NRQk2CpakZw22Fyoa/OGzx86/ojkHFPOJaF9ZiOeXkio1ACP15b2OBPq7akn45bWFdld
         I974h3rGf3aKXIkZzsyfop8ux7ZHuXTYve09MIQ3JuiDyeBliAM2pSwX4bg1AwXdjdJJ
         CJXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4/XxjtcwY9C34CiufMPdWiPHxUpCQ41YPVeJpbHXsEo=;
        b=iYHvVHAvgf8/HKngb4dI3fIueXZg6l+wQMUj5bjg7SUW3tV4JzeojMtIRUrlVa5gZX
         oqxyeHrc9dWgXBtbgSD3Wmg5A85tlfKAgArntV9tT1aaIxatrlXQXZU2xVEpLM+zjbHz
         QFTZJqTkqT8nL8j8/aK/weyyZ3hmNT2zo7OeLm3PrcttdOmmfZ0FZJGsMkGM7H8w76/K
         0t5yKZbbo2aQJ/PDz5Xy6fPq0LFtGd7iHa70tWcNl4pony203twviTAtUfF3U/Bojd/W
         QYY8QQA1jwpLo4jZvw/Dqaub0yKQMFINpzGNxKsgAucJNi06mBoyL8DRMVM4+ubKV+9h
         4Bfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aXJR99is;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id t7si136795ljc.4.2021.09.06.11.11.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 11:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id e23so663180lfj.9
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 11:11:53 -0700 (PDT)
X-Received: by 2002:a19:f014:: with SMTP id p20mr10473522lfc.589.1630951912698;
        Mon, 06 Sep 2021 11:11:52 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id u11sm1220076ljo.126.2021.09.06.11.11.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 11:11:51 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id j12so12517162ljg.10
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 11:11:51 -0700 (PDT)
X-Received: by 2002:a2e:8185:: with SMTP id e5mr11265751ljg.31.1630951911139;
 Mon, 06 Sep 2021 11:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
 <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com>
 <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com>
 <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
 <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
 <20210906172701.GX1583@gate.crashing.org>
In-Reply-To: <20210906172701.GX1583@gate.crashing.org>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Mon, 6 Sep 2021 11:11:35 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
Message-ID: <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Florian Weimer <fweimer@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=aXJR99is;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Sep 6, 2021 at 10:30 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> But this whole thread is about removing uses of <stdarg.h>, and
> eventually removing the
>   -nostdinc -isystem $(shell $(CC) -print-file-name=include)

Yes.

But your argument against it was based on that past argument of it
being compiler-specific, in ways that are not true any more.

Happily, it clearly is the case that compilers have standardized their
internal implementation of this in ways that means that we actually
_could_ do this for <stdarg.h>.

Exactly the way we do it for pretty much every other header file.

IOW, <stdarg.h> is no longer the special thing it used to be.

We use the compiler intrinsics without the C library header files for
everything else, so doing so for <stdarg.h> seems to actually be a
clarification and improvement.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwh0MBVfA89WLWnCiSnJ2a%3DhSAoSxfG-jyf7JJeBDPK3ew%40mail.gmail.com.
