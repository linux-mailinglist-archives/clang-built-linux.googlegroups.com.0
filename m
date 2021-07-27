Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP5RQGEAMGQEGTZLU5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id A07893D7E3F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 21:04:31 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id r21-20020a1709067055b02904be5f536463sf94487ejj.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:04:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627412671; cv=pass;
        d=google.com; s=arc-20160816;
        b=DMgeT1Vo/5gpSKQUiaWiCg+Kq1UWLbbQhynpXt20G5vj1DTiZ2RKkXImLLczFafS4o
         sniOd8tdPw32nfsatBjjCkNAaDflfyhYg5GgG7xG1IaXyVkGvIYakmpXqhgmFXrjkvZt
         SB0y5x3upxb3gHG+naHD7i3Z3tmwGeYn+AZvrysYg8bVwGBG1qxaif+bmStAJxAg9xY4
         4lxBfDTCrexVnA2EiXBV8nDreoMWuGBksl8LaygRtbwu/vrONlXMENL8U80xQ/q0NSvW
         3hfo0K+kXaHwNfe8EUVIMbzKrXRqRPRG7+x7k6gG3de4j8863VP+uwp0qQNdV5Ox0G9X
         MAeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=H6KXVv4rdY51ctNO0U/lEQ4jtwnJXeawgi00WlElpZw=;
        b=X7g9YGcxo+1dhKYq7HOGpawuA6DQA50oniQzOD1qn8xxcGjGaf2mCLj3OHmaT0ZOFp
         htpNr1+M8ku0vuPrSm3SNNfCy/mEoqyrjhSpfHuGCKe0VMGCUQfcirkglGw0idVantfg
         Y49JB81uSERsZ5StwW0WqV5BIcSENS6vpVy2N0EeF7BPNaGFFB+RlLurwUkrELoEz7CT
         FxJztFwz1lFxrUm1VQcjloWEdEzBAwG/ofTrOZCnfBY0gI0evgkz+uOyIs+zTVdK7sfZ
         MoqgW9quSkaiVFo42hUc8i66/xYIVjPhcfxrV1RvNgfUO3XMBFwBra7BkhZ9808rstI/
         cV9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uuT/okmd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6KXVv4rdY51ctNO0U/lEQ4jtwnJXeawgi00WlElpZw=;
        b=gcv4r/G5unPdDJcAavLVUzxK0hzFq7OUw7VfEgUj7gtMG03rfrpuc7DMFNWiAuXdYy
         /5R9CA1XI/AA2oodOsMdzSR6bvtvt69gVPx8KKBnFsy5Y1HsMv5p82mY0U0zNS4cthoy
         ROO9AKv8Ed5PhU6Dz/sgRo2HuSBPbGhQxItSQH1N0z0nG5J+E3J32A3V3lu+C2L4aBDf
         i3P3z7u4mb7G7UV6gZWQbqeFz120eiiFNKbMtuOz+15u64Lb/Y1lqa+EduYZ4RO5kiWU
         C1nTOGoPgMb418Sqk1DkuCIh8xM9jyaPHufYsXXp2CcsDKeUH1NKBhNNQR3+JZ0N+Tjy
         HFzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6KXVv4rdY51ctNO0U/lEQ4jtwnJXeawgi00WlElpZw=;
        b=Akdgn4ZpkMUBkHyoy5oDtynCFJhEJx5hQzcNOIl1rEk1xEVXH0GM9YcMraaFLRxNFg
         ACd1nS9oF6y/ERyefgGtrrRgZnyOphnPW+7yBNBzN9G2NTHHB5Gh15Ir0OAkYEAgy00U
         uC8vQv1DWEi5LDxx4nf9voof78FXT+jr1GHUhKRYsaX+Bboy74WjPo4/tMOpSeIXp41S
         OPVOTx5IW8l/hx9Uqzb3NA+7OhmWzLBbUGrzTi9Rh2Th0Dhdz5JQdk4/IiRnJ26E5hQi
         dZIhvwpXAh7zfFnCrDe4Yd2sWZty76nd13ob0iuuk8ADHaeU6kc6KQ+LZD+7eSjSu/9S
         GvaQ==
X-Gm-Message-State: AOAM530qzTDI2qnqzBsM5rske83Vqbs2gkgmdcZ8eHrCAqZCyRJ8Q3rv
	mTXBpVtsAzvc4/tzFehOxMQ=
X-Google-Smtp-Source: ABdhPJwVbOSMg24ti1T4hDukwL5N9p5YFVqhVE66veAu0tdCWtFm8XESjw0SjxKGUAnum/pJqAhrjg==
X-Received: by 2002:a05:6402:185:: with SMTP id r5mr29425155edv.349.1627412671473;
        Tue, 27 Jul 2021 12:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd13:: with SMTP id i19ls1277851eds.2.gmail; Tue, 27 Jul
 2021 12:04:30 -0700 (PDT)
X-Received: by 2002:a05:6512:141:: with SMTP id m1mr499107lfo.91.1627412670479;
        Tue, 27 Jul 2021 12:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627412670; cv=none;
        d=google.com; s=arc-20160816;
        b=fZ05oDk3AA6SUqEBwYO+cOcK8MKF2iNbGRSpWLOJ+G+Gu7v5hjRE205Oc+Ta923qIp
         JC3seZt54SdKUYqRL6io8bJQp1vWgLPELTzz/s8WKgI1Iz47xBx/pqcpoh5c2m2gueBq
         Ex47+B491IaCRVSVJEurR626ak0P/AITIjBJ5ORm4hx2w6lfilfvNdH1LrUK8et5RWzd
         C/2uCXMVf7IQSyb/zGw/wMfpON7cSYS/Mr5VBl1IP+/LeJEDpnztL7YcVySRXK1pK9I5
         SgfzFVs5wBeQ6pQcWK3XFits6GlNfpZ+sVjUBE7+jIdHPmYnImZUnixEgovUP20RH0T0
         I2dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=57qgj1c6LCtY+XqJGr03UfT/+n6dkMmVsE0B06Lumzw=;
        b=wuYGAEHaYv0M1iwgtaVdIXWcrL6ppajZRpeR2maZKxLxnApkZ+Tj3mFVEBUO2uI7iB
         +OmZicPhiPjqIpY+3WeQSCcf3X5PB41w27aROSWty1fa0XGY5axwlhjqp6/Tn1ArBzUg
         UtD+aTbhGgO8r2L95v/ZJJfsqdM1q25T1qEPgncA5Hpdkqc5uyA4WxEguARavuAomUMr
         RvShA+7jvXIOBb/rGlKeNmNjH9fooQKG/BOCG8LCVWjiIwivxMnV3/QB+MXnvwbiI2UK
         peXVYK/Q9/CRdUDORLsurNLrOvRhVERBSamqNJE1AFhi+gn1B65Vn+2iatadSUmxkgAr
         421A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uuT/okmd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id x125si152817lff.9.2021.07.27.12.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 12:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id z2so23572941lft.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 12:04:30 -0700 (PDT)
X-Received: by 2002:ac2:59db:: with SMTP id x27mr17500966lfn.547.1627412669994;
 Tue, 27 Jul 2021 12:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <0fcf5740-2e0f-4da7-be58-77822df54f81@kernel.org>
In-Reply-To: <0fcf5740-2e0f-4da7-be58-77822df54f81@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 12:04:18 -0700
Message-ID: <CAKwvOdmMpLcYEKSyTavUmK-CxuR6H55ogwLQzRA1q12RuUYNNg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Nathan Chancellor <nathan@kernel.org>, Bill Wendling <morbo@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="uuT/okmd";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Tue, Jul 27, 2021 at 11:32 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 7/27/2021 10:39 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> > Isn't -Wunused-but-set-variable enabled only for W=1 builds?
>
> Maybe Bill's tree does not have commit 885480b08469 ("Makefile: Move
> -Wno-unused-but-set-variable out of GCC only block"), which disables the
> warning for clang just like GCC for regular builds?

Looks like 885480b08469, which landed in v5.13-rc1, so that's a
possibility.  Should that be sent to stable@ so that we don't observe
these warnings for non-W=1 builds of stable branches with newer
versions of clang?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMpLcYEKSyTavUmK-CxuR6H55ogwLQzRA1q12RuUYNNg%40mail.gmail.com.
