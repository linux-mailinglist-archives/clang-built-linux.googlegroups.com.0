Return-Path: <clang-built-linux+bncBDB63H54RYOBBMGLXLZAKGQESE264GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B73A51660ED
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 16:28:48 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id m4sf718941wmi.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 07:28:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582212528; cv=pass;
        d=google.com; s=arc-20160816;
        b=s22BpS/uZBcT3HdQmuMu/sCdoF2IX3FsukzwQR5WIzwaPKVKFVapa5XXlLIKE9p1T7
         L6dzdeEmEdHq0nCpZtYJHcaODtgm3scwImziQj3P5goefM0nrYHgNcBpkLdpmou/o8PZ
         1C2iEf4omvRPj9aqe1aYaMQcF8JyXhGcfxr/FAwcQbmGVrZ/xhNArE++bMnawdsiHksn
         aPxgkw4k0loH8p8t51AcwK7DwCvWM68VKiNxOzqo9X0A5cdwcq3mwQdER+87rxMScqKQ
         7zm/tr+xPJKZQ2cRxWTP8e6yYau/aOufGzcxS1U/1LvUWVd8NKcuHqJnxPA3tmkBhWKR
         51Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:date:mime-version:subject:references:in-reply-to:cc:to
         :from:sender:dkim-signature;
        bh=TvpKg+mfzGuQ1XSWT19sPBp9F1hkfcOiJzECS0gTPPQ=;
        b=gFhDi8u54uZbVhfnL058TLGe+k0t95MZzn5gRiO8zs4vw5qOyhc7tS/8a1ZIdkmv9j
         BSSuyaB2yRIj4ilqUZUbw0+a3/IkJNhk1JfrAWXh4RxiFRvj+GZ6yg8ruVtunljWm148
         bfDk/nnbEc4GyoAhZ+GjeeqzFi6BzVY2F5JLUCeRe7PkbGwaDYJTtoLZWsCEIEgP7csT
         SE1INBou21+bRxi97Mnu/86TYxkTN9p58C0fsT9p6TIZLpDb9zWSH3aTsluyvBE8DIU8
         Dbe03CiSB7NW9ntw3Xl3JU6W/kbj0E7RDur70TV8D1N/QZSttxKkxTk9ip2iHATNyxi3
         iBsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=2+ttcKBp;
       spf=pass (google.com: domain of dima@golovin.in designates 77.88.28.111 as permitted sender) smtp.mailfrom=dima@golovin.in
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:mime-version:date
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TvpKg+mfzGuQ1XSWT19sPBp9F1hkfcOiJzECS0gTPPQ=;
        b=V18lTT4wrCp6vbSndM/14/8GPh3xNP7MwBeP9PJ/7YokvtchVBCHUhvffjjGyJg+nt
         M2JzQ+JKZLMU6CPYp0yWgl/18jXYdWidJLlupP81BYPj/nxD0RI2eLlG73u/eP9LN83t
         +uo2lPsfdwlfi3MQp8vNJACyQuWvrq4pYEaWy1z7u9Evz6KkbAEUI63sbd/lSvOXcLko
         vjXEXYlJaFBZf1RdTkhherysmb7M9xytGMsj+mKPAav/HNpVWIBqgIzzOB+DDRjqkNrG
         gueYjiUPdIYPfOg28FGqkB0qslBmNW6Ex2xLzjx+5IfkKcqbVkSUeWpnosFQZst64ieV
         idjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :mime-version:date:message-id:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TvpKg+mfzGuQ1XSWT19sPBp9F1hkfcOiJzECS0gTPPQ=;
        b=FuxLJJEnfoIJPAah9RXBWTFgQoYnIZ7EopdGy1eg7fa8HKfxMRpNjS/s2gFd96Mnhq
         hR7SPm5+a01XOvQ26bl0utdcpA892kXE+otzp7pckqarZ+DEz89KhzC+HwhxxZ60Fgry
         v++XKDlMYoj/8ExYWmewOEFRwIoTOjtBR1B4Efk87DkFeIRA8g9GUmmIi2YS7y01aEo8
         zmxDtbSGKeAYNQ/vHMCtAoX+SlOilXw+ri+sRDmSFj/SchfTu08AqbtivNsA1L105FOL
         cjtBLio2GtzB8ofX5QKp/8upCGCeDmDn+9u1rGloApdzPU1w2nH/SL4FkdOQ6RVKWR8n
         kLVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXuhKbYnd8XhDlYXHdTVbcHzShNDCLfOASSIk6WnRig4dW9bN2G
	6QszWzO/LH9tZDOTuu24Mnk=
X-Google-Smtp-Source: APXvYqwOhAhnPCakXy5ak06KfaZdnXji8naAU/Crh+IWZ7J6AWxW+Fy9xWh+4fODYh1wdLrXHKLPXg==
X-Received: by 2002:a1c:7717:: with SMTP id t23mr5360070wmi.17.1582212528491;
        Thu, 20 Feb 2020 07:28:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:288:: with SMTP id 8ls1246286wmk.3.gmail; Thu, 20
 Feb 2020 07:28:48 -0800 (PST)
X-Received: by 2002:a05:600c:2c08:: with SMTP id q8mr5165973wmg.45.1582212527960;
        Thu, 20 Feb 2020 07:28:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582212527; cv=none;
        d=google.com; s=arc-20160816;
        b=Dppmh7gfaHfKtWkHy+VtNiXied8/MRtoFCOw1CV46Jk7QqrCAY3r3X+X7mQHtPcqdd
         k87nYDwO0Eg0jQ56g1V2yqpuSiUD6+Y7TKW/IO7hxu27PHuoG6j2Rd2Iq53rf6b/vx/5
         LczpokPtRcy9dHr0Xy9DB8x6prHhR9Nkfb+EtJSM63smAYl1qaz7Y+w/es71Dl8yZWZ3
         tJG1BQ78i2/n3JC7JWz5zln9x5pQkH4jpTTaEw/OeF0pP/xYAj9Qwe27OdkUSjDFfd63
         8b5Yfvl2YL85NlR0+taXdZt2z8+AjJhcxung0NTEUhEmRbSPrQhCRQzG4Bp9sCnvEaBP
         1kXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:date:mime-version:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=k/p2VUDosGYu66ErCK1cPAKJ+mVO7o9ELRCaJtjIexc=;
        b=x4lbwkjdO+zBR6WuFpAHYo4pUKdak6qV/gy+ARS27GZqrgDcAg/o6GDpXVwgtPMp/E
         ggXjBjQ/mkmDBFAdyjW6XjEOrr0BVjfjPHG6a27Tjaz2wLC+pE41E1yLfooi9xifrRp7
         a/rkjk+nUwyW9jKBpq9i1BSazc1JJ5+HZEwtLXjoou6dHYsxnwISAjqyiArAk8q4ZSEk
         SSvaEOBaBpFpIUYBnD9k1xv5Cgsx8X63REg8rRilivOsSuLpfl/vU5eQWERam83NHSg9
         +ZfyasAl0Kblj8R+OtCdIIXOXZsjcFrZxG96zfLNuovGNJx6OWdhk9Q9EdmZuwlUSvQC
         lrNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=2+ttcKBp;
       spf=pass (google.com: domain of dima@golovin.in designates 77.88.28.111 as permitted sender) smtp.mailfrom=dima@golovin.in
Received: from forward501p.mail.yandex.net (forward501p.mail.yandex.net. [77.88.28.111])
        by gmr-mx.google.com with ESMTPS id w11si133198wmk.0.2020.02.20.07.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 07:28:47 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@golovin.in designates 77.88.28.111 as permitted sender) client-ip=77.88.28.111;
Received: from mxback8o.mail.yandex.net (mxback8o.mail.yandex.net [IPv6:2a02:6b8:0:1a2d::22])
	by forward501p.mail.yandex.net (Yandex) with ESMTP id 046E43500294;
	Thu, 20 Feb 2020 18:28:47 +0300 (MSK)
Received: from localhost (localhost [::1])
	by mxback8o.mail.yandex.net (mxback/Yandex) with ESMTP id GVR8Slzjn4-SiLuPZj7;
	Thu, 20 Feb 2020 18:28:46 +0300
Received: by sas8-7ec005b03c91.qloud-c.yandex.net with HTTP;
	Thu, 20 Feb 2020 18:28:44 +0300
From: Dmitry Golovin <dima@golovin.in>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Mark Tomlinson <mark.tomlinson@alliedtelesis.co.nz>,
	"f4bug@amsat.org" <f4bug@amsat.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"paulburton@kernel.org" <paulburton@kernel.org>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>
In-Reply-To: <CAKwvOdkaLRE0Ek3PnmqE2P3Urn4+pwfAp-qQdsLurwERcqNXfQ@mail.gmail.com>
References: <20200211212455.3307-1-mark.tomlinson@alliedtelesis.co.nz>
	 <CAAdtpL5Tf-8O=xMKO33DWDs=2_Hsdk=FQSNO5Gsrx=9hWvENdg@mail.gmail.com>
	 <8e852d84c8b0c6b35faa3b3f2a1034d93a6e8967.camel@alliedtelesis.co.nz> <8cb14684e2f774d9573c062f2d82ad5348c5fee7.camel@alliedtelesis.co.nz> <CAKwvOdkaLRE0Ek3PnmqE2P3Urn4+pwfAp-qQdsLurwERcqNXfQ@mail.gmail.com>
Subject: Re: [PATCH] MIPS: cavium_octeon: Fix syncw generation.
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 20 Feb 2020 17:28:44 +0200
Message-Id: <37043091582212524@sas8-7ec005b03c91.qloud-c.yandex.net>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@golovin.in
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@golovin.in header.s=mail header.b=2+ttcKBp;       spf=pass
 (google.com: domain of dima@golovin.in designates 77.88.28.111 as permitted
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

18.02.2020, 20:37, "'Nick Desaulniers' via Clang Built Linux" <clang-built-=
linux@googlegroups.com>:
>> =C2=A0There is an effort underway to build the kernel with clang[1]. I'm=
 not
>> =C2=A0sure what that ends up using for an assembler or if it'll even be =
able
>> =C2=A0to target mips64 anytime soon.

I have a working build for MIPS64 (only mips64r6 at the moment), the
config is based on malta_defconfig and it boots in qemu. I still don't
have a matching buildroot image, but it shouldn't be a problem.

Regards,
Dima

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/37043091582212524%40sas8-7ec005b03c91.qloud-c.yandex.net.
