Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRGD3H5QKGQEU2AL7FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 976D2280AE9
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 01:09:57 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 32sf53121ott.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 16:09:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601593796; cv=pass;
        d=google.com; s=arc-20160816;
        b=apwdWUQAPxCooHIshtFP+PkMxuAs+vhMPqwrdmbTqL4qCQRCXvtHpFtVeswvryg88o
         w6E4SblgLXNLKODDqXo9hkXCHcOL/8d2/lD9olgA1CHCSK8Oi1asfB2d/3K6J35oU1iu
         99Ry3TfCKm+D3Wy/MkXxxaL3nC6TDP6lFcABzBf28t07p+H3PR9jiBim/xf8QSj5dnpF
         BYU3NsPWgjw44okFU+CW5ivgNVXEnrQhYgnqz9NMrTzVY2SgeRjZlxCrLMjZFLf0K6M7
         s/DHF/mdy+4lZpn6+2iKxuKZTsT006SowKuEuaYbvkK7mV3jb8Y/eaqtq+vW3cheZ1UX
         JRJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qv31eIk6BqJ9XYntzGNcCko6yXgNJQ5Pfn9ZYgsmyYE=;
        b=w13j/K0/4CL9/kI+fVW7gPTSkjIThWFrqTHWRz9EqIfUL99RZxo9k5DDEKP9rV69Dg
         k21yPRP8LcaTDDGWbBGtf2xTFUO7+LEjcjwNB7zeVhwv4oI+a1XMDSt/BPXGL003tbEd
         Hii0XmcHp0tL4bpJoErDP2B/A+yYrk5+Cd4HeHWxStFPsmOFWEYjOZqj6ifgVk6JnXeA
         0Ez5/Vzm0d7fmh4nO49ihASjlPHRP9QKnlmcuzfKImzp+9Z9Y5xTxuNLpnAK8w1kEe1w
         ebW4qpNtBRijDejlVCdyz7v6yBGn5E9krBcuyLRzbp7FNqGc4Qa5a5sjqAfoN6uJo5w5
         fbMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g7SAlLwD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qv31eIk6BqJ9XYntzGNcCko6yXgNJQ5Pfn9ZYgsmyYE=;
        b=ShOXdE2jm+Rdg8+AVaDgmYBTudTcUGT6WEoWPnh/8EUGdt1xysW18au4js28T3Yh5v
         QwJW3tg/TDpzva2YW3AlMmubbU2pZXQaXA+wRIQlAhd6U5lVwwIqqlzVMKyOFcajBdGp
         qQg6vzHx6+A1yoypJcY/c+A2qTXJ6KFKzYy6tSp6gpXQ3+0aU4tIf8EZXTdh4guNmC7q
         LLAuHTgU7b3kmE8GvyMrDpY8Kd2HIQBW4aKgZhuZF+RiVwS9fmaowSUghtinVYUkdbma
         akDmnaMkbLI0j8S8IUQIL0H003P2SqlG/d0B0OheiC/ZqKINu6A4zkkX60RHDnw0wBH0
         IxTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qv31eIk6BqJ9XYntzGNcCko6yXgNJQ5Pfn9ZYgsmyYE=;
        b=MnL4NWUFvG8KAalkRIsgI0mG5dw8NMNdk+f1aY5gT4f8sx1sVzYaFnMyj2t4b0RWMu
         64De15WiWGTP+5PwMgiZWgHY7+6S2bSUvYoVsprsIqtW0JwXzaUS7CT5a6fqUzm4/EtG
         Ve0f2bzdFH0VqyYqCe9EjrQ7E+tOF7f7EeVXuLNaenfGHQolLXdC5d+qaPphHSbo3r6L
         X8rFp/mznCcuoMQsitYkRKDAXuaB24WcvcDfZ02aYzEGvWwrsjLjK2YuDbZ8Mp3ba/ih
         H5/keaKVgAQfYAzIUDpG2AuY5fuXZeq3N/uK6zXtJgSUeUbeOnacMeVPTl6tQXyv0bNR
         eqBg==
X-Gm-Message-State: AOAM531jWMYA4alfyfiyUvmaMd8Yb1u7j97s4E+0XxUucbnPFQoQU5qA
	4ivZrkkrEOMRFQT6KI387dI=
X-Google-Smtp-Source: ABdhPJy7iHmR/KIkgKYHlJfsIV2cw/S9QOkVjlxUZC+1CrUfVEsmNxRoJy8ZpQh278aoHfkFeOmLFw==
X-Received: by 2002:aca:1b01:: with SMTP id b1mr1515294oib.137.1601593796412;
        Thu, 01 Oct 2020 16:09:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd17:: with SMTP id b23ls1486669oii.2.gmail; Thu, 01 Oct
 2020 16:09:56 -0700 (PDT)
X-Received: by 2002:aca:758f:: with SMTP id q137mr1529552oic.170.1601593796046;
        Thu, 01 Oct 2020 16:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601593796; cv=none;
        d=google.com; s=arc-20160816;
        b=tTEHktFT81083xT4dIIMtiDf9oc1t+vjwA14XfZs2XLBtRvfM8C6PZKA2+d0uuth3w
         bEz19cEtJJy1lTEMLPqGnpkk+CbdPvJSGbA1DhdOpQf9+0iKA4jMAHAF7WnJbbPEhKhS
         yLFttKPhSxGqlwyPixovWXALMwSqr7U0AY4NoBMyLX9ow20clwxC9TUB8/gn8ZWvD+cX
         6cyKFjBJOyxjvKDteSrLEHqeOgvv1xqafQw1MydVwPx8LXL0A8+23IkajVl5c9EkHirH
         aFHwjb046BmMbgIPmLwg9nsGCLjojbXYgBdT5StzsJKAYa6CiXIppZjAgh8eb+eqSMqF
         6OPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0c4sDngFZ83QHOY6hrIOQuCbDbd9L0RjnD0ZUNXCSMI=;
        b=KH1bAmKYHsP8UWUsZUAzxeGjfg37rEfPcVNmbAK7qD7Q29asLXkt7ZzrI/hyjVA4kv
         mMf4wimor4ftkOvV2q0WSsbWAA0EmzcmcBqF4VFvWUhdpPDlVz4NLqxLK7F5PYv7n8Nl
         8LZKCbYFQJqktYmPxARMzLl4J6qoS4edrL1kNlRdU+4Bsv+ml9AHFn0AVB5VC5OwPHjk
         6HgNJoUr3F0xBS5njpqOySBGoW/9iUBOedmebUt6dID747iiTw/C3yv3wmkZntXfkZ7u
         NJNCAgeA43yg15P1xehVy/NfEMhVP5cjESOlPM+jU/SeXe5g24dE6e/X9ZYAhJxa7YkZ
         AbeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g7SAlLwD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id o22si72528otk.2.2020.10.01.16.09.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 16:09:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id jw11so217046pjb.0
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 16:09:55 -0700 (PDT)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr2220022pjj.101.1601593795113;
 Thu, 01 Oct 2020 16:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
In-Reply-To: <20201001011232.4050282-2-andrew@lunn.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Oct 2020 16:09:43 -0700
Message-ID: <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g7SAlLwD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Wed, Sep 30, 2020 at 6:12 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> There is a movement to try to make more and more of /drivers W=1
> clean. But it will only stay clean if new warnings are quickly
> detected and fixed, ideally by the developer adding the new code.
>
> To allow subdirectories to sign up to being W=1 clean for a given
> definition of W=1, export the current set of additional compile flags
> using the symbol KBUILD_CFLAGS_W1_20200930. Subdirectory Makefiles can
> then use:
>
> subdir-ccflags-y := $(KBUILD_CFLAGS_W1_20200930)
>
> To indicate they want to W=1 warnings as defined on 20200930.
>
> Additional warnings can be added to the W=1 definition. This will not
> affect KBUILD_CFLAGS_W1_20200930 and hence no additional warnings will
> start appearing unless W=1 is actually added to the command
> line. Developers can then take their time to fix any new W=1 warnings,
> and then update to the latest KBUILD_CFLAGS_W1_<DATESTAMP> symbol.

I'm not a fan of this approach.  Are DATESTAMP configs just going to
keep being added? Is it going to complicate isolating the issue from a
randconfig build?  If we want more things to build warning-free at
W=1, then why don't we start moving warnings from W=1 into the
default, until this is no W=1 left?  That way we're cutting down on
the kernel's configuration combinatorial explosion, rather than adding
to it?

>
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  scripts/Makefile.extrawarn | 34 ++++++++++++++++++----------------
>  1 file changed, 18 insertions(+), 16 deletions(-)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index 95e4cdb94fe9..957dca35ae3e 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -20,24 +20,26 @@ export KBUILD_EXTRA_WARN
>  #
>  # W=1 - warnings which may be relevant and do not occur too often
>  #
> -ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
> -
> -KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
> -KBUILD_CFLAGS += -Wmissing-declarations
> -KBUILD_CFLAGS += -Wmissing-format-attribute
> -KBUILD_CFLAGS += -Wmissing-prototypes
> -KBUILD_CFLAGS += -Wold-style-definition
> -KBUILD_CFLAGS += -Wmissing-include-dirs
> -KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
> -KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
> -KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
> -KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
> +KBUILD_CFLAGS_W1_20200930 += -Wextra -Wunused -Wno-unused-parameter
> +KBUILD_CFLAGS_W1_20200930 += -Wmissing-declarations
> +KBUILD_CFLAGS_W1_20200930 += -Wmissing-format-attribute
> +KBUILD_CFLAGS_W1_20200930 += -Wmissing-prototypes
> +KBUILD_CFLAGS_W1_20200930 += -Wold-style-definition
> +KBUILD_CFLAGS_W1_20200930 += -Wmissing-include-dirs
> +KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wunused-but-set-variable)
> +KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wunused-const-variable)
> +KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wpacked-not-aligned)
> +KBUILD_CFLAGS_W1_20200930 += $(call cc-option, -Wstringop-truncation)
>  # The following turn off the warnings enabled by -Wextra
> -KBUILD_CFLAGS += -Wno-missing-field-initializers
> -KBUILD_CFLAGS += -Wno-sign-compare
> -KBUILD_CFLAGS += -Wno-type-limits
> +KBUILD_CFLAGS_W1_20200930 += -Wno-missing-field-initializers
> +KBUILD_CFLAGS_W1_20200930 += -Wno-sign-compare
> +KBUILD_CFLAGS_W1_20200930 += -Wno-type-limits
> +
> +export KBUILD_CFLAGS_W1_20200930
> +
> +ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
>
> -KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
> +KBUILD_CPPFLAGS += $(KBUILD_CFLAGS_W1_20200930) -DKBUILD_EXTRA_WARN1
>
>  else
>
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001011232.4050282-2-andrew%40lunn.ch.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnVC8F1%3DQT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1%2Bg%40mail.gmail.com.
