Return-Path: <clang-built-linux+bncBD7I3CGX5IPRBXEF5PVQKGQEPCRISZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADAAB1630
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 00:12:45 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id r187sf284098wme.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 15:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568326365; cv=pass;
        d=google.com; s=arc-20160816;
        b=vFf3Me0WAZXYGwlZh3Wv6byuz9/sKF8Ch0PuqfrNUdrBuVL5kNEI3hbALeL0lNndA9
         9P1KXdDrdHzjgmby1nGHgX1nAgyDxrld9FRqFBTDqk/5Axq+2i1/lqlFn16LDRSUivsu
         X1SRrRmTBq3bh8n1hxTiHsoqAx2RQI5kS7vWHC5vBcu+KWD5fTsLtd520y8WqAhBGo9B
         Weps1uioY8pmghtBncgELWfTFuii/i6aln28MVvy5d99CiPVer6oOquEDxJgHgXijRX3
         efShLvVCf6r6++H56If5AmrLris6iH9sDJdvmxbgZj3dkkiVYCZjniV6Ys9I8uqiCIHS
         kk1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=uHZ9nIu0Vh9WN4BoA21z4w8Aa6VIozJtPa2CbtBVDv4=;
        b=MXPfZWsWT7ZTbvnWUPcyVL2rdjftpBuIAxYf5LPhyqWU2YHIQLq7xLkJBnO0LOn2Tc
         9qHiFbxesLYtgaW+wRLn41ZBJMfCitX6f7phurr45h8W7u7cEq7ffp+KWVNeoRD7HYgg
         Gd4YzkmEPHjKr0FWDJcJ6YVYHS718uXJL54FbmWKkCbVJpcmdAEKaSuwzTnZPAYuchC7
         9XKpDdev8tEid/vlkfiSU9f5DhhYVZxqsWRqA1WYdomQdw2bkfqQe6o+UyikLew2gYlH
         nncZ/G2M9RDooCsZ4em16Hbv5N7DX91nURsPC676rQTbsFpan7C/MO9O7BlL3rotc9N3
         IFmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=H+x8OaMw;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uHZ9nIu0Vh9WN4BoA21z4w8Aa6VIozJtPa2CbtBVDv4=;
        b=p2OR7koVjLy6qOl66CLIp7q/MXgNGanuG3UDo9nN1yPhvZG5zrQVSP2riR7uVzkDu3
         jJ7RgpwNPBCer03c2k6P6WlfgFh9BiMnkCdj4KBRjFihH6tdEHrAWIrG1lMAq1LIpLpc
         aUvqK80O0qr3XqD5KktMKAM+twQ3WXtakT7avp1Tag1JHqa2q9AnmGKl7pU70hXzZq3z
         fNfRnt0+sPp7mFT+x5Su5ViCjeOn/WaYFMgH+409nAEtiMNrMzRPJ6KaJ7PmzgWyUUse
         edUji4ccWb9InkHhqRXvt7DGI+d96h9S1HagctYQwWZUCrPHSPkHtr2aYBxRYUNrLk/s
         0k5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uHZ9nIu0Vh9WN4BoA21z4w8Aa6VIozJtPa2CbtBVDv4=;
        b=FGgIrqJLs5xju71oPRcyOa0GD/1+gulSMm/O/svBkUdtIUJQ8foNLmMTXKQUwnwgCf
         fnl92HUAbazVb+0KGW8WRSin0l+7166u5TxwSmmSWKmoOMpm9qBUU7wKRraTgbAJI4SF
         yuND7wzolaAHhnSNf2Tw/U3nFz9GZSVI0RurOKfwkfOOqtGJ8JxmY3iMEnBJG8Usrd+e
         zt1yayV4yHXo06nHgV4gxS8LOZ70tehSoel5tcY0nC/Jc1gpHQ7bV/v8A3T9xsmBd0XF
         C10kLy03JPI1lVdlgdiEj2ARSJzDQJG7SAhpvHbWVBGHt71igSSE1Xi8LpK7zj536Gg0
         0jIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUREupSL0SVFmoAtcSHpKa6U9ht6uuy4BFal3XzwxNblKBlIsEF
	XhLYZjGJU/53vNuc/E8hSg4=
X-Google-Smtp-Source: APXvYqzDkh9lE0LljlAGxlc9rpuMWAcVHjxgVhwZ+dsmBODYlcayxX7jgzLN7QrmSGFKq2xnSvDxuw==
X-Received: by 2002:a1c:7a05:: with SMTP id v5mr532747wmc.173.1568326364999;
        Thu, 12 Sep 2019 15:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:630e:: with SMTP id i14ls7839493wru.16.gmail; Thu, 12
 Sep 2019 15:12:44 -0700 (PDT)
X-Received: by 2002:a05:6000:128e:: with SMTP id f14mr17892612wrx.28.1568326364537;
        Thu, 12 Sep 2019 15:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568326364; cv=none;
        d=google.com; s=arc-20160816;
        b=mgb6SGPeenBghSQ/8hjd2y2jUOXTVJ/hYvt8AYMx9TcqOw8jVJndAp0b1ryizsyOxG
         GG2bh4m9QSqOCHuTDLNZdDUqD+aJXZ81cWYSh3SDzV02TlNBOgUzB9+CFIOvK3sZ4x1h
         kbM3/t41hFUbWx4HOVdDEU1rGxe289Moobp4lsgcDruqCBk/FXFroxF7gj9reSV/zeql
         rAugTRzXWPKRv6Vadby9FPz7CNclWeZ7lX0CQUu/jjurEl11ec2bDbkwHxMLZgFehaAz
         KOsP0GDcmRzK6xozNdQVjnCcvUkm10gadATXNmbuQrGI2pzmHBMVA7tTCbqGdt/31vuS
         2/+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=uw+By8uPhtt1B4rmiquJCFolZneVMTSbfQHHffSvIIQ=;
        b=enjCzoonl6EnztCHYmVobwH0pq1QgAgJj4BnM+HxSfTSS29sXeHPSOxhYUb1jvJAvB
         slUoQMcS6gBUgdDQxuEGN3bDhRuBgXCtr+yqlIzixc6Pms5F1qKs6tzDYzgz4Zx7NC1/
         FgIUM+pomYrm1SUorpQ8X1KPu0TrD97DezVtd6ZyJRMSoiuBr8LZAeFkqRHAqaxahncM
         b9TQxj23jB1HwZek8+bLP4Fgnl21O+O3moK3M5ACPrr9mBX+Lq9zjK6Lxnwg94Kqqzfb
         cCNJHSQWR89Bw9ZZR/dgchmbXVNR7mmhZpdvCgmKGtsP5oaGhTljRMFUlrvXVwkmoD01
         63Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=H+x8OaMw;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i7si284877wrs.1.2019.09.12.15.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 15:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id f19so25285443eds.12
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 15:12:44 -0700 (PDT)
X-Received: by 2002:a17:906:4547:: with SMTP id s7mr4297335ejq.55.1568326364163;
        Thu, 12 Sep 2019 15:12:44 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-115-35.cgn.fibianet.dk. [5.186.115.35])
        by smtp.gmail.com with ESMTPSA id d24sm5071574edp.88.2019.09.12.15.12.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Sep 2019 15:12:43 -0700 (PDT)
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
To: Nick Desaulniers <ndesaulniers@google.com>,
 Segher Boessenkool <segher@kernel.crashing.org>
Cc: Jakub Jelinek <jakub@redhat.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
References: <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com>
 <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak>
 <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
 <20190906220347.GD9749@gate.crashing.org>
 <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
 <20190906225606.GF9749@gate.crashing.org>
 <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com>
 <20190907001411.GG9749@gate.crashing.org>
 <CAKwvOdnaBD3Dg3pmZqX2-=Cd0n30ByMT7KUNZKhq0bsDdFeXpg@mail.gmail.com>
 <20190907131127.GH9749@gate.crashing.org>
 <CAKwvOdmhcaHpnqhMwzpYdjjwfAhgzq7fqA0Hu8b19E5w3AHz4w@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <e4bf09bf-3aa7-aa7b-529b-f930dc75be4a@rasmusvillemoes.dk>
Date: Fri, 13 Sep 2019 00:12:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmhcaHpnqhMwzpYdjjwfAhgzq7fqA0Hu8b19E5w3AHz4w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=H+x8OaMw;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 12/09/2019 23.54, Nick Desaulniers wrote:
> On Sat, Sep 7, 2019 at 6:11 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
>>
>> On Fri, Sep 06, 2019 at 06:04:54PM -0700, Nick Desaulniers wrote:
>>
>>> How would you even write a version check for that?
>>
>> I wouldn't.  Please stop using that straw man.  I'm not saying version
>> checks are good, or useful for most things.  I am saying they are not.
> 
> Then please help Rasmus with a suggestion on how best to detect and
> safely make use of the feature you implemented.  As is, the patch in
> question is using version checks.

I was just about to send out an updated version. I'm just going to do
the check in Kconfig - I didn't realize how easy it had become to do
that kind of thing until Masahiro pointed me at his RFC patch from December.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e4bf09bf-3aa7-aa7b-529b-f930dc75be4a%40rasmusvillemoes.dk.
