Return-Path: <clang-built-linux+bncBC2ORX645YPRBLWK6KBAMGQEPL4UGJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F733494C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 15:58:56 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id p64sf4169278pga.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 07:58:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616684334; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIbXnwnpWSTSV7Vc4ERVySh7T7aKnI1DOggjS2CNz00DPXvOJrUJwTHCckeXo/QDwF
         HpX4l6dSwQBJ07WQ5k9UDVvuXbszf2ouzb7Tz047shdfytTxggf3J3s3xveYx+WlQ4kG
         plAFOI0mlama1cjZK/d19wYMCeHBdRVcPWBZ96abxP+aSHo/lBKpFt0j0F8pM9uikwfS
         4+/ewA/28AOSmqlVaCwqTIISDr/3s7zj0atZHUxjEhPqGxYB87TVyh/BLjosUTGLewzb
         8UfsYnqIh/AEfpzWcH2MucTXmvHS65Q17E5eP298is6mehkV5VlID8m+DrD9943fiy8/
         6axg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=M62+lumq0PzaFvK612S2MvEBs/+q6hYneJnzzx16Ls0=;
        b=iF2PnpOtKnqIG6Eac2vJB7iYCCrCCcqwSA+RwRmv2K9pNTqjVMm3/nmUvTAIdySFdh
         PxG/wj9TCGPTah20BD776+89ogpdpKm5a0UBgK2AKX/1NhvcPKoxCGhGUdZEAElmObb7
         3hxmSlbg/2KNr4ntEtIaCa/HSuxP83zArHuz1QJEHmnlD4Jf9dh8qr9L4Laa3c/AMNy0
         sop7+7ChNSyy+6nfzB5Wjkb3pKTGxPGUCkdXQOPOahnA8ZDsVr+SkFjPefbf0H6pvDIk
         SoJc1Dyy0SlPR2GLYWgH4zoPALANwJ2UnSVOfCQrkFczudjBXhefhnwOhyEp8khoeoiT
         aPPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fevnK8xp;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M62+lumq0PzaFvK612S2MvEBs/+q6hYneJnzzx16Ls0=;
        b=LGQ6IAktYjCT4v0QCMH3zcxBg5KREqGWHSGEFIfDzUgO3nIqjhqfiM5xemLVeBnkDs
         VUuvzGUgRCSR+/eo7DkA/R1dbkRrhBEDd2BgoNePyw6ltn+Ac52RIGxL/9KtpZWgnfY6
         5SbUesh+cFySUCUkyf+Prc7bL0/COFr/7uaTSkWHuS7zLAi9NcQ+t/a4auNzpMK6RG4h
         zT0SfhMX5o0Zg3cxBI6yvGzRGu5ZHj36sWYmL44uzAUsRHzjbc5XHwIDR5LMe70nDpBD
         3atsrsiXFWBezjNSvgRPZIviEVK1vms5p5FsxhSVsC43mUfIQUZSipgEjAJaVdyWHUKx
         fqKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M62+lumq0PzaFvK612S2MvEBs/+q6hYneJnzzx16Ls0=;
        b=WyoKFQkVocQVwpmBSESlT81Ub7vysFac+OJgn7q27dEvRGiRyVjuctscIminCSHFmN
         Dk2GQnR1cKE+G65fZrKgt5yFWTN31b3l0LfCzBlk9tqAEYMa7bB5Wwo533PZKEkIu7yC
         yjdx/IS+YcGBzTkFoVJfXs3+BaU00uJc42K8REf8out+imUj0ZQxYriy2c2kaH4xshqM
         0d4NDh7g91RXrbCm+SzsFTUBtf7x5mnJ/O5njuJvmbuIgoRpYHl2Wn7mucCz1DWU226m
         tbTr3ihDq+9U7MhkdPOHeND6kLAs9rtMkkLhMBC+DxgP8FZrBibtfrNnXdair/RUwJQ4
         wmZA==
X-Gm-Message-State: AOAM5310hw4qUxjvBvzMoyYgcViqEdBOEmq+8p9DdLfg0VgDAbCR2TwZ
	FrvLXiGe1D3Oi5nBf3C4948=
X-Google-Smtp-Source: ABdhPJxNIhtDiFICJE8OPqaa+5ZD+5o7ITK8ne3F0mEpA384BIdtxCw1c/UimjRMzYiKTNghQDHbpg==
X-Received: by 2002:a17:90a:bf0a:: with SMTP id c10mr9054145pjs.195.1616684334681;
        Thu, 25 Mar 2021 07:58:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:183:: with SMTP id 125ls2121219pgb.0.gmail; Thu, 25 Mar
 2021 07:58:54 -0700 (PDT)
X-Received: by 2002:aa7:9614:0:b029:1fa:e77b:722 with SMTP id q20-20020aa796140000b02901fae77b0722mr8867241pfg.2.1616684334079;
        Thu, 25 Mar 2021 07:58:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616684334; cv=none;
        d=google.com; s=arc-20160816;
        b=ohgCw/Uk1znegXv+mjF0nSZ4qllEUC7q4VqqQrGHgahltJfL0XzE+O9L1hbV2E9Xsi
         iS6Bqn3AS9QPkmwVNPEiDbhK0zCJRYwkUUHYv1aG+CXD/nwJqXVg0i6EhJ2hp4rYjF07
         ZLbO1EIrM2q58JDPCO7871iv9vM+2vwT2sSikLWtwybOiIDH0peeOSv8hwW1CrgVtvkA
         OKIQU0cpxT54u7CEl+WSdcv3ck/Cq7LG5EQ0iHy6lAZ8uK1s0RKPff12On5qwT3uXNzl
         nqQGdTxsO119m5ZjpuCHO2H8DGW02TCLMAUDUUStfKA2VmBkiDQhnlmlewTtXv5Ktrtp
         aRjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KqEviVIUMoshr7hyjdGE/KJyZHlHUe7M9GqzhGu64QI=;
        b=tAWz3Ia8dYq4ObHMk5bJMXEkd3bMXt4V/3jCdeQtJKKbY3V7Q+9qitNyhokcXNu0W7
         Wu7RVlCFYh53UEvavNRnmPonQponIiTWYvv8qi+nKTUCw1HBtCuNKoa2hGZf9cDdFijp
         0kKzWAO7354TaVkQyWWp3qQo4IvS0P6egLs3CNYtixGPKSVkWW1ShMRBEoP7q34eLguC
         NVTZo/Dreahl6LTO1/5UG/w9xAtxvyHh2nJkkEfr3Oy+pW/ir5ltBGI1EoLasF/uBvKb
         mNYNCb2kB2Wm8kTLziRDK+KM+WX2FF+H9KGYbP5ikISgRsUT9Eo0eZ5JynCrYIVwLAz7
         6XNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fevnK8xp;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com. [2607:f8b0:4864:20::a34])
        by gmr-mx.google.com with ESMTPS id h7si416764plr.3.2021.03.25.07.58.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 07:58:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a34 as permitted sender) client-ip=2607:f8b0:4864:20::a34;
Received: by mail-vk1-xa34.google.com with SMTP id d82so465758vkd.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Mar 2021 07:58:54 -0700 (PDT)
X-Received: by 2002:a1f:9ec8:: with SMTP id h191mr5232140vke.3.1616684332964;
 Thu, 25 Mar 2021 07:58:52 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064b16905be4e0722@google.com> <CA+icZUXC2YTR356yYhLDjeh6ibZ9OAY6o1U1keygPdWHWE2chg@mail.gmail.com>
In-Reply-To: <CA+icZUXC2YTR356yYhLDjeh6ibZ9OAY6o1U1keygPdWHWE2chg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Mar 2021 07:58:41 -0700
Message-ID: <CABCJKucPFP1ou2FGQfH8=2WsL03Z-UF01LdJx5Zr9RN6=VgZ4A@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - March 24, 2021
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, android-llvm@google.com, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fevnK8xp;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a34
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Mar 25, 2021 at 1:48 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Mar 24, 2021 at 9:20 PM ndesaulniers via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > http://go/clang-built-linux-notes
> > Meeting: Hangouts Meet
> >
> > March 24, 2021
> >
> > LLVM_IAS=1 ARCH=arm landing in Android
> >
> > Probably going to skip 4.19.y, one last assembler bug won't be ready in time, 27 kernel backports required.
> >
> > https://reviews.llvm.org/D98916
> > https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net/
> > https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com/
> >
> > 32b PPC BE builds spun down in CI
> >
> > https://github.com/ClangBuiltLinux/continuous-integration2/pull/111
> > https://github.com/ClangBuiltLinux/linux/issues/1292
> > https://bugs.llvm.org/show_bug.cgi?id=49610
> >
> > Riscv crash on -next, requires earlycon to get more info (or GDB)
> > CFI patches need help review+test
> >
> > V3: https://lore.kernel.org/lkml/20210323203946.2159693-1-samitolvanen@google.com/
> >
>
> Thanks for the report, Nick.
>
> I am a bit astonished that ClanBuiltLinux Mailing-list was not CCed on this.
> Can you Nick or Sami comment on this?

Ah, that was an oversight on my part. I'll cc ClangBuiltLinux for the
next versions.

> Personally, I am interested in the x86-64 part of Clang-CFI which I am
> testing for a long time successfully.
> What is the plan for this?

I'll focus on that after arm64.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucPFP1ou2FGQfH8%3D2WsL03Z-UF01LdJx5Zr9RN6%3DVgZ4A%40mail.gmail.com.
