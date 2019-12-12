Return-Path: <clang-built-linux+bncBAABBCMPY7XQKGQEIBNFGEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA5311C50B
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 05:52:26 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id h10sf721344iov.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 20:52:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576126345; cv=pass;
        d=google.com; s=arc-20160816;
        b=ftRJvGwo7agYZr3MpAPKvnQS3vCw/FFB3xvJSKkpwcCCKM6UaLhp3TLmgj/YC2PlKO
         BCbcVOG+ustvZ9JTxPoWWV+nEMDzWOel2n66osxiJ4T7MnTYHuKJ5Aby86vpYkVsn3xj
         PYk7NDJdwJ6zr0vrm4IFG+r5DSNKH5e3biuAofdBM12WLvVZfOCtydlL4QRzHjYRD6Xa
         RLp6HtMgUxIJMY7Dcr8oyR98P+Sm3/jGUU1KBoaKh5vkq5haF1rhYYUj/dqKmOTPH79R
         Pg/PLEo+W7RPutKo1EiYhuJqMwAhxhaOjcmaUq+bgenil/O77MvR937YZd7EcRk4CyNc
         7xRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=7caXxewDy5kbLPBbUCPuYzkkw/Li6sa931e6IHFMT54=;
        b=012CBsJeM16L+Il840qFSrBSEytxpI7ozss2rYp9EKr/nLUA4fKoX2s5ymRl4cwMpy
         WpjZM5qs/Fso1FaBfhjgC2Rrs1kmaRhV/kWV3poyHYjD6YYBOISFsh5C2a0M18x3CxvU
         1haXg4PNN4v4EnKZXDlVpHNbpNZQfZHU+qmhZVt4E/yIm1pBaYkb5GAHSSk48Y1ZCKRq
         sjJ4vmNoQ5GCmmq+cPaKelyMXqtijgvT3slrs8aMhutIYTi+pseQZzH5pfXHOVKjq6UH
         0FTJMtg6Yu9xAjzajL9vu5MfYbCVzkDOQvmhwp8buMGL+bf7pfVa6OowybWCb158k50g
         Wb0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=A7yKkfSA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7caXxewDy5kbLPBbUCPuYzkkw/Li6sa931e6IHFMT54=;
        b=KoBG0Jkw11efQcPrqGCHZZK23evYH+IYuqhCDvtC0wrB8dJl4XyAYJkHKaaTx5eBa0
         hh3QIBncrA1VfvPUsAiqfE4cF5FqVbkgkDplKGpe9izTOki6dvFlT6PcF8Jhhgd7fS26
         3XJ45MzrheYjnX3sGavogzGu7VDXzwFY6NDN5gkZMq0QzS6DACRkbd5Xmh0JWZrRtXOL
         L32H9PGrA45tS5DqflFQKW9ykEOJmPibqEAXUKFGE1XP2DOBLvXbVcKXJ8I058fPLhTm
         6N1w+dUGiuvugoCstEd/K6MGNoYFcxGol6dd9QT1WS+1g3vJpXpcZfh1CwD5QmK4p8YY
         742A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7caXxewDy5kbLPBbUCPuYzkkw/Li6sa931e6IHFMT54=;
        b=lx5B+LWbKbvgY8lT8fS92Ht5BvprIq/8jyqYJSOe3D3Hw+R7vcYfcK4faGme0ukLyX
         33ZO1NRZ9Ai4MEhe30Ych7sFT4gNCvwk0rExrsX9eEHHLZFA/1thIlRKfhajU6luyyvy
         diw02I2rGrC22GgU+zkl180L0BzMgxaDqLlnZ+uZdm6Whx1Z5969vddrtSNXwTPTsKVe
         NbunngqTFBgGCLUVqY5ZH2MZDqiqu5nQoZi3qPPcvmI7mTAqGn47ar+TnF1UtxpuwoOB
         VZ6wButiYK4lvdkXPT+I6C/saBDKAjIGUw6TgPb8NAknLcT3gYvr20Z6Xe4iCa+uyG3y
         /iKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+D7W2oS5E+odKDI34zhgpV2ihoqrrI20V2+Ts4fwDA86yPk/+
	5W08kE5qf1w/2bq14/4RIWA=
X-Google-Smtp-Source: APXvYqwJFByfJtqRlukQxLTOd0LCAfwFYY28olORi43dQAhm4nz2h171nGrPEVoTIMlmrTNmJly0rg==
X-Received: by 2002:a92:868e:: with SMTP id l14mr6718721ilh.111.1576126345449;
        Wed, 11 Dec 2019 20:52:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f85:: with SMTP id r127ls332498jac.14.gmail; Wed, 11
 Dec 2019 20:52:25 -0800 (PST)
X-Received: by 2002:a02:8817:: with SMTP id r23mr6589908jai.120.1576126345095;
        Wed, 11 Dec 2019 20:52:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576126345; cv=none;
        d=google.com; s=arc-20160816;
        b=xlMXANW/D4tysuZmvVX2KJOHVZKlUQN4bF98aI5Jg6oS7uhBZiMqwPGDpCSrZHZQlW
         e/W/46xDfWyr7dR8HYzVqhz1LjCeJPIdlqFIPQOV2KXr/MpXXdio6CW8BSl9RCGHazw/
         qRf9gHGIDpApzP0LsxY1pkzfi4b6nF1nMPVkWr0lHmebar5snY+ORFBDWK/wldbyMWTX
         OX6UgJJwdG11zS8R92zWgaG52U7b7BveiMUgjQaZ1ruKY+B2+NAkVcxhSp19aPzsjaPr
         Yqh4ZVNZ4DamfvrAS4YLX6a36gP5S6QX7TDiAOP3R55WfSmChLuZw4qA9NVGPlwK8yR5
         3ubQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=TyTFhnCKN2YT9bgwjekkQfef7OcPW8tA1OCfAFWZK7Q=;
        b=vKJjr9z/ap4twFUlOeSqIFCKYozg5UEUz0goY6lc2OT1VSYeAgbMiHNX5r+du/uw/v
         Q8GYDCpkDdEYwx+Zzp6iOxV3vr5Lclx4pipOWJOZU8i/cz7v6zo+4stTv+2jAi7YaQC/
         V0/E8pVK76a6lCmbpJ99ebPmWVj35kDagDyWU+m5DI62W3maN31zUNHIOwcdGPN7cBtE
         R2liLetvxPcUMYKgLorDQtqklFOQlcMVVbwalKQNeXVNCwLZ3tL6GYx4RFa7s9cdQvuX
         6T/K8vW9dxnm8iAuZM/KusLtfmJIhmCtd8gFed/dZRJphomJX8pDpifN/JZ0FOXVdqqs
         bSYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=A7yKkfSA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id g10si147422ilb.2.2019.12.11.20.52.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 20:52:25 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id xBC4q2iX022790
	for <clang-built-linux@googlegroups.com>; Thu, 12 Dec 2019 13:52:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com xBC4q2iX022790
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id v19so388359uap.0
        for <clang-built-linux@googlegroups.com>; Wed, 11 Dec 2019 20:52:03 -0800 (PST)
X-Received: by 2002:ab0:6509:: with SMTP id w9mr6474644uam.121.1576126321925;
 Wed, 11 Dec 2019 20:52:01 -0800 (PST)
MIME-Version: 1.0
References: <20191211133951.401933-1-arnd@arndb.de>
In-Reply-To: <20191211133951.401933-1-arnd@arndb.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 Dec 2019 13:51:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ=96VX34S4TECA@mail.gmail.com>
Message-ID: <CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ=96VX34S4TECA@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: make it possible to disable
 CONFIG_GCC_PLUGINS again
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Andrey Ryabinin <aryabinin@virtuozzo.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=A7yKkfSA;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Dec 11, 2019 at 10:40 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> I noticed that randconfig builds with gcc no longer produce a lot of
> ccache hits, unlike with clang, and traced this back to plugins
> now being enabled unconditionally if they are supported.
>
> I am now working around this by adding
>
>    export CCACHE_COMPILERCHECK=/usr/bin/size -A %compiler%
>
> to my top-level Makefile. This changes the heuristic that ccache uses
> to determine whether the plugins are the same after a 'make clean'.
>
> However, it also seems that being able to just turn off the plugins is
> generally useful, at least for build testing it adds noticeable overhead
> but does not find a lot of bugs additional bugs, and may be easier for
> ccache users than my workaround.
>
> Fixes: 9f671e58159a ("security: Create "kernel hardening" config area")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ%3D96VX34S4TECA%40mail.gmail.com.
