Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKX7WKAQMGQEZ73ZPEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id BC76031D599
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 08:03:07 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id e3sf9567116qtc.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 23:03:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613545386; cv=pass;
        d=google.com; s=arc-20160816;
        b=wf08i6s+4mRwYZz8aX6oZ3VpYZ7y1mb1MrrKki4pnk91VY+nLpOnqZ2if/EJO7Ivxo
         TRnuf+UPbVcX4Qn+09Bo59wwVmH2XyauYZC8sOx4GLbJ6wpHeX0evbIwsFT/smNiRvak
         CkZ0wCefRc56DyFGfWgFk3cHbeQNT36pjKWD3XgitMsIEnMRfM3Ni5frLUxUuwsunAZk
         o118/96T5muAJSVfrarzbbCXKAnTlm4C6/AJAw+9b+/GglK6+1e6O+F3nHEtSMEEBrBd
         m6mIl9NirMl5wwUbURRg2h5ZHzYSaCFdDEKEwTVcce9AoKs6PqAlmf9mURWWzZg4ryEs
         16MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=thcql4NDdU6OM5BFoSgBferOKR7l9Rop46VynfhPHPo=;
        b=Q/+dxJmk1RuOiKKwEFb1U8HOpLbtGbuTe6U1VnoSJAp40OwXOKJpaLtBhz/hkC8mPq
         p/LxYukpKlrbnq+0wrZ6xU15Vwp3pBGz/kwaVYgjOKaClDHTAmZZHaTkVOmwUmRR8iFN
         wsRebNqJANQF9R5t99IoQvh4gq0AY6TZTANwLtr6OEbrOWj5ydYzRg/mi4vmtshXj3DB
         nzSiBqaMpf10w2AwnbhWKwRGMB/5X5J8931uZTbjS9nYHuqwtAInKpUeKpx8oaBPZO37
         OwJ3UBwfdxgU1Ztja0eDohALoLax79EmF4wmUshXVMstLefjvdwYaZBlMfGARLkP0mJI
         jA4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PfIBeEV2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=thcql4NDdU6OM5BFoSgBferOKR7l9Rop46VynfhPHPo=;
        b=szZ4EFBaGObpKdlItx2RbKDK0KK/yoWSSmt7j6AFraoYGZPLH2z2eX44HD+2+ql688
         ArPGBCca+KDXuugGnfgecLHbh3S+DZS6OhkIZtdp4nyngdA5+ljsmIHT/oMXjMsARYWv
         95TG5grrQlEGCvOuyYc5uQP3UOSAuxmkkGmQG7L12ZNNv2DfFoHTxlbDk/fNcg5wwTY1
         rYB2gCUceLfhCnpg6/cmx8P4wEKS0oGZIiYN6/+pV7C1yGGYdQBr2JkCce0C6N6/mAoj
         32ugSf96KvN+jnZZPwiNidP+7/Hv3h229TMoJozmbGcyyfI06l0O9SdSX3jNfJLFROaS
         iJsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=thcql4NDdU6OM5BFoSgBferOKR7l9Rop46VynfhPHPo=;
        b=GBxoJdOTHbmXgnHdRroizoeJavKnoJw9ailQqphJr2B5djq1KVB503SUXYhcGCMJGe
         Qy91mbUv+5GfrGevzu9RMVUwDtz7prCJt98ZA4pProoyXVLuTNz9xnFXEyXiQ46cv3I6
         +1YfXN+umIHww7oeEOsfFghElDdOncv7jowZkfqByw4GUiaf+Gi93jiRjGPI5Oil38lz
         UhLBzu09KS1yv0Ah3rsfXG9FDHlo7FGuKhBh0syuPVJMGj55hzn+xyEkQbyYW+dsb6Ky
         4qwF7hl5guejTzskxIieoh32IHHB8V61+gqoiE6SJOOVN0JdQqKd33Ki/3UV6XlRZIyO
         XfZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QlvHnIaA4TL+iXQyy+LN8GoMbyzWlXtyKUfnLItYXX24+FlxE
	rfkrU1pAzVLmSLRBNwvLqXM=
X-Google-Smtp-Source: ABdhPJzWBrtMsuFiyatYmLFr7DsO48pl97zChpJhS+ZeR5Mx7iLpn/VjeB4E/b7dHPI5d0wSS4uxUw==
X-Received: by 2002:a37:4487:: with SMTP id r129mr23056585qka.224.1613545386507;
        Tue, 16 Feb 2021 23:03:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38b:: with SMTP id 133ls551899qkd.3.gmail; Tue, 16 Feb
 2021 23:03:06 -0800 (PST)
X-Received: by 2002:a37:a911:: with SMTP id s17mr23800870qke.140.1613545386073;
        Tue, 16 Feb 2021 23:03:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613545386; cv=none;
        d=google.com; s=arc-20160816;
        b=w/4Eu0/8LyLhUhruXLISE1aFNxbgl2Md1z7eMvu3sxgyqcPpnSD/T8Yw6VLn9nW3Bv
         58W1/iRbvpk6nBLL+mFxwMhgQw2SooFufQhoOdflnoqnF8vGSnPsevM7wj+tL5ny1rUw
         T+iTxTXarUI57KZtLXNvEQw0p4/ngTrcnW1lR6KJzrl2OY/vW9Wi+NvF0lnni1rqq2uX
         0PTLeJ3tt7kfC/3UiLL5g3F04p6TkDdXJPNsdOLjeWo8DvhTwgvA52jBQBfu5QrQNue5
         52rEKRD7ZcugBFcw8bLDpoYJpS+Jo6OlNziamMuBKJs9WQ2QSqetOtfe3Ie3TV8fUIBN
         JlAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=E1RLv4/hlDSK/JAIVwLXtUV86s2XAsZpcBxtZyFWB18=;
        b=NttH4eeWBRnU1iEga+xMKl+rEMcCXKxROtHqYTghfSfzS1njTaKJvsv0ujkvodcMpG
         uTN0msqS8BHrZOm7+Wa5cO0fZYVOPEP91vPo4Czt//PgU50G/OvTH/HQRAHzz8AkIOYw
         37HcSkrXMgMtG/1Kr58FrOiSLpBfXgDeDV0c7cAmoZ6Mv4csNX9mkw1CmTACQ20abBjn
         yOE/I4C11tcSPfKTSpuzSKsupwLZ1Zz0kYbjS1HTx9PMH1dIM80cqqP+2UhkA0ecgLk/
         GIxgzxSRfBbNyBOJFS6zJbHVrenLtZbBD/GuVI3llZ4QK3jH1yTCcQ1MrNfg3Ua4kGUI
         2VTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PfIBeEV2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id x65si70271qkb.2.2021.02.16.23.03.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 23:03:05 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 11H72lWe020700
	for <clang-built-linux@googlegroups.com>; Wed, 17 Feb 2021 16:02:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 11H72lWe020700
X-Nifty-SrcIP: [209.85.210.177]
Received: by mail-pf1-f177.google.com with SMTP id 189so7830640pfy.6
        for <clang-built-linux@googlegroups.com>; Tue, 16 Feb 2021 23:02:48 -0800 (PST)
X-Received: by 2002:a63:575e:: with SMTP id h30mr22503796pgm.7.1613545367403;
 Tue, 16 Feb 2021 23:02:47 -0800 (PST)
MIME-Version: 1.0
References: <20210216213312.30462-1-nathan@kernel.org>
In-Reply-To: <20210216213312.30462-1-nathan@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Feb 2021 16:02:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNARcy52b6aGtV1mgq3rehtnwo7sm7TkNHc9H4bGu9Qdu8Q@mail.gmail.com>
Message-ID: <CAK7LNARcy52b6aGtV1mgq3rehtnwo7sm7TkNHc9H4bGu9Qdu8Q@mail.gmail.com>
Subject: Re: [PATCH] Makefile: Remove # characters from compiler string
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Michael Fuckner <michael@fuckner.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PfIBeEV2;       spf=softfail
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

On Wed, Feb 17, 2021 at 6:33 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> When using AMD's Optimizing C/C++ Compiler (AOCC), the build fails due
> to a # character in the version string, which is interpreted as a
> comment:
>
> $ make CC=clang defconfig init/main.o
> include/config/auto.conf.cmd:1374: *** invalid syntax in conditional. Stop.
>
> $ sed -n 1374p include/config/auto.conf.cmd
> ifneq "$(CC_VERSION_TEXT)" "AMD clang version 11.0.0 (CLANG: AOCC_2.3.0-Build#85 2020_11_10) (based on LLVM Mirror.Version.11.0.0)"
>
> Remove all # characters in the version string so that the build does not
> fail unexpectedly.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1298
> Reported-by: Michael Fuckner <michael@fuckner.net>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---


After some thoughts, I decided to apply this as-is for now.


Ideally, the part "AOCC_2.3.0-Build#85"
could be escaped like "AOCC_2.3.0-Build\#85"
so that the original version string is preserved.

I know it is impossible because escape sequence
handling in Kconfig is buggy.

So, I accept dropping problematic '#' characters entirely,
and I agree this is the safest fix.

When I have time, I might want to revisit this with a Kconfig fix.


Applied to linux-kbuild. Thanks.






--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARcy52b6aGtV1mgq3rehtnwo7sm7TkNHc9H4bGu9Qdu8Q%40mail.gmail.com.
