Return-Path: <clang-built-linux+bncBCC6PY4IDUIMB27HREDBUBH7EKGKU@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A58D404BB6
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:53:37 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id n16-20020a1c7210000000b002ea2ed60dc6sf494285wmc.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188416; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y1epmNcaiNp6Hhift497o5A7cNtbluAJUE1UYaHGUYaDwfHSkAJqTR/kjo29VRNWs2
         U6OfbpsXVlc0GT3QY1uT1/RVI0gXbHTKyk1fHwhjkNhrL13CsGrV37a1dq1oegdKo8Tw
         12nsP6YbktgLscD7xhwZRncGxQKjLZZQFJ1Qif6nEe5/208kV+c0zUInInOvGzAz9z53
         IK0Y4TkyTCR80Z3f1tK1Uk95ZpGxpAjecOvQZelBwbFjqQ2aNqJOc993aJdOQ1OzRM8C
         Iw+NFLkTgsQ66axu3muEXJyLkS3/fcirIr7AHRI2Aeu3O4RS0w4lPbxD5zgk8bn51HWe
         IqOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FxmQBZAe7nYF7PrIo8oYLJ42zlDgtDXFmZUtua28418=;
        b=qMYJ0kF2qCqk1T7Tp8Ivb2NKiyruojW/ozdjbljxo4kbqvvpCK20wUPzvkH6lPPEyq
         9e50OsPT1BxusPfrMmytRK7vmn+Q77uCppGl6G6BbHXxGyL+atjrfltgiT96wIJlHXdH
         4iQc6/4YW54yUQ2P0jm53DlqnB118bOEAwU4Q8NhcjLdlvkxhuItVH9TZb8Kl6tnVuhk
         5RS0hQL234TxEW9ba4Bp46HnIAGPys4mHoqKEOSkY8oh2XeA0ybdCwSbZUXdbCs0P4zM
         mcrpj75DwFqobKqJzqgGnkO4kQq2gYY/J5GvlrR5If45u1aDSo/Gidbm85WgiaevMqD4
         4pNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=00v59IeE;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=mbenes@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FxmQBZAe7nYF7PrIo8oYLJ42zlDgtDXFmZUtua28418=;
        b=anrJAulWnf1sIIQc9BHkz9Ne2wBTYOumhcA1Xw4sj0MTcad0df1/PcZuaM8xb511Ag
         EznN2e7KeWAytWlFXl5lE487DKamMDDf0adGMwkbg16yBt4so2U3ka4T/uNMTT0xv5DS
         GrrFUKBiEnTPxn3TGzNOb6SbYFiRSdmCDZkQnSg0YLVPpY/Ay+wamE3T9lR9cJi6FkpW
         XdjgeAvLqOh0Khumrop+erzFBXNDByTQk6yA8hqO2tztA2sYqbljPTJXEFajTCjA/Epo
         lRSv40pkMw4Z65gB8HW7DIhH56aAndvpj5E6gz5LPdyZQiIPu6FwTXedcddTmyLJEYTg
         JlUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FxmQBZAe7nYF7PrIo8oYLJ42zlDgtDXFmZUtua28418=;
        b=DCLCsxwNSE6DU7xYkvEFbyWHy710ucQT7qfT3HwvJsMJis5DIwULh3MBNNQ7EbpYCU
         KQuvo5mADapK43anPhOFU8D5y2Jd3gNY9oD8ayR9zhBgFzbS4qHcxHoeFLBtp1JgLmQ+
         J2hN9SPVNZRxK65v499gR+buY0pzdq/EVWoSFt46r1da6w1Tq/CTyhLJxIl+EIXVd4CC
         G8k97TtFqrYYXFAEQkUAOnEAsG6TTbiSwhp8juZyewfX/iUaZgMVaCepiq8pQ2Wf4I++
         8HndnfZwNpA9DqtNOaRC8uEh7j+RF0Dn5JIwdFj4QFYVeiv3vZoexC30yQ7qsHYt0Rgw
         kZSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532H0bo/LGqOhlVAHOratV+SH7PLz0IuQ0JDMrRe7yLqyyq0K2Sp
	vKuSIEuXcppCq/U9mQ8V3ew=
X-Google-Smtp-Source: ABdhPJyySivI1tKGusNQwtc8EtwvdNSiUnqUl2tgyC1owrdXxrZ954diuaxoU49Q8du9ko48aTiW+A==
X-Received: by 2002:adf:8144:: with SMTP id 62mr3136412wrm.144.1631188416813;
        Thu, 09 Sep 2021 04:53:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f614:: with SMTP id w20ls861932wmc.2.canary-gmail; Thu,
 09 Sep 2021 04:53:36 -0700 (PDT)
X-Received: by 2002:a1c:f709:: with SMTP id v9mr2554140wmh.124.1631188415936;
        Thu, 09 Sep 2021 04:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188415; cv=none;
        d=google.com; s=arc-20160816;
        b=pVHOTB+dVSyjuw+eyFO8XbZ2ytNCHcr+yt44tQRbZ3rxK/mQAUFpb1CPkTEfyvjOUQ
         nci2Fi7KXAaUSxZj2aJV50VTphPTz3G4LvtcRf2o2ectTqawlkfv4atyeMpDQ5REMukc
         WAfcl4a55fbUUiGx1p1dj2m2HnkdvnpzSb9P2fPdI7xwlHwozuUJsdre/RztV3tAoOu3
         6Ik+JfeXRSfnLk2ZthSMelejGdzbN5a5CuX2EluDmzJjNX+ArS7ByEDOrAlIrDf4Y6mA
         ujJyqIqe+t/1GOlkcXld8owcmgLYPfRAl/tnM0TwGK9Es8F7c5wAIE5RShcFH1S7dOlP
         /uYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=eQS9ZQeFJQGmX5k5doxlCL9tdEWoOdO3DeKwN1zi5T0=;
        b=JAuwhcCYPnVWD+haQEjQvz42tMpFI8dm3XpfnX0g0S1IUDjs22r2Bskdt0YCIE9Whr
         Su6MGB6P6u70zHxi+Xo1qHBSJD21N4HbrCy1QhzMc3wGw95QyI9pBPRGnNWMZAhdVs5O
         htxj9DoqGWtwWennDL8HUqrN7lztdLfLLA8d1Xt9DubptKpGkn368XExCQZMzCrtcgew
         Zc4XfD7mGfFVuzsPWNEH60I1lKxL82JIUlc29mG/28XR2rTTS+xyALBrnsVEafkvtPoh
         29yUVsBW8nJ4dSvDLbC62JoVtaeqxpYI1/vXulwDR+JpwImcIhn5s+Efe4KUVof0oGnM
         pzYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=00v59IeE;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=mbenes@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id o2si87899wme.0.2021.09.09.04.53.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 04:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mbenes@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 98B442237B;
	Thu,  9 Sep 2021 11:53:35 +0000 (UTC)
Received: from pobox.suse.cz (pobox.suse.cz [10.100.2.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 3BD0DA3CFC;
	Thu,  9 Sep 2021 11:53:35 +0000 (UTC)
Date: Thu, 9 Sep 2021 13:53:35 +0200 (CEST)
From: Miroslav Benes <mbenes@suse.cz>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
cc: linux-hardening@vger.kernel.org, 
    Kristen C Accardi <kristen.c.accardi@intel.com>, 
    Kristen Carlson Accardi <kristen@linux.intel.com>, 
    Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
    "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Marios Pomonis <pomonis@google.com>, 
    Sami Tolvanen <samitolvanen@google.com>, Tony Luck <tony.luck@intel.com>, 
    Ard Biesheuvel <ardb@kernel.org>, 
    Jesse Brandeburg <jesse.brandeburg@intel.com>, 
    Lukasz Czapnik <lukasz.czapnik@intel.com>, 
    Marta A Plantykow <marta.a.plantykow@intel.com>, 
    Michal Kubiak <michal.kubiak@intel.com>, 
    Michal Swiatkowski <michal.swiatkowski@intel.com>, 
    linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
    live-patching@vger.kernel.org
Subject: Re: [PATCH v6 kspp-next 16/22] livepatch: only match unique symbols
 when using fgkaslr
In-Reply-To: <20210831144114.154-17-alexandr.lobakin@intel.com>
Message-ID: <alpine.LSU.2.21.2109091347400.20761@pobox.suse.cz>
References: <20210831144114.154-1-alexandr.lobakin@intel.com> <20210831144114.154-17-alexandr.lobakin@intel.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mbenes@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=00v59IeE;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 mbenes@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=mbenes@suse.cz
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

Hi,

On Tue, 31 Aug 2021, Alexander Lobakin wrote:

> From: Kristen Carlson Accardi <kristen@linux.intel.com>
> 
> If any type of function granular randomization is enabled, the sympos
> algorithm will fail, as it will be impossible to resolve symbols when
> there are duplicates using the previous symbol position.
> 
> Override the value of sympos to always be zero if fgkaslr is enabled for
> either the core kernel or modules, forcing the algorithm
> to require that only unique symbols are allowed to be patched.
> 
> Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> ---
>  kernel/livepatch/core.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/kernel/livepatch/core.c b/kernel/livepatch/core.c
> index 335d988bd811..852bbfa9da7b 100644
> --- a/kernel/livepatch/core.c
> +++ b/kernel/livepatch/core.c
> @@ -169,6 +169,17 @@ static int klp_find_object_symbol(const char *objname, const char *name,
>  	else
>  		kallsyms_on_each_symbol(klp_find_callback, &args);
>  
> +	/*
> +	 * If any type of function granular randomization is enabled, it
> +	 * will be impossible to resolve symbols when there are duplicates
> +	 * using the previous symbol position (i.e. sympos != 0). Override
> +	 * the value of sympos to always be zero in this case. This will
> +	 * force the algorithm to require that only unique symbols are
> +	 * allowed to be patched.
> +	 */
> +	if (IS_ENABLED(CONFIG_FG_KASLR))
> +		sympos = 0;
> +

I ran the live patching tests and no problem occurred, which is great. We 
do not have a test for old_sympos, which makes the testing less telling, 
but at least nothing blows up with the section randomization itself.

However, I want to reiterate what I wrote for the same patch in v5 
series.

The above hunk should work, but I wonder if we should make it more 
explicit. With the change the user will get the error with "unresolvable 
ambiguity for symbol..." if they specify sympos and the symbol is not 
unique. It could confuse them.

So, how about it making it something like

if (IS_ENABLED(CONFIG_FG_KASLR) || IS_ENABLED(CONFIG_MODULE_FG_KASLR))
        if (sympos) {
                pr_err("fgkaslr is enabled, specifying sympos for symbol '%s' in object '%s' does not work.\n",
                        name, objname);
                *addr = 0;
                return -EINVAL;
        }

? (there could be goto to the error out at the end of the function to 
save copy-pasting).

In that case, if sympos is not specified, the user will get the message 
which matches the reality. If the user specifies it, they will get the 
error in case of fgkaslr (no matter if the symbol is found or not).

What do you think?

Miroslav

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LSU.2.21.2109091347400.20761%40pobox.suse.cz.
