Return-Path: <clang-built-linux+bncBDRZHGH43YJRBXNMXWDAMGQEZMBYMFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F923ADF1A
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 16:53:18 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id m13-20020a633f0d0000b0290222ece48979sf7506831pga.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 07:53:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624200797; cv=pass;
        d=google.com; s=arc-20160816;
        b=CqxbmCGQ2QREdbC8UTkhS3Ml13ihgy9IQ4dYTkawa3Sl7/sCWfQHov7XdxXyOqeS0d
         zKPHrx6Xte1g2DxFGtJKxWQZjMnQ+Ab+7f22W+aNHJQ4ZFTm7CqeuKdgN4dtcidJv/Ml
         1G+APrtLcAHIT0JfyLWXg1ab8BKJaAJLRAdMEyci6OPZe5CKILIEEy/io3hCNLu/hldF
         845dCUKUzytRhVzu24Kb+8jT0JRtBra2ZgCPE9If4Km6iIQ9LGpZPLGV/DGTkumt/KnB
         Fw8qTnqQXHWFBnk4pPcU+EgqgvrlqlCTIYfkwhmI2mRIbQpVsdna65+CvH67pCAMPtBt
         HcWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=K3PETYpRTFIS+aLFBZKP0noZucKrivu3qtqhtsvB1Eg=;
        b=PeNZmJTZntyOsjwag+SIDbPT3SCdwKCus7WTqCeao8rmxgyD98ik3nE7l2jTUcYD3u
         JSJogO+dse9Hngieaf0CP+Wi8u++AlRw4tCM/6XWQo0LpKSl5pRnvqi7estwHkdOthZZ
         2jLsATCarV8j8Ibu+BtLBNoZ+k2PqpdQBdB3VJZTzggfC/yZY7eY27xa5ZG47b+GA38w
         0NJt8sS4GCiHtcg3vaIPSiac8EwZEitkNLNrcdW2kgDt4NmiqC1GG/tYL+q8XeoThYE8
         RPakZzFfQmemygqTMgqivECBgC2CPUheOQOgp18SnTd3sGlnEEUFa07n2vQtEZEYHUb2
         OvHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q63+XIaQ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3PETYpRTFIS+aLFBZKP0noZucKrivu3qtqhtsvB1Eg=;
        b=jvQif/B8ayVAvuW+eSmNDoUGd/kvFc/veZyg3tIj85K3Z3U0cpr318mxs3WNISYEjz
         /74LpSnSSSgij4uKxdiYlue467DinWQX890Qt2I4+GyFPfbw98xL8QGs/pK/3Kkv0YtX
         5i2zks/AcTOJPHcoxRFlT+lof7UltKdh1foVXb/99ZpHr/4GMsfJQLlQ+YhokT25lAKo
         K8CZwWyz5AqEYVqenr90xxbssOBkT7mAGwWOVWkRd5kge+hAEKnJxm7C93EZmtq7Olw4
         ieFVaCitRjnubBV/yAdbrIowtNVqg7cvfeG54zGLX2cEjkQMXiBPLINWDrnpmHRG3W8t
         wfXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3PETYpRTFIS+aLFBZKP0noZucKrivu3qtqhtsvB1Eg=;
        b=j6QQOVLrN3btgpI/XsC/RVKxkuuMbvVPkHs9EXyp09upeyENTo8rY/bVr2LtccMsTe
         lpjJsC0tteUrUvM5rDDksj8uiyX2WN0Kc+k6+B7mgKyIaQLvzGEP9ArrEUp43NHdryvX
         lQxVM76kkWt3ugTsslW8/7faN9WklKj8IX6ja30IL7RWhSEVU3wC4OwdaaVMrFMjZFlp
         eU5u7YUyQLuBMsihCwQtMx/EGOOR7+/PUw1uDwkOYOPhNEjSC8ZDpgOL7LeafM8wn4ZA
         0yYBIVzdDO45rOfhy4dQyOzPsGk7Zxui+E4+xhuATsFksZIEBEOQOmGFl+6zzoHoPTkY
         PNlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3PETYpRTFIS+aLFBZKP0noZucKrivu3qtqhtsvB1Eg=;
        b=T2Ck80Qxhsu/92c65fMMjEOAXh20QzezoaRgDilnq2Hno9G7+GYtvHXPUtydJBjNSG
         8KAv73/+J9m1XeUHJ/ZR5g/4Rdw0dIOJPH/kLJqzDhsg0+8AMyi038COf6xbQGj2Xazp
         zvfMOSDqAQq0GHPF08AGmvsSQVk/caMoleFESYp3L+Gfrj1GV8dnZK5q57FegjZpQeBn
         WABNH2yUELW0Z6iOZQvkk4bOgxPpOTgbj/m3HC4L17jXWxebn+/QIoKV0k5TfTmsKKaa
         P+LPui4YOchY+u+Xnr1HJmE2HuJZgvpW82l8q+AUzumEpdqAo2XCVTdl4xYFqotx5t9L
         2ezg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CgVRpSDsLW6hCP0n6JEXe2+ms7UMO2dGs8AklnRDPULmJCGbZ
	TdniOC2DPAbazyIJBS4nhoY=
X-Google-Smtp-Source: ABdhPJxWu0ZNkljQNlYlV2fK5q+nvmKVuBnxURjw2GiuFHjG+ACTMzEwNL3apM16bcTb87pVF5GZBA==
X-Received: by 2002:a17:902:bd09:b029:ec:7e58:a54a with SMTP id p9-20020a170902bd09b02900ec7e58a54amr13908925pls.62.1624200797104;
        Sun, 20 Jun 2021 07:53:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fb0e:: with SMTP id x14ls6734860pfm.10.gmail; Sun, 20
 Jun 2021 07:53:16 -0700 (PDT)
X-Received: by 2002:a62:7f58:0:b029:300:9551:8cc0 with SMTP id a85-20020a627f580000b029030095518cc0mr11342620pfd.21.1624200796521;
        Sun, 20 Jun 2021 07:53:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624200796; cv=none;
        d=google.com; s=arc-20160816;
        b=IcbuzCWySvh8/gHWXO49C4gfFGjO5fSpQnGv/wDrfHxy19sPL9WRcFVuidXYv66ntk
         nRaMyT/JtRg1z3la8VA1/FCS2ptdtZj3TzmlPe1lkG6wAz3tXa8m/ZLRmKDSgDISiArH
         rfWbwb8nqkHCHT9krq9rbFLG77+h9mFlUzddNZi7o/P7riV3rX5EOlC8qvgdNvE6iicr
         AytzVjvuf8QlSeFGCEJg8QraLuhAxnHwumh75mDtIyKRBy5SctBISuhAJil/qIzxHjOx
         OHgo1YV08D2AtMHHPEsOByy0vJznEDRRjmEJERAnWJjag4AmI6jbr9l+DIYEYOD+fGc7
         mCtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LVm+BTGafhxRvZqtNEKilS0FyUHlzax8QFALCeDTe2Q=;
        b=Tdxov2YuiQ/wkP9uR6UgCf5yki+y0zbwaHetA+0cFKxMaOkCgfrSyw101+7FXO0Opv
         hMvVCUFE4A6FVeRRp1Wqlj1aPoXRy3/XxKA6IPuvSYOmajEDxLCAr2v8QkzPm/3/Or+i
         dzE5O2a/Ey887H2rkUs0dJXjRvCntXZrVFndo04/HILY/9qXCZQGacHK4OCAP0bmrogg
         iJIMsP721zccO/oeASkvuZN09UIQFrZmbp34QpqkJCLiZMknasof+rMQtsXlslPaIFbG
         xr/tWiEj/LZvnVdue7Scugruwxpzh4N8+qN0cYYLJK2LatqVi9Jfa9rlC6USaLK+rjnX
         dGKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q63+XIaQ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id a15si1704817pgw.2.2021.06.20.07.53.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 07:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Received: by mail-qk1-x735.google.com with SMTP id g142so23859765qke.4
        for <clang-built-linux@googlegroups.com>; Sun, 20 Jun 2021 07:53:16 -0700 (PDT)
X-Received: by 2002:a25:880f:: with SMTP id c15mr24720201ybl.247.1624200796182;
 Sun, 20 Jun 2021 07:53:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com> <202106181945.AC10BF38ED@keescook>
In-Reply-To: <202106181945.AC10BF38ED@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 20 Jun 2021 16:53:05 +0200
Message-ID: <CANiq72mwT3WpNcjehXq5njwdrA3U=U+U6H47AQPKRk_BDRsNow@mail.gmail.com>
Subject: Re: [PATCH 0/2] no_profile fn attr and Kconfig for GCOV+PGO
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	johannes.berg@intel.com, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q63+XIaQ;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Jun 19, 2021 at 4:45 AM Kees Cook <keescook@chromium.org> wrote:
>
> Oh, awesome! Thanks for the fast work on this. If there are no objections,
> I'll apply this in front of the PGO series and put it in -next.

If you are picking both patches on your tree, please see my comment on
the first commit.

With that solved, for the first commit:

    Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mwT3WpNcjehXq5njwdrA3U%3DU%2BU6H47AQPKRk_BDRsNow%40mail.gmail.com.
