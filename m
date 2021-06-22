Return-Path: <clang-built-linux+bncBDYJPJO25UGBB54XZCDAMGQEHFEJNLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7E63B0A0D
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 18:12:39 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id q7-20020aa7cc070000b029038f59dab1c5sf9816914edt.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 09:12:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624378359; cv=pass;
        d=google.com; s=arc-20160816;
        b=uMpd86suT4Px4imYJ2NWD0Ag7Z8/i9B7soZplEQLK0JBVOJs8gVUdyO3X2ezdIEJ6n
         ngJu0XE8ogThvrUUIc+TyYELyXh3KwWLG3op9kdAe4D9Xngw15dzcNinF6FVWzJdbq03
         RLB41Lphh8pV68DUnGSa4oYedzvEYMc2g+O+wLiKIVGtUVjsWUAVwu3y9Tc5eOPFvMkp
         uesTWhe8WHh/JzYyaOFi37V5YdguN2e345Z9FHCwcThJP2FyzzvuVpDQkfJN6YeL+ivi
         BWsX9D7/SPUSFsbk3hv6UZw7W927xHBWwtZEyUCzHqlR0wfJsmMYcptrQ0CQT21lBgn7
         +oIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=YnMD/iWBLAUQnL/9tQBnypG2wH3c1jFJVt7cAp+4Z0I=;
        b=nZYK4AjnRtfxa5E1W/kBLTHEFJMIW3iDhC1gGvapG3BrwqwFVXjtYexsEZ54vjAm1W
         x2gcK8nQUZz4vcxNWjahQOJI+9mNvmh7y6wohiGhA9Mn5R+3Bb74lIqeE+pb1iziI9Xi
         V2I10nFIPymaz7O0/eIVzqmypCBb+v28WBrh0yq1C4dAXx78q+HrsaE6JsRQMbTZCgwt
         8UjrePsPydgGbY8BdWrXNWsoge+sqKE0jEM8zXcn3hGUbOKSlQxdVDlUXKYMQbT7lU1u
         h0htKIcBveZBOJmrPH0nCxuMKNftnkADiqNJfSyeNIwL8d0KdcXi/n6JmkIxIsW/rBm6
         p1GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HApj4Ji8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YnMD/iWBLAUQnL/9tQBnypG2wH3c1jFJVt7cAp+4Z0I=;
        b=g53FGHf96bGyrUca163dJCXLqPf7jKHJz6kY8M0zHRtl8WMnQUFumDTtYweBDUKQag
         WZBNdhm3JwtgY7TNrLR+mBYsFysPsy0gJtJZzJ2iOPqQihsvtqlxMa6sO1kOyndbKsm6
         cdmtGgyTGMj8Nymyfbdh4OUd/Ffa+jct/uAfP3cLdzbVPykVh2UPY+/iAJly9il4uupV
         NJeHCAib6nGm0A7jeFuYhYYr4f3GJ/sU7UQSwZCr/Wk1SEgMI85GygAUXoH7vLkVNh6W
         DldfKumpn9CnL7undU3uO3NiBbF41ZScdwUIh+E3pLtqAdWfKnh9POzBvoWUWVbxbQ5m
         zWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YnMD/iWBLAUQnL/9tQBnypG2wH3c1jFJVt7cAp+4Z0I=;
        b=TvgsfEjHk8s2TN8xeWJ3/BAfbhkJ4qsiurdQqWqtS4D7WCWbxWyHzJburIDrGqz2J2
         laaLSQlELzQ56xiHCy/sm9IdXjyDdlzWMrVns8WANbV88RXOY9tLw5w7NKFd+pGbaR5t
         7VrS5csB1G3BvKuk4zAEL4Xr8fm7ybpD/wUdIHp9OKHb3z/PSc6xnaao122Q/Lcr/UYM
         ZOLyUP5nLyFIfMIBrv30iy7/sfTsXRxqsBLp9D3dwrCUiGQMJ9lSQaNtalKmtxUVDcan
         LlgZHYYNLxixY54ubC6wj2gLvs6m4ImJ/sgWoYQvxhFCw0yMZRAQit5TB8qM2HH2aweo
         vX2Q==
X-Gm-Message-State: AOAM531GJPKuGLkeuUI/SPLBXLegbC19dJyVbt2QJulO+4txHL0UmayO
	SPGGcO3J9cN54tDfMG5TzRk=
X-Google-Smtp-Source: ABdhPJx1EW8c68gZs0LOdagKBTshT3UNOzsybIQYitzQQjk6R+8/O4brfNxPx7w1JNtTFnxaGX/8MQ==
X-Received: by 2002:a17:907:2648:: with SMTP id ar8mr4792133ejc.77.1624378359328;
        Tue, 22 Jun 2021 09:12:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:4404:: with SMTP id y4ls6066153eda.1.gmail; Tue, 22
 Jun 2021 09:12:38 -0700 (PDT)
X-Received: by 2002:a05:6402:111a:: with SMTP id u26mr5979643edv.260.1624378358510;
        Tue, 22 Jun 2021 09:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624378358; cv=none;
        d=google.com; s=arc-20160816;
        b=RJ9AdoNNT9Qd3gedjag4I+MnwhYfH6vgbbri/RO7qBcGeOB4XC3eAzfsx/o4QMkR6P
         iRR1cjAjIzYKxp7tD+N3zXc1FmKxYIID5F7wAfgfhUaGcv812a/C0BeWgEvW47xUoKug
         rXrvk4gnDISNtKbELAqOmjn+O3NCgG6un41E2vlOwEZkphQDaQ7ere9+qTk9wfcqijwE
         +/h+Poo87paWZb6r1SEzj/hzbxGVj1Zlho5YMI3DMeh7wYYLcrTKfSbGKGjtv40tXj6L
         NYGDDFWhZaHPNVO6HbrwfwFOxBDBO+w0PMlFwL/7l81/TWNKRTV+1rA5cD1s5aq9KqPB
         4KZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=yNSkM++C7YT0g4K+kKcf/3N7cU+/TersqahCsdLii38=;
        b=N4y/ERBEtMFts9FpNQ7tsNahT2IjAdtd8VQg2cTcV8fiUeRgi2fgypc8XznwdF+flm
         WM1Hk1I5LTGPijC6dvFnW9Jd4T6mOFC5OjpK6wajx9hgf4jQd45ctlnVZZf2CSzneaYf
         aNwIFw/2eJp5Goco7ChY+/Z7S3HNiC+hzx4w89menh8DGuRGQUVSiz6nGZUb7Ya5gTlI
         kAWYN0idrmSoXmn3N4fWLeHcl1rT3dLICQ1e87yz4vz3szIA409S70GukQzdD2aBxtZQ
         rmX8CaJopEn+wyrCnqx6b+4x6bb1raUyyU+tdeTcAlU2/vzbzMbE67+9TZ0VqdAsSTpR
         WNAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HApj4Ji8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id o12si88850edc.0.2021.06.22.09.12.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 09:12:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id i1so9844256lfe.6
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 09:12:38 -0700 (PDT)
X-Received: by 2002:a05:6512:3e24:: with SMTP id i36mr3303537lfv.368.1624378357973;
 Tue, 22 Jun 2021 09:12:37 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Jun 2021 09:12:27 -0700
Message-ID: <CAKwvOd=hysH+Ss4U6vx2k2DB2Y6R7YMYmNpiPPRtDTgaFQ0WCw@mail.gmail.com>
Subject: Toolchains and Kernel Microconference Accepted into 2021 Linux
 Plumbers Conference
To: "Jose E. Marchesi" <jose.marchesi@oracle.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, kernel-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HApj4Ji8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

https://www.linuxplumbersconf.org/blog/2021/index.php/2021/06/21/toolchains-and-kernel-microconference-accepted-into-2021-linux-plumbers-conference/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DhysH%2BSs4U6vx2k2DB2Y6R7YMYmNpiPPRtDTgaFQ0WCw%40mail.gmail.com.
