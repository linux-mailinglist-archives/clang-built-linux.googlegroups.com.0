Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOXKQHVAKGQE4UPDEUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF3E7AE62
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 18:50:03 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id y15sf40715206edu.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 09:50:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564505403; cv=pass;
        d=google.com; s=arc-20160816;
        b=SGHd5kXSiNlzlCc0ETt/fGacsl61O42P6v52ewjOx/cSD6GI4ATFNw7x062ylqLfv+
         h3CH4BLhJ/6/IWa5aUQb0KycJaC1q/3GOd2nitJ5yAme7jkAVVW2TB1YvenLqxmoD/FA
         98AFThTNWbQG5FbzZF5WAY0y0FwwoZUQm3lEkrKQgAhjbzJjztVaLt1xMalaj2ukbhzf
         o3P21E9eYcbqeZTWwbpnq+jMHFUs8juliHpuvAefpgP389NMDUcMQZchYsyDzFWLSeaL
         Qd1flss9w+j4K6X2z08Ikr8Wb2VhvFx1YxUQKtsUWwrydu8ujaBqFqZWgrODBA631DVC
         KFDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=EHjq5V5lXrHp6N0o9gUgxeAhOVPoJkW7lThoKATc5uk=;
        b=fPNaJqlGySS90x1nF2ycDWp2frOGhc/xm8xY422DLV+RIcLkqgiYyf4rCsnszUlQ9A
         c9gKBQKrxHAsP6kMPNRucZ4Mfe7Hvv1sV/OcSaolVmcAWjOHO+X/FF9nePnRhrZf9e+u
         pa60CX8gf/nT+Wco9aTEjeaovcbaQCIeZYL4FBntCygiYvPeQ3BMH/IJgRHOu7VJOcnV
         Kwx1NwgK8wB5tUyyAoFqspRalnqVqfWBoVrcpOlkQHkdPjrC/wqe+P9Gm+Ln4WLj+hlM
         qdsA5zGKrpW/QGOksw0rh33MoIg5QJYeEfIEQDhZMuiXjNQHYsI82crZF1IeE9q+L50+
         3RBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iCS8VdiX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EHjq5V5lXrHp6N0o9gUgxeAhOVPoJkW7lThoKATc5uk=;
        b=jhKFwrry9B+70aC+MZenHB0OtZJTjomaIIrQn5HDKoeXU9FTqGEolRRD08mWtzqb+w
         Lk9q6tPqp4NwgD71bIbC8rOAYdbiBfDRaGXj1keO3DOvtDOipOXCIA5epc5qyg6KdwpP
         uEt8uIFO1tY5TzzbEhBVL7TNRSI/5vj8ZZU0nnUFlxgbJfIMfuKkncMfP058iJfzyzGA
         lfiVE20sKCgTLPUSNTR8ZT7y+vt2cahfqeBNvFebuvx8kegWBtHV5OOnlAYnfsAnGpHU
         Z7iAvyBSI/VTbdqLlcUZcrZE6VDrKrB4rFRFdhBPBWTORCBQEuCoZDivptBNxJSOOVfi
         smrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EHjq5V5lXrHp6N0o9gUgxeAhOVPoJkW7lThoKATc5uk=;
        b=FNismojv4yWTue3+Kq9L5eUryUKq3HdcgC/du6ipdG66K70K9aY5AocWbUbHxdaonA
         TjsBWtF6oQmQ3ljJ5muJQxwSTjNg92ngqF3JtLM9nrdrS5xKOvS9BY+RWFrDlLfnsDQ9
         4acmnWzWLCk3jRxYsmCekmjdE0iB0L2ALh5uvYItksdIqHBIBwszkoE56yuYbNQad2we
         vYDqhkK2BMB5nHJrdJ7BBSzjju1MSNFDUY/8uJxIM4UneCTA/0IJwsfsXTi003sS4Oqc
         xS0jAJLk21c7AzzYuIAQxD5sxmTrs7aXJFFqXOAgwZmr6Z2fhjr2wX8ZrnyTimYgQrFd
         IsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EHjq5V5lXrHp6N0o9gUgxeAhOVPoJkW7lThoKATc5uk=;
        b=hSMFLj7BY4KQCRJ0MrCqxLhLAofg8h4hzroVO+1pxrQXOe2j7pjXbpSmflSWtYJ/fv
         LglypOYg1Jn0MYbfeaSeerci9GQVOJ3RU2GptwkPw/vzyjDVAj72/o6C2mgX5t64rF95
         SlJa9IlacrJFTKzG1XliGE4avnvA8tA6ixU9ynT5ixujoLg2K0Q7TWxQvg+iTXXQKmnV
         Mc3Lk9Ta488FW7G4cdE9LliejDhDYR08y0AiWUFmCs1NwzT/++K/dM13qxGe2zJzGg+z
         Sq1vwURiwX9bQVjxOjpfHqODWfjbH6r8i1mrpLwrLHgMRlJExi8Q/hTNGOlbPE36+N+S
         aU4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXydnROq8iGg1KQddjMQJU3nN7hiiF+Ht3Q9ppwUmubY3Aj6fRy
	pHd6QeMID68paTrY3IjZIPs=
X-Google-Smtp-Source: APXvYqxMDcGbEpoY4a3SRgZPC+PHqanHePxLfC/QE6cy0lrZ7FY34s/ECKdcXkjGLj5MsidqSHezkw==
X-Received: by 2002:a17:906:c3c2:: with SMTP id cj2mr74418834ejb.259.1564505402988;
        Tue, 30 Jul 2019 09:50:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:51cb:: with SMTP id v11ls13814500ejk.8.gmail; Tue,
 30 Jul 2019 09:50:02 -0700 (PDT)
X-Received: by 2002:a17:906:1496:: with SMTP id x22mr91426883ejc.191.1564505402587;
        Tue, 30 Jul 2019 09:50:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564505402; cv=none;
        d=google.com; s=arc-20160816;
        b=Fp3WzPrczffH1mo2G/1h4m/blb+3sGTxWeLwPsC9vkkGYGuoEndi1yaeoKcYBg7Tlz
         g3GN6ZFLF1FjZEVw5Fo5x/3xi3dbl9R3ehehwyBaBSC7gd/Z/2ISfwFXXcqIJ4YD0fmd
         xQ9cxIaB4321JZ1Ctqb1EKh6l3pxA44uo+Pce9yB20SLeku/eWM1oCy6K4Pxg+Jbu3Ce
         P8yOQB+7AwxrH5f16ksbpdZTbIwXhEWdHHw9rv3DmZQWXHSc9oJGNakQgD93YGDIBmFZ
         cJZJmpulNDJvVgjozKaoDrOMM+4M4y+FOSjp0/gWRnkS5ujfyWV3rUUGGrae+Yp6+MEQ
         YpKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4ipmrrzG/Wk902fPLix62FvHSEpdXBNMCXbDCZqAWVI=;
        b=RWJDgBye20JO+gtseWKIhtyHCn23rnhotNfsLO1fy9ZkAvTZ+M9qzDhrZxlsIuttOf
         hy7x/IqwSQIdbsmhV25eIBPiSDYRw6X3H8JvO6UcBT9ts/bB4N6j6i5jVC8DmjQ+xggj
         ExRKFMtGDBx9KVpea2Vz/xZ2GV2Gu7nFPUvUrx0wjtJekTeSO26l7BUP+32DAo+QF1Z/
         6YZpsLnS5FRPtJ3FT58nUBb8w5xj3imPXCvJzCxJfv2zXww1TVTJLIlsoH6chsLDmwkF
         fYo5Cu4U+RXVvzGcojWdndqt0OcUWeOjwWidTTj9MrcURQTmraga9duUURtQqfg29lxV
         e9Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iCS8VdiX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id s30si146851eda.4.2019.07.30.09.50.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 09:50:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id w9so45699965wmd.1
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 09:50:02 -0700 (PDT)
X-Received: by 2002:a7b:c149:: with SMTP id z9mr109567197wmi.0.1564505401952;
        Tue, 30 Jul 2019 09:50:01 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id v15sm63218486wrt.25.2019.07.30.09.50.00
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 09:50:01 -0700 (PDT)
Date: Tue, 30 Jul 2019 09:49:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3] kbuild: Check for unknown options with cc-option
 usage in Kconfig and clang
Message-ID: <20190730164959.GA129059@archlinux-threadripper>
References: <20190730164803.45080-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190730164803.45080-1-swboyd@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iCS8VdiX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jul 30, 2019 at 09:48:03AM -0700, Stephen Boyd wrote:
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
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile                | 1 +
>  scripts/Kconfig.include | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 9be5834073f8..517d0a3f6539 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -536,6 +536,7 @@ KBUILD_AFLAGS	+= $(CLANG_FLAGS)
>  export CLANG_FLAGS
>  endif
>  
> +

Not sure it's worth sending a v4 for but I don't think this should be
there.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730164959.GA129059%40archlinux-threadripper.
