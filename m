Return-Path: <clang-built-linux+bncBDRZHGH43YJRBAPZ4X6QKGQE3R4UKJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 655D92BC216
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 21:45:54 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id p7sf6178047vke.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 12:45:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605991553; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pl1aRhAFjI9lr0MApzC0tShmZY/mGMTmSLLjNhOW6h0f4YVLBDDJbFjCG0b0FvBlB6
         Rf+i100vgZujvW7xzIdusxEGZzPBt2H09aQ6hpwRVOiQZX3hBQAXjNAVew99eeASUTNE
         aX16SZwJZiM2SGvo1z4bMUd9S+Kjm+OC4ej3hERIxITsxJera70ctAzgiNrZAqS80khR
         KUyD3bl/UwVtCLyhiNRPYw57yNUjrfqO0OQ/TdTxHyKtb7tx2gyOMP+TLUXmNpipSWTF
         d5R8II+f8UtQnpo9PN5H2uFnh0qfzVLgS96G0mcN9l1kzBJGbQkRvtul9NUBDQVStvx6
         6rSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zESxvLpfFr6JCXIzqA5ZS/T2e0kQeN8LeLWT689nk68=;
        b=l6gDjjLeLExYftT8qRenA7+wIririQCHNqIOXe54W6FORyBaJHj3n/77XKXoWSKRwj
         R6UJ6TKUzehGxTENUKYhxQNMSQBXoi3wPY+CDK0j7r2oNlb8OFHyQ4InCtKWGD8b/CY0
         8/N/HDAEkQbKQLs1ULMqSuMzEJWd7dqjPqHpofLmJ2k48C/T33fchxoBAkpvmSs2jZjA
         K1tY6wHM9IJFWQzsh6uNHDMZYbNBlwZoFscyh3epmV4LrqniFcqbsE/2uNSillxIXKAo
         9+QUo0g8nQ2dY5KhpCyL83COSO9G5mdRqq6MLGedmJkEyDgo8tkjs0yEhZa4qJiBrSyZ
         Ns8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J7K+/UQ7";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zESxvLpfFr6JCXIzqA5ZS/T2e0kQeN8LeLWT689nk68=;
        b=NdYrribQ+rlTVlf6CXTksmbB9yku7DWZ+8LSxwJ0+HPx/D12Gb8chCN/9ei7GO6yh4
         gvhL1/RkKseHR5L8O92MPNxB/RcKco4J9JxklMcSrAN55E+54d/H+tgUYxh/x8twiOxp
         KB1DesvdYZSpNz0DRAJcx0IPcIdla0yTa0jyIlQ2CcwgUgQ9Jhk6487/v5l2YSU6D2ZB
         1hT3V4Vrd75iffv43Fa49VJn/D7Uuds+hmuHAjb/sjfs839++DhbyUNctU51wbTZSa2p
         U776m6rH/s9mTHCObKUgbRlqYBiNazcrMa3+MMVxKR7TwLL08zF+BmpLukudXQz1E6Mo
         z0Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zESxvLpfFr6JCXIzqA5ZS/T2e0kQeN8LeLWT689nk68=;
        b=ml8gLWPSCjuT8PFIqgdVZkfyoILDZ+hugY3HkoxBDt5j188i7Gkk96hFtNND7T3Vle
         X7ZLCxu0xKqIyEcgdqADTEF4ezOwFZ6UtCvWICA3vFvMHSdKfZ5/dqBwNISZntGfvlBo
         vVFbCgkHryKDbJPR9oCIgc8BiOtyh1aMOH5iBmkM9Tq29j3/vdU/2YXYvi3fDJjvimAc
         CrCunXJV1x++KpCCUGEhInfS/rayXsktywvZgsIb8ZKNs1+RduacfAF2kKqNl0yLKriZ
         ux3rq/Qf6I52rRW7hbsOSEws7JUWuVLqVlp7j9T8FnfeJXsNS9AvIjXPNaW7RUthWtAB
         fnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zESxvLpfFr6JCXIzqA5ZS/T2e0kQeN8LeLWT689nk68=;
        b=mCA1gRNRLpC7dE7dN0Y4bjGx0CDJ9q6+967UgO6Bl7MSIkT+XhC6dGYEjtzct05xUF
         2cDY86TGiTOWnBhfd3CVW1s+6KrV7Nq/kbN87Xe3lKxi0lRrYWNdTNSJHWMR9eE6imTp
         GKqaq1Gryq3guX54DgdxfFldolLqMjkbRj8sXq+SZ+Qxm4Tbicoo5Z/GKyr4WXWE1L+g
         kwA/SoKPEZkmO+Ru39R2ayPPEPw8saqNi/TVcvMUtnHq+mUA8ZdoWOfRMIoygokdkVq1
         Cr8S5R5bBw4QNstCVeCz9PWFQnhLm8GpJLntzialqT0pKEaMb9buhFJSa4ls5g6dgVu5
         l0vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/cWqmyaU6yj+Ap5owu7EmU2sJDZx6QGPLmuj8sM2gbWkahkfS
	Nr9YhZNcB4g60rkx81s28As=
X-Google-Smtp-Source: ABdhPJyeBmswzTGZYrRgVXpLJidZfGavCLP3G6es0fuKcNQTM5E1bXMR5Z4dQwGCdIBZMMYWeRqT5Q==
X-Received: by 2002:a05:6102:22d0:: with SMTP id a16mr17082581vsh.23.1605991553441;
        Sat, 21 Nov 2020 12:45:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls1428403vso.9.gmail; Sat, 21 Nov
 2020 12:45:53 -0800 (PST)
X-Received: by 2002:a05:6102:2417:: with SMTP id j23mr15670595vsi.5.1605991553011;
        Sat, 21 Nov 2020 12:45:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605991553; cv=none;
        d=google.com; s=arc-20160816;
        b=WI7nNKBJbvx1UAQTYdmOnSPK7D10jXD+P+//VIAR7hkZtCuLcWaQhvwQhkEdthwbXz
         ITccnUbVg+bs7TJxkhSCFZwtD0INBKo40n+4IDh+NZnT0GsQT9UxQzObJVphuJirhOk4
         MqLn+iWJ6a3M7ECzpCNQL6QT5aOpwNJKJWuNP0QjpIwC9tcRRLgBYrm0pe13D345ljHA
         Hhf9kn7A1CQzMui0AprHeALWszzQvVQ4LpK35oVr9d4KN1x0rOjRPk176ylAoFwFWsyT
         DUIwTOE3cyhXGOGHuSbwRHa25XNNSKM7dnTewJvh42Wn35t/dmZJd2fqdWDSP8pyLDrK
         Td0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jfob3+FnyGrRXkhnjH+zGr8/PgDK3twBANc/QMxzgFE=;
        b=FrRwLi9O2jvsQI3jPhq6NlQ5LMSyH+im3kTpGSMeWMqZ3J9+c4MYChk4p14HIoe6jH
         gZuaAdLcLjXc6hzILvv8WIgNxSitMpYE4XEwuAyW4WwZDcul1q9wKH4lGoTnSaqG5Usj
         Rvk7gz5RPgzFp8Ner7y+zkbr1yB+H7dWT6i5hzZxRpFnp449E99rufECJ4hkgwIdEZUu
         ZVyR+B5P/7xhNLJkCNm15byX5DKeH8GRyhR7Od7hJ98jdoMOecPJDctZuXyLz+xfN25u
         lqheeQzkQv2UE+RH1xLSTKfsUiFe+bxxDp3QHAKAH1jqgDDZZWPrevDm71XqU0hPPOzE
         LCng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J7K+/UQ7";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id b25si527827vkk.5.2020.11.21.12.45.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 12:45:53 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id o144so12095088ybg.7
        for <clang-built-linux@googlegroups.com>; Sat, 21 Nov 2020 12:45:52 -0800 (PST)
X-Received: by 2002:a25:2e0d:: with SMTP id u13mr28744857ybu.247.1605991552718;
 Sat, 21 Nov 2020 12:45:52 -0800 (PST)
MIME-Version: 1.0
References: <20201121194339.52290-1-masahiroy@kernel.org>
In-Reply-To: <20201121194339.52290-1-masahiroy@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 21 Nov 2020 21:45:41 +0100
Message-ID: <CANiq72nL7yxGj-Q6aOxG68967g_fB6=hDED0mTBrZ_SjC=U-Pg@mail.gmail.com>
Subject: Re: [PATCH] compiler_attribute: remove CONFIG_ENABLE_MUST_CHECK
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Shuah Khan <shuah@kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, linux-kselftest@vger.kernel.org, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="J7K+/UQ7";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Nov 21, 2020 at 8:44 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Our goal is to always enable __must_check where appreciate, so this
> CONFIG option is no longer needed.

This would be great. It also implies we can then move it to
`compiler_attributes.h` since it does not depend on config options
anymore.

We should also rename it to `__nodiscard`, since that is the
standardized name (coming soon to C2x and in C++ for years).

Cc'ing the Clang folks too to make them aware.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nL7yxGj-Q6aOxG68967g_fB6%3DhDED0mTBrZ_SjC%3DU-Pg%40mail.gmail.com.
