Return-Path: <clang-built-linux+bncBDRZHGH43YJRB3GU6KAAMGQEQTHQGTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0A431029D
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 03:16:13 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id l197sf5313987ybf.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 18:16:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612491372; cv=pass;
        d=google.com; s=arc-20160816;
        b=0HHVEjmIXt246V9FbfffPyqGauXpS+mExsRM4Urbp1GFMmy7utKIh/TdAPQB4+2L+q
         WaqeMLviUlvb+FOp2nhbcZ3f6VBjm7XGNiwHqYodRBWz7klQ/0H+ThBDZXyUrgMUiwzz
         /6i4p2qafADp3RT2CPSVAzDZIDRiJQDpq+cbOeSJNIs5B13xxBTfgHzigmc+QB9gGZJH
         uWs6qm9ACZTaEwj/q+A5by+cobP5bKupBmfQYsTmzmjfJ6X/wlEIXxhJ6JpJ1z1bMQCw
         Kdk+KkSJKiI0PoxpG/RelSoyWrcPayN/oynm0FQ5zOmBavLsgwU+uGY53Bg0XfA2RGbj
         L/jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NJqmoCYU1AaEmcKt+2NCGHU0lGlKEfJL0IIw+dY9QIk=;
        b=F7CBhr7YRjtGDcSBLPcUjf2KvlrF4SbOv1be4s+KBYzAtPMVZSUl8YePqrVrDPTmvJ
         +8gblx/xqBUKbq5szSxzGYlac1bzVI/iZBqzCR/CcB+92BxMhBYBNPyRttlomNLCPdce
         K66oUAM4b/EnZxwFQ1jKEN3YxE1eFP7FTyzhjUpIL4bQbZZjFaiXjLAisvM3TMykIx6s
         V8l/daHs+VqUJ+0dkdAdbSOZtjbZKfCTlSDxjBi42tSI5ghmkFaVV8uN7ufwD+D8gNPu
         005UVJu2hz1CLu3xmzd80bvZ9tDOD80ssTHb2OvqYS8PVghV3CyL4HBgAnRgxBBx6ew6
         wLEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ILVNDlHu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJqmoCYU1AaEmcKt+2NCGHU0lGlKEfJL0IIw+dY9QIk=;
        b=R3fRII5Ao47foM40+sRtFqZMaWxR670utYxBJfir5aJ20zIPR+xzMjg5pEHKtpLFCB
         TfEOGxE7/QPX9SbBCNxwKXtvIYDlf+X8FGP2eNoA4YhurmrbL1EqB6db8nLLkRI7Amr6
         9+MWwiVLbqmC+hmiGTGjW6HQ3EIXLFJCHpZVu1OOa39xE25XjSMuDWopf8+Zp57vvaEF
         EVaqnoMdzi+xaZfKR21zoB3XUHYHRSQLOisHGvDhBvdcAL8ApnSdB9inIQK+zKy8woer
         crYB9M5yJ9dZ0svNBNBmtPTxnjvXKbh//9qRGZWTXXgNeXULW6petAkkWRYeEH+xBASa
         gnLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJqmoCYU1AaEmcKt+2NCGHU0lGlKEfJL0IIw+dY9QIk=;
        b=IMGTF34NANQJDhwGN/LWpWZi4miQuiTdCK7i6NOYDP51/TYSgEoNAvRhTsQMEK+Qha
         udQgNWN4yAZWghQuH3YdEWNt18RdR69fwBCD/2zeiXzkGg3k8Ix8+sMjnZXXjB00IVnQ
         m7ItboOmdQQmJCo9XYoJhDKigGBbAmR1FCTZf8WZxDEx/POaffCnwKCbNwdA0AfPGdrR
         5N++XwoPibkmleq8+q8Sz5ZuFBFCODf+3Arn+R+qQLKH9hbKRrYK0fkPAosZ7YgS6rD3
         GpcWzYma1BWOzvjfoGW/F5wge9d82pyJm4mlwdY/B0oZhVPES5IhevF6mhmHeg0Jg8GV
         UEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJqmoCYU1AaEmcKt+2NCGHU0lGlKEfJL0IIw+dY9QIk=;
        b=XzS1A8uCpTziMBKFkYVbMZOCUSBBi5myPZKOm4MPhWEv17N5YGm/TgdcboTvBudDh1
         IXe5mWH4TvGWjwlQv/uASBdj2DZb/uZUVkDGoGs/HSXq3S4f05WSoC9KEmZoRx84blUh
         zBrcjZ26XUQr9aZ8SfBe4uTI+eY6WuoR4eEtxW5FLn08e3m3TGIR2FSu2rK1hmI+ksf7
         qK9PwKn8JnpeOlw+IWxksB+CNb+YRKq+shFOC/PiU82Qucdi+RT1Soz/6SsWz3CghYlw
         i92NhtKIfk5BYY5rl0SLdGEA+XM2AiE/RnY9bcb9cNcHJ8TrlZl8yXWtfBe+miPbP+yE
         p6lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YJwdd5533w75N/Xy6D7YS9Gha7rgsj7SALBuvUeUEepFWydbz
	RRU/mW+eVQr9Jfic8pGX1w0=
X-Google-Smtp-Source: ABdhPJxmM2yZ3u1fdPGG52k6q2xO7Dbgad22Z2md8+24mBsNi9rvT/tOiTEG+n0wJFsrTpckojWoBw==
X-Received: by 2002:a25:e606:: with SMTP id d6mr3349527ybh.187.1612491372669;
        Thu, 04 Feb 2021 18:16:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:af4a:: with SMTP id c10ls3621099ybj.1.gmail; Thu, 04 Feb
 2021 18:16:12 -0800 (PST)
X-Received: by 2002:a25:e6c9:: with SMTP id d192mr3117547ybh.211.1612491372242;
        Thu, 04 Feb 2021 18:16:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612491372; cv=none;
        d=google.com; s=arc-20160816;
        b=epCR0Y2Q5dK1Jc9CG2dmFIBH7+djRx2+Z37MBlBKdBApXQyk8NbbQkd28+3ZeUsUqz
         NCVWUYIjBl5ETOp3xJ/+HHoB8hng2Trn5QBwC+sxURb2FCfJaf+W5QjW09lidkFVuWf4
         tgaXCCjuXvjUQF/WC4q1xloazgpeLyuhrWhbgJCgbkhNDgEIz8kDYo0NDxtcGxRxTd6z
         igIs4Igac2Vv0IuuaFdBV+22mSMKc2Sjp8Ulz3jwjTYKmqykCl04+OLWpZa2FDk8WZl2
         JgnzW3BPs2JY8Ah74pFXSCghCSHhEesKF5up93np+fwcx8aMqk22CJJRx4Wul+Rvu/yT
         gZKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W4bHzmnHNSpS2k9vNvZu4zu4raX0oSz+MNILeJii1BU=;
        b=pB/ycWJB5XlYTheAoCPMPNM2WUTjFazXtKU0ZvQx23sGbDLhjZyOUNhvdvmmRDIHGp
         wbLgWLDeT9W6RzNb6g7MqXQZjulBVg50W7bsBGZkdhx8cuKJdS55uS+1/O6qyTuL9TD7
         DjA55BVpa7xO7mDHWZu2buxWuv++nZvLN5sD/No/Kj5Nz34ogKV3WXSDR69ouZ7sfgN1
         eGa9P2hzBUTnigSxFbvQyxXuQi0LDSS+Uduc9FCSo2mwMpJu8XAwYcAcS3F1TGzlpPD7
         UOalkpkOWhuZDQvtQgFGngdU8meb5BedtCG5oyEanF/3UO977CrQ8MRcNXK3hg8u0xH+
         l1sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ILVNDlHu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id k12si439087ybf.5.2021.02.04.18.16.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 18:16:12 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id k4so5271624ybp.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 18:16:12 -0800 (PST)
X-Received: by 2002:a25:e6d5:: with SMTP id d204mr2981826ybh.135.1612491372055;
 Thu, 04 Feb 2021 18:16:12 -0800 (PST)
MIME-Version: 1.0
References: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
 <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
 <20210204223504.GA428461@localhost> <CANiq72kHrEiYi-=rU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ@mail.gmail.com>
 <CAKwvOdnbFxge108d1ka14WH=OJ6aqHKJa8==Kuq50RHfKWkY1Q@mail.gmail.com> <CANiq72nsSxCjhmOhTVXxH1qyAftRbK5db0OCR7U9YcZx81PsbA@mail.gmail.com>
In-Reply-To: <CANiq72nsSxCjhmOhTVXxH1qyAftRbK5db0OCR7U9YcZx81PsbA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 5 Feb 2021 03:16:01 +0100
Message-ID: <CANiq72mWT25=Z+L2b=_G7u_NeEwR_CKmZCD_33iv88h5f1f=7g@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Behan Webster <behanw@converseincode.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ILVNDlHu;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Feb 5, 2021 at 12:03 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> Let me know if you prefer that (I already sent the request with the
> same name as the google groups one, but these things usually take
> time, so I guess you have time to change).
>
> On one hand, linux-llvm looks best (and follows the other linux-*
> lists). On the other, people know the project by clang-built-linux...
> So, up to you!

They are fine with both linux-llvm and clang-built-linux, so it is
your call. I think the rename is a good idea if you want to give a
feeling that now there is official support for LLVM and Clang in the
kernel (and commercially supported). For Rust for Linux, if we manage
to mainline it, I was also thinking of a rename in the future to
linux-rust to reflect that too.

Also: do you want to try to automatically import the users? That means
parsing the old emails and subscribing people automatically to the new
one. It is more work for them (so let's avoid it if possible), and
they would prefer to start fresh. I think it is a good idea anyway: a
cleanup is always good and people may find it intrusive if they are
subscribed automatically, but the option is there nevertheless if you
really need it.

The archival is also requested (although that is done after the ML is
setup, by another team). It would be great if you can see if it is
possible to download the entire list as an .mbox file -- that way we
can migrate all the old emails for posterity. If Google Groups doesn't
support that, perhaps Nick can find an internal way to do it ;-)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mWT25%3DZ%2BL2b%3D_G7u_NeEwR_CKmZCD_33iv88h5f1f%3D7g%40mail.gmail.com.
