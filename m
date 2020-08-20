Return-Path: <clang-built-linux+bncBDYJPJO25UGBB77J7P4QKGQEWG5DCLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCC224C799
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 00:11:12 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id h6sf52694qvz.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 15:11:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597961471; cv=pass;
        d=google.com; s=arc-20160816;
        b=vEO7mqqkMCL9qc0riq5gH32ZTj6DolzQc5TvnR3mhBHQbFePMv7vpGaS2tH0XRsA3i
         D5KUrPdV35vwjkKM38MKZ2DPvM4XHSRHwS5FkmIHlX+0fDS8wDPfwQ+13UQtseq01B7P
         lwmCBHM7zZEAn47iIW81/haqhFjUnlasf3DVOKLSqADXl5EHkALhF5EPl9wtFhAnwztf
         5Ed1tpqojmd/d3EVpb4C28Eth8Ik04Yqr8z6AtglqYcY46gXijqHUPTTmLdyp86Xo4bC
         UOsmqwQkJHbsa4vT2HQKUpLVdrnhWMlt60DWD/oyGzFmk4jCaIN9BmeByaFcX5YF1gE9
         orIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=0YRzczpvA5JVehtxn4jwdhb7qiamtAyORRZtMMKOcRc=;
        b=DrfqwZvo7LIsxqMG7SpEutwg0fdKfZqPJBnmzi1btEWmcnDaKt8bHY9Bs+vW0S4tIi
         0mJk+ordQj58e9/247/KjKIRvpSCJqwjBCZtW+5d0tp15rzYWC1msmemyA1tioF+yTrf
         19yC565xTysmFwRteOTWaLyXDe5BYuNzjHqpDRQ2WajyKj5WeUct2KA82phESKfVWVn9
         4p58WAy+XNm/Fwc0/cf6RsK1oQerrCyNxiuOxF+4Wh2qzRFvpCw+jaGaNNqIemzxOtJA
         9NHkDhGs2RRABd0rwZf4VcTCM2wqsILsE5Wj0afQQicOaC/MEacAOCUsXgqUgqe1IRKz
         I2+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gH3myMK4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0YRzczpvA5JVehtxn4jwdhb7qiamtAyORRZtMMKOcRc=;
        b=VtTZSYnBQCS02bETWf1lbDRL08OnnzH7nB4qv3yePlcdGZLIZzihPXPX1U0K+XIAN8
         REGoS+0q+R5TwEYEKPSVjfNNoFLElMvjmKcJrW/l6TdEbXOv9u/6jSOORmHJxSCQbWsI
         sM51XX7YyJ4ZvoD/XlYALL3v6MfgUkFx0e1RtX7rfJuiACNvB7bQ6Z3/5zZSxWOUigvl
         EqklqVmiBhiK0Z/dt65jL+cOr9AEjk8l/iHN8Dcy1JcCQusDs+HjQ1K71PHMuIZjv0or
         xO6vYXAQigchLJE/6roPodqeaG8vZFyF/+cfJRBXFY/tq4eJ219Cuqk2l413LgXJpHr2
         meHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0YRzczpvA5JVehtxn4jwdhb7qiamtAyORRZtMMKOcRc=;
        b=dqGKcqbM3HY8kQ0kGq8+bheyHYDGiOstgTlk4j+tQe8EyBJGib32m+Yxo/TK0JMyIN
         NRJAFFRcv6OnuBIlkLUPPQg3CCdZoyAm8AOnuDgITY5ourWV8epORIcIgn/axYlHckEV
         2p0OjpL1ccxL/xvPgXS3sO+6iXb0SBoHG4gzArNAJjFqjj2hT2XFkOYMf9K8ydfzG/8x
         NxPV//zMmeMeZHgoNFp7THfnQ4bA8VvnXoC08OZ8+6GJXGXrPc7WXJRnj2enMlIJUia/
         2wdGs7bCnAneG2RpxnedjWD7P4dy/Y92HFMxjsGr6XCFaIGBR2DH6o0qjn3XNoxi0Dkw
         lKyQ==
X-Gm-Message-State: AOAM530u1fKEEW4tUDHWMTNSoOuuGSOJlt1+Ag++gHlx1MNjsi+KcNLn
	MbqGaoSmq0FCkmd4uulLsyQ=
X-Google-Smtp-Source: ABdhPJw39yu9RTZMdWQwsVBlzlprzZdwdrmzsA02WpRUnSnQsOMYKaV853f1mruS/BjvmZ/DZ9zZTw==
X-Received: by 2002:ad4:4365:: with SMTP id u5mr960091qvt.109.1597961471302;
        Thu, 20 Aug 2020 15:11:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4ea4:: with SMTP id ed4ls927442qvb.11.gmail; Thu, 20 Aug
 2020 15:11:11 -0700 (PDT)
X-Received: by 2002:ad4:54b2:: with SMTP id r18mr1001548qvy.92.1597961470994;
        Thu, 20 Aug 2020 15:11:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597961470; cv=none;
        d=google.com; s=arc-20160816;
        b=U7Ia7xeAcygqWaAXXxjWG21PVgKoOCs2yrcJfWKZXzYQdIzhQvEKiLFsyc0aQoxnHJ
         Qxr9B8A4A7eCKJ+eUClzgLv9q4fst0DBMZX5sHSiSw09biNfW4dCyfGdPvlJJniO+nDo
         QhGL17oWrxRAzOVC/z2Ly1zfyA4OWnQ6GgRbK1KeDokAkDi88VH14kM18WO+r5R7Q/Bo
         YpmhZP7Foe+FpwQzK0FPf7qrckKqARZ5r3JDuq4gfe7pAxH4jZaJnds62LismptaLh5o
         uTyUpfd0RYI9LNf7v4kSj2R9oshEMI9LHl22WXwnt60bx1AYs/xLQa3uOfUid9bOimPE
         /sMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=cIGcfupA3nDizUSh7LhCEeGX5MBdAVEkt9kUdCGV/A4=;
        b=BleV4AvqlBcTVc8juz/CPBf8rOs7ut4wFrU34UFr3Gff+sIv2TPff6irFxTIm2yZ1p
         a3JdyWUIpv9MSUFEy/Qpzc8VpZ3iLzyQvt6IIFadqd+1ulN30UHpXiQeg6aWr7aPkXch
         8H2FsrCcBZ0z12Ggs4F0bWx6wgsEcXCeuAN7ZTAUIdjffmrsgDo5Lycnb37f4aTjFF8m
         g+S8N6KMgjR0sYs6qxcQK6pJAcboOwCeyZ/Ki+1IAOAM/AjegHbR6KL5uwyvHzqMsPCT
         gtIrpYsyvqgT3qRkGZv+O3M7PhXEAhWEI0KvDqMxO5xcL9M3vevXdYawd7xjoONotyaH
         JCVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gH3myMK4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id z19si3229qkz.2.2020.08.20.15.11.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 15:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id m34so4648pgl.11
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 15:11:10 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr117418pgh.263.1597961469946;
 Thu, 20 Aug 2020 15:11:09 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Aug 2020 15:10:58 -0700
Message-ID: <CAKwvOdnFgshx1OdgFDNppQZSMo46OHJJdBS=ftw8-o-iZFWoPQ@mail.gmail.com>
Subject: fallthrough conversions
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gH3myMK4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

just spotted on lore:
https://lore.kernel.org/lkml/20200820220210.GA14894@embeddedor/T/#u

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnFgshx1OdgFDNppQZSMo46OHJJdBS%3Dftw8-o-iZFWoPQ%40mail.gmail.com.
