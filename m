Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRPX4TUQKGQEQRBD3ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A526744CA
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 07:19:02 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id 17sf10530119ljc.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 22:19:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564031941; cv=pass;
        d=google.com; s=arc-20160816;
        b=QD2w4Znfc8WZtEguGChtm8cXkiwirrdWDVIvZBD+EOhS4mPLvYIUVi13hRKwcVeqWh
         KutsF7c62k1y1ebVDL0vvglgCPUmlOzYgzmSbYQdg5CKlyObjKI9Tr2Jr0xzdYJ8jwYr
         A/yEzTtO9Brv1KKZT+C65FRO+y7BYdEx39HG76m4GEm0usQ4mOgLpT/AQsedrQuCDzDk
         X4S8ctfODKNuaZvCIt74wDEJZHhLhi/bOBg6THsnsZMjQWNJMnEA1H/tWZ91iZpUXs6F
         0dLGZWOFkOgy7aPifEM62+5Z2S1br+0nL+2zpNMMSHMPv6ZNzS9IeEoPHQinwM+HWoLW
         3xag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=D0pUTVJLudCzsTIpHSxjNdyz3/XH3qhXWO5N0lh3yv0=;
        b=cr7Did5waQHFVs2UQOHKbKArwCi+uZLmKfcGkel26urQi+oc6REEZQVbYW7GyjjAlT
         UeFtc60+w+z2MKacB7tM6QYc3AuLladxs7TiTzvndMKMTAcp8d2nC/SH4DQEkovYGZUN
         BCt7jXrMknHg1v2b67RTW7a7DtKRx57gV+n5C4SVsxTXySKoBoiy3M/Py4NvRVd1miBL
         eL48FUTV+Amv06GqLfEZ2IZNF7rcFnpBSvzpZYiLB5oulMUk4RxGFcQrI37Gm/1M0Gx7
         isW6m8HBSSntLOZNda0+wPQRmmLStjQUagYX78tDDhWsjx65yklITCxXEqb7TKmK0nvQ
         yBhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dSjKX1JI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D0pUTVJLudCzsTIpHSxjNdyz3/XH3qhXWO5N0lh3yv0=;
        b=KGv2WheUqa4unooJKxlM6QOzBpnUjWsC1Mgucv6JwE3nGxgnOHTeYYlQxOInlkCOM2
         KbwNMuwXaFiLckFlBrcJ2zSmWQC4KVZ8e6WXjYxDBQ7x3wPchGV34OuqdabEc8W+VJgJ
         YWaKdJsMZnXJvJJzl4IG+vHr/R3jVLhnxv+NVCU0i04EAtifneLaQqeQWzPwLIa4+6dP
         zo/ZdnwJb6ipQTfRpKvrg+ynX3i7b2LDI5noXszj/EgB2paJwl3NtCzuJtnjtNQEoLe1
         tWY95uetp1A74XJPp/bQbxsbEPQIoFzbdgqugeuYqCpWrZwt1Q9LqxOzYDlErrMjtEBz
         GK+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D0pUTVJLudCzsTIpHSxjNdyz3/XH3qhXWO5N0lh3yv0=;
        b=S/edZRrPK0wIXyOi0pqmUW2Rj+u7My9IFrIf/KLcVbT4vMDjXE2+7EBv3Q4a3PuxNY
         dBjsL2zwjrV17Vy8LZwKry5E9q7Q+Aa4W3C/W4VDgDPEl4qWBhn/kddFAq8Cya/paPoc
         jhsCn8CaRy3NbBDhh/dlstvaIiYq1jttO2bRAffG778APqdO+e7ORg18TZF6TETPZ1yY
         Ak8AsLtCnmr1ELBiVaWv6KENZum1nC9Kku9mSO/rafaRGdQRbzvEFHvQhywLv6I3hWj+
         g8UmjWf7BgyR7oSbgsWmwsQ3SsSrkpBNaMbWFjZKN5n8lyIIiwvrv1zchpNwNufE2Kti
         EtBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D0pUTVJLudCzsTIpHSxjNdyz3/XH3qhXWO5N0lh3yv0=;
        b=KDIxWanYEk4/GOtwYNTnwnfFrqWWLzTFSrAaQ0/IuUhfXMPkSQ5/5acscr6Uk93ZuZ
         Sv3wnh+zgrEsRGTl6I4j0GNpP3sZHN0vr8dcxd2ccNg+06SKT4wvf0+jHcjRt2Q9WPrm
         7K67vzjX2r2gjvFoBD5df713A42DeVW57xH82spm/dUOtn/UbabLsoIC4BpmH8zPGL2r
         FVDkncd5MljOXX8oEyrczQTIdlIjvypy8beAxAp8seMyutaCtxNM8tG3W3U1rRKSWlfU
         CCFe98y9yHdi+5NzhAOREE+Sy1d0PYnFiWIskwQTUjWCDwN/+wnQfQsbXZqd/XhHo9Ny
         9LLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXtWgc286AUy0Vtd5oxyotopXhrI77xDE5Melj02bGDIxBmsc6B
	NZOfJiAbMkbVt1DwaZxJWhc=
X-Google-Smtp-Source: APXvYqyeJv8C9upMoMDq4OIZYLwUXzl+Q7GfgVqQs7fSvD4ls9lAHmSroFoOpUleZjtFccgtP4/jYA==
X-Received: by 2002:ac2:52ac:: with SMTP id r12mr37784963lfm.54.1564031941687;
        Wed, 24 Jul 2019 22:19:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b601:: with SMTP id r1ls5552610ljn.3.gmail; Wed, 24 Jul
 2019 22:19:00 -0700 (PDT)
X-Received: by 2002:a2e:8892:: with SMTP id k18mr45574007lji.239.1564031940714;
        Wed, 24 Jul 2019 22:19:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564031940; cv=none;
        d=google.com; s=arc-20160816;
        b=v3pAGPGQsumDAbgB3sMgUqmg3tIpiVA0xZAWGBo0dSgextxJ9AMLzTiWDCR0kjxq+A
         pPw/du5lHjqv6ch8JhiZMihr+GwwzAG+IzbHdmMt/t6dRgcrXYVDGAkLtWz91NRxVNnE
         ZRPg4uWCtiNLcpA6JtSjUqr9Fg8/0aY3oDXSAgDId9zIEOV1wxDc0xexck6+5z4/rmX0
         3OqtaDNUfs2Jn6ajh8jbFKDUQIiZk8lSH3TkWzycMWPUVpydV6n8EVIk8ZgeUoQ3KFMq
         I5vhXxIvZG1ByKEiPcldRPT+yFWeZr6m0DrepEK3s3rjyV0PG1mZkybVdZfsCPiBGZG2
         hGUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zlgmxtIQ7tw41jxv7w9g9WF1aiWMMHCySIjrTiYaOHk=;
        b=r5ZjJ80VFItQqNGL7jHYMifivl02aJrwPj/IHhaS4uKIhKYt5rlqtTJ6KuPPu+TfLN
         4lnYjwN9yhD8G4oDQfr++gBOPVcaJBdjS+ctuIgbJ2MBodpRdA8Hqm0oemNZJVqX9FM7
         RWgkTHczb84JzDs0BmNCwe0BySInprfOyfG6H1ggR3RzIPHBCcu7b1Vey1stp2dLXBKR
         1gEbmDa0kRdQPkYOioMhBSfPFD40kjMATuwK3nZ4tf6swngoMsgI5/hX1BDcccPvJZRN
         RE7mP3V1AAVtLM7AYYhiFulEcxq4J8s0Hg+3MSJwMGLOIFvtSC9NTB35hIbKQrtOICrj
         IugA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dSjKX1JI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m84si1588084lje.1.2019.07.24.22.19.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 22:19:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id h19so34868046wme.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 22:19:00 -0700 (PDT)
X-Received: by 2002:a1c:a514:: with SMTP id o20mr79531810wme.149.1564031939881;
        Wed, 24 Jul 2019 22:18:59 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id e19sm64916988wra.71.2019.07.24.22.18.58
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 22:18:58 -0700 (PDT)
Date: Wed, 24 Jul 2019 22:18:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] kbuild: Check for unknown options with cc-option and
 clang in Kbuild
Message-ID: <20190725051857.GA53904@archlinux-threadripper>
References: <20190724235030.131144-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724235030.131144-1-swboyd@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dSjKX1JI;       spf=pass
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

Hi Stephen,

Was the second Kbuild in the subject line supposed to be Kconfig?

On Wed, Jul 24, 2019 at 04:50:30PM -0700, Stephen Boyd wrote:
> If the particular version of clang a user has doesn't enable
> -Werror=unknown-warning-option by default, even though it is the
> default[1], then make sure to pass the option to the Kconfig cc-option

Hmmm interesting, I did not even know that was possible... Is that a
clang configuration option or an out of tree patch? Looks like it has
been on by default since clang 3.2: https://godbolt.org/z/mOmusu

> command so that testing options from Kconfig files works properly.
> Otherwise, depending on the default values setup in the clang toolchain
> we will silently assume options such as -Wmaybe-uninitialized are
> supported by clang, when they really aren't.
> 
> This issue only started happening for me once commit 589834b3a009
> ("kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS") was
> applied on top of commit b303c6df80c9 ("kbuild: compute false-positive
> -Wmaybe-uninitialized cases in Kconfig"). This leads kbuild to try and

Prior to 589834b3a009, how did cc-option work at all if
-Wunknown-warning-option wasn't enabled by default? I assume that clang
would just eat any unknown flags while returning zero so it looked like
the flag was supported?

> test for the existence of the -Wmaybe-uninitialized flag with the
> cc-option command in scripts/Kconfig.include, and it doesn't see an
> error returned from the option test so it sets the config value to Y.

It might be worth explicitly saying somewhere in here that clang will
not error on unknown flags without -Werror + -Wunknown-warning-option.

> Then the makefile tries to pass the unknown option on the command line
> and -Werror=unknown-warning-option catches the invalid option and breaks
> the build.
> 
> Note: this doesn't change the cc-option tests in Makefiles, because
> those use a different rule that includes KBUILD_CFLAGS by default, and
> the KBUILD_CFLAGS already has -Werror=unknown-warning-option. Thanks to
> Doug for pointing out the different rule.
> 
> [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> Cc: Peter Smith <peter.smith@linaro.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> 
> Change-Id: I3bb69d45bb062d1306acbf19bc0adfb60f706442

I assume that shouldn't be there?

Overall, seems okay to me (took me a sec to understand the bug,
certainly a very specific one). It might make sense to explicitly add
somewhere in the commit message that this syncs cc-option behavior
between Kconfig and Kbuild as a whole, as I didn't understand that at
first. Thanks for the triage and sorry for the breakage!

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725051857.GA53904%40archlinux-threadripper.
