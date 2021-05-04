Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNELY2CAMGQE6ZUXAFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 335E7372EFA
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 19:34:45 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id a5-20020a19ca050000b02901b72116329asf4358088lfg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 10:34:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620149684; cv=pass;
        d=google.com; s=arc-20160816;
        b=cr7gqbc90fHFd1S3krptkQOS8LgTjhzmyvjB1FBI4AIFu+YgpmY5EUehNKG3FupG4v
         vXyKDoINWX6lajBQ+mkCW8188LDW4wgt+czdyDay7SGTLDkn3xitnPk1BtDE29GzhIf8
         QaH7jU3F+mGMWLxsRAaGL/QmwN8TSB/WzVzzWxJhTPDTkDC6ScugMP1LhvuLOcsb2WEa
         LEQW+YDUelGWcGxxOVmmCHxoDjZpTzFw6NpceTdgdQbUh34gO+lL2Egd02pC8u33auZl
         Yn5IdG5Ww46v+y04rQRSm42FGHjlFwambuA/9ZdRoBmgcKuKjYeyZohS6y2DddNUiJf4
         QaHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=uOVHlekYQkkgXQduzyEZ6NyZzi+n3hyhcqyOo6rxJ5Q=;
        b=tiVr/vS0ag82jzxl1SsSJUhTZ+ESvvF//9+bDOBwmy2aLV30D7PeY1Zu1NXrxxIH7U
         4Mpg2Fn7eEWMwu5DkXbwac6Hp2zeGWWR2/ej77EEvsMrEAB4sL60cNtxIgd3f9B3kxIX
         EcJvMPYWP/XKUo47auKy69qGRwsB/NHAHEEQhrwT4FW7qOI9+B1s2kLpMgz5/CK/FCCp
         niD5YIMfEXa07sM4J1YCRW/ejm+8qG+bn8aOXXDFzEJLUVi5OjIGcsiICJQcdXQJv4Gi
         /Wdb2tRPGE1do1tBLzMad4ylSwoS9RpBVxkr0BDuAnzgnJTzmEU6CXCIZOPeY0Uaq9bX
         IWQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JLXjJqOt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uOVHlekYQkkgXQduzyEZ6NyZzi+n3hyhcqyOo6rxJ5Q=;
        b=KJ7aZVoXvlZPJL0231uVqnMTQNZwVAivR14wGmEKzD2gsz5qeQ5pTk6ZsvoV0C8d89
         w85PsK48CMHo6fFJtOBG5/pNSNRy5v6ccS24j38yGas71Oa/sVJR41H1kxcvz4NFLLSl
         ZaNA6IoICvODrCqBeeECeW/j30ZBiyYENSJaFP1cS5lm/puT2pJr3o42/dnEZuJ5YvuO
         vn4juL6UJciBD84yOdju5yKpNXW7GnssIYsItoQvYwl7y12FMag5UlyYfg4mjC+bejpt
         LyIpudX2hPQwvs2XS7WEsq9y93Ao200PRFYG3t2GRBBzuQ/EjpfMEKbYqEYhhiN42AWJ
         lW2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uOVHlekYQkkgXQduzyEZ6NyZzi+n3hyhcqyOo6rxJ5Q=;
        b=fKahD7uTFnVZvZPZJi1WeEgJXrNfP3cLJ1K5s9cwguuaZRY/9CgglLY4RRaL1nzTst
         YE+uiF5QCidZ3Xpfy0/DXvbME7krU+IkQnw3YO0DxwLXG/qxFXFWsOrGbDsnbdrAqT8e
         HPQ7Uyd+GWkV5eJEceU7nSeZmZD2cg4mvqDsEY2J4BlwGKVXx4z0jLKWJ84aErWjoIKo
         zsk/Nk6CHqDxGMQCDO0fp4rzO7/4LB8mEt3XZcmBrjBXSlvJmVXQ8fmmdT8MVifNK5YP
         j9KTW05PX74GPXtKWBWJq+sAePu5ASnoQ3/JSHIQDOc6ElswkmpPjd/nFLjg0Zzmfdeq
         VmPw==
X-Gm-Message-State: AOAM531hC7mDFdvBMqecjR2nLaerZBmdlM7m7x6N14CcwX4jrz6bnZ8F
	eRq/j5ASUKmTBfD1Vq5p/nA=
X-Google-Smtp-Source: ABdhPJyZxmNawlOC0UcxR5MK/f5gfEGDJ+fegyQShXOEH4fHbZEtvl18sQz9qOWzM0kpLMe4Qpju1Q==
X-Received: by 2002:a2e:9156:: with SMTP id q22mr18938761ljg.274.1620149684718;
        Tue, 04 May 2021 10:34:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls4314006ljr.9.gmail; Tue, 04 May
 2021 10:34:43 -0700 (PDT)
X-Received: by 2002:a2e:8942:: with SMTP id b2mr6894312ljk.488.1620149683671;
        Tue, 04 May 2021 10:34:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620149683; cv=none;
        d=google.com; s=arc-20160816;
        b=snjSDlndivdaW2zFxTxVEYP9cn5PhjUrU0N2gLtaK1sdoy30NtLoxbhxgeKasfxa/x
         cesa9olyWnjX2v4fyBVK8nkOWQXx15nl5EOklhreKix/SKz/DCuWGlnpLqnFObxaYZ2+
         6Q8q3Ea55L9LovL8+Tmrx8yX16IVTixR1dNqu0vRUJEmCt5taCL+l+xkI+xNeBSjoYe9
         UeH7zTOrMT3KVEwKhtkWpZaeuUuJGL8TFa22TcAY71iKINWue05PzLnXNwZzkXFroj9V
         n3GKfViYZ/fKLbT9cFC/7SEG+H9tKiGeKqzdtgI/YJic18+Yh+21XnVlZ5SFokMv2BU2
         KM9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=mx4C5PIJ9LCot1QAuUjobPG8jumBXrSTaYtJi4rsH8o=;
        b=0CbBG6sBp0Qd5mfduFV0pS7/ep6NuIFngQnMO3OmJPzSHKzj7i8uSWBv5vCHOSPuRf
         8duh/T/FEAd/FgJoH0ltyxDG5wbvupe/RbNP2gfxbwR+T7YWn8N7rIl2Kl1HTKJa8Fjy
         Zh11bv1/kzQsQzY8qYU56QpJ/7+Zez48n57rM0v/NrAIX0kc4PPvk36f3gMbH7nSLPkO
         L0p+AEw9qwHIra6sB1zj/t/aaRy7lt/4H/cN7ZIqc8QmyAv7rzBQYqv2V6OUh9+d2ahq
         TjOsY/XkCumY5oDgqtQDw3GQQhW2xLxHg85cUfPAPLMvvKSu7S6SkfZc7816aLkP05nR
         0OQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JLXjJqOt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id z8si207942lji.4.2021.05.04.10.34.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 10:34:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id 12so14410171lfq.13
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 10:34:43 -0700 (PDT)
X-Received: by 2002:ac2:528d:: with SMTP id q13mr9391401lfm.73.1620149682891;
 Tue, 04 May 2021 10:34:42 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 4 May 2021 10:34:31 -0700
Message-ID: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
Subject: Linux Plumbers Conf 2021
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>, 
	Bill Wendling <morbo@google.com>, Fangrui Song <maskray@google.com>, Jann Horn <jannh@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Alexander Potapenko <glider@google.com>, 
	Nathan Huckleberry <nhuck15@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Arnd Bergmann <arnd@kernel.org>, 
	Behan Webster <behanw@converseincode.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Peter Smith <Peter.Smith@arm.com>, Dmitry Golovin <dima@golovin.in>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Mathieu Acher <mathieu.acher@irisa.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JLXjJqOt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

This year the Linux Plumbers Conference (https://linuxplumbersconf.org) will
be fully virtual, and will happen from September 20-24th 2021.

As part of the event, we are organizing a `Toolchains and Kernel
Micro-conference' devoted to discuss specific topics involving kernel and
toolchain.  It will cover both the GNU Toolchain and LLVM.

As in previous years, the emphasis will be in discussing specific topics that
require collaboration/interaction between the kernel and the toolchain chaps.
Examples of topics are wrapping of syscalls, specific features in the
compiler/linker/etc that are used by the kernel, desired optimizations,
features to alleviate security concerns on the kernel side, and the like.

In order to get the Micro-Conference accepted we need to provide a list of
both topics and prospective attendants, so that's why I am reaching out to you
asking for:

1) Topics your project may want to discuss with the kernel hackers, during the
   event.

2) Whether you are willing to contribute and/or participate in the
   micro-conference.

Please let me know @ ndesaulniers@google.com.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdndSoA8TxzDiv1Nhq7%2BAHZ_NETFNibhqmRuVcU6Ki%3DKOA%40mail.gmail.com.
