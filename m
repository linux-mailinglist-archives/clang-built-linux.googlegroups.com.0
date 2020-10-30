Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW6T6H6AKGQE6SOZB2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9E2A0EAC
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 20:30:36 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id k103sf2335051otk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 12:30:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604086235; cv=pass;
        d=google.com; s=arc-20160816;
        b=CCK+/ReMhMiP+rHbQ7D95bG8QtDQ/Np9yTT3kl+SJubTT+CEVBqI3wuuMsI1D/R5ir
         RQoJjJYL8qVC6xaiQooNravywYUFvCfolLkDDhQkBt+0Kdrg/nqHImumO/98+fGR4VPN
         pA18FOuiQDCiwIM5RG9tYSKn7oGhNuIp5fM3Ciu0v99EpOsBnpUtWUbgKkSwlxYQmKDn
         jctxDpC7ynYT7XQioxh1AHprwbQjlkicKEeKtVMZmO4wALU2/yy3U/kFo/idCz0/8oC4
         jh1ZQfc141GVdT37mfIsCNfbsyJZzufG0wm5pWtjioi6VhwUenlCpayo1l+P39ww1xfH
         irBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=F7OKW5tCAN0RwcES+sUnyZ3fCX7EJoGsgB/hM2Q2ZD4=;
        b=HzlW0wpNncnOO3eI32qWJeG7tGEQ99d/P4JW6OXDezZSr6aTkpf7WjY64KSekqngf/
         12xbSdIe3s05SE6lA7CdlBlnz9WVxATb1hk+SN4Vvoe6fkny0cqEyq44iSzaQxOFlq8N
         UoHts1PNvv+7JuCvd5xa4aoxX1vG3/6g3GJx4dHtqm1R76SkCYYyA9J/i4c69h67h6SN
         OxFa9FbVW6dUK4XcSZ9Wzdqr55PRsvxgzIYEQ5AzGkdQMomlTfb3LeY3Daf2Av1KAErO
         f+S/ici0c9fmuqCUYIJzY1uRfxnVyqNFFinDb17QFTK+U4mmLg3mBxX4H5Z5iMGywhKw
         f+Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PT8GKpUx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F7OKW5tCAN0RwcES+sUnyZ3fCX7EJoGsgB/hM2Q2ZD4=;
        b=TCfejlA4kctpIYA37/2rInkN5uwLjHGfac0OLIyXE+WZlaln4FgKHQU01BYNZyTfz1
         /aLSe7DbcWxyg36EcaLV7W2p4bP9rRm3cV+/N4xXMA3VcDWQTNnWhL+ubg4qBuqWqA9p
         K0ZTAeOtz/QtgPGo4e1ORHkIsy030m4kkbL6O+0N1brRGF1SK1mRhKfP8/OlBYlEqDAP
         GYjqHMeYQQlRygCopdFcpt2nkGVvPRIWatvk+GpweSJc2PRXLLf7KVD4Egj8qHgQU9lz
         CxvrL71jf5WS3zlX2gx5HpviAylAg9844yeZxownZQ4jhEBUmBzAQ30SI1JqqT7v5Qbc
         yVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F7OKW5tCAN0RwcES+sUnyZ3fCX7EJoGsgB/hM2Q2ZD4=;
        b=AEX7gGA8ZZHU6ameoDXGUg2EYq9ZmuA2k0Zpx93OdLdQTRswhPypf1PmWeYlB+kSPx
         7ZnKC3dFLtLn5v2zqg+0EEUuARajflgTE/Aa3W+jBQzFOjuP858hGz02/EayuM+5vML5
         RwbQGDmu8rWZeBdX7XJREvWdC7b9rKy3brJI4J+Ex1+1hVLKoTxRU3LEkODxlwZT/JVw
         kg7pJ6C2OdqKBpl/1QLGVvNfpAFwPF52xJQULf3GEk4DHKR69IjRTn2LJpCQ2xmUDGrX
         Li2XktSLXvvFfYMHJSkykGkjy0drX0JFi2z3yPYi4PfTSJXmb+hvBjwtZ5qSXb0tUV/3
         W9bA==
X-Gm-Message-State: AOAM532a/enZMwpCCghoCh5o79QFfCuSgV4FaMlVSfksHM4fYsg3HInh
	ze4CweQzRKvIoJ631zZNyiM=
X-Google-Smtp-Source: ABdhPJysMN1lFmObCuUmWgEXLRtBPEb+BfHMXxhWwi0hVuICY/rZGxaGnv5eBw1vd0upO1pEudrGeA==
X-Received: by 2002:a54:4199:: with SMTP id 25mr2587751oiy.50.1604086235082;
        Fri, 30 Oct 2020 12:30:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:c1:: with SMTP id t1ls1844918oic.7.gmail; Fri, 30
 Oct 2020 12:30:34 -0700 (PDT)
X-Received: by 2002:aca:410a:: with SMTP id o10mr2819833oia.72.1604086234721;
        Fri, 30 Oct 2020 12:30:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604086234; cv=none;
        d=google.com; s=arc-20160816;
        b=C0Jr5k7JYEpR5g9IsUtp+6GRmHjAb0Zp9grP3BSO1AWF8rWAXOX++4hhLwoVAdREf9
         tP8Sq1E10fL9OQUvNdImC4eGtTTCimdv07O4W2lShXMYeRmg8kN76F5V2LwQPCjAJWE5
         fkdMk8jxOp9Fp64Rq16LD2c7Y8lYoABnKqH1KqqvlKYbzh3ZRTjnWkB0l059FtvR/G98
         Jrw/1oZiKcAiRk+a5pyLTsoBl0t2gspO5kUGCNZWxaEeUNMqYhezI23m3+atU0qatXab
         zZDzMzrzTjD/ydVziUQRNsRT6vRKnBkMn4evMHibhLx2tlPOkm7S8Wa/Zd/Hh1oHU6LS
         Qh7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ysr7bKM2lzNExseYzJ/9rb4f5LUk91heylbWQW32gL0=;
        b=A+EnxbxpzsSJcjhMLYCLhe0qHQrF5qXCM5MAB/z8JpO8RxbFC64WhPf5uZq5Xw/J/1
         lmxpLe2zKBINie3fz1877VTwfiA9pYKPWxJr7ITx4vKHmWfOIPP22XIJH91jL0N6BK4+
         nVmjzN/WrEXKyN9aiCqwpuvg1yFrBaZKTQjoLUu3Q2p4nFrhuAytqLz1wueOwLg8rIx/
         L8eUq5VcX8X+hNshs7f5wO/qqURYl1owzvAwpC3BCkrXHhfnXmuhZLDd3GnFGxt7QJ/V
         Bv7V6LDg70VCgNOiS00GGX4uqLC61YZvbhCnsRlxrG9qdD0H18H/i/tNaOLDU9OTeOO+
         4M4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PT8GKpUx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id o22si631326otk.2.2020.10.30.12.30.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:30:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id r3so3457943plo.1
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 12:30:34 -0700 (PDT)
X-Received: by 2002:a17:902:8a8b:b029:d5:f871:92bd with SMTP id
 p11-20020a1709028a8bb02900d5f87192bdmr10310927plo.10.1604086234238; Fri, 30
 Oct 2020 12:30:34 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com> <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
 <20201029233635.GF87646@sasha-vm> <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
 <20201030004124.GG87646@sasha-vm> <CA+SOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3=r5jrfA@mail.gmail.com>
 <20201030014930.GB2519055@ubuntu-m3-large-x86> <CA+SOCL+b_qvvEHFz5g416Kdfzy3nZQnizow9-C9k1pw=ZeoKJA@mail.gmail.com>
In-Reply-To: <CA+SOCL+b_qvvEHFz5g416Kdfzy3nZQnizow9-C9k1pw=ZeoKJA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Oct 2020 12:30:23 -0700
Message-ID: <CAKwvOdmK5i9debF+8X6HVmKyAeVYQOf7d1HHFLNUCGN-DhhitA@mail.gmail.com>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
To: Jian Cai <jiancai@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Sasha Levin <sashal@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PT8GKpUx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
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

On Fri, Oct 30, 2020 at 12:24 PM Jian Cai <jiancai@google.com> wrote:
>
> Hi Nathan,
>
> Thanks for all the tips! I have fixed the issues mentioned in your comments and used git send-email to resend the patch as recommended. FYI I used the Message ID of this thread but it created a new thread anyway.

No, I'll bet you're using gmail which has issues showing threads when
the subject is changed or is not `Re: <old subject>`. If you look at
lore, it's correct:
https://lore.kernel.org/stable/20201030014930.GB2519055@ubuntu-m3-large-x86/T/#t
Just that you forgot to cc stable. :^P  Don't worry about it; I forget
to do that still myself.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmK5i9debF%2B8X6HVmKyAeVYQOf7d1HHFLNUCGN-DhhitA%40mail.gmail.com.
