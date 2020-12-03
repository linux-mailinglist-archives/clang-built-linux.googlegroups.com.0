Return-Path: <clang-built-linux+bncBC2ORX645YPRB7HEUT7AKGQEWUG767I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 404F42CDDF2
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 19:46:21 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id l5sf608602ioj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 10:46:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607021180; cv=pass;
        d=google.com; s=arc-20160816;
        b=nz6eMCGC3tlLzxEJtssYeAVuJ1hgbqFwH630W/HJPrFRC7uVLMBwHYeU2ccu2qDaZk
         cZfyQ3IZcJDQTV64ydCwP5ZBQgBAGdQni9j5dO5CD8mLWjvu6LHmc1og62xv2AztZFWr
         FDLK91xgMbO+Ws5alLDhpucNcHGNmYCnAyEPqUXO8LTirmwQvDYOylHIox+T/5CGcF0Y
         HPIFMryjE8/e3mLQaSYOct0os6wl3ywF6gCvCG/dlqTY+dnxmgFUddeYCBRioFFiqNpA
         xaG2u8zlCCFnZEV07I/n8rJoBXECkLTFmV+Olq9gZWhXdOosG//bWdldxfyoh/Ad2gaV
         kmcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6MqcTBRn+snJaJH1WVRtq4E+xqH5YLATj9t5q1Kp7go=;
        b=dvhln7PGMMIqAPZg4QYO7UsM3vn6G6dtCcY9OdgHzgDwEpNMmb4kmIcEEFveeUgxGX
         SAbsobL9hATm092q1z3tY+zTbDWmUTzuRsuSCvg47S7zJ7IJJ2YttNHVZdiDrR3utksi
         0T0vyz5/lGeJdRUBPZQMGALZ/LnPbNfnzEVUzfrQfFyBplTN3pbUSaKewPSuxN+kmwLp
         TiW9el4ZKX0bfLk8Z2MIR9xSR+VGfDe7PC0VNWEwVlB5XpKe1qxwWCZZwNMJvuJqPvY0
         ZroiaG6+G5upcU3mBfeZ/MXv5FXb/u8dMvt+pdIESO4FGYpS9adME0GEYb8eUucKPKp6
         2YKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=da7qVXXS;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6MqcTBRn+snJaJH1WVRtq4E+xqH5YLATj9t5q1Kp7go=;
        b=R0W51A3aXL/rVr3NBOJbtZ4vkgJnOI9Yqarrpbj6LVkJMjSI6scOFhSJG4MrYfL3zy
         hY91KBNOa6Ux+74PsE8x/iVv8UapWr6LPKEfGygxBI8AjAxyDTWjC/zqcQQIi1/WPUYr
         gjeUc1cJmzPt96X6OtuGsXga3QUruNUqpBm9K65LWxenLj2++sofRuu6iYEZub0wcLIE
         fgjpS0dBtWCDJYvXhQSOd3otmfbh9dGRWrn8XrT0StatQjlykqaTKy34d7TqCDpzxEzj
         m8g48XUdVhVbL3GmBTNdujbrLLB52BkvyY6BR63vhV6C0Sbh/cvIwQtifaM4tf9BNFRt
         Y4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6MqcTBRn+snJaJH1WVRtq4E+xqH5YLATj9t5q1Kp7go=;
        b=KbbXCmf62/F/UfrDj8Kwws+5tyMKztHuwuHviqOMBTI5z0MbQPoOuy1V5KG6sqAJHh
         CqQpDdkmYM7F8OBc8cmZegE8SZLwxAT5jg1sUPzxxjLHGpzOUnkvTJUAANFExO2ycFEP
         I2sgdv2SbPsSltXY02uDQAKIVP9Q/SBFnyFOOw/JUYgxnyZZgFBGnmIn7HTqyu+Qc9hL
         A6IvSgC5THPY7pc5AxSPP0bzZl1aclcuHrm61SNwls5GdvoL8Oj3om9lCaWWMRyONNr8
         M3KuTda787VohVNp8zUvOnn+YyGlaFfDeA3XP93QVmqnDo7lM1jjPcyjLbUKJ+5J97o3
         MbFQ==
X-Gm-Message-State: AOAM5331SwOzzjGLSEYgKgIi5B/LbPPZpbuZIWYHqvgc88siG3A+x23q
	9Aaj5ynrHKNabtrIRFcQA/k=
X-Google-Smtp-Source: ABdhPJwFPUOa4vm0qBk7A53cN9Eu3aU04YHU4Bo5b0opYfOxDTdUP9jcCDMHV2ybXBsMZALIAVzNKg==
X-Received: by 2002:a05:6e02:ea1:: with SMTP id u1mr590207ilj.246.1607021180213;
        Thu, 03 Dec 2020 10:46:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls292972iot.1.gmail; Thu, 03 Dec
 2020 10:46:19 -0800 (PST)
X-Received: by 2002:a6b:7317:: with SMTP id e23mr708184ioh.16.1607021179728;
        Thu, 03 Dec 2020 10:46:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607021179; cv=none;
        d=google.com; s=arc-20160816;
        b=uKZ2F9ChC7+Yz4w++x2hvkaWE28I4VeRkXHaJuFw0+X9slI0w79wraI5L3sdkajDAe
         RwmkOXYXMmXaSg4jH2IQNK07d9fGnOuK8dpM74jTs4Hv1gDnlEA6gftVknSZ8Qv5XJ2e
         4nlpWHbqcfO3W/nguxCigQm8y4aNRszx2hbGajNJ1sgFMjTER8UPbHnA1L2fcsuYjlwg
         DJz7QAAzFzWnNKq2Rci7GvGKj2uHhgAn20Irytzhgc6ecisghoBSBhPPPP7jX93q4XrJ
         WtomcsSPqqqBTihqNU/jIxYXNvhBuwHf9zswCcUuUcUEyMMd9jpLxgTqNK1qvqTr8fCz
         9Pvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H0DcdlycUl8yD+PFJ+dKHHIvXlHjuiMGa/ykP4hbRMk=;
        b=GLkOu+eaXtnRtbZkvs1w8Viqf52WyxX03zXnbeNIMkABja/610s9VNZ3pH5Iso/B8C
         I6aZZB4Qs3uHZczy4deLAJzVhha6SJr3mg88Zlg1QUCujWlPfx0lIB69csqzyy5Wc+ky
         1SWBU705oA7eKWDKFe6VSsVjRwwqCtoIjX/7hCbYQL1aM0SIqN+PKQP/Cl25OVJBbhdC
         pH5E31/kJoe79dw3ZYgp55jcLps+uAu8qqdz/Gbdym6fhqoP2T8kcdpFktJvgEJiey4b
         mOI3oj28Kr2ZQIoyfp+W2emluFH9suIPUlGpOsgK9WSzfoVjM8dkDLCQ8jyqWeQNJcof
         Rctw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=da7qVXXS;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id u4si16730ilk.5.2020.12.03.10.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:46:19 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id x4so1821990vsp.7
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 10:46:19 -0800 (PST)
X-Received: by 2002:a67:80c8:: with SMTP id b191mr213218vsd.36.1607021178886;
 Thu, 03 Dec 2020 10:46:18 -0800 (PST)
MIME-Version: 1.0
References: <20201203175551.573123-1-masahiroy@kernel.org>
In-Reply-To: <20201203175551.573123-1-masahiroy@kernel.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 10:46:07 -0800
Message-ID: <CABCJKufyBcN-foh0kj5kUsn-wiZMJ_a8ZjB72jaTmN2GEVzVNA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: avoid split lines in .mod files
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild <linux-kbuild@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=da7qVXXS;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
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

Hi Masahiro,

On Thu, Dec 3, 2020 at 9:56 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> "xargs echo" is not a safe way to remove line breaks because the input
> may exceed the command line limit and xargs may break it up into
> multiple invocations of echo. This should never happen because
> scripts/gen_autoksyms.sh expects all undefined symbols are placed in
> the second line of .mod files.
>
> One possible way is to replace "xargs echo" with
> "sed ':x;N;$!bx;s/\n/ /g'" or something, but I rewrote the code by
> using awk because it is more readable.
>
> This issue was reported by Sami Tolvanen; in his Clang LTO patch set,
> $(multi-used-m) is no longer an ELF object, but a thin archive that
> contains LLVM bitcode files. llvm-nm prints out symbols for each
> archive member separately, which results a lot of dupications, in some
> places, beyond the system-defined limit.
>
> This problem must be fixed irrespective of LTO, and we must ensure
> zero possibility of having this issue.
>
> Link: https://lkml.org/lkml/2020/12/1/1658
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  scripts/Makefile.build | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index ae647379b579..4c058f12dd73 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -252,6 +252,9 @@ objtool_dep = $(objtool_obj)                                        \
>  ifdef CONFIG_TRIM_UNUSED_KSYMS
>  cmd_gen_ksymdeps = \
>         $(CONFIG_SHELL) $(srctree)/scripts/gen_ksymdeps.sh $@ >> $(dot-target).cmd
> +
> +# List module undefined symbols
> +undefined_syms = $(NM) $< | $(AWK) '$$1 == "U" { printf("%s%s", x++ ? " " : "", $$2) }';
>  endif
>
>  define rule_cc_o_c
> @@ -271,13 +274,6 @@ define rule_as_o_S
>         $(call cmd,modversions_S)
>  endef
>
> -# List module undefined symbols (or empty line if not enabled)
> -ifdef CONFIG_TRIM_UNUSED_KSYMS
> -cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
> -else
> -cmd_undef_syms = echo
> -endif
> -
>  # Built-in and composite module parts
>  $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
>         $(call if_changed_rule,cc_o_c)
> @@ -285,7 +281,7 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
>
>  cmd_mod = { \
>         echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
> -       $(cmd_undef_syms); \
> +       $(undefined_syms) echo; \
>         } > $@
>
>  $(obj)/%.mod: $(obj)/%.o FORCE

Thanks for the patch! I confirmed that this works with llvm-nm and
bitcode files, but it does still produce plenty of duplicates, even
though they now stay on one line. I'm not sure if the readability of
the .mod file matters though. Please feel free to add:

Reviewed-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufyBcN-foh0kj5kUsn-wiZMJ_a8ZjB72jaTmN2GEVzVNA%40mail.gmail.com.
