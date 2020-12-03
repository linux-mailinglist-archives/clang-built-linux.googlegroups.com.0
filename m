Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBP6PUT7AKGQESSDLPNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4C02CDCE7
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 19:00:32 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id e202sf973986vke.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 10:00:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607018431; cv=pass;
        d=google.com; s=arc-20160816;
        b=vGahsnOYAhu1snRkEFWgaaxQRAX1svoujh313d2kFEs+zgVa+2aur8X1AMqaBgbuO+
         GVigPSasQhojv9d1hwK1/EgzMFVHwmlPl0jAHbEsOr0olcNeSZ5sw3+31KtcQ4bNwBQ5
         OG+pIIWbyluKVpVKs/thurgWj+KqfflZYXNjaXZqAB4n2aOtBGMBI1YsX9l14GouO0zK
         5Gbkf6CbwxvmQcFAaS1E/fwHHuIRGI0521edYI1iWvKqlZOb+6kATiBjuwjARMD3isfp
         EcsiY+uzdzFyKwgR+DE3hzgtws4wbGpZSUVj9vr3K3E5uKfTjoDmxKEIwStkBPg7X87K
         wstA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=HVNOoEEDxi6LcCJfcshtHg/8F1k8YRCOFWVgNQGJpKg=;
        b=n8e0zEFx2IoiFwWzRzC3UWWQutRseRi/S2RkfDHxRWYMFW3niNewpI2BI8lNba4t7A
         CXEvm+5FRecN3keERccWv6AXfUPGFLEEkXyBVo6WV6lNGHvla1mBZkEhJIfwyAxpVQxF
         YeYYNxPlRN1F2Q08S6/WvXgn7gRyK/eR0ZXj/hA8CA4MlN4a1PiDhgm5koYtWJQZf5JY
         rf/WfEJT5OYBe6kZZV8m5nzmsElFdNrSeEvh9DcVYsq4Ytm4+BwhcUqbtWb1eAhkIctA
         Sb6KMJF5pH1+iEEfkbnnRc2BnngiM2nO4yMfgziasNiNUYTZq88iyUIP2lVQA5T1hTsk
         RDQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=c8s94mds;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HVNOoEEDxi6LcCJfcshtHg/8F1k8YRCOFWVgNQGJpKg=;
        b=ZqgQ6y8DLdyN2GVfsfw+EklrqmstAxQP2l0tEoSe97l1UJ5XC6Pu15ENbBBAcjtahw
         axSfCqxnglTrSJSbAfBTjgSXYcD0CYR/nEG/N+x2d9h81UMSGhN+Ob9wZLOlFz3/Oezv
         k2DELWJ8O217L6/mUMqHlDcYxGgX89B+lCvEaODrZsUuZGXkeKwB7fMzGMHXOVZ6JSPa
         Q3r+ZUU5BgwtKDaKGtWgNibm4LfgKRS0rW6YJql/bCLbjIf0C7Wy7cmOxD5BudXuulRR
         JwaNRt/P7fBhGnT/XKzxWpJomvnT7eOrJMIP9lIcJOS4xC5ifQd+qkai900Zd2pqwWwk
         6juw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVNOoEEDxi6LcCJfcshtHg/8F1k8YRCOFWVgNQGJpKg=;
        b=qOlnwQzUMe0V3IbFK9wyD4KUrL1ySZB+x6qZog4FWgrh3RQnOd3d/yWIEKZ5kK31Oy
         q3RJRYxkaQrNgVRmqNL8QO8pbb1ot0sdw8YU7rEgosrblGv5CAqDoMfK3gYTgHeZvadg
         9VXR9AiHTA1aiQpIkxBMDyRV7/A4NJsYn6qfHof/QIjWQaorhcuU0+ZnRjSmxpFl25zs
         lPYazfHivCrtyE9YtkPMLQeGRhzDfIBpD/0trXD9XEBwg9smBp0NNETgsd1vXJEi51kz
         Rc+VKmbqeOUhKPwpuxnFspTY0NOD+cdzoaOJRpa0xx6gj6VeC1qBUdJbvrsQcuSQuiJc
         Nl+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YI9KyJby7efXSxwcOdEQjvg9xRRRRb/NQ3/tBlrBAtNnOaV6l
	Hla8qDtPWWIdLvHsN9gcF+M=
X-Google-Smtp-Source: ABdhPJxjwRxHgO3bo7DMD7dMU/4PQ5wHnlKnqg+/zGjT6yxNO218sa4snjN4x7VT4dgYtppC63z8RA==
X-Received: by 2002:a67:7f0b:: with SMTP id a11mr472996vsd.22.1607018431499;
        Thu, 03 Dec 2020 10:00:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2758:: with SMTP id n85ls382425vkn.8.gmail; Thu, 03 Dec
 2020 10:00:30 -0800 (PST)
X-Received: by 2002:a1f:dd05:: with SMTP id u5mr374577vkg.20.1607018430876;
        Thu, 03 Dec 2020 10:00:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607018430; cv=none;
        d=google.com; s=arc-20160816;
        b=TCnGAhQp+ZXiS+VbsRneuLozt0Z8JlDXrKsQS9df2E0D3bmav+dQoveboGUnwZtMZY
         4FcnVOGHoMDEN8sKh/msMWYgnKjc1/W7K0ZRWKNidqJ0y2mJXPHMNIo5CgP75aHjsLri
         8vrC9xtUv7Em6+EC7ginoD8qyAyF0Br5/FmWICMsFgZpkpQ+DBdDipFuvCz1a5VsRnHq
         ZcmcyJsJke4jvTht9t+RyjE6zW+fke/XR31YA+FEIS21AM3508ELqPJHKwNO/jncKzSO
         6ZlsCwXBVI7RnzaL0/JpejrgSnOQp33+AfmeIoBXUhOndqSUdIVZi4gbYDgZL+eVshK8
         FMMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Q8rUUiuQPCHtIjHKZ25iSma0yE471Wc2ZwPZ52EYpXA=;
        b=zR+LjalyOsDP94igtXbnr3a4yxy61r6loXpQSFdDxcO3wocOJWt+LEzzgfC+dDRKlj
         BlZrgSTl9l1fFIucb2H9/JStX0wLmDK9n+vZKj364Jo4w+16KXxDFOTvdBXU7DZSNJBI
         kbU9655+rF9oe16XMF6rRIo+wBAf0IhPMegF0zj387eENZla3aQ5+eaYYP2tBruzxDGA
         Z/+5jqUghxF0WqwphI7bzu1YtqAc3uUzsPYdqDS0j4IRh1E/+qEat+0xVteubFDMC8la
         hoLnpnbzGIt0jqAJs9nuqH58lnaVGP8+UH4r89bJDx8nip/TOefliSx/nSViKpp8cpWX
         9ZYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=c8s94mds;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id a16si13793uas.1.2020.12.03.10.00.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:00:30 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 0B3I098W005170
	for <clang-built-linux@googlegroups.com>; Fri, 4 Dec 2020 03:00:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0B3I098W005170
X-Nifty-SrcIP: [209.85.216.44]
Received: by mail-pj1-f44.google.com with SMTP id h7so2426176pjk.1
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 10:00:09 -0800 (PST)
X-Received: by 2002:a17:90a:fa0c:: with SMTP id cm12mr265364pjb.87.1607018409010;
 Thu, 03 Dec 2020 10:00:09 -0800 (PST)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-15-samitolvanen@google.com> <202010141549.412F2BF0@keescook>
In-Reply-To: <202010141549.412F2BF0@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 4 Dec 2020 02:59:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT350QjusoYCQEHDdoxAfTZjj82xp86O1qoNF=0u0PN-g@mail.gmail.com>
Message-ID: <CAK7LNAT350QjusoYCQEHDdoxAfTZjj82xp86O1qoNF=0u0PN-g@mail.gmail.com>
Subject: Re: [PATCH v6 14/25] kbuild: lto: remove duplicate dependencies from
 .mod files
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
        Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=c8s94mds;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Oct 15, 2020 at 7:50 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Oct 12, 2020 at 05:31:52PM -0700, Sami Tolvanen wrote:
> > With LTO, llvm-nm prints out symbols for each archive member
> > separately, which results in a lot of duplicate dependencies in the
> > .mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
> > consists of several compilation units, the output can exceed the
> > default xargs command size limit and split the dependency list to
> > multiple lines, which results in used symbols getting trimmed.
> >
> > This change removes duplicate dependencies, which will reduce the
> > probability of this happening and makes .mod files smaller and
> > easier to read.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
>
> Hi Masahiro,
>
> This appears to be a general improvement as well. This looks like it can
> land without depending on the rest of the series.

It cannot.
Adding "sort -u" is pointless without the rest of the series
since the symbol duplication happens only with Clang LTO.

This is not a solution.
"reduce the probability of this happening" well describes it.

I wrote a different patch.



> -Kees
>
> > ---
> >  scripts/Makefile.build | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index ab0ddf4884fd..96d6c9e18901 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -266,7 +266,7 @@ endef
> >
> >  # List module undefined symbols (or empty line if not enabled)
> >  ifdef CONFIG_TRIM_UNUSED_KSYMS
> > -cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
> > +cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
> >  else
> >  cmd_undef_syms = echo
> >  endif
> > --
> > 2.28.0.1011.ga647a8990f-goog
> >
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141549.412F2BF0%40keescook.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT350QjusoYCQEHDdoxAfTZjj82xp86O1qoNF%3D0u0PN-g%40mail.gmail.com.
