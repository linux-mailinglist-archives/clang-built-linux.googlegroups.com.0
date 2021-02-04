Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBF7P52AAMGQEH2O7KTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDB530EF1E
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 10:00:08 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id s18sf859766vka.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 01:00:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612429207; cv=pass;
        d=google.com; s=arc-20160816;
        b=dd3l4ZtpDkRVNuESlp3buGFQKhJ6+Lwicc9vlK3aD2Bmi27/ALmbGtIJTQaAz1rAKR
         GwWB0u2GRwskH2PWIYoNM5xFdKhcmTwioIuVlolQWfNFPLBpfpDTmG6/k9HQiDh/ay3j
         wBy3dfhe7Ij6mihotaGlrFz3ufZEJhi3hOdOGlJ9avd4Q/+z1KXHhuDVy3bH5kadYT1X
         Q2Fi9Ojr6XY+VOBszgxcCr49QTSCkmPrRndaqfY+1NBuU+L/5E/KfqxtfLYw12pKJ7Bf
         Z9r/m1h5+gYzrfs/jvD4HIsskK6LHIwTX6mr9LtIr10pnAhe7Xoed9ELRpLt45ea7OIB
         JIVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=u7YcTCZU/i9cMt6esz0HXOaE7ZTlzkaQ5f7Vf8dlzn0=;
        b=AkJKGdsnQ5ke7npb2sYFcpWwZH7lds4g6INaO/jvgcI4Y48P/I47a5sp1MedlNN6qz
         3yhNETqmHcROIKBLJjiMKt0AXZSIn1s0lFmegt9YGkQYS0QHBePEdxoOhkZpk5XlUjHT
         3dahIlqX4X0IMvGbmjiwoBgx73aHlJgriL81MtqcrqgokQw7/aI/DLNQdwSIfXiI+oFG
         v2XHvqLhvmapYJHSMKJdgymkYxigU2rtAYO49jyOySNZIlOQIYnszMc/bEcvHItY7C26
         PLIvTtQcEIovsNIQ3F7MIg6EA+bk5vpJk6JaYlJlC17eE398+biVrtxsDv7/wLdID6QZ
         V7Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E25oz5qw;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u7YcTCZU/i9cMt6esz0HXOaE7ZTlzkaQ5f7Vf8dlzn0=;
        b=Zt/qP8xnCwl8OmsrAXLCiDc5XOX42GDQrvYQXl0jwy5zpJl5t1f1MR3ERYI3FZ3Vor
         B1+jhwJzj8q0sU++/trOooVNaSb7Dha4kFtNGTHi+UgThp2O5aw4p/Kf8RbYwEclw39D
         4UdJzDfqOWn+j8EF/A0bZWb56nXB5FV8UK6O9ww4mGv09dLhPnCP2mtE0wkP3rM8mAET
         rz9cqhbu2Xajp5SXdBAK11/CI8FFq3b/znxQovHJsr8n07Ak6UaEFBvk4p9SjvCPJ6Yn
         iNy2faQfQlBA++RwyHDP5B+e7JqDJMomUTe7fSMef+uOAh0FdUmD23wi9ssLpOXn8mJB
         BGww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7YcTCZU/i9cMt6esz0HXOaE7ZTlzkaQ5f7Vf8dlzn0=;
        b=X17vGRy76iAim1efaV7+UeeSP5PJL+I3lNS+oYjXT0J0+Fj5VFrtEEWNGBA004xSSf
         p1GUfcvBEboLbsjcspZKblSgxn5QOGKjL0M5NkDBiZDUKRa2JYKDK1i+omZinY+tUiYQ
         euxjzWoR44gcBJjbFlhDDLtskCW1F9rORzRUMFSCHSmfTrYInnt6C2JbDGIaX7mn5Cc2
         sWHZQIhSZaLIOkKHz6cry1K3/hGta0E637j+fkbdDQ+0Cf6rNIgDVjvG1Za8hdhoZb60
         HEnvKi+3+Q+IqH21zWoRkzmCkp5+JYJ3lsfiQQtgpn8PeDC3Qloa7YBhw0McF3GNRjxx
         htkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7YcTCZU/i9cMt6esz0HXOaE7ZTlzkaQ5f7Vf8dlzn0=;
        b=RrZqMcCvi2EmJK3W4zKiq7Lj6Iq4Ivhtk+6IwXDJ+EfKL+gZjSP6/fMq6Y/neWqw1t
         05GjsFfoPoru9qKzEA6ZpY0iVS238i0/xydLhBeWFMMO5poMSlBWw4M6RsiyOwVE7n87
         vP30+508RASKlnO/5TFEPd7dGEpex97qXZqwO1T/9TgLqIC8YBXbEc8Ttu8eDk/DUr2c
         m4/V4JHle/fT6M6uM2cJP7rLE4m9nlaA+1bEuZVPNIcfpjZRtDFvTFCP79357X88mCVH
         KskMJMoOImgqj2c+AXmDNObd5f/hehjICC4+vgKXU37ePli1oCRrE+nL+HpDuVvyFUCm
         mHFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53304Nm5cRb/enzw/DPLXlftZ1v68nIj6svJgYbH9WongZ00F5PA
	zD3FybWuhRHpOuZikAxGXEI=
X-Google-Smtp-Source: ABdhPJxuKYLnQK2vgA7uMIdsSi4z3Eq4L1PLRhDBum+Q1AZHcROZdZCB1csQIYJUrkNN6OxaVU+FEA==
X-Received: by 2002:a9f:248b:: with SMTP id 11mr4616051uar.133.1612429207441;
        Thu, 04 Feb 2021 01:00:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls377758uad.10.gmail; Thu, 04 Feb
 2021 01:00:07 -0800 (PST)
X-Received: by 2002:ab0:3314:: with SMTP id r20mr4454964uao.54.1612429207070;
        Thu, 04 Feb 2021 01:00:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612429207; cv=none;
        d=google.com; s=arc-20160816;
        b=0VhXuB9j5iK7cMO619mBmKjeWok67LRxIQ/aXhnMSzvoaDF5Qo0XpvIiTCc+pF1EKK
         Ze/2m6v+/44oAc0wV/6I//7txFWsvCXdSInGAq4akxQ5VtAHH5OE6dlMBonzBeokOzIK
         ZJi/319DQ7aDf46R+GRXZiHI2SWwKJ6T3kxax6t2sPuqVBI67HLi8cAk0XjDeOf+7VEI
         dTzekMTXZ8ubmiqLIwTtcPnd5qFX78TA2mmKN/1TQ9LIV8lZanp15NHukHr4rNYqiaDY
         /HkbEffGJ5bK5vCv4xhGqORYEQoQjUjdpOckqcHqGiFbHPPAkMLil6taNDEShpuw+/fh
         tPew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DKhv9NF2UmnAO56AelLaqcZWNnODX+nZTlqSUT21pa0=;
        b=yWmu/TveHClWSW4TtLR341aalb5K+xfPSTpKGJ5JF0/XqHBa5Khd6YN/x+hWqdhCyq
         0fo4XiH/pPSbDqZYnvVr+bN56c0FC8/HFwUmIn1i421JiGcu85e4VQ0rENS5i5CXkN/K
         J0UN8CdMkuHUljntz+l1DbdDou48GAC93ljw8pK4kpWOgYhPtoQyuHN9JBn1jvYZlcAj
         ttt5rKKo/po13n+yG7ZrW2zzcXcWFJl4HZGRDo6phoOp5O00PE0HgbM2UeY5WdE+RHpd
         77hCK8E6e+efowub1irGXy+9hrW4C2/amT+8Xc2nI9l9EomKfWXjQ6vEYSSa/JS9qo0t
         7E7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E25oz5qw;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id q1si321147vsn.1.2021.02.04.01.00.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 01:00:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id f67so603875ioa.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 01:00:07 -0800 (PST)
X-Received: by 2002:a05:6602:1541:: with SMTP id h1mr5821865iow.171.1612429206784;
 Thu, 04 Feb 2021 01:00:06 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
 <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com> <CA+icZUW2omV581KN0Qv=nGsk=6a-GG2Cm2OYeRxETrZP_obwEQ@mail.gmail.com>
In-Reply-To: <CA+icZUW2omV581KN0Qv=nGsk=6a-GG2Cm2OYeRxETrZP_obwEQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 09:59:55 +0100
Message-ID: <CA+icZUU=p9SP+xFh=RP3d39DTWG-6BsETOucJ7OMJtSbqOO-CA@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andrii@kernel.org>, Jiri Olsa <jolsa@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, dwarves@vger.kernel.org, bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E25oz5qw;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f
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

On Thu, Feb 4, 2021 at 9:42 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Feb 4, 2021 at 3:58 AM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> ...
> >
> > Is there another (easy) way to get your patch set without the b4 tool?
> > Is your patch set present in some patchworks instance, so that I can
> > download it in mbox format, for example?
> >
>
> Just to promote the b4 tool - we have some cool wiki in [1].
>
> Personally, I got in touch with b4 when dealing with the
> ClangBuiltLinux project.
>
> Note: Sometimes it takes a bit for the patch(set) to be available from
> the LORE link.
>
> - Sedat -
>
> [1] https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tricks#fetching-a-single-patch-or-series-from-lkml

Honestly, when behind a proxy-server I did not find a trick to use b4
here (DNS resolution problems).
I tried with proxychains-ng - NOPE.

In the meantime I updated the CBL-wiki page and added v8 as an example :-).

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU%3Dp9SP%2BxFh%3DRP3d39DTWG-6BsETOucJ7OMJtSbqOO-CA%40mail.gmail.com.
