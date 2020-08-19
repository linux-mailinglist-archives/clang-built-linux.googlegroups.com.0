Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWFE634QKGQELGXJLMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6F524A812
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 22:58:01 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id t20sf2075oot.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 13:58:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597870680; cv=pass;
        d=google.com; s=arc-20160816;
        b=xdHM274IiOT/xZEYCQDxh31NwGAdtyZyhkKZDCcQcricpr1W9AqHTA738DkzlPmyZg
         XdIyLfbMVm7P3sXlhu0sDqwgbcKoHp7UDf7mKAi+LdP2GDN6/ymmh7bx3EyDdKG+Y+QS
         AkjgqypE9qFiTqlDjUrjwOcY3pIsrMnPov6ZMZQzpwHuH+04fyVXcMpi8n2fK6zEXgl3
         s8FaBaM6tdNL5isxqPUBdjAG/jrkgOKoIBo3lif/RwGGR8XTgwCpkK2ZLYuUDGV+k9FF
         iktoudrzivHSoo+KGRdhXQSkMnXnWhtYgSzLlecxOARpWpWBEU8VZK2oAZlKgkGH3zYl
         5jmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=oKoc1wJacTgAoqRxCMLG5GXRq8K6Khv6sNJDZ63fhQA=;
        b=xtkLQlNu7uOQAaxf3BfFPhFoQxWqGX7q5Eu3inVuHgTiLwcnYIpHrEACmopo6gKxB2
         kOci/ZSqmzA1GIZWEyHd2akUJzG+701/n5i7Xu+KF+/X62fltvuXLNMZYqg/EpPRxp4Z
         a2107vZ/OWvEr4dG+/gvTV9Z/0AUls9eCbAG9O1KdzciHur/aYUUgZNGAlkJNDtDDyun
         q8MwXi59ZLlF9SLCkcZ+0nGNJlOHqUQUzd51+HiybB+fWwQ8hpUqD19NMQUtb6otH3MC
         DBze31ad6nYh5xMJZJGFdC3h/+6krHPKR/i9kQCZ2K9zbMaSbGeWsCxwy75D8NG6/jhy
         7qIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CsmqIT2D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oKoc1wJacTgAoqRxCMLG5GXRq8K6Khv6sNJDZ63fhQA=;
        b=lTMINABVMwSRIN0GsCTJOkBpaE3ah5p3pwyfQspLBCEuvJCO6EKa5KfoBV/M6vjiiZ
         GOEod5GmuNoJh/J3PSTfXlf6JWSnEuiSxjnLEbrDfV9E7+iJVKseV7+eNZPseaKPMMao
         aCv1RimNeqtpphCMe0C7sL1BYouQcI/hFRTKn5evPQPD4Y+oS5myepU6yCmif7QJn5o1
         GAlR+F1PPBadKxWXe+cIco4J9kLhBl53OFzV2LxZxTQjaA9Ui1JVfr+U3a8akfW6T94O
         +niMpFiihauUrYH0nYaUjsqfjcBYZwaT3CLMiz0IWGv0uY2Q08jyMrX97q0IDizWDuQZ
         YYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oKoc1wJacTgAoqRxCMLG5GXRq8K6Khv6sNJDZ63fhQA=;
        b=U9DgZY4y4juTkxIi8QkJpdD4P/sxwMsjWzBbxPMSTGMYjBvhSu9KBNfvnq4cvUFZ92
         TlM7Jnj6j51jUVd/KQ0aQZ5QGo0XqferB18e5iidT4sEATjFqrtEfeS2HI+FIzTw49ZM
         EciujK0be3aMJfc79lXX8coNtI3fR5XxfR/4cALfQUMjLoED2BKywdIa5emGQ7GCorc9
         lf2xPBSgFeVLmv03NFyf/kWQh4wxsxbQaQt0YxaujdYunUUgetS3cT/65ksBbmFg84z+
         LZ3tHz+l2I/iKapWPx8pqOMhswwaBSmnxGGxLbZtVK9x5NYdqS2wan6ZVQ4XoQr0qV1Z
         vZPA==
X-Gm-Message-State: AOAM530ixOOlKXAVI9Gn4pbtCkny3SNp7/eJarEpgbjwFx+dLY1WhAvh
	dH3IkM7IYO2t02Dr7Ldrc8k=
X-Google-Smtp-Source: ABdhPJyjTmdCDnpm820+RSPKN0P/Ct9FvevJNNSvrnhKX8NpE7yvcRjqR5sc7hh/+0G7HZ/CAnQYKw==
X-Received: by 2002:aca:db0b:: with SMTP id s11mr22868oig.161.1597870680307;
        Wed, 19 Aug 2020 13:58:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a13:: with SMTP id g19ls17830otn.6.gmail; Wed, 19 Aug
 2020 13:58:00 -0700 (PDT)
X-Received: by 2002:a05:6830:1305:: with SMTP id p5mr20443738otq.135.1597870680027;
        Wed, 19 Aug 2020 13:58:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597870680; cv=none;
        d=google.com; s=arc-20160816;
        b=CH67s6s1MrKPeh6ptnUh41MDrwKaZ4wLKkQMVgAMfSq/o985NQMHcTbXZWVMqdseeh
         CBzLVkwxCEjGjnBJgWnxjz9W4ebT1yq+0P5ooK4ziTcBqproX6Z3/txH/z4ckWxEVVXh
         RhhMW6CGgqSzxEYRve45r+g7TIGpDpC34XeJGLb9663QGRLoYMgG6OzXNrJsEpXvb96C
         ijVuZfX7IDL+wu/L9csnQjON5B/i2vz7/RGYdW2SiKl6av8Vps72dt6yjjd1UiiaGDO/
         baZy75B6vpae2vqozBmU/d4Zx5viCgUcQKEc2XT5x+kzP+rA733jwS3F4z5+gCeLsPJF
         wWHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=ZdzMqFT5yDXtp9lFesZCUUFfIIzOhx5u6IxbQZHlS4s=;
        b=BhwqGIneJvk9UpbGRuJg8jp9yyOlMNbp6ko49q35TVP60cOhSFMPTV+K3SNMfVcBmf
         dnUhKXOBLza6b+BN1pBtPgaj/kWUuxRH36r0/GlDCt5TGmezZSvuCoPgNEQ7FxGLekX5
         R7Z3PYTsJ6L9c0QnrOncUv2VfP9gYoL1FFz6E95JbjiBYmdtb6DR/1P26a7NooSql37F
         FyX0KPA1iHodR2iGC5U05teitzoW+rAKeoZWZ/zSSlKS/ug/tSn/xDCyyTlDDDfrumFV
         k9metmHJHHndzG11NXCpv8hnf75hseNh+w5SR/n0Yms7xTr+oaCyMCLhxDShl3onilYf
         7Q8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CsmqIT2D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id c199si1755oob.1.2020.08.19.13.58.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 13:58:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id d4so1672179pjx.5
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 13:57:59 -0700 (PDT)
X-Received: by 2002:a17:90b:4a42:: with SMTP id lb2mr2650113pjb.25.1597870678907;
 Wed, 19 Aug 2020 13:57:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200819164749.27554a1c@oasis.local.home>
In-Reply-To: <20200819164749.27554a1c@oasis.local.home>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Aug 2020 13:57:47 -0700
Message-ID: <CAKwvOdmsx-iyakTsrmH_d4Ed07ja1hM+r3Xj-9wz8_TvmMEzYw@mail.gmail.com>
Subject: Fwd: Final call for registration requests!
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CsmqIT2D;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036
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

We're out of free tickets, too.

---------- Forwarded message ---------
From: Steven Rostedt <rostedt@goodmis.org>
Date: Wed, Aug 19, 2020 at 1:47 PM
Subject: Final call for registration requests!
To: lpc-session-leads@lists.linuxplumbersconf.org
<lpc-session-leads@lists.linuxplumbersconf.org>


OK folks.

We are sold out, and are about to shut the doors on registration. If
you have any more free passes left for your track or microconference,
you have one more hour to get them in before we lock the doors.

You may still have topics submitted for your microconference, but only
accept those from people that are already registered (you can ask us if
they are before you accept). Because, in one hour, we will not be
accepting any more registrations.

-- Steve
_______________________________________________
Lpc-session-leads mailing list
Lpc-session-leads@lists.linuxplumbersconf.org
http://lists.linuxplumbersconf.org/mailman/listinfo/lpc-session-leads


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmsx-iyakTsrmH_d4Ed07ja1hM%2Br3Xj-9wz8_TvmMEzYw%40mail.gmail.com.
