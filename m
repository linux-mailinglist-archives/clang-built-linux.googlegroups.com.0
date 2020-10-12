Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBT6VR36AKGQEMA4XAVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E9128AB4C
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 03:01:05 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k17sf10983050pgb.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 18:01:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602464464; cv=pass;
        d=google.com; s=arc-20160816;
        b=bdtoS+frM1AWKZBm0jCKrSDOSZsw1NidQmlVoiSqnz4ysoo2ShCd+G+kP5vCOW8ByO
         3VTfPf2aUHEKzNn0JI7NhbGiu5fB6bHKI9KE40i5HbM7jRIZd50pxAfMfumiGaXqIKOw
         1FSJsC6HUWF91ZJYS6qWk7J0G3EdtuWOuxxlVCuOsk8UjK/oBo4vCiKwdPxontXXam+x
         ma/NkhWubpIC8tzhkTiN9thM/eyXE2+T7zzUi/6RTvLgI4qCxxlV18sNjULVtUZgEvSe
         yQbWqLc+hJfcNKN9FPR9BZD3KQbZWJLI29aF67AnI3D57Y1n/oT3Csc28FQsKwhYEkVu
         ykDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=Jg5WTAkm3lVJreT10Uzb3M1G+/KJcEBZ6/VXABsGacM=;
        b=e/XEQuBIsl8KzUe9j4Y8lxOtKoUgGrul7x28hVn9KYfY+ayfi5+ETCDdl+rNoJ7Jrd
         uzT/u3vHttS1Cr9BOrZ8wy4eAlsfDdji2XBGqc9oWVcQvNXJcBQ2jnpQD9cwKvRx+EfI
         0AB3XrSgsguLdgbHKe7FfFt8FhmOKzU+QFAcYT6NcI8Hca92MN/5oRI73XeRwWJirUjg
         sbq7JkC47xyIoeauUv+6AB4Qo2QEngWLEj8G2iXTHOcfElNrukpFvkSe8txE7J/8Npxy
         n2seLQJS7LCmNDvbLE+aPYdDbuent9ApjY2YuGeTS4uwK0pfaE+4W7/TZ6ee7iVvLHk3
         oZVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=209KxBvO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jg5WTAkm3lVJreT10Uzb3M1G+/KJcEBZ6/VXABsGacM=;
        b=r0zwirokZ08t9Vk0YLNMMgw95DOO5jsbTcG1AW8Ev6QFe2NOxKoZVUXqM4UDtrC2dZ
         4U6Jr04NXRQ08b7TjuWXm4q9Z6x9qjq0DVAAW2h5KevSdtHQPYLQHRUuO0I11YYIhbK8
         fJT1q+bNla0ih8SLM6RebzeV8i8hQzv7n4vSwdyCR9OZXgsV6XmVo7Ngasod6vsooyRY
         he6E4djGALzMZReKA/nF7gdlx+haMFlY24FvfH2pkUiNhwdWfIf16x1VpmWL4Gzy9Mz7
         zhz+PA1zkkxzFE8H9VCjgAGyxVEGDH5uuMQgauLVAbT9oElaG/BU9Ojz6EX50+gTmyWl
         2+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jg5WTAkm3lVJreT10Uzb3M1G+/KJcEBZ6/VXABsGacM=;
        b=mZ+lz2OgQ5NX7rYHH+5IsuyqZcDzir/mML3vbospwVFFcFl4xQfcsEOrCDNe2P8x0Q
         IKDpRi+b12qLHKy0GpBB+DE9rg/FzPAbxohYBRb9AyL2ez9RbaPzDQDqT4Vs7CCTSnBO
         rKqCqu0oYN2IDvHWo0IzDiFb3hxb3XJ1iewIGWjXana4V4sDvCxtviZX/0FDnx+dODwq
         Jsl3V5m8qfHvTegWDp/0yKFuSll3aN5Jc4F4ouCJLJCrpmA+hwcVwCIwrG0sF3+tjBVu
         vM74K739TnN3ExiNOB2XEBRJAprxubro1L11cXL4VIqU3ZDv+mXCxp5qC5YNf02sZKfn
         7zbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sCHEmvOeyXzMeITrpHTiRCmGFX6Rntv60MVxS46IFeyuix2Q8
	yzVCwpnvgmrmirqUuuxLNbI=
X-Google-Smtp-Source: ABdhPJxyPvyfh5Fcv33x/ymTFEp80eAG7ZTDW9q/vfrf6sXaZedbRzmXvXFDQpofPWuTLTNJbTzUzA==
X-Received: by 2002:a17:90a:f617:: with SMTP id bw23mr16687945pjb.95.1602464463604;
        Sun, 11 Oct 2020 18:01:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9045:: with SMTP id w5ls6793168plz.9.gmail; Sun, 11
 Oct 2020 18:01:03 -0700 (PDT)
X-Received: by 2002:a17:90b:19cc:: with SMTP id nm12mr6793650pjb.203.1602464463059;
        Sun, 11 Oct 2020 18:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602464463; cv=none;
        d=google.com; s=arc-20160816;
        b=HQl2wPGzpeyNkYxOTrbYHwrw6AR7Gk9hXzVNpRSRgt+sNMDoPqcmak/6kS630EeAsJ
         zbgfIAth8ovSj7/UWvtEENRPQvZB7mbT9MTy905fSvqftpi3+POvySV1nUjMJw9+MzAM
         bA9LC/taMPjcXhnA3j8JQ//MolY0G8TTGGD9ntHSvzeR6kZdftvd9UYdIdtgQeZRn8gh
         8yZ+rzliPE3ZKbqVWZHdAK+a80bmS6lWxcA6DwSf3+keNwuTHBji6PkTbLGaZDiXDBGi
         khMKvJbmCQTHTlNDi0VNZZBTKzlXLFUCgYhE5KppHJ04VIYlkcBzCSbzrU140tBv5iRT
         Czww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=o9Qs2wdvNnlhb5S1PCEmTwni8pcS98p2JBGMsac1Ols=;
        b=vWTJF18LJeRAxbxs9xG+L3gjuLutyGhw9O4jsiXujBzqJSghFqARq2zUoHyIzpwf8I
         L8RYktA/DN3fTyJc64AFwsXjO/71vNBBgpk0XlS70WzLd3l3n9LXuMTpQ4nKYjzZv5Ux
         +WrwKNNZv2GxyoI9ddp+xwEIQ2PYzHbb1PHfMds0vunR21LVkiZ1hTgphocoYsKhpmTJ
         JhKGKnRJN1Jy4sN1E5nxzFTs0L9kfTWddz6zh9McYMGdapRtBciaRm3A6z5nrKJr8JC9
         8HS3Ivwr3pO83B5Zf16QJcJ7dbHL7CVtkQ3OEYdP6q21lSQjo1ygYsaN4rKMNNTDG0eS
         3aPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=209KxBvO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id 19si967248pll.5.2020.10.11.18.01.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2020 18:01:03 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 09C10eoW028087
	for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 10:00:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 09C10eoW028087
X-Nifty-SrcIP: [209.85.215.178]
Received: by mail-pg1-f178.google.com with SMTP id h6so12679467pgk.4
        for <clang-built-linux@googlegroups.com>; Sun, 11 Oct 2020 18:00:40 -0700 (PDT)
X-Received: by 2002:a63:d242:: with SMTP id t2mr11790829pgi.47.1602464439492;
 Sun, 11 Oct 2020 18:00:39 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
In-Reply-To: <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 12 Oct 2020 10:00:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNARRchbhDNUT3paTVpOJYKR-D_+HLzjG-wsOOM+LO5p3sA@mail.gmail.com>
Message-ID: <CAK7LNARRchbhDNUT3paTVpOJYKR-D_+HLzjG-wsOOM+LO5p3sA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Nick Desaulniers <ndesaulniers@google.com>,
        netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Rohit Maheshwari <rohitm@chelsio.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=209KxBvO;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Oct 2, 2020 at 9:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> I do care about the tree as a whole, and I'm particularly interested in
> having -Wmissing-declarations/-Wmissing-prototypes enabled globally
> at some point in the future.
>
>         Arnd


BTW, if possible, please educate me about the difference
between -Wmissing-declarations and -Wmissing-prototypes.


The GCC manual says as follows:


-Wmissing-prototypes (C and Objective-C only)

Warn if a global function is defined without a previous prototype
declaration. This warning is issued even if the definition itself
provides a prototype. Use this option to detect global functions that
do not have a matching prototype declaration in a header file. This
option is not valid for C++ because all function declarations provide
prototypes and a non-matching declaration declares an overload rather
than conflict with an earlier declaration. Use -Wmissing-declarations
to detect missing declarations in C++.

-Wmissing-declarations

Warn if a global function is defined without a previous declaration.
Do so even if the definition itself provides a prototype. Use this
option to detect global functions that are not declared in header
files. In C, no warnings are issued for functions with previous
non-prototype declarations; use -Wmissing-prototypes to detect missing
prototypes. In C++, no warnings are issued for function templates, or
for inline functions, or for functions in anonymous namespaces.



The difference is still unclear to me...



For example, if I add -Wmissing-declarations, I get the following:


kernel/sched/core.c:2380:6: warning: no previous declaration for
=E2=80=98sched_set_stop_task=E2=80=99 [-Wmissing-declarations]
 2380 | void sched_set_stop_task(int cpu, struct task_struct *stop)
      |      ^~~~~~~~~~~~~~~~~~~



But, if I add both -Wmissing-declarations and -Wmissing-prototypes,
-Wmissing-declarations is superseded by -Wmissing-prototypes.



kernel/sched/core.c:2380:6: warning: no previous prototype for
=E2=80=98sched_set_stop_task=E2=80=99 [-Wmissing-prototypes]
 2380 | void sched_set_stop_task(int cpu, struct task_struct *stop)
      |      ^~~~~~~~~~~~~~~~~~~




Do we need to specify both in W=3D1 ?
If yes, what is the difference between them?


--
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNARRchbhDNUT3paTVpOJYKR-D_%2BHLzjG-wsOOM%2BLO5p3sA%4=
0mail.gmail.com.
