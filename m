Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZPDUPVQKGQER6QY2BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id C560BA3480
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 11:52:37 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id j10sf3988844wrb.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:52:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567158757; cv=pass;
        d=google.com; s=arc-20160816;
        b=WLKl01qsu/TaaKZZvPbpHB8TpZHCXzp5Ktw6oy5JD0YuZ8ubGQv28yAADRSpOQQkaB
         XuIgkh0ZXbt+aBmQCiaYb0F7yOF1cnV5vnke5bb687V173Enyr5rsVfO9zwtnoWtPsgP
         BCmWSPP5dh0f5oFEr8xJee9LLjQUJwJkGCnlrsU3XeqTnRSjJC7hLsIZDDnVG/mLo+rB
         JUy81bbLIGaHmMZ2UShuYGINspDd0AqagIA9K1UUimoV9oZ+68F+v8InErynGYfvdUaS
         2FvC8UNF5b6O3T8dLVZlGY5c8MxweQfio/t0kDGrhESugY8BINyT0dxWCWWeFqlrKuDp
         nZMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MzxjeizLYFG3oKd1VHg5RoRl2S/G+yDXi/0+8JyfLSk=;
        b=YMapZsliQdeGVMPSXZVODw+gFR4SOUMkS2Ksu1x0vZlsPm9V4oYfwgWs6R7gzuto4l
         t3Sks4kh9aWmgsUHyOfpW2J63pKeUNE9x+ghNIvMJph/JiguN7OSK8WUg0omcqn/ZjKl
         4uhGePOCDCgtuib7nQMycYGibK3pIUrzfRE091watqh6KPtFje5ozwka8THX4FC4191i
         lmSgpYycK5+klcwglKwNWo9WpNO8JO9//kPcpOm/ZewD9F4zSYgPKEQ5N2w4sufJlVAU
         XVWP9aZyPcA5aTKqmz1TgIUha9teyZDMjSAy1svXSFBUVoiHyQMdOdc/Em/oWQvJ2AnV
         q1dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DsCXS5Al;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MzxjeizLYFG3oKd1VHg5RoRl2S/G+yDXi/0+8JyfLSk=;
        b=DqPy5MSkq3rwgWYqLuqCuRrxm1o/7nL3dz3x3Lf4C3Z6ZlLLAFqI2jgYXjvaYPbTyD
         RHYOrogvh08E4Uy62smm7i/rKVW5oZ6oH6FUZfWnM17JrdcGT1ku1egIinG+E3C2eurO
         7a65c4f9KNsSXjQGeQvOsoMamAY6nOgQCgwfLlS9ahiW4h8pBdD8MaxYsuMIEVwww5Fo
         rabmZMyFuQsw7I/7lwG+mjnnjp4+Y5NvxfnQP49Kp9O+6p3OlVOP81Rgmb6PmJD4Bxee
         mgNjx02L34X9IqlgDDV9aSQ/7HfO9OpJ9elSDJLZjApUU/DzzqaB0GmF18/FRUGfFf3W
         xruA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MzxjeizLYFG3oKd1VHg5RoRl2S/G+yDXi/0+8JyfLSk=;
        b=QrQ4sO5uLn+x5NRto2At99tg6OJKQpBCkt6ipZ/0r9SUnkwTZSCp5PrVg6X4G2rKAt
         AncQ+9OU7/u+x8nbkrG0AZLo9q0DO45anvTALYX4kHjzs1gs0UCA9BUnrqKZoBMZESIY
         G7i7elp9gxwhEF99hR53dU7Smhs5gVrojNDs0WS1l59NuIsBxST2uOq5Vz31FNjxS9dC
         irlwuFOoY1AnZhx4O1+IgvlT1MpcNI9nbOHRQg6Qo/isA4R8Mc//r5D5lNPp9wDjxC6Z
         sImsV2qkvZ2MnIzqQ+B8Hy7j8HZLt2/9JHuXdAGTFhnjfFGHLiCoV+6c3nh+J5PbWazK
         IztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MzxjeizLYFG3oKd1VHg5RoRl2S/G+yDXi/0+8JyfLSk=;
        b=d5DrDgPl4CIBLKjWpeRDwEyTe2PNGGQafpdqXJnAhM3PRRBC9FlksPAIqeyoI3u2S2
         aG7otIBGadQ3NA6hYn8CkneXufUq6UNJNqVal4l9VzqPrV7m7WnY+bq7/oLoIC05XPoo
         UGVI4TLvnuKRCRFUKU/duzsCUlax/SB7s8VEd0tCWKZq/G3bzP7CiiXibkDHxe2iFgIl
         0vekdYCNPjVpXepr66z6ciEY77k3UM3Fw0qzI1pgpUxroBq8echCMq2RZo6xm5Ctxc0B
         zHjmBgquOgrwbMwlD9dg3zsi6nsAOncwGH5QjhCHVeqDxT6f67L/hVLEkTgmetQ2ekQF
         cmhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWWvlGlvfAr9YuIeCVHO0CYCJmtGVtakaeg91qmmtkI/ClkGATs
	HN94CfyQwWJoPG81/Hamv/g=
X-Google-Smtp-Source: APXvYqxHqpKFGZJNC+91JH7xbl5eCV48lRxzd7vyc6AnPNtVPBxVCU5gMQi63kbrSR5CBVBq7IzjBg==
X-Received: by 2002:a1c:3d03:: with SMTP id k3mr17910235wma.138.1567158757434;
        Fri, 30 Aug 2019 02:52:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:389:: with SMTP id w9ls335326wmd.5.canary-gmail;
 Fri, 30 Aug 2019 02:52:36 -0700 (PDT)
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr18225826wmm.81.1567158756785;
        Fri, 30 Aug 2019 02:52:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567158756; cv=none;
        d=google.com; s=arc-20160816;
        b=kqVreuCcfZfqvXKTpFE+X9JLA+ZcdvBKX75mx/X93STltBC4fhn6ykV7g/dcbxn2OZ
         MM1WPST97fsE70zZWt8kYWfERmnIpD0L5EhHKZ+HgOZf1bOoTTIYl5xqPI2LDT6l9kOE
         wQg6aldG/QXYAiuts1FjCvNU3CnCKion3lAmBcMJ82DrPNWGKeSqvWcke6SyEnqJwbxw
         4TZXbchufcFSQIztssehpryQFSa0bYgbA0YBE6mHlMXfJuh5UtVNgTh7cWfGcWDrAW4c
         UGDKm0vyF4STdz3CdhJS+sMvp9Og7F0ceGduQioPhqKJMNox05JQQIHO30bzV07iPjN6
         IeTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tc17SwiXpDz1kgEk0p61gpWwIWAbuTeHVLdYo1NejAk=;
        b=tocFvoxSx7rEQ1W78Hp4nuAp+1yXTvKxF1ruE1e25UapXxHyxaVz6Hjtl88/zeSrzt
         OBrvnPX1zuoR1eZX+y7QK+Za9sjLYbmRXMfnEE55ZkPKZlczT6BIecOCU+QEJISHpYub
         Mv7Gm+Ip8bSuUkXyPeai/efWojSQZl3DGKTnEYgDsdxD1xKR2HNLx3Xh/3CnVTcZcbtr
         pa29Yq7cepVBX0LDlGMeu4ZLNEiZVBwJeE0cQuO4mJnidBFKdhV0+dJvy5XFQMTDDNCf
         3Edn7VpYT6p2Tl5fEXa/I3FsomwCgBisMVbOXLy1iQUqRMvRPtZBWwtb3DxPnX9091cB
         OVWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DsCXS5Al;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a10si228936wmm.2.2019.08.30.02.52.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 02:52:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id k2so5185768wmj.4
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 02:52:36 -0700 (PDT)
X-Received: by 2002:a7b:c013:: with SMTP id c19mr9625630wmb.118.1567158756429;
 Fri, 30 Aug 2019 02:52:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <20190828055425.24765-2-yamada.masahiro@socionext.com> <20190828182017.GB127646@archlinux-threadripper>
 <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com> <CA+icZUWmmC7CruvXx6U0cdXMLaMWJadU=T61E0om1rOuW3==pw@mail.gmail.com>
In-Reply-To: <CA+icZUWmmC7CruvXx6U0cdXMLaMWJadU=T61E0om1rOuW3==pw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 30 Aug 2019 11:52:24 +0200
Message-ID: <CA+icZUXX6YG7=4n60A3_HiTYE0SkNXd8yr4-pqfOsqg66QvXzw@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Sven Schnelle <svens@stackframe.org>, 
	Xiaozhou Liu <liuxiaozhou@bytedance.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DsCXS5Al;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
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

Just as a sidenote:

From [PATCH v2] kbuild: enable unused-function warnings for W= build with Clang:

"Per the documentation [1], -Wno-unused-function will also disable
-Wunneeded-internal-declaration, which can help find bugs like
commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
I added -Wunneeded-internal-declaration to address it.

If you contribute to code clean-up, please run "make CC=clang W=1"
and check -Wunused-function warnings. You will find lots of unused
functions."

Isn't that missing in your double?

- Sedat -

[1] https://lkml.org/lkml/2019/8/27/729

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXX6YG7%3D4n60A3_HiTYE0SkNXd8yr4-pqfOsqg66QvXzw%40mail.gmail.com.
