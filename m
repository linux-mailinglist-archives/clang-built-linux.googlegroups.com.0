Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU7YTLVQKGQEUIQW42A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2222EA08C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 19:39:33 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id p2sf390480ywp.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 10:39:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567013972; cv=pass;
        d=google.com; s=arc-20160816;
        b=H/Izf1/o8iWREWGVU2j1u07Uo9k/SHf5w1bVELbwE6y0Xn9u5mLEVeqopaU+Jh+hu1
         Z1JoWbQBhH+/LVt680AlcBeMI5BwII8BmuP+R6oFug+3g3vBXWYHdSM+4WH+jkca6ljg
         T4RYll+amv5RcdnYou42J4eXa8DRVvT92dJv4zydyG3SFVEVk1NOVfCln4I1i8hBAQvK
         nm3PgNVklNzwZMeED3lN3v0j2LAvRju3+VqWfrsA9VjLHHOgaBLJwgHNP06+kP475Z6t
         AqryLg0HNDlLhGgq9vL8w1dNYynzQ+tGw5/geH7fCw73pDLZVSutkZ/dKOdNn23ztLS5
         K3FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o11STxSpZB0b427bSh5Of2fnIhtp2ueApwNRYjTOMWk=;
        b=YTmlPx/4SvLTCyj5VGcDndmAPfi1gUYam7T9HB8HUdC1O0lGAhrZ05Q5oOiz2Y8Gjf
         cZqxAFCt8LSUxKF/K/RWPQ3kyR/z3KQVwfcqS1YDLxQmb+fh6qvlrBNzA0JIpWS09Wtc
         4JLWQxd3Lk5YZMpsRoGufgjxAX0Yx9U9jnua4vwRyh/cKsJcqLlkymey9LrroR+nEZ0D
         d4ao/4lcWiCYpaD7pqBDTo5un6CMLqJRVWLPccuwsj+5ri1Wn2whD+0/vTYP+3ATWH60
         ZjOz0/MsEUZt1XALEOiSY3jyZDnQsMlerTb7E5VcfM0u/r1hZjnJaCkLHu5+9WavQ1A4
         +rPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IGR9CiXH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o11STxSpZB0b427bSh5Of2fnIhtp2ueApwNRYjTOMWk=;
        b=MMrIGhSN3RZe2NmMnuOP4pyLdfUFfXs3UknSNe1cGpAeSnrJp98GoijwWYdUEY/SKq
         Ks6J4BPCkxBd8ZQovCdFe9iFtCcgDgbSbPL6j6KlK8oSpPeJq5q/DlbFZsUPZakP+/z1
         Mu33t2wi3m0bkNQV2kSfEM912l/o1YCnLVECiXQ3ZajJ9FmQLzdg8l70JdJmimGHuo0q
         +UfyUhwnYAI6WZOv7lE/pTld1H1jxTGmLJjXwyr4BSHhrF+pwW2XkaTtDSYLzu70u8bo
         H8Lp2kZrdyp6p0f/lHCmxWqjIom3SqgFZqMmbPjPgkBMQ/jwb1FiWj3VfZB4CDtgePI3
         jFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o11STxSpZB0b427bSh5Of2fnIhtp2ueApwNRYjTOMWk=;
        b=e0BoUNKW9wyR/gN3dfvi+9aYUY9rC09Q98NS5fkqe612H+uMSNnXaElMBh2s6YsH5y
         bSJ6vDVMCJKsKv7GMPVT3/cY3tKFjXe81aibbwr7fBKg6gBGxgbYcUrwl/QmFuGwKtZa
         qMFDsQi3oAGclbVwz53mqAgmmy9lb3Jn0UOpRcmpVGkvljC9ZhUXuM7ZQZ3fHdoVAklG
         E8tQK3BiLCGboll5VtF4eMAwBOvmv9f9iVfuDJfBckOceqXTzzpiP4GO9rGfiiViHjKT
         SpDttZ2kZDrtc40k8PRCadg8ods2JNvvCDNa5Ak8gUkFruhCokqD8fgtit85rXKNXP/a
         g8IQ==
X-Gm-Message-State: APjAAAWzrE4iLPUJIWQlBJd1kC1ybu8LXsvV1lNvg2LkVCnJyiGM4JgC
	JULMMX4OqaJCHgaSZRjyDQU=
X-Google-Smtp-Source: APXvYqw83ji8UxZ4oAez7mJBsxkCIMxWZuXmmEp0fJVdoWYZ/nXlPbPbkDyxPChwR3HSovQ53yNKVw==
X-Received: by 2002:a25:90f:: with SMTP id 15mr3891972ybj.344.1567013972064;
        Wed, 28 Aug 2019 10:39:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:b288:: with SMTP id q130ls549278ywh.4.gmail; Wed, 28 Aug
 2019 10:39:31 -0700 (PDT)
X-Received: by 2002:a0d:ef45:: with SMTP id y66mr3487469ywe.498.1567013971838;
        Wed, 28 Aug 2019 10:39:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567013971; cv=none;
        d=google.com; s=arc-20160816;
        b=eSqdcPiNeg1lydrAk5j2TVNobo2fJO1LfASn4fqxfzEdM3AcHJ0m+ilkcerf4JKanm
         MeZlh1F7/9sEwgGfktcxVt/nRIxEPCTgChof8io1L6a7vzhUN2RdVaQfJTmv80sO0ijl
         hseXwhlBMYWdoSIWgonzqFnEjNM4hhCw/xFIzB8iuHCjkFPWErj3eUqqqg/iOEQk327o
         BbTTbWNpprJuYQ2UVwAdO9+p/7SqQzuFkl1Pts4jUVn0quqqPQebYGRjCY3ZWNbGOFsD
         O04vSitZwTO5TN3lFLLVWjkFikhDNSAq7WwPd0+4rzAJChcbhgyOi68Er/u7QeuphYoA
         7/uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GuCbGVwHRmEGqfMBjZZ+2u4NovL8Rt/IpkZfKDrFBI8=;
        b=LLSAxBG+cINvVab+XoMcfiMaa6pv/fuopTsJsDfDnZ4QXPBwNUSmHdb8qfceDBoYHW
         YO5a5uJYHouDXCuTZ5QCKAM969P/bZh0D+Vq6AOKOhJvRQgoHoKEpc3EowavdafgccKI
         phD0HIiBA7d9yhr37/oYUd7xyUSU9taoLNhGN6zv3+VYO/tHyKRunSmsEjlP0V1jiskE
         VvcY1lYTCwOmU0ucyG1zhctoifnrLwOjQ1Nj40nF0Iq/W2IrH48MBLwqk0uzsgyAh1jv
         JC3xPmlo3aWBi41YwoysOZw72Lwmgw7G8D9EuNPNHpW9ILYy/68bkEBPMW14GEt5eYuG
         plxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IGR9CiXH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o3si111670ywa.4.2019.08.28.10.39.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 10:39:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id w16so247268pfn.7
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 10:39:31 -0700 (PDT)
X-Received: by 2002:a17:90a:c20f:: with SMTP id e15mr5304440pjt.123.1567013970427;
 Wed, 28 Aug 2019 10:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190815225844.145726-1-nhuck@google.com> <20190827004155.11366-1-natechancellor@gmail.com>
 <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com> <CANiq72ndWZWD-KBT1s-mUxQNa1jaD7oDaCB2+NPiT1chf14Z_g@mail.gmail.com>
In-Reply-To: <CANiq72ndWZWD-KBT1s-mUxQNa1jaD7oDaCB2+NPiT1chf14Z_g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 10:39:19 -0700
Message-ID: <CAKwvOdkuDPfOusJRneeTzg7tZ4VKxaRCNg2SgmjVas58cDwe8w@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Do not enable -Wimplicit-fallthrough for clang
 for now
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IGR9CiXH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Aug 28, 2019 at 9:45 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 6:21 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Applied to linux-kbuild. Thanks.
> >
> > (If other clang folks give tags, I will add them later.)
>
> Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

I verified that GCC didn't get support for -Wimplicit-fallthrough
until GCC ~7.1 release, so the cc-option guard is still required.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Thanks for the patch Nathan.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkuDPfOusJRneeTzg7tZ4VKxaRCNg2SgmjVas58cDwe8w%40mail.gmail.com.
