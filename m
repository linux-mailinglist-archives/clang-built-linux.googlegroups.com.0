Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBX4A2CJQMGQEP3HN4HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D69EC51C56A
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 18:50:40 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id q6-20020a056e0215c600b002c2c4091914sf2717271ilu.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 09:50:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651769439; cv=pass;
        d=google.com; s=arc-20160816;
        b=GpBmcYgEWIfLdmpVzt3UVcGrPW4cW8vYEoFJYGDlAzpxGQkMXcuIkJjKeLt/WfcG6e
         cvJe1OtJXKVXTTwlPanUzlXrgIWfPbdcMKz2L6VY2F7tNl8sdP5OkOxt/fbDiEviTraT
         MgJBQqvupjqO1pP9+wyI/485lhNW1/HkIYHKL1l2NonrnVz5kmnLapM8Xm7VyeklTUC9
         Af3oXHGz2dZPCDDDU+yptdkTLlKnyfFdoDzTGk+ojo8gjADMmT2ZqEXzdtpPJXGWhtG7
         /Im+vzSXY+HaqRURPZeeu2hXic44Q77zh0wY7DCDYb9p0GJc2Kj6orcBphhiTfqXv/se
         CbcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=FYD9rh8tGf1l0PS5mThJw2MhftzeZ3A2QUrfL7kT82o=;
        b=jHXJJJ9ZYRNhfXhyNNLsAUUtRLBXjOqUJC/CrpflZLzgc3AhUK3naS4g/3gkc2KElz
         feljacmyHjNJcbGp1fZLGiEQLaz23BDtBDO3+MV1hBzq2mX3fkpamNBAAliJp9qFFG/q
         shNXmZyDLAAIvQqx7tUx5//t5KHC/U77tuTpZd/1e9MsQMwteRm1jfDN4I27QnoboTQj
         H+0sBaIlEngr9Ek+/3gHesKhvDGsS/Jn8uep029Rtg8AEZ3y5ZE4L26uuDDxg6r6pt1d
         ygNq4BGktnL2GAk5Wlp+4izPbRnR/74ym7EWnMrYiQ7ZcXO7BUrzfTjGGu8mDGHlFqK3
         se7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rHlaH4vw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FYD9rh8tGf1l0PS5mThJw2MhftzeZ3A2QUrfL7kT82o=;
        b=tR+U5Xg4ofEf1YOkNjLwJHjmWOztCL/Q0z9oz30+1xwVLk7+oztCme6+mFivZ/s+/2
         4exfpkIUOeacS2NiN5outaU6VJJjTVxRn9WZLpcGbDs/6IDfSEX2jdLemwc/CbxuwX0I
         y+WW+gkV9Z4Si5fHI4CxgFpxyGrjDc1fCHWzdYLmE2TGEmvHi4cd3XyzKUGJDJY+V6EV
         4uhNXQVOFJi1DpyFdzIJ8wOUNgC9SQiBvQK/vnjGYlsjPF185Mf1lOOOKil35qDrrp9P
         wsXYhPVqEsuRaKHHDEa9JbFCY4OFUhgJZGmjLJ/xX36Jw7qS12hR9j0XCxcE+k+G0Iu3
         Lcwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYD9rh8tGf1l0PS5mThJw2MhftzeZ3A2QUrfL7kT82o=;
        b=LtGWP9tH7XUlHsrtAVDJuHSOVRFM7aDL5qtlY98mRw7valUQ3wyCDHhWSzVnWULn8x
         DRPyBLjPOaek3lYwP7YK0oeiLbmPv3cvwMQ8nf+5MJ0I4edjM1IjElOEjICDC9Kg9IgK
         Y654eUIZL++e5WQK9yOAdS/rK4q+31bF5q5ucuMZa+rd80Wruoii/IoKy4l24SQjka+t
         d+BTWPJuStfRYQ+rB77zGQI02Eg2NmL7gYy8PQZf+XAb2a1FZgAY5eKO1vpLHuE/24Qz
         y4GDySLSSi8R7mYlsax8qZs3h93wnlUfI7yqijlnu5pFnDWjPljzW6Q/Ya3XV0fXFCpY
         jjDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533R4CJcjaundkUf30RLjO13VWk43x4GPHKSGE6vwM9VblN1Ux3c
	ClDuFWsQMn1ENDqCf3AogzI=
X-Google-Smtp-Source: ABdhPJxGtbvRFHqQnHsk4Iv1T9Xb+kgdR5FTXyBoLlPi3TUoVB/xF8ckxSHqPPql+/J4rlkqLLvTaA==
X-Received: by 2002:a5d:9342:0:b0:654:9336:81d7 with SMTP id i2-20020a5d9342000000b00654933681d7mr10551211ioo.136.1651769439582;
        Thu, 05 May 2022 09:50:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1654:b0:65a:b083:a093 with SMTP id
 y20-20020a056602165400b0065ab083a093ls238782iow.2.gmail; Thu, 05 May 2022
 09:50:39 -0700 (PDT)
X-Received: by 2002:a05:6602:1683:b0:64f:ba36:d3cf with SMTP id s3-20020a056602168300b0064fba36d3cfmr10654044iow.144.1651769439204;
        Thu, 05 May 2022 09:50:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651769439; cv=none;
        d=google.com; s=arc-20160816;
        b=ztWWwbgHDUMavMuX1SLqmX8uFtJd4x9Bpt6ifiBZmGUBPF0LIMns3d6bDMCcrvrLaR
         qGvDgtJTG6/nYnGuAHraowV7AaJbRXY8C3kWyZQvJgFqd3P3DE1JCfplkU/tiiurooLG
         BoKk9mzbeanfeCPmUVSKywYXTFMovLrAVBUL2Wm+35kZWHzKp/r8UoNRxe+U1e7hJYlF
         LyhNMHBN1Vr1lC8JmakH3pUEQ+b8HMuoCQ5L3FDQ3/oeIhgjyy4ix5chnrshjFGD7klA
         X5knRYn8uUimWlW4253m0y5IWQLA1WaT6oNc6FrcTZEvrpZO/dKYwGagofYuHupsr6td
         GY2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ygzkm43GrcDzhqnHIxLfBnu2vDnA92BUs+zoxtrNQp8=;
        b=wpwYLIhszoQI183QBOgIxd5F0foBCjntpyfRDBGAsnskye9OyucAR+HBYOkgiEfV2o
         Ec5hdP92EBBXR7uyBWxBLhu7a+g4q8qGMr62wWNzyJ8pKrIbIxxnZBbKvf+Lz+FB/VCx
         6OBX98OMIisjUY3bPQJ6cZt+ev1UM4rJIVTp7xmBwRnpn44wXZIp2rhEc+OXOqB2d4La
         rrBf/2WmQMiCKYcqKjr+KqdcxSN1Hev2464u3TqV2ORN7JsWtS5vgfUHmyaWv4T0ada5
         e01J2JUO0OHlyXRl7bVd+laZOAxhePkhwXw0A8KjcHhm7h/tOFj2XuFdMNJmiCy8JyHg
         MxEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rHlaH4vw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id 9-20020a056e0216c900b002cab40e19e5si176782ilx.3.2022.05.05.09.50.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 09:50:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 245Go9pP006002
	for <clang-built-linux@googlegroups.com>; Fri, 6 May 2022 01:50:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 245Go9pP006002
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id cx11-20020a17090afd8b00b001d9fe5965b3so8516102pjb.3
        for <clang-built-linux@googlegroups.com>; Thu, 05 May 2022 09:50:09 -0700 (PDT)
X-Received: by 2002:a17:902:7891:b0:15e:cae9:7620 with SMTP id
 q17-20020a170902789100b0015ecae97620mr8573800pll.136.1651769408445; Thu, 05
 May 2022 09:50:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220505072244.1155033-1-masahiroy@kernel.org>
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 May 2022 01:49:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNATnCOKcbFXDY2Qik=6AJ31fQLKO+NW6fD-xY-muV5UQ-A@mail.gmail.com>
Message-ID: <CAK7LNATnCOKcbFXDY2Qik=6AJ31fQLKO+NW6fD-xY-muV5UQ-A@mail.gmail.com>
Subject: Re: [PATCH v3 00/15] kbuild: yet another series of cleanups (modpost,
 LTO, MODULE_REL_CRCS)
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        linux-um@lists.infradead.org, linux-s390 <linux-s390@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=rHlaH4vw;       spf=softfail
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

On Thu, May 5, 2022 at 4:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
>
> This is the third batch of cleanups in this development cycle.


This series is available at:
git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
lto-cleanup-v3








-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATnCOKcbFXDY2Qik%3D6AJ31fQLKO%2BNW6fD-xY-muV5UQ-A%40mail.gmail.com.
