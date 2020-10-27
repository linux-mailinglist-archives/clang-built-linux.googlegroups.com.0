Return-Path: <clang-built-linux+bncBDRZHGH43YJRBBGN4L6AKGQETOBK44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 298DC29CC7D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 00:00:22 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id c16sf1548593pgn.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 16:00:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603839621; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8Yg8mx0fxNgIQbpKZWvp/e05dz+RWZMfml4nKNKDRrE9WUjsJGQ5NCyYiVx75m5L3
         bGgUyVC8WEhxsiSIPws+YqBNp3740yWphcene6c2hlOwG8IiAwAhSd8h6w+nIP0toq7V
         l9gB4SO4sy905Ndemq4Kb60xCq564ULOjmHtPHmHq9BQU4jy3BA6UciNS1K5VqjgxrqM
         AcYT5JLwTqSVEOKcD1WTcwEbhdLRWIUgsW1RSb7CGO0llp0FolaTA89Ta5EAFZDfWj3b
         waaXC2J8BB7w2HSZu00Nq9LJTysMDJiRxSFSDGcONOx0GHCoTU7Jv8qx7RENtIvxSEip
         BH7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vTqg2afQkvcmdLWWcBg0gv+X1igFPm7THoCZluHr8nI=;
        b=KrxnoUFGpQFLd3RXkiPavXd6xbobd7McjnLDsYv9TjJUenRtWW8dR8S6pTnrwxjAUK
         q0CZDLUhhkH0ASp51mhqk/owUZ1aVnB8ypu8KLcbbIFQDT5kjX37dVeCC/bTOZVs76ws
         OwsSHsfnioscxQBi8B6cIQKDDv+a8JmBXRsHlvlHVBV4Dke9QdpIU6LqpmgaRDNIvodT
         NatchAZXhVEZqugcHE8Jbf85flxx/O6b5aCw4siKm6OTRLZwVXYCaA9Yfdvl67ccLlMr
         sVNJguCJ3uul81CflfCNk6tLtcELIumD+NziHxNuH9Mkb096XeqbgHb7jln/ptZjwFZM
         hfig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PtIIj7+E;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTqg2afQkvcmdLWWcBg0gv+X1igFPm7THoCZluHr8nI=;
        b=OOZhjtsKDB9Q19V7RTsTzWy9q03fXbYDjwJLstbGZuq/O9zWiNhz+3lTVM49tqS9yB
         O2GiF1kqMiQTNrEVGGp3nf6Hi6qnPwndD9PufbB37zxQu9wFlyIcO6/419EF6IXbalKf
         s4F1vpU68ElqnWzlgWAQsLxwcZ/fEK/k7skhZRd3oidi1llBXEW5y2MceGnxC37ov8st
         mUzPLhHv96iOEiy06rbYMHaVn6zXtKKPDOnLa6APgp1BVgJmk7O/NtiKB6mvuG4Pat9c
         8GnJOiDfbET7kCuqnfxQtBHZ97xjiLICfuB4KJrq4oJvELHSys4RPhRx7aUsC+pOTDOU
         enyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTqg2afQkvcmdLWWcBg0gv+X1igFPm7THoCZluHr8nI=;
        b=VwevzSjXZHRiV914CcmY9nPY7k97zKdBmnw4IYwl6yrDM+kXLfRgmnc7CchCBnJ9Qk
         L7cLRhUDKVRd48bQXIY4lUGpzgJSOFjj6oUkzy+oPgYDX6NqBAPpuJXcmaMocC5MIviU
         NWtmX3XqEp4BZMUndHPIa3A+CvVDOIZwRx4BVhsWLyzzjx5E88JlKQmB81Ro1gZi7ai+
         5UvCt6TqfbbbjUG1W2swzjCnEidDfQdoc/g1qm+ENBurP4r2rNAm8t7KqNLNYxeyHThp
         BViF8P2Sf0/TmnL1aszBYKqOfnCAJoIIZeWwkAiSZb6g3Dn3sd0YXZ5jPVcWd5rlFJGM
         6fhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTqg2afQkvcmdLWWcBg0gv+X1igFPm7THoCZluHr8nI=;
        b=eloV83gYail+TCBaXM8xucXWYXfLp0HMsIX5O5+bxpMOI73faW3aV6tvNKXlYT0JBS
         hq5C+j9RjUpV7v5wVrK8mJgzIzUKoScfQOZy6MIZJiihwF3oCTlmwl2UiFT59Y0H+WxZ
         jWP/regSGdpKMG5GkLIXq5WW4HCTWoKj36wBQ0Ssa2MiVIpVKu4WItueSr3YbKH/vgbX
         2X9I2Ca3KcT0cy7ay3/YqYh3ye3jtsgZwWn0oNn1bKlTCH7uSutZuwcOTNFJMW9gQ05K
         jTZfb9wRiolQyK6C9WXxQCzq0EIBZFmh47cmLEkrpbAWuo1oOXetk8x5Gp6+w2E9+NMe
         qBEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316XCb9nOM02Iju/3kZZBvD0Bd6l8sljpqMmQpJ9dZQyGkUyALf
	P16DelaWg7LN6860NyQ+DsE=
X-Google-Smtp-Source: ABdhPJxWZkk2ZbkkdZDRe822cRWJouBupuRdz2CXudviQRyniODQMF++AhpCUPMt88utfeVUDtbgUw==
X-Received: by 2002:a17:902:7004:b029:d6:489b:6657 with SMTP id y4-20020a1709027004b02900d6489b6657mr4564989plk.20.1603839620820;
        Tue, 27 Oct 2020 16:00:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7809:: with SMTP id p9ls1371296pll.7.gmail; Tue, 27
 Oct 2020 16:00:20 -0700 (PDT)
X-Received: by 2002:a17:902:b08b:b029:d5:f570:d514 with SMTP id p11-20020a170902b08bb02900d5f570d514mr4572266plr.68.1603839620097;
        Tue, 27 Oct 2020 16:00:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603839620; cv=none;
        d=google.com; s=arc-20160816;
        b=tcYHCw+YXYqhGYafTy3tvd9iMDBGs862uVN3u02p9P3JjXcu8P0Dx8rMbaD3YIAl/c
         0HimZZW79jjPwUwUhsrDBjZwAgDRCSC4A/SmcNGxt2l2ibwVMxwGNPxFvwxfdWDugcWJ
         m6Rs9UQY6LeGDZO0deGEEZ3QCHbmBERx+jdwUyWKm8MB1yrv/yonH6Vg49yfnR0/h1Il
         66ALzysvc7m0Z9f+uTK7PckQe+ptjJi5l6mToEb5aabu4Jp6x5QwHla3pe0Lfecq0AD1
         Ej+rJuH3sD31WN4zX6qohSQaT6DYOwzjYFAmlSRRQE9cetZqU04Ue1qESyhuwiKI4Lhp
         MnLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=26PWzubL1YWsWTQ1LcqPNE23u/zm8KmNBUxh8wlBGF0=;
        b=YJrRL9UDZaeESFtZHdx83Ca/7iEyK9TdzO4ikmft/wf3uOo1/47z3KLovzL/XRNq/1
         PPXHoT8DC3qPdlm51rXzXHHTeRguBsBhxHoKq/NL1hgWYRT8uSXBc1gsdUrQ80lnmn9W
         xoKSLWCuPZhIk7S3m9WhTpofDH2Hir1dBdtPNVMH1SX822fvzHiGQ677yp0Wysrs81WD
         tFUSx+NU5O3qLh3Y4V7gHd75mifuiO79m5XsPzLvkTmo+IDy4G9FGO2A5s541rDXqCzk
         JQ0ecw6wQoFhy7giLgDmZMDViRdPxToDhepRerZVFa+5kzKfc0T/fdByyASC1269kOlC
         UMUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PtIIj7+E;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id x24si212509pll.5.2020.10.27.16.00.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 16:00:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id s89so2641320ybi.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 16:00:20 -0700 (PDT)
X-Received: by 2002:a25:4102:: with SMTP id o2mr6422900yba.115.1603839619427;
 Tue, 27 Oct 2020 16:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20201026192117.3811525-1-arnd@kernel.org> <CANiq72n72FMnNnWveSZOj_3_beXKX03CVL8=cQqqa8QyK-PKig@mail.gmail.com>
 <CAK8P3a269o2Dqm500MAtp5JZD3-Diaa3iaMecONeyLAuE7r7Rw@mail.gmail.com>
In-Reply-To: <CAK8P3a269o2Dqm500MAtp5JZD3-Diaa3iaMecONeyLAuE7r7Rw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 28 Oct 2020 00:00:08 +0100
Message-ID: <CANiq72k81xcGBvM2kbGnSmeJ6g+kfD2srh79DGgeWaVo9GGEbw@mail.gmail.com>
Subject: Re: [PATCH v2] ctype.h: remove duplicate isdigit() helper
To: Arnd Bergmann <arnd@kernel.org>
Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PtIIj7+E;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Oct 27, 2020 at 11:37 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> Sounds good, I'll take that. Are the clang and icc version numbers
> the actual ones we should list here, or is this just an example?

Actual ones -- well, the best approximation I could get from the
available versions in Compiler Explorer :-)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k81xcGBvM2kbGnSmeJ6g%2BkfD2srh79DGgeWaVo9GGEbw%40mail.gmail.com.
