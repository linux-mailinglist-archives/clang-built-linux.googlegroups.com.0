Return-Path: <clang-built-linux+bncBD5JHS4X5YBBBS5A5WCAMGQEQTJ2KLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F5237B4B1
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 05:49:32 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id w195-20020a627bcc0000b029028e75db9c52sf14037757pfc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 20:49:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620791371; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2TSX4mGqjudhR9f5UmW4evC4LKM+Svc6moZFL1Y4aZrqa7Ye9yhX7Lj5bpsDr/BWb
         Zp/aVcovuM0WUbh+lYa6CpfHfqQ2+jgrAVDr5U33pF0RpjhhHjFYeKD2IEMpnWr+5e8J
         cXTlhFl/gUqYJLvHDxkL3INlkFACbgpn9cD00dF3RhXL9j8168tMy1912oaHi3a3L/3G
         m2n58z+cJZ1GYhiIAX/QV5Au2WFtqsDc8hoMosWllve9LW8wzLNNtyoJeYhvMIOH8Eun
         9P2I2xXYBA3MXyesjYyYEYefjtfN1eI+x3+j6HSrpwvGRKGdF0IgR/jLgijMTeG/is2B
         Df1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=1hRCBPT6ZTgNJH7IdOMB4q0EitGIsvCl+pyENF+yUWg=;
        b=pEg1441b7HXNju193NqsrjLRirwXKTTN+22iHRC0OKeRMIZoV6lexf2Y5NIkbFqWCA
         tSapHdsFRAVhbPsQRGRmBASPHWIKF5CnYiBzUd+rUsu6ofyQeOZWl5Q2bllfBloiFQY4
         5qbwbdEA0hLCIw12UmL/D4e1sv++EzrTly0907TLS1CQYfKnQJ5k3ClGGECKmbba52Z5
         U4JVxr9xlHyZFBZrAPtb55xfwOdgSl85UPpxLUCeTfnLXwob0YqAq32cGzcww/iLiM84
         eW5SzKj9MJ/N/XXeG5JcqSBc/WIeK6uBU5xu3ox15B57RYgnhPAjqWOcEZbQYBeB0Cct
         LaiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=gBKUHOq8;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hRCBPT6ZTgNJH7IdOMB4q0EitGIsvCl+pyENF+yUWg=;
        b=MUXng0wtjiwQhmtBJ1zKV0g7oruB24SIT/67FTXN4GNm8nvhUGFtMlpYW5dIIiwXbG
         GjZJLPWQ0/H0ihMAoib68BsUcDywQdwaa6T4uPAktJ0PruAJ7ISwgruct0iPt6R0+5R1
         CilaStL2xG+zN8+ET6N7EHIqBHKNpC9wIyzgcEJEfD2zGuHpTCs/EKHShA0qMNKBDWGQ
         7QxKHJzFMdn7i1LLvkUSvqpHa54mUiSC9DaLUS9QPrpJ+Cmyl3nW6qKQ2ApxUY3EbEKY
         uVbDyrJRrmgDr63KyijNsloubnJ+LMN7UD9ydPL6cE6BeZYPSVnLh6zaQAsVd0Nze8JH
         lWCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1hRCBPT6ZTgNJH7IdOMB4q0EitGIsvCl+pyENF+yUWg=;
        b=eyWjhUjJHyWM6Riu8occwfQwKmkaORl7US5cuvhieqBtJyUl0kEuSw4vFVRCxOieUL
         TCCfG7lkmpRqD46SMD8EinARQtTjFLn55yo1/RnTg7tWQxGK+qwiilddw3KesvJsdn2l
         FEXyXLrPrFqGcFlz4xSdjOP6YdOJGS3b3crG/AqwlPLJEzj/8vOzgQ0VTT8TUWcRg8GB
         U4fmuxIMo+OMSCLIFIA20OqC/Xnl7a9Np05LvSwI3SzDOCCMozcSuzpiV9xaNW94I1Pm
         kTx9o+ThObyVFJcuJsu9a+WRGlYFxn4xcIxFpi9mVBOOwbjwTPKQpkmjOgRXKCFCzM+B
         /mIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TSpWU8XuhtUwX7ocoluofrp5daMXr8EE6cj3sQNdh9o8d0Mt7
	BRlBIXlx81F4TO6JXVyoAZg=
X-Google-Smtp-Source: ABdhPJy8LCMlMcYUDuWxwqjCvpXHqvSA711wnb+ut+AjEv34sUh0HQkOoz1giUfjpZvRA5xKpnINnQ==
X-Received: by 2002:a17:90b:2397:: with SMTP id mr23mr4692050pjb.77.1620791371583;
        Tue, 11 May 2021 20:49:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9b83:: with SMTP id g3ls643380pjp.0.gmail; Tue, 11
 May 2021 20:49:30 -0700 (PDT)
X-Received: by 2002:a17:90a:f3d3:: with SMTP id ha19mr37051644pjb.166.1620791370763;
        Tue, 11 May 2021 20:49:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620791370; cv=none;
        d=google.com; s=arc-20160816;
        b=dbXfcUdl0dVzDVUA7CGaa8qNSl7oSBUdrm9kprcOtAAWXl7mgCUIeOO3LrrP32t7KI
         x940+qxPvwguY/9eLgOietr8gP5S4saKQA786Y44rMUBQqTVuVHe+Jw5+RfB7KNeCETy
         uVg/AYnJ2bpa2fVrymDluNjvo+qHMV+PrjhsgbmCd4C6JWBiO9KlU4TEnDk/w0KyYuRD
         6YBsqbk+aUu2XKlmWut8pKvcfAeh+/qpJo00CitYJuskPbrh89bks7LnJtEFBH9AmFlX
         MxiLasLCgObIkWT2GNFCQ1moyrCWQ+O6zjwNz4SKnbEv/itLB4tlA+x8Vj8Eh1B/won3
         JRuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=IzgGu9R0ARwDBsD+F2+JiW3x3zuHRQ4yrRZwYSnXu+o=;
        b=aWjlIEaPKYARcwGt9EwDtbIJ0GxcmbaVmFgLXMnE7E7XxJuTcb4nuu4WQR+s9QEtHF
         Dd/vmAmwqrhZQv2QubJ1NQTXet/ZYy1/sQa+wCsUr6QhEdpjw2snbEgPNyaflr6hVslL
         BuBLdX86lvjn77HIU3K33XcNtWX3KSvyh/2TQcnjrbraAQkL31xcW/UZN/RB5GdxNiCH
         gbVewNHwdV83DdqR8aCLpMVb6WHu0QuLWE7jarD47FeQz4sDS2cS0z5zF6bclz1YDfry
         1BihJ5JKAGywH5HnZTcwrAvRPalNuAyhpDAUaIZS6sI8NWZnpPXyX86I/wHDN3SxHJii
         PyyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=gBKUHOq8;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id b9si2123174pfd.3.2021.05.11.20.49.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 20:49:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id a5so10526501pfa.11
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 20:49:29 -0700 (PDT)
X-Received: by 2002:aa7:864c:0:b029:2cd:558:dbb8 with SMTP id a12-20020aa7864c0000b02902cd0558dbb8mr2932500pfo.78.1620791369439;
        Tue, 11 May 2021 20:49:29 -0700 (PDT)
Received: from localhost (110-175-254-242.static.tpgi.com.au. [110.175.254.242])
        by smtp.gmail.com with UTF8SMTPSA id c6sm3225014pjs.11.2021.05.11.20.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 20:49:28 -0700 (PDT)
Message-ID: <80ae1561-ed8d-cf3a-f3bb-d89cd07bfc24@ozlabs.ru>
Date: Wed, 12 May 2021 13:48:53 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:88.0) Gecko/20100101
 Thunderbird/88.0
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for
 preprocessor
Content-Language: en-US
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Nicholas Piggin <npiggin@gmail.com>, Nathan Chancellor <nathan@kernel.org>,
 clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org
References: <20210511044812.267965-1-aik@ozlabs.ru>
 <20210511112019.GK10366@gate.crashing.org>
 <1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb58563d@ozlabs.ru>
 <20210511231635.GR10366@gate.crashing.org>
From: Alexey Kardashevskiy <aik@ozlabs.ru>
In-Reply-To: <20210511231635.GR10366@gate.crashing.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623
 header.b=gBKUHOq8;       spf=pass (google.com: domain of aik@ozlabs.ru
 designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=aik@ozlabs.ru
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



On 5/12/21 09:16, Segher Boessenkool wrote:
> On Tue, May 11, 2021 at 11:30:17PM +1000, Alexey Kardashevskiy wrote:
>>> In any case, please mention the reasoning (and the fact that you are
>>> removing these flags!) in the commit message.  Thanks!
>>
>> but i did mention this, the last paragraph... they are duplicated.
> 
> Oh!  I completely missed those few lines.  Sorry for that :-(

Well, I probably should have made it a separate patch anyway, I'll 
repost separately.


> To compensate a bit:
> 
>> It still puzzles me why we need -C
>> (preserve comments in the preprocessor output) flag here.
> 
> It is so that a human can look at the output and read it.  Comments are
> very significant to human readers :-)

I seriously doubt anyone ever read those :) I suspect this is to pull 
all the licenses in one place and do some checking but I did not dig deep.


-- 
Alexey

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/80ae1561-ed8d-cf3a-f3bb-d89cd07bfc24%40ozlabs.ru.
