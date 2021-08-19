Return-Path: <clang-built-linux+bncBDRZHGH43YJRBK6A62EAMGQE7DZGGWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 775833F0F09
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:05:00 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id v21-20020a63d5550000b029023c8042ce63sf2398413pgi.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:05:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629331499; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+IkfBFV5bsaMfpUeqrGW7fY9Kq39VxJhjx232fIrZt3w5BqPNsVHhN7iuoCz/CEGD
         +pYo957xKODfGEHLlD2Y7BoGHFWeTOcuva4W6TZ3OjNHGUUmThgZds+hpb9tpK/dCgHE
         /OJ/3XIcHqUsD7XQmGET4TWc0fTPZAncqctMuDZyP1PnKbxMXVVo3Z+RQyPPHY0XQ2zG
         HumzA1ikoJpqWi5M7FLCjPavBTEgrnLZC2aaHkkTuEP4IawFEFm8m7hqt6TKHSb0O7qS
         avjV8yNF8Vtj9oLKy74RCXZtDaq0nC8xJX4yNFRoHBXkO+5L4HuW0SSYrMc9d4WQu+TN
         gfaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oE/lVWao+gwKyh/xWosibiURo4tj1fQ5Gj6FfDzZ+QU=;
        b=gMcRsDRC6U+4LAMEDvZTG+DC+k53ldQN1e6rdzjVQruKeKU4JdwsOYX/QAPWpWV5ig
         Lw1oVptKee85mE5aKGWQZCUHIzlK1MPFlr3MPtWf4T4lYobKL2Gq94+z29nwAwGIDGOU
         0GMPM3LTgA89XC/61az7m3lZ4CGIjGSRfmR96qN/tNXIz1TzAW/FF/yGeoyyUGxyn8Ix
         fbPzxmQxGaY3TWnhpYDqcqMOwLuhDXjo5vSbyRePtc7mE8QplBKIrF/1NhVMdm/qb/SJ
         WyqYchbODGjZSVphEl5uL85a22n4YgfbMIu3S6xhna1blDuWAEH6sWDhaz6vY8R4RrYM
         8x+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UKWjEQsS;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oE/lVWao+gwKyh/xWosibiURo4tj1fQ5Gj6FfDzZ+QU=;
        b=HOtyubaMFyayc8ILsa5P1Gh30sJbW+qGwUssO4ACGWCyvCCkQUrvwhFk4QD53UBY7B
         ecFtWBpG/39NyHEK95OmeYpAZsV0YsbR+tl/0f5vzWqVlWMwHtD+FL0ymCQCtu2roOOx
         s2DXVuQht69zeVDbAkI4WpoY1jCnaQecsFDZHuaizZI5QzSkQATFjkjGleKqBn+wWQU6
         /C9mIIWTdYw7SVVRLBA+NP/dniyntpa7lfFjRouuQoUPhjm+NN/8QxBFhIfwOsibmNGz
         c5SBEh4ItCDHCO5zWt6xxlnXjtayU4j6luNai2sz2I/wMBr19dFrPs+hvKgupP6uBe4s
         i3qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oE/lVWao+gwKyh/xWosibiURo4tj1fQ5Gj6FfDzZ+QU=;
        b=oseOj23Ww8VNIEytoEPIZARX9/+A8m0JHiVT9q7DQKvWkZxR2xjTlRHxZikxMd86PC
         qtS/nehCQP2qZYYBrK3ROwAdGrk3qmO3r3UhrModCrELrY9aaHB1jXAu0agT6LkHWIPb
         zw69Wspoxz17XXdZwDzfdIpWST4Xkv0iLg/tgjnVQ5vwOIfwWspV4/1uidWGkAPM0wpH
         A7xBHhi+NvXYsYv1XqO+kpeF3GqkNO/ya/MpJtxazeG9Mt8Ny1VA7vRzrUpDGCfD7+2/
         9nbyizwLwN3o/8FL1MbpOwoEPGp8qbIswvRWhQAU0n+EIMcrwYF0wj7PmD0HCMTZYLht
         4KNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oE/lVWao+gwKyh/xWosibiURo4tj1fQ5Gj6FfDzZ+QU=;
        b=t0J4AbSzi5DU9vz9mtRXyO9jizni2ew8/HIcgH8mVUjNULPEGDHWdM7IfdAXJzV8hQ
         pxGQLOu1XUsf8ZhW3WSLRNMoDr+E6AkxLg14RSk8JHtqBfbYq/WjUSKNzFXNrGzhtZCP
         4kj/tNUTaP3F4gFxjWk4ol4YS4f/9LmRm//7pr1ZMfkpfi1SahLxhn0IHSzScllhhHdE
         dT/8LfqCsx+F+zinyhvmTeBuXDbsSRqP/H3Nst/03HrIqLjcW1BBQCWoxNawRAIv04Q1
         a99V6HMiCaeQiiCzR3+itxODmHqGPvu/LsKY50Nooso4m7RJaDjULen1r0FL/Cs0PFLr
         kG0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EG5W5MWHem2sI1R+EQqsAK/R/CDLbp7gQ1eMuZBpI3g7BNt6k
	PA4h7alU45SkNmXstyAanfQ=
X-Google-Smtp-Source: ABdhPJyGOG0KAop6l91pGJOE/cEVlL9F1lTLjXHrOaIRIRSecmCbwnglLSIqaboprwONWgH8SJ1woA==
X-Received: by 2002:a17:90b:312:: with SMTP id ay18mr11909251pjb.144.1629331499183;
        Wed, 18 Aug 2021 17:04:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:520c:: with SMTP id o12ls1767381pgp.6.gmail; Wed, 18 Aug
 2021 17:04:58 -0700 (PDT)
X-Received: by 2002:aa7:8116:0:b029:346:8678:ce26 with SMTP id b22-20020aa781160000b02903468678ce26mr11936706pfi.15.1629331498530;
        Wed, 18 Aug 2021 17:04:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629331498; cv=none;
        d=google.com; s=arc-20160816;
        b=bAlRFgQA9IOica59jfitdBJ/eXiLm/u+fi3kUcZs9Xj3PuwMj70NSu2Hs1ab9ExCV3
         kbqgcieaaXsj/hMqvf9dp73QZZ4Cfg2aRAdrMOYK6OxpFsxIEe75aj3/eY1igY3X6uPG
         g+OANNL3KBfKBXE02Ai/WqKRNw/j1oMmxeEfVwzTkF3wkVve7z2XnsClN/9eSgeZE4hB
         rE4W08JnamVx5oDJ6JC9+HLuJ1kEZBBaTpfz7gPPP7VwolnkYP2zezgfOZcH/y2Ts6+Y
         is14+42j5s5rV+0qC7uQTdYx4/t2bnsq86QHH2OEUl3SMSEXQHM4t2/xgwRpbiUGEPQE
         TGPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w17ydvcuCGlYzYZkPwnAY4ViNmy/ZwOBneYqz+ZoO9o=;
        b=Eid25RNwnGsVjoc/nNpm9liff3frVZZgD0MR/PceUSRtKulXuIqBAC9NDzCyYdGHjq
         B8SvGwxa+5hI2IOlTJ5FH823Bkgyg+0envhGgeKAyVlCf2o2N+cYMhYNrz2M8rw3uoS0
         UZELf+epSXllTfYzwF4RaVMmg/lvapwp0CqQkZdZER3mXzpt+AgNDbLTchPJuiUj83qR
         onz724I5Q5vmI1zULKtqxHdU3MffklHngQJr8pxmSTH+0Xym/HqYs50mQIYYMqZYgoXT
         2hBRPAr/HHZvS6RMF1tDwaVPY1Nbdzm1VMxetcYkOgn0OaxHr6VtL2fJzhRmhV6nZO/V
         GX/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UKWjEQsS;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id j12si155144pgk.2.2021.08.18.17.04.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id j18so4089080ile.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 17:04:58 -0700 (PDT)
X-Received: by 2002:a92:da11:: with SMTP id z17mr7915420ilm.176.1629331497973;
 Wed, 18 Aug 2021 17:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210818214021.2476230-1-keescook@chromium.org> <20210818214021.2476230-2-keescook@chromium.org>
In-Reply-To: <20210818214021.2476230-2-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 19 Aug 2021 02:04:46 +0200
Message-ID: <CANiq72krkjtmwwZOebbVnPismTPoe2y+vCXuOXbBwE=1-BS2hg@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] Compiler Attributes: Add __alloc_size() for better
 bounds checking
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>, 
	Andy Whitcroft <apw@canonical.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Christoph Lameter <cl@linux.com>, 
	Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Daniel Micay <danielmicay@gmail.com>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Linux-MM <linux-mm@kvack.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UKWjEQsS;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Aug 18, 2021 at 11:40 PM Kees Cook <keescook@chromium.org> wrote:
>
> GCC and Clang can use the "alloc_size" attribute to better inform the
> results of __builtin_object_size() (for compile-time constant values).
> Clang can additionally use alloc_size to inform the results of
> __builtin_dynamic_object_size() (for run-time values).
>
> Because GCC sees the frequent use of struct_size() as an allocator size
> argument, and notices it can return SIZE_MAX (the overflow indication),
> it complains about these call sites may overflow (since SIZE_MAX is
> greater than the default -Walloc-size-larger-than=PTRDIFF_MAX). This
> isn't helpful since we already know a SIZE_MAX will be caught at run-time
> (this was an intentional design). Instead, just disable this check as
> it is both a false positive and redundant. (Clang does not have this
> warning option.)

Thanks!

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72krkjtmwwZOebbVnPismTPoe2y%2BvCXuOXbBwE%3D1-BS2hg%40mail.gmail.com.
