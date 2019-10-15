Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB6PFSXWQKGQEO2RGLQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id B19E6D7008
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 09:19:22 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id e13sf20276888qto.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 00:19:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571123961; cv=pass;
        d=google.com; s=arc-20160816;
        b=A09HisZwXjpB0w0P3dWW0JqcJWGrrX3xLkus6aZrDi4MYiiXmJzol2eP9vUf21AEso
         3YO1u/nR9h1r2FcrsKq7FK3s5tD+sehXrkQquoN1DoiEyxrFNNDeHYO8gGfjKzlx5Jq7
         nh3P88SyBplslUvnOmIyxKOWwL/Rks0Gjlmf/3n6XayECWCVSTyFdBvUiZGtHDlay4pL
         +3edam+LmWtt30RBHXEee8BeNwUYs2e/nuvEZNJVFEkjgwxwWVoxUyVKh63fcEiozC8V
         dhELpFwwVIdjIYhvCMfnVO900j6Bo7gy5dLEMGuJ3VoS3/3G/yHEWH7qOoBZl/ptkNCH
         3VDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JqQFdRQGlJknJdPtQM04PX7TIzlXcEjkVhkLH+Y5zc0=;
        b=t+oq4ibeHlul4OfGPzO0ifDc22TgZWAqHLrjR7u5nKEqQaQbrC5FPuV02fDhX9n6k+
         d0Xr1ahw4RgrTfn4Nj0oydyo8JIyAVsAkBuq8wlcbJPHl8eHXAoxK+nGP6yK70TD0+zd
         wML0eoX2qFZoY2ToLhleJOG6RUeDQa36rlMQB7WH/eiXI90wnqXhSksAsMmBfrzHXjf0
         rXKdeZQyGq4xeTPFp8S33WYdzN/5dqqwAz+dVCjpUZCAJYf1xCK5NF+7XReqzKuLV6mG
         29nNIHrPv7G7epaDamo8RUbzt3b6EjPnn1I/BrFokQpsurkPJ0AAutpVRc35jee79m6h
         51ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JqQFdRQGlJknJdPtQM04PX7TIzlXcEjkVhkLH+Y5zc0=;
        b=NFx+Qh4LPAQ5rIRu9BR2h3QFfLHn8Z695gnmEQSldX/on6dlnMpw5p2KMqlPNRZcK6
         PK/R0WSrlTOBCsLFbagKezkSs3gNZmwUPKReEUeSlZSr8j/f+gQe4h6jh4yTMRrOUgcg
         rOuwHQd6WpplxKV0ZE7oIc4cf4WOYOt4QGWCe0aeRb97yD9yz3ZMmhMXHZQA46QA+hmw
         0QPJoVYzCGhkvidb9FvlJXgsqPbskCOBBA470bBSJUG1ejg2L76/kYfQ6qSAef0qBBGv
         oH+jvQzsZAyS2lB/fzOVJzHKBMY0X6fwf/o/U+Xy1tujOqp6GqPGHMF7h7LggGUtd1Mk
         xfjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JqQFdRQGlJknJdPtQM04PX7TIzlXcEjkVhkLH+Y5zc0=;
        b=lCQhaI9YxGZ/deIY+gShWH7jDyBvMrUtu5sRRJ1CV7PG8WgW+9KOepoJzqrauR3Uqf
         +reXlOH1s2kYatDntfnKLkMOyXEbw5wGS6/2XaUbBAi+d+ZYcPNGmI0LZEc3YHW5rJS+
         fH+WZHZy2w5b4tZb44VCasEGupOor3MerlCSiD+0cgDgprMZixrg7Bxf6QegK4GNG/81
         dRZDSp1xOK6mqW0Wj3R81BT4aab9qPPiEv26jPFhjfj8DWOqkxuroHElCQfuTTbMKNMm
         qcHY9sH68xfLl0NT1boA5bUCiuOM2CocTfxpr2E910WMR2nmNW7+GIer5VtO+gdh909x
         8TfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMfYMLXnwIEMpFNjOnitmUjvEGj49X6ddfy0OslbPuEY/NvAk2
	uZ7AOhFXvDoOzq1MXLgaw1U=
X-Google-Smtp-Source: APXvYqxXwQ8yuA4TMgmd25I+u6e2T18OMuvjW7nYSWD3TwROfiM/ll2IePT0k6Mz91w9/onFEHUpeA==
X-Received: by 2002:a37:bc86:: with SMTP id m128mr33993161qkf.110.1571123961581;
        Tue, 15 Oct 2019 00:19:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f084:: with SMTP id g4ls3025793qvk.7.gmail; Tue, 15 Oct
 2019 00:19:21 -0700 (PDT)
X-Received: by 2002:a0c:f251:: with SMTP id z17mr19530117qvl.90.1571123961075;
        Tue, 15 Oct 2019 00:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571123961; cv=none;
        d=google.com; s=arc-20160816;
        b=f8s8S7sMPmArSFSZSXqDm9HhT5Ky1UZO4e1RueBkgZuSwxkep9Do5MrwQQkltAyIHC
         8kfj3tI6uy3x49snxT7yMB0h0j+C6IS1qTXu0TMa9GCb3TMWDXJS6HKiRSc5LZGdxanM
         vZvqGlSDRLkxoBF4LxB+zuCzbvuoXejOgWR2GX8Vas4BbNj+oouKlpF8uLmQnlfeU3Yf
         21SJJbby5ykcErhHDNUtdwujGsJSrAwhTSIVDraS8SsESuIQ9z6IplSE0Gi7XeW5pMVW
         XySOcydb+1608cYe16i+6lubhD9I5C5keHtr1O0JvxvKNG5O1wYvkfgOZZzbMbeEj9sE
         3wjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Qv7Az5tD/2XKPoU73wFDWyAMqFq/42sDZyfm822TJb4=;
        b=R5aKvPSW5tscoZAWuDLx/BR+4b39iM8tEfhlCJSgCFd1PlzGfmJAKVVQDoKK1r42br
         4jvHGFLXICFnn1le23ITzDVRxbTHJJiulgc0zH1HMBxWmgTrsGAQj5HBPEyIShkFrBjq
         O0gf6VUA5tO3jW9VgFTA4ZDAHGQ1KznCWexCiK8YbPgxjqEzFPktBhrphEh1YKRK32NH
         Do7ymo+AylyU9eunk/mNHPlaYeO+ESexhPqgcaQWzv3x8QxxgFwNSqLef6zba1BcX0V0
         xnD25142mPG8MTNM83d3Cf75ZnLvmfmpUsIANHnCePZGf7rxb0Mjan67vWAmmv66ASpP
         z8yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id l4si937824qtl.1.2019.10.15.00.19.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 00:19:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id u22so29126646qtq.13
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 00:19:21 -0700 (PDT)
X-Received: by 2002:a05:6214:1150:: with SMTP id b16mr35117488qvt.197.1571123960489;
 Tue, 15 Oct 2019 00:19:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com>
In-Reply-To: <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 15 Oct 2019 09:19:04 +0200
Message-ID: <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
Subject: Re: AMDGPU and 16B stack alignment
To: "S, Shirish" <sshankar@amd.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, "Wentland, Harry" <Harry.Wentland@amd.com>, 
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "yshuiv7@gmail.com" <yshuiv7@gmail.com>, 
	"andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, 
	"S, Shirish" <Shirish.S@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	"Koenig, Christian" <Christian.Koenig@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Oct 15, 2019 at 9:08 AM S, Shirish <sshankar@amd.com> wrote:
> On 10/15/2019 3:52 AM, Nick Desaulniers wrote:

> My gcc build fails with below errors:
>
> dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
>
> dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
>
> While GPF observed on clang builds seem to be fixed.

Ok, so it seems that gcc insists on having at least 2^4 bytes stack
alignment when
SSE is enabled on x86-64, but does not actually rely on that for
correct operation
unless it's using sse2. So -msse always has to be paired with
 -mpreferred-stack-boundary=3.

For clang, it sounds like the opposite is true: when passing 16 byte
stack alignment
and having sse/sse2 enabled, it requires the incoming stack to be 16
byte aligned,
but passing 8 byte alignment makes it do the right thing.

So, should we just always pass $(call cc-option, -mpreferred-stack-boundary=4)
to get the desired outcome on both?

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3_Q15hKT%3Dgyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw%40mail.gmail.com.
