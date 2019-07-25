Return-Path: <clang-built-linux+bncBD2INDP3VMPBBKE347UQKGQEVR5A3GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A2A75302
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 17:41:29 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id i2sf31138702pfe.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 08:41:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564069288; cv=pass;
        d=google.com; s=arc-20160816;
        b=oY384cdV3+Z4EgjmuHLBtc/nOGlnWvYcFKfMkHiWnSAD0yVo5MhPIy2lx673msqi0v
         O/3bnH1D76KnQYBNGzDhZWARq+wnsYiD88s06+oXVbECwlSFvyyXZaEYNHyKanwuJtkP
         Cmz1l+TY0YI5ntPVSdNOe8dPwc1nZhdTuAxaNKF4+PdRitwyKCqI89cpLnNm7/AwAm+4
         GhsqRIATP0wZGhCwO7xPVfH3ztSo1BW0Gx8gz8p27KLHbTfUn3Yq+0s6nyH/Ygu+JiJg
         kdhJShgT+LXPb13Bn2sj9cAVAzTs/8s9mIzYmiWqE2i2ossDOHcqbAYaJbmZxri68r3K
         7fbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:user-agent:from:cc:to:subject
         :references:in-reply-to:mime-version:message-id:sender
         :dkim-signature;
        bh=3P8vrK2b3yLcJmOWIHlGYJm0aKVCyI/diRDKEkq35RM=;
        b=ZR0b21QQKjKHZ4T6EPLEr+sjKQU71v5XTdjQmBbpltryTB5BUdOvzwGiOHMZadF1qc
         AAADH2gP03FQkIvBayEiCTLi2dHa144xOuMwZNr+DaBeqfLgdT4Aq9Anl+6vB6lTSNIV
         xgafX6K1JgyixgQeEeQ4MQFwm0XMRnbYfXgcqwmGvg64Rr5px9LPAci3iz6xTaB/5tuS
         DkvIM8+Bqs1bqciAfA4+LOzTZ7vdQoNu4DUsw32dun0E/oYgp/bWTptKEhD4agLM0r22
         31wZM5X7wtzaAMyseJHExRUTk5uxY8DiMsmWwAXAnNwaiQRZ81Ej7MlMVRMz+A//byid
         yO2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AUXehrO5;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:mime-version:in-reply-to:references:subject:to:cc
         :from:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3P8vrK2b3yLcJmOWIHlGYJm0aKVCyI/diRDKEkq35RM=;
        b=TSf5lHF4Ubz2xxamu9Vi+Z/GcYXQaSRlQa2ijgXK/fjRq2Nm7a0rGmvVtl+N51JhY6
         JAFgGx8bt+kUxyywnYHDQyqUCMG6ING2ZAUwWcSf9Zeks0cCcQNFo0Bx64RAAwrGhpzl
         eNYHXMvemciUxbk2owHsB3dzHHuq0Wz7TX9FU2EjAcCjM30c4ijVPNzmUM4UmQQYorul
         xkfz2FsSdLT17ZhSgHwrQ2xtD4do9nT9Dlktgg5SwU8rKcvC79TWGmCFgcLSvdDM77AU
         sWZh3IDYfIV3FYNMoJUvFY87T7dFAeizZGtAYQaa1UDMeu12KHKMhgDXCM4xHVMYGEWG
         5zXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:mime-version:in-reply-to
         :references:subject:to:cc:from:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3P8vrK2b3yLcJmOWIHlGYJm0aKVCyI/diRDKEkq35RM=;
        b=lt83nhHts1H2JKDMIg51xc7/pLq3LGoqMF8RPUanqxikOpWCKMaWWNZBWLONFumkoF
         jrPcvtJoCdHe0ynggAyLe8CAnHe5wQsPPO9K6gxfYLUiVxlY610A/OgD1ULYYJmWeDlS
         vVbWc9pgT99fPWbgzkUQ0RzdLXDBlrQkxgOLCfy43DHwhIqmtPr5q4Kl7ygwUCYmESZy
         igi0rn1KqDyFViugfCSWzACZ4cH0UnoQgsbxVSz4AQzSD6OTmYTLBEvs4uKgeQRIpuLi
         /Z3Jjy19dYpT1G7FivH0zcpvY1nF2HBV2Azmr8PwVst7gS3xRQYMImCuK2UEZHlltZC2
         9CEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXIsRTBq3mhj+JgdzKwfNX19dIOZunl9ciZpqkxGGMhj+1w4Dmo
	cEoCGbDw67vaUCRNMxe+vEM=
X-Google-Smtp-Source: APXvYqw6pdruMVCyIpHio43BadWkRarV4zh1vccxG0QiffRaLIkDryGvtSZy6udjnVpLplAOEuoYvQ==
X-Received: by 2002:a63:7d05:: with SMTP id y5mr87946653pgc.425.1564069288465;
        Thu, 25 Jul 2019 08:41:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8e41:: with SMTP id d1ls9355454pfr.13.gmail; Thu, 25 Jul
 2019 08:41:28 -0700 (PDT)
X-Received: by 2002:a62:8c81:: with SMTP id m123mr17202311pfd.240.1564069288083;
        Thu, 25 Jul 2019 08:41:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564069288; cv=none;
        d=google.com; s=arc-20160816;
        b=bp7bX3HOreiXkRKqPs2MfhZVO8UP6uJboITAGR7k6U7dafAihOcwrFuzmVPi9XOhd/
         xJl9AKcxs6pQkfkC92P8BiREV2bR9uw3sQJdZWC9Ahovsd1+duczvGzBVn98WMLvw7kV
         XFiVbDRzhnBzBrlAqNV29pdtHzpGrZHuPyGlqb0JvW0Kg28b8FVUV+nzaDiQMUvIz/1x
         1nHxyyeuQAquLW95DZ2tBRIG+UUR3+Y/tnb7JM7nUD8ag6XaL1Dfajv/qcL1fIHlTD4l
         nfW04CcFSRDkk0CGU4ECTprYaeWAy4oTDg0lH/p0Wpx2ltanVD9MZPg4fRejoSM572GH
         GT4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:user-agent:from:cc:to:subject:references:in-reply-to
         :content-transfer-encoding:mime-version:message-id:dkim-signature;
        bh=X8/QgqyB39MtESyGgZ7nkN1r+o6x8E3Px4aWeY6fSy8=;
        b=UGvodm7dHzHdLLmygFxIz1SmYf1eP/DLKYnU6vqcInfJGY8sHEIcQhPW8/vkpR7e91
         iEOMUkWD55VVzXai1ugYVuxvEe6SBL9Xk+z/mBlGDNKQUtygyYg0bsOVDzAPhgKqSaUm
         UdTY+uOCaplJxg8dahwZAQ7ClwKETlRIkZvUUCJxNQjCQWsVr2T0xEThMA4gSl9o5Wng
         MRlgP+dKev8/u4RMeuJhvaawH2zLnwZZBXIzYElFRXJIwPA5v4VAuiwuZGHKgkzI295D
         0rPDcDFsfziK2SEKnvaHufLXypGVls1vwfL34RytL9NfXXuqDc+nNqvhbivZumn8u9kS
         Dhpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AUXehrO5;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h14si2194984plr.2.2019.07.25.08.41.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 08:41:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id c73so22948752pfb.13
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 08:41:28 -0700 (PDT)
X-Received: by 2002:a62:cf07:: with SMTP id b7mr17371441pfg.217.1564069287761;
        Thu, 25 Jul 2019 08:41:27 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id r75sm68338054pfc.18.2019.07.25.08.41.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 08:41:27 -0700 (PDT)
Message-ID: <5d39cda7.1c69fb81.6e01c.0e70@mx.google.com>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20190725051857.GA53904@archlinux-threadripper>
References: <20190724235030.131144-1-swboyd@chromium.org> <20190725051857.GA53904@archlinux-threadripper>
Subject: Re: [PATCH] kbuild: Check for unknown options with cc-option and clang in Kbuild
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, Peter Smith <peter.smith@linaro.org>, Nick Desaulniers <ndesaulniers@google.com>, Douglas Anderson <dianders@chromium.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Thu, 25 Jul 2019 08:41:25 -0700
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AUXehrO5;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Quoting Nathan Chancellor (2019-07-24 22:18:57)
> Hi Stephen,
> 
> Was the second Kbuild in the subject line supposed to be Kconfig?

Sure. I'll change it to Kconfig.

> 
> On Wed, Jul 24, 2019 at 04:50:30PM -0700, Stephen Boyd wrote:
> > If the particular version of clang a user has doesn't enable
> > -Werror=unknown-warning-option by default, even though it is the
> > default[1], then make sure to pass the option to the Kconfig cc-option
> 
> Hmmm interesting, I did not even know that was possible... Is that a
> clang configuration option or an out of tree patch? Looks like it has
> been on by default since clang 3.2: https://godbolt.org/z/mOmusu

I asked and it turns out that we force this flag off in the ChromeOS
toolchain so that we can compile the multitude of packages in our system
that assume various GCC specific warning flags. I guess this is easier
than patching all the Makefiles out there.

> 
> > command so that testing options from Kconfig files works properly.
> > Otherwise, depending on the default values setup in the clang toolchain
> > we will silently assume options such as -Wmaybe-uninitialized are
> > supported by clang, when they really aren't.
> > 
> > This issue only started happening for me once commit 589834b3a009
> > ("kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS") was
> > applied on top of commit b303c6df80c9 ("kbuild: compute false-positive
> > -Wmaybe-uninitialized cases in Kconfig"). This leads kbuild to try and
> 
> Prior to 589834b3a009, how did cc-option work at all if
> -Wunknown-warning-option wasn't enabled by default? I assume that clang
> would just eat any unknown flags while returning zero so it looked like
> the flag was supported?

Yes. But just warning options?

> 
> > test for the existence of the -Wmaybe-uninitialized flag with the
> > cc-option command in scripts/Kconfig.include, and it doesn't see an
> > error returned from the option test so it sets the config value to Y.
> 
> It might be worth explicitly saying somewhere in here that clang will
> not error on unknown flags without -Werror + -Wunknown-warning-option.

I think it warns on unknown flags, just not unknown warning options
(-Wfoo), so I didn't mention this.

> 
> > Then the makefile tries to pass the unknown option on the command line
> > and -Werror=unknown-warning-option catches the invalid option and breaks
> > the build.
> > 
> > Note: this doesn't change the cc-option tests in Makefiles, because
> > those use a different rule that includes KBUILD_CFLAGS by default, and
> > the KBUILD_CFLAGS already has -Werror=unknown-warning-option. Thanks to
> > Doug for pointing out the different rule.
> > 
> > [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> > Cc: Peter Smith <peter.smith@linaro.org>
> > Cc: Nathan Chancellor <natechancellor@gmail.com>
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > 
> > Change-Id: I3bb69d45bb062d1306acbf19bc0adfb60f706442
> 
> I assume that shouldn't be there?
> 
> Overall, seems okay to me (took me a sec to understand the bug,
> certainly a very specific one). It might make sense to explicitly add
> somewhere in the commit message that this syncs cc-option behavior
> between Kconfig and Kbuild as a whole, as I didn't understand that at
> first. Thanks for the triage and sorry for the breakage!
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

I reworded the commit text a bit now and I'll resend it soon. Thanks for
the review.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5d39cda7.1c69fb81.6e01c.0e70%40mx.google.com.
