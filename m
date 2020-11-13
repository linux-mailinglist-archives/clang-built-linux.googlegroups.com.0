Return-Path: <clang-built-linux+bncBDRZHGH43YJRB2X6XD6QKGQE5JQ6BGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 137692B16F7
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:10:20 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id j12sf855796plj.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 00:10:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605255018; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJ5ClV/19BNR/0HBAKcrWD33FLYLVxAq1XKAeeprMBjFJ0feMChxsn2bnzGsVs+HvL
         Z4Jrn6XYN4itN2O1kUHO8QxoG5YqW3ooYpYwNWSWqLbxtKZZDLVEMX7QwvXAq8RFsAqU
         wKTUVtaFt1uKwwG2GXz5bFmcRsVWPXPWAt4ONY7XlD2GLQnVaQ1q5LWztEBjBMvKB/jj
         f7uradwr/a5DujWPQakjl19P7vpEj0k4K62ofxlJ/+SNwvsOz4qc36GUVHuDGmefrdbl
         sI9gBwBvZt/lXI6HiO7hKEGW4gE0npbJGEBFeY3JbZAClC1/vzwyatLHoaPrTpXwckSY
         UJUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wtqZwT4hxtTTQiUGqTMAs5henFUIp4RsqfhL+B6JEfM=;
        b=eA6IECLZSJQLKNo4xD2sV/IwtNEgiADBZDwsvY1cfhzOg7baFHbLKlLoVDlFoDGT9H
         vh+NdWy+C18Cf9VQvSFfCI26vZYSLDNbYmlXYHUfPczm1LVjmu6YouBUmv69JlGT3GKz
         JocTOJUttSX+w4RqkbFrlxSQJgv285ofes8Z8gJ8oUm5WwcvhlIEJ9XrxZsPKarTZu8A
         iqjdGlV6HzLQX5lOw132kVu1M6fksIT6e80E20XnhMi/vpgNOLzagDA4QDmrPQMhMEFs
         ePpA3TP6Qwc6d34nlO+mGKmR8J0CZXRibPmHTB+tOTgKkEUc1sAPKOzwG01ODu5QZjnD
         OsFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2+i4ApZ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtqZwT4hxtTTQiUGqTMAs5henFUIp4RsqfhL+B6JEfM=;
        b=G0XiYR4zOZjXBSmVSQuJ3zmmykBZ/DR5I9lyfq11/i6XIVfOHPA3phpD8hpouVSvVU
         xrJN6aDMQ1VzWL8x2GSvUv5pRWE5VZ0Wba6IzTLM71fhpMCtiGajgNiT8ypdl5+OWBT+
         FTmNlWqk75DWTBBiWZXouqqnMIJKVZuVlYkgbdD8v/rOj9oiQ4rnumPs1mkWddGg+EAC
         Rex3qRZn2EaRKFietDB24vRKE7t/UfTuQ21s+XBeOg/+0yDqoG/TfcobjhoCK4O/uFwF
         y6R20dPwxt3Ar66U1pl3DXsyeT7f7RNNgSpQpohcbJhSUMvUrVdn6SMqXLXWqMDKUAbC
         7u0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtqZwT4hxtTTQiUGqTMAs5henFUIp4RsqfhL+B6JEfM=;
        b=aMFYJ0M6x8cvm8/Gz/vb6baHPU+C7s7uEenaN0W1E8TwK60qNay+dJyS4RE8Fxpu6v
         zpzFzt6rdiVH4Wdv/XEbUz7FGsT2OrmsR2N94HqmVisJvhSar8cDnexs8McdOlydJ7wo
         /WOCsDsVvBjgWqB6o0DCfHwLpVTFBGEv3H7Ay17+R4Fz9F+HaYNEVlbHkfHK0I9zkEez
         GTKcZvtmRqeIRdzuXBk9iRq2MME+2niJNkpBvOe03ZfDGEDToInlb4RouQxXtNyn64a7
         Vdf4xP3YN3xL1Q0xdjfDakx0WoxTNGYG2wHcqqJErHjK9kscf/5ZfgWyj5r/eokb10Yr
         JNLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtqZwT4hxtTTQiUGqTMAs5henFUIp4RsqfhL+B6JEfM=;
        b=k5OQYVQxjjQ1B3f/Az2K2DoGdNKcyBfJEqwm3y1bM7W+M38cmzXPTiIjdsHi/V8mXH
         v9i4niPx6B4apz/E3WxKY0j1PcBH6tCCsU+ix7l5o4dkU2VzZJX+6nwHcwnxkngiir7b
         H9Z2bXuuKDtqF7Tv+y74aAiGGpXngmzJ3wMwgOHk67nqnSRamlozq8ZZzhy+SOS4O45J
         /NQ/borscTssj53O7tJfH0aIE+AnNYqDX1/8SG0SnsIsCYARZNQgB41UKc2lU4+kCdb2
         oZhP9aPgqOZjDFoN0dQD2/A9duu04kR4Kghr2TOohVou37Sl0OuI635IhIMWyEkLCsDX
         pV8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Sjw8EH7CoRwtvZEY/wOqjVqeY98qtSUqNgPKTOz4CaWQk0jnq
	QaN7tmY8hRJ4OpftltKL/QA=
X-Google-Smtp-Source: ABdhPJyrMrrfNyC0x0bF7mJQ6z4uzxDJeJwa1fI3aYTTCtZIBDvWK3+naKRYBRDt5GuaDoAKMlOr3w==
X-Received: by 2002:a17:90a:4298:: with SMTP id p24mr1590489pjg.7.1605255018729;
        Fri, 13 Nov 2020 00:10:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6a85:: with SMTP id n5ls2751087plk.9.gmail; Fri, 13
 Nov 2020 00:10:18 -0800 (PST)
X-Received: by 2002:a17:90a:fa93:: with SMTP id cu19mr1704440pjb.117.1605255018181;
        Fri, 13 Nov 2020 00:10:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605255018; cv=none;
        d=google.com; s=arc-20160816;
        b=vXiBxyEmaZmp7whO+YLyW6Aogsq6Nq37RDdq0ESwcwSssFnIgPlTigBx1iPpY6RLYq
         GeehpCoIuECcXcZTphKnO7V7Zu6rjEuBJ5Rk0VIxMyOfWRDWRqSrXuNcHM7+1/q9L3km
         wa4A5TDfIowjBs3herkS8chjVG9XSb1+T3ci7CDgGKg6J4Qf3SwJ5gdDbUhHwE5V45/Y
         9/WQ81PkuQrZzMXqmB/sy5vujBJ35g3zCXlgOSqze3eJHbepG47gpE8jI8IAgmCiNcDc
         GraBjEQItAJHirGyx+vWPXvbhRZBlNxCyLxQV8QiiLq4HaVP2SZ7Q9JWLPYfJHHIPGJm
         gZFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YZly4fKiBbV+IkexCkfhDwIO10bCLlCQxITCXC1nduc=;
        b=RigDXwe6HmF3OD/okCtUoohSBPL1A7of3qF8HZIZhsXnkRg3zuhSuBRwW2KxXgfx3N
         RLi8+pU5csUKYctE2k0BYavPMXDdSLNV+1dnZPC5KBu+Wl7WgD5XXegeeycCLy40h5fq
         8XJJdtyayeqBC/hItP36xm3X3JDejy6J08uTR1A/Oek2yN+315w5h4eKBV5sL8iVx7Iy
         Y4dyTezlw0OxQAjmoUb/bLnz18ei1tjYxWU090IiOl9SkTO5OhfpWS0C1qUCJB8WKqMB
         HqVMl1sw3JthAnDAJuk1zW3oxAhQ935GigZQBz5nsKCozLNoEqCpWk6oft4aNo6ZK+3E
         buBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2+i4ApZ;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id z12si613629pjf.3.2020.11.13.00.10.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 00:10:18 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id g6so6728579ybm.7
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 00:10:18 -0800 (PST)
X-Received: by 2002:a25:5f0f:: with SMTP id t15mr1252894ybb.26.1605255017552;
 Fri, 13 Nov 2020 00:10:17 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com> <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 13 Nov 2020 09:10:06 +0100
Message-ID: <CANiq72nL5O30-QXh9nBnE8rUdkHs=OxZJ=9uVWtKJ3YTDFr-fg@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Moore, Robert" <robert.moore@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, "Kaneda, Erik" <erik.kaneda@intel.com>, 
	"Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=u2+i4ApZ;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Nov 12, 2020 at 10:49 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> 1>c:\acpica\source\components\utilities\utdelete.c(270): warning C4013: '__attribute__' undefined; assuming extern returning int
> 1>c:\acpica\source\components\utilities\utdelete.c(270): error C2065: '__fallthrough__': undeclared identifier
> 1>c:\acpica\source\components\utilities\utdelete.c(272): error C2143: syntax error: missing ';' before 'case'

Can you share a minimized sample with the `cl` version and command-line options?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nL5O30-QXh9nBnE8rUdkHs%3DOxZJ%3D9uVWtKJ3YTDFr-fg%40mail.gmail.com.
