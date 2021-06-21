Return-Path: <clang-built-linux+bncBDRZHGH43YJRB3OHYODAMGQEEV33DZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8603AF5D5
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 21:09:35 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id q18-20020a056a000852b02902f93b26d6d9sf9740035pfk.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 12:09:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624302574; cv=pass;
        d=google.com; s=arc-20160816;
        b=GL75uoRLLChKke5gihuVsPGFo7VixoGJEQGZubELZ9C21sOEwg/T8hXMAKX+HlW8RC
         BH0KQU+MZKd/A0mkrG2Dbm0LH/wVDtuHWuU0hHQ14O2miBDsfQjAZlh7dXLZNBGW079o
         D+O4+hIcnjXPH2u+m0h56lYE3xercf1td3aWDJdiULtMLqry3R7+6P310L3M+t1ndftU
         1iWidGI2uhQ6Nkk0EizlES8b92ufBxwLFYVop3rncY5/Yra1lSbRrnENxItONjTuZcf1
         NQMa3bPr0nQSg+VkejoAp7K8wFlmSYqm3mHj6BdQVuOd+3kB96XuCUZ3A0i/xb/o4Z1O
         gH5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=U+F8XzDs9U+S0nNMwVPjqt2vhUDRmozbZi/yWoH+/68=;
        b=pYWLvE6iY1AS8ioEcYOtki40ZT+0yfnrXQ/QvJGvdNRczdoHhJ7B83R8OLV1TnNgbU
         pkWZ95ID1aOSbIJ6WRO/Nf7gXICUHgR9nNZLyiMOxLuRM8z2boZKt6IWPh0Mg4MvNw00
         oeG9E4nbIXUjn5F/gF7EAkJ9ZS4OxtgpIqr9PSdTNpp3kbs7Nqa2Aip7IEml2VVhZvx7
         +bfX6DNcyydObP3kUypXj2Q0I3d6aVfTIgp/l/IrYhULXS0qf3zZ7gesoU2uK9OcVTU+
         y7OWK8fJYdWDh4v7e/ynZXLoAuqCPpJd4KRovWYZRP2pemv6Jk4uW6m2TR2aiYdKTcp7
         hnTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SisdruXp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U+F8XzDs9U+S0nNMwVPjqt2vhUDRmozbZi/yWoH+/68=;
        b=PV6JyZTtmZVoSMYeN8xUedHG7OENM3aQ8ANIUOc9cB7M1T/W5qEmYlZMdCsCxWfMvU
         S2U56o9UCGtntq38lFYFyX3Gu8ENQ/n9aMbECZGM4behIlt9da6RX1D57QuShMVcMlGn
         8jLb0/GbSIqjg90Fiu2N8InvhC5hDm+QyUHmHwr54Z2epYh3VM95OItr2tx6fczJMUjy
         nV8zPqQ2zJiahLdYuZrKweZhgotfvzbNT3eStNaBlHoqlXLXI2Wqs6c+gw+7ZefjKtQl
         KBwNlOj4JVhmBziYUw5JqfGvqtN5Q9fPvAbDBPCRVpN9rgrlrZMBL3Mv+kD7msJbYwQR
         Dj7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U+F8XzDs9U+S0nNMwVPjqt2vhUDRmozbZi/yWoH+/68=;
        b=YKtDsJsIO3jc6vMAmXG2hvvtodNeM2XGv2VeRTPj51YMlOgdL4TNXJuZMVO6K76Eru
         ptt8DTyjku+wygUN+cI0lE0uw48Gt2z0jDyg9OqBj3LpKHhN/axqeLn1nC4cAYWYEIXN
         E4rpyzYTKlwiLX5lGYS9Hxrwv8b98sfyAfs4gxvMWHMpUq2vP2BT1AtyUiwyBGKSxYJr
         5wAFjDjl/JSkiR3yJLSPp9JwwROrETLOGlS0mDma4QpS+UG4QCNh0CH24s389xkRIGt0
         lsmhSKvflVqNK54wBBIxK+vYYCTdRKKoq6u9whWCelpU1Y+YSFbexzW8HqPYmOgV1KpN
         GIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U+F8XzDs9U+S0nNMwVPjqt2vhUDRmozbZi/yWoH+/68=;
        b=NBxL7WdTBLwGBmpi2YWzK9rNTiyJ4yrkv4N4N9WO4Dm2WqOTOL5+NH5H3NnouDLjDB
         jVzjbUwJbiKl52Au037tCiOwfEtQ6VzIw/AUKx5ixol1Q0mE6sBmTsuBXtOh5qGXNis5
         hoKddb8MJ+HhQqBB4DEv+DjPFiWqwqBC+z3So6m2qeNJjs/VaUQUjRQ1+9Zv7TAYizv0
         7RhhReA+WDzrhg4c58rByYZUTab8G7AferJ3Y42eUUux+A2Tr8T3TKi7Gn30IRBufGHt
         BuT2sL92y0XUwpWdbti3qp/b/K7KEukA6RxSmA8BFgKdwbmPZtjiIsUgKzIlJvtBRTIW
         mjTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yyR71ImvTgmTRGKnuY4ugrxK3dMVddjZtXF0la5F9pDm4Li1W
	DL9AzwRMaPcvtyirIDr/j/I=
X-Google-Smtp-Source: ABdhPJxmWNRm2a6O6dwsSLNaWVFc/qS4JskufwF5jYR1+SY2GQ+Tk1TIX2vQdf5vgDwb4q0mKrIQTQ==
X-Received: by 2002:a05:6a00:726:b029:2e9:d88c:15c1 with SMTP id 6-20020a056a000726b02902e9d88c15c1mr20912855pfm.75.1624302573943;
        Mon, 21 Jun 2021 12:09:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1547:: with SMTP id 68ls2385004pfv.6.gmail; Mon, 21 Jun
 2021 12:09:33 -0700 (PDT)
X-Received: by 2002:a63:544e:: with SMTP id e14mr55733pgm.256.1624302573457;
        Mon, 21 Jun 2021 12:09:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624302573; cv=none;
        d=google.com; s=arc-20160816;
        b=zU9E8q4a+vIPncBCP745f8KxytZ7DF1TAgiPm4QU4uIRsNS1OwcLRd4ey0dxvjT0It
         KaiwXea6gLGZL2sg8UVylFTZufAR5FE3D6dX2TrjrUVcUT+ce1pYbRKPSq7Vyxrnf9ee
         gLUY8xJ9VzuaEAhOMKlbkTOSq9cEG+6eSVDbR3sIp1qQ4Lf2WuvBqTpi5s5VWYtUo223
         WVQ21mAdBI4b51KskHe5noGfQWDGTzkCN5FoFjgx7oX+Jc5h8wqEl2xXY4Uj3ksPDrVb
         8yuP6txASmvqAqZvgIl3WN7XZMMYioM8qDw6ix8Yz2eg5GFZeEibnVYXa3rnwAnDgr8R
         tEdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=64p3rTJ8C4Y4xbt9bWVWwTFj4vexAuU70eIjzKEaDiU=;
        b=ctiELwwOecn49FBcxSWCMrO1Bqj7myiftS6WOrpLHO2oOamumVKDzjiXx2VBqv602/
         x/qtOmXyfdsuzWJAwe0NENgOjYWTzD7gTDxTZpzTd9g174ciXWbSB1oJsh3wI6UJbiWa
         KvFMOvMIeXIAQ9m7whOMmIhLZhzG62Ghh9DoeJlM4iFjvyosgwB4MVqg1HwYkzINJwqi
         ekKmKQ8OKkZ0/+09wwAeLWcZQXSYE9vUiaD7LFzOyzDn/Ht7PsC4FPCwuzbZzfTP9AhR
         mMVBDhSf6XCJRpwNyW9DCYjFeJRWYxXJT7pk9y2RJ58uFfBb+5y82xOWiCciHki5m4MP
         6OGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SisdruXp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id b3si75184pjz.1.2021.06.21.12.09.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 12:09:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Received: by mail-qk1-x730.google.com with SMTP id c138so33292608qkg.5
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 12:09:33 -0700 (PDT)
X-Received: by 2002:a25:a448:: with SMTP id f66mr33082808ybi.135.1624302573176;
 Mon, 21 Jun 2021 12:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-2-ndesaulniers@google.com> <CANiq72kjyiAQn2+ijZKFo7SY3z+dCV6fGXYP1O_Mq7Ui3EqSzQ@mail.gmail.com>
 <CANiq72nbbqeD2dv3z0y3rN-_kdnh=9-pD7oSyWUfaG8oJ2y_8A@mail.gmail.com>
 <CAKwvOd=B6LV9rZmtPacfz_F10jj1wrovoGu8yvdOqKZ69-T6mQ@mail.gmail.com> <20210621182418.57qbumtovysrlkwy@google.com>
In-Reply-To: <20210621182418.57qbumtovysrlkwy@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 21 Jun 2021 21:09:22 +0200
Message-ID: <CANiq72kn2sbpknuBPdpHcPw+AhFF+qBjp_TkxG0+t3fs8-dW=A@mail.gmail.com>
Subject: Re: [PATCH 1/2] compiler_attributes.h: define __no_profile, add to noinstr
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Johannes Berg <johannes.berg@intel.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SisdruXp;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Jun 21, 2021 at 8:24 PM Fangrui Song <maskray@google.com> wrote:
>
> Also a reminder that __GCC4_has_attribute___no_profile in v1 misses two
> underscores. v2 no_profile_instrument_function may need to fix this.

Good catch! Yes, it is missing the last two.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kn2sbpknuBPdpHcPw%2BAhFF%2BqBjp_TkxG0%2Bt3fs8-dW%3DA%40mail.gmail.com.
