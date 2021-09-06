Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBK4O3KEQMGQEGNLAAEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B82402115
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 23:24:59 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id x125-20020a1c3183000000b002e73f079eefsf249345wmx.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 14:24:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630963499; cv=pass;
        d=google.com; s=arc-20160816;
        b=tM/aEVAtSg8NOP07PkhUcF8GqIP37qYy4QI7SfhR1npcjoZPlYt2FIflVtAWXRPtyO
         YV7FnVoYhntp/C4Ga680NPKKA0+McIw1opb42VvAJ/4IpgDAQQ4k4Gn/ywt9A1zua69u
         LSdBr/+uM7+LFf52QkehZ9KwGSfJtNszsdCZKqeMxaKaKuYsaSncP7ElRTRqvfIUhBQr
         QzfRAcAJvDE7BV4EcqZ8ULa5MfpvO2ZsdZU7bf5VhuvWJnZafIWs9j4XE4TZPwfFbE7T
         81N0zAJK/qoqGJpvMMGJ+68tTgkX4g69WbRq0DedjpawKUiOS/MTrpfFqD+dyvaD4Yyb
         AvUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=M4Hv2+ivSYT/zBcypc0HvElZn0fYZA9ti11bPkNQ3z8=;
        b=qYd/SHNykSdGdh5k4LVorHVcOyKbUUCNjbKGu+YpD6HKYHC50yqyIwmMtoZvzQKLFA
         v1D16e6p1V5FNdCYEls/qa/CFX73HvglauEA7gNiogrVBHSX94vrBjovmSbyvZoJ7OHt
         JQz9W+67z3GOeVn28/v/ZudP7IdYf2ybz2VfL8G2D8J7Zfdpy3c+l5bdtCrXDQW+vgZ0
         4uEGaYIglxE/GcUcGP2IGT+FjbEU37Me1+2EBDDbIi4QhzlAHQzG/6op+hWOX7qGnlRt
         SkEbkJm9GEancgoJuP1JltncIeDpsdnhzlXojeHmpgvQJp7Iz/6TaWYnXbTHqaNnRdrN
         3SGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MkdrdbxR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4Hv2+ivSYT/zBcypc0HvElZn0fYZA9ti11bPkNQ3z8=;
        b=D7gefUDcNasZIU1v8cjtSMDjsor+ezNgIEKU0zsoRXCwYfuktLyunUvBy34qBiawRA
         EiS2SrCsyG8d+wwhEObL6m4y1VNxq9yXNncydgV5lR7tcsDBkxhq3Ef61FbGv8DeOpnv
         ZTZ8MYMBXv73C46I50OZ4dUStlEMhjRES0+5WHQpWEDlgcTVQ8h0yPWmAKwjFyISNbHa
         90yh4BwXk2nNueBEYDtk1S0iPLDTAHtpug1Nl49xRMh2PweGs/yo1pDjCR9AYJ5NWxt9
         xTK3XPKDARHJmM+TjDjIap2CggKojpLNkFw5J3yUqgKAwJeayzHiSlGCsrI+JHut6nXj
         4I3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4Hv2+ivSYT/zBcypc0HvElZn0fYZA9ti11bPkNQ3z8=;
        b=JSR+uvPHYPJGz/cqP7YQ6Cmd3EEvtnO7iRgyd+HNuFbyhe0eY7p25fXWPGTqQC8Qf2
         WHY0Vf/JbCD2VHBNZat9OVXLvLEoYfx+TbV1AtUoeWXtKDsZ63Dm7pEHu+YWu106+eOr
         swxh0MUpPOUdh1IIffR/5ndnq80kuPqlKgVQHCPkoqDDxMao1xgpRQTt84Oz0kKhAnUg
         u/wim30YAE0Hz+qfsU7si3fkU8JXdDmD/RWrrbpJAD+eTc8wbrnBYCXyBpAXdui9SDf+
         xmPRrcOs2NYNpYPxi/qdJMpctHuL45dZnCbGtjN4a0nIZb6u9h5RDlFsUiI3lcZrygN5
         97zA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304coNwJ0pQ99IuCNNjwiLHozUZr+IHYSa7AhuxxeSrsQh9wYnK
	RYYHt+6JCNSKL7wPg8QH/7U=
X-Google-Smtp-Source: ABdhPJzqJiVF3o6EtYKLVhPE2Ul4ABBUh07V8Mn8PGGMp4JD/rstQd0x11UicrgcvHZfdAJthTn0sQ==
X-Received: by 2002:a05:600c:3584:: with SMTP id p4mr874595wmq.30.1630963499598;
        Mon, 06 Sep 2021 14:24:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c789:: with SMTP id l9ls824565wrg.1.gmail; Mon, 06 Sep
 2021 14:24:58 -0700 (PDT)
X-Received: by 2002:adf:ce8d:: with SMTP id r13mr15484582wrn.18.1630963498587;
        Mon, 06 Sep 2021 14:24:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630963498; cv=none;
        d=google.com; s=arc-20160816;
        b=QMTBo4dtuUEX6DIQALuVNqayHwUvZRyKxlIpHJL2ch/DsRmzAAUk6cQKOabTrXq04s
         n7WWiFPrgg9C92ycwyg6TWOtY/f10geaK4LmBXGMVl1fi75Hlf6APZpf9N3DeDJFtLAK
         1B2Y49M45LCWluQP4prheGz3OE4O40zemnTPEd9Ip143qp25nX6snATHctjl44V6cX5W
         YWpxmpBolqa/KkWSrZFmNU5JG+0PpzF+GZ8o9LgT29hR+DXzhm72VuzeHlDWdaZCp4+I
         +mq7Jz/NR32i9iPRpxSJnwXUAsvF2UHaMGvEtXXzcrg3E2rrX1juw7v46yR2M82VVci8
         UX7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bOYkPNs6kBoQRrkZjo5EV/GM+dOfmzNF/MWgTdiF+c0=;
        b=JagKJwN+QtsUvkzOfp9dPC9D2uu/t5CiTU+xdnrSP+YJkER0I37DDhTDyYZiY6O0xT
         8hMO04CO17+tQg45qbn9wuWtYKDoDU6g+cuhdeGAVI9DbKT8mGYWbK7V3yUHaA2UYUce
         Ep0h3j8oF+NU2WzugW2HffCPpSBb8V7v7iTq2bMhTwvcY1TYU/nYIann/9pIsFAcIF2U
         jOKq1OoP7GULCc0nqxEZMYR0GMw7lOzwkqVqwpYlL0yaD/fejYc4HkfMoE6qlgMKBvqa
         FOS0boZUgc9grBuGIl9EAeSVpRK81nebbvL4R+baVMWdjlGIsTs/6Z2LIm+xrn/nw648
         X9FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MkdrdbxR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id q137si37438wme.1.2021.09.06.14.24.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 14:24:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id i28so13207081ljm.7
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 14:24:58 -0700 (PDT)
X-Received: by 2002:a2e:8583:: with SMTP id b3mr12723714lji.389.1630963497996;
        Mon, 06 Sep 2021 14:24:57 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com. [209.85.208.175])
        by smtp.gmail.com with ESMTPSA id p7sm820904lfa.258.2021.09.06.14.24.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 14:24:56 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id w4so13179713ljh.13
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 14:24:55 -0700 (PDT)
X-Received: by 2002:a2e:b53a:: with SMTP id z26mr11643568ljm.95.1630963495713;
 Mon, 06 Sep 2021 14:24:55 -0700 (PDT)
MIME-Version: 1.0
References: <871r644bd2.fsf@oldenburg.str.redhat.com> <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
 <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
 <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
 <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org>
 <20210906201432.GZ920497@tucnak> <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
In-Reply-To: <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Mon, 6 Sep 2021 14:24:39 -0700
X-Gmail-Original-Message-ID: <CAHk-=wikLP4KbTUUY_OKL6doyztjqFNKu_Q713vcrkjthc4S0g@mail.gmail.com>
Message-ID: <CAHk-=wikLP4KbTUUY_OKL6doyztjqFNKu_Q713vcrkjthc4S0g@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Jakub Jelinek <jakub@redhat.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Florian Weimer <fweimer@redhat.com>, 
	Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=MkdrdbxR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
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

On Mon, Sep 6, 2021 at 2:08 PM Linus Torvalds
<torvalds@linuxfoundation.org> wrote:
>
> And you think that we're making it harder for compiler people, but
> that's not at all the case.
>
> You really don't want to deal with us saying "you can't do that" when
> you do something that is

That got cut short when I went off to adding the examples of errors
that happen for those intrinsics headers.

But it was supposed to be "when you do something that is not valid in
the kernel".

There are some *very* core header files that the kernel cannot include
from outside. That "stdlib.h" thing already came up in the errors I
quoted.

But I think you'll find that you guys want to include things like
<errno.h> too, and you'll probably add others (<types.h>? things like
that) simply because they always work fine in user space, and you'd
not even notice.

Header file include chains get messy very quickly, and very easily.

I'm pretty sure you guys don't really want to deal with the pain that
is crazy kernel people that have their very bare environment.

So you may *think* you want the kernel to use your header files
"because compiler portability". Instead, you should be very thankful
that we don't, and that you don't have to deal with our mess any more
than you already do.

          Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwikLP4KbTUUY_OKL6doyztjqFNKu_Q713vcrkjthc4S0g%40mail.gmail.com.
