Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZXBXXVQKGQEMTEW6JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE57A7D4D
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 10:08:06 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id n6sf9974790wrw.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 01:08:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567584486; cv=pass;
        d=google.com; s=arc-20160816;
        b=y9D8C2Vm03Zq6cXR+2U5DY9572HTv45oOrIwhFMvmgv9vHo1QlT2MCBSDxSFe7QOu2
         Gh+5gN6AXddFd8u4yoLfk+hqMB52xOkE4AtfEZWwEYjcYOHpg3AH9MO/FUx+Z4U1vIN7
         Ib5Sn40s/BUywyP5G20VuYdltm9RpjpWn/hJLDZs39LUB433DwHBDZfFcD9nfCsmWtI+
         vbKJu1N5XyRRKDkpTaQd0+5weV6KRvlkxgBvJ/6euNTPBfLRst7Yz3VI6lDHGZ66ifT8
         kWvDALuePLdAYz80MF14/NkdeNNdd5cFJj0R2wgZ28zijRTf6ZWXEcsuKXktLDuPkrzQ
         MrRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6hZChVDDKAKkBAnbktXx3NreDDZF8KMjcJhB2kGEi+o=;
        b=BxzIxK4CYiKPAGkLWdSv1g5nien99e1qi3p3C/ODAK2KS2h+q/phKIPzUl2DGqxSrK
         g+7qKAwssxNB1fChzJy7tPGKAuK4Ro7HSvgUKFwqCROg+uwDPKH4sB7ZNML7jNNwxZcf
         K32kqJfMlD5q28IYlMJg161xfpGJR06GUyDtgGDhfsr9dPD4N630/RNysSsQrmPwdMwa
         lk5WA9a2FW0tgzYubfgVfpc/8k458Lc7/Pprx1K5K5Al7s0YzU/MLyitnqNFngctkvxz
         P67kjBHcXCt6W+BejFN/jFmQfnkvM7fLL3/G81lM9jhbwxLES00B2tQLOSWYqH7lqQnl
         0JFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W1CN2OWf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6hZChVDDKAKkBAnbktXx3NreDDZF8KMjcJhB2kGEi+o=;
        b=Q+9iIIJbzagH7YIP5GyTZ1symutwirNzh93k0fX6BwqWPU6sBfdcXcSo79RAnAIsaX
         G+j1DJuD3SdMn79mPnLd/ZTBWEvvg+wCdJfyhI/a05kpECOgvzGVxaXSNVRV62m0AyqV
         uK0RkLO5LPX/WCLBgIVUU/1Ea9NlgDRfuNohoE4NfPga20ymsTC6/9qdEimeEJFttB0g
         +z3ksA5WqJXVJaUJi/7fTRTCsayiFFhk2bxYPvy9y+VsdcaUqIqCXo2j8IQ1w2sY1OmF
         FiLPuie24VwMhkB67fVDvzQ63ZaKzT5pdJDgvxrwh4per0nJu98Bd92NN0+lvX4KP7zb
         NOoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6hZChVDDKAKkBAnbktXx3NreDDZF8KMjcJhB2kGEi+o=;
        b=YDhtu6R89xoCJhpTsntKuFHZQC7gOqDmiyiK4B9yA9i6KN4h9cCdF20lvVrhcxEC8z
         kltzsgVHsvsk0ZqbbdpoPoBLjaqoMqQtZRGEWOXtcQwoS8u7SWZi5EWhaiRuuNoWG0vd
         LnDrs/8HfSqoGVI9sBlS5xZ9TJCNwPhUpIcLlhX4IlbiaH+0xcFjmih5XIcdBe2y8daL
         QkpZZBCrajVetSyVg0WeF6vn2jAEUTRKyeUBzXyP7reTYQuFFyZUWy/3FqlXeA8x5N2Y
         uMGTFCShWSjm822Un9YkDiR/nIBlkxjan05pQ5LgnGFTuc9TQP7LTiE4PzBEF1+gJGUd
         J3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6hZChVDDKAKkBAnbktXx3NreDDZF8KMjcJhB2kGEi+o=;
        b=K/salitXTAn1ESTXB0TvW2pJAuPSEV21+9SpSXPk0kL/mCG3N7owM3zANCn7Rz6dis
         zNK6lASTspuSPHv8uAxXP0sq6t3NDNMjqCc9ZtwEUkyAXKgT9j2w/f8gcTPR0XNyITNc
         NtVZ4mZ090AH/1E7XyxJObVymju54ZfvfzyDlK5NA1ZoqTNVYCSmJjUowW/Pjzwm/rpi
         xfEQ6w1BCm415ERTc/SchBW9dsYSC+gBHsAVA1UZo8UnjbzHhnA+2JB1deLH3ojIeo54
         tdWST0BgFl9d2Pioiqi0ra11xnZ0lfnAobF3aeiX7wY3Kcx/l1ybpkK17OOHMj3MzTzc
         K4qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVs4HFCmrkoTcw1CtUAyglX1G5Ped+R4zYP2vs/qrlNVcebiZ2j
	j0KN649R2MSeG9dGO1eMJAA=
X-Google-Smtp-Source: APXvYqyvKef1D/Y31forca5egJKm6obzs9S6VRV6hMe9KxhDCrhenFx4tqoogwiBhn+j8pB9uPr1fA==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr3359970wml.86.1567584486089;
        Wed, 04 Sep 2019 01:08:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c143:: with SMTP id r64ls805269wmf.0.canary-gmail; Wed,
 04 Sep 2019 01:08:05 -0700 (PDT)
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr3249212wme.121.1567584485595;
        Wed, 04 Sep 2019 01:08:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567584485; cv=none;
        d=google.com; s=arc-20160816;
        b=eJEJCcJfeWF3ccvpj8cCqa0fgk3PMWZXowbjUvkkUy5hRMQSU5yMtXohZH9ObLo+qO
         cJY3AUYBSK+qGjmkkfxhR0OE8Wl1vTOMMeMLTMgZbZad8GdP9ihX7URYWLluk+xzVUdz
         W3KVoh+60tlOJM8oTbSiuHS4K/v4L7xWF5LB1k7+wC+w+Oeq586iy9ilYbyKPKaBe1W8
         we2cYZjlP2HFAPcwmS6kQCUaAKa3mpmQUzma9nWHRkuUoBnd7bUwgbv24CihM0w3DSNE
         SBmvUHMovNIThDuSJLfH54JMHShuddKgdyBBGDSEtywE36Uc75JttdJyNHIF8sK6buOl
         RrHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nRtC49Dm/rhUCn03iQZHARrHypohCTGXnVaebgfWCr0=;
        b=j10TjtAEJmGM8W76K1Ye8WRn71K8Ue5Mwrdu4SP1DFn+rFU3jPl+aDQQWq1yruOdVl
         TECn11ajPKQ4voyYllf6YF3R8Idp6JPKA4eQnU79FScuSzRDdLNPf2IJq8ZpXzcKaSU9
         EghNEHe2Zu8hvn5JiiYf646kQ5i+TFuWnq2FiBgfCrTGW/C8vGHcj+re7T1TbQGqDS5r
         I6iJ3giI4q157kASRAZ78BOcmFBXxN/VoC7o6Frge2H+cWaQXnLLRoXJsYeEN9zaKUL7
         bCjont2Yh+wsf4Y4zPjniKbLNT6iKDQtagHO7fMt/uuD+n21xKlhopkqke0LiLzg37ZX
         24XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W1CN2OWf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x13si152666wmk.0.2019.09.04.01.08.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 01:08:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id u16so20172949wrr.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 01:08:05 -0700 (PDT)
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr12470313wrw.353.1567584485275;
 Wed, 04 Sep 2019 01:08:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
 <20190831162555.31887-2-yamada.masahiro@socionext.com> <CAKwvOdm0zcyaBLdSVc7PmjUa-wyVuCaN=6qZoPLvnoJC1ammog@mail.gmail.com>
 <CA+icZUWzSsFXLmrO2G7ochE62e=kByEV6UKregcJqZrJN1WJxQ@mail.gmail.com>
In-Reply-To: <CA+icZUWzSsFXLmrO2G7ochE62e=kByEV6UKregcJqZrJN1WJxQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 4 Sep 2019 10:07:51 +0200
Message-ID: <CA+icZUXboR-0TzpSHf7a8MSjxPWxdC13Oudu8D+b+umtvWCCkg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] kbuild: rename KBUILD_ENABLE_EXTRA_GCC_CHECKS to KBUILD_EXTRA_WARN
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=W1CN2OWf;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
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

On Wed, Sep 4, 2019 at 8:58 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Sep 3, 2019 at 11:50 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Sat, Aug 31, 2019 at 9:26 AM Masahiro Yamada
> > <yamada.masahiro@socionext.com> wrote:
> > >
> > > KBUILD_ENABLE_EXTRA_GCC_CHECKS started as a switch to add extra warning
> > > options for GCC, but now it is a historical misnomer since we use it
> > > also for Clang, DTC, and even kernel-doc.
> >
> > Thanks for the patch!
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
>
> Thanks for the patch.
> I like the backward compatibility and am OK with pointing to 'make
> --help' for the documentation part (KISS - Keep It Simple and
> Short/Stupid).
>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

If you will do a next version...

- @echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
+ @echo  '  make W=n   [targets] Enable extra checks, n=1,2,3 where'

...clarify on extra checks for compiler...

+ @echo  '  make W=n   [targets] Enable extra *compiler* checks, n=1,2,3 where'

Thanks in advance.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXboR-0TzpSHf7a8MSjxPWxdC13Oudu8D%2Bb%2BumtvWCCkg%40mail.gmail.com.
