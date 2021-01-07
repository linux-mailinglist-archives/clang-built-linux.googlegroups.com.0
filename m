Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBWMH3X7QKGQE4AICKSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F71E2ED576
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 18:24:43 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id m9sf4394063plt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 09:24:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610040282; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rn04w1TfQxrCD6ikifY1qys4oflIjksur1DmeTaX+x96Z2G3r6XxMuH/jukN9VhhaD
         SA9+lvwiATYCI01wPvINRHyGYFda7yjiQw12vF7zq1o8vlg/upPv9dFAS8ytIoCK46oX
         A9satA5Wnj0DeFPG2LiylByDhbFyRUikgmv6HHbBDQ7JTvnEvLJwTGubqREXYn8qwcZf
         oes2+57ML+G9pxUecTwxdbL/Fic34oaNH/OHtNTFKPAbQqqgsl1ueajpPIlK8wVV8PpI
         yEpX3tP4zxKmeir0piRsMlpgyG0oZ1DSb1kxRMM4DZTDkoWp1RhrWPDoKy2nAx0VOcbd
         me7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tj/eUw+kV3xveBr6gGjNUbWwssPH6vOuW8WemConolk=;
        b=X5KX3AjY7gZ8GQwfLDd+6Kchi/h0Wm8uJPDaHx4b6Zcex7SjFBfne9cjUd96Q/go7M
         EbWKwIh0+8wx8Y4rCpBsgDNvKfu4AOZUqmChVxRyxjSjXGzyOOtC5QKCIzBBEnu4JvAG
         iQUui0j832883Bm/HuAH4FV6PJ2JwgbfbSAzaRbloj8VpswJovgLKRhwaqMG0a9oDW1I
         i5Ek7U9KXRgWppoppo8BGBeyz9FK02Wti2qo2bIgshd2r6yXLexWEGTAsu/S/LskwsBI
         yKsGamQPJA+rZ5N+VuiRk81ulY66XXn7RJ2ewyR/3Vzdnzz0UzMmxqBST5KgEHrAWJFX
         HKdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.210.43 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tj/eUw+kV3xveBr6gGjNUbWwssPH6vOuW8WemConolk=;
        b=CtYHdteuvgogU7OiKk6b4F9DY5M17e01NfLZ+NBYDJDAB2pGGs64UpVXFdrbdpUtkW
         GWLh1GwZRUyz5jjSX7CXLYTbGcHUoDrOAHOaMM3cTicgm+Jon0KtK/BxCj+Qn/XqFXrk
         0RhU0x9ootSnXA4otJm+FOSjVj+rwdWE4Itxpxvr3PagH8s6M5NyDwBqo1prilQ/SAL4
         t6BJHbW3ea9SaAJP7qz3sLN4ad4ZfkPnTywHFBaB1DDv7dZzgATPPpYSbuMnI7lBl2Rz
         ISnThOgwZOMRRexp5rgaO3rX8zfpG7juUSUOdG5IE928Rpc6nqtFYKXQ7ZlnW9x12sMD
         RaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tj/eUw+kV3xveBr6gGjNUbWwssPH6vOuW8WemConolk=;
        b=i+RpBwVVQkaVzNbCDylK4brsps3DDsNSRi0ZmYcKdh+Ihrv69rXDxB6g+CyzQhuHyc
         p9W/L4DurGq796NFbyQYe3W6wv2R9m2ESPCcxq3z8Xt9W3f2xqhrvqA8V1N7Mj5cQoa+
         IkeTfGuH6z+1HB7BvCYOxYHVv3ddlLiCdfA7bG8k/jeau93NpQCrfXTk9g+vHZrkeSKg
         7vj27RmjqIQKtrDgSOWf1rM+LHP5PDGVx1sSUJHxpOeSbgSZxn5toPRD/M+3B8xyYSLf
         NTjaQzppxiQyKYreLHaU2Tf2OuDHtmQJmZ5Czsnb9t/bkVb1ipWEC+OFeiDsPiGkI87l
         /3ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OOx67cz0E4N+W44o3cc7YGj8AQykI7lbmD6SZK4yR+FOvshOP
	eRFizfDXBzXuxdsd9ySG7w4=
X-Google-Smtp-Source: ABdhPJyfRCj1krUcyXNLAQMLU5pt+s+uakEtbIbG80Z8eD3YFkQBbJYSZH1S+rPv52etdXmFVexUAg==
X-Received: by 2002:a65:490b:: with SMTP id p11mr2905838pgs.88.1610040281899;
        Thu, 07 Jan 2021 09:24:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7310:: with SMTP id o16ls3064611pgc.4.gmail; Thu, 07 Jan
 2021 09:24:41 -0800 (PST)
X-Received: by 2002:a05:6a00:7c5:b029:19e:2965:7a6 with SMTP id n5-20020a056a0007c5b029019e296507a6mr9763032pfu.60.1610040281183;
        Thu, 07 Jan 2021 09:24:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610040281; cv=none;
        d=google.com; s=arc-20160816;
        b=SNx5P2Zb4Z8HLAEAfhf+joXa3wC3wW95kiIgNvathz5rc8/y4Di/UaMI8a+d7qTsVQ
         hZNKkGicwnAfNe5xi/BmzvZhfaUwCyFe917WFpRBtxMUFLgCmE5J/oOTodEky28Z/xay
         /ERrgQEccvRxlQ7gYBqEy+1kDVJmR0cyUJvbooizMqJo18namd+uQp5llW7fMmgMS2sW
         vP5kgYrIyRhqUwxbpfln4dhjqKdZHe2Q3IrbRHgCzUjSxyeAoermEBdJeS06V/rcsitC
         8KEL8g3EHomZemuluCPhCKuMK/5msFEdbXgi7Qi6xB0Y3YdwT30V4UWJVte2bvAkk28O
         GhUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=OpG41d5OlWzv+km3h3m9vib/u3YyCF2qCiMVKCMnb60=;
        b=lSr5mKZNJq+rtlGsjRO2riuRlSv0saYSsVlNwrcYPkcIxr9sSJcEWmaP7fs150iRf3
         UaqqVF4TbPfMXlaYdg4oUJiNXLAi5ABpZwMDA6JyhX2CTZpdwE38N0jht45aHGYzdAH6
         4G7QlBGiF6R2uBKqI5zfR/aCMPoTwyfZansF1jECoxN/7MTEuJG4ixlwHeT3sswPQ2aH
         bgyqzuq4kDEImK74zZuHSPNcSgI5aYo9h5cyxb6I455R3ODh93tUtMTZlZ1a3y0Z0eB3
         e1IJfLC3c3RWc71QlPEazwlGQbCi+m1KkHxMIjLCbqHdxOSH9PM04Hy5WOnC+/5teZ6I
         B8QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.210.43 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com. [209.85.210.43])
        by gmr-mx.google.com with ESMTPS id m13si325001pjg.3.2021.01.07.09.24.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:24:41 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.210.43 as permitted sender) client-ip=209.85.210.43;
Received: by mail-ot1-f43.google.com with SMTP id j20so6996161otq.5
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 09:24:41 -0800 (PST)
X-Received: by 2002:a9d:67da:: with SMTP id c26mr7383389otn.321.1610040280622;
 Thu, 07 Jan 2021 09:24:40 -0800 (PST)
MIME-Version: 1.0
References: <20201221051320.18391-1-lukas.bulwahn@gmail.com> <20201221222015.GA3389117@ubuntu-m3-large-x86>
In-Reply-To: <20201221222015.GA3389117@ubuntu-m3-large-x86>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 7 Jan 2021 18:24:29 +0100
Message-ID: <CAJZ5v0hv8zzwQm3SwD3V76n+NENKANwBVktETNt2vV+GdHSzPA@mail.gmail.com>
Subject: Re: [PATCH] cpufreq: intel_pstate: remove obsolete functions
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	"Rafael J . Wysocki" <rjw@rjwysocki.net>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Linux PM <linux-pm@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-janitors@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.210.43 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Dec 21, 2020 at 11:21 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Dec 21, 2020 at 06:13:20AM +0100, Lukas Bulwahn wrote:
> > percent_fp() was used in intel_pstate_pid_reset(), which was removed in
> > commit 9d0ef7af1f2d ("cpufreq: intel_pstate: Do not use PID-based P-state
> > selection") and hence, percent_fp() is unused since then.
> >
> > percent_ext_fp() was last used in intel_pstate_update_perf_limits(), which
> > was refactored in commit 1a4fe38add8b ("cpufreq: intel_pstate: Remove
> > max/min fractions to limit performance"), and hence, percent_ext_fp() is
> > unused since then.
> >
> > make CC=clang W=1 points us those unused functions:
> >
> > drivers/cpufreq/intel_pstate.c:79:23: warning: unused function 'percent_fp' [-Wunused-function]
> > static inline int32_t percent_fp(int percent)
> >                       ^
> >
> > drivers/cpufreq/intel_pstate.c:94:23: warning: unused function 'percent_ext_fp' [-Wunused-function]
> > static inline int32_t percent_ext_fp(int percent)
> >                       ^
> >
> > Remove those obsolete functions.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> > ---
> > applies cleanly on current master and next-20201221
> >
> > Srinivas, Len, Rafael, Viresh, please pick this minor non-urgent cleanup patch.
> >
> >  drivers/cpufreq/intel_pstate.c | 10 ----------
> >  1 file changed, 10 deletions(-)
> >
> > diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
> > index 2a4db856222f..0e35dd247986 100644
> > --- a/drivers/cpufreq/intel_pstate.c
> > +++ b/drivers/cpufreq/intel_pstate.c
> > @@ -76,11 +76,6 @@ static inline int ceiling_fp(int32_t x)
> >       return ret;
> >  }
> >
> > -static inline int32_t percent_fp(int percent)
> > -{
> > -     return div_fp(percent, 100);
> > -}
> > -
> >  static inline u64 mul_ext_fp(u64 x, u64 y)
> >  {
> >       return (x * y) >> EXT_FRAC_BITS;
> > @@ -91,11 +86,6 @@ static inline u64 div_ext_fp(u64 x, u64 y)
> >       return div64_u64(x << EXT_FRAC_BITS, y);
> >  }
> >
> > -static inline int32_t percent_ext_fp(int percent)
> > -{
> > -     return div_ext_fp(percent, 100);
> > -}
> > -
> >  /**
> >   * struct sample -   Store performance sample
> >   * @core_avg_perf:   Ratio of APERF/MPERF which is the actual average
> > --

Applied as 5.11-rc material, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0hv8zzwQm3SwD3V76n%2BNENKANwBVktETNt2vV%2BGdHSzPA%40mail.gmail.com.
