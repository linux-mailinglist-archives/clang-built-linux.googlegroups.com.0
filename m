Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBHUE3GEQMGQE3QIVB7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AA0401E51
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 18:30:22 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id m10-20020a2e97ca000000b001bb5da17f7dsf3456987ljj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 09:30:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630945822; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4AiExEDUCgYmYJGog8q1RpadyKybSBNko9mKRQhODALwjKHE6tXHKoQ6RmVhkTNmV
         9yahELmXsWXh6ECkh3h5PPgKnJDQKaXSDBFPfHyN4BWVf+oJFAbJNm+mhXbc8Y5iU3Ua
         3QHFkCIQF9d4S388/O9fnCouHeOBgPPDQHTmc5k4WfNqPVqLTMHlLcNz1P/S8V9PZ+YB
         M5Cqj5VAUSfUwQhZFcXyyqW4GlvcGhd1ExBaqysCRCfCcvIqruXpjlOT+EuiWj9Oy1Je
         GUCbz1i+y7UAjKs1U8QjHOeVUyjDFrdQA0JFXEx4sIpNjUlllm85QxHnUYljBo+JRQ2r
         Zn3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=P09NV4/tpKH6OLB+cM6Kf0tWJI4IPFZXCNEhLS25IS0=;
        b=Mf4ky39ZmMOp6F4CdwrvmE3Vr9wN9pX4HEx+JBWGnvlWk9v66qed3gGRGvDjG83oug
         GCzkuy4ZhOQw+v7pt1JTvJQRRKkAC1rb1+bPLkB8BZfAJwuHL2wsfP1cI/Khqb4KrpYf
         T6mMegt5nbuuj1pfd7FAuFILVF+L4KJMFgCQpkbNduNq1TIYA4RyLC9/m1aThaKivuAc
         8FxBTQBny7sYw0333q2htkhaEuHZ90BzoHMdX0u0Mo3wUlZE5N/ZHvIHG8kxv9D4X9G4
         8HKfVm4vRWpHxiheB7i44c3zKq4HUXECZQwAgKjzI0mX0zUSV7fajtUVC040RWy0wZL/
         nmQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=R2wRvIZ5;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P09NV4/tpKH6OLB+cM6Kf0tWJI4IPFZXCNEhLS25IS0=;
        b=aZM4fm9WEF1IRXGuahAOyDJFE38uu7N624vqjl3dsUPBl2soSEDluh1TrYK0qJjYYD
         aykYlwkbd13lPcx0z2iAQ6PqKKl6HxYlVYRmU6fONE7WBYHUH+PZCUjwb04Er248EPrY
         Pubgh7Uwxq2gZ2FyKKxT/wZPWcDf+CruPpOjvKjab5xfe7WUbmzzURc46O5KcrQXG6NC
         KdueQQ2j74Q5zo9OCvIKlDsvyiucwGcvNFcKSwi8n55LEmTO8BZoDEkh+HM85UjeApN4
         5k36c1rjTG2lWG2G/rM2KGLejQ7fWnhZkwKs1Hmb5MLjgI7F4+DO+WTE1E8w+HDWH8Jm
         7y8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P09NV4/tpKH6OLB+cM6Kf0tWJI4IPFZXCNEhLS25IS0=;
        b=q62QEQk2EiEwa0RbLfW/TW4kCm3O6F6IqtJp3eOiXigId8xk3s648heGgxp4k/KlpE
         ctNfeshkTlAihSPxWM5yQpdD8QGMNGedq/x390LAIOTErpyRdsJ1Re7Ur5m2Junc9Bkr
         nW+A95ltVMrg7yekhcTQSH1GAtV8PrrOQGlm+/w5OaowaFlVyRdx8fcVx/oshKX2GraC
         wgIwQ5cLmIllsJ8bL8BQwjP82/1Od4h4KarePMvObiPH8BFaOMc7TTms+r6Bu/mleKVW
         5OdUZhNS6q/BkFGeHC3tAF9TJypCtXQBDp13rGIhIhjIcv9B+Qmrd8qTx89Surb72oDh
         5QTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530m/7ARcEbFIA1eoK+v+vGq8zNYKVjGWYJ0VPveS3wx75G2FH1a
	Jkrox6wtyV8vIAwAJzPh5sA=
X-Google-Smtp-Source: ABdhPJxDQXdZhHa75U1pIKuWxZ9DMyBMudcHe8Ra47359jBWJZbeUuE7dn5AqkQDuTz8nFR9QM83vw==
X-Received: by 2002:a05:651c:225:: with SMTP id z5mr11665642ljn.409.1630945822392;
        Mon, 06 Sep 2021 09:30:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls1182194ljf.7.gmail; Mon, 06 Sep
 2021 09:30:21 -0700 (PDT)
X-Received: by 2002:a2e:a234:: with SMTP id i20mr11129757ljm.38.1630945821417;
        Mon, 06 Sep 2021 09:30:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630945821; cv=none;
        d=google.com; s=arc-20160816;
        b=P17fBo1kvRh0xFBQ9j6ljLGXFJxN7wYwSuXybQ3uOXMO+afMLNH4MBEEz3SjVtgIXu
         tdmpee5aDMxIigdWM53N7TuGK9gadnaPdWaDLOp1zlGh3QMgdhoLevi1H8S2bT/LEPer
         DsVRfHiWenk2ryhkflt8EWfIqaXbtydWnW5+BrEF5jQ4bVwQ1wSimXNVA4CH6CdYFbiy
         EV2QUN8E8v9CLg3M+3FQl2BxOMCuRo6dThaFtGrmKDpLMAAJDiePQn7opJQbemANvOy7
         O0y1soFxJUH2+sHQ53gVw1yI/7ITt5ZJQUi6dnXCv+d38Ik0ISElMa+KxnmiJMP3Zom3
         NNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8IrmItaVABpTCCV1GTBCmSGs8mDxg06CHACTL5Qkb7w=;
        b=epdHBBE/e9fpgHwfOj/rpMv7gLlbq1AXmdQtgUp8SqHYX8qTpohDszNK1zOJZ+KID/
         1rZJNzkovVNUmUzbT0MSJ/Uqg3STS7VIXp7BvHgVhfSZMpGqnAvPTKSQ2EE/lJTSGSGz
         1NNsR9euTBwYQZX5EqpoTxdqCqxyb7jjbnWnc6peVRAZ/+oAHHOcM/pEDTzUEgsChpVp
         pOf7cpgY4BRn39DK1QjTv5KATaTIeEvkJRJMUAnWccTmgFI/88Z7OXvPov3JdlMvaTtp
         uPOagLOmX48QfaCOqvQ85R5grZ+Vvmpt0xxqAL6GMKtuGYLbH++X+w+816jA5cNIMojH
         2o+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=R2wRvIZ5;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id l20si302795lfg.9.2021.09.06.09.30.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:30:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id h1so12158901ljl.9
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 09:30:21 -0700 (PDT)
X-Received: by 2002:a2e:9450:: with SMTP id o16mr11336379ljh.80.1630945820748;
        Mon, 06 Sep 2021 09:30:20 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id w16sm778883lfd.295.2021.09.06.09.30.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:30:18 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id m28so14369527lfj.6
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 09:30:18 -0700 (PDT)
X-Received: by 2002:a05:6512:2611:: with SMTP id bt17mr10258695lfb.141.1630945817827;
 Mon, 06 Sep 2021 09:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
 <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
 <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com>
 <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com>
 <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
 <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org>
In-Reply-To: <20210906154642.GV1583@gate.crashing.org>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Mon, 6 Sep 2021 09:30:01 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
Message-ID: <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
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
 header.i=@linuxfoundation.org header.s=google header.b=R2wRvIZ5;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
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

On Mon, Sep 6, 2021 at 8:50 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
>
> Yes they are.  It is the single standard way to get the functionality
> you want.

Sorry, but 'standard' is the part that the kernel simply doesn't do.

Just face it. The kernel isn't written with all those standards that
are designed for entirely different things in mind.

> I don't know why you think you can separate that.  Take <stdarg.h> --
> there is no other (portable, standard) way to implement receiving
> variadic arguments.

You clearly haven't actually read the thread.

That was my whole argument.  For the _historical_ situation.

           Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwj%3DWpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA%40mail.gmail.com.
