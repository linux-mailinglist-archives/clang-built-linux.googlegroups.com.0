Return-Path: <clang-built-linux+bncBDB63H54RYOBBEN7732QKGQEFUEYB3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDB21D5F90
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 10:08:50 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id u24sf2307481ejg.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 01:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589616530; cv=pass;
        d=google.com; s=arc-20160816;
        b=VzYytwm68ZRuOZ9e1VvP50o7+spnhH6TkGEtaP24uQlb3vBdcU6owkx4XsyD9mrXhT
         i8+oT5+uVBCId3Cl4V1LNc7DXPVqXNwt213GWM6kN8PUCA5IJkVIk935pt2eYGCCGdgB
         hDCAW9QhqBrb9ibgSwH34xvRGNlJ76HyPAalIPgps514OF/hOFaKA/mKTx5be4JP9lTK
         ffl1uyXDjE4TN6i/tzo52WlJmtt3fj4aWfcEs97FqRk/hs+COE5Zp/d1A5GzPsnLEIE7
         5nXrFm9I2KCwoChwgEcFfevyEMXac1tcM57G6dtAfkuT+wa7W7/vK1ILyGe60OdgrIif
         YbUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:mime-version
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=VDRl9rDiO/BTt/CXbdE+uFu0+b73A02I2SW8UI/I0s0=;
        b=rGcoTVRjDOjwDMlzf1kQVmnudR1D18FiknX1aXhsaIM/tqn7YBJbxRUvnvruJrceYz
         ruZISMBGKilkAD/6XHgP7+6yJsx1Lux95lvr4D5acmO16a4PRMmuzNJn6jKwcd95ulEd
         UWJM+Am/OlBuDJycb28n9ShlqDyLbkbS0K3obCzITWHl9nz+Lg5SRHop0IRjl4SeQW/J
         +AggcfoX8aIxAyK8dlb3WYRDR/OViiCWshsG0/G0qN3kHfrZdbP8NhIMBDwpzONXb0WO
         g1fi/ZFkHQWxz0kbB0mIwYxb5pVnSg1T3/DKbNd9X8SdufNWuRGDn3KIUsdYozJKbbor
         lA1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=JcxSjHi7;
       spf=pass (google.com: domain of dima@golovin.in designates 37.140.190.203 as permitted sender) smtp.mailfrom=dima@golovin.in
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:mime-version:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VDRl9rDiO/BTt/CXbdE+uFu0+b73A02I2SW8UI/I0s0=;
        b=BS7FeVGUzHhp2FT/tSOMvSOrPvcgg5yVoM7Z3vDtOYLRelGSkg35Zaq+lNWk90JdY1
         9bfhwAEqGk2ycVBflvp6bbTEtKTHGTb3v6kn94XXn/1PhQabhBeoDCRpOg/Auwu14yu4
         6S229xdMQubw2u5G9xZymJWzbl+ah+Hj5wfReHLoEPyPp0hhPnAVl1XuhBWdPONtza+H
         VmDRBU0B/3m24aXLdoo2P0f75pXrBc9T+hfkX53QtSN8rchaB0v0QWSmxve1yY4ePfcj
         e5B9EgmMysf5beC1uxueKVtlbuSy9BDkBv7Gx/L3hn8BG/fRL6jZopUfhSTrdpUQzd/S
         QSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :mime-version:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VDRl9rDiO/BTt/CXbdE+uFu0+b73A02I2SW8UI/I0s0=;
        b=L2SPk+BJETTQ+sStwon9b3ZA0PRCocS8qgOh4hie4CWTiUMEa63fq9UdZAWzl1AY73
         n2Vg7Y9CdqH7P70kG6R8yGSxf2ozbAmUBYwkfBIjD93uW9hVbuiqU21ty51q/uw1qhqP
         d41aDRhf9r0knXdu4hsRhg11EETjc7oTLG7K5c7ZCm0bUTASxaPZJArBsD2dDY1Xd4nC
         DBprBqmn8Ikrbvds0YlxqRZ5htp9F1CgOZEh18/WvqiLFlWXcWS/8C3mhqAhT8xS+nfA
         0TZRbOKL6FIwOnAjiPBy1q7XwPFDJkbeiyvG9LrpaejVazhMcffpCCAiMUQ2RF35lwxI
         WZjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53345QOyzJqg0p8Sy7ABQoXOPJCrZl9mbgJ92I9COwp6n1Ko88Y1
	qGoI8qQYoJn1HQd13coniiY=
X-Google-Smtp-Source: ABdhPJwB0LTrdxsgsFkBqIgdQLQ1cCCLa8woDZ+TIp30p4mD10VZI4LdUSoSZQAsoz0P56tErW663A==
X-Received: by 2002:a17:906:1f16:: with SMTP id w22mr6613645ejj.327.1589616530103;
        Sat, 16 May 2020 01:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6ca:: with SMTP id v10ls1891946ejb.4.gmail; Sat, 16
 May 2020 01:08:49 -0700 (PDT)
X-Received: by 2002:a17:906:2d4a:: with SMTP id e10mr6693573eji.222.1589616529525;
        Sat, 16 May 2020 01:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589616529; cv=none;
        d=google.com; s=arc-20160816;
        b=hjssG7X2rZje5D8ArrDowijmO6DcHXyaCHPeb42V8BWmwVv7IPDRy6jQ07WeOvuzbz
         DofP6KfhFF+8JdcfHrTEpZER0xhKwLBtnQzjCv625DFbWIPF9iUYnwaI3c3jZr0pIE00
         v7e4cvUOkwvIcj9bhPyQcZVfe9hEIjlWystyxkd8djBGg4l7uH1urB7EhNYDPAoXgSby
         dKdWwm+sjrau/kztQCOSX1g/dX3ibfvitACBwaDufhzAOD6AnzWHv0KjkZ5tPJIf1NIV
         UyEnRG2omwRgoKTsbwq3iRPJt1UZoypiU4yXpIy0T23SSDJmBdcuZmRHlAQTRrC3/Res
         Vsvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:date:mime-version:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=E6idt56x3FdL+3FuuL7rxyjvecyjQKAFxvs5J2HOiqg=;
        b=OwXYcksbbm71QOQt58he/SozpQQA8mTj8icpDSoXxTdWGED6BvEX/kCIiztarpuuLv
         PJAtK6v3pds1yZPEdKDt8IslvlAMZMwV49WaRpLnWayUgvn5Ah2nAZzLQJczdrmdr6HH
         Vpkwcu0bJ1uThhtCcxnN8W+ymH7UMJCNPqXQ9JFVKqZ99B6wgkb5f4EkG2zJzOJTKytw
         0Y8aZVqk+ITnODdica78fB71KwPt/P+9gi11HW3c5Uf+OeFEzPBztpBAwtP75LfVck7Y
         6nLFNuHsuV2alMgzlanC+M2IcZc38AU/mZWaIVRKNXTjT9EdlOh1i2OcsBuWzxOxy4m0
         u4bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=JcxSjHi7;
       spf=pass (google.com: domain of dima@golovin.in designates 37.140.190.203 as permitted sender) smtp.mailfrom=dima@golovin.in
Received: from forward501o.mail.yandex.net (forward501o.mail.yandex.net. [37.140.190.203])
        by gmr-mx.google.com with ESMTPS id f27si365830ejt.0.2020.05.16.01.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 May 2020 01:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@golovin.in designates 37.140.190.203 as permitted sender) client-ip=37.140.190.203;
Received: from mxback2o.mail.yandex.net (mxback2o.mail.yandex.net [IPv6:2a02:6b8:0:1a2d::1c])
	by forward501o.mail.yandex.net (Yandex) with ESMTP id 8DB9A1E801EA;
	Sat, 16 May 2020 11:08:48 +0300 (MSK)
Received: from localhost (localhost [::1])
	by mxback2o.mail.yandex.net (mxback/Yandex) with ESMTP id uUxj4adqb1-8lLCfHWY;
	Sat, 16 May 2020 11:08:47 +0300
Received: by sas2-6f89905be8e6.qloud-c.yandex.net with HTTP;
	Sat, 16 May 2020 11:08:47 +0300
From: Dmitry Golovin <dima@golovin.in>
To: Borislav Petkov <bp@alien8.de>
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"x86@kernel.org" <x86@kernel.org>,
	H. Peter Anvin <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
In-Reply-To: <20200515185051.GC19017@zn.tnic>
References: <20200501084215.242-1-dima@golovin.in> <20200515185051.GC19017@zn.tnic>
Subject: Re: [PATCH] x86/boot: allow a relocatable kernel to be linked with lld
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Sat, 16 May 2020 11:08:47 +0300
Message-Id: <602331589572661@mail.yandex.ru>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@golovin.in
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@golovin.in header.s=mail header.b=JcxSjHi7;       spf=pass
 (google.com: domain of dima@golovin.in designates 37.140.190.203 as permitted
 sender) smtp.mailfrom=dima@golovin.in
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

15.05.2020, 21:50, "Borislav Petkov" <bp@alien8.de>:
>
> I need more info here about which segment is read-only?
>
> Is this something LLD does by default or what's happening?
>

Probably should have quoted the original error message:

    ld.lld: error: can't create dynamic relocation R_386_32 against
    symbol: _bss in readonly segment; recompile object files with -fPIC
    or pass '-Wl,-z,notext' to allow text relocations in the output

>
> IOW, don't be afraid to be more verbose in the commit message. :)
>

Tried both BFD and LLD for linking to understand the difference more and
rewrite the commit message, and came to the conclusion that the patch is
wrong. I will submit v2 when I figure out the correct solution.

Regards,
Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/602331589572661%40mail.yandex.ru.
