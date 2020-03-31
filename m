Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTNORT2AKGQEJSFSJBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E73E19932F
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 12:11:27 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id f75sf18127059pfa.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 03:11:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585649485; cv=pass;
        d=google.com; s=arc-20160816;
        b=nqI0OPTC3OlMBSuM/1BKPEwJobpJU7iTnpsN/RRRau5tz9fY+bcDweSR5LgGSNbyLk
         m3V/27dHng9DB80KSQ3X+++65kvSg0AlvgJcGTVtREnvSDqxlOCgAMRg+Bl6z50QR+q6
         Wu9J//fO+w02Hi51J/K1wobuKH2P5PMSvL9mLSK1Cw48wRSGH3GieMz32ZjOfDjAfWf5
         z7uIAYxm8WGX0f7h0Z47bh8rZ2uBmgfVxjr9NToaqtdF1KsZAY4LrqYsSmgdWTJaxPdg
         IEhAPwvJa1+8RErr1s2yYQGIuYUjYgTiam3rTpmNzPW8pcBJuoPJ9/wsjHycCOQpJt/m
         xBFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=j6r358kH/MfVpNZ2AbH8cF+zXBbiERshPLhorKrHwgw=;
        b=XMmZltHqPeJCTlLiUzL2QAEEEMjs4linOxIHK33QghN8+Nh/FAQ36nbXV6gKzm53SL
         h3wZ1Jmq9Morx7wLgeAO8nHIZy3fBzID+03SGl+99rKCPvnXiqznWj8+w7S5SbNTQEcX
         nyxz8jaJuNDLledxg9FDnHGI94yVrs9jTMO+bLvpAVwG2rh9tdrgIC2/qzqdq1NwnPQc
         75dcG+D2nYp9tHBz4R5SM64oc8vdvqJOVA0+gZlH+Iuzonm2T+AIzXfndScUF/jRmN+A
         Rh27Vi0t2h1KzOLxadUwkmqkA3MWpcPoJe5r8LBc3yL+GngHHM9nuPR1l35QuvSMxhFW
         fldg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZgBMTzNU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j6r358kH/MfVpNZ2AbH8cF+zXBbiERshPLhorKrHwgw=;
        b=mt1Hlp+JOaSDRDOOUgmRUyssyc7C8fOg+un4seHxysBl7q1nXF0G9eow42cEb+4pbC
         +J0buLocjfKPHbBel/xYMOCmfLqi0GuJ2qXlCODbiY9lcASSe6vajIFNI/sfqntkIKL2
         OUatSKkRY/cBwkyOY6G7mpsc0BWLMkzGp2MInFPMXeO2oNAZmoaKqK3ejpFrup0djhb4
         EJpbmISxw/drk3Tw1Cr1n9BU8aJNq879m3k6ky7XLyTDLAQ3cvUOGnXtNYMp9+JRV4pD
         oLJHgzosSOOlLyta+ccaZTRuDE1cqa0weHV73xEoUkc7GHgiebcbAx13AyRWFStV6RZ9
         RZsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j6r358kH/MfVpNZ2AbH8cF+zXBbiERshPLhorKrHwgw=;
        b=FFXYuMgmC3a3Du9n8uLkzBdDMtPwDhJbr6DmLgYKl3HX03GJ4hTZCpwyTRbPF+xLrA
         5brAEgS6Pfs655a5mmHbVvPLmRFBsf8HVHX1H5bKvWOB6Ii1az7pgXWz9c1gFYqUq1vQ
         KGdTYOMwrh/mxCF6Jz+IKGN9n+0pRA/pS+y3BS9Gx7EcUVCLuNL6WbCtDP83GH/iAdo+
         ToxAzNXTWqzSUKDuFQxgI7C/QbRnoOwASLWE8Pv/KdUksTZZZKXBLtNPaYaHzdb2NcAn
         Oxy9kll35vvJv+IJjCiXz0xNQQp6CGUurHi11hxySayCE23QMcG+gEdTpTb+MVBGkQ3e
         vNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j6r358kH/MfVpNZ2AbH8cF+zXBbiERshPLhorKrHwgw=;
        b=LU3RVvaIjj0lrx+GkcvlioOaCGN1/pVN/uaYvvfAVNPTh9pgFoezpYvgdiM5Qoe13G
         6LKLCIHN4Jz6DWrKBLsdLwlbu1u8WBudCyf7sM+a5qfTQuiBVka1OhP5d3gu0qu8vgF1
         3WwM/sTZvSt9gOc0FKP890a0sXZCsSFJwhYuXRpeC6NVJPiGZ5pahssof7zsT2f1uSEg
         1eyy9yLWiuQClV0PJdjOdVx0FmzCIP6RkxjvzZiGMiTxLCk5k0Z5h6xNmV9IsGUjno6O
         eoOdqCK21hhhcndlJO4zPX/xoxbhWQNuIUXAn7EU8Kr3yfMakcbavMREkWcogNr4KG5N
         6NSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2mynvnCMBQr86apnxZxeSr0FthzqxdnduE2eZ6JdYqbg1gvQEx
	c98njW6TZAVYdDYS0rnGRts=
X-Google-Smtp-Source: ADFU+vs8GG07F7DuAaBRh1JtxZjkdxNeVj5AxUOT6BN6aGx68T0isEqfYjbxFzu2MHmU+Yt6fxhsSQ==
X-Received: by 2002:a17:902:222:: with SMTP id 31mr17274872plc.108.1585649485632;
        Tue, 31 Mar 2020 03:11:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c97:: with SMTP id x145ls14105093pfc.6.gmail; Tue, 31
 Mar 2020 03:11:25 -0700 (PDT)
X-Received: by 2002:a63:e74b:: with SMTP id j11mr17553974pgk.145.1585649485121;
        Tue, 31 Mar 2020 03:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585649485; cv=none;
        d=google.com; s=arc-20160816;
        b=RTYsmboq5CpJTp5llSvfM0GHHAmn4IEgCwApCDc2FnpHZJMw8zvFcO1CJ/3eeYyo8i
         z1ZqnGDzBtoaTNj7pH4ZFNj+ZKm/IPVc3+doV6JkZGO+Z0eeKFI27ieBFxKdclZln1FY
         yIThuUeSwxsze5boUK5im+GbuBmFRtAxwxMY9GNAp6gHOT41QMCdHRGIa6+hgzNJQLpV
         QmzjX1PcQsRJBqoTRajE/XhH2K4HCLfHcP8Pw36vFf6QHTnFGmV04DuKGZLouEu46SuM
         yFk5By3vB8LxYf8iA4tiwupAtEYKEYW8Rd08KjFk4wwcDXNRem4qWUY+WvCv9lcfiWxW
         XAmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TSC+0pXXb8JE+C3nC01SaCOV0GhldDpmDHlN1rI42O0=;
        b=eAxqzbSIuh67M6qTdIg0uk6Wd6lAleyaT6aRSeZTeYsMwFQOQLIXrPS3nbg6R6Xk16
         Ri/AjvgiEPi+VJLxBPhZZ/9LUXj4voWX45TP7ysYRl1MH6TCzG86DZIemit/UeU/UWWK
         OG/hURacL7F8PTwPZbn7WmoDBJ3rQN3utgwGwLSXAJ7UE553+imrDGnO0nHc0CKuafkV
         LHI+v9eCWP6O1aLRxvj9B6afKUiTrQZs/Zh29mwP6cwzRVT5oaI0iVWETNR+QuXiPVMW
         PxknOkU9jD8ACnyENf0BmfNHX0C2QJTcglQz/K7U9Ax1pqHh0qeSC4ZJiqRLggtza6AU
         B2Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZgBMTzNU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 74si1082737pfy.0.2020.03.31.03.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 03:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id g23so21444285otq.4
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 03:11:25 -0700 (PDT)
X-Received: by 2002:a4a:8e59:: with SMTP id z25mr12638332ook.86.1585649484349;
        Tue, 31 Mar 2020 03:11:24 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b2sm5030457oii.20.2020.03.31.03.11.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 31 Mar 2020 03:11:23 -0700 (PDT)
Date: Tue, 31 Mar 2020 03:11:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH v2] kbuild: Enable -Wtautological-compare
Message-ID: <20200331101122.GA6292@ubuntu-m2-xlarge-x86>
References: <20200326194155.29107-1-natechancellor@gmail.com>
 <CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZgBMTzNU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Mar 29, 2020 at 08:31:26PM +0900, Masahiro Yamada wrote:
> On Fri, Mar 27, 2020 at 4:42 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Currently, we disable -Wtautological-compare, which in turn disables a
> > bunch of more specific tautological comparison warnings that are useful
> > for the kernel such as -Wtautological-bitwise-compare. See clang's
> > documentation below for the other warnings that are suppressed by
> > -Wtautological-compare. Now that all of the major/noisy warnings have
> > been fixed, enable -Wtautological-compare so that more issues can be
> > caught at build time by various continuous integration setups.
> >
> > -Wtautological-constant-out-of-range-compare is kept disabled under a
> > normal build but visible at W=1 because there are places in the kernel
> > where a constant or variable size can change based on the kernel
> > configuration. These are not fixed in a clean/concise way and the ones
> > I have audited so far appear to be harmless. It is not a subgroup but
> > rather just one warning so we do not lose out on much coverage by
> > default.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/488
> > Link: http://releases.llvm.org/10.0.0/tools/clang/docs/DiagnosticsReference.html#wtautological-compare
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42666
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >
> > v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-7-natechancellor@gmail.com/
> >
> > * Expand commit message a bit by adding more reasoning behind change.
> > * Disable -Wtautological-constant-out-of-range-compare under a normal
> >   build but allow it to show up at W=1 for easy auditing.
> >
> > I hope this can be accepted for 5.7. There are two warnings that I see
> > still across a bunch of allyesconfig/allmodconfig builds that have
> > patches sent but not accepted. I will ping them today.
> >
> > * https://lore.kernel.org/lkml/20191023002014.22571-1-natechancellor@gmail.com/
> > * https://lore.kernel.org/lkml/20200220051011.26113-1-natechancellor@gmail.com/
> 
> 
> OK, I will queue this up and send it to Linus
> in the second week of MW.
> 
> I hope all warnings will be fixed by that time.

Just a follow up, those two patches have been picked up and should be in
this coming release:

https://git.kernel.org/balbi/usb/c/58582220d2d34228e5a1e1585e41b735713988bb
https://git.kernel.org/rostedt/linux-trace/c/bf2cbe044da275021b2de5917240411a19e5c50d

As of next-20200331, with the former applied (because it is not there
yet) along with this patch, I see no warnings on arm, arm64, x86_64
all{mod,yes}config.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200331101122.GA6292%40ubuntu-m2-xlarge-x86.
