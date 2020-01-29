Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD4HZDYQKGQE7OIQFQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA3814D2DD
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 23:13:37 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id o24sf922935qtr.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 14:13:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580336016; cv=pass;
        d=google.com; s=arc-20160816;
        b=kRoi07iTRxGWybJ0T/4CGV01RhKY82jR8DjDJ+JvEmWDz/zwwjUqtRj13Lf9oCpMQP
         EWrp5s1S/dkyUl2kXC/j786Y487kHZUVeacwMyRh6/+M/Hvjp8ArMHznnrwkQN8knCHj
         FnJrV7afvA/nGHoOxopx5TfB2t2grSRnOv1WM3bwA27OgNNVb4ghaB9T5CzzODzkuFS3
         HoBMsL8WUmP8HG4zr5K28Pu5Axf5X/Clm7Tyj3pLbeu+JAxmllvnbeu/kBLKRzLmfyiv
         ZZayELd++7IuWKG55JRMqXVGwc68EyntZjKAmmcJOAneUxDsEycIaPB6dwd3Q4OpTnav
         bM8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=Yv49JtNZPgu5aQ0MNaOX027iIB/ypb38OUY6mzcYe/c=;
        b=kfBzKNpY9zVRJQgqLd2n+d8X+delgckY2A/NxNRigL7+C30a/Z+TSUcm/pLFEbbQ3y
         mbn20pPgfl870m404WliCtE/fb1exdbirwX1Q3cJ3qjjXI/fYiwlNJW6TSx8xcX+kjFA
         xsNOq6cvDTtsJEvZ93Md5dSou3jI2tYtjZAq5UwvFIGGAP5IrsIUX6AYxDD3H4Wm2Ot3
         xI1a85ss/b0L524/StTBtCA5iI8fxTt2Ud0gwBhpf3IHit6jASlOWqpOiUohTkQJlZxP
         sPoV/J6hZldRz2JMFgYJFgfzGfDnSWyhPY0be/Ub01mx5QvtOFfjOIAmIiz5/t4KsYQu
         DC6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pdMiO15Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Yv49JtNZPgu5aQ0MNaOX027iIB/ypb38OUY6mzcYe/c=;
        b=cvurpITcY66DgwYnA89HTM9mvBK4vDElke28jJX8ePRLuV5Vh1EU1Iurb6hbiN2ORy
         gxd3ARmwGNNBcLS8q/D3vHraJ32uQIbTUNjIp4ulfA2o/S7Y7uJjGzrjJ6AEc6Ddo+2I
         9o79nlF517jCmPWabsa7rYxs7GRIiIXMlxeH3wlrSE4F+miTWVIcU9mlD2o0yPIRIHXX
         2kvlAnMFvV686TOfu0qanKTKeSJooz6Mj6Gii+FGEJupkhy+DePlVJxpmz9FTsmluU6L
         OcdGgj18zPsGt4h6zLd30imDLNMpEb/laSzySKIij6FsBANqSwfxvlKfWUgP8YL3IJuY
         3rVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yv49JtNZPgu5aQ0MNaOX027iIB/ypb38OUY6mzcYe/c=;
        b=kocMe4c4lm16mg5SnQkaFX2/aLlKLOviNfRKMEkPEa1GnqLP71yfY4hSjTbNmBM5eX
         2uApZBiFpzH5dZPhQbKJHYIyn4zE3/YEKZAnwFsDeb6w6auYA7uLBJHH5PMY2oIrrwg9
         zYrnwSh6UQSEwliU7tL/Tjt4wuOyPMFdC/+rIYv56n5g9RVGPlXmq5N31S6fMsDXiR/B
         fQeDRI/qbcdezzm53qlCDujr88vEBdLP90JX07esqkwuowESg0NC1VOoW5DjfDBJlG0Y
         dHVoJGAXllTHPSHLmUhE2tQ9sp09KZeO+44i9lkntiggaTMrdYeUxKzz319QmQDco3gW
         Zmeg==
X-Gm-Message-State: APjAAAX0U1Z1vODP71711AvKU/N9jeN4XIlKc5lnoov+Z1eHIFttqxwL
	hRw0F7qldtyVl+dZsHD0V8I=
X-Google-Smtp-Source: APXvYqw7qiaiQH4wrBo3Dg59yW09sU+1hcM2r2lot9REixx/8FnlNqZqiqF//dqTYV9FjPQE4WhJIA==
X-Received: by 2002:a37:d8e:: with SMTP id 136mr2165260qkn.293.1580336015991;
        Wed, 29 Jan 2020 14:13:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:58a:: with SMTP id 132ls709028qkf.7.gmail; Wed, 29 Jan
 2020 14:13:35 -0800 (PST)
X-Received: by 2002:a37:846:: with SMTP id 67mr2113019qki.351.1580336015642;
        Wed, 29 Jan 2020 14:13:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580336015; cv=none;
        d=google.com; s=arc-20160816;
        b=wy9XG9/vvk6lbV4CwY/NdmOOj4GYtU9G/9qTTSkOOkVVyUC6iv8IHvO8SpUmtmLvYd
         JEMI2SY1xjk3g9iRpDihFiENAqSl9Sc5Gik6t1YYaY4tAD7H0U9Dyqlwvy9EP3hCUhcW
         2q0eU63cpH63kIrRE5cDharDyDjbAfMM66V/eVSNeUUQ262sdv5qf+3TYvPuPQuSDpI6
         MZkmUZteB91+9nkL6kebWEyVxZz+hHTSdRZ2kRlhnu9NotKzg/dMs6f+HecU3idUFLDd
         tIz3oo01wlOcfYHNt7bFriJh6Vgk8WYOBiqLeSUHYorFH2Hpb5n/HnyCyRGRqei9kkkQ
         g8XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=iqllQrW3unb/N/MjTU1uzq9kz2mgZaNQ7fC+SOBItRA=;
        b=lxBgvqly3TB2OYmPn8cU7SazWWyDsDpEIq7XVn/vSBT8YFlj94LkAEs6g1XKFqdSmR
         gz5dgYUOSkmqnfkdFRQqC1H4NvJVqH99C2l7evRYC/iknbdyW0XC2jDZj511APok4iAF
         39CjSMPlhRpHJ4BqeDk4KMMEKwILUTncmNZYBlJq+gB+CoWnivCDT/qL280LwPYQb6mh
         xJUWIFOERdvwaBMkKZrEuN2JjHDnhIHxrKGuI7fuSIJOv93W6og8hNNSkFZ2+MRhazG5
         kJ+k9eDu3r90bfuvIew0tDsXtRjZ7iMIsRxJLIqB6yGcE37XfgEJipX4VkouOKfbrc0W
         HnFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pdMiO15Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id c22si159647qkk.0.2020.01.29.14.13.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 14:13:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id x185so374429pfc.5
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 14:13:35 -0800 (PST)
X-Received: by 2002:aa7:8618:: with SMTP id p24mr1773532pfn.3.1580336013862;
 Wed, 29 Jan 2020 14:13:33 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 29 Jan 2020 14:13:23 -0800
Message-ID: <CAKwvOdkQyVg-fM931X-AxWLrCas5i_p_dMQVaGAw166c+K9oVA@mail.gmail.com>
Subject: Jan 29 2020 meeting minutes
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Tom Stellard <tstellar@redhat.com>, ksspiers@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pdMiO15Y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
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

- CrOS looking into enabling CONFIG_INIT_STACK_ALL:
https://bugs.chromium.org/p/chromium/issues/detail?id=1042443
- thumb2 working thanks to Peter Smith:
https://github.com/ClangBuiltLinux/linux/issues/773
- lld secomp failure next priority:
https://github.com/ClangBuiltLinux/linux/issues/282
- Fangrui Song implemented -fpatchable-function-entry=M,N. Work on BTI
interplay: https://reviews.llvm.org/D72222
- clang-10 release branched, in -rc. clang-9.1 done, shipped.
- Red Hat distributing clang-9, working on building their userspace in
CI w/ clang
- CBL meetup soon, Feb 7-9:
https://clangbuiltlinux.github.io/2019_02_meetup.html
- GCC removal from Android nearly done:
https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+/master/GCC_4_9_DEPRECATION.md
- XOM+PAN is broken on 32b ARM:
https://www.cbronline.com/industry/arm-pan-bypass/
- Sami sent a v7 of SCS: https://www.spinics.net/lists/arm-kernel/msg762513.html
- Kees gave a talk about SCS and CFI at LCA:
https://www.youtube.com/watch?v=0Bj6W7qrOOI
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkQyVg-fM931X-AxWLrCas5i_p_dMQVaGAw166c%2BK9oVA%40mail.gmail.com.
