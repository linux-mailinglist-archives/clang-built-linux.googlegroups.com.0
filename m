Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJNJTL5AKGQEZLBFQDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id C286F253596
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 18:58:14 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id k5sf1687269ion.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 09:58:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598461093; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBmODd5dIKhAtpOS8zedJ6lWTWHAP9imomD5fGM8fnWdj4LAQuYwd0+saS1Pc1OwzM
         rBY3jiqH963njcYT0zde3mwZnUNwE6DLiq8uKRTB2ELVCS7YsMT1ud2GcwhIkWEnvg7Z
         KeXpyclnenUbRpGuAkU/PqI/dkydtqwY4cQAWYb1PVV2wzAmpjhyaqDxIFmPaFRC9meO
         Liw2vVoD9+33uiBWWEVnGR+CbRfeCrmkMiJeEvqphLE4jIhQSYqvcEsF+E1ct4UTb/dA
         xhDRWikjIWGDMYAhtHZvOceMkZDcZNwyv8OXApAQBrukKrEgVSgl005Rf+75p4nF9yZs
         SGtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P38STUwGJP5hjUBvjq95UovVnIjK0BbS7A2aIPTXLp0=;
        b=MBJDB9vSzFdYfyZ5fUSZNis6YAV4gm+WPW02PouHYib2IRi/4pB9XYjoDIbLoZZEuE
         uCMAty7Yk1nqKg1yDw6JuNHj8W4fIb520X7W2En3XkkskH/VPFqr656nuADJ/tzfmX7Y
         8hpkRXpbteHvRs3Bg3/Xzh9al5gfOoFb7dl2pP4tVrzElIDsUwZt2zgRAGSeXHhspyoQ
         VRNBrAQhhn9y5oqx59/rb9Yr4AF2KDAXwbgfZBhb4Jx1tC0TImo1TLnr049DAnXmGoBF
         h63XuTVgfGXsae5Qx4Yrj9Ka8Tg7/QEEr9KtarYUw8eOMXHM/j8sMe2RJ2tCzcEzi0Fd
         CpYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CNAj0WU7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P38STUwGJP5hjUBvjq95UovVnIjK0BbS7A2aIPTXLp0=;
        b=VuWrO4IzCNkYQ6FvAYzLw+zjcK6gaDgtp+3HlYPwYV8Yn+g77aa5kZ1kulEdIHfxvP
         MsTJla6gyjNEkeMmwrRLdATdN6MUlFTmVgR8ZINGA100G6H2841XehznzRekjF1Wu0Af
         tbPtNcFdvX6bZWCcs0/6Ygu7HBbW/VejrWan28KMg7eifXzhokZ08xnsaA2rBWOltk5m
         ytsIapmO5+BeebwS4c494FDRCmkhpPp0/+lBTwHTLghZrUECRO0JU5L2m/c/5X3+/TGf
         mSonnUHISY40CdVzXdYRYiPTdPE1rfp6AGRtHSJ05WBjltf//CtS+9AHVYoM/XS3A0N9
         3/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P38STUwGJP5hjUBvjq95UovVnIjK0BbS7A2aIPTXLp0=;
        b=j7s3XXDlRdnFzXjPiygG4QX6eX8Q1y4SbnFZ6UOmcItXVa8Muo1RmLL0XzTiYnhYzu
         W8vuvdwEg2LVPEQRJIDuAfoq6ck/g9Id8exM8cjPecU0wpDQtrnMgnk5nkaHL02zPS01
         T7fdDrtYxGuZMlhcTMSaxNc5Y7x9qOp1t1ZSlpTh+wLI3VOIigT9CViqo0kqNdSL8utj
         5gpAK6uKTLF8i1QJQnEKhWcPnF9l8J7vnuVnqewKQ881PAC13A5NLxrnK0brUKHpfIEM
         7BkxPUM3OT67m5mZd+ZuQSnnoOGJKZg8PLGE0rkUgI2FPWVQ4j3g2pvIPYy8QM8WaAUH
         atiQ==
X-Gm-Message-State: AOAM531WjF8hid7kQDPxyLebqRkbpX5zTMnHvVK/FPxgacB9RlfPzqgt
	rFAwFJ1oERXnEa2gdSuRlp0=
X-Google-Smtp-Source: ABdhPJyFlgZLSwkH+gLd/s+N/AI18Q8qt1cFGOpAUEZJ5EZG2wcS4FCU6GDj7GiF3601fZ5XJqoPNA==
X-Received: by 2002:a5d:9a86:: with SMTP id c6mr14120470iom.27.1598461093747;
        Wed, 26 Aug 2020 09:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d90f:: with SMTP id r15ls479472ioc.8.gmail; Wed, 26 Aug
 2020 09:58:13 -0700 (PDT)
X-Received: by 2002:a6b:b654:: with SMTP id g81mr13585081iof.116.1598461093448;
        Wed, 26 Aug 2020 09:58:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598461093; cv=none;
        d=google.com; s=arc-20160816;
        b=nIf8gjh02WILL3oHdpMMne4LXWAoE9LqmnbGXZmSZET80Ct9JCtPYX+2FKZY2jy5LD
         ZyHkiDQLFIBR3XFbUPelaR5tgLzXr30uu44ng4+jk71DN1c5vk3KOV4z337wKbb+3NnT
         Varkd5hu2xp5u6t3vZ7pGLV0jqsJZUImy5UgOspj6NgxMxJgpkzW0xpmnCEmoR76un15
         MD5wW0XaCxmIQ0gWeMjPwzCIiiYp8xdydd9NG2fjWo9ettO6gQGfCthwVjp9vuoIc4Zz
         LABWLOTsB37xtwD07W+hBJ7rKJ9OCiDv5uFrTrag1rFlJc4TUIkGzz4XoWowNEFo/Uon
         TcFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6ruBxf096ym9usi++FSuEPp4K8G47UnSV5rxmh+VEh4=;
        b=B0hM7AnXhjTUwGBs49ZD5TSRrGFkozTRrngZ7lc+CfuOgHVe0dSlJbNBuhYFs6sIPb
         2SeADmwzvWRDg9OI2Ht7hIol7oZxFc1Jme17EZblDJI+SmVLwuhO5QP1dPe3+ZU7BlAf
         ZVsq8puvCqp3dMvkCYYTWmyYu3ozfwdNkCfRYXo8Izv9472EHBUvk3lDjXceUPcxjM8t
         i7gAh+gq1pIWfNqSKLhrh01n86tpgL5+rEmX0otFJkkqsd9XsDnqo9QCVxLsc2XMZeyu
         85a3Pd6yZ7ULD+JEqtNoJmdLHETSOImPE78ao4MmPHwnWI+3arYII7/1rA7Mi2SwyaJD
         GHkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CNAj0WU7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y21si178146ior.2.2020.08.26.09.58.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 09:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id h2so1170629plr.0
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 09:58:13 -0700 (PDT)
X-Received: by 2002:a17:902:be0f:: with SMTP id r15mr12843216pls.84.1598461092696;
 Wed, 26 Aug 2020 09:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com> <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
In-Reply-To: <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Aug 2020 09:58:01 -0700
Message-ID: <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Joe Perches <joe@perches.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, 
	Andy Lavr <andy.lavr@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sami Tolvanen <samitolvanen@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CNAj0WU7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Aug 26, 2020 at 9:57 AM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-08-27 at 01:49 +0900, Masahiro Yamada wrote:
> > I do not have time to keep track of the discussion fully,
> > but could you give me a little more context why
> > the usage of stpcpy() is not recommended ?
> >
> > The implementation of strcpy() is almost the same.
> > It is unclear to me what makes stpcpy() unsafe..

https://lore.kernel.org/lkml/202008150921.B70721A359@keescook/

>
> It's the same thing that makes strcpy unsafe:
>
> Unchecked buffer lengths with no guarantee src is terminated.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DYrVtPsB7HYPO0N%3DK7QJm9KstayqqeYQERSaGtGy2Bjg%40mail.gmail.com.
