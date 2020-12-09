Return-Path: <clang-built-linux+bncBAABBOE5YT7AKGQEIE7XBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8090A2D484D
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 18:51:54 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id t13sf1212388plo.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 09:51:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607536313; cv=pass;
        d=google.com; s=arc-20160816;
        b=lA97rrzlSxhMhOzlqwGVipRmDZlRqFd2kxLODcd5iPQREQE1bdGbjJeDWcVJwJiy4j
         a1MDnO8+9zHAo0peNnOzJfSwfzVTRlhl4QqmcSKqsIZz8zUlh6EUlkpbpb9o7Xu6ndy2
         ibwdWqOHZfzIAKOjgISaCOCFs8hqRcoYhybFDvMkNhfaenKI57vXEpcYNSB4jj5ARPUw
         eTcJAdf2PY5iith+qfd7Y1qhXKRlLlrDRG6ZQ+PJhZ7xBX0kSijpi3xaquSh2naBnTea
         EJcpORt81poRU71pC6/+JecQDb2e2H+4CO4hEis+Cjymw9iLymlDvwEEuZFusVSMJcBY
         OGGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nd++hjv568eMr/akIjcfxoOQGFlRsOFT6UNKrluI3ss=;
        b=pqrvFdxO0+PbMORx8aQcQqaKSkoyAem+jh41MUxoZCehLKIOpVtf2Wlhlgx0fwp9jI
         VEHf3eA2Pu2S9B0lG56tum/keD6o9NIL+2TK+Zgenr54p6MgvD1ht5GKdREjXOhrg/Tn
         alHiZBTgfu7z72AGNBbtI8/M8ANCRFz5uAze95cWQgZc+J7I8kd6DWYcRg1sPvve00tO
         qWt4izCcXtW7qgWqVLKBgCjj8jhl2R9xLbycsAO/GDli6YoddS/U8qLEPAqSWhItT2v/
         I/2Ie99pWz/4ZuRuZgbG9GBymMFbba86sdTyj7zmg4XqFgun80vU5mdaqRGoebrY4u0H
         qVvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nO+yHSD0;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nd++hjv568eMr/akIjcfxoOQGFlRsOFT6UNKrluI3ss=;
        b=PzkxZO2Gq/k1BN6A05EuAb8N9tNiI3oLEnas/if+x0YaxTaMajvNa2Dq/KafItbRE1
         XKGCuXG4l2muBvHHM8++rZ2hpD4x6OaxEFjgW03vutPwlDa+2hrdkvmRNPrnQ72hav3F
         sl1AYwl6zmdN/A1HRs6WrkuIgW1kTnDbEnUcJ1csiEZQaWftUASCfArL1Nda6mF3pUUl
         3OY9PvafYF+elv5+TEtOGJRjEZwk5EIzTs24sJ8OYYOWifDgJf4LwHvtMCSPhjhJ/L4S
         poXw2yK8drBCHgf7sXQNr3fSOOwGWMkQiF86DaY79n+9LvVqQtMp7XYIZa5WrvY3UCX/
         OaLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nd++hjv568eMr/akIjcfxoOQGFlRsOFT6UNKrluI3ss=;
        b=JvF1H8jkwFZvIwXWKyG28ru0+OzxR5zcZ27OoGtJVc+I5HZKHeeyWVrOh4U9yOUHD3
         EAfU9cCDI3nZC1modbaT2UPlWGLWTNhlRzMQTuY1LnZZfbNiPk6o+kwYhDRJ6bUzN5D2
         HMeWrZ7go98sSni/8+Cgh1+h4jRSHCaI0zPU1jB6NnEpYtC68UdT/JhY1g/RsT/s/Zlr
         Glkk+0TL473D+7JbW1XwIiV1g47W5wXgDjHEAUofCdY4fCz7SsVuI5ZwCeCz6mh7dB/4
         z/hXYnz9+Sbp7aqxxpusRqIFp3AZH0WdDZv4BCaNvqbr20jpmwZXfDcbjchqZ+O8Ys2b
         DYlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BwHHyfftM3cDaqK9oyNDW44kM5/fFyYOfkBforX8IYAr3Kl1/
	J+WaI4f4mETeiUGQ8Jkyy00=
X-Google-Smtp-Source: ABdhPJx90P2qYLxPfxAJ0/ddqnNmp1BjG0HOE4FCH6ynx9DFGs2G3nCwD7PQddtTwBE2J1QYO/Gvxg==
X-Received: by 2002:a17:902:7205:b029:db:d2d5:fe79 with SMTP id ba5-20020a1709027205b02900dbd2d5fe79mr2160869plb.30.1607536313120;
        Wed, 09 Dec 2020 09:51:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f0f:: with SMTP id br15ls1233341pjb.3.canary-gmail;
 Wed, 09 Dec 2020 09:51:52 -0800 (PST)
X-Received: by 2002:a17:902:b707:b029:da:a304:1952 with SMTP id d7-20020a170902b707b02900daa3041952mr1987094pls.6.1607536312562;
        Wed, 09 Dec 2020 09:51:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607536312; cv=none;
        d=google.com; s=arc-20160816;
        b=mjvfyw/htknxqpQkqRih9clzEbqNdSoRPYDaUY7Dvek0idouce9vf5W+3qlgpWrhFA
         LMuY+6c4PBE6CfoDTD8u7VKooboYc/xpebZM3yCQEwB8hGjq3Dz1uJGQ1BH7PEmBHTfm
         f2+w9oPjCuaP/tlp4CTleMQSgArHq6EVcyUhfHRmbz+qtM+Z/ru5oC9/cIYyKADk1fTp
         ELnOhX4SpN3xdo1wrBXxQ6WTf1jbzLzYkDUcVSBDX6gvyb65NtLAx3w1T/k2Vm6wLFqt
         dt8okZdQ31MjK9Aw5z7EQDbPWxgeNmYatxJwenE+LRTb3muMBD5/glHEYCJXWxnyDnGb
         lWQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IZTyrzRaLAuBag0ZSHRmfby0IplUWH3Yq+4r83zmEVk=;
        b=r1CHUHpfHxd7kMOJB4b6hVwKDlJm6Fz/9xq1MLFkQdrPDFpY9jIsZN1NfzQ7oSaeKp
         VJ2ewY5EQFJ3G4mcrBEbDYaCORYZnbMpRpqBrl0wx4Svzp36uhmtpRrjwL5c30ouSpEK
         gK2qlR/3ACalxK1XPIvypQiO//tw4iYA4ixsA3GvArJBMvgzMTJGl3WgdBOlPoOCidLO
         3WLlxI/P4FEZQs7oMgY0ZXwiBLB26gzBHcsSwJ4hN0NAXE1Dy6W+5ShGd45Qbjdxep5a
         l6qNpDtZIt/UGf7k9COJjOMlWoJjrlo7r4P+rGyEOVyefI5GFTPVzwdjvQXA+KIUHEk5
         0Yvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nO+yHSD0;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id il4si121531pjb.0.2020.12.09.09.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 09:51:52 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:aca:bd0b:: with SMTP id n11mr2533645oif.11.1607536311473;
 Wed, 09 Dec 2020 09:51:51 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CAK8P3a2DYDCjkqf7oqWFfBT_=rjyJGgnh6kBzUkR8GyvxsB6uQ@mail.gmail.com> <CABCJKud7ZC7_rXVmrF5PnDOMZTJX9iB7uYAa03YF-dkEojnBxg@mail.gmail.com>
In-Reply-To: <CABCJKud7ZC7_rXVmrF5PnDOMZTJX9iB7uYAa03YF-dkEojnBxg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 9 Dec 2020 18:51:34 +0100
X-Gmail-Original-Message-ID: <CAK8P3a04nQwJkK-CPWNzvfKavZnHQYzKX5OGB7Rm3Ee_62oXhA@mail.gmail.com>
Message-ID: <CAK8P3a04nQwJkK-CPWNzvfKavZnHQYzKX5OGB7Rm3Ee_62oXhA@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nO+yHSD0;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Dec 9, 2020 at 5:25 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Wed, Dec 9, 2020 at 4:36 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Tue, Dec 8, 2020 at 1:15 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> >
> > It seems to happen because of CONFIG_TRIM_UNUSED_KSYMS,
> > which is a shame, since I think that is an option we'd always want to
> > have enabled with LTO, to allow more dead code to be eliminated.
>
> Ah yes, this is a known issue. We use TRIM_UNUSED_KSYMS with LTO in
> Android's Generic Kernel Image and the problem is that bitcode doesn't
> yet contain calls to these functions, so autoksyms won't see them. The
> solution is to use a symbol whitelist with LTO to prevent these from
> being trimmed. I suspect we would need a default whitelist for LTO
> builds.

A built-in allowlist sounds good to me. FWIW, in the randconfigs so far, I only
saw five symbols that would need to be on it:

memcpy(), memmove(), memset(), __stack_chk_fail() and __stack_chk_guard

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a04nQwJkK-CPWNzvfKavZnHQYzKX5OGB7Rm3Ee_62oXhA%40mail.gmail.com.
