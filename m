Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB75N434AKGQETRGRJEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F78922B0D5
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 15:56:15 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id a5sf2553894wmj.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 06:56:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595512575; cv=pass;
        d=google.com; s=arc-20160816;
        b=m2Xy5u7aN7Q9HlkTxWzXmPle2LtA36oMuqaeieni8UjZB/tApFBpWO58XGGRJf8yGH
         qNMSwF0N1HCdPqs8kRvepqBHHrK80tVaGw2lxJhLoTHYSdLl65QZ3POgyKw+7tXWvMjG
         5PvGzA/AO1A+s1vm+vXu8PemZZrkN3u1tZ2M/I0kpFjRpPBZ19Ns7WkFeOVv6gfX20JF
         6ncQw/IUgErlnTHUNvSXJpMBHG83h/BhbDRgKP9SIPpqjSoOJqQ+xpihvd6KiYLrE+tv
         Axl5ANVchNKNyMStjS6P2a1pQBaSCKKvR2uxLwQ29nJcHPYzNeFJWckBcicPT7HAVRFm
         gVVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=AdWB0guJsH3RGgPENRTGI1HTswC1jxI5eP/KYIMPkYI=;
        b=FCg3Y2nI1IdsrBqFcKTz6L/d/uyZWbF9VzuHTSBBhaUogYpvcvZryymhePZNYzQKqm
         G95O8nC7m2zchPex7HMmQta6t48UznOLrBYnXHs78BOmGdcVgNQG1QSgp11967iS4iQe
         RUyhtSx+3CpDRqRNUVUx7iWWV7Fl6FxIz3UTqJMiaktuWZfqaMN59dBoLZUQZvVxo0o0
         plsy6Aa79spGNHThqsP2vKghIWtzNQWvjpLDbkTjEoFytdOb5mH0YhMtkEtRaUT/fVJE
         4JqUHQxKdEDFP5Px22Ccwa01BGY/sONcgEjxjlMpfmOOMHN/bD7sjJeB3lO/u8n/AHTd
         QrTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdWB0guJsH3RGgPENRTGI1HTswC1jxI5eP/KYIMPkYI=;
        b=D3JEFgLCc1RuJL+CFRh+mmR0F0c7jG3ygBXLyiwjHXsKXvhznQmxmfGbGm2hkBjbCq
         JWDrsiChfoNfKKfmeByXMbyb5iLFE+oKo1Drcpoo2SS7DLs3KGF4YIFBl84frSH9kxTh
         APvBak8EBk2oDg4hnkAgLlOlpD70Wewr2ArnGJR+GzI+jjmjogRNXLv7nstGohm5lIy7
         kQxF37k44KDDQ+HrI+xhhucAr/X0zflS34vIq0N9r9g1SNgrIU9dQqLw12ortlTcjqFI
         I4dqsnYoXGGoHXqyzCkjIyhR1URkdhjMjrGMu5Z1CwC3smy2xxzA3PwvHHuoMkiUtSrM
         XB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdWB0guJsH3RGgPENRTGI1HTswC1jxI5eP/KYIMPkYI=;
        b=jj5vuhTJV8YsxHXnZYQ3s+YomWO/1T738lSERwCNYQh7S0/fb/J7tUjJK/cNKJ+kgF
         LXIseac8ByMeb8GNrV5ar+286VWIVl9LnAdG9vCWwWfrDNoEBeF1LqxAJFPggyU6nXnx
         Wp6WLKoNowo6a1h/pE5WgirCNta4CSqa9cTL5OwkpGB4tqJgPq7uJUf38MMuUWaAWvp0
         qejUmDlTh74W+CGnR6KcSU3ai0fyOO2+WyeXYG6LEDt9mCFqn2laByG7yUnNUzNi8LHs
         y/DdvSjdi/cXvyhuj183V0rbHHHeeVcRkFrty4EQFtkGOUCPH3ZCmmxFQGGnRiHIdnqY
         I/9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xguH0eiqK5JIEHRYSGeF2yny5GGlOoU42KLluf4R9a5eymoZL
	q8gMvKtQ13YQY7RfM/ysht4=
X-Google-Smtp-Source: ABdhPJx20vR2wZOW+9XNQ8ZoKAVCrek801HFwpb5DGSfkF1wF34IIK2ASaWvHVS7Z6WMCDLAVFvDTw==
X-Received: by 2002:a1c:43c4:: with SMTP id q187mr356219wma.78.1595512575126;
        Thu, 23 Jul 2020 06:56:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fd02:: with SMTP id e2ls1378437wrr.1.gmail; Thu, 23 Jul
 2020 06:56:14 -0700 (PDT)
X-Received: by 2002:a5d:548f:: with SMTP id h15mr4214618wrv.331.1595512574538;
        Thu, 23 Jul 2020 06:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595512574; cv=none;
        d=google.com; s=arc-20160816;
        b=HSQEGggE5Rwb1X+rNetaXqLzE3Lqxbu3AgIcxgwXqczJf+VZ13Gtp8syxomyCmVmqK
         53ypL7uybcd7cj9cOjT6k32per4FG3VL+acNruY0SJgSqNhYRW1vfIPzSXEoK8FTWQQq
         BHVSDb51+crGpgK+AhYzjsBFDAsrV5M5pSAwRRih0slZ7+8r9UZDdN2UMhAzevuFWzWv
         tUGAejTJhwRa6izXB9Uo3BXMUvRwdE4KSfyZRIWFDpCZxQW3YQdK+aJx/V0YhCQEjXUW
         81ytY+h2vDJK327HyQvJBQqw2AgdDuBiFo3+06ef4dlDAJgIR9VIdGYZpIJqrK/OUMbB
         e3pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=6ZpTHSXvcoRTy/+nFqnNlHUMGdUgAef9vt1vEWkYO74=;
        b=HMXyS4dWGpxu4SdL38vUsrRuqIq7c47XjcivhQ54RGiRaPv7H2Y5jQvCqAue4N7GoV
         XXn8vgVDNSJ3OodK350J1r9hqsluTAwNJboI5sfGv54ITuw2IyqA2FgGFJdwG9H3Xl9A
         lCNzlSBMkLZaGin0rxuh7fR+gca0KzYf3/w69KRm7HlPWQZVg67BzP1f7SnwuDdzmvlK
         9LgqtB2R9mUylF1S8hNoM0O32Ne/TQhXWNuE8mC0jFM3qQVLGS21eb97sxfceHHBd8hK
         Ss4Y3NFjiIDUSY8nZG2Heidq3iYfmfkGoPDZMMUWRmSoDKgQK+NvciZ9UsuGHPb7KjIe
         2+qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id y130si491528wmd.2.2020.07.23.06.56.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 06:56:14 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MAwTn-1k4yY83gIz-00BJ9R for <clang-built-linux@googlegroups.com>; Thu, 23
 Jul 2020 15:56:14 +0200
Received: by mail-qk1-f173.google.com with SMTP id b14so3663376qkn.4
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 06:56:13 -0700 (PDT)
X-Received: by 2002:a37:9004:: with SMTP id s4mr5176965qkd.286.1595512572758;
 Thu, 23 Jul 2020 06:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
 <20200720204925.3654302-12-ndesaulniers@google.com> <87365izj7i.fsf@nanos.tec.linutronix.de>
 <87zh7qy4i4.fsf@nanos.tec.linutronix.de> <CA+icZUVz0opOb0LihLvPvKM-t0Y=pcUWDyb+u-L_UVnnbPh1rQ@mail.gmail.com>
 <CAK8P3a3Ms1uvLcbhmbsU+-u11BCrXPaU5Dro=P9LjAG7CYm8ww@mail.gmail.com> <CA+icZUXzjcQ7ekTg8LvwcaBZFn_HeDjif+rKaFAKy=0gUrx=Xg@mail.gmail.com>
In-Reply-To: <CA+icZUXzjcQ7ekTg8LvwcaBZFn_HeDjif+rKaFAKy=0gUrx=Xg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 23 Jul 2020 15:55:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0gFG8z_qdY2gPm5p7kjpj8xq-APyazk390FpHUJiZ7Hw@mail.gmail.com>
Message-ID: <CAK8P3a0gFG8z_qdY2gPm5p7kjpj8xq-APyazk390FpHUJiZ7Hw@mail.gmail.com>
Subject: Re: [PATCH v3 11/11] x86: support i386 with Clang
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, David Woodhouse <dwmw2@infradead.org>, 
	Dmitry Golovin <dima@golovin.in>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:eQwuhBZaqhW0y0x2I81xFmi5OjYG05xiXsTsr0seDyekswjR/kH
 vc8RuQZDhzTzLLfUkMBcZerzYBw7AYjoBJiNrvOoF1X3x7TM6GXoQGDtXsi5sVPJxtN09XA
 jgYOW76Ct21jlrkzRXCXuSpWkon3JOsckhIqzb3lDDjJWP/42LVv4xEQFkIrFRoY85uZwQJ
 Aa+KTnclNz0S5mjfy1frg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dZrrN2jKOdU=:QLcpy+Hr0Rpjn805iP6vz4
 zPj2lTQjPdPJgBlO2ADMTbfGVbWFySBwa56egX3vP601k06nbBe7Vn1kUjuTK2cgPXwhEmdIs
 aBbmGruR5SPm9PJlu5flMyca0Hsqv0c8slYSJ3xv2d4xj6OopAls7PdjT7veA7zfqrq9c7/IJ
 ppvObufaM8uiaG4H37RE9p7C0ooxlqc17zh6lUigVpkOfAbWZTbCWsiPTNFhUFo8i4qzRFgu1
 4PQpPbpQr0xqtZzWQIoxsoUztSwL4hLuR00uNV0zoj4OWFrF4nFOj90AiOyxZglwozU0G/Gka
 ZR9cNuIkX3XDJsfm28ZBc1GZn0f5V5Gw8MnyyrvSMro1ARejgHenOCK05IBhkUZ/3C2b5mCRa
 y3Kg0/A4046nIRZR9rMt2+SX8vR8PZcYfuyNlYfKi0EGIPyqnhw8IoGqUKl+jtd/a6Fo98leu
 j7YaQk74k4KIYCg22yRGgqijUhJGRw1vLefVduP0mKHrJxR9aVFnmbkSf7AodJrySWeMo2T1J
 6GPgi2o/RG7EMe7WpnCfFrHIraWGG1TjwBqeE0rel6u/89adWZomYuJwXTxc2XedyKhzvtAtc
 tE8yKTRBq4WGVk4ij4bEIu+SxAoKP7v8k6uT1mEXPP0+ZE1UxoEDLEakB6nPi0OZ9StmVcgRW
 LKvZDjq/WpS0eExzUoP4AmMX6a7xEAwDzt6LhynmGyQteSfjNmFtQZRLznfb/1D0hFvNoTUwO
 fQpiJbsAkWrvqwWWtfLXKzjJoZQ30aG2bTcLV5ptr1FlLSRcHbU0qksB8uPmzEF7GVHlb4Kh/
 mFonqQ5MGZxUTTB1SJJOX0Vtr4ixtmfqSZsioQ57iUVUHpX/+Toua3XwANGiz/5moFeXRrPR2
 hOUUvablNGrF6fLfRkXjPh9iADGlf5i5DhWoc3624nNg/2FzQFaMbaZi7a/2TbuNeghWV7bnL
 oSzvF/H/jklEuiB0fQrGD9RdKsi1Sl+VuTkaAJOFUAZ5Ql4BxPdkS
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Thu, Jul 23, 2020 at 3:14 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> What happens when there is no CONFIG_64BIT line?
> There exist explicit checks for (and "inverse") of CONFIG_64BIT like
> "ifdef" and "ifndef" or any "defined(...)" and its opposite?
> I remember I have seen checks for it in x86 tree.

As long as you consistently pass ARCH=i386 when running 'make',
nothing bad happens, as ARCH=i386 just hides that option.

If you run "make ARCH=i386 defconfig" followed by "make olddefconfig"
(without ARCH=i386) on a non-i386 machine, the absence of that
CONFIG_64BIT line will lead to the kernel going back to a 64-bit
configuration.

    Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0gFG8z_qdY2gPm5p7kjpj8xq-APyazk390FpHUJiZ7Hw%40mail.gmail.com.
