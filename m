Return-Path: <clang-built-linux+bncBDTI55WH24IRBDEJ7PUQKGQEWKAMQ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C927891A
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 12:03:57 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id n185sf26417371vkf.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 03:03:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564394637; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NBkg56Si9YzsmvTdPbS/XZVtjW5ix2lGntud5MHAK5qirfKRK+tcqFTt9nOWyfJzp
         VkfOwNFsEHj9+rwXIol9NwsBzh7uA0WN4BIl3Vwv437ktOXgfwTvRHUXKiDOSpk1l7Lr
         OAuaILqU/pBR32bwoM8CNGI9IAYiK1oTsyNmkXoAwxw2iPLtNE5COz2Q+sSotTLYAxGA
         2y8UwjMI3WYE7PqUAP2ADYyIeJg6NHkg4Ye1+QDzyq7t4vftuDfyJxSE+UmSfLB3q/AK
         h5UrESzkSPKQNOOAIrI6sauUx7uQH4rei7XLZeaY8Q91Xjbn6YE5VsjCSMZw/22BGpZz
         ST8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=tEGnCeSlMRUJqgmYz5LuHd6xNqa+keBkN5MDft/Cryo=;
        b=mJQMNEJwgXnA16zGP/9fB6/5CdGU5sqrta1b0vzti9a1QY6s6YY1XO75LG/2crFXc2
         a8nrqttGphD8Y/dqqJY7/G3dleiZ+8nNl/lbTKA6qTIPHXfQSsoItv1mUq3FQJAlUZAq
         JybR0N4zK3mydXSmrS/561h9NaHwWseaLGh57ysj536Hduh59oIcE9RJJ05s2EkcPojA
         nlESs7HSOWyB3sEgE+6FwuIGq7vKqHyZuxY9OaTcfaoem7AZBMzSIrOBUDLJTLZDuzz8
         hO0R+TkIFLIGpDH6EoUlQnJ4M3APNuyj9G2YQDnFcJRiLxj8YOFOKa7KeTVh104Zu/VW
         G7Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="eAqBQ/BP";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tEGnCeSlMRUJqgmYz5LuHd6xNqa+keBkN5MDft/Cryo=;
        b=mcp3lfPBmuDIMoBRAnG6mFEqJwmbyetIZ1IzOYoD3QiaLTZwt0cL/VDsM6C4no9R4+
         zGzRijKxcFwnZu9R1AHSQ0G4gT1X7CXbxYXLzh+1jftxF5fS4trZ8SchG5ZWz+zJhFpa
         p+j4FycxKIdQ9ueOitSAKep4n5KRMgwG9cB8GMxHm0zSvTXXZJfl4OVULTdAgmHZYF1z
         uIg5ZghPCR7lb7ZG3XgUT1VwBh7tU92us+PspLeuSYGf4E4tus0qxXSe1slZptlp33rR
         TVQVVHjHrIIK9a8WhTZeWKPkd2SsDSuJ1ebFueZ3ReAj/4cXFNG/VvVBsnw95xonkXOF
         ORww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEGnCeSlMRUJqgmYz5LuHd6xNqa+keBkN5MDft/Cryo=;
        b=DcFRiseOpGznaPY95yiLNLT7AShwXwVp61tpYbKApAu3/Y8QwB8SbFlbCW8wLvONyx
         MddaqIYdPW70OKbFiJRfOzOY7mQMnu/yljlQARRFsC9niZgHdbglE3r0FZ6mt1Q9EWV4
         jscagbNC+NjoUKqi2EBPXeOpQbVxR2+QlTYOMDPN9kHbg0Nx6O7/KjxGJx8UaRySMtoO
         w8/gf07ZQ5gyEuXjqzeP05JXsR7XkktCjyIZ8Mzc3iQKMQr7I28BoXWd3TWn0HLvLxKL
         AEASMHfuPQOyuQHeAtLSohcjqk1yX7EB+hxXsl+CjSzVtVyBnnlkkW0DtBRQDzOg8jVK
         fx8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUaHgePjenqpzQEgmgw6hXqcm9JsEzZ9KvQcz8Pw3UOw9U37h5x
	QzWp0SP52gwedzK8zYJmz6g=
X-Google-Smtp-Source: APXvYqzeRXmZvdOZplxxz33dVv7z4Rs7wYd3nG58CiPT2ybMkWuETkLuSUHSC7ugHlyW8HsKyqB5Cw==
X-Received: by 2002:a67:f618:: with SMTP id k24mr67509392vso.66.1564394636788;
        Mon, 29 Jul 2019 03:03:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7a41:: with SMTP id v62ls7634108vsc.6.gmail; Mon, 29 Jul
 2019 03:03:56 -0700 (PDT)
X-Received: by 2002:a67:e886:: with SMTP id x6mr60084038vsn.216.1564394636523;
        Mon, 29 Jul 2019 03:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564394636; cv=none;
        d=google.com; s=arc-20160816;
        b=oWkwgyTHaUPmLwhlK87ozcbLUE2YEJiZtbPwx0Y2LmSDeDomjhWD1unGDtpWTBY7vd
         608TmdnAkzSwRNngiUXvaYUtAeDRX5zxhQvnVhwfa7SzyYa6uwscgwI7FgVtGLSP+gec
         XS+kKsPbdmzwHRRJvwyHGL3wHD40mrQwBcovpHSt37wcgbX57mK4rJXfBOPePwKWwhEU
         lxHT8PKTbFbJbF3a9DWe+ufKNfIBxwuq87c+H47WSCVBJBrTCruxPOQvqoeMkiTsHcAR
         3/5uzTEr3Bk8K4EmzH8VWyOM6daDfgcoYRB3GYpqbq0UXwsom2GMg2wyE5D4pVOMn4xb
         t/kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=PQ1lW8hCACRopxeIn1rb+/2MV5nijDnDrawKlmXu17I=;
        b=f5yJ7W+f8CMFarvPK3vDwMynk+/o9rFYjrHsDHV7YOgUhmdvTpB/OpcVRDyu8HAuxh
         3RPpdZWZkYI+2C3/5DN2gSZmEwnq//Pclj7RonsQiROGOEBDdT2ZByaJ1PP70Oy2+zHM
         MxTW6tCkEeQDGJta9YgIpyvnFyQS4xbx02j/A7UZDiE3pI6y1FlIAaYqh0D0Xq1HJgvN
         38EbN+U9xlkCCG2+t7VyriGfivBJ+U+dEH0Iqpwc6wGR1J8oVOWYykkHdw03VsTFLSWY
         OzL6p2f+RUcQBmA3BZ/If9R5nycoeSKiuAHnUG2orCtDvaoNPMxLSsEwM7FuPM0Rmk9/
         hNkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="eAqBQ/BP";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id d8si2844330uam.0.2019.07.29.03.03.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 03:03:56 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id x6TA3GXu016204
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 19:03:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x6TA3GXu016204
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id v20so23734758uao.3
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 03:03:17 -0700 (PDT)
X-Received: by 2002:ab0:234e:: with SMTP id h14mr38875070uao.25.1564394595901;
 Mon, 29 Jul 2019 03:03:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190725154730.80169-1-swboyd@chromium.org>
In-Reply-To: <20190725154730.80169-1-swboyd@chromium.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 29 Jul 2019 19:02:40 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQZJgkx-yEwgHcTapKFayExgUCb3=zLBpJmVMJMeEA_WA@mail.gmail.com>
Message-ID: <CAK7LNAQZJgkx-yEwgHcTapKFayExgUCb3=zLBpJmVMJMeEA_WA@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Check for unknown options with cc-option usage
 in Kconfig and clang
To: Stephen Boyd <swboyd@chromium.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Peter Smith <peter.smith@linaro.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="eAqBQ/BP";
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

Hi.

On Fri, Jul 26, 2019 at 12:47 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> If the particular version of clang a user has doesn't enable
> -Werror=unknown-warning-option by default, even though it is the
> default[1], then make sure to pass the option to the Kconfig cc-option
> command so that testing options from Kconfig files works properly.
> Otherwise, depending on the default values setup in the clang toolchain
> we will silently assume options such as -Wmaybe-uninitialized are
> supported by clang, when they really aren't.
>
> A compilation issue only started happening for me once commit
> 589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
> CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
> compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
> leads kbuild to try and test for the existence of the
> -Wmaybe-uninitialized flag with the cc-option command in
> scripts/Kconfig.include, and it doesn't see an error returned from the
> option test so it sets the config value to Y. Then the Makefile tries to
> pass the unknown option on the command line and
> -Werror=unknown-warning-option catches the invalid option and breaks the
> build. Before commit 589834b3a009 ("kbuild: Add
> -Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
> but any cc-option test of a warning option in Kconfig files silently
> evaluates to true, even if the warning option flag isn't supported on
> clang.
>
> Note: This doesn't change cc-option usages in Makefiles because those
> use a different rule that includes KBUILD_CFLAGS by default (see the
> __cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
> variable already has the -Werror=unknown-warning-option flag set. Thanks
> to Doug for pointing out the different rule.
>
> [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> Cc: Peter Smith <peter.smith@linaro.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---

Thanks for catching this.

I wonder if we could fix this issue
by one-liner, like this:


diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 8a5c4d645eb1..4bbf4fc163a2 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)

 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
-cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
+cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c
/dev/null -o /dev/null)

 # $(ld-option,<flag>)
 # Return y if the linker supports <flag>, n otherwise



This propagates not only -Werror=unknown-warning-option
but also other clang flags to Kconfig.


Currently, we do not pass the target triplet to Kconfig.
This means, cc-option in Kconfig evaluates the given flags
against host-arch instead of target-arch.
The compiler flags are mostly independent of the architecture,
and this is not a big deal, I think.
But, maybe, would it make more sense to pass the other
basic clang flags as well?


To do this, the following is necessary as a prerequisite:
https://patchwork.kernel.org/patch/11063507/

Anyway, uninitialized CLANG_FLAGS is a bug, which must be
back-ported.


Thanks.








> Changes from v1:
>  * Reworded commit text a bit
>  * Added Reviewed-by tag
>
>  Makefile                | 5 +++++
>  scripts/Kconfig.include | 2 +-
>  2 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 9be5834073f8..28177674178a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -517,6 +517,8 @@ ifdef building_out_of_srctree
>         { echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
>  endif
>
> +KCONFIG_CC_OPTION_FLAGS := -Werror
> +
>  ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    := --target=$(notdir $(CROSS_COMPILE:%-=%))
> @@ -531,11 +533,14 @@ ifeq ($(shell $(AS) --version 2>&1 | head -n 1 | grep clang),)
>  CLANG_FLAGS    += -no-integrated-as
>  endif
>  CLANG_FLAGS    += -Werror=unknown-warning-option
> +KCONFIG_CC_OPTION_FLAGS += -Werror=unknown-warning-option
>  KBUILD_CFLAGS  += $(CLANG_FLAGS)
>  KBUILD_AFLAGS  += $(CLANG_FLAGS)
>  export CLANG_FLAGS
>  endif
>
> +export KCONFIG_CC_OPTION_FLAGS
> +
>  # The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
>  # Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
>  # CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 8a5c4d645eb1..144e83e7cb81 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)
>
>  # $(cc-option,<flag>)
>  # Return y if the compiler supports <flag>, n otherwise
> -cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
> +cc-option = $(success,$(CC) $(KCONFIG_CC_OPTION_FLAGS) $(1) -E -x c /dev/null -o /dev/null)
>
>  # $(ld-option,<flag>)
>  # Return y if the linker supports <flag>, n otherwise
> --
> Sent by a computer through tubes
>


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQZJgkx-yEwgHcTapKFayExgUCb3%3DzLBpJmVMJMeEA_WA%40mail.gmail.com.
