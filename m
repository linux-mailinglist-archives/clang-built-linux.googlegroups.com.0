Return-Path: <clang-built-linux+bncBC4PT55IVIBRBM5ZUOKAMGQESY674OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABED52FC66
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 May 2022 14:36:04 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id r7-20020acac107000000b0032b186c641bsf668837oif.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 May 2022 05:36:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1653136563; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ze7KZsp2Vj0ZrucMoxeukj8VhwQOgPEVH+mYIrdT2Yte8VPeTkWs7iNNNME6Aheh0y
         rlwAhfogGcXojfKBSVQxi7EqhcljbUYhXTqJLjAqBLTjZvg88XGAXzJb1wWZboe1N1Xp
         aqd13xPTvgIab2goRsKRrCPBetpYmymZbY7DzUA+KzhqsZVyuYTokXLZ/yyzjX/VaVzC
         +U2xBC+cOyDoiKyZwC0+xUJqyK3zD2z7zmM1yqJsR/JKkt78IA9ibCEnyr27OUydedcN
         2OwE374Iq/XlccbkjhD7sqdI0FmNkR+2oRFt+TnD9pwQ6u1GaqD/8vignBVxusJAX9Lg
         jsgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=GnE0w0DaznaW5iZjtYdnuopAt3HdEBwolGyBGE3XUGY=;
        b=Ae40E93Tcc4oB3kcaCHaqzAqcy79vUNbSm8xb35/CfziV/pv9b0K2rZLLmz2rKKLLF
         7xenKXODFUaCe1nsKBTMOk9tFIOhQIPo9gX1FK7ZKY2nFVSBYNS2+Vjft8F68MnIQbXw
         sWrb+7aiEjdnH8HX7HeGdn8ggd3HtdsIn0xsDcHlY9g6ppA5t5Z8ntEr2gFE2gegiZzh
         z0AQ3hPilwZgX3YrpR0McHQ049xsZlFiRTS2kta6iRPnEeFr3KDLwsuLp9JxNEV3dmET
         CqiBTUu2xm2QqzNTfcK/akE4afM+Tk+x+3uf3zUyFHye1OZa23a8DEu7w51ir7hRBszL
         djsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fXrzeXb4;
       spf=pass (google.com: domain of leejasonhayesorr@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=leejasonhayesorr@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GnE0w0DaznaW5iZjtYdnuopAt3HdEBwolGyBGE3XUGY=;
        b=uAPqH4+xtNVsfidxbz4J0Ta5dNd+B4WhcOrZHAXMvJKTccaTgHuINu3yEfM/YzfdhG
         o+wWq9/0WhpNN6XZgx1s12Ic9uO7/VxZDkmR7ROqkxabyPFTUz/2zouFJusjHFJbsXn1
         J2fdb7YvSEBI0N6cmEaLGPbZNy6JmWQtJiz6Vpp8hXtQToLVzfWMSAYkYnYnOeGnbS/P
         JVvW5SWVuQxZA+9TcjgMUSTMvTS5gA+PXzZ6pW9cuBmAYfDkqK8F3RABJMe02jPcxw4N
         iGq4WDvoUqBfBRRyQ2Fb+p9mWk2/1IA7lhrXXcM6y0cDRJKfhCZcfY1PZEzpKXA8/G9N
         FqSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GnE0w0DaznaW5iZjtYdnuopAt3HdEBwolGyBGE3XUGY=;
        b=OLmVwbvA4QMLgeeTljnPOYvFR+UDsI73VTn1p7pAuphtxi38uemu1BOKu70aZLF1Qn
         zLDCL6Av2dm5aYEYmsdQMRvsoOj6wNuOFD+5Vobw3sA2NSL0okD5NQGEG9SUlXR63nsW
         XPoodEHMiSDoZZbOkPYq9EExEzmk8LvZPwYt1+FQKoGjdIEw3b9NKSra2OkZQuIuZI46
         gquAYj0tv0UepBP4Vk1GN4VAI0IrrhU3AebgZaNw97mJ4d2aM7t6FtvEva4o/NTcpsza
         p2oTfW0x8nvYKG+UpFwsiUw8c7ua6TWWwRRB2pJcpKhvcCmmEMbDM7N96VqWE2/wRAr9
         9hdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GnE0w0DaznaW5iZjtYdnuopAt3HdEBwolGyBGE3XUGY=;
        b=A2CkDbJiKzBgtKsKr7Pgbx0V0HJT9YG1x89pcp1AhUMtzNmIZKzdqhHcjTfkYptH0Z
         0UapDvBdpPYPK21aiOdagE9fo1JYl0brLhQHi6XOvn+ouX9a1oWONw3dVOlvgI0rgrrj
         flmKkGgNDn6kVlC4rp77XW41R+Bgj8gIkzrstnzpx6sf3LRn20onGW+gp8yaCPtNVunz
         4AINHvuXnVEPAlO9AHLjDdcZBOdJtVBuNMIYC87iIYvTLg+hq3wK0m8ALy/S1YBYj2yk
         T7Ic5abYHVugLZ7s4j4Crf+t1nPUjqSI5Il+/I2mItQCPzQ+V2QCHLcd8ylQrrmriEkD
         S9Ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530D8Gs1ka3T+TYyPP1coyKpWU8B9C70ctQPhboXQE1B+P8rVowy
	t0A+YVjlc4QpGypGNloIfEk=
X-Google-Smtp-Source: ABdhPJycfw16zAUNSwPHHJ4tnf2/HU4/FGwIRRwSfcUiU3Slzbec/7A0vEpIL5/Q5ZWzAEJVGb11hA==
X-Received: by 2002:a05:6808:1893:b0:32b:1b16:5d01 with SMTP id bi19-20020a056808189300b0032b1b165d01mr704901oib.164.1653136563311;
        Sat, 21 May 2022 05:36:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3b83:0:b0:32b:17fa:a7d6 with SMTP id i125-20020aca3b83000000b0032b17faa7d6ls393186oia.1.gmail;
 Sat, 21 May 2022 05:36:03 -0700 (PDT)
X-Received: by 2002:aca:5b45:0:b0:2fa:7d3b:6997 with SMTP id p66-20020aca5b45000000b002fa7d3b6997mr7635056oib.258.1653136562931;
        Sat, 21 May 2022 05:36:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1653136562; cv=none;
        d=google.com; s=arc-20160816;
        b=oJfssGmmstS4WOvZE8FJ9JVE+oPbxiDCE0WQPf1uufzFUxxMfThUpkHtSPfYHB0Zlu
         QgWPzwm1g3XPYLwcyw5VD2nBde7bSXlLY2bBe3GBVa83Ku9ket3bKm17OWdNB7fVDbPs
         PKXsZwoIhe1iwhoLkJA+LiHkrHSIqcyRfPBfSiZr400VxRSoJQXWaaGGRxkG/FQ1mVmb
         gJlYbAAGijdXk64V0spRcUfoAHfxvWQ+ZRIRCep3BwzuOL+5gmlGiD4om2XOLJw2Gzng
         mrdaCBMZk3gJfIJoMFcowqQzk30+P6V1XgQWrTGlXMNEq14b0LXKZ2z2rCA+y+f2jQRj
         mhug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=AA/qVOuxUvUfbIRUf5urYXxGhdOyn92LKcoLkCvHGUg=;
        b=ThoNuIsX8yJJyNAxFig7ERddUCtJet+0vTN8GseJaXzQE3O/tzcPDp6YgpFQ1FNYus
         SrrLWFQEvVha8EZBv6E6yp+4dmbPzdjqv4XlKo6GvamG7qvA1fjgYJ9eN2Y3STJ+n78p
         ZxDZcE8fhzlO6Pp8qK3C7GeO6X6dJJH2WrbKo/FgzMkaZiHqtyX5ejYgqCK9AKmjXqDE
         phcIFf3mpvi87TByZQXnhwLpSIV5/axjs32C7r5aha7Z6f+EkHK2MFdj0nqvs8nnR5Mk
         g5hXcy0T+dui/FHYqXl/chX978FbPzwoVntD1EiEfvRtcp31SjWApRwYhKhiUkyfe3k2
         2Qew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fXrzeXb4;
       spf=pass (google.com: domain of leejasonhayesorr@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=leejasonhayesorr@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id y4-20020a4a6504000000b0035e8a81e5fcsi727822ooc.2.2022.05.21.05.36.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 05:36:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of leejasonhayesorr@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Received: by mail-ot1-x332.google.com with SMTP id s23-20020a9d7597000000b0060ae566f9a1so4506116otk.1
        for <clang-built-linux@googlegroups.com>; Sat, 21 May 2022 05:36:02 -0700 (PDT)
X-Received: by 2002:a05:6830:10da:b0:60b:904:9e39 with SMTP id
 z26-20020a05683010da00b0060b09049e39mr279250oto.285.1653136562768; Sat, 21
 May 2022 05:36:02 -0700 (PDT)
MIME-Version: 1.0
From: Richard lee Middton <leejasonhayesorr@gmail.com>
Date: Sat, 21 May 2022 13:35:50 +0100
Message-ID: <CAPKvC+CdMC1ZUG3CBaA_6aW8ZWHTFuWZb5qYhHEQbbubO04tGw@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: miguel.ojeda.sandonis@gmail.com
Cc: alex.gaynor@gmail.com, christian.brauner@ubuntu.com, 
	clang-built-linux@googlegroups.com, geofft@ldpreload.com, 
	gregkh@linuxfoundation.org, jbaublitz@redhat.com, josh@joshtriplett.org, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, masahiroy@kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, pavel@ucw.cz, rostedt@goodmis.org, 
	torvalds@linux-foundation.org
Content-Type: multipart/alternative; boundary="00000000000096cde405df84d9d5"
X-Original-Sender: leejasonhayesorr@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=fXrzeXb4;       spf=pass
 (google.com: domain of leejasonhayesorr@gmail.com designates
 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=leejasonhayesorr@gmail.com;
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

--00000000000096cde405df84d9d5
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPKvC%2BCdMC1ZUG3CBaA_6aW8ZWHTFuWZb5qYhHEQbbubO04tGw%40mail.gmail.com.

--00000000000096cde405df84d9d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAPKvC%2BCdMC1ZUG3CBaA_6aW8ZWHTFuWZb5qYhHEQbbu=
bO04tGw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAPKvC%2BCdMC1ZUG3CBaA_6aW8ZWHTFu=
WZb5qYhHEQbbubO04tGw%40mail.gmail.com</a>.<br />

--00000000000096cde405df84d9d5--
