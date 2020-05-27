Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSXCXL3AKGQEPWLBX2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C170B1E4D18
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:28:26 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id x4sf5709941lff.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590604106; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVUXU+lhG6vf5/TZHcUEx8fTt2kBpVpBgVC2Q1ov1mQkw+MJq947YuyGp2kT1CkfcR
         r5lg77QAxWmNoznVLStx0+VI6h8hwEcFNIzXOYQbpat6qN9JtBiQYwjqJy0YuqRSycrl
         SCQoHMYAp7HxWbmXEIBEwxP3UVmqAhby7pifyWnijODCih34Z4Uxo+X2i/lX+6ra+7eg
         h7PKsFn7umlEt9WOZ+z+gFH2FYo5P6C649Q4uONcM1Xydq2EU4KdL2ZYirGE1K9gteUl
         r3JidiufGVns2egkYmGQ4nNckI7ZuKXUe+YmyXGCW1FADPrFGjm8k9vtkq6Caf8Mk1r8
         fH8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WAO/hK4EjF1BNAZ3Y3xQ1NAMlzsJqATOXyO/od30680=;
        b=wge6aLVXiToAtmGe9+wiBcMT2stucnxAgwSZfonE4KQRewnELBovO+vbjTn4NWmQpb
         5ah5/bEyVViO1HNWCSCVyQHLVqGo1N5GICEUp3GsIgEtIXac8K19vfALZ2A/QLMxWBW9
         yS6Mx7JNjWcpEO++lGqYzWfaiHmozivaXnASKfSXEXhxrqwE+xu9jyWL3h0eZyfvO64n
         b2QmVhenvzhwHpuszuIrGwjFqiLA6OWw+BUrnuuELw+HzZebuesVlBBQPK++o8lXa86a
         sRf0TYtc3CyBmXSHibIf6rOsuDzreIVlhzXOrlGpxUx73zupAAYNA9mCeITOrhDPYEWa
         DOqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WAO/hK4EjF1BNAZ3Y3xQ1NAMlzsJqATOXyO/od30680=;
        b=RnPNA0y8zyx2PE2ThfzREHY1IET6tQZOMJCg8tAJeAaNiiP6JLd+8vWtjOAVSSSEZk
         5Ea1vtOFq5GgiNnugvCghuWivR4+uKyXNM3gF+XvJ2/j9srS7YWuR8pXoNUyYpRb53DA
         m3LWIuCscilp4cQ8PRb6YNRYRz679BQA27pRcMtM1Wq1MXh24/xevqTaKmspnYScC8Ja
         ELZcS7kt4NgU7UjeE3UEL9j04ra4Y706oBGMZh/TEnFTgJR1gqn4jDLDEkjN1EJVbp67
         NyLaszhGo1tteYWibBBl62rrBmHLgw260WY+SaH1F33bInheVKXqWgiRpDt8jKfl65T9
         YMgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WAO/hK4EjF1BNAZ3Y3xQ1NAMlzsJqATOXyO/od30680=;
        b=GqQnCzv7b1KSRVPsN5ls9XXkSqpK0fPLDHMhpgGnNbrDfvR8Imzyr3Kh9vOOHbpuPp
         c+BbuqzxGf2gKb3eAb8qAVWZ9md6K8h4128yJvIIG1yfIhy2APV1YIJdya4i6LYB0Big
         0NUeyKUvLLOThFrdSWvSKdEF4zsOFf/HOcOdvIVOuiEccgbKandUxL1g1rcbBIEodMJq
         vjn5cdg7UDwccXUaKjn5JUGrazHRcKoI7AdmntKTJFoZZwRgwHSeJMK8gyzmXRn2is6S
         nYkMQJjtTUrppvfVuG0feG0FSXCry30wkHYepmH09ZhG9PnrTDi+JRe2iwhk8bF5YRK5
         Abkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321mG/dIeINJ7nJJGk+cdcrMMlKjJrRHSMWU7s8IZs1UlYxlUzh
	2l9oZsSfT+wwFtqWl9NLiUQ=
X-Google-Smtp-Source: ABdhPJxP72Rn0l9XcXrG6ZJEOsUYC/XirCkiCxYouTqz479TCygmFYghbOJI48mrjA23CGVdi3psAg==
X-Received: by 2002:a2e:7f04:: with SMTP id a4mr3873199ljd.114.1590604106304;
        Wed, 27 May 2020 11:28:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7d6:: with SMTP id x205ls4550326lff.0.gmail; Wed, 27
 May 2020 11:28:25 -0700 (PDT)
X-Received: by 2002:a19:b06:: with SMTP id 6mr3739963lfl.104.1590604105712;
        Wed, 27 May 2020 11:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590604105; cv=none;
        d=google.com; s=arc-20160816;
        b=xkSUs52/bfGCf7Mo2gJVH8rjZ21mnPMSuqWGhYEuSp+3bDAOBPkOEmvvZZlDJIOvsE
         EPDEeP4EwBvQQ5STvO0BBXgXwbD/O3RvBEYgi8WChwLOwOCFJWJOxxCEGy0q/doR5LmV
         eyMStwJwCWUg381JMxYFWZjg9NokqlTH9ihRHAkR+mZBMJqENx4yANX56PKb3DhPnOT9
         BwRjP+/5ZFSiI2m7MUDYGN4aESJlNX4fiJhNWngR9ikjnW3CHq+C3KP+cfHKIpW2iVOD
         +JAc1iC3KlshJdazybX6xXOXIZb4RVh8xsKdqu+6TylOPMkfEK0uOl+iMHulaJDrt4zj
         sPDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Ul/IRuhqnS4yNj2874KNgstOdXPZeIcYF8xozicibeA=;
        b=Awa/AV1b5PuDJOCsB15JKeXTrF5rCAWRez4DEG9OykwTxnMexmnVTpTwKXPi1QHwWL
         w4K4xOijpylpg47mAkot7EUiskHtzgTjNVLtt+iW1uqjAf4bgd/XI1OqqmHC5aUSoBcA
         MRrtE6HfFCqXBE/OjTcLRnM4zynC/ErPAUPyyunOSSvgu6u/hbBm/1W3YoLII6q/+XJB
         jCbbwLu4CPGAMa6Ha3wd2Lzy+q5r1yGJHX+z4xcJTitwpmAMXLP12iL+4WgU5dyct9Ae
         WX/es6fJXGHrgt9wy4AqXOy87UiwVQhNhMqiSZE0M8qhySwFPFm8fO2pwuHRCwwELxU3
         1H1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id c10si215382lji.1.2020.05.27.11.28.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 11:28:25 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MUGmJ-1jUyMd3Bkh-00REtP for <clang-built-linux@googlegroups.com>; Wed, 27
 May 2020 20:28:24 +0200
Received: by mail-qt1-f182.google.com with SMTP id b11so1317286qtt.3
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:28:24 -0700 (PDT)
X-Received: by 2002:ac8:1844:: with SMTP id n4mr5557996qtk.142.1590604103622;
 Wed, 27 May 2020 11:28:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200527134016.753354-1-arnd@arndb.de> <20200527152406.GD59947@C02TD0UTHF1T.local>
 <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
In-Reply-To: <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 20:28:07 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
Message-ID: <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Fangrui Song <maskray@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:AgvJ+vONnNjOkjbIxVI5T9X2oPsAk7/9Bo0fJWm1u0jHn7gzIuP
 fkRu/lJYinKA3CPR2HLM0Y2544d6XZap1UyX2EaaykW/SYmGJ3rDm2LW+mY/JCd+Ym68LOa
 fdemD9/z0F0LV2wCW8vtujMZdJkEqJoJIxHysuL4NERaU9SZSQT0jsh6i0r2eag3b9qSdUQ
 eKlycKWlSyr+AOQlXNf5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VGmmiqyK9+s=:PKoeJMS1RnUVDm4sFUhga7
 90bMppCloOaD9uRhSJn1l9sCcUQyhU6UMRwDv8I0InDMinIOCX/5LP50Bk2EBadZtyk6ejnSo
 kPp3AAKsjWYvo9wOk3WjmBgseiJ3acD2RGRCk6yTxEOnGdljIBIYEj+zBNJeWyYe7/ONt3avJ
 1mi8mdp/E6zbQb2e4U0d2DpYCR9l9kpJ213uEPkEtYG45Ud2+LHWa8GE0lKQriTxM5nzQmpWs
 tskZM7B37YoT1XhMLm66a4tjuf1XvPL+nzYpxtWGloNwrCHeV93urxnBDpvXMwOZ3wBnoOrPt
 mVFVhvDcpQaURFPBGy2l/YoCD922A1WB4/7MjpudZdJn60uj2ZIDEf49GI3u/KtFE4Yrvpii0
 oojCq79TlLHZnKmfrg0GZ99tJ+ETSrUubkYnRKg8rEFigoZKPrNHbaSGqQI9GiO47M68k7JIu
 sL0xfJWHtsJL0pnzQO7HbgxB4a0B3woByMOZmDH5VXQ9qWCb3wLb3hZZYGoULRl/pB0XZwHn/
 fmcG6z6h+pmNm50uMnSI4WlzSSoV7vNzNtqR9bid4ILPZX7fVob9bZzUUTEJLt27vknT9EhJL
 R1yvRmY+6vAsY6k5/u8ZAdW9yl9MYCF2dk2qDwrzAB6Up8fMun1Teepp7Q9sng5i3dybrhGLn
 k8DKMmWFwwFVg70l60pyPQNzDTj13Tu/p9zlO+h5jdhh8iGK/fE4Hlv2DdBpgRLLXkEyQ1fJf
 qXeHEZivAwLtrUOhrdY/jPcKnD+C6/k2t142hWTn/40+vmSASv9VrO8h4hRTkVtHaolh0HqzU
 VTd0ombgS6o/cdYVgKAGI+w5NwG+TKhRSHanQlyHCQd88N/35I=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
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

On Wed, May 27, 2020 at 7:28 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> > > clang-11 and earlier do not support -fsanitize=shadow-call-stack
> > > in combination with -mbig-endian, but the Kconfig check does not
> > > pass the endianess flag, so building a big-endian kernel with
> > > this fails at build time:
> > >
> > > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> > >
> > > Change the Kconfig check to let Kconfig figure this out earlier
> > > and prevent the broken configuration. I assume this is a bug
> > > in clang that needs to be fixed, but we also have to work
> > > around existing releases.
> > >
> > > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > I suspect this is similar to the patchable-function-entry issue, and
> > this is an oversight that we'd rather fix toolchain side.
> >
> > Nick, Fangrui, thoughts?
>
> Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
> Thanks Fangrui!

Ok, great! I had opened the bug first so I could reference it in the
commit changelog, it seems the fix came fast than I managed to
send out the kernel workaround.

Do we still want the kernel workaround anyway to make it work
with older clang versions, or do we expect to fall back to not
use the integrated assembler for the moment?

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug%40mail.gmail.com.
