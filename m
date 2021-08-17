Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT4D5SEAMGQEDLINTTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A323EE0DE
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:24:48 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id f11-20020a05651c160bb0290192ede80275sf6645020ljq.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:24:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159888; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2XU5P0ueNy5vVD5bzC85kIrOm88T5/8yYpCgFVWsAIs53PfyJ8L2f7HNS+dKqGSZP
         kxkKfAzkh21beHg4OI6YxeOxujGc2fGVNc3c7dIvzJuu+qMh7O8Hx4Q+qjbw/ZnKHZFA
         FH8tPyQCMnXuPAFBAOWqW5zq+7dnEgYQpRwO16Kgi9tc7p9Y8HcoQsmzAP1E0WkE6VAA
         waVzxLU3oDWDvcVeLCLBQV6gK9/kVG9oXpEqYT54FgmMd+CXonPm8HFnHksG/uKkikUR
         Pc4fUP9FGszdMxyRMdgX3FZOZulKoL0k1Y3wsh1S9L31jUfxkYTDH8tDRn2ENw625hAz
         ue9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cW8DGBiQr9qLEVSIa1eXrOgjOOZ3hTNCxWrDpdSe5M8=;
        b=GGYJeMMcJmUMAYaANVWVKt9xD0P7VZ5MeX8YKzqagr+b07LsRsfT8VDxTEOxCXJn9p
         vqMAzyk2rjbh8vcURbFVWtdnQYFu4VE/rcx+ENqBqRZcpohiPgdc5uDewMvalvrGZv+Z
         +KClq29YtLTQ+6ojJiIE1Q4PPrQrkRow1Y1JsvRIyXRFXqRBgIslHXhNNAuHEiXI/YLP
         M8RSTCApfCqN/VrOxo3uSIluWPuRKvARtgAAMTB/ZjZXOAapmKmpIWJuZgcKpp2KL0PA
         e2X+AO/fCPUT9Jow71TxmTC9cX/dOaSMZe+hDatqphL/rKy5ZI8UzDlJzUM59I1Ga9ds
         jNzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kAL8bVwY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cW8DGBiQr9qLEVSIa1eXrOgjOOZ3hTNCxWrDpdSe5M8=;
        b=goJkov3mpn76wduIjCXx+cAnCeZaLuzCRCKcL+0gvPSxB/m0XIHUwB5r584qSpYSM0
         ftL/2CDdfzLnPFqnQHBhl7hYH8qQ5u2cvrdreOPhiG6XeSVB/8tgSrxyIjSjz46VSNTz
         nmsIt+7ADlP7AOgDOxpKKV+p3ZYUpVnkWCUmBl/5W36r/nUDf7cgv9EhB2jKeZ9io+hq
         jvHLkgG/p0nf1w4FBxmMblVKe6o7KnMHActRB6jBMfFwWzGU5OG4aOSUcjC0UN9lzPIb
         7Cf0+M3r1JjvfaN2wQAPKDr6ekz2VyBq8KFGft9jzrXq5IbBLKzcpw9gHV+DpkjHhV1O
         EMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cW8DGBiQr9qLEVSIa1eXrOgjOOZ3hTNCxWrDpdSe5M8=;
        b=CzuNpLwHp7HTk4ZGey/AIa8vgndTBiVjUl8xHWw9KJ8iZi+KVW3TPz4sichrBOI+Dt
         UTq8sxvX/R1at/t3xKyQ9mpf0nJPNc6ua6l0USmQn8hxSyeki9FMq+ygTpSOASbS4TlB
         40hNUEh9L0L6L4NUhrplkOPH4t8fABzAkshmy4FragVYzLkReX9I6W6QDj23NQDMgy3J
         rmRCzkjubU8EYT1PzWnqCX+iYtIOkjs9epwnZrMehoUYk/Cg/1wqwPStOp4Vv+cdtLiU
         cvRlrG/WQaCPiabw14g75dXu7KFI9YNOmyKiTX+NqwFUB2HOOlGhXo/L94ynQCdG3wDR
         kp6w==
X-Gm-Message-State: AOAM531rAqSFF7wr8lD7/YA1quGa735MO55uSOZl0LBkDdv0OwrOZ7sL
	NvjCe2HZQB0USCBwXf8TE00=
X-Google-Smtp-Source: ABdhPJzdrunaILfTFrVoaGJXvF7rLYE/owhpOEKDbAh2RmwBhOfQ4mPh2SWo3ikzC+m+osB9txxktw==
X-Received: by 2002:a2e:8504:: with SMTP id j4mr716331lji.352.1629159888175;
        Mon, 16 Aug 2021 17:24:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:15a3:: with SMTP id bp35ls128689lfb.1.gmail; Mon,
 16 Aug 2021 17:24:47 -0700 (PDT)
X-Received: by 2002:a05:6512:1148:: with SMTP id m8mr318868lfg.53.1629159887088;
        Mon, 16 Aug 2021 17:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159887; cv=none;
        d=google.com; s=arc-20160816;
        b=LDJfUb0DLShcPyVwpVuDE3YtKLERBVaL/psLZ2/3fR/57nHh6Q9u+rolRO01B7IoLe
         oZFFC/h4sZLl09Ykyk/zhKH84GwxQC4WjdXMrQ+DqMnx0U6fGkEQPtoGN0MMejaUWKZz
         eRu3IUIMgWQGTD+KqDuPT5OWZPsLeHUcdtOM5gm0Qt4TAAdvv9FXc3ulbPEDdtfzG7Mk
         k3WtsSGTqSrCsm4Sdlf2hO1aVIAkXJn8CZ9OgR56P5pYe9r9AJfCP8CAvmlTFIeVdaAa
         s1ViXa2DTNGOhmUyyTF+9xWWYH2hOxRNpEXf/oRr53Wgt8fF+KKZPhG+8SfV2WSsv0nC
         rTzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XH+M5jn9akfM4a0wOqQs1Q40q3Corb2RIBY1St6+LyY=;
        b=QWrmfpGCa8ed6Bo5KKSS3ufV0LxfE8QJteuFcchnHKc/tEcViyzyA2//HzoXDIw9nb
         4bus4V6N6yqMNo4O+LSNE2piOoqf9tV1xEl5b0lcldPVeF2Uo+LXdrAA3NdWh+gJzTju
         u2w7TDqvmq81j/g2y/LAlJA2ujlrU3dG0D1EmI0GkQOx+mcfGnk0SonXdKCV6/nM+f1I
         8cvW+fPf4HoL67obdWvKbxx9+m5tJwji3VI6gAOg7i0pOgJxeTPXAnOeX+86nDCMEwUN
         C66j09BKmPYKYYzzcAjv7iSvI5GecP63XUoWYmWuwvKAqJnicFOjuskjMiOrzTE2+fxW
         gEtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kAL8bVwY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id q8si24831ljb.6.2021.08.16.17.24.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id t9so37949132lfc.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:24:47 -0700 (PDT)
X-Received: by 2002:a05:6512:3041:: with SMTP id b1mr333364lfb.122.1629159886521;
 Mon, 16 Aug 2021 17:24:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkPLrL6wkhSGaadAcj3HNi1W2q6TQHWFhSej8JvatSzfw@mail.gmail.com>
 <CAK7LNAS_VVpRuwAayeQY0AAVBU1CchtgGMKT_G=bTgNf9TQ1Tw@mail.gmail.com>
In-Reply-To: <CAK7LNAS_VVpRuwAayeQY0AAVBU1CchtgGMKT_G=bTgNf9TQ1Tw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 17:24:35 -0700
Message-ID: <CAKwvOdmo+o4P95fF+x14Kc_sfB2e08WJcybV04P-KpMJgLgC3Q@mail.gmail.com>
Subject: Re: cc-option-yn necessary? (vs cc-option)
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kAL8bVwY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Tue, Aug 10, 2021 at 5:05 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Aug 11, 2021 at 2:58 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Masahiro,
> > I was looking through the uses of cc-option, cc-option-yn, and
> > cc-disable-warning to see what we're missing support for in Clang.
> >
> > I have a short list of places where cc-option can be removed at
> > https://github.com/ClangBuiltLinux/linux/issues/1436#issuecomment-895557491
> > because all supported versions of supported toolchains support these
> > flags.  These should remove a few unnecessary compiler invocations.
> >
> > There are also a few cc-option tests that are very compiler specific,
> > so those might be convertible to just check CC_IS_* rather than
> > cc-option (I'll have to verify).
> >
> > Another thing I noticed is that it seems that most uses of
> > cc-option-yn are replaceable with simply cc-option when they use
> > cc-option-yn but check that the result is equal to y. I think even the
> > cases that check against n could be converted to:
> >
> > Examples:
> > arch/x86/Makefile
> > From:
> > ifeq ($(call cc-option-yn, -mfentry), n)
> > To:
> > ifeq ($(call cc-option,-mfentry),)
> > (Though technically, all supported versions of gcc and clang support
> > -mfentry, so this block should just be deleted)
> >
> > arch/powerpc/Makefile
> > From:
> > ifeq ($(call cc-option-yn,-mcmodel=medium),y)
> > To:
> > ifneq ($(call cc-option,-mcmodel=medium),)
> >
> > Then perhaps we could consolidate cc-option-yn into cc-option?  What
> > are your thoughts? Should I start sending you patches for all of the
> > above?
>
>
> Yes, I think it is a nice clean-up.
>
> Patches are welcome.

https://lore.kernel.org/linux-kbuild/20210817002109.2736222-8-ndesaulniers@google.com/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmo%2Bo4P95fF%2Bx14Kc_sfB2e08WJcybV04P-KpMJgLgC3Q%40mail.gmail.com.
