Return-Path: <clang-built-linux+bncBDRZHGH43YJRB4FCXWFQMGQEWMTTAKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D514341EB
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 01:14:58 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id e6-20020a637446000000b002993ba24bbasf12382899pgn.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 16:14:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634685296; cv=pass;
        d=google.com; s=arc-20160816;
        b=xBccT3lKoJhNqcdZmnEmp5D9N3LiWdmw9jXQFJqKSs+F5FGpgJZjpw4xTt6Lqdlu/k
         mqA2g+9G3/0T2HKlfvT/ovwo0bzIhl/yJKcHSnD4sjwkOZAkZouihay9SUKEo9pgoo+5
         zu+2VQCLtAOPhwZGZT8dXs+E0GjN7fhXRyEZi69i4PZRliSeGJOYK5bezJAbmR1UJYxw
         uy09wKxYp1n7xAYX0fX1Ue0R1SfQWdagjj80tLceGng057s4RnxEH0spoVdLI0ed7PI2
         ShGs3Z6jQXi5pTk8f4D2FFeV6EKYtPhTJoOlffQl/1zp5E8L4oPbnm725BEYaOJmB0Bg
         aN0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=N9FjrdwDjL78Hys7U1CVc11/9omDiTnAakoKW0S/uOg=;
        b=f2hVIrAUKYJHfCfFP9B96863tlALHrP7Cskeb4hvfjMxmZpo6DGJ6xs5z28KrQuV5p
         xpVU5qFdmXzycCWuDhveQ5rhwYsUrkvWXb0PFbKzLsjvSxRbDWmDPxtc5xTgoAGIBaA6
         oy1m/ac0oFgHd4zshMy3qBf+63nVN5JTR5W0bechkk46rmE7a4pLQBDrEZOlJa8TIFDq
         VpexEaaQjrf9h6nD3h5Vs3NB0mdbzLzRtOOtlh2WBJkUxr4ubqz5ShxNyNn/DTa7m0jP
         ix+PPA6aC13vO9QXHN3ugygtd4FGlay8AN9llD8dNUmkt+1DAF4hV+vJeSGRjujbqrSk
         W7+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=R2CXYQwu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N9FjrdwDjL78Hys7U1CVc11/9omDiTnAakoKW0S/uOg=;
        b=lxsEr/q88Cte7Hj493IUuA+CDkSqvbsN3pHAVD1B+7pWPgr8GCqsN1cdNWFz/Ieuqb
         0kdCcgLIN07SYvEN/jfWWpL0m/DncKYihXGyg6hq6LP3wIaf1ch7R67Tt/gWgBdcQa7j
         j95SQR+3TovqrRVbcDUwBefCdDkm0uhZIShDTtwN5qthBnS7UVv/RNRHsAdzGy5HcaRK
         ZjBV23Ny5N8sFVdOfdwn3wc80O5YcRU94TT/wQ4sInTK/2rOdnVOiPEp/T6zCp1gL4Cx
         HHqnFYBuDvWXi0zaMMidCXXTl0f1O45uGLNV2hQERpB72RDPpd/U4ysRlEJwM7HWkwn6
         7s4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N9FjrdwDjL78Hys7U1CVc11/9omDiTnAakoKW0S/uOg=;
        b=X+cjgOZehaABviiD/tizcV5gBWuatsaAgIsZQqmMmzFYQ25ZkbSEQDEc9xJKeiNDNc
         E/VUdM/mh+ZtxC0rKHRp9zz1FpkcCv95MI80ik8qFZVXuQdJK+cB9PqD9zH7rRlvLKTs
         t4GSV3kR/WEFwej33P1qqqgp22EkBryMMAjm5X2NNr6wzPT/7M8VgJreT3if4k/l64JV
         4VJp4BC5eHw5YaN4aoVOew19tksTFRMIzO8p+DEyghLmbayX9tofDbROc0A1A0XvdrBf
         n9d2crdfP69W8/HnD0J/VWEJYQ23rjCpU/pnUCubggW1SQJ0oJ878cxufx9jO5EbBWNF
         A19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N9FjrdwDjL78Hys7U1CVc11/9omDiTnAakoKW0S/uOg=;
        b=ZXQN5a6LN1Xe040lj60+P4Qk15PFeDqZvRd8xhrQHUBvuMWqQydE6LSLjCg5wf3sNZ
         cGW7uF5jCkTKGM799Nj47gljotS4A+0QiEdcp43ul9VbzqjruDtu0xW6l9xHiXaH88Er
         bqTjFo4k6F8VVZO8X9GlLQmXfPfXz3bt9djae44qKhDqXcjKyV4yiXIlY+TTVuDnSsXe
         cxR3SuUr9CV7bjiFizHIpG6ybZ6VtYUNmPh1u/VjAiBUnm8bYf6QAazN0Vy0dasteT3g
         jV4pT58k2S9l3JO89xHF0n8RX5oLK8W0mecNp/Qvu9KymDwS5AnOrGHCWwss541y1SGw
         o0Lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dp/HmcXkCT3OwbNjoYjm1UtbmXJegYTq2QV1AVy7Jgg3RA2pC
	SO/xP9JPucZJ/1+V8TCJbxI=
X-Google-Smtp-Source: ABdhPJxC46VRQLiD0ZZiX8JuU6UA5igaCMCwZZFbCoZuLTakIYlR5+soNf/aHP+vbtU2+6XRgGihng==
X-Received: by 2002:a17:90b:188b:: with SMTP id mn11mr3260624pjb.170.1634685296395;
        Tue, 19 Oct 2021 16:14:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e80a:: with SMTP id u10ls195877plg.5.gmail; Tue, 19
 Oct 2021 16:14:55 -0700 (PDT)
X-Received: by 2002:a17:902:7616:b0:13f:354a:114f with SMTP id k22-20020a170902761600b0013f354a114fmr37008972pll.8.1634685295674;
        Tue, 19 Oct 2021 16:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634685295; cv=none;
        d=google.com; s=arc-20160816;
        b=yrzwYBPkzhvK9m/NCQGIuU8H8Sl2MXU94g31JPc70NbkSylegD0qNwIV24uuZwNyEc
         Vioem2KyRkXcqA+AwFKyL0Yllk1nC0zKvmz5JUayzOMm/XM9my+sQzJ2+/kqMemikfRX
         wRa97Fd/on5JkN5LW3rKfMY2WOc6x8F0UL6Zsnp1fccVs2ax4Pa/lGh4x2i9mFjae+Qi
         5QC+KUoXtXUQfR8tu6C9zoBiBawzW8YAEPFgbuWL325QXAAvdcznTYjoShbn4Wd+Gnpu
         LBSALaiC0glVEP722egC19da2je0pB5RlA6wyNUhB2bzty8wsmWdAI3Vb2Ok0fV4r34J
         2CZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zrpUaoVvt5AlUK4ZVm+tzAJguis11QzWu+GC5e0/HsQ=;
        b=gR0jy9yKEO/FILPpJK6cqk7dWpkuL5XeR1l4Zc6Yw7xmEV2wlp90/1cFFVrdPjXRnT
         QqakD5QiWmTUpMq6IkkR7xnJ5pLQlexcYzJOoY7KfBgf8wNwjMitdHWY38pnoCQt3Mlp
         koEoYnHuqZMdAkFNKEqXKVSoqdGetTU819CK3rHLtCoqFLIznTpT+xp1DbSwNzAVM6hz
         R15WH3O1Oa7xQlCMgUuSlO9mntxtAg6bcjeRUOLjP1IgS1f/BJf0TouzgcYm1YEMB8dA
         RkBEKHwZGuzpUN7feS/Mv2vv0EQyf9Pdpks68ee2UOllC7I7OysodanVPESVkmsHyQmc
         f3XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=R2CXYQwu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id r7si514492pjp.0.2021.10.19.16.14.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 16:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id k3so20147204ilu.2
        for <clang-built-linux@googlegroups.com>; Tue, 19 Oct 2021 16:14:55 -0700 (PDT)
X-Received: by 2002:a05:6e02:1543:: with SMTP id j3mr20327074ilu.151.1634685295474;
 Tue, 19 Oct 2021 16:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <1634337180-92127-1-git-send-email-ashimida@linux.alibaba.com> <202110191006.68BB660@keescook>
In-Reply-To: <202110191006.68BB660@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 20 Oct 2021 01:14:44 +0200
Message-ID: <CANiq72k9GMuCtJq0=3Csk1yO8imGkveXJ5io0gjJH3+R73RRdg@mail.gmail.com>
Subject: Re: [PATCH] [PATCH V5]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Kees Cook <keescook@chromium.org>
Cc: Dan Li <ashimida@linux.alibaba.com>, Qing Zhao <qing.zhao@oracle.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, frederic@kernel.org, 
	Mike Rapoport <rppt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, yifeifz2@illinois.edu, 
	Steven Rostedt <rostedt@goodmis.org>, Viresh Kumar <viresh.kumar@linaro.org>, andreyknvl@gmail.com, 
	Colin King <colin.king@canonical.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hardening@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=R2CXYQwu;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Oct 19, 2021 at 11:40 PM Kees Cook <keescook@chromium.org> wrote:
>
> Anyway, this is a long way to say that I don't think I want to add
> a new gcc-plugin when it is at "State 2" (i.e. Clang has support but
> GCC doesn't.) There's no need to "prove" that the compiler feature is
> generally desirable, so it's best to get this into GCC directly.

Sounds reasonable.

Cc'ing linux-toolchains, by the way.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k9GMuCtJq0%3D3Csk1yO8imGkveXJ5io0gjJH3%2BR73RRdg%40mail.gmail.com.
