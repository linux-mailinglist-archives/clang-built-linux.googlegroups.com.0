Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBQPF3T6AKGQE272NU6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C91C29980B
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 21:34:09 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id i9sf5503355edx.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 13:34:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603744449; cv=pass;
        d=google.com; s=arc-20160816;
        b=R69cxyBBruemIeQjjvssso1Np96a5gBdE1FIdkGiDG4d/R6yv2WFHL30b79GQ4MOA0
         6Fq91KWpqXdrLwlHBMXrixn0VOExz7taGyituDZkYgYhWVfS3DL8EmrPPlsFNHB3fXTW
         LW89TP40kKz+aoVPp8wV0prGTWf1/mxswNrhtpKj0VIrXi/nD0PdJsCPdmgQSnLf2pyK
         9418x99QWk0L/ADsILgIg+3tmwHhwSpxVAzLg4v/mLrUr8zdrZPRUgMagRx1IhmSTUUR
         cojI9FrnQOZi88szx/NQziPkkJ3cD4vhK6EyONnDyypvHks1l9kQ2gCNrK+nmyAPC8no
         BD5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9+BNc1h05Ye7/E4SHzFWT75OSB3/Mj2neh2Oj9AT7ws=;
        b=NgWu775+iBSz4dMTRjXeCVuQvW4F1Myes6XxI4/AY+pa8cdm5+Kclzxh4nF4zYDSBe
         lkEFd6Mz7anheqza/e6hvGsQLrZLG6AdRkIsC08ELVVkHJtV891hzqw6UG6nbgBvrbyH
         gtXjv9eTPz6IanrSfLwY5bDwZZgXCCvr71cIF6+4foud3XP4YnTWB8AuR9gsdASFN8Fv
         AhfzzXuDUM5MF5fC885MZIZCF1DJOJo7zX29P9WMD2i/8IyWYaDxUFIlyY+xBpNYyKXE
         aG2V0sYSrAsHbHgCu0sbm0pLLfsii7Xqs6gKakyQGu7mZQDBl1vkJ6zdzudjCU3OivnJ
         j7KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=JDFEz1Z+;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9+BNc1h05Ye7/E4SHzFWT75OSB3/Mj2neh2Oj9AT7ws=;
        b=LNwulwpOciabjcGn9SYVz2ABIcfn4pafgAy8tzOA4M5ZQKUXoUozjSZ/4qcVgRkX7V
         MuYlJP8pS+wZD2EV6ar0msX2Nw77O+VLt+VhikvJwmtSDMb5dg8BD8t1IFyQyufv9B8Y
         Mh9u7Ts02fAYzxWGUH0wnRlbCyPFUrxsip8vDiomAFcvnhxianRBAvqUOoFB++kWKSQK
         J9KqAhnjTm0u+YiOENF1JF4gD+ToJIuuCmqyRbCtmMpfFEKcBKfQ/kJXO7G2FdemUCiV
         qu0lp8nUFhVmeDeANWdFoDxRttXBaNFS2iaSPVySwm9y054li303lkMnJePexjDxs6lZ
         9Fpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9+BNc1h05Ye7/E4SHzFWT75OSB3/Mj2neh2Oj9AT7ws=;
        b=QOnkce+lBiKlaLsn0N+z1B8DcCFcILbjEDGW1zqCWCWA6oD/SdYUH/fuExtiG0QkRh
         2xM5DWc0MR1l/jzXrEECQi1/9y32ERSu2OBChcnUdWt0HCdZFCF38wNGeHptbL71l58+
         n4kZJPRCb39W9pJaCcUMDwGLkjOBLlc86d/iS/Fytd5lgoUyXceN2cKNzjviu4qr7sy7
         goQ24TZS/A2WRPZzKtGdyb6vKkTL3oDyJ6DUCllmXE/ocDnHo2e8H2q4fgkIcGZLvGOE
         TNymcO7P0c0PFH8zv2hkSlPK5/OskZ1ll7MTuZ9BLmklk8jISS0ZDUXwPGE8wFha44zW
         9++Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZWa23lu1an2JD4t+geFSXjwEttUkJaq6AXJPvQ7IhhU2DxD0Y
	rGgbrUEpK52zzPj4UwfoTgI=
X-Google-Smtp-Source: ABdhPJzOZiMp8IwDyBNhmsD0d5f5kKIziOco8lwqtPf+YtgKXjChle3hjonTqvkpbKVRCt+RV+tbYA==
X-Received: by 2002:a17:906:814:: with SMTP id e20mr18336288ejd.367.1603744449323;
        Mon, 26 Oct 2020 13:34:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:cc8b:: with SMTP id p11ls10725885edt.3.gmail; Mon, 26
 Oct 2020 13:34:08 -0700 (PDT)
X-Received: by 2002:aa7:d7c1:: with SMTP id e1mr17719888eds.4.1603744448185;
        Mon, 26 Oct 2020 13:34:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603744448; cv=none;
        d=google.com; s=arc-20160816;
        b=FHfS7yIR3gniVvFg/RUdDpOX5rhjruA57cN+yT1pRXPTzqnpkN4oxCyKFOzocoTUkH
         YkLVhRwTHAdFSscEQqbNGZ9bQwE4KRtw3cOgNuO1J61i3USm+rHNL6DSGHw2cFNls/Mz
         MzySJONK5Z33GHh3+eB5As/TbQBoQSKapPFdKcA20sRU8iaeOEODdZLWrNgbbJRPfjk7
         DDEQ61ytBbBlEJevNxzOw8ajIogZ0bWd7jE571tAxkCycqFE+5eYy6q5fqzyYHNAV8Xp
         GHG2CX40jMi9D+4eKUwV4VWdr5PZTB2fzLNxwf7L6It7k1w6qbbNufD6dk8vbTECxENu
         l9IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ACP42UCPZC0vmZHAXGjbnSsMTmLOQ+k7BANgbzBdmHc=;
        b=ALFrb16iqJGeBEQYfayv6SURn6PvjUBSpZ3G5n169k/mwX1zDS77qmpTvTJE1XIYuY
         5lF7z31HR1iFdBZi61GhK9UUYmh5pR69lhTVVeYEEgRMkKGkaJrbNDPKfEpIP2BMDvIp
         Svn9Y+WhJ0mVPFcPEuwfkV+B7t6hOC5+NCxtrZUzZ3mlQCHiVBfzDmF7/Di7nwnpRQR7
         8M8rBWoBD/eA9XG+bb0rtkbE0ugZMa67sK0LTlpuEz9U3AbsUWdHMMxWXMjPoHsPtETp
         C/zj2TDnlBCbW6/x4WUlI0x1ALkeyVM2YubbV7BHdSbFdlfAGeWcKmMGQ0bD6oKIN7qz
         pCSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=JDFEz1Z+;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id v18si330519edx.4.2020.10.26.13.34.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 13:34:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id b1so13864246lfp.11
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 13:34:08 -0700 (PDT)
X-Received: by 2002:a19:408b:: with SMTP id n133mr4906190lfa.564.1603744447206;
        Mon, 26 Oct 2020 13:34:07 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id q16sm1304754ljj.32.2020.10.26.13.34.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 13:34:06 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id m16so11809296ljo.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 13:34:05 -0700 (PDT)
X-Received: by 2002:a2e:a16b:: with SMTP id u11mr234204ljl.421.1603744445140;
 Mon, 26 Oct 2020 13:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
 <20201026194127.GA106214@roeck-us.net>
In-Reply-To: <20201026194127.GA106214@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 26 Oct 2020 13:33:48 -0700
X-Gmail-Original-Message-ID: <CAHk-=whjhHuwANGerJLJyn7jXCfMQMiaBAW+o2r_T+n=Ki+New@mail.gmail.com>
Message-ID: <CAHk-=whjhHuwANGerJLJyn7jXCfMQMiaBAW+o2r_T+n=Ki+New@mail.gmail.com>
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to __section("foo")
To: Guenter Roeck <linux@roeck-us.net>
Cc: Joe Perches <joe@perches.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: multipart/mixed; boundary="000000000000f6c96705b298d94b"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=JDFEz1Z+;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

--000000000000f6c96705b298d94b
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 26, 2020 at 12:41 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> make ARCH=um SUBARCH=x86_64 defconfig:
>
> Building um:defconfig ... failed
> --------------
> Error log:
> arch/um/kernel/skas/clone.c:24:16: error: expected declaration specifiers or '...' before string constant
> arch/x86/um/stub_segv.c:11:16: error: expected declaration specifiers or '...' before string constant

Weird. Is __section() not defined somehow for those files?

It does look like they have very minimal headers, so undoing that
patch just for those two files is likely the right thing to do.

> As with s390, reverting this patch fixes the problem.

s390 should be fixed already.

Is the attached minimal patch sufficient for um to get back to working
order, or is there something else hiding there too?

                   Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhjhHuwANGerJLJyn7jXCfMQMiaBAW%2Bo2r_T%2Bn%3DKi%2BNew%40mail.gmail.com.

--000000000000f6c96705b298d94b
Content-Type: application/octet-stream; name=patch
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: base64
Content-ID: <f_kgr00tti0>
X-Attachment-Id: f_kgr00tti0

IGFyY2gvdW0va2VybmVsL3NrYXMvY2xvbmUuYyB8IDIgKy0KIGFyY2gveDg2L3VtL3N0dWJfc2Vn
di5jICAgICB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBiL2FyY2gvdW0va2VybmVsL3NrYXMvY2xvbmUuYyBhL2FyY2gv
dW0va2VybmVsL3NrYXMvY2xvbmUuYwppbmRleCA5NWMzNTUxODFkY2QuLmJmYjcwYzQ1NmIzMCAx
MDA2NDQKLS0tIGIvYXJjaC91bS9rZXJuZWwvc2thcy9jbG9uZS5jCisrKyBhL2FyY2gvdW0va2Vy
bmVsL3NrYXMvY2xvbmUuYwpAQCAtMjEsNyArMjEsNyBAQAogICogb24gc29tZSBzeXN0ZW1zLgog
ICovCiAKLXZvaWQgX19zZWN0aW9uKCIuX19zeXNjYWxsX3N0dWIiKQordm9pZCBfX2F0dHJpYnV0
ZV9fICgoX19zZWN0aW9uX18gKCIuX19zeXNjYWxsX3N0dWIiKSkpCiBzdHViX2Nsb25lX2hhbmRs
ZXIodm9pZCkKIHsKIAlzdHJ1Y3Qgc3R1Yl9kYXRhICpkYXRhID0gKHN0cnVjdCBzdHViX2RhdGEg
KikgU1RVQl9EQVRBOwpkaWZmIC0tZ2l0IGIvYXJjaC94ODYvdW0vc3R1Yl9zZWd2LmMgYS9hcmNo
L3g4Ni91bS9zdHViX3NlZ3YuYwppbmRleCBmZGNkNThhZjcwN2EuLjI3MzYxY2JiN2NhOSAxMDA2
NDQKLS0tIGIvYXJjaC94ODYvdW0vc3R1Yl9zZWd2LmMKKysrIGEvYXJjaC94ODYvdW0vc3R1Yl9z
ZWd2LmMKQEAgLTgsNyArOCw3IEBACiAjaW5jbHVkZSA8c3lzZGVwL21jb250ZXh0Lmg+CiAjaW5j
bHVkZSA8c3lzL3Vjb250ZXh0Lmg+CiAKLXZvaWQgX19zZWN0aW9uKCIuX19zeXNjYWxsX3N0dWIi
KQordm9pZCBfX2F0dHJpYnV0ZV9fICgoX19zZWN0aW9uX18gKCIuX19zeXNjYWxsX3N0dWIiKSkp
CiBzdHViX3NlZ3ZfaGFuZGxlcihpbnQgc2lnLCBzaWdpbmZvX3QgKmluZm8sIHZvaWQgKnApCiB7
CiAJdWNvbnRleHRfdCAqdWMgPSBwOwo=
--000000000000f6c96705b298d94b--
