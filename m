Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZENUD2AKGQEZIRN4TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A8119E29A
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 06:02:45 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id k140sf11149646ybf.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 21:02:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585972964; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fZ4DdHAHBCbjvKfAcCpHQ/iPfGgxHxKegTKFlQTC6FH9kUTDJyQlTP9nbi00DzVb9
         oCZOJyx5Q1R8xpaFIQTX7XuyqwMJ4HChM9RvuOJX/f4c6WNJFDTIKCrYy6WYbWxkBrlE
         Gb+6/TNxP5ujwwvMnYzCMSngGKSD1C1DMwilUgI6XLx8N7IBKfZiCG2FgK+cVpmIMnfA
         bnV1f/qH8q9x6AS03yJzaqa9412gJMS8IURJprlGHj91o9BMU0wafWupYejflYG2kqMU
         i68GM3r8/YV6CJoQu+wtIKE6gVN/TEeKmjoA/V0g2dpEpLZLhwW/yyEqjuP6IeVsZ/dm
         wl9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=q7sA9hK2vdX22sazxjbN/Du0T4DEPbwIPdVDU1Xp2V8=;
        b=bN/TGraOr+uEQEVHnOdN51Y6rgiCFInW8bb6O30EhlQlX27mEYgIjxAeyfdAa0qWBr
         1mYB36kc9co2Q5QikwE2Wd59RpebRujj3JZtdwomxogO5Cdt+iz/LyPyV2eTuigGXB9q
         JN12/soEd4JF8Zz8K3uypReOFX6/pmSDJCSNa7MgL8Z7sCGVdligdgIx9eHcOSu65gR+
         D3DxTatZEyUE7OpWYpzw5sHd6U+sqkqyBrnAYI5LlKkzjwp179LNJ7Rchc3hfcYDNGgw
         qlOaY12vgdy7TrnMvGZaPbcbpDenCAke9uJh9wm8wRdEi66oHvfFS3hvEFHb/1Iu0nC/
         gzcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BIAUI0LB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q7sA9hK2vdX22sazxjbN/Du0T4DEPbwIPdVDU1Xp2V8=;
        b=SwJpL1LCHBWD/NGvzm8eLcF8EQLKkdWfPdfbbF3CdxcA6QwYE3r6pnVaZCJgKXogpb
         hswq8l5g1xyVogvfHoQF4FmH/Hq+/2RHinpplco5UoweU5m5rr/XlLpW7m1nxR8LVGAh
         4Z5p8UsdzLD5HDH4/OzSknoZR0KmI09MeyM0h/vB0wgsLoLz6cfuttpihwM6Be1Y0S17
         lO8xuojJjNij5WcllkWzIAm8G/WG5GgEfdQZjbfC2ppET6VezRMrm+Gpbg4wG2Oo1qEe
         AloqZPXStoDTmfyTVtnd31smoWydyPPH2sPziOARm1UiAQ28zJk811wOwfb9rVqipcuP
         659Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q7sA9hK2vdX22sazxjbN/Du0T4DEPbwIPdVDU1Xp2V8=;
        b=gg4TkGJxnXlVdqlriVHeBweGWgSfr9J4aCZtH9v3srBWeuSbjEF2X+40DlCaufltkv
         lfHOIf7AOTSvVd70hNHo8k4J3Sm4GCKEpDYzG85vrj7jtQnEZgIRR/1AYouhodrDbCrH
         o1EzqXJXAyBSdgc6BktgjmhRUf2fI7vDyjOAqR7F7PAb4skH55uZog9shAZ7/MsbQbAz
         RxCrcelgUderZ0BORH0EjkyLZJWd23h5daP/IYXf/8dLLP93Q28ywgMhpk7JzIOCpxNK
         OvQMi7wiasCjJw/EevY2B+YQqqOzPhW+7aDxq5e5IurEdE2ZIlfkFRV4PoG6HswHpyhv
         mRCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q7sA9hK2vdX22sazxjbN/Du0T4DEPbwIPdVDU1Xp2V8=;
        b=dxYz7ULk73ZomCNKKapr0lexy9o11TkFa2luJHUVW/BtqNIvGaGzM2qqBHcTfPu24n
         0TQWASHQQN9q1TCM+qzc9kyIn0fqIY0ldBG6UzPmJ9ZpbP+Mu92eOAcGF2JuTc7boMTq
         vlYAKGhUaqvEKCvusmWbhBp0SxS2FaMrJcLNrnHAotaonEWR0Ma9Skq1R4ID/lj4VF5b
         lyRRoo5iu0OUOgvEiXw+9jVxJ69C5BWQn4WloPWpnLoj45tAq7eIm2gxP0/0s32ovy7i
         8ij5toV2kTWsm3qahi1c9aooxzeOmSrfgR7/V77BtCqiciMSKcTnPo8n9qCrmjdXn2s3
         QFRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubP19ezay3nKhwiw6Kd3YvYTkJXEc2lyL8RjsUf/ECD1f/gQ94T
	RN1btOOerhyAnPjVHhGRctU=
X-Google-Smtp-Source: APiQypLlQ736YmnFmCKF7wV1sm+LRFM38X+JILpno+vm7eKqInr35NkstadGwCUA1nU2fsm7BLnPZA==
X-Received: by 2002:a25:dc54:: with SMTP id y81mr19772579ybe.374.1585972964237;
        Fri, 03 Apr 2020 21:02:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:4f4:: with SMTP id w20ls3555481ybs.5.gmail; Fri, 03
 Apr 2020 21:02:43 -0700 (PDT)
X-Received: by 2002:a25:dc08:: with SMTP id y8mr19891041ybe.163.1585972963834;
        Fri, 03 Apr 2020 21:02:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585972963; cv=none;
        d=google.com; s=arc-20160816;
        b=wtTfbfcjs9ejhpy00B5EapvHQeAu+GdVlXm/S9AMGUT4XXo7shYy70sDqNsp70Aj0D
         xr6Ct2vStcy88bPT3AhKV+PF8gjAbTZRzmD0c6DnJLZncoqZqC+JmIlIlZbTeQJB2QVg
         3GDCVA+FUB9HNoo/K1Q5+SjApvZS8b89z2s3stDEx3xSo5K1yMOKfJhqHOkyDrrVJ7eN
         TiyEktmuj+LZHmnBXUaIIYIp2EWooAoPp04LfH3FYtw304Ygk0bmwTMjc+jpQhq2CnIR
         wtDWM0K0eelRMwjxmm2pJ2B93AIFxUHInFS0mAPynyn3rnsArYvSgY6l5KB7gn0y8tXp
         vSMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HGQtBy/Y1NLvvkMjbES/Jv6f17twJdxb+OF5qTeiXgQ=;
        b=eHkjRu1dHkxjpbYYam3eJfQgj4KW1nWhC+eVdhS/+rThz1s30akSaca7Vf2rmXOiF5
         448vcRNS900gT75pH17wlw2NWBYPIfAigEVcqUrEUxkDDBwfmubyEZ63CFFbXclSOwaM
         PD5RoP44ivfy772WE+2QK031BuEGDmnzOEuawDwrAWRlI0TSVAlANjyCwvPTPEfVMZQ7
         oga7DZLFU56ZMXrIjwaVOUqUXgUTtqA4O2jbfsEhQAU1UylBNNwSuTrFtFH7BNBZMTS4
         kPGK7Y3YpPs4KJbEPWjRwVz8vTRWIcUivwaJ1xxWe95abqWSlqud9UlP2hbxF1bp3uWM
         3H0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BIAUI0LB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id f195si740551ybg.4.2020.04.03.21.02.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 21:02:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id u20so8122156oic.4
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 21:02:43 -0700 (PDT)
X-Received: by 2002:aca:5c44:: with SMTP id q65mr5623823oib.139.1585972963355;
        Fri, 03 Apr 2020 21:02:43 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t3sm2719866oth.0.2020.04.03.21.02.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Apr 2020 21:02:42 -0700 (PDT)
Date: Fri, 3 Apr 2020 21:02:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
Message-ID: <20200404040241.GA41628@ubuntu-m2-xlarge-x86>
References: <202004020117.6E434C035@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004020117.6E434C035@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BIAUI0LB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Apr 02, 2020 at 01:18:37AM -0700, Kees Cook wrote:
> When doing Clang builds of the kernel, it is possible to link with
> either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> discover this from a running kernel. Add the "$LD -v" output to
> /proc/version.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

With this patch + Masahiro's fold in:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404040241.GA41628%40ubuntu-m2-xlarge-x86.
