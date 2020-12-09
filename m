Return-Path: <clang-built-linux+bncBCS7XUWOUULBBU56YH7AKGQE47M2OCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E1C2D3A3C
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 06:23:32 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id a6sf212109qkd.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 21:23:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607491411; cv=pass;
        d=google.com; s=arc-20160816;
        b=ir74yYU6I1G841BbZkCpIW48srcEC8mNJeHlXzjxQI5Rh/vEehX/dcSucoLedP7uDi
         71OOsk3fhg0RL13Fz5QPpTqakugnXS+rmGQrCjHU6P+cUlvPoyKAmgMZnscOqvR7Lnw/
         fZ6aeNUKjloN1+occkQPvHoOS+/MyTQXJuHboI4pwjlpVftxGkYOuwserbVPYo+vzcFV
         htculbXeovuuiBeisJfDZiQJ1spksf24Bf98WugmUrMY/htf3mW05lopBkeHi5Kyu6yd
         6HrVgp/C7W5r88TRANMvcun25tAKNXRaZdfyAv1hKyjV0MuY/PMN9wL5bKUKa1D2EY9Y
         sjiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gZ+NdseDNn+iD5NUKuorAB/pAmVlZZvz08QTBaYhiTo=;
        b=r4sgrEp6z00yzGFQSLHLtqI4WgFXG3F5V5n6Kuw+bXIFvvzy8TejNyqJ4v92V9B35i
         FGR/7Vl1qSbzxq0WS+FlD8KnOhExnAFyNL/5hiZBpqfKuA52R7CM1XX9xWuOAXpy7Zzm
         6GmwsqIFqsJ4vrP1x61GAtauDGvGa94KVGC8nQXw+3oMefrrPPbsArURA+XxrsFTwu4E
         13hyy2p9+VqYBk23Mqrte3kYXswDzAUq4qTfotc26LXgVWOwPGVvs8uYY2wj4GPMQaGU
         wxPCWrborYW1e+C9W3v/3oBPASDiUD5nX3YAmU9TRKtalnK+jitvTPndslmN7ON1EyJ8
         myew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OxsOUIM8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZ+NdseDNn+iD5NUKuorAB/pAmVlZZvz08QTBaYhiTo=;
        b=DuZoFQYW/Q71XihHpWOKBlzUc6+MoreLQyxS6aamSxSN7dNtWrdbfAxdxNigl0OddK
         3SMRdcMgpe2nLSZKm+tigcMjsx2/CwRX9VZzs3F5HsN3uoN3aJvqiXjwKawdBiMcn740
         2mH5untN4QnSkBYXRifUWzJyyLUu4+knlMskjhTMW3o2FNTED7b6dXYCe7LIcMl2Mr/Q
         7C4vDzC8BL3s81I156G85vG/+UKXxGm9egW4A4IVWDKIR3rGzeOpHySRVMlzfui+sX/V
         6Y3G2RcHoAtV3qeuEx8ehm5ce+wb80IQR0Wv+jtkvt2OpR0GZ7nFS86fU4BZw+qiMJqI
         JfqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZ+NdseDNn+iD5NUKuorAB/pAmVlZZvz08QTBaYhiTo=;
        b=gWN+z/SmUslyn6z6xE6lb+vifucXZIRnLPZUhgWQoQgqKH0MLyM3kdPKQoP5Fg3keD
         pBv9pAJ4Vn6fGRrhHYJfd2XFDEVPwA2Px7r2Aypalhrn3/KYbzmG46e4c2HrJtM1S9Vb
         jp4yMG/OuBq0S1pSdb/4zanh4WrG4y2FQv1jhj8iYX9NnkwUgmcPdmTopYBryjZLJqoD
         lCpf1jccpyqIrjWg1HHRLR6e7nYoIvz45bLOPzhols0JvBT72Y5OPSwqIKUnBEt3em54
         GbEygFaj0jH8LclFoqPkMTJvDJaLV13j+MDHwvL7Wc6U8qs384BIhsVDPwvvUXKMeFwL
         1JkA==
X-Gm-Message-State: AOAM530YQGxL1Qu+RCOBx5v7XvbfBHoy5txnB5zLwASTH8YNlQYCr286
	iUt8yCvcO5PqjmIzwg7B/uk=
X-Google-Smtp-Source: ABdhPJwY78HgRnJJkoEr9zptIev5ozfbi28WjM01LTUu5elTMhrUf4DwylBOFXK1AltfXVeDFpOSUw==
X-Received: by 2002:ad4:4108:: with SMTP id i8mr1130932qvp.49.1607491411741;
        Tue, 08 Dec 2020 21:23:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:67c2:: with SMTP id b185ls268974qkc.11.gmail; Tue, 08
 Dec 2020 21:23:31 -0800 (PST)
X-Received: by 2002:a37:490a:: with SMTP id w10mr1071263qka.487.1607491411387;
        Tue, 08 Dec 2020 21:23:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607491411; cv=none;
        d=google.com; s=arc-20160816;
        b=iN8v7eprFOUBZxPj0Ph/RYNcQibL9BiYYKDucg9VYSGb2KCEqgljMZHZ6mB8iVvljT
         UEiiTPnbkXtSyh7fyxR3LTOiBQbXg9fTB5qiQIHUcAb8wMH7f5lLmRRevRf3RAqxppf9
         6swoln4k7KpOWNq2WP+gbAlg5hhkiU7I58jpfb/9hYPw6T+pUkC1/RwV9+ECnPDFvf15
         bBLZIGdsz0WttYFdABotMBkNK3WXh9OAkRtXbB+q7BKwUZ49VVObXmCrx/XKafubT+N5
         LQHrD3KB5jxWllIzJ7gxrwII7L98esjFcfYYlXBIzkL+9qHKPXFbs9eD2Y6euvlS7de5
         HXAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3Tqs2Bz7msoUPZyObgWN3xF+h9p+l/eCjvEQpWbPSSU=;
        b=irIaYc/UoUNv35o80q06AI/cvVBjgvnWC7DOwEc/tGGa+ujbwyUfn8hv3koM6bjVdN
         Wo2PRLAW4u9G1unDjsj/7rnqguW7HSWGQekcTdkMFev/oherD7FlF/D+rQLuZwaFOfbE
         D2Qi+diNAXFMfR2rk70pTHEnVFY2cZTjAKcNw1+0N/otxmgE8gJmR2oX6f4zoRTH3WzZ
         FX0wKhMXTXRP7eWSgScyaZPnYfIkx+58cGKeo2kjBXFOXU7HY4mStJltMWkfz7zObIyC
         8dYx+QT6Vj71672l6YPrf3o2ekrhZ22mZlYMXefEZq8JaIdElr+dv2rLXk949yufuMC9
         B0YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OxsOUIM8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f21si49876qtx.5.2020.12.08.21.23.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 21:23:31 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id t7so261232pfh.7
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 21:23:31 -0800 (PST)
X-Received: by 2002:a05:6a00:acc:b029:198:2ba6:c0f6 with SMTP id
 c12-20020a056a000accb02901982ba6c0f6mr782498pfl.53.1607491410514; Tue, 08 Dec
 2020 21:23:30 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
 <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com> <CAK8P3a3O65m6Us=YvCP3QA+0kqAeEqfi-DLOJa+JYmBqs8-JcA@mail.gmail.com>
In-Reply-To: <CAK8P3a3O65m6Us=YvCP3QA+0kqAeEqfi-DLOJa+JYmBqs8-JcA@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Tue, 8 Dec 2020 21:23:18 -0800
Message-ID: <CAFP8O3L35sj117VJeE3pUPE2H4++z2g48Gfd-8Ca=CUtP1LVWw@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Arnd Bergmann <arnd@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OxsOUIM8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Tue, Dec 8, 2020 at 1:02 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 8, 2020 at 9:59 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > Attaching the config for "ld.lld: error: Never resolved function from
> >   blockaddress (Producer: 'LLVM12.0.0' Reader: 'LLVM 12.0.0')"
>
> And here is a new one: "ld.lld: error: assignment to symbol
> init_pg_end does not converge"
>
>       Arnd
>

This is interesting. I changed the symbol assignment to a separate
loop in https://reviews.llvm.org/D66279
Does raising the limit help? Sometimes the kernel linker script can be
rewritten to be more friendly to the linker...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3L35sj117VJeE3pUPE2H4%2B%2Bz2g48Gfd-8Ca%3DCUtP1LVWw%40mail.gmail.com.
