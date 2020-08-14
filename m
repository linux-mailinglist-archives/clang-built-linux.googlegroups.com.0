Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOVR274QKGQEASRZTUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 517E624427B
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 02:20:11 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id p2sf2124740vkp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 17:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597364410; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTywYw6IUilL5d6E86aHAC7rMsGs5eKW/dsGgR1y6ErDwLnwQinFLaisXejx8qVMu4
         Wqo3QFiMMSbK419w1rQzpu2abvmnseeWlmyQ8vpDaPg/92gy5sV9gEEXcRTyExATKi6x
         2jxAZwS9o4cF8lZqd+UJTsT6Dftisqqth1PEXtyV/nCXMMou54cRQDAulbGA06RrFP75
         bxuNvu+VVkEhyFZpooh1TW9C5kPjq6t7m26NgStNO4BDPfDg4kNcFvJgop2XDnHPuK74
         LX+Q75JYGMsgXMBQmI7Nywic8A5lR40/0ty7sTptSFIBR/8v1aPkdHenxy7u89EC1UW1
         jOVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=6eg8J7v8E/DTmCeYi1WgekivBSi9vAMRkrSZPUFGhdk=;
        b=S+NdvBaIRajXbmX5EkoABfzPrOFlsKQ1RKoS9WV6doX48ANeuPGwDJnnpRKIR3jIlB
         9ItZS2l4qaFBK3i++nz3KiukFwVo2AqghvgYVagZ0ZxhHG3B6drdbhQL++sgyFx8kZHs
         Fmns+/yINMEcoM+/h6QVa0CZit49LLKKgW6SddgQVL0+gEi7vJEFDeMrray6C8saITAr
         O5SNzLzY5rxgbICqzbnhVyaUrSAgq2AoF8zUVGdSLqdaEwWMcL41kuWV83Hvl0quepjc
         ku3JFWN7e9uV6UqvIQ4JYzsTBCiF54KC7ClKJLGh9JINd+ahjzKuwH7wHb6QAzyOnNUo
         cOQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y753bams;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6eg8J7v8E/DTmCeYi1WgekivBSi9vAMRkrSZPUFGhdk=;
        b=JsDdiH8I4Q54iMEbqt0Rg8hy1Klr3n9JRXRHEEVZ3nTCSa6+zb76eTrN2fAVzKtP2c
         l41udEd8LoYLvMuIOJDz3zsj/Qa20BCxqakSfn80WK3DySg5klnFSFjtbdZeaaUPjOlZ
         LIhNuWE3p6tbLyHK3LxtKCoq2t92Fk+CVGBzm/M9pKGicfHos01BRvF1S08y2WEFEK5K
         0d/VVtV5ZNXxd/8RopGUR3nKxuBUrZb6AHrT0gt+IlBvZd5aw5YhsZZd+CyPyQ8Xh4tg
         zEiQT4JXK0axrqVj2liR50sbSH0up1iunkcNC10RIhl2O8DDJhpyMMHwXyJraq98F1us
         B+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6eg8J7v8E/DTmCeYi1WgekivBSi9vAMRkrSZPUFGhdk=;
        b=ezD5T1yJoVqpHvNzhDyhPouDNBRl+VAub6bF+OxpZMSr4Tb36FtgLB04foU2gfqVwh
         UIdQLciJwlijrpW9/SrZh4OPZSYqebQQlAOc89R9xAhJ8c5UEkF/athFIz3gCK87gHaj
         2LOLzP8A2xrDqVAM5f3YcGxPl/PKWAcNsRoWdJEOTlCDF5E/NpCze+DH0jfcvYZKV1MI
         CWwBntkut1swH2jIWCIYnZ2BFous4ZBaAxK69zkJ4qWV/n9wBpCiqk+/QXc37Wgp8O3E
         zy/eFS8fSbEwVJu+UpHEroszHCjGR5A0Ta0r0nJAOK1vmHCA3g/a7QUNNugp6u6kvvdY
         GA5Q==
X-Gm-Message-State: AOAM5307yjqkV/Lhvgf2K2FwE2qQA9UoF8OJdZ9wjENbQu2H9FlrcD9L
	Lo6+jxTya5ZYm7oKH0rVhN4=
X-Google-Smtp-Source: ABdhPJxXkY24lBeN9iFqb32LJT3xWj8LDIN8z9OznBUNkPND5UddAUvwhkUaM0XZQ6+VhqVcDTyuvQ==
X-Received: by 2002:ab0:7153:: with SMTP id k19mr3457506uao.55.1597364410053;
        Thu, 13 Aug 2020 17:20:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:153:: with SMTP id a19ls899455vsr.11.gmail; Thu, 13
 Aug 2020 17:20:09 -0700 (PDT)
X-Received: by 2002:a67:ef1d:: with SMTP id j29mr65828vsr.139.1597364409780;
        Thu, 13 Aug 2020 17:20:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597364409; cv=none;
        d=google.com; s=arc-20160816;
        b=VeRUbjLHlvfXsm1fid3VGNsOezDp0aZUUXbN6Npqlh4cCzhqNfWjJSoa8yvEWtRQjQ
         KF+EW9l7tSMiq5rJEfL11RNbI/Uzaj7G62DNV3VsFQkAqNBs8DozzlsQKb1es8aF0cYx
         En6Rw6UMPCZITbcpStIGQesMg4hPioIKrpUzO58kwVHo4YA1Em7YGig2sSQqdB8Kdgu9
         05j7cJEKf3yovFh+SaYEpqb3+6bk7PaW0+jxy/zVNHbO+TbWhff8wV1HjPbGF8AjL7oN
         XvlgiwmTCl9iTJ6lIfjcm6aBCfmU767Mt3l81BR5GYP4t5QAJ3Str7hd78PRgmCEbs8a
         KQhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Mj6XSF/AMkpy2JD+Ak/h8O9VDyXSPtfLNsJ0jDMexyo=;
        b=FsbBmy/C+iPw3kRaFsLJHEjNBFflTgw4nWRfVsYNl/GeVOSX6gpFJ1Kx+l9brWxw7H
         96px1MHjqcbHGl9emwp4DsDtuj997mXa49laBPYSvcrfxvEk09FvvcRUm7YZ0XMEP17U
         Ca3GAlphVeBDbXVeU/ormPAXJZKXJfAB24xXUPs1UHDPM23rz4EuEdtkJh6XiRciv4/h
         Wa8B6q1+0Qs7KCHIo8jzjj4CquU8rbNXWdhnvi15VPhNT3nv5GYtRmZ4AcWsSVIS/8M1
         IewdF5lOx4JErelhG2skZsZrk6IJstJMcdCyW51U3Jc0V3OXLPNHUJVlSFp8XbpmCflT
         puvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y753bams;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id p19si540263vsn.2.2020.08.13.17.20.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 17:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id m71so3691619pfd.1
        for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 17:20:09 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr88305pgf.10.1597364408472;
 Thu, 13 Aug 2020 17:20:08 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 13 Aug 2020 17:19:56 -0700
Message-ID: <CAKwvOdmU0EJq3Tc2vkYhDTvoTVG8z-SjqAfVWHqyTvpypoS+bQ@mail.gmail.com>
Subject: Your LPC 2020 Credentials
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y753bams;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

The information you provided during registration has been used to
create your user account.

Please login with the email address you used to register to LPC 2020.

You will need to enter your Registration Confirmation Number. We are
not using passwords for LPC 2020. Your Registration Confirmation
Number is unique.

That information is found in your confirmation email titled
"Registration Confirmed - Linux Plumbers Conference 2020".

If you no longer have that email, you can retrieve your Registration
Confirmation Number information here:

http://www.cvent.com/d/mnqh96/4W?ct=50221cf5-5496-4c34-9ec0-3b52b1bf1204

Your full name, email address, registration confirmation number can
not be changed for the duration of LPC 2020.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmU0EJq3Tc2vkYhDTvoTVG8z-SjqAfVWHqyTvpypoS%2BbQ%40mail.gmail.com.
